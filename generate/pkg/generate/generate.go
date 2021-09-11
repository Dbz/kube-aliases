package generate

import (
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"strings"

	"gopkg.in/yaml.v3"

	"github.com/Dbz/kube-aliases/generate/pkg/types"
)

func Generate(filePath, targetPath string) error {
	file, err := ioutil.ReadFile(filePath)
	if err != nil {
		return fmt.Errorf("error reading file %s with error %s",
			filePath, err)
	}

	var aliases types.Aliases
	err = yaml.Unmarshal(file, &aliases)
	if err != nil {
		return fmt.Errorf("error unmarshaling file: %v", err)
	}

	aliasFile, err := os.Create(targetPath)
	if err != nil {
		return fmt.Errorf("Failed to create alias file: %v", err)
	}
	defer aliasFile.Close()

	_, err = io.WriteString(aliasFile, "#!/bin/bash\n")
	if err != nil {
		return fmt.Errorf("Warning: could not write shebang", err)
	}

	var aliasBuilder strings.Builder
	var aliasCMDs types.AliasCMDs
	for r := range aliases.Resources {

		// Generate Commands
		for _, c := range aliases.CMDs {

			aliasCMDs.Aliases = append(aliasCMDs.Aliases, types.AliasCMD{
				PrefixShort:   c.Prefix.Short,
				ResourceShort: aliases.Resources[r].Short,
				Short:         c.Short,
				SuffixShort:   c.Suffix.Short,
				Prefix:        c.Prefix.CMD,
				CMD:           c.CMD,
				Resource:      r,
				Suffix:        c.Suffix.CMD,
			})
		}

	}

	// Take care of any additional aliases
	aliasCMDs.CMDs = aliases.Additional

	err = GenerateAlias(&aliasBuilder, &aliasCMDs)
	if err != nil {
		return err
	}

	_, err = io.WriteString(aliasFile, aliasBuilder.String())
	if err != nil {
		return fmt.Errorf("Warning: could not write alias: %v\n", err)
	}

	return nil

}

// GenerateAlias -- TODO document
func GenerateAlias(w io.Writer, aliases *types.AliasCMDs) error {
	aliases.AliasNames = make(map[string]string)
	var lastResource string
	for _, alias := range aliases.Aliases {
		if alias.Prefix != "" {
			alias.Prefix = strings.Trim(alias.Prefix, " ") + " "
		}
		if alias.Suffix != "" {
			alias.Suffix = " " + strings.Trim(alias.Suffix, " ")
		}

		aliasName := fmt.Sprintf("%vk%v%v%v",
			alias.PrefixShort,
			alias.Short,
			alias.ResourceShort,
			alias.SuffixShort)
		aliasCommand := fmt.Sprintf("%vkubectl %v %v%v",
			alias.Prefix,
			alias.CMD,
			alias.Resource,
			alias.Suffix)

		if v, ok := aliases.AliasNames[aliasName]; ok {
			err := fmt.Errorf("Duplicate aliases exist. %v can mean:\n1. %v\n2. %v\n",
				aliasName, v, aliasCommand)
			return err
		}
		aliases.AliasNames[aliasName] = aliasCommand

		if alias.Resource != lastResource {
			fmt.Fprintf(w, "\n# Manage %s.\n", alias.Resource)
			lastResource = alias.Resource
		}

		fmt.Fprintf(w, "alias %v=\"%v\"\n", aliasName, aliasCommand)
	}

	var comment string
	for _, alias := range aliases.CMDs {
		if v, ok := aliases.AliasNames[alias.Short]; ok {
			err := fmt.Errorf("Duplicate aliases exist. %v can mean:\n1. %v\n2. %v\n",
				alias.Short, v, alias.CMD)
			return err
		}
		aliases.AliasNames[alias.Short] = alias.CMD

		if alias.Comment != comment {
			fmt.Fprintf(w, "\n# %s\n", alias.Comment)
			comment = alias.Comment
		}

		fmt.Fprintf(w, "alias %v=\"%v\"\n", alias.Short, alias.CMD)
	}
	return nil
}

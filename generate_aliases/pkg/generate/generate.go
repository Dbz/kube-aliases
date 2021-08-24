package generate

import (
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"strings"

	"gopkg.in/yaml.v3"

	"github.com/Dbz/kube-aliases/pkg/types"
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

	var aliasBuilder strings.Builder
	aliasNames := map[string]string{}
	for r := range aliases.Resources {

		// Generate Commands
		for c := range aliases.CMDs {

			err := GenerateAlias(&aliasBuilder,
				aliasNames,
				&types.AliasCMD{
					PrefixShort:   aliases.CMDs[c].Prefix.Short,
					ResourceShort: aliases.Resources[r].Short,
					Short:         aliases.CMDs[c].Short,
					SuffixShort:   aliases.CMDs[c].Suffix.Short,
					Prefix:        aliases.CMDs[c].Prefix.CMD,
					CMD:           aliases.CMDs[c].CMD,
					Resource:      r,
					Suffix:        aliases.CMDs[c].Suffix.CMD,
				})
			if err != nil {
				return err
			}

		}

		for _, v := range aliases.Resources[r].AdditonalCMDs {

			err := GenerateAlias(&aliasBuilder,
				aliasNames,
				&types.AliasCMD{
					PrefixShort:   v.Prefix.Short,
					ResourceShort: aliases.Resources[r].Short,
					Short:         v.Short,
					SuffixShort:   v.Suffix.Short,
					Prefix:        v.Prefix.CMD,
					CMD:           v.CMD,
					Resource:      r,
					Suffix:        v.Suffix.CMD,
				})

			if err != nil {
				return err
			}
		}

	}

	// take care of any additional aliases
	for _, v := range aliases.Additional {
		err := GenerateAdditional(&aliasBuilder,
			aliasNames, &v)
		if err != nil {
			return err
		}
	}

	_, err = io.WriteString(aliasFile, aliasBuilder.String())
	if err != nil {
		return fmt.Errorf("Warning: could not write alias: %v\n", err)
	}

	return nil

}

// GenerateAlias -- TODO document
func GenerateAlias(w io.Writer, aliasNames map[string]string, alias *types.AliasCMD) error {

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

	fmt.Fprintf(w, "alias %v=\"%v\"\n", aliasName, aliasCommand)

	if v, ok := aliasNames[aliasName]; ok {
		err := fmt.Errorf("Duplicate aliases exist. %v can mean:\n1. %v\n2. %v\n",
			aliasName, v, aliasCommand)
		return err
	}
	aliasNames[aliasName] = aliasCommand

	return nil

}

// GenerateAdditional
func GenerateAdditional(w io.Writer,
	aliasNames map[string]string, alias *types.CMD) error {

	if v, ok := aliasNames[alias.Short]; ok {
		err := fmt.Errorf("Duplicate aliases exist. %v can mean:\n1. %v\n2. %v\n",
			alias.Short, v, alias.CMD)
		return err
	}

	fmt.Fprintf(w, "alias %v=\"%v\"\n", alias.Short, alias.CMD)

	return nil
}

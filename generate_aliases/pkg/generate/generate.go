package generate

import (
	"fmt"
	"io"
	"io/ioutil"
	"os"

	"gopkg.in/yaml.v3"

	"github.com/Dbz/kube-aliases/pkg/types"
)

var aliasNames map[string]string

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

	aliasNames = map[string]string{}
	for r := range aliases.Resources {

		// Generate Commands
		for c := range aliases.CMDs {

			s, err := generateAlias(&types.AliasCMD{
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

			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				return fmt.Errorf("Warning: could not write alias: %v\n", s)
			}
		}

		for _, v := range aliases.Resources[r].AdditonalCMDs {
			// s, err := generateAlias(&types.AliasCMD{
			// 	Short: v.Short,
			// 	CMD:   v.CMD,
			// })

			s, err := generateAlias(&types.AliasCMD{
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
			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				return fmt.Errorf("Warning: could not write alias: %v\n", s)
			}
		}

	}
	return nil

}

func generateAlias(alias *types.AliasCMD) (string, error) {

	if alias.Prefix != "" {
		alias.Prefix = alias.Prefix + " "
	}
	if alias.Suffix != "" {
		alias.Suffix = " " + alias.Suffix
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

	s := fmt.Sprintf("alias %v='%v'\n", aliasName, aliasCommand)

	if v, ok := aliasNames[aliasName]; ok {
		err := fmt.Errorf("Duplicate aliases exist. %v can mean:\n1. %v\n2. %v\n",
			aliasName, v, aliasCommand)
		return s, err
	}
	aliasNames[aliasName] = aliasCommand

	return s, nil

}

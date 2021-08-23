package generate

import (
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"os"

	"gopkg.in/yaml.v3"

	"github.com/Dbz/kube-aliases/pkg/types"
)

func Generate(filePath, targetPath string) {
	file, err := ioutil.ReadFile(filePath)
	if err != nil {
		log.Fatalf("error reading file %s with error %s",
			filePath, err)
	}

	var aliases types.Aliases
	err = yaml.Unmarshal(file, &aliases)
	if err != nil {
		log.Fatalf("error unmarshaling file: %v", err)
	}

	aliasFile, err := os.Create(targetPath)
	if err != nil {
		log.Fatalf("Failed to create alias file: %v", err)
	}
	defer aliasFile.Close()

	for r := range aliases.Resources {

		// Generate Commands
		for c := range aliases.CMDs {

			s := generateAlias(&types.AliasCMD{
				PrefixShort:   aliases.CMDs[c].Prefix.Short,
				ResourceShort: aliases.Resources[r].Short,
				Short:         aliases.CMDs[c].Short,
				SuffixShort:   aliases.CMDs[c].Suffix.Short,
				Prefix:        aliases.CMDs[c].Prefix.CMD,
				CMD:           aliases.CMDs[c].CMD,
				Resource:      r,
				Suffix:        aliases.CMDs[c].Suffix.CMD,
			})

			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				log.Printf("Warning: could not write alias: %v\n", s)
			}
		}

		for _, v := range aliases.Resources[r].AdditonalCMDs {
			s := generateAlias(&types.AliasCMD{
				Short: v.Short,
				CMD:   v.CMD,
			})
			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				log.Printf("Warning: could not write alias: %v\n", s)
			}
		}

	}

}

func generateAlias(alias *types.AliasCMD) string {

	if alias.Prefix != "" {
		alias.Prefix = alias.Prefix + " "
	}
	if alias.Suffix != "" {
		alias.Suffix = " " + alias.Suffix
	}

	return fmt.Sprintf("alias %vk%v%v%v='%vkubectl %v %v%v'\n",
		alias.PrefixShort, alias.Short, alias.ResourceShort, alias.SuffixShort,
		alias.Prefix, alias.CMD, alias.Resource, alias.Suffix)

}

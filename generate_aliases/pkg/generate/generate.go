package generate

import (
	"fmt"
	"io"
	"io/ioutil"
	"os"

	"gopkg.in/yaml.v3"
)

// CMD contains a Kubernetes Command and its short aliases
type CMD struct {
	CMD   string `yaml:"cmd"`
	Short string `yaml:"short"`
	// TODO: Added suffix and prefix commands
	// Prefix string `yaml:"prefix,omitempty"`
	// Suffix string `yaml:"suffix,omitempty"`
}

type CMDs map[string]CMD

// Resources in Kubernetes and specifies its short form
type Resource struct {
	Short string `yaml:"short"`
	// Additional commands that do not need to be generated for all resources
	AdditonalCMDs []CMD `yaml:"add"`
}

// Resources is a collection of resources
type Resources map[string]Resource

// Aliases is the collection of Resources and CMDs, and should contain
// is used to read in the given yaml file
type Aliases struct {
	Resources Resources `yaml:"resources"`
	CMDs      CMDs      `yaml:"cmds"`
}

func Generate(filePath, targetPath string) error {
	file, err := ioutil.ReadFile(filePath)
	if err != nil {
		return fmt.Errorf("error reading file %s with error %s",
			filePath, err)
	}

	var aliases Aliases
	err = yaml.Unmarshal(file, &aliases)
	if err != nil {
		return fmt.Errorf("error unmarshaling file: %v", err)
	}

	aliasFile, err := os.Create(targetPath)
	if err != nil {
		return fmt.Errorf("Failed to create alias file: %v", err)
	}
	defer aliasFile.Close()

	aliasNames := map[string]string{}

	for r := range aliases.Resources {

		// Generate Commands
		for c := range aliases.CMDs {

			aliasName := "k" + aliases.CMDs[c].Short + aliases.Resources[r].Short
			aliasCommand := "kubectl " + aliases.CMDs[c].CMD + " " + r
			if _, ok := aliasNames[aliasName]; ok {
				return fmt.Errorf("Duplicate aliases exist. %v can mean:\n1. %v\n2. %v\n",
					aliasName, aliasNames[aliasName], aliasCommand)
			}
			aliasNames[aliasName] = aliasCommand

			s := fmt.Sprintf("alias %v='%v'\n",
				aliasName, aliasCommand)

			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				return fmt.Errorf("Warning: could not write alias: %v\n", s)
			}
		}

		for _, v := range aliases.Resources[r].AdditonalCMDs {

			aliasName := "k" + v.Short
			aliasCommand := "kubectl " + v.CMD
			if _, ok := aliasNames[aliasName]; ok {
				return fmt.Errorf("Duplicate aliases exist. %v can mean:\n1. %v\n2. %v\n",
					aliasName, aliasNames[aliasName], aliasCommand)
			}
			aliasNames[aliasName] = aliasCommand

			s := fmt.Sprintf("alias %v='%v'\n",
				aliasName,
				aliasCommand)
			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				return fmt.Errorf("Warning: could not write alias: %v\n", s)
			}
		}

	}
	return nil

}

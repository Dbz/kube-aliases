package generate

import (
	"fmt"
	"io"
	"io/ioutil"
	"log"
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

func Generate(filePath, targetPath string) {
	file, err := ioutil.ReadFile(filePath)
	if err != nil {
		log.Fatalf("error reading file %s with error %s",
			filePath, err)
	}

	var aliases Aliases
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

			s := fmt.Sprintf("alias k%v%v='kubectl %v %v'\n",
				aliases.CMDs[c].Short, aliases.Resources[r].Short,
				aliases.CMDs[c].CMD, r)

			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				log.Printf("Warning: could not write alias: %v\n", s)
			}
		}

		for _, v := range aliases.Resources[r].AdditonalCMDs {
			s := fmt.Sprintf("alias k%v='kubectl %v '\n",
				v.Short,
				v.CMD)
			_, err = io.WriteString(aliasFile, s)
			if err != nil {
				log.Printf("Warning: could not write alias: %v\n", s)
			}
		}

	}

}

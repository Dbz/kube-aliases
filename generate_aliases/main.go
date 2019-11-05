package main

import (
	"fmt"
	"io/ioutil"
	"log"

	"gopkg.in/yaml.v3"
)

// type Resources map[string]Resource

// CMD contains a Kubernetes Command and its short aliases
type CMD struct {
	CMD   string `yaml:"cmd"`
	Short string `yaml:"short"`
}

// CMDs is just a map of CMDs
type CMDs map[string]CMD

// Resource in Kubernetes , additional CMDs allows for resources specific cmds
type Resource struct {
	Short         string `yaml:"short"`
	AdditonalCMDs []CMD  `yaml:"add"`
}

// Resources is a collection of resources
type Resources map[string]Resource

// Aliases is the collection of Resources and CMDs, and should contain
// the entire read in file
type Aliases struct {
	Resources Resources `yaml:"resources"`
	CMDs      CMDs      `yaml:"cmds"`
}

func main() {

	yamlFile, err := ioutil.ReadFile("aliases.yaml")
	if err != nil {
		log.Printf("yamlFile.Get err   #%v ", err)
	}

	var aliases Aliases
	err = yaml.Unmarshal(yamlFile, &aliases)
	if err != nil {
		log.Fatalf("Unmarshal: %v", err)
	}

	for r := range aliases.Resources {
		for c := range aliases.CMDs {
			fmt.Printf("alias k%v%v='kubectl %v %v'\n",
				aliases.CMDs[c].Short, aliases.Resources[r].Short,
				aliases.CMDs[c].CMD, r)
		}
		for _, v := range aliases.Resources[r].AdditonalCMDs {
			fmt.Printf("alias k%v%v='kubectl %v %v'\n",
				v.Short, aliases.Resources[r].Short,
				v.CMD, r)
		}
	}

}

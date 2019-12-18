package main

import (
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"os"

	"gopkg.in/yaml.v3"
)

// filepath to generated aliases
var aliasPath string

// filepath to yaml custom alias file
var aliasYamlPath string

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

func init() {

	var kaliasExists bool
	aliasPath, kaliasExists = os.LookupEnv("KALIAS")
	if !kaliasExists {
		log.Fatalf("kube-aliases is not installed, or is not installed properly.\n")
	}
	aliasPath += "/aliases"

	aliasYamlPath, kaliasExists = os.LookupEnv("KALIAS_YAML_PATH")
	if !kaliasExists {
		log.Fatalf("kube-aliases is not installed, or is not installed properly.\n")
	}

}

func main() {

	yamlFile, err := ioutil.ReadFile(aliasYamlPath)
	if err != nil {
		log.Printf("yamlFile.Get err   #%v ", err)
	}

	var aliases Aliases
	err = yaml.Unmarshal(yamlFile, &aliases)
	if err != nil {
		log.Fatalf("Unmarshal: %v", err)
	}

	file, err := os.Create(aliasPath)
	if err != nil {
		log.Fatalf("Failed to create alias file: %v", err)
	}
	defer file.Close()

	for r := range aliases.Resources {
		for c := range aliases.CMDs {
			s := fmt.Sprintf("alias k%v%v='kubectl %v %v'\n",
				aliases.CMDs[c].Short, aliases.Resources[r].Short,
				aliases.CMDs[c].CMD, r)
			_, err = io.WriteString(file, s)
			if err != nil {
				log.Printf("Warning: could not write alias: %v\n", s)
			}
		}
		for _, v := range aliases.Resources[r].AdditonalCMDs {
			s := fmt.Sprintf("alias k%v='kubectl %v '\n",
				v.Short,
				v.CMD)
			_, err = io.WriteString(file, s)
			if err != nil {
				log.Printf("Warning: could not write alias: %v\n", s)
			}
		}
	}

}

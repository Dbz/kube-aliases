package types

// Resources in Kubernetes and specifies its short form
type Resource struct {
	Short string `yaml:"short"`
	// Additional commands that do not need to be generated for all resources
	AdditonalCMDs []CMD `yaml:"add"`
}

// Resources is a collection of resources
type Resources map[string]Resource

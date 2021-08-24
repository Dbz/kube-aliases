package types

// Aliases is the collection of Resources and CMDs, and should contain
// is used to read in the given yaml file
type Aliases struct {
	Resources  Resources `yaml:"resources"`
	CMDs       CMDs      `yaml:"cmds"`
	Additional []CMD     `yaml:"additional"`
}

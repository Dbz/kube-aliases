package types

// CMD contains a Kubernetes Command and its short aliases
type CMD struct {
	CMD     string `yaml:"cmd"`
	Short   string `yaml:"short"`
	Comment string `yaml:"comment"`
	// TODO: Added suffix and prefix commands
	Prefix PrefixCMD `yaml:"prefix"`
	Suffix SuffixCMD `yaml:"suffix"`
}

// Prefix Command is for adding a prefix command to the generated alias.
// Probably could be shared with Suffix

type PrefixCMD struct {
	CMD   string `yaml:"cmd"`
	Short string `yaml:"short"`
}

// Prefix Command is for adding a suffix command to the generated alias
type SuffixCMD struct {
	CMD   string `yaml:"cmd"`
	Short string `yaml:"short"`
}

// When everything is put together
type AliasCMD struct {
	Prefix        string
	PrefixShort   string
	Short         string
	CMD           string
	Resource      string
	ResourceShort string
	Suffix        string
	SuffixShort   string
}

type AliasCMDs struct {
	Aliases    []AliasCMD
	CMDs       []CMD
	AliasNames map[string]string
}

package generate

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/Dbz/kube-aliases/pkg/types"
	"github.com/stretchr/testify/require"
)

// TestGenerateDuplicates checks if Generate catches duplicates
// TODO: Fix
func TestGenerateDuplicates(t *testing.T) {

	wd, _ := os.Getwd()
	wd = filepath.Dir(wd)

	tt := []struct {
		aliasYAML  string
		outputFile string
		err        string
	}{
		{
			aliasYAML:  wd + "/generate/tests/aliases-duplicate.yaml",
			outputFile: "/tmp/aliases-duplicate",
			err:        "Duplicate aliases exist. kcmc can mean:\n1. kubectl create meowcats\n2. kubectl create bigcats\n",
		},
		{
			aliasYAML:  wd + "/generate/tests/errorfree.yaml",
			outputFile: "/tmp/errorfree",
			err:        "",
		},
	}

	for _, tc := range tt {

		err := Generate(tc.aliasYAML, tc.outputFile)

		if tc.err == "" {
			require.NoError(t, err)
		} else {
			require.EqualError(t, err, tc.err)
		}
	}
}

// TestGenerateAlias checks if aliases are generated correctly
func TestGenerateAlias(t *testing.T) {
	tcs := []struct {
		Input    *types.AliasCMD
		Expected string
	}{
		// Testing with prefix
		{
			Input: &types.AliasCMD{
				PrefixShort:   "w",
				ResourceShort: "p",
				Short:         "g",
				SuffixShort:   "",
				Prefix:        "watch",
				CMD:           "get",
				Resource:      "pods",
				Suffix:        "",
			},
			Expected: "alias wkgp='watch kubectl get pods'\n",
		},
		// Testing with suffix
		{
			Input: &types.AliasCMD{
				PrefixShort:   "",
				ResourceShort: "p",
				Short:         "g",
				SuffixShort:   "z",
				Prefix:        "",
				CMD:           "get",
				Resource:      "pods",
				Suffix:        "zed",
			},
			Expected: "alias kgpz='kubectl get pods zed'\n",
		},
		// Testing without prefix or suffix
		{
			Input: &types.AliasCMD{
				PrefixShort:   "",
				ResourceShort: "p",
				Short:         "g",
				SuffixShort:   "",
				Prefix:        "",
				CMD:           "get",
				Resource:      "pods",
				Suffix:        "",
			},
			Expected: "alias kgp='kubectl get pods'\n",
		},
	}

	for _, c := range tcs {
		recieved, err := generateAlias(c.Input)
		if err != nil {
			t.Errorf("Received err generating aliases: {%v}", err)
		}
		if recieved != c.Expected {
			t.Errorf("{%v} expected, received: {%v}\n", c.Expected, recieved)
		}
	}
}

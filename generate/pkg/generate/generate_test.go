package generate

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/Dbz/kube-aliases/generate/pkg/types"
	"github.com/stretchr/testify/require"
)

var (
	wd string
)

func TestMain(m *testing.M) {
	wd, _ = os.Getwd()
	wd = filepath.Dir(wd) + "/generate/tests/"
	os.Exit(m.Run())
}

// TestGenerateDuplicates checks if Generate catches duplicates
// TODO: Fix
func TestGenerateDuplicates(t *testing.T) {

	fmt.Println("here" + wd)

	tt := []struct {
		aliasYAML  string
		outputFile string
		err        string
	}{
		{
			aliasYAML:  wd + "aliases-duplicate.yaml",
			outputFile: "/tmp/aliases-duplicate",
			err:        "Duplicate aliases exist. kcmc can mean:\n1. kubectl create meowcats\n2. kubectl create bigcats\n",
		},
		{
			aliasYAML:  wd + "errorfree.yaml",
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
		Input    *types.AliasCMDs
		Expected string
		Err      error
	}{
		// Testing with prefix
		{
			Input: &types.AliasCMDs{
				Aliases: []types.AliasCMD{{
					PrefixShort:   "w",
					ResourceShort: "p",
					Short:         "g",
					SuffixShort:   "",
					Prefix:        "watch",
					CMD:           "get",
					Resource:      "pods",
					Suffix:        "",
				}},
			},
			Expected: "\n# Manage pods.\nalias wkgp=\"watch kubectl get pods\"\n",
			Err:      nil,
		},
		// Testing with suffix
		{
			Input: &types.AliasCMDs{
				Aliases: []types.AliasCMD{{
					PrefixShort:   "",
					ResourceShort: "p",
					Short:         "g",
					SuffixShort:   "z",
					Prefix:        "",
					CMD:           "get",
					Resource:      "pods",
					Suffix:        "zed",
				}},
			},
			Expected: "\n# Manage pods.\nalias kgpz=\"kubectl get pods zed\"\n",
			Err:      nil,
		},
		// Testing without prefix or suffix
		{
			Input: &types.AliasCMDs{
				Aliases: []types.AliasCMD{{
					PrefixShort:   "",
					ResourceShort: "p",
					Short:         "g",
					SuffixShort:   "",
					Prefix:        "",
					CMD:           "get",
					Resource:      "pods",
					Suffix:        "",
				}},
			},
			Expected: "\n# Manage pods.\nalias kgp=\"kubectl get pods\"\n",
		},
		// Testing short command
		{
			Input: &types.AliasCMDs{
				CMDs: []types.CMD{
					{
						Short:   "et",
						CMD:     "echo 'hello world'",
						Comment: "Echo Commands.",
					},
					{
						Short:   "em",
						CMD:     "echo 'hello me'",
						Comment: "Echo Commands.",
					},
					{
						Short:   "eq",
						CMD:     "echo 'hello q'",
						Comment: "New Echo Commands.",
					},
				},
			},
			Expected: "\n# Echo Commands.\nalias et=\"echo 'hello world'\"\nalias em=\"echo 'hello me'\"\n\n# New Echo Commands.\nalias eq=\"echo 'hello q'\"\n",
		},
		// TODO: expecting errors for AliasCMDs.Aliases
		// TODO: expecting errors for AliasCMDs.CMDs
	}

	for _, c := range tcs {
		var b strings.Builder
		err := GenerateAlias(&b, c.Input)
		recieved := b.String()
		if err != nil && c.Err == nil {
			t.Errorf("Received err generating aliases: {%v}", err)
		}
		if recieved != c.Expected {
			t.Errorf("{%v} expected, received: {%v}\n", c.Expected, recieved)
		}
	}
}

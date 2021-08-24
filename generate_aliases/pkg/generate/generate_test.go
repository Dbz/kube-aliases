package generate

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/Dbz/kube-aliases/pkg/types"
	"github.com/stretchr/testify/require"
)

var (
	wd string
)

func TestMain(t *testing.M) {
	wd, _ := os.Getwd()
	wd = filepath.Dir(wd) + "/generate/tests/"
}

// TestGenerateDuplicates checks if Generate catches duplicates
// TODO: Fix
func TestGenerateDuplicates(t *testing.T) {

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
		Input    *types.AliasCMD
		Existing map[string]string
		Expected string
		Err      error
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
			Existing: map[string]string{},
			Expected: "alias wkgp='watch kubectl get pods'\n",
			Err:      nil,
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
			Existing: map[string]string{},
			Expected: "alias kgpz='kubectl get pods zed'\n",
			Err:      nil,
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
			Existing: map[string]string{},
			Expected: "alias kgp='kubectl get pods'\n",
		},
		// TODO: expecting errors
	}

	for _, c := range tcs {
		var b strings.Builder
		err := GenerateAlias(&b, c.Existing, c.Input)
		recieved := b.String()
		if err != nil && c.Err == nil {
			t.Errorf("Received err generating aliases: {%v}", err)
		}
		if recieved != c.Expected {
			t.Errorf("{%v} expected, received: {%v}\n", c.Expected, recieved)
		}
	}
}

func TestGenterateAdditional(t *testing.T) {
	tcs := []struct {
		Input    *types.CMD
		Existing map[string]string
		Expected string
		Err      error
	}{
		// Testing with prefix
		{
			Input: &types.CMD{
				Short: "et",
				CMD:   "echo 'hello world'",
			},
			Existing: map[string]string{},
			Expected: "alias et=\"echo 'hello world'\"\n",
			Err:      nil,
		},
		// TODO: expecting errors
	}

	for _, c := range tcs {
		var b strings.Builder
		err := GenerateAdditional(&b, c.Existing, c.Input)
		recieved := b.String()
		if err != nil && c.Err == nil {
			t.Errorf("Received err generating aliases: {%v}", err)
		}
		if recieved != c.Expected {
			t.Errorf("{%v} expected, received: {%v}\n", c.Expected, recieved)
		}
	}

}

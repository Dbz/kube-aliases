package generate

import (
	"testing"

	"github.com/Dbz/kube-aliases/pkg/types"
)

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
		recieved := generateAlias(c.Input)
		if recieved != c.Expected {
			t.Errorf("{%v} expected, received: {%v}\n", c.Expected, recieved)
		}
	}
}

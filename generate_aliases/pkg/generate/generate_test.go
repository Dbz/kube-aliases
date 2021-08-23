package generate

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/require"
)

const testAliasOutput = "/tmp/alias-output"
const aliasYAML = "/../../aliases.yaml"
const testAliasYAML = "/generate/test-aliases.yaml"

func Test_Generate(t *testing.T) {
	tt := []struct {
		aliasYAML  string
		outputFile string
		err        string
	}{
		{testAliasYAML, testAliasOutput, "Duplicate aliases exist. kcm can mean:\n1. kubectl create meows\n2. kubectl cuddle me\n"},
		{aliasYAML, testAliasOutput, ""},
	}

	for _, tc := range tt {
		wd, _ := os.Getwd()
		wd = filepath.Dir(wd)

		err := Generate(wd+tc.aliasYAML, tc.outputFile)

		if tc.err == "" {
			require.NoError(t, err)
		} else {
			require.EqualError(t, err, tc.err)
		}
	}
	// Generate(aliasYAML, testAliasOutput)
}

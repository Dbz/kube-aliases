package cmd

import (
	"fmt"
	"os"

	"github.com/Dbz/kube-aliases/pkg/generate"

	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:     "generate-kube-aliases source-file target-file",
	Short:   "Generate zsh aliases for Kubectl",
	Example: "generate-kube-aliases alias.yaml aliases.zsh",
	Args:    cobra.ExactArgs(2),
	Run: func(cmd *cobra.Command, args []string) {
		generate.Generate(args[0], args[1])
	},
}

func Execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func init() {
	cobra.OnInitialize(OnInitialize)
}

func OnInitialize() {
}

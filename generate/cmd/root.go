package cmd

import (
	"fmt"
	"os"

	"github.com/Dbz/kube-aliases/generate/pkg/generate"

	"github.com/spf13/cobra"
)

var (
	rootCmd = &cobra.Command{
		Use:     "generate-kube-aliases source-file target-file",
		Short:   "Generate zsh aliases for Kubectl",
		Example: "generate-kube-aliases alias.yaml aliases.zsh",
		Args:    cobra.ExactArgs(2),
		Run: func(cmd *cobra.Command, args []string) {
			err := generate.Generate(args[0], args[1], powershell)
			if err != nil {
				fmt.Fprintln(os.Stderr, err)
				os.Exit(1)
			}
		},
	}
	powershell bool
)

func Execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func init() {
	cobra.OnInitialize(OnInitialize)

	rootCmd.Flags().BoolVarP(&powershell, "powershell",
		"p", false,
		"generate powershell aliases instead on linux shell aliases")
}

func OnInitialize() {
}

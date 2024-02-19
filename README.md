# cookiecutter-golang-cli
Cookiecutter template for golang cli tooling


# Prerequistes

- Ensure GOPATH is setup `go env GOPATH`
```bash
# Add to ~/.bashrc , ~/.bash_profile, or ~/.zshrc, etc.
export PATH=$PATH:$HOME/go/bin

source ~/.bashrc  # or ~/.bash_profile, ~/.zshrc, etc.
```


# Steps


1. Install `cobra-cli` with `go install github.com/spf13/cobra-cli@latest`

2. Initialize current project directory with cobra-cli `cobra-cli init --author ""  --license MIT --viper`

    Uses create this config which you can add $HOME/.cobra.yaml for future cli projects to reduce options `cobra-cli init`
    ```yaml
    author: <username> <email>
    license: MIT
    useViper: true
    ```

1. Run cli command `go run main.go`



# Additional tooling

- go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.53.3
- go install honnef.co/go/tools/cmd/staticcheck@latest


# Resources
https://github.com/spf13/cobra-cli/tree/main
https://staticcheck.dev/docs/running-staticcheck/cli/
https://golangci-lint.run/
# dotnet autocompletion

export DOTNET_ROOT="/opt/dotnet"

export DOTNET_CLI_TELEMETRY_OPTOUT=1

_dotnet_zsh_complete() 
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet

# alias dotnet
alias dn="dotnet"

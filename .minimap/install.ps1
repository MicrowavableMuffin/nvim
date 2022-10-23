# Install Minimap config and binary : 1666538717
function Install-Locations() {
  $stub = "$env:LocalAppData\nvim\plugs\wfxr\minimap.vim"
  $dsts = @{
    "$PSScriptRoot\vim.vim"="$stub\autoload\minimap\vim.vim"
    "$PSScriptRoot\minimap.vim"="$stub\plugin\minimap.vim"
    "$PSScriptRoot\code-minimap.exe"="C:\Program Files\Neovim\bin\code-minimap.exe"
  }

  $dsts.keys | ForEach-Object {
    Copy-Item -Force -Verbose -Path "$_" -Destination "$($dsts[$_])"
  }
}

Install-Locations

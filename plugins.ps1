# Clone all of the plugins : 1666539623
function Get-Plugins() {
  $plugins = cat "$PSScriptRoot\\plugins"

  if(!(Test-Path "$PSScriptRoot\\plugs")) {
    mkdir "$PSScriptRoot\\plugs"
  }

  $plugins|ForEach-Object {
    git clone https://github.com/$_ plugs/$_ --depth 1
  }
}

Get-Plugins

# Copy the Neovim configuration : 1666539563
function Set-Neovim() {
  . $PSScriptRoot\plugins.ps1
  . $PSScriptRoot\.minimap\install.ps1

  $dst = "$env:LocalAppData\nvim\"
  $mv_list=$( Get-ChildItem $PSScriptRoot |
               Where-Object Name -NotMatch '.minimap' |
               Where-Object Name -NotMatch '.ps1'
            )
  if(!( Test-Path "$dst" )) { mkdir -p "$dst" }
  $mv_list.FullName | ForEach-Object { Copy-Item -Recurse -Force "$_" "$dst" }
}

Set-Neovim

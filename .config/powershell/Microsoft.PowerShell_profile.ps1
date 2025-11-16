if ($host.Name -eq 'ConsoleHost')
{
    # Install-Module -Name PSReadLine -Force
    Import-Module PSReadLine
}

# Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons

Invoke-Expression (&starship init powershell)

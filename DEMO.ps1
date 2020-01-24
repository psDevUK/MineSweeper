Import-Module -Name UniversalDashboard.Community -RequiredVersion 2.8.1
Import-Module "C:\UD\MineSweeper2\MS\src\output\UniversalDashboard.UDMineSweeper\UniversalDashboard.UDMineSweeper.psd1"
Get-UDDashboard | Stop-UDDashboard
$theme = New-UDTheme -Name "Basic" -Definition @{
    'main'                                                                           = @{
        'padding-left'   = "5px"
        'padding-right'  = "5px"
        'padding-top'    = "5px"
        'padding-bottom' = "5px"
    }
    '.digitalSign_vertical'                                                          = @{
        'height' = "10px !important"
    }
    '.winMine_brickContainer.winMine_easy'                                           = @{
        'width' = "190px !important"
    }
    '.winMine_brickContainer.winMine_medium'                                         = @{
        'width' = "340px !important"
    }
    '.winMine_brickContainer.winMine_hard'                                           = @{
        'width' = "505px !important"
    }
    '*, ::after, ::before'                                                           = @{
        'box-sizing' = "content-box !important"
    }
    '.winMine_winmine-header'                                                        = @{
        'height' = "33px !important"
    }
    '.statucBrick_container'                                                         = @{
        'width'  = "30px !important"
        'height' = "30px !important"
    }
    '.digitalNumber_container'                                                       = @{
        'width'  = "15px !important"
        'height' = "30px !important"
    }
    '.brick_container > span'                                                        = @{
        'position'  = "relative !important"
        'bottom'    = "4px !important"
        'font-size' = "larger !important"
    }
    '.brick_container'                                                               = @{
        'width'  = "16px !important"
        'height' = "16px !important"
        'cursor' = "pointer !important"
    }
    '.brick_container.brick_broken, .brick_container:active, .brick_container:focus' = @{
        'border-width' = "medium !important"
    }
} -Parent "Default"
Start-UDDashboard -Port 1000 -AutoReload -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Theme $theme -Content {
        New-UDRow -Columns {
            New-UDColumn -Size 6 -Content {
                New-UdMineSweeper -level "easy"
            }
        }
    }
)
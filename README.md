# MineSweeper
A Game For Universaldashboard MineSweeper

## For those that remember
Back in the day Windows 95 was ground-breaking technology.  If you were lucky enough to try this operating system, 
you will remember it had a game called MineSweeper. Well that game is back!

## Parameter
* **-level** this is the only parameter required which has a choice of "easy","medium" or "hard". It is as simple as that

## Usage
**New-UDMineSweeper -level "medium"**
This will display a game of Minesweeper to play on a medium level

## Demo Script
```
Import-Module -Name UniversalDashboard
Import-Module -Name UniversalDashboard.UDMineSweeper
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
```

## Thank you

I had to make numerous modifications for the game to display in a decent manner in UD.  This is why all the extra CSS is in
the demo file, if you do not include this everything looked a bit wonky. 

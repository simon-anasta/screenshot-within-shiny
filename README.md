# screenshot-within-shiny
create an action button within shiny for taking a screen shot.

2019-04-08

Using screenCapture.bat as suggested here:
https://superuser.com/questions/75614/take-a-screen-shot-from-command-line-in-windows

This takes a screenshot of the primary monitor every click of the button.

At the time of making it appears to be the best solution. webshot looks favorable, but can not be run from within the shiny app - it locks up.

Source for screenCapture.bat: https://github.com/npocmaka/batch.scripts/blob/master/hybrids/.net/c/screenCapture.bat


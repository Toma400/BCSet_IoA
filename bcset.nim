import bcs/utils
import bcs/bcsw
import nigui

app.init()

var window = newBCSWindow("Baedoor Creation Set")
var main   = newLayoutContainer(Layout_Vertical)

block wSettings:
  window.ng_win.width  = 600.scaleToDpi
  window.ng_win.height = 400.scaleToDpi

window.ng_win.add(main)

window.ng_win.show()

app.run()
import bcswindow
import settings
import nigui
import json

proc newBCSWindow* (title: string): BCSWindow =
    block niguiWindowSetup:
      result.ng_win = newWindow(title)
      result.ng_win.width  = getSettings("res_x", true).getInt().scaleToDpi
      result.ng_win.height = getSettings("res_y", true).getInt().scaleToDpi
    block mainContainerSetup:
      result.ng_lc = newLayoutContainer(Layout_Vertical)
      result.ng_win.add(result.ng_lc)
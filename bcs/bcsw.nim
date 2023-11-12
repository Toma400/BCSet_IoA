import bcswindow
import settings
import nigui
import json

proc newBCSWindow* (title: string): BCSWindow =
    block niguiWindowSetup:
      result.ng_win = newWindow(title)
      result.ng_win.width  = getSettings("res_x").getInt().scaleToDpi
      result.ng_win.height = getSettings("res_y").getInt().scaleToDpi
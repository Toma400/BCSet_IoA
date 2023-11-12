import bcswindow
import nigui

proc newBCSWindow* (title: string): BCSWindow =
    result.ng_win = newWindow(title)
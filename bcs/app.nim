# APP
# Module for all-encompassing aspects that will help
# uing to draw proper context
# Stores projects' list, currently running project,
# settings and so on
import json

const
  TITLE*  = "Baeadoor Creation Set"
  VERSION = "0.1.0"
  WIDTH   = 500
  HEIGHT  = 500

type
  BCSMenu* = enum
    # used to track both menu currently opened, as well as app stages
    mINIT    # used on setup, before any menu is found
    mPCHOICE # project choice
  BCSApp* = object
    x       : int
    y       : int
    theme   : string # TODO: needs some sort of reading, has `default` variant
    version : string
    menu    : BCSMenu

proc initApp* (): BCSApp =
    let settings = open("settings.json")
    let set_dict = parseJson(settings.readAll())
    close(settings)
    result.x       = set_dict{"bcs_res_x"}.getInt(WIDTH)
    result.y       = set_dict{"bcs_res_y"}.getInt(HEIGHT)
    result.theme   = set_dict{"bcs_theme"}.getStr("default")
    result.version = VERSION
    result.menu    = mINIT

proc switchMenu* (app: var BCSApp, menu: BCSMenu) =
    app.menu = menu

proc getResolution* (app: BCSApp): tuple[x, y: int] =
    return (x: app.x, y: app.y)

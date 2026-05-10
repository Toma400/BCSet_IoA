from uing/rawui import nil
from pixie import readImage
import bcs/proj_manag
import bcs/utils
import uing

type
  MENU = enum
    mNONE        # only for before app is ran
    mPROJ_SELECT # first menu, used to select the menu
const
  TITLE   = "Baeadoor Creation Set"
  VERSION = "0.1.0"
  WIDTH  = 500
  HEIGHT = 500
let
  WIDTHf  = WIDTH.float
  HEIGHTf = HEIGHT.float
var
  MENU_USED = mNONE # default before app is ran

# proc loadImage(wimg: var Image, img: pImage) =
#     var img_bseq : seq[byte] # byte array (dynamic)
#     for px in img.data:
#         add(img_bseq, px.r)
#         add(img_bseq, px.g)
#         add(img_bseq, px.b)
#         add(img_bseq, px.a)
#     let img_bseqp : ptr seq[byte] = img_bseq.addr
#     # let img_barray : array[byte, len(img_bseq) - 1]
#     # for ix, bt in img_bseq.pairs():
#     #     img_barray[ix] = bt
#     add(wimg, img_bseqp, img.width, img.height, img.width * 4)
proc buttProc (sender: Button) =
    if MENU_USED == mNONE: MENU_USED = mPROJ_SELECT
    if MENU_USED == mPROJ_SELECT: MENU_USED = mNONE

proc run() =
    MENU_USED = mPROJ_SELECT # initial menu
    let butt1 = newButton("Click me!!1", buttProc) # TODO
    let butt2 = newButton("Click me!!2", buttProc) # TODO

    let window = newWindow(TITLE, WIDTH, HEIGHT, hasMenubar=true)
    case MENU_USED: # window children depend on menu being in use
      of mNONE: # should not appear here
        window.child = butt2
      of mPROJ_SELECT:
        window.child = butt1
    # echo window.child

    # var logo_img  = readImage("bcs/assets/bcs.png")
    # var logo_cont = newImage(WIDTH, HEIGHT)
    # loadImage(logo_cont, logo_img)

    #window.child = bcs_logo
    show window
    mainLoop()

init()
run()

#var window = newBCSWindow("Baedoor Creation Set")
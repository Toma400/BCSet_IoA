import projects
import app
import uing

var a = initApp()

proc run() =
    let res    = getResolution(a)
    let window = newWindow(TITLE, res.x, res.y, hasMenubar=true)

    switchMenu(a, mPCHOICE)
    let menu_proj = newHorizontalBox(true) # proj buttons in `ref.png`
    let menu_img  = newHorizontalBox(true) # BCS logo in `ref.png`
    window.child = menu_proj
    window.child = menu_img

    show window
    mainLoop()

init()
run()

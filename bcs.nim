import bcs/projects
import bcs/app
import uing

var a = initApp()

# TODO: strings in GUI should prob have translation options too
proc buttProc (sender: Button) = discard
proc cboxProc (sender: Combobox) = discard

proc run() =
    let res    = getResolution(a)
    let window = newWindow(TITLE, res.x, res.y, hasMenubar=true)

    switchMenu(a, mPCHOICE)
    let menu_init = newHorizontalBox(true) # overarching menu
    let menu_proj = newVerticalBox(true) # proj buttons in `ref.png`
    let menu_img  = newVerticalBox(true) # BCS logo in `ref.png`

    let cbox_proj = newComboBox(listProjects(), cboxProc)
    let butt_sel = newButton("Select project", buttProc)
    let butt_man = newButton("Manage projects", buttProc)
    # adding items
    menu_proj.add(cbox_proj)
    menu_proj.add(butt_sel)
    menu_proj.add(butt_man)
    # adding menus
    menu_init.add(menu_proj)
    menu_init.add(menu_img)
    window.child = menu_init # main menu container bound

    show window
    mainLoop()

init()
run()

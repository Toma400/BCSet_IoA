FILES = [
    "BCSet.exe",
    "bcs/assets/bcs.ico",
    "bcs/assets/bcs.png",
    "bcs/projects", # doesn't exist
    "settings.json", # need to be overwritten by IoA/not be packed for [builds]
]
# see also bcs/build, .bat file does most if not all compilin' stuff already

# TODO for build
# Should export following files and .zip them:
# ```
# - bcs/assets/bcs.png
# - bcs/projects/
# - bcset.exe
# ```
# Or, when time comes, could be also packed together to `[builds]` folder

# Ensure all folders in here exist too, so that BCS won't throw out errors

# ...it should also include .ico in .exe file

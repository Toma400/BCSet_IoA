#============================================
# Projects Module
#
#============================================
import std/private/oscommon
import std/private/osdirs
import std/strformat
import std/strutils
import std/sequtils
import std/options
import vcs

type
  BCSProject* = object
    name : string
    ids  : seq[string]
    vcs  : Option[VCS]
const WARNMSG* = "Procedure does not have working body and should not have been used!"

#-------------------------------------
# GENERAL MANAGEMENT
#-------------------------------------
proc createProject* (name: string): BCSProject =
    result.name = name
    result.vcs  = none(VCS)
    # ID list is empty by default

proc saveProject* (proj: BCSProject): bool =
    # result is success of save
    if not dirExists(fmt"projects/{proj.name}"): # initial save
        let DIRS = [ # list of subdirs to be made
          "assets"
        ]
        for dir in DIRS:
            createDir(fmt"projects/{proj.name}/{dir}")
    # shared for initial and later saves
    {.warning: WARNMSG.} # needs files

proc exportProject* (proj: BCSProject): bool =
    {.warning: WARNMSG.} # aside, it might be better to have separate proc??
    # because it will feature A TON of exporting rules

proc loadProject* (name: string): BCSProject =
    {.warning: WARNMSG.}

proc listProjects* (): seq[string] =
    # returns list of strings that can be used to retrieve project through `getProject` proc
    for dir in walkDirs("bcs/projects/*"):
      add(result, dir.replace("bcs\\projects\\", ""))

#-------------------------------------
# FIELDS
#-------------------------------------
proc addID* (proj: var BCSProject, name: string): bool =
    # bool result indicates whether action succeeded
    if name in proj.ids: return false
    else:
      add(proj.ids, name)
      return true

proc removeID* (proj: BCSProject, name: string): bool =
    # should have guardrails and *particularly* report checks when ID is used
    {.warning: WARNMSG.}

#-------------------------------------
# ADVANCED OPERATIONS
#-------------------------------------
proc mergeIDs* (proj: BCSProject, remain, merged: string): bool =
    # should perform all objects' merge, but also in the end do the `removeID`
    # equivalent for `merged` string
    {.warning: WARNMSG.}

proc mergeProjects* (remain, merged: BCSProject): bool =
    # should do all `mergeIDs` does but also on higher level
    # `merged` folders should also all move and its folder be axed
    # it'd be good to probably make Table of fields so you could
    # choose whether `remain` or `merged` take priority -- though
    # by MW standards we could think of `remain` as esm and
    # the latter as `merged`?
    {.warning: WARNMSG.}

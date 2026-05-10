import std/private/oscommon
import std/private/osdirs
import std/strformat
import std/sequtils

type
  BCSProject = object
    name : string

proc getProjectsList* (): seq[string] =
    # returns list of strings that can be used to retrieve project through `getProject` proc
    return toSeq(walkDirs("bcs/projects/*"))

proc newProject* (name: string): BCSProject =
    # used to make new project with base info
    result.name = name

    # if dirExists(fmt"bcs/projects/{name}"): # should throw out error
    #   return nil
    # createDir(fmt"bcs/projects/{name}")

proc getProject* (name: string): BCSProject =
    # used to retrieve existing project
    # if existsDir(fmt"bcs/projects/{name}"):
    #   discard
    # else: return nil # should throw out error
    discard
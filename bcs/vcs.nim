#============================================
# VCS Module
# For whatever management needed in projects
#============================================
import std/options

type
  VCSSystem* = enum
    GIT
  VCS* = object
  # will also need some acc/password data ig for initial setup
    url    : string
    system : VCSSystem

proc setupVCS* (url: string, system: VCSSystem): VCS =
    result.url    = url
    result.system = system

proc isSet* (v: Option[VCS]): bool =
    return v.isSome

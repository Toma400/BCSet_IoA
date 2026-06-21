# BCSRecord is my thought that generalised blueprint
# may be useful for some common/shared actions
# (e.g. `project.nim` mass reIDing)
#
# might be not needed solution, so treat this
# file more like a thought experiment

type
  BCSRecord* = object
    id : string

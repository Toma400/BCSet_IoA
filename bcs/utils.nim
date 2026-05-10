# import nigui
#
# proc toPxX* (w: Window, pc: int | float): float =
#     let svc = w.width / 100
#     return float(pc) * svc
#
# proc toPxY* (w: Window, pc: int | float): float =
#     let svc = w.height / 100
#     return float(pc) * svc
import pixie

type
  pImage* = Image # alias, so that uing's Image doesn't get mixed up with pixie's
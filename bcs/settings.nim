import json

proc getSettings* (field: string, critical: bool = false): JsonNode =
    let set_text = readFile("settings.json")

    let set = parseJson(set_text)
    try:
      return set[field]
    except:
      if critical:
        raise newException(KeyError, "Couldn't find field " & field & " in setting file. Contents of settings file:\n" & set_text)
      else: discard
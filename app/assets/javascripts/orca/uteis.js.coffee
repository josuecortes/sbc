UteisTextoBanco = (banco) ->
  if banco == 'SINAPI'
    return 'SINAPI'
  else if banco == 'Emp'
    return 'Próprio'
  return

isFloat = (n) ->
  n == + n and n != (n | 0)

ItemSubitem = (item, subitem) ->
  if subitem.slice(0, item.length) == item
    if subitem.slice(item.length, (item.length + 1)) == "."
      return true
    else
      return false
  else
    return false
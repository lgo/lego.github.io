---
---
###
    Compiled from yours truly, CoffeeScript
###

###
    Delays a function given a timeout (uses setTimeout)
    @param ms   {Number} milliseconds before the delayed function executes
    @param func {Function} executed after ms amount of time
###
delay = (ms, func) -> setTimeout func, ms

###
    Returns a function which sets a given elements className to the provided className
    @param element   {Element} to set the className for
    @param className {String} to set the elements className to
###
classSetter = (element, className) -> (-> element.className = className)

###
    Transitions the burger menu from expanded to collapsed
###
menuBurgerClick = ->
  [menu, ...] = document.getElementsByClassName "Menu"
  [menuContainer, ...] = document.getElementsByClassName "MenuContainer"
  [container, ...] = document.getElementsByClassName "Container"

  isMenuActive = menu.className.indexOf("Menu--active") != -1

  if isMenuActive
    menu.className = "Menu"
    menuContainer.className = "MenuContainer"
    delay 300, classSetter(container, "Container Container--transition")
    delay 400, classSetter(container, "Container")
  else
    menu.className = "Menu Menu--active"
    menuContainer.className = "MenuContainer MenuContainer--expanded"
    delay 100, classSetter(container, "Container Container--hidden")
  return

# export the click action
root = exports ? this
root.menuBurgerClick = menuBurgerClick

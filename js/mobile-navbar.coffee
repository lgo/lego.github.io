---
---
###*
 *  Compiled from yours truly, CoffeeScript
###

###*
 *  Delays a function given a timeout (uses setTimeout)
 *  @param ms   {Number} milliseconds before the delayed function executes
 *  @param func {Function} executed after ms amount of time
###
delay = (ms, func) -> setTimeout func, ms

###*
 *  Returns a function which sets a given elements className to the provided className
 *  @param element   {Element} to set the className for
 *  @param className {String} to set the elements className to
###
classSetter = (element, className) -> (-> element.className = className)

###*
 *  Transitions the burger menu from expanded to collapsed
###
menuBurgerClick = ->
  [menu, ...] = document.getElementsByClassName "Menu"
  [container, ...] = document.getElementsByClassName "Container"

  isMenuActive = menu.className.indexOf("Menu--expanded") != -1

  if isMenuActive
    menu.className = "Menu"
    delay 200, classSetter(container, "Container Container--transition")
    delay 300, classSetter(container, "Container")
  else
    menu.className = "Menu Menu--expanded"
    container.className = "Container Container--transition"
    delay 100, classSetter(container, "Container Container--hidden")
  return

# export the click action
root = exports ? this
root.menuBurgerClick = menuBurgerClick

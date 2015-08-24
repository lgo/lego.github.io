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
rambleRambleRamble = ->
  [expander, ...] = document.getElementsByClassName "RambleExpander"
  [collapser, ...] = document.getElementsByClassName "RambleTooMuch"
  [content, ...] = document.getElementsByClassName "RealRamble"

  isRambling = content.className.indexOf("RealRamble--rambling") != -1

  if isRambling
    console.log "Stop rambling already..."
    expander.className = "RambleExpander RealRamble--transition"
    collapser.className = "RambleTooMuch RealRamble--transition"
    content.className = "RealRamble RealRamble--transition"

    delay 200, (->
        classSetter(expander, "RambleExpander RambleExpander--active")()
        classSetter(collapser, "RambleTooMuch RambleTooMuch--hidden")()
        classSetter(content, "RealRamble RealRamble--hidden")()
    )
  else
    console.log "Whoa whoa whoa slow down there buddy."
    expander.className = "RambleExpander RealRamble--transition"
    collapser.className = "RambleTooMuch RealRamble--transition"
    content.className = "RealRamble RealRamble--transition"

    delay 200, (->
        classSetter(expander, "RambleExpander RambleExpander--hidden")()
        classSetter(collapser, "RambleTooMuch RambleTooMuch--active")()
        classSetter(content, "RealRamble RealRamble--rambling")()
    )
  return

# export the click action
root = exports ? this
root.rambleRambleRamble = rambleRambleRamble

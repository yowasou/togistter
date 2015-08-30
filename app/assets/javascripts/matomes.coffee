# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@collapseGist = (cbutton,gist) ->
  debugger
  cName = gist.className
  if (cName == "gists_expand")
    gist.className = "gists_collapse"
    cbutton.innerHTML = "+"
  else
    gist.className = "gists_expand"
    cbutton.innerHTML = "-"

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $(document).on "click", "li.list-group-item", (event) ->
    select $(this)

select = (obj) ->
  if obj.attr "status"
    addMaterial(obj)
  else
    removeMaterial(obj)


addMaterial = (obj) ->
  obj.appendTo "#selected-materials ul"
  obj.addClass "actived"
  obj.attr status: true
  checkbox_id = "#drink_material_ids_" + obj.attr "id"
  $(checkbox_id).attr checked: true

removeMaterial = (obj) ->
  obj.appendTo "#selected-materials ul"
  obj.removeClass "actived"
  obj.attr status: false
  checkbox_id = "#drink_material_ids_" + obj.attr "id"
  $(checkbox_id).attr checked: false




$(document).ready(ready)

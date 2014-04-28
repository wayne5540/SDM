# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $(document).on "click", "li.list-group-item", (event) ->
    select $(this)

select = (obj) ->
  status = obj.attr "status"
  if status is "false"
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
  console.log obj.attr "type"
  origin_place = "#" + obj.attr "type"
  obj.appendTo $(origin_place)
  obj.removeClass "actived"
  obj.attr status: false
  checkbox_id = "#drink_material_ids_" + obj.attr "id"
  $(checkbox_id).attr checked: false




$(document).ready(ready)

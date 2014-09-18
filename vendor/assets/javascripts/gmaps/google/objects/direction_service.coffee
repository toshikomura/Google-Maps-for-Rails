class @Gmaps.Google.Objects.DirectionService extends Gmaps.Base

  @include Gmaps.Google.Objects.Common

  constructor: (@serviceObject)->

  # Move to object google.maps.DirectionsResult[DirectionsRoute]
  # TO DO update with directionRen (origin and destine)
  # updateBounds: (bounds)->
  #  bounds.extend(@getServiceObject().bounds)

  # TO DO update center of the map to directionRen origin
  # panTo: ->
  #  @getServiceObject().getMap().panTo @getServiceObject().getPosition()

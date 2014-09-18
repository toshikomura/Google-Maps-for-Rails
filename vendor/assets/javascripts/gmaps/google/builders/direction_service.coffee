class @Gmaps.Google.Builders.DirectionService extends Gmaps.Objects.BaseBuilder

  constructor: (@args)->
    @before_init()
    @serviceObject = new(@primitives().directionSer)
    @request = _.extend @args, @request_options()
    @after_init()

  request_options: ->
    base_options =
      travelMode: @primitives().directionTMs('DRIVING')

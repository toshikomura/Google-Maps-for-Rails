class @Gmaps.Google.Builders.DirectionRender extends Gmaps.Objects.BaseBuilder

  constructor: (@provider_options = {})->
    @before_init()
    @serviceObject = @create_direction_render()
    @after_init()

  create_direction_render: ->
    new(@primitives().directionRen)(@direction_render_options())

  direction_render_options: ->
    base_options =
      draggable:    true
    _.extend @provider_options, base_options

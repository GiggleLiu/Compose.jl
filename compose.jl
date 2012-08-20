
# Laws of composition

require("canvas.jl")
require("form.jl")
require("property.jl")
require("cairo.jl")


# Apples to apples

compose!(a::Property, b::Property) = append!(a.specifics, b.specifics)
compose!(a::Form,     b::Form)     = push(a.specifics, b)
compose!(a::Canvas,   b::Canvas)   = push(a.children, b)


# Apples to oranges

compose!(a::Form,   b::Property) = compose!(a.property, b)
compose!(a::Canvas, b::Property) = compose!(a.property, b)
compose!(a::Canvas, b::Form)     = compose!(a.form, b)


# Apples to bushels

typealias ComposeType Union(Property, Form, Canvas)

# TODO: Le'ts leave these alone until we get basic functionality for now...

#function compose!(a::Property, args...)

#end








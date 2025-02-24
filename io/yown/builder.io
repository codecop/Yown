//
// Yown Builder
// html construction kit
//

Builder := Object clone
Builder tag := method(name, nodes,
  "Called as #{name}(#{nodes})" interpolate println
  inner := ""
  attrs := name split(".")
  attrs println
  if (attrs size > 1,
    name := attrs at(0)
    attrs := " class='" .. attrs exSlice(1) join(" ") .. "'",
    attrs := ""
  )
  name println
  nodes println
  while (nodes,
	"INCOMING NODE:" println
	nodes asString println
        o := doString(nodes asString)
        "NODE PREPROCESSED:" println
        o println
        if (nodes name == "&",
           attrs = "#{attrs} #{o}" interpolate,
           inner = "#{inner}#{o}" interpolate)
	nodes = nodes next)
  if (name == "&",
      "#{inner}" interpolate,
       "<#{name}#{attrs} timkoi-yown-htmlgen-more>#{inner}</#{name}>" interpolate)

)

Builder forward := method(
  tag(call message name, call message argAt(0))
)

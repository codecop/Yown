//
// The most trivial Yown app
//
doRelativeFile("../io/Yown.io")

YownSimple := Yown clone do(
  get("/test",
    html(
      title("Hello??")
      h1("THIS IS A TEST")
    )
  )
) run

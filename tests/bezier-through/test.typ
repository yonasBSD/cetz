#set page(width: auto, height: auto)
#import "../../canvas.typ": *

#block(stroke: 2pt + red, canvas(length: .5cm, {
  import "../../draw.typ": *

  let curve-through(a, b, c) = {
    group(name: "g", {
      line(a, b, c, stroke: gray)
      bezier-through(a, b, c)

      let (a, b, c1, c2) = cubic-through-3points(a, b, c)
    })
    set-origin((c.at(0) + .1, 0))
  }
 
  curve-through((0,0), (1,0), (2,0))
  curve-through((0,0), (1,2), (2,0))
  curve-through((0,0), (1,-2), (2,0))
  curve-through((0,0), (0,2), (2,0))
  curve-through((0,0), (2,2), (2,0))
}))

#block(stroke: 2pt + red, canvas(length: .5cm, {
  import "../../draw.typ": *

  merge-path(close: true, {
    bezier-through((-1, 0), (-calc.cos(45deg), calc.sin(45deg)), (0, 1))
    bezier-through((0, 1), (calc.cos(45deg), calc.sin(45deg)), (1, 0))
    bezier-through((1, 0), (calc.cos(45deg), -calc.sin(45deg)), (0, -1))
    bezier-through((0, -1), (-calc.cos(45deg), -calc.sin(45deg)), (-1, 0))
  })
}))
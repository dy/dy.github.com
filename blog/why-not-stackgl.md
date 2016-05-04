# Why not stackgl

Learning WebGL is difficult.

What I’ve understood so far, after 3+ months experience with WebGL?
[stackgl]() is a set of tools somewhere in-between raw WebGL API and graphic frameworks like three.js. But the purpose of these tools is not completely clear.

I guess the motive behing things like gl-shader

## glslify

Conceived as an analog to browserify, the idea to include dependencies tree applied to shaders seemed promising. But reality of shaders is different. Examples:

* Dynamically set precision of floats: `precision ${this.precision} float`
* Define constants through options: `const int WIDTH = ${this.width}`
* Set precision declaration once for all shaders
* Include part of external glslify module instead of importing it
* Sourcemap lines are messed up - debugging is impossible

* deps tree or dup resolving is not really necessary - shader code is rarely too huge, it is often linear.

Guess I should come up with something like debugger

```
debug(gl, source);
```

which enables log() command
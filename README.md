# glsl-scale-linear

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

A linear scale for [glslify](http://github.com/stackgl/glslify).

## Usage

[![NPM](https://nodei.co/npm/glsl-scale-linear.png)](https://nodei.co/npm/glsl-scale-linear/)

### `scale(float value, vec2 domain)`

Returns a value between 0 and 1, depending on where along the
scale `value` lies between `domain.x` (min) and `domain.y`
(max).

``` glsl
#pragma glslify: scale = require('glsl-scale-linear')

float min   = 0.0;
float max   = 1000.0;
float value = 100.0;

float t = scale(value, vec2(min, max));
```

### `scale(float value, vec2 domain, vec2 range)`

Similar to the above signature, however returns a value
between `range.x` and `range.y` instead of 0 and 1. Shorthand
for `mix(range.x, range.y, scale(...))`.

``` glsl
float t = scale(value, vec2(min, max), vec2(0.0, 1.0));
```

## Contributing

See [stackgl/contributing](https://github.com/stackgl/contributing) for details.

## License

MIT. See [LICENSE.md](http://github.com/stackgl/glsl-scale-linear/blob/master/LICENSE.md) for details.

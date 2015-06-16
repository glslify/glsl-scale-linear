float scaleLinear(float value, vec2 valueDomain) {
  return (value - valueDomain.x) / (valueDomain.y - valueDomain.x);
}

float scaleLinear(float value, vec2 valueDomain, vec2 valueRange) {
  return mix(valueRange.x, valueRange.y, scaleLinear(value, valueDomain));
}

#pragma glslify: export(scaleLinear)

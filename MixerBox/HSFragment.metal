#include <metal_stdlib>
#include "Helpers.h"
using namespace metal;

struct HSUniforms {
  uint width;
  uint height;
  float hue;
};

fragment float4 fragment_hs(float4 position [[position]],
                            constant HSUniforms *uniforms [[buffer(0)]]) {
  
  float nx = position.x / float(uniforms->width);
  float ny = position.y / float(uniforms->width);

  float3 color = hsb2rgb(float3(uniforms->hue, nx, 1.0 - ny));
  
  return float4(color, 1);
}



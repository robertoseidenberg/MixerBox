#include <metal_stdlib>
#include "Helpers.h"
using namespace metal;

struct HSBUniforms {
  
  uint width;
  uint height;
  float brightness;
};

// Function by Patricio Gonzalez Vivo & Jen Lowe
// https://thebookofshaders.com/06/
fragment float4 fragment_hsb(float4 position [[position]],
                             constant HSBUniforms *uniforms [[buffer(0)]]) {
  
  float  nx   = position.x / float(uniforms->width);
  float  ny   = position.y / float(uniforms->width);
  float2 norm = { nx, ny };
  
  // Draw the outer frame (containing all the hues)
  // Use polar coordinates instead of cartesian
  float2 toCenter = float2(0.5) - norm;
  float  angle    = atan2(toCenter.y, toCenter.x) + PI;
  float extent = 2.0;
  float radius = length(toCenter) * extent;
  
  
  // Map the angle (-PI to PI) to the Hue (from 0 to 1)
  // and the Saturation to the radius
  float h = (angle/(PI*2)) + 0.5;
  float s = radius;
  float b = uniforms->brightness;
  float3 color = hsb2rgb(float3(h, s, b));
  
  return float4(color, 1);
}

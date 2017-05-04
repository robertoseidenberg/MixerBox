#include <metal_stdlib>
#include "Helpers.h"
using namespace metal;

// Function by Iñigo Quiles
// https://www.shadertoy.com/view/MsS3Wc
float3 hsb2rgb(float3 hsb) {
  
  float3 h            = float3(hsb.x * 6);
  float3 offset       = float3(0.0, 4.0, 2.0);
  float3 remainder    = fmod(h + offset, 6.0);
  float3 absRemainder = abs(remainder -3.0);
  
  float3 rgb = clamp(absRemainder -1.0, 0.0, 1.0);
  rgb = rgb * rgb * (3.0-2.0 * rgb);
  
  return hsb.z * mix(float3(1.0), rgb, hsb.y);
}

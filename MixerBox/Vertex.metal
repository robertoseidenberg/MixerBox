#include <metal_stdlib>
using namespace metal;

struct Vertex {
  
  float4 position [[position]];
};

vertex Vertex vertex_main(device Vertex *vertices [[buffer(1)]],
                          uint vid [[vertex_id]]) {  
  return vertices[vid];
}

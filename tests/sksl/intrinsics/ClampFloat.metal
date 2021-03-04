#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
struct Uniforms {
    float4 testInputs;
    float4 colorGreen;
    float4 colorRed;
};
struct Inputs {
};
struct Outputs {
    float4 sk_FragColor [[color(0)]];
};



fragment Outputs fragmentMain(Inputs _in [[stage_in]], constant Uniforms& _uniforms [[buffer(0)]], bool _frontFacing [[front_facing]], float4 _fragCoord [[position]]) {
    Outputs _out;
    (void)_out;
    _out.sk_FragColor = ((((((clamp(_uniforms.testInputs.x, -1.0, 1.0) == -1.0 && all(clamp(_uniforms.testInputs.xy, -1.0, 1.0) == float2(-1.0, 0.0))) && all(clamp(_uniforms.testInputs.xyz, -1.0, 1.0) == float3(-1.0, 0.0, 0.75))) && all(clamp(_uniforms.testInputs, -1.0, 1.0) == float4(-1.0, 0.0, 0.75, 1.0))) && clamp(_uniforms.testInputs.x, -1.0, 1.0) == -1.0) && all(clamp(_uniforms.testInputs.xy, float2(-1.0, -2.0), float2(1.0, 2.0)) == float2(-1.0, 0.0))) && all(clamp(_uniforms.testInputs.xyz, float3(-1.0, -2.0, -2.0), float3(1.0, 2.0, 0.5)) == float3(-1.0, 0.0, 0.5))) && all(clamp(_uniforms.testInputs, float4(-1.0, -2.0, -2.0, 1.0), float4(1.0, 2.0, 0.5, 3.0)) == float4(-1.0, 0.0, 0.5, 2.25)) ? _uniforms.colorGreen : _uniforms.colorRed;
    return _out;
}

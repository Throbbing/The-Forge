#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

#include "ShaderTypes.h"
#include "MissShader.h"

ushort MetalMissShader::subshaderCount()
{
	return 1;
}

// [numthreads(64, 1, 1)]
void MetalMissShader::shader0(uint pathIndex,
							  constant Uniforms & uniforms,
							  device Payload &payload,
							  constant CSDataPerFrame& csDataPerFrame,
							  constant CSData& csData
							  )
{
	payload.radiance += payload.throughput * float3(0.3, 0.6, 1.2);
}

DEFINE_METAL_MISS_SHADER(miss, 0);

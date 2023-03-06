Shader "Hidden/AtmosphericScattering_Deferred" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "black" {}
	}
	SubShader {
		Pass {
			ZClip Off
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 1470
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					vec4 ImmCB_0_0_0[4];
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[24];
						vec4 _MainTex_TexelSize;
						mat4x4 _FrustumCornersWS;
						vec4 unused_0_3;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[3];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					 vec4 phase0_Output0_1;
					out vec2 vs_TEXCOORD1;
					out vec4 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati0;
					bool u_xlatb0;
					vec4 u_xlat1;
					float u_xlat2;
					void main()
					{
						ImmCB_0_0_0[0] = vec4(1.0, 0.0, 0.0, 0.0);
						ImmCB_0_0_0[1] = vec4(0.0, 1.0, 0.0, 0.0);
						ImmCB_0_0_0[2] = vec4(0.0, 0.0, 1.0, 0.0);
						ImmCB_0_0_0[3] = vec4(0.0, 0.0, 0.0, 1.0);
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001) + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2 = (-in_TEXCOORD0.y) + 1.0;
					    phase0_Output0_1.y = (u_xlatb0) ? u_xlat2 : in_TEXCOORD0.y;
					    phase0_Output0_1.xzw = in_TEXCOORD0.xxy;
					    vs_TEXCOORD2.w = in_POSITION0.z;
					    u_xlati0 = int(in_POSITION0.z);
					    vs_TEXCOORD2.x = dot(_FrustumCornersWS[0], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.y = dot(_FrustumCornersWS[1], ImmCB_0_0_0[u_xlati0]);
					    vs_TEXCOORD2.z = dot(_FrustumCornersWS[2], ImmCB_0_0_0[u_xlati0]);
					vs_TEXCOORD0 = phase0_Output0_1.xy;
					vs_TEXCOORD1 = phase0_Output0_1.zw;
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						vec4 unused_0_2[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_13;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_17;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_25[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_31[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					float u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10 = u_xlat1.x * u_xlat1.x;
					    u_xlat10 = u_xlat10 * 0.0596831031 + 0.0596831031;
					    u_xlat10 = u_xlat10 * 12.0;
					    u_xlat10 = min(u_xlat10, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10 = u_xlat10 * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_17.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat11.xyz = vec3(u_xlat10) * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						vec4 unused_0_3[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_14;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_18;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_26[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_32[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					bvec2 u_xlatb2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					bool u_xlatb11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_18.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat5.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat6.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat6.xyz;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 2));
					    u_xlat10.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat2.xyz;
					    u_xlat10.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat10.xyz;
					    u_xlat10.xyz = (u_xlatb6.x) ? u_xlat5.xyz : u_xlat10.xyz;
					    u_xlatb2.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(1, 3, 0, 0)).xy;
					    u_xlatb2.x = u_xlatb2.y || u_xlatb2.x;
					    u_xlatb11 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb11 = u_xlatb6.z || u_xlatb11;
					    u_xlatb2.x = u_xlatb11 || u_xlatb2.x;
					    u_xlat11.xyz = (u_xlatb6.w) ? vec3(1.0, 1.0, 1.0) : u_xlat10.xyz;
					    u_xlatb2.x = u_xlatb2.x || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat10.xyz;
					    SV_Target0.xyz = (u_xlatb2.x) ? u_xlat11.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						vec4 unused_0_2[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_13;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_17;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_25[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_31[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					float u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10 = u_xlat1.x * u_xlat1.x;
					    u_xlat10 = u_xlat10 * 0.0596831031 + 0.0596831031;
					    u_xlat10 = u_xlat10 * 12.0;
					    u_xlat10 = min(u_xlat10, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10 = u_xlat10 * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_17.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat11.xyz = vec3(u_xlat10) * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						vec4 unused_0_3[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_14;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_18;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_26[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_32[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					bvec2 u_xlatb2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					bool u_xlatb11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_18.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat5.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat6.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat6.xyz;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 2));
					    u_xlat10.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat2.xyz;
					    u_xlat10.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat10.xyz;
					    u_xlat10.xyz = (u_xlatb6.x) ? u_xlat5.xyz : u_xlat10.xyz;
					    u_xlatb2.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(1, 3, 0, 0)).xy;
					    u_xlatb2.x = u_xlatb2.y || u_xlatb2.x;
					    u_xlatb11 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb11 = u_xlatb6.z || u_xlatb11;
					    u_xlatb2.x = u_xlatb11 || u_xlatb2.x;
					    u_xlat11.xyz = (u_xlatb6.w) ? vec3(1.0, 1.0, 1.0) : u_xlat10.xyz;
					    u_xlatb2.x = u_xlatb2.x || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat10.xyz;
					    SV_Target0.xyz = (u_xlatb2.x) ? u_xlat11.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_4[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_15;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_19;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_27;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_29;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_35[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_29.w) * unused_0_29.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_29.ww * unused_0_29.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_29.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_19.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat4.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat2.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy;
					    u_xlat10.xyz = vec3(u_xlat28) * u_xlat3.xyz + u_xlat2.xyz;
					    u_xlat2.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat2 = texture(u_OcclusionTexture, u_xlat2.xy);
					    u_xlat2.xy = u_xlat2.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat2.xy = min(u_xlat2.xy, vec2(1.0, 1.0));
					    u_xlat2.xzw = u_xlat2.xxx * u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xzw;
					    SV_Target0.xyz = u_xlat10.xyz * u_xlat2.yyy + u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_5[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_16;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_20;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_28;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_30;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_36[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					bvec2 u_xlatb4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					vec2 u_xlat22;
					float u_xlat28;
					bool u_xlatb29;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_30.w) * unused_0_30.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_30.ww * unused_0_30.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_30.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_20.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat5.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat10.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy + u_xlat3.xyz;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 1));
					    u_xlat3.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat5.xyz;
					    u_xlat3.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat3.xyz;
					    u_xlat2.xyz = (u_xlatb6.x) ? u_xlat11.xyz : u_xlat3.xyz;
					    u_xlat3.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat3 = texture(u_OcclusionTexture, u_xlat3.xy);
					    u_xlat12.xyz = u_xlat10.xyz + u_xlat2.xyz;
					    u_xlatb4.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(2, 3, 0, 0)).xy;
					    u_xlat22.xy = u_xlat3.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat22.xy = min(u_xlat22.xy, vec2(1.0, 1.0));
					    u_xlat5.xyz = u_xlat2.xyz * u_xlat22.xxx;
					    u_xlat7.xyz = u_xlat10.xyz * u_xlat22.yyy;
					    u_xlat7.xyz = u_xlat2.xyz * u_xlat22.xxx + u_xlat7.xyz;
					    u_xlatb29 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb29 = u_xlatb6.z || u_xlatb29;
					    u_xlat2.xyz = (u_xlatb4.y) ? u_xlat7.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.y;
					    u_xlat2.xyz = (u_xlatb4.x) ? u_xlat3.xxx : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.x;
					    u_xlat2.xyz = (u_xlatb6.w) ? u_xlat12.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat5.xyz;
					    u_xlat0.xyz = u_xlat10.xyz * u_xlat22.yyy + u_xlat0.xyz;
					    SV_Target0.xyz = (bool(u_xlatb29)) ? u_xlat2.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_4[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_15;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_19;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_27;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_29;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_35[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_29.w) * unused_0_29.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_29.ww * unused_0_29.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_29.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_19.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat4.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat2.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy;
					    u_xlat10.xyz = vec3(u_xlat28) * u_xlat3.xyz + u_xlat2.xyz;
					    u_xlat2.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat2 = texture(u_OcclusionTexture, u_xlat2.xy);
					    u_xlat2.xy = u_xlat2.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat2.xy = min(u_xlat2.xy, vec2(1.0, 1.0));
					    u_xlat2.xzw = u_xlat2.xxx * u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xzw;
					    SV_Target0.xyz = u_xlat10.xyz * u_xlat2.yyy + u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_5[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_16;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_20;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_28;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_30;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_36[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					bvec2 u_xlatb4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					vec2 u_xlat22;
					float u_xlat28;
					bool u_xlatb29;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_30.w) * unused_0_30.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_30.ww * unused_0_30.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_30.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_20.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat5.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat10.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy + u_xlat3.xyz;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 1));
					    u_xlat3.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat5.xyz;
					    u_xlat3.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat3.xyz;
					    u_xlat2.xyz = (u_xlatb6.x) ? u_xlat11.xyz : u_xlat3.xyz;
					    u_xlat3.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat3 = texture(u_OcclusionTexture, u_xlat3.xy);
					    u_xlat12.xyz = u_xlat10.xyz + u_xlat2.xyz;
					    u_xlatb4.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(2, 3, 0, 0)).xy;
					    u_xlat22.xy = u_xlat3.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat22.xy = min(u_xlat22.xy, vec2(1.0, 1.0));
					    u_xlat5.xyz = u_xlat2.xyz * u_xlat22.xxx;
					    u_xlat7.xyz = u_xlat10.xyz * u_xlat22.yyy;
					    u_xlat7.xyz = u_xlat2.xyz * u_xlat22.xxx + u_xlat7.xyz;
					    u_xlatb29 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb29 = u_xlatb6.z || u_xlatb29;
					    u_xlat2.xyz = (u_xlatb4.y) ? u_xlat7.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.y;
					    u_xlat2.xyz = (u_xlatb4.x) ? u_xlat3.xxx : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.x;
					    u_xlat2.xyz = (u_xlatb6.w) ? u_xlat12.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat5.xyz;
					    u_xlat0.xyz = u_xlat10.xyz * u_xlat22.yyy + u_xlat0.xyz;
					    SV_Target0.xyz = (bool(u_xlatb29)) ? u_xlat2.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						vec4 unused_0_2[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_13;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_17;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_25[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_31[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					float u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10 = u_xlat1.x * u_xlat1.x;
					    u_xlat10 = u_xlat10 * 0.0596831031 + 0.0596831031;
					    u_xlat10 = u_xlat10 * 12.0;
					    u_xlat10 = min(u_xlat10, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10 = u_xlat10 * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_17.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat11.xyz = vec3(u_xlat10) * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						vec4 unused_0_3[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_14;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_18;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_26[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_32[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					bvec2 u_xlatb2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					bool u_xlatb11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_18.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat5.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat6.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat6.xyz;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 2));
					    u_xlat10.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat2.xyz;
					    u_xlat10.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat10.xyz;
					    u_xlat10.xyz = (u_xlatb6.x) ? u_xlat5.xyz : u_xlat10.xyz;
					    u_xlatb2.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(1, 3, 0, 0)).xy;
					    u_xlatb2.x = u_xlatb2.y || u_xlatb2.x;
					    u_xlatb11 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb11 = u_xlatb6.z || u_xlatb11;
					    u_xlatb2.x = u_xlatb11 || u_xlatb2.x;
					    u_xlat11.xyz = (u_xlatb6.w) ? vec3(1.0, 1.0, 1.0) : u_xlat10.xyz;
					    u_xlatb2.x = u_xlatb2.x || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat10.xyz;
					    SV_Target0.xyz = (u_xlatb2.x) ? u_xlat11.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						vec4 unused_0_2[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_13;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_17;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_25[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_31[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					float u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10 = u_xlat1.x * u_xlat1.x;
					    u_xlat10 = u_xlat10 * 0.0596831031 + 0.0596831031;
					    u_xlat10 = u_xlat10 * 12.0;
					    u_xlat10 = min(u_xlat10, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10 = u_xlat10 * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_17.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat11.xyz = vec3(u_xlat10) * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						vec4 unused_0_3[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_14;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_18;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_26[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_32[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					bvec2 u_xlatb2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					bool u_xlatb11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_18.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat5.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat6.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat6.xyz;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 2));
					    u_xlat10.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat2.xyz;
					    u_xlat10.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat10.xyz;
					    u_xlat10.xyz = (u_xlatb6.x) ? u_xlat5.xyz : u_xlat10.xyz;
					    u_xlatb2.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(1, 3, 0, 0)).xy;
					    u_xlatb2.x = u_xlatb2.y || u_xlatb2.x;
					    u_xlatb11 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb11 = u_xlatb6.z || u_xlatb11;
					    u_xlatb2.x = u_xlatb11 || u_xlatb2.x;
					    u_xlat11.xyz = (u_xlatb6.w) ? vec3(1.0, 1.0, 1.0) : u_xlat10.xyz;
					    u_xlatb2.x = u_xlatb2.x || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat10.xyz;
					    SV_Target0.xyz = (u_xlatb2.x) ? u_xlat11.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_4[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_15;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_19;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_27;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_29;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_35[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_29.w) * unused_0_29.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_29.ww * unused_0_29.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_29.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_19.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat4.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat2.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy;
					    u_xlat10.xyz = vec3(u_xlat28) * u_xlat3.xyz + u_xlat2.xyz;
					    u_xlat2.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat2 = texture(u_OcclusionTexture, u_xlat2.xy);
					    u_xlat2.xy = u_xlat2.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat2.xy = min(u_xlat2.xy, vec2(1.0, 1.0));
					    u_xlat2.xzw = u_xlat2.xxx * u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xzw;
					    SV_Target0.xyz = u_xlat10.xyz * u_xlat2.yyy + u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_5[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_16;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_20;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_28;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_30;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_36[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					bvec2 u_xlatb4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					vec2 u_xlat22;
					float u_xlat28;
					bool u_xlatb29;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_30.w) * unused_0_30.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_30.ww * unused_0_30.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_30.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_20.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat5.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat10.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy + u_xlat3.xyz;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 1));
					    u_xlat3.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat5.xyz;
					    u_xlat3.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat3.xyz;
					    u_xlat2.xyz = (u_xlatb6.x) ? u_xlat11.xyz : u_xlat3.xyz;
					    u_xlat3.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat3 = texture(u_OcclusionTexture, u_xlat3.xy);
					    u_xlat12.xyz = u_xlat10.xyz + u_xlat2.xyz;
					    u_xlatb4.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(2, 3, 0, 0)).xy;
					    u_xlat22.xy = u_xlat3.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat22.xy = min(u_xlat22.xy, vec2(1.0, 1.0));
					    u_xlat5.xyz = u_xlat2.xyz * u_xlat22.xxx;
					    u_xlat7.xyz = u_xlat10.xyz * u_xlat22.yyy;
					    u_xlat7.xyz = u_xlat2.xyz * u_xlat22.xxx + u_xlat7.xyz;
					    u_xlatb29 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb29 = u_xlatb6.z || u_xlatb29;
					    u_xlat2.xyz = (u_xlatb4.y) ? u_xlat7.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.y;
					    u_xlat2.xyz = (u_xlatb4.x) ? u_xlat3.xxx : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.x;
					    u_xlat2.xyz = (u_xlatb6.w) ? u_xlat12.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat5.xyz;
					    u_xlat0.xyz = u_xlat10.xyz * u_xlat22.yyy + u_xlat0.xyz;
					    SV_Target0.xyz = (bool(u_xlatb29)) ? u_xlat2.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_4[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_15;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_19;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_27;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_29;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_35[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_29.w) * unused_0_29.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_29.ww * unused_0_29.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_29.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_19.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat4.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat2.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy;
					    u_xlat10.xyz = vec3(u_xlat28) * u_xlat3.xyz + u_xlat2.xyz;
					    u_xlat2.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat2 = texture(u_OcclusionTexture, u_xlat2.xy);
					    u_xlat2.xy = u_xlat2.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat2.xy = min(u_xlat2.xy, vec2(1.0, 1.0));
					    u_xlat2.xzw = u_xlat2.xxx * u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xzw;
					    SV_Target0.xyz = u_xlat10.xyz * u_xlat2.yyy + u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_5[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_16;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_20;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_28;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_30;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_36[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					bvec2 u_xlatb4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					vec2 u_xlat22;
					float u_xlat28;
					bool u_xlatb29;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_30.w) * unused_0_30.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_30.ww * unused_0_30.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_30.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_20.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat5.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat10.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy + u_xlat3.xyz;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 1));
					    u_xlat3.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat5.xyz;
					    u_xlat3.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat3.xyz;
					    u_xlat2.xyz = (u_xlatb6.x) ? u_xlat11.xyz : u_xlat3.xyz;
					    u_xlat3.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat3 = texture(u_OcclusionTexture, u_xlat3.xy);
					    u_xlat12.xyz = u_xlat10.xyz + u_xlat2.xyz;
					    u_xlatb4.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(2, 3, 0, 0)).xy;
					    u_xlat22.xy = u_xlat3.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat22.xy = min(u_xlat22.xy, vec2(1.0, 1.0));
					    u_xlat5.xyz = u_xlat2.xyz * u_xlat22.xxx;
					    u_xlat7.xyz = u_xlat10.xyz * u_xlat22.yyy;
					    u_xlat7.xyz = u_xlat2.xyz * u_xlat22.xxx + u_xlat7.xyz;
					    u_xlatb29 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb29 = u_xlatb6.z || u_xlatb29;
					    u_xlat2.xyz = (u_xlatb4.y) ? u_xlat7.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.y;
					    u_xlat2.xyz = (u_xlatb4.x) ? u_xlat3.xxx : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.x;
					    u_xlat2.xyz = (u_xlatb6.w) ? u_xlat12.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat5.xyz;
					    u_xlat0.xyz = u_xlat10.xyz * u_xlat22.yyy + u_xlat0.xyz;
					    SV_Target0.xyz = (bool(u_xlatb29)) ? u_xlat2.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						vec4 unused_0_2[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_13;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_17;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_25[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_31[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					float u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10 = u_xlat1.x * u_xlat1.x;
					    u_xlat10 = u_xlat10 * 0.0596831031 + 0.0596831031;
					    u_xlat10 = u_xlat10 * 12.0;
					    u_xlat10 = min(u_xlat10, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10 = u_xlat10 * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_17.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat11.xyz = vec3(u_xlat10) * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						vec4 unused_0_3[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_14;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_18;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_26[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_32[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					bvec2 u_xlatb2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					bool u_xlatb11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_18.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat5.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat6.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat6.xyz;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 2));
					    u_xlat10.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat2.xyz;
					    u_xlat10.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat10.xyz;
					    u_xlat10.xyz = (u_xlatb6.x) ? u_xlat5.xyz : u_xlat10.xyz;
					    u_xlatb2.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(1, 3, 0, 0)).xy;
					    u_xlatb2.x = u_xlatb2.y || u_xlatb2.x;
					    u_xlatb11 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb11 = u_xlatb6.z || u_xlatb11;
					    u_xlatb2.x = u_xlatb11 || u_xlatb2.x;
					    u_xlat11.xyz = (u_xlatb6.w) ? vec3(1.0, 1.0, 1.0) : u_xlat10.xyz;
					    u_xlatb2.x = u_xlatb2.x || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat10.xyz;
					    SV_Target0.xyz = (u_xlatb2.x) ? u_xlat11.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						vec4 unused_0_2[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_13;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_17;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_25[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_31[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					float u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10 = u_xlat1.x * u_xlat1.x;
					    u_xlat10 = u_xlat10 * 0.0596831031 + 0.0596831031;
					    u_xlat10 = u_xlat10 * 12.0;
					    u_xlat10 = min(u_xlat10, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10 = u_xlat10 * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_17.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat11.xyz = vec3(u_xlat10) * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						vec4 unused_0_3[3];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_14;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_18;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_26[2];
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_32[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2[2];
						vec4 _ZBufferParams;
						vec4 unused_1_4;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					bvec2 u_xlatb2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					bool u_xlatb11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-u_MiePhaseAnisotropy) * u_MiePhaseAnisotropy + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) * vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)) + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, vec2(vec2(u_MiePhaseAnisotropy, u_MiePhaseAnisotropy)));
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_18.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat5.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat6.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat6.xyz;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz + u_xlat3.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat2.xyz = u_xlat4.xyz + u_xlat11.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 2));
					    u_xlat10.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat2.xyz;
					    u_xlat10.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat10.xyz;
					    u_xlat10.xyz = (u_xlatb6.x) ? u_xlat5.xyz : u_xlat10.xyz;
					    u_xlatb2.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(1, 3, 0, 0)).xy;
					    u_xlatb2.x = u_xlatb2.y || u_xlatb2.x;
					    u_xlatb11 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb11 = u_xlatb6.z || u_xlatb11;
					    u_xlatb2.x = u_xlatb11 || u_xlatb2.x;
					    u_xlat11.xyz = (u_xlatb6.w) ? vec3(1.0, 1.0, 1.0) : u_xlat10.xyz;
					    u_xlatb2.x = u_xlatb2.x || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat10.xyz;
					    SV_Target0.xyz = (u_xlatb2.x) ? u_xlat11.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_4[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_15;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_19;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_27;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_29;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_35[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_29.w) * unused_0_29.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_29.ww * unused_0_29.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_29.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_19.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat4.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat2.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy;
					    u_xlat10.xyz = vec3(u_xlat28) * u_xlat3.xyz + u_xlat2.xyz;
					    u_xlat2.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat2 = texture(u_OcclusionTexture, u_xlat2.xy);
					    u_xlat2.xy = u_xlat2.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat2.xy = min(u_xlat2.xy, vec2(1.0, 1.0));
					    u_xlat2.xzw = u_xlat2.xxx * u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xzw;
					    SV_Target0.xyz = u_xlat10.xyz * u_xlat2.yyy + u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_5[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_16;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_20;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_28;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_30;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_36[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					bvec2 u_xlatb4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					vec2 u_xlat22;
					float u_xlat28;
					bool u_xlatb29;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_30.w) * unused_0_30.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_30.ww * unused_0_30.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_30.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_20.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat5.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat10.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy + u_xlat3.xyz;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 1));
					    u_xlat3.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat5.xyz;
					    u_xlat3.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat3.xyz;
					    u_xlat2.xyz = (u_xlatb6.x) ? u_xlat11.xyz : u_xlat3.xyz;
					    u_xlat3.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat3 = texture(u_OcclusionTexture, u_xlat3.xy);
					    u_xlat12.xyz = u_xlat10.xyz + u_xlat2.xyz;
					    u_xlatb4.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(2, 3, 0, 0)).xy;
					    u_xlat22.xy = u_xlat3.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat22.xy = min(u_xlat22.xy, vec2(1.0, 1.0));
					    u_xlat5.xyz = u_xlat2.xyz * u_xlat22.xxx;
					    u_xlat7.xyz = u_xlat10.xyz * u_xlat22.yyy;
					    u_xlat7.xyz = u_xlat2.xyz * u_xlat22.xxx + u_xlat7.xyz;
					    u_xlatb29 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb29 = u_xlatb6.z || u_xlatb29;
					    u_xlat2.xyz = (u_xlatb4.y) ? u_xlat7.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.y;
					    u_xlat2.xyz = (u_xlatb4.x) ? u_xlat3.xxx : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.x;
					    u_xlat2.xyz = (u_xlatb6.w) ? u_xlat12.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat5.xyz;
					    u_xlat0.xyz = u_xlat10.xyz * u_xlat22.yyy + u_xlat0.xyz;
					    SV_Target0.xyz = (bool(u_xlatb29)) ? u_xlat2.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_4[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_15;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_19;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_27;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_29;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_35[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec3 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					float u_xlat28;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_29.w) * unused_0_29.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_29.ww * unused_0_29.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_29.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_19.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat4.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat2.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy;
					    u_xlat10.xyz = vec3(u_xlat28) * u_xlat3.xyz + u_xlat2.xyz;
					    u_xlat2.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat2 = texture(u_OcclusionTexture, u_xlat2.xy);
					    u_xlat2.xy = u_xlat2.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat2.xy = min(u_xlat2.xy, vec2(1.0, 1.0));
					    u_xlat2.xzw = u_xlat2.xxx * u_xlat4.xyz;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat2.xzw;
					    SV_Target0.xyz = u_xlat10.xyz * u_xlat2.yyy + u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "ATMOSPHERICS_PER_PIXEL" "ATMOSPHERICS_OCCLUSION" "ATMOSPHERICS_OCCLUSION_EDGE_FIXUP" "ATMOSPHERICS_DEBUG" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						int u_AtmosphericsDebugMode;
						vec3 u_SunDirection;
						float u_ShadowBias;
						float u_ShadowBiasIndirect;
						vec4 unused_0_5[2];
						float u_WorldScaleExponent;
						float u_WorldNormalDistanceRcp;
						float u_WorldNearScatterPush;
						float u_WorldRayleighDensity;
						float u_WorldMieDensity;
						vec3 u_RayleighColorM20;
						vec3 u_RayleighColorM10;
						vec3 u_RayleighColorO00;
						vec3 u_RayleighColorP10;
						vec3 u_RayleighColorP20;
						vec4 unused_0_16;
						vec3 u_MieColorM20;
						vec3 u_MieColorO00;
						vec3 u_MieColorP20;
						vec4 unused_0_20;
						float u_HeightNormalDistanceRcp;
						float u_HeightNearScatterPush;
						float u_HeightRayleighDensity;
						float u_HeightMieDensity;
						float u_HeightSeaLevel;
						vec3 u_HeightPlaneShift;
						float u_HeightDistanceRcp;
						vec4 unused_0_28;
						vec2 u_RayleighInScatterPct;
						vec4 unused_0_30;
						float u_MiePhaseAnisotropy;
						float u_HeightExtinctionFactor;
						float u_RayleighExtinctionFactor;
						float u_MieExtinctionFactor;
						vec4 u_HeightRayleighColor;
						vec4 unused_0_36[5];
						vec4 _CameraWS;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[4];
						vec3 _WorldSpaceCameraPos;
						vec4 unused_1_2;
						vec4 _ScreenParams;
						vec4 _ZBufferParams;
						vec4 unused_1_5;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D u_OcclusionTexture;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					in  vec4 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					ivec2 u_xlati2;
					vec4 u_xlat3;
					ivec2 u_xlati3;
					vec4 u_xlat4;
					bvec2 u_xlatb4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bvec4 u_xlatb6;
					vec3 u_xlat7;
					vec3 u_xlat8;
					vec3 u_xlat10;
					bool u_xlatb10;
					vec3 u_xlat11;
					vec3 u_xlat12;
					vec3 u_xlat14;
					float u_xlat19;
					vec2 u_xlat20;
					ivec2 u_xlati20;
					vec2 u_xlat21;
					ivec2 u_xlati21;
					vec2 u_xlat22;
					float u_xlat28;
					bool u_xlatb29;
					float u_xlat30;
					void main()
					{
					vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat1 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlatb10 = 0.999999881<u_xlat1.x;
					    if(u_xlatb10){
					        SV_Target0 = u_xlat0;
					        return;
					    }
					    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
					    u_xlat1.x = float(1.0) / u_xlat1.x;
					    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + _CameraWS.xyz;
					    u_xlati2.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati20.xy = ivec2(uvec2(lessThan(u_xlat1.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati2.xy = (-u_xlati2.xy) + u_xlati20.xy;
					    u_xlat2.xy = vec2(u_xlati2.xy);
					    u_xlat20.xy = log2(abs(u_xlat1.xz));
					    u_xlat20.xy = u_xlat20.xy * vec2(u_WorldScaleExponent);
					    u_xlat20.xy = exp2(u_xlat20.xy);
					    u_xlat2.xz = u_xlat20.xy * u_xlat2.xy;
					    u_xlati3.xy = ivec2(uvec2(lessThan(vec4(0.0, 0.0, 0.0, 0.0), _WorldSpaceCameraPos.xzxx).xy) * 0xFFFFFFFFu);
					    u_xlati21.xy = ivec2(uvec2(lessThan(_WorldSpaceCameraPos.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
					    u_xlati3.xy = (-u_xlati3.xy) + u_xlati21.xy;
					    u_xlat3.xy = vec2(u_xlati3.xy);
					    u_xlat21.xy = log2(abs(_WorldSpaceCameraPos.xz));
					    u_xlat21.xy = u_xlat21.xy * vec2(u_WorldScaleExponent);
					    u_xlat21.xy = exp2(u_xlat21.xy);
					    u_xlat3.xz = u_xlat21.xy * u_xlat3.xy;
					    u_xlat3.y = _WorldSpaceCameraPos.y;
					    u_xlat2.y = u_xlat1.y;
					    u_xlat2.xzw = u_xlat2.xyz + (-u_xlat3.xyz);
					    u_xlat28 = dot(u_xlat2.xzw, u_xlat2.xzw);
					    u_xlat1.w = sqrt(u_xlat28);
					    u_xlat3.x = u_xlat2.z / u_xlat1.w;
					    u_xlat1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
					    u_xlat12.x = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat12.x = inversesqrt(u_xlat12.x);
					    u_xlat1.xyz = u_xlat1.xyz * u_xlat12.xxx;
					    u_xlat1.x = dot(u_xlat1.xyz, vec3(u_SunDirection.x, u_SunDirection.y, u_SunDirection.z));
					    u_xlat10.x = u_xlat1.x * u_xlat1.x;
					    u_xlat10.x = u_xlat10.x * 0.0596831031 + 0.0596831031;
					    u_xlat10.x = u_xlat10.x * 12.0;
					    u_xlat10.x = min(u_xlat10.x, 1.0);
					    u_xlat19 = (-unused_0_30.w) * unused_0_30.w + 1.0;
					    u_xlat12.x = u_xlat1.x * u_xlat1.x + 1.0;
					    u_xlat21.xy = unused_0_30.ww * unused_0_30.ww + vec2(2.0, 1.0);
					    u_xlat1.x = dot(u_xlat1.xx, unused_0_30.ww);
					    u_xlat1.x = (-u_xlat1.x) + u_xlat21.y;
					    u_xlat1.x = log2(u_xlat1.x);
					    u_xlat1.x = u_xlat1.x * 1.5;
					    u_xlat1.x = exp2(u_xlat1.x);
					    u_xlat19 = u_xlat19 / u_xlat21.x;
					    u_xlat1.x = u_xlat12.x / u_xlat1.x;
					    u_xlat1.x = u_xlat1.x * u_xlat19;
					    u_xlat1.xz = u_xlat1.xw * vec2(0.119366206, 0.00400000019);
					    u_xlat19 = min(u_xlat1.z, 1.0);
					    u_xlat12.x = u_xlat19 * u_xlat3.x;
					    u_xlat4 = u_xlat3.xxxx * vec4(u_xlat19) + vec4(-0.115999997, 0.115999997, 0.216000006, 0.216000006);
					    u_xlat4 = u_xlat4.xzwy * vec4(10.0, 10.0, 4.62962961, 8.62069035);
					    u_xlat4.xyz = u_xlat4.xyz;
					    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
					    u_xlat3.xzw = (-u_RayleighColorP10.xyz) + u_RayleighColorP20.xyz;
					    u_xlat3.xzw = u_xlat4.xxx * u_xlat3.xzw + u_RayleighColorP10.xyz;
					    u_xlat5.xy = u_xlat12.xx * vec2(4.62962961, 8.62069035);
					    u_xlat6.xyz = (-u_RayleighColorO00.xyz) + u_RayleighColorP10.xyz;
					    u_xlat14.xyz = u_xlat5.yyy * u_xlat6.xyz + u_RayleighColorO00.xyz;
					    u_xlatb6.xyz = greaterThanEqual(u_xlat12.xxxx, vec4(0.115999997, 0.0, -0.115999997, 0.0)).xyz;
					    u_xlat7.xyz = (-u_RayleighColorM10.xyz) + u_RayleighColorO00.xyz;
					    u_xlat7.xyz = u_xlat4.www * u_xlat7.xyz + u_RayleighColorM10.xyz;
					    u_xlat8.xyz = (-vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z)) + u_RayleighColorM10.xyz;
					    u_xlat4.xyw = u_xlat4.yyy * u_xlat8.xyz + vec3(u_RayleighColorM20.x, u_RayleighColorM20.y, u_RayleighColorM20.z);
					    u_xlat4.xyw = (u_xlatb6.z) ? u_xlat7.xyz : u_xlat4.xyw;
					    u_xlat4.xyw = (u_xlatb6.y) ? u_xlat14.xyz : u_xlat4.xyw;
					    u_xlat3.xyz = (u_xlatb6.x) ? u_xlat3.xzw : u_xlat4.xyw;
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat4.xyw = (-u_MieColorO00.xyz) + u_MieColorP20.xyz;
					    u_xlat4.xyw = u_xlat5.xxx * u_xlat4.xyw + u_MieColorO00.xyz;
					    u_xlat5.xyz = (-u_MieColorM20.xyz) + u_MieColorO00.xyz;
					    u_xlat5.xyz = u_xlat4.zzz * u_xlat5.xyz + u_MieColorM20.xyz;
					    u_xlat4.xyz = (u_xlatb6.y) ? u_xlat4.xyw : u_xlat5.xyz;
					    u_xlat19 = u_xlat1.w + u_WorldNearScatterPush;
					    u_xlat19 = max(u_xlat19, 0.0);
					    u_xlat5.xy = vec2(u_xlat19) * vec2(u_WorldNormalDistanceRcp, u_WorldRayleighDensity);
					    u_xlat30 = u_xlat5.y * 1.44269502;
					    u_xlat30 = exp2(u_xlat30);
					    u_xlat30 = (-u_xlat30) + 1.0;
					    u_xlat10.x = u_xlat10.x * u_xlat30;
					    u_xlat19 = u_xlat19 * u_WorldMieDensity;
					    u_xlat19 = u_xlat19 * 1.44269502;
					    u_xlat19 = exp2(u_xlat19);
					    u_xlat19 = (-u_xlat19) + 1.0;
					    u_xlat19 = u_xlat1.x * u_xlat19;
					    u_xlat2.x = dot(u_xlat2.xzw, u_HeightPlaneShift.xyz);
					    u_xlat2.x = (-u_xlat2.x) + u_xlat2.y;
					    u_xlat2.x = u_xlat2.x + (-u_HeightSeaLevel);
					    u_xlat2.x = u_xlat2.x * u_HeightDistanceRcp;
					    u_xlat2.x = u_xlat2.x * -1.44269502;
					    u_xlat2.x = exp2(u_xlat2.x);
					    u_xlat28 = u_xlat1.w + u_HeightNearScatterPush;
					    u_xlat28 = max(u_xlat28, 0.0);
					    u_xlat11.xy = vec2(u_xlat28) * vec2(u_HeightRayleighDensity, u_HeightMieDensity);
					    u_xlat11.xy = u_xlat11.xy * vec2(1.44269502, 1.44269502);
					    u_xlat11.xy = exp2(u_xlat11.xy);
					    u_xlat11.xy = (-u_xlat11.xy) + vec2(1.0, 1.0);
					    u_xlat2.xy = u_xlat2.xx * u_xlat11.xy;
					    u_xlat1.x = u_xlat1.x * u_xlat2.y;
					    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
					    u_xlat11.x = dot(u_xlat3.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat5.x = u_xlat5.x;
					    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
					    u_xlat3.xyz = (-u_xlat11.xxx) + u_xlat3.xyz;
					    u_xlat11.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat11.xxx;
					    u_xlat3.x = dot(u_HeightRayleighColor.xyz, vec3(0.0396819152, 0.45802179, 0.00609653955));
					    u_xlat28 = u_xlat28 * unused_0_20.w;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat12.xyz = (-u_xlat3.xxx) + u_HeightRayleighColor.xyz;
					    u_xlat3.xyz = vec3(u_xlat28) * u_xlat12.xyz + u_xlat3.xxx;
					    u_xlat11.xyz = u_xlat10.xxx * u_xlat11.xyz;
					    u_xlat28 = u_xlat2.x;
					    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
					    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat28);
					    u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
					    u_xlat4.xyz = vec3(u_xlat19) * u_xlat4.xyz + u_xlat5.xyz;
					    u_xlat1.x = (-u_xlat10.x) * u_RayleighExtinctionFactor + 1.0;
					    u_xlat1.x = (-u_xlat2.x) * u_HeightExtinctionFactor + u_xlat1.x;
					    u_xlat5.xyz = u_xlat11.xyz * u_RayleighInScatterPct.xxx + u_xlat4.xyz;
					    u_xlat1.y = (-u_xlat19) * u_MieExtinctionFactor + 1.0;
					    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
					    u_xlat1.x = u_xlat1.y * u_xlat1.x;
					    u_xlat10.xyz = u_xlat11.xyz * u_RayleighInScatterPct.yyy + u_xlat3.xyz;
					    u_xlatb6 = equal(ivec4(u_AtmosphericsDebugMode), ivec4(4, 5, 6, 1));
					    u_xlat3.xyz = (u_xlatb6.z) ? u_xlat3.xyz : u_xlat5.xyz;
					    u_xlat3.xyz = (u_xlatb6.y) ? u_xlat4.xyz : u_xlat3.xyz;
					    u_xlat2.xyz = (u_xlatb6.x) ? u_xlat11.xyz : u_xlat3.xyz;
					    u_xlat3.xy = hlslcc_FragCoord.xy / _ScreenParams.xy;
					    u_xlat3 = texture(u_OcclusionTexture, u_xlat3.xy);
					    u_xlat12.xyz = u_xlat10.xyz + u_xlat2.xyz;
					    u_xlatb4.xy = equal(ivec4(u_AtmosphericsDebugMode), ivec4(2, 3, 0, 0)).xy;
					    u_xlat22.xy = u_xlat3.xx + vec2(u_ShadowBias, u_ShadowBiasIndirect);
					    u_xlat22.xy = min(u_xlat22.xy, vec2(1.0, 1.0));
					    u_xlat5.xyz = u_xlat2.xyz * u_xlat22.xxx;
					    u_xlat7.xyz = u_xlat10.xyz * u_xlat22.yyy;
					    u_xlat7.xyz = u_xlat2.xyz * u_xlat22.xxx + u_xlat7.xyz;
					    u_xlatb29 = u_xlatb6.y || u_xlatb6.x;
					    u_xlatb29 = u_xlatb6.z || u_xlatb29;
					    u_xlat2.xyz = (u_xlatb4.y) ? u_xlat7.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.y;
					    u_xlat2.xyz = (u_xlatb4.x) ? u_xlat3.xxx : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb4.x;
					    u_xlat2.xyz = (u_xlatb6.w) ? u_xlat12.xyz : u_xlat2.xyz;
					    u_xlatb29 = u_xlatb29 || u_xlatb6.w;
					    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx + u_xlat5.xyz;
					    u_xlat0.xyz = u_xlat10.xyz * u_xlat22.yyy + u_xlat0.xyz;
					    SV_Target0.xyz = (bool(u_xlatb29)) ? u_xlat2.xyz : u_xlat0.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
			}
		}
	}
}
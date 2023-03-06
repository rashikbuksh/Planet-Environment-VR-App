// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "M_Terrain"
{
	Properties
	{
		[HideInInspector]_TerrainHolesTexture("_TerrainHolesTexture", 2D) = "white" {}
		[HideInInspector]_Control("Control", 2D) = "white" {}
		[HideInInspector]_Splat3("Splat3", 2D) = "white" {}
		[HideInInspector]_Splat2("Splat2", 2D) = "white" {}
		[HideInInspector]_Splat1("Splat1", 2D) = "white" {}
		[HideInInspector]_Splat0("Splat0", 2D) = "white" {}
		[HideInInspector]_Normal0("Normal0", 2D) = "white" {}
		[HideInInspector]_Normal1("Normal1", 2D) = "white" {}
		[HideInInspector]_Normal2("Normal2", 2D) = "white" {}
		[HideInInspector]_Normal3("Normal3", 2D) = "white" {}
		[HideInInspector]_Smoothness3("Smoothness3", Range( 0 , 1)) = 1
		[HideInInspector]_Smoothness1("Smoothness1", Range( 0 , 1)) = 1
		[HideInInspector]_Smoothness0("Smoothness0", Range( 0 , 1)) = 1
		[HideInInspector]_Smoothness2("Smoothness2", Range( 0 , 1)) = 1
		[HideInInspector][Gamma]_Metallic0("Metallic0", Range( 0 , 1)) = 0
		[HideInInspector][Gamma]_Metallic2("Metallic2", Range( 0 , 1)) = 0
		[HideInInspector][Gamma]_Metallic3("Metallic3", Range( 0 , 1)) = 0
		[HideInInspector][Gamma]_Metallic1("Metallic1", Range( 0 , 1)) = 0
		[HideInInspector]_Mask2("_Mask2", 2D) = "white" {}
		[HideInInspector]_Mask0("_Mask0", 2D) = "white" {}
		[HideInInspector]_Mask1("_Mask1", 2D) = "white" {}
		[HideInInspector]_Mask3("_Mask3", 2D) = "white" {}
		_Birghtness("Birghtness", Float) = 0
		_Displacement("Displacement", Range( 0 , 1)) = 0
		_Factor("Factor", Range( 1 , 32)) = 15
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGPROGRAM
		#include "Tessellation.cginc"
		#pragma target 4.6
		#pragma multi_compile_local __ _ALPHATEST_ON
		#pragma shader_feature_local _MASKMAP
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows vertex:vertexDataFunc tessellate:tessFunction 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _Mask2;
		uniform sampler2D _Mask0;
		uniform sampler2D _Mask1;
		uniform sampler2D _Mask3;
		uniform float4 _MaskMapRemapScale0;
		uniform float4 _MaskMapRemapOffset2;
		uniform float4 _MaskMapRemapScale2;
		uniform float4 _MaskMapRemapScale1;
		uniform float4 _MaskMapRemapOffset1;
		uniform float4 _MaskMapRemapScale3;
		uniform float4 _MaskMapRemapOffset3;
		uniform float4 _MaskMapRemapOffset0;
		uniform float _Smoothness0;
		uniform float _Smoothness1;
		uniform float _Smoothness2;
		uniform float _Smoothness3;
		uniform sampler2D _Splat0;
		uniform float4 _Splat0_ST;
		uniform sampler2D _Splat1;
		uniform float4 _Splat1_ST;
		uniform sampler2D _Splat2;
		uniform float4 _Splat2_ST;
		uniform sampler2D _Splat3;
		uniform float4 _Splat3_ST;
		uniform sampler2D _Control;
		uniform float4 _Control_ST;
		uniform float _Displacement;
		uniform sampler2D _Normal0;
		uniform sampler2D _Normal1;
		uniform sampler2D _Normal2;
		uniform sampler2D _Normal3;
		uniform sampler2D _TerrainHolesTexture;
		uniform float4 _TerrainHolesTexture_ST;
		uniform float _Birghtness;
		uniform float _Metallic0;
		uniform float _Metallic1;
		uniform float _Metallic2;
		uniform float _Metallic3;
		uniform float _Factor;


		void SplatmapFinalColor( Input SurfaceIn, SurfaceOutputStandard SurfaceOut, inout fixed4 FinalColor )
		{
			FinalColor *= SurfaceOut.Alpha;
		}


		float4 tessFunction( appdata_full v0, appdata_full v1, appdata_full v2 )
		{
			return UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, 0.0,100.0,_Factor);
		}

		void vertexDataFunc( inout appdata_full v )
		{
			float4 appendResult205_g9 = (float4(_Smoothness0 , _Smoothness1 , _Smoothness2 , _Smoothness3));
			float2 uv_Splat0 = v.texcoord * _Splat0_ST.xy + _Splat0_ST.zw;
			float4 tex2DNode4_g9 = tex2Dlod( _Splat0, float4( uv_Splat0, 0, 0.0) );
			float2 uv_Splat1 = v.texcoord * _Splat1_ST.xy + _Splat1_ST.zw;
			float4 tex2DNode3_g9 = tex2Dlod( _Splat1, float4( uv_Splat1, 0, 0.0) );
			float2 uv_Splat2 = v.texcoord * _Splat2_ST.xy + _Splat2_ST.zw;
			float4 tex2DNode6_g9 = tex2Dlod( _Splat2, float4( uv_Splat2, 0, 0.0) );
			float2 uv_Splat3 = v.texcoord * _Splat3_ST.xy + _Splat3_ST.zw;
			float4 tex2DNode7_g9 = tex2Dlod( _Splat3, float4( uv_Splat3, 0, 0.0) );
			float4 appendResult206_g9 = (float4(tex2DNode4_g9.a , tex2DNode3_g9.a , tex2DNode6_g9.a , tex2DNode7_g9.a));
			float4 defaultSmoothness210_g9 = ( appendResult205_g9 * appendResult206_g9 );
			float2 uv_Control = v.texcoord * _Control_ST.xy + _Control_ST.zw;
			float4 tex2DNode5_g9 = tex2Dlod( _Control, float4( uv_Control, 0, 0.0) );
			float dotResult20_g9 = dot( tex2DNode5_g9 , float4(1,1,1,1) );
			float SplatWeight22_g9 = dotResult20_g9;
			float localSplatClip74_g9 = ( SplatWeight22_g9 );
			float SplatWeight74_g9 = SplatWeight22_g9;
			{
			#if !defined(SHADER_API_MOBILE) && defined(TERRAIN_SPLAT_ADDPASS)
				clip(SplatWeight74_g9 == 0.0f ? -1 : 1);
			#endif
			}
			float4 SplatControl26_g9 = ( tex2DNode5_g9 / ( localSplatClip74_g9 + 0.001 ) );
			float dotResult216_g9 = dot( defaultSmoothness210_g9 , SplatControl26_g9 );
			float3 ase_vertexNormal = v.normal.xyz;
			float3 temp_cast_2 = (( _Displacement / 2.0 )).xxx;
			v.vertex.xyz += ( ( ( dotResult216_g9 * ase_vertexNormal ) * _Displacement ) - temp_cast_2 );
			v.vertex.w = 1;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_Control = i.uv_texcoord * _Control_ST.xy + _Control_ST.zw;
			float4 tex2DNode5_g9 = tex2D( _Control, uv_Control );
			float dotResult20_g9 = dot( tex2DNode5_g9 , float4(1,1,1,1) );
			float SplatWeight22_g9 = dotResult20_g9;
			float localSplatClip74_g9 = ( SplatWeight22_g9 );
			float SplatWeight74_g9 = SplatWeight22_g9;
			{
			#if !defined(SHADER_API_MOBILE) && defined(TERRAIN_SPLAT_ADDPASS)
				clip(SplatWeight74_g9 == 0.0f ? -1 : 1);
			#endif
			}
			float4 SplatControl26_g9 = ( tex2DNode5_g9 / ( localSplatClip74_g9 + 0.001 ) );
			float4 temp_output_59_0_g9 = SplatControl26_g9;
			float2 uv_Splat0 = i.uv_texcoord * _Splat0_ST.xy + _Splat0_ST.zw;
			float2 uv_Splat1 = i.uv_texcoord * _Splat1_ST.xy + _Splat1_ST.zw;
			float2 uv_Splat2 = i.uv_texcoord * _Splat2_ST.xy + _Splat2_ST.zw;
			float2 uv_Splat3 = i.uv_texcoord * _Splat3_ST.xy + _Splat3_ST.zw;
			float4 weightedBlendVar8_g9 = temp_output_59_0_g9;
			float4 weightedBlend8_g9 = ( weightedBlendVar8_g9.x*tex2D( _Normal0, uv_Splat0 ) + weightedBlendVar8_g9.y*tex2D( _Normal1, uv_Splat1 ) + weightedBlendVar8_g9.z*tex2D( _Normal2, uv_Splat2 ) + weightedBlendVar8_g9.w*tex2D( _Normal3, uv_Splat3 ) );
			float3 temp_output_61_0_g9 = UnpackNormal( weightedBlend8_g9 );
			o.Normal = temp_output_61_0_g9;
			float4 appendResult33_g9 = (float4(1.0 , 1.0 , 1.0 , _Smoothness0));
			float4 tex2DNode4_g9 = tex2D( _Splat0, uv_Splat0 );
			float3 _Vector1 = float3(1,1,1);
			float4 appendResult258_g9 = (float4(_Vector1 , 1.0));
			float4 tintLayer0253_g9 = appendResult258_g9;
			float4 appendResult36_g9 = (float4(1.0 , 1.0 , 1.0 , _Smoothness1));
			float4 tex2DNode3_g9 = tex2D( _Splat1, uv_Splat1 );
			float3 _Vector2 = float3(1,1,1);
			float4 appendResult261_g9 = (float4(_Vector2 , 1.0));
			float4 tintLayer1254_g9 = appendResult261_g9;
			float4 appendResult39_g9 = (float4(1.0 , 1.0 , 1.0 , _Smoothness2));
			float4 tex2DNode6_g9 = tex2D( _Splat2, uv_Splat2 );
			float3 _Vector3 = float3(1,1,1);
			float4 appendResult263_g9 = (float4(_Vector3 , 1.0));
			float4 tintLayer2255_g9 = appendResult263_g9;
			float4 appendResult42_g9 = (float4(1.0 , 1.0 , 1.0 , _Smoothness3));
			float4 tex2DNode7_g9 = tex2D( _Splat3, uv_Splat3 );
			float3 _Vector4 = float3(1,1,1);
			float4 appendResult265_g9 = (float4(_Vector4 , 1.0));
			float4 tintLayer3256_g9 = appendResult265_g9;
			float4 weightedBlendVar9_g9 = temp_output_59_0_g9;
			float4 weightedBlend9_g9 = ( weightedBlendVar9_g9.x*( appendResult33_g9 * tex2DNode4_g9 * tintLayer0253_g9 ) + weightedBlendVar9_g9.y*( appendResult36_g9 * tex2DNode3_g9 * tintLayer1254_g9 ) + weightedBlendVar9_g9.z*( appendResult39_g9 * tex2DNode6_g9 * tintLayer2255_g9 ) + weightedBlendVar9_g9.w*( appendResult42_g9 * tex2DNode7_g9 * tintLayer3256_g9 ) );
			float4 MixDiffuse28_g9 = weightedBlend9_g9;
			float4 temp_output_60_0_g9 = MixDiffuse28_g9;
			float4 localClipHoles100_g9 = ( temp_output_60_0_g9 );
			float2 uv_TerrainHolesTexture = i.uv_texcoord * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
			float holeClipValue99_g9 = tex2D( _TerrainHolesTexture, uv_TerrainHolesTexture ).r;
			float Hole100_g9 = holeClipValue99_g9;
			{
			#ifdef _ALPHATEST_ON
				clip(Hole100_g9 == 0.0f ? -1 : 1);
			#endif
			}
			o.Albedo = ( localClipHoles100_g9 * _Birghtness ).xyz;
			float4 appendResult55_g9 = (float4(_Metallic0 , _Metallic1 , _Metallic2 , _Metallic3));
			float dotResult53_g9 = dot( SplatControl26_g9 , appendResult55_g9 );
			o.Metallic = dotResult53_g9;
			o.Smoothness = 0.0;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18930
1268;388;1820;1023;1351.886;-29.19699;1;True;True
Node;AmplifyShaderEditor.FunctionNode;209;-1166.971,-27.53406;Inherit;False;Four Splats First Pass Terrain;0;;9;37452fdfb732e1443b7e39720d05b708;2,102,1,85,0;7;59;FLOAT4;0,0,0,0;False;60;FLOAT4;0,0,0,0;False;61;FLOAT3;0,0,0;False;57;FLOAT;0;False;58;FLOAT;0;False;201;FLOAT;0;False;62;FLOAT;0;False;7;FLOAT4;0;FLOAT3;14;FLOAT;56;FLOAT;45;FLOAT;200;FLOAT;19;FLOAT3;17
Node;AmplifyShaderEditor.NormalVertexDataNode;215;-1112.767,419.4087;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;214;-922.7668,528.4087;Float;False;Property;_Displacement;Displacement;25;0;Create;True;0;0;0;False;0;False;0;0.355;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;212;-896.7668,342.4087;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;213;-671.7668,400.4087;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;216;-586.9668,747.0087;Float;False;Property;_Factor;Factor;27;0;Create;True;0;0;0;False;0;False;15;32;1;32;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;223;-692.6292,132.4049;Inherit;False;Property;_Birghtness;Birghtness;24;0;Create;True;0;0;0;False;0;False;0;1.34;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;218;-625.9668,883.0087;Inherit;False;Constant;_DistanceMin;DistanceMin;4;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;219;-613.9668,971.009;Inherit;False;Constant;_DistanceMax;DistanceMax;4;0;Create;True;0;0;0;False;0;False;100;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;229;-573.886,511.197;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;221;-551.0807,218.4841;Inherit;False;Constant;_Float10;Float 10;4;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;224;-415.6292,-140.5951;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;230;-472.886,398.197;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;208;-1031.923,-206.3483;Float;False;FinalColor *= SurfaceOut.Alpha@;7;Create;3;True;SurfaceIn;OBJECT;0;In;Input;Float;False;True;SurfaceOut;OBJECT;0;In;SurfaceOutputStandard;Float;False;True;FinalColor;OBJECT;0;InOut;fixed4;Float;False;SplatmapFinalColor;False;True;0;;False;4;0;FLOAT;0;False;1;OBJECT;0;False;2;OBJECT;0;False;3;OBJECT;0;False;2;FLOAT;0;OBJECT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;225;-1410.359,314.0211;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;226;-1841.359,503.0212;Float;False;Property;_Displacement1;Displacement;26;0;Create;True;0;0;0;False;0;False;0;0.355;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;227;-2028.36,303.0211;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;228;-1812.359,226.0211;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DistanceBasedTessNode;217;-230.9668,641.0087;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;6;ASEMaterialInspector;0;0;Standard;M_Terrain;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;5;True;True;0;False;Opaque;;Geometry;All;18;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;True;2;15;10;25;False;5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;212;0;209;45
WireConnection;212;1;215;0
WireConnection;213;0;212;0
WireConnection;213;1;214;0
WireConnection;229;0;214;0
WireConnection;224;0;209;0
WireConnection;224;1;223;0
WireConnection;230;0;213;0
WireConnection;230;1;229;0
WireConnection;225;0;228;0
WireConnection;225;1;226;0
WireConnection;228;1;227;0
WireConnection;217;0;216;0
WireConnection;217;1;218;0
WireConnection;217;2;219;0
WireConnection;0;0;224;0
WireConnection;0;1;209;14
WireConnection;0;3;209;56
WireConnection;0;4;221;0
WireConnection;0;11;230;0
WireConnection;0;14;217;0
ASEEND*/
//CHKSM=7F7A0A36B219F9EE3EF8532ED6D313A80E66D7EC
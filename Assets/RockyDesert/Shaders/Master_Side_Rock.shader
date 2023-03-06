// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Master_Side_Rock"
{
	Properties
	{
		_SandBrightness("SandBrightness", Range( 0 , 3)) = 1
		_Color_Edge("Color_Edge", Range( 0 , 4)) = 1
		_Color_Cavities("Color_Cavities", Range( 0 , 3)) = 1
		_Desaturation("Desaturation", Range( 0 , 1)) = 0
		_Brightness("Brightness", Range( 0 , 3)) = 1
		_SandScale("SandScale", Range( 0 , 20)) = 1
		_AOPower("AOPower", Range( 0 , 1)) = 1
		_DetailNormalScale("DetailNormalScale", Range( 0 , 20)) = 2
		_SandTexture("SandTexture", 2D) = "white" {}
		_SandColor("SandColor", Color) = (1,1,1,0)
		_MaskMap("MaskMap", 2D) = "white" {}
		_CliffTexture("CliffTexture", 2D) = "white" {}
		_Sand_Normal_Power("Sand_Normal_Power", Range( 0 , 3)) = 1
		_Cliff_Normal_Power("Cliff_Normal_Power", Range( 0 , 2)) = 1
		_Cliff_Normal("Cliff_Normal", 2D) = "bump" {}
		_SandNormal("SandNormal", 2D) = "bump" {}
		_maskConstant("maskConstant", Range( 0 , 4)) = 1
		_NormalCapSand("NormalCapSand", Range( 0 , 3)) = 1
		_maskBrightness("maskBrightness", Range( 0 , 3)) = 1
		_MainNormal("MainNormal", 2D) = "bump" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGINCLUDE
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float3 worldNormal;
			INTERNAL_DATA
		};

		uniform sampler2D _MainNormal;
		uniform float4 _MainNormal_ST;
		uniform sampler2D _Cliff_Normal;
		uniform float _DetailNormalScale;
		uniform float _Cliff_Normal_Power;
		uniform sampler2D _SandNormal;
		uniform float _SandScale;
		uniform float _Sand_Normal_Power;
		uniform float _maskConstant;
		uniform float _maskBrightness;
		uniform float _NormalCapSand;
		uniform float _Color_Cavities;
		uniform float _Color_Edge;
		uniform sampler2D _CliffTexture;
		uniform sampler2D _MaskMap;
		uniform float4 _MaskMap_ST;
		uniform float4 _SandColor;
		uniform sampler2D _SandTexture;
		uniform float _SandBrightness;
		uniform float _Desaturation;
		uniform float _Brightness;
		uniform float _AOPower;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_MainNormal = i.uv_texcoord * _MainNormal_ST.xy + _MainNormal_ST.zw;
			float3 tex2DNode72 = UnpackNormal( tex2D( _MainNormal, uv_MainNormal ) );
			float2 temp_output_43_0 = ( i.uv_texcoord * _DetailNormalScale );
			float2 temp_output_17_0 = ( i.uv_texcoord * _SandScale );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_tangentToWorldFast = float3x3(ase_worldTangent.x,ase_worldBitangent.x,ase_worldNormal.x,ase_worldTangent.y,ase_worldBitangent.y,ase_worldNormal.y,ase_worldTangent.z,ase_worldBitangent.z,ase_worldNormal.z);
			float3 tangentToWorldDir83 = mul( ase_tangentToWorldFast, tex2DNode72 );
			float dotResult63 = dot( float3(0,1,0) , tangentToWorldDir83 );
			float clampResult69 = clamp( ( pow( dotResult63 , _maskConstant ) * _maskBrightness ) , 0.0 , _NormalCapSand );
			float3 lerpResult59 = lerp( ( UnpackNormal( tex2D( _Cliff_Normal, temp_output_43_0 ) ) * ( float3(0,0,1) + ( float3(1,1,0) * _Cliff_Normal_Power ) ) ) , ( UnpackNormal( tex2D( _SandNormal, temp_output_17_0 ) ) * ( float3(0,0,1) + ( float3(1,1,0) * _Sand_Normal_Power ) ) ) , clampResult69);
			o.Normal = BlendNormals( tex2DNode72 , lerpResult59 );
			float4 tex2DNode45 = tex2D( _CliffTexture, temp_output_43_0 );
			float2 uv_MaskMap = i.uv_texcoord * _MaskMap_ST.xy + _MaskMap_ST.zw;
			float4 tex2DNode35 = tex2D( _MaskMap, uv_MaskMap );
			float4 lerpResult29 = lerp( ( _Color_Edge * tex2DNode45 ) , tex2DNode45 , tex2DNode35.g);
			float4 lerpResult27 = lerp( ( _Color_Cavities * lerpResult29 ) , lerpResult29 , tex2DNode35.r);
			float3 tangentToWorldDir82 = mul( ase_tangentToWorldFast, tex2DNode72 );
			float dotResult3 = dot( float3(0,1,0) , tangentToWorldDir82 );
			float clampResult13 = clamp( ( pow( dotResult3 , _maskConstant ) * _maskBrightness ) , 0.0 , 1.0 );
			float4 lerpResult26 = lerp( lerpResult27 , ( ( _SandColor * tex2D( _SandTexture, temp_output_17_0 ) ) * _SandBrightness ) , clampResult13);
			float3 desaturateInitialColor47 = lerpResult26.rgb;
			float desaturateDot47 = dot( desaturateInitialColor47, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar47 = lerp( desaturateInitialColor47, desaturateDot47.xxx, _Desaturation );
			o.Albedo = ( desaturateVar47 * _Brightness );
			float lerpResult80 = lerp( 1.0 , tex2DNode35.b , _AOPower);
			o.Occlusion = lerpResult80;
			o.Alpha = 1;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Standard keepalpha fullforwardshadows 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputStandard o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandard, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18930
2576;12;1820;1017;849.4598;-987.3188;1;True;True
Node;AmplifyShaderEditor.TextureCoordinatesNode;42;-1866.465,741.9469;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;44;-1842.275,998.8892;Inherit;False;Property;_DetailNormalScale;DetailNormalScale;7;0;Create;True;0;0;0;False;0;False;2;4.11;0;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;43;-1341.276,851.8892;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;14;-2245.414,-1267.534;Inherit;False;420.9303;316.0408;Sand Scale;1;15;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;72;902.6026,696.9993;Inherit;True;Property;_MainNormal;MainNormal;19;0;Create;True;0;0;0;False;0;False;-1;abc00000000017314560934922872340;abc00000000017314560934922872340;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;15;-2200.131,-1193.596;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;1;-353.5696,-1653.368;Inherit;False;Constant;_Vector0;Vector 0;0;0;Create;True;0;0;0;False;0;False;0,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;45;-965.3212,532.6716;Inherit;True;Property;_CliffTexture;CliffTexture;11;0;Create;True;0;0;0;False;0;False;-1;cf06fee5303ca1b42b250a0ba45d3ad3;cf06fee5303ca1b42b250a0ba45d3ad3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;33;-6.884014,-132.2849;Inherit;False;Property;_Color_Edge;Color_Edge;1;0;Create;True;0;0;0;False;0;False;1;1.89;0;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.TransformDirectionNode;82;-667.6077,-1336.204;Inherit;False;Tangent;World;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;18;-2115.14,-893.7535;Inherit;False;Property;_SandScale;SandScale;5;0;Create;True;0;0;0;False;0;False;1;5.84;0;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.TransformDirectionNode;83;-81.02734,2753.465;Inherit;False;Tangent;World;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;3;-106.3282,-1526.851;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;30;156.6614,-56.13517;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector3Node;61;49.63319,2560.744;Inherit;False;Constant;_Vector3;Vector 3;17;0;Create;True;0;0;0;False;0;False;0,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;66;-172.7177,428.4181;Inherit;False;Property;_maskConstant;maskConstant;16;0;Create;True;0;0;0;False;0;False;1;2.87;0;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;17;-1615.141,-1040.754;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;35;-965.0534,112.0622;Inherit;True;Property;_MaskMap;MaskMap;10;0;Create;True;0;0;0;False;0;False;-1;abc00000000008553900006066738937;abc00000000008553900006066738937;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;34;302.6524,-175.1487;Inherit;False;Property;_Color_Cavities;Color_Cavities;2;0;Create;True;0;0;0;False;0;False;1;0.4;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;54;-819.6349,2441.16;Inherit;False;Constant;_Vector2;Vector 2;15;0;Create;True;0;0;0;False;0;False;1,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ColorNode;21;-1359.468,-1299.996;Inherit;False;Property;_SandColor;SandColor;9;0;Create;True;0;0;0;False;0;False;1,1,1,0;0.8962264,0.8962264,0.8962264,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;29;353.8192,96.98917;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector3Node;78;-275.3689,1287.665;Inherit;False;Constant;_Vector5;Vector 5;15;0;Create;True;0;0;0;False;0;False;1,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;68;86.78621,503.5891;Inherit;False;Property;_maskBrightness;maskBrightness;18;0;Create;True;0;0;0;False;0;False;1;2.41;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;63;347.0349,2620.801;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;19;-1405.974,-1085.577;Inherit;True;Property;_SandTexture;SandTexture;8;0;Create;True;0;0;0;False;0;False;-1;abc00000000001105881797649428196;fb3f2cd2bfbfeff42a86323ca72e3d64;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;8;113.6722,-1484.851;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;77;-283.3893,1492.015;Inherit;False;Property;_Sand_Normal_Power;Sand_Normal_Power;12;0;Create;True;0;0;0;False;0;False;1;1;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;57;-828.6553,2645.51;Inherit;False;Property;_Cliff_Normal_Power;Cliff_Normal_Power;13;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;53;-820.7621,2189.603;Inherit;False;Constant;_Vector1;Vector 1;15;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PowerNode;65;617.6345,2540.853;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;75;-276.4961,1036.108;Inherit;False;Constant;_Vector4;Vector 4;15;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;56;-556.1882,2451.205;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;28;506.3365,-87.12445;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;10;297.6721,-1338.851;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;23;-1057.868,-1127.097;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;25;-1123.989,-832.9167;Inherit;False;Property;_SandBrightness;SandBrightness;0;0;Create;True;0;0;0;False;0;False;1;1.17;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;74;-11.9222,1297.71;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;67;878.6337,2664.847;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;70;976.8791,2873.363;Inherit;False;Property;_NormalCapSand;NormalCapSand;17;0;Create;True;0;0;0;False;0;False;1;0.89;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;52;-832.5822,1849.591;Inherit;True;Property;_Cliff_Normal;Cliff_Normal;14;0;Create;True;0;0;0;False;0;False;-1;abc00000000000874266319999981339;abc00000000000874266319999981339;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;60;-186.4048,682.5637;Inherit;True;Property;_SandNormal;SandNormal;15;0;Create;True;0;0;0;False;0;False;-1;None;6d77b5d38ebd41b469604710328924e1;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;24;-715.6548,-945.8607;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;13;577.2004,-1159.141;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;27;678.9802,14.34163;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;76;71.31448,1150.559;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;55;-472.9515,2304.054;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;48;1467.982,8.552357;Inherit;False;Property;_Desaturation;Desaturation;3;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;79;334.3442,859.8674;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;69;1244.943,2477.584;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;26;825.123,-191.4001;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;58;-215.8095,1840.306;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;41;651.5358,462.1812;Inherit;False;Property;_AOPower;AOPower;6;0;Create;True;0;0;0;False;0;False;1;0.42;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;59;920.7009,1115.346;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;50;1760.028,25.3404;Inherit;False;Property;_Brightness;Brightness;4;0;Create;True;0;0;0;False;0;False;1;1.34;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.DesaturateOpNode;47;1658.945,-249.4045;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;73;170.8155,3006.337;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.BlendNormalsNode;71;1270.691,798.9096;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;49;1924.028,-164.6597;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;80;854.1044,291.643;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;7;-341.3282,-1317.851;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;2297.92,-263.1703;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;Master_Side_Rock;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;5;True;True;0;False;Opaque;;Geometry;All;18;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;43;0;42;0
WireConnection;43;1;44;0
WireConnection;45;1;43;0
WireConnection;82;0;72;0
WireConnection;83;0;72;0
WireConnection;3;0;1;0
WireConnection;3;1;82;0
WireConnection;30;0;33;0
WireConnection;30;1;45;0
WireConnection;17;0;15;0
WireConnection;17;1;18;0
WireConnection;29;0;30;0
WireConnection;29;1;45;0
WireConnection;29;2;35;2
WireConnection;63;0;61;0
WireConnection;63;1;83;0
WireConnection;19;1;17;0
WireConnection;8;0;3;0
WireConnection;8;1;66;0
WireConnection;65;0;63;0
WireConnection;65;1;66;0
WireConnection;56;0;54;0
WireConnection;56;1;57;0
WireConnection;28;0;34;0
WireConnection;28;1;29;0
WireConnection;10;0;8;0
WireConnection;10;1;68;0
WireConnection;23;0;21;0
WireConnection;23;1;19;0
WireConnection;74;0;78;0
WireConnection;74;1;77;0
WireConnection;67;0;65;0
WireConnection;67;1;68;0
WireConnection;52;1;43;0
WireConnection;60;1;17;0
WireConnection;24;0;23;0
WireConnection;24;1;25;0
WireConnection;13;0;10;0
WireConnection;27;0;28;0
WireConnection;27;1;29;0
WireConnection;27;2;35;1
WireConnection;76;0;75;0
WireConnection;76;1;74;0
WireConnection;55;0;53;0
WireConnection;55;1;56;0
WireConnection;79;0;60;0
WireConnection;79;1;76;0
WireConnection;69;0;67;0
WireConnection;69;2;70;0
WireConnection;26;0;27;0
WireConnection;26;1;24;0
WireConnection;26;2;13;0
WireConnection;58;0;52;0
WireConnection;58;1;55;0
WireConnection;59;0;58;0
WireConnection;59;1;79;0
WireConnection;59;2;69;0
WireConnection;47;0;26;0
WireConnection;47;1;48;0
WireConnection;71;0;72;0
WireConnection;71;1;59;0
WireConnection;49;0;47;0
WireConnection;49;1;50;0
WireConnection;80;1;35;3
WireConnection;80;2;41;0
WireConnection;0;0;49;0
WireConnection;0;1;71;0
WireConnection;0;5;80;0
ASEEND*/
//CHKSM=B670449B5F4D25ED639B65C7D6602823496F560B
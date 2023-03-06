#include "pch-cpp.hpp"

#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif


#include <limits>
#include <stdint.h>


template <typename T1, typename T2>
struct VirtualActionInvoker2
{
	typedef void (*Action)(void*, T1, T2, const RuntimeMethod*);

	static inline void Invoke (Il2CppMethodSlot slot, RuntimeObject* obj, T1 p1, T2 p2)
	{
		const VirtualInvokeData& invokeData = il2cpp_codegen_get_virtual_invoke_data(slot, obj);
		((Action)invokeData.methodPtr)(obj, p1, p2, invokeData.method);
	}
};
template <typename R>
struct VirtualFuncInvoker0
{
	typedef R (*Func)(void*, const RuntimeMethod*);

	static inline R Invoke (Il2CppMethodSlot slot, RuntimeObject* obj)
	{
		const VirtualInvokeData& invokeData = il2cpp_codegen_get_virtual_invoke_data(slot, obj);
		return ((Func)invokeData.methodPtr)(obj, invokeData.method);
	}
};

// System.Action`1<UnityEngine.VFX.VFXOutputEventArgs>
struct Action_1_tBAC06A706FB1F9A81AEF7EDF6202FC51D1E52C3A;
// UnityEngine.GameObject[]
struct GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF;
// System.Object[]
struct ObjectU5BU5D_t8061030B0A12A55D5AD8652A20C922FE99450918;
// System.Single[]
struct SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C;
// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler[]
struct VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD;
// UnityEngine.AudioSource
struct AudioSource_t871AC2272F896738252F04EE949AEF5B241D3299;
// UnityEngine.Component
struct Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3;
// UnityEngine.VFX.Utility.ExposedProperty
struct ExposedProperty_t90982415ECDCB651D6A637FE3DA1D53BC76D602A;
// UnityEngine.GameObject
struct GameObject_t76FEDD663AB33C991A9C9A23129337651094216F;
// UnityEngine.Events.InvokableCallList
struct InvokableCallList_t309E1C8C7CE885A0D2F98C84CEA77A8935688382;
// UnityEngine.Light
struct Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3;
// UnityEngine.MonoBehaviour
struct MonoBehaviour_t532A11E69716D348D8AA7F854AFCBFCB8AD17F71;
// UnityEngine.Object
struct Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C;
// UnityEngine.Events.PersistentCallGroup
struct PersistentCallGroup_tB826EDF15DC80F71BCBCD8E410FD959A04C33F25;
// UnityEngine.Rigidbody
struct Rigidbody_t268697F5A994213ED97393309870968BC1C7393C;
// System.String
struct String_t;
// UnityEngine.Transform
struct Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1;
// UnityEngine.Events.UnityEvent
struct UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977;
// UnityEngine.VFX.VFXEventAttribute
struct VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518;
// UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler
struct VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564;
// UnityEngine.VFX.Utility.VFXOutputEventPlayAudio
struct VFXOutputEventPlayAudio_tE6E67F710ABBEFCCA0FC2556DA02F6AF67E7D010;
// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler
struct VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6;
// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeLightHandler
struct VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF;
// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler
struct VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2;
// UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn
struct VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154;
// UnityEngine.VFX.Utility.VFXOutputEventRigidBody
struct VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D;
// UnityEngine.VFX.Utility.VFXOutputEventUnityEvent
struct VFXOutputEventUnityEvent_tFCDB9BF5B61308DA636D248C68F6D7783558965D;
// UnityEngine.VFX.VisualEffect
struct VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0;
// UnityEngine.VFX.VisualEffectAsset
struct VisualEffectAsset_t0CD57FD9980CD68033BD96DA356697F92A69E688;
// System.Void
struct Void_t4861ACF8F4594C3437BB48B6E56783494B843915;

IL2CPP_EXTERN_C RuntimeClass* GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* Int32_t680FF22E76F6EFAD4375103CBBFFA0421349384C_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* Math_tEB65DE7CA8B083C412C969C92981C030865486CE_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C RuntimeClass* Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2_il2cpp_TypeInfo_var;
IL2CPP_EXTERN_C String_t* _stringLiteral3EE5A4671A4E5AEBD31CA5F013A7773DC18ED22B;
IL2CPP_EXTERN_C String_t* _stringLiteral48DC6A58A18098420AC1CD015B24A5856038A620;
IL2CPP_EXTERN_C String_t* _stringLiteral816CEBC3D7DC9482D6A74FF2F0891D2B8B6503D6;
IL2CPP_EXTERN_C String_t* _stringLiteral88BDF3D0791A560245652E772545C49897854443;
IL2CPP_EXTERN_C String_t* _stringLiteralBE2893848F9FC647C2288DA6581A1522E9695182;
IL2CPP_EXTERN_C String_t* _stringLiteralDD0F04E0A3F0BA1F904E0E27720F367F4228C69D;
IL2CPP_EXTERN_C String_t* _stringLiteralF9BE17D634D1B07BCDCDA77A87710C946D81307B;
IL2CPP_EXTERN_C String_t* _stringLiteralFC341A1966AF28A9A7A26EDFB78ABBF7DE4D0E1F;
IL2CPP_EXTERN_C const RuntimeMethod* Component_GetComponent_TisLight_t1E68479B7782AF2050FAA02A5DC612FD034F18F3_mF4816FA12B6F220CA55D47D669D7E50DC118B9E9_RuntimeMethod_var;
IL2CPP_EXTERN_C const RuntimeMethod* Component_TryGetComponent_TisRigidbody_t268697F5A994213ED97393309870968BC1C7393C_m2C2A32AA4FD62D8B9BF5E40B7E2F3EF738C532A6_RuntimeMethod_var;
IL2CPP_EXTERN_C const RuntimeMethod* GameObject_GetComponentsInChildren_TisVFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6_m60D3FC818A710169654AA887CB1CD976247E111B_RuntimeMethod_var;
IL2CPP_EXTERN_C const RuntimeMethod* Object_Instantiate_TisGameObject_t76FEDD663AB33C991A9C9A23129337651094216F_mC898F7E3D9541F17BD8B79579FDD431C0651E12D_RuntimeMethod_var;

struct GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF;
struct SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C;
struct VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD;

IL2CPP_EXTERN_C_BEGIN
IL2CPP_EXTERN_C_END

#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// <Module>
struct U3CModuleU3E_tA355DC485D6EB22061E0EA6000E8BA18B5ABBCA9 
{
};
struct Il2CppArrayBounds;

// System.String
struct String_t  : public RuntimeObject
{
	// System.Int32 System.String::_stringLength
	int32_t ____stringLength_4;
	// System.Char System.String::_firstChar
	Il2CppChar ____firstChar_5;
};

struct String_t_StaticFields
{
	// System.String System.String::Empty
	String_t* ___Empty_6;
};

// UnityEngine.Events.UnityEventBase
struct UnityEventBase_t4968A4C72559F35C0923E4BD9C042C3A842E1DB8  : public RuntimeObject
{
	// UnityEngine.Events.InvokableCallList UnityEngine.Events.UnityEventBase::m_Calls
	InvokableCallList_t309E1C8C7CE885A0D2F98C84CEA77A8935688382* ___m_Calls_0;
	// UnityEngine.Events.PersistentCallGroup UnityEngine.Events.UnityEventBase::m_PersistentCalls
	PersistentCallGroup_tB826EDF15DC80F71BCBCD8E410FD959A04C33F25* ___m_PersistentCalls_1;
	// System.Boolean UnityEngine.Events.UnityEventBase::m_CallsDirty
	bool ___m_CallsDirty_2;
};

// System.ValueType
struct ValueType_t6D9B272BD21782F0A9A14F2E41F85A50E97A986F  : public RuntimeObject
{
};
// Native definition for P/Invoke marshalling of System.ValueType
struct ValueType_t6D9B272BD21782F0A9A14F2E41F85A50E97A986F_marshaled_pinvoke
{
};
// Native definition for COM marshalling of System.ValueType
struct ValueType_t6D9B272BD21782F0A9A14F2E41F85A50E97A986F_marshaled_com
{
};

// System.Boolean
struct Boolean_t09A6377A54BE2F9E6985A8149F19234FD7DDFE22 
{
	// System.Boolean System.Boolean::m_value
	bool ___m_value_0;
};

struct Boolean_t09A6377A54BE2F9E6985A8149F19234FD7DDFE22_StaticFields
{
	// System.String System.Boolean::TrueString
	String_t* ___TrueString_5;
	// System.String System.Boolean::FalseString
	String_t* ___FalseString_6;
};

// UnityEngine.Color
struct Color_tD001788D726C3A7F1379BEED0260B9591F440C1F 
{
	// System.Single UnityEngine.Color::r
	float ___r_0;
	// System.Single UnityEngine.Color::g
	float ___g_1;
	// System.Single UnityEngine.Color::b
	float ___b_2;
	// System.Single UnityEngine.Color::a
	float ___a_3;
};

// System.Double
struct Double_tE150EF3D1D43DEE85D533810AB4C742307EEDE5F 
{
	// System.Double System.Double::m_value
	double ___m_value_0;
};

// System.Int32
struct Int32_t680FF22E76F6EFAD4375103CBBFFA0421349384C 
{
	// System.Int32 System.Int32::m_value
	int32_t ___m_value_0;
};

// System.IntPtr
struct IntPtr_t 
{
	// System.Void* System.IntPtr::m_value
	void* ___m_value_0;
};

struct IntPtr_t_StaticFields
{
	// System.IntPtr System.IntPtr::Zero
	intptr_t ___Zero_1;
};

// UnityEngine.Matrix4x4
struct Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 
{
	// System.Single UnityEngine.Matrix4x4::m00
	float ___m00_0;
	// System.Single UnityEngine.Matrix4x4::m10
	float ___m10_1;
	// System.Single UnityEngine.Matrix4x4::m20
	float ___m20_2;
	// System.Single UnityEngine.Matrix4x4::m30
	float ___m30_3;
	// System.Single UnityEngine.Matrix4x4::m01
	float ___m01_4;
	// System.Single UnityEngine.Matrix4x4::m11
	float ___m11_5;
	// System.Single UnityEngine.Matrix4x4::m21
	float ___m21_6;
	// System.Single UnityEngine.Matrix4x4::m31
	float ___m31_7;
	// System.Single UnityEngine.Matrix4x4::m02
	float ___m02_8;
	// System.Single UnityEngine.Matrix4x4::m12
	float ___m12_9;
	// System.Single UnityEngine.Matrix4x4::m22
	float ___m22_10;
	// System.Single UnityEngine.Matrix4x4::m32
	float ___m32_11;
	// System.Single UnityEngine.Matrix4x4::m03
	float ___m03_12;
	// System.Single UnityEngine.Matrix4x4::m13
	float ___m13_13;
	// System.Single UnityEngine.Matrix4x4::m23
	float ___m23_14;
	// System.Single UnityEngine.Matrix4x4::m33
	float ___m33_15;
};

struct Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6_StaticFields
{
	// UnityEngine.Matrix4x4 UnityEngine.Matrix4x4::zeroMatrix
	Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 ___zeroMatrix_16;
	// UnityEngine.Matrix4x4 UnityEngine.Matrix4x4::identityMatrix
	Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 ___identityMatrix_17;
};

// System.Single
struct Single_t4530F2FF86FCB0DC29F35385CA1BD21BE294761C 
{
	// System.Single System.Single::m_value
	float ___m_value_0;
};

// System.UInt32
struct UInt32_t1833D51FFA667B18A5AA4B8D34DE284F8495D29B 
{
	// System.UInt32 System.UInt32::m_value
	uint32_t ___m_value_0;
};

// UnityEngine.Events.UnityEvent
struct UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977  : public UnityEventBase_t4968A4C72559F35C0923E4BD9C042C3A842E1DB8
{
	// System.Object[] UnityEngine.Events.UnityEvent::m_InvokeArray
	ObjectU5BU5D_t8061030B0A12A55D5AD8652A20C922FE99450918* ___m_InvokeArray_3;
};

// UnityEngine.Vector3
struct Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 
{
	// System.Single UnityEngine.Vector3::x
	float ___x_2;
	// System.Single UnityEngine.Vector3::y
	float ___y_3;
	// System.Single UnityEngine.Vector3::z
	float ___z_4;
};

struct Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2_StaticFields
{
	// UnityEngine.Vector3 UnityEngine.Vector3::zeroVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___zeroVector_5;
	// UnityEngine.Vector3 UnityEngine.Vector3::oneVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___oneVector_6;
	// UnityEngine.Vector3 UnityEngine.Vector3::upVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___upVector_7;
	// UnityEngine.Vector3 UnityEngine.Vector3::downVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___downVector_8;
	// UnityEngine.Vector3 UnityEngine.Vector3::leftVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___leftVector_9;
	// UnityEngine.Vector3 UnityEngine.Vector3::rightVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___rightVector_10;
	// UnityEngine.Vector3 UnityEngine.Vector3::forwardVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___forwardVector_11;
	// UnityEngine.Vector3 UnityEngine.Vector3::backVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___backVector_12;
	// UnityEngine.Vector3 UnityEngine.Vector3::positiveInfinityVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___positiveInfinityVector_13;
	// UnityEngine.Vector3 UnityEngine.Vector3::negativeInfinityVector
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___negativeInfinityVector_14;
};

// System.Void
struct Void_t4861ACF8F4594C3437BB48B6E56783494B843915 
{
	union
	{
		struct
		{
		};
		uint8_t Void_t4861ACF8F4594C3437BB48B6E56783494B843915__padding[1];
	};
};

// UnityEngine.Object
struct Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C  : public RuntimeObject
{
	// System.IntPtr UnityEngine.Object::m_CachedPtr
	intptr_t ___m_CachedPtr_0;
};

struct Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_StaticFields
{
	// System.Int32 UnityEngine.Object::OffsetOfInstanceIDInCPlusPlusObject
	int32_t ___OffsetOfInstanceIDInCPlusPlusObject_1;
};
// Native definition for P/Invoke marshalling of UnityEngine.Object
struct Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_marshaled_pinvoke
{
	intptr_t ___m_CachedPtr_0;
};
// Native definition for COM marshalling of UnityEngine.Object
struct Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_marshaled_com
{
	intptr_t ___m_CachedPtr_0;
};

// UnityEngine.VFX.VFXEventAttribute
struct VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518  : public RuntimeObject
{
	// System.IntPtr UnityEngine.VFX.VFXEventAttribute::m_Ptr
	intptr_t ___m_Ptr_0;
	// System.Boolean UnityEngine.VFX.VFXEventAttribute::m_Owner
	bool ___m_Owner_1;
	// UnityEngine.VFX.VisualEffectAsset UnityEngine.VFX.VFXEventAttribute::m_VfxAsset
	VisualEffectAsset_t0CD57FD9980CD68033BD96DA356697F92A69E688* ___m_VfxAsset_2;
};
// Native definition for P/Invoke marshalling of UnityEngine.VFX.VFXEventAttribute
struct VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518_marshaled_pinvoke
{
	intptr_t ___m_Ptr_0;
	int32_t ___m_Owner_1;
	VisualEffectAsset_t0CD57FD9980CD68033BD96DA356697F92A69E688* ___m_VfxAsset_2;
};
// Native definition for COM marshalling of UnityEngine.VFX.VFXEventAttribute
struct VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518_marshaled_com
{
	intptr_t ___m_Ptr_0;
	int32_t ___m_Owner_1;
	VisualEffectAsset_t0CD57FD9980CD68033BD96DA356697F92A69E688* ___m_VfxAsset_2;
};

// UnityEngine.Component
struct Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3  : public Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C
{
};

// UnityEngine.GameObject
struct GameObject_t76FEDD663AB33C991A9C9A23129337651094216F  : public Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C
{
};

// UnityEngine.Behaviour
struct Behaviour_t01970CFBBA658497AE30F311C447DB0440BAB7FA  : public Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3
{
};

// UnityEngine.Rigidbody
struct Rigidbody_t268697F5A994213ED97393309870968BC1C7393C  : public Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3
{
};

// UnityEngine.Transform
struct Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1  : public Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3
{
};

// UnityEngine.AudioBehaviour
struct AudioBehaviour_t2DC0BEF7B020C952F3D2DA5AAAC88501C7EEB941  : public Behaviour_t01970CFBBA658497AE30F311C447DB0440BAB7FA
{
};

// UnityEngine.Light
struct Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3  : public Behaviour_t01970CFBBA658497AE30F311C447DB0440BAB7FA
{
	// System.Int32 UnityEngine.Light::m_BakedIndex
	int32_t ___m_BakedIndex_4;
};

// UnityEngine.MonoBehaviour
struct MonoBehaviour_t532A11E69716D348D8AA7F854AFCBFCB8AD17F71  : public Behaviour_t01970CFBBA658497AE30F311C447DB0440BAB7FA
{
};

// UnityEngine.VFX.VisualEffect
struct VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0  : public Behaviour_t01970CFBBA658497AE30F311C447DB0440BAB7FA
{
	// UnityEngine.VFX.VFXEventAttribute UnityEngine.VFX.VisualEffect::m_cachedEventAttribute
	VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* ___m_cachedEventAttribute_4;
	// System.Action`1<UnityEngine.VFX.VFXOutputEventArgs> UnityEngine.VFX.VisualEffect::outputEventReceived
	Action_1_tBAC06A706FB1F9A81AEF7EDF6202FC51D1E52C3A* ___outputEventReceived_5;
};

// UnityEngine.AudioSource
struct AudioSource_t871AC2272F896738252F04EE949AEF5B241D3299  : public AudioBehaviour_t2DC0BEF7B020C952F3D2DA5AAAC88501C7EEB941
{
};

// UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler
struct VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564  : public MonoBehaviour_t532A11E69716D348D8AA7F854AFCBFCB8AD17F71
{
	// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler::executeInEditor
	bool ___executeInEditor_4;
	// UnityEngine.VFX.Utility.ExposedProperty UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler::outputEvent
	ExposedProperty_t90982415ECDCB651D6A637FE3DA1D53BC76D602A* ___outputEvent_5;
	// UnityEngine.VFX.VisualEffect UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler::<m_VisualEffect>k__BackingField
	VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* ___U3Cm_VisualEffectU3Ek__BackingField_6;
};

// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler
struct VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6  : public MonoBehaviour_t532A11E69716D348D8AA7F854AFCBFCB8AD17F71
{
};

// UnityEngine.VFX.Utility.VFXOutputEventPlayAudio
struct VFXOutputEventPlayAudio_tE6E67F710ABBEFCCA0FC2556DA02F6AF67E7D010  : public VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564
{
	// UnityEngine.AudioSource UnityEngine.VFX.Utility.VFXOutputEventPlayAudio::audioSource
	AudioSource_t871AC2272F896738252F04EE949AEF5B241D3299* ___audioSource_7;
};

// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeLightHandler
struct VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF  : public VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6
{
	// System.Single UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeLightHandler::brightnessScale
	float ___brightnessScale_4;
};

struct VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_StaticFields
{
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeLightHandler::k_Color
	int32_t ___k_Color_5;
};

// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler
struct VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2  : public VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6
{
	// UnityEngine.Rigidbody UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler::m_RigidBody
	Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* ___m_RigidBody_4;
	// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler/Space UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler::attributeSpace
	int32_t ___attributeSpace_5;
};

struct VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_StaticFields
{
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler::k_Velocity
	int32_t ___k_Velocity_6;
};

// UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn
struct VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154  : public VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564
{
	// System.UInt32 UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::m_InstanceCount
	uint32_t ___m_InstanceCount_7;
	// UnityEngine.GameObject UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::m_PrefabToSpawn
	GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* ___m_PrefabToSpawn_8;
	// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::m_ParentInstances
	bool ___m_ParentInstances_9;
	// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::usePosition
	bool ___usePosition_10;
	// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::useAngle
	bool ___useAngle_11;
	// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::useScale
	bool ___useScale_12;
	// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::useLifetime
	bool ___useLifetime_13;
	// UnityEngine.GameObject[] UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::m_Instances
	GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* ___m_Instances_16;
	// System.Single[] UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::m_TimesToLive
	SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* ___m_TimesToLive_17;
};

struct VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields
{
	// UnityEngine.GameObject[] UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::k_EmptyGameObjects
	GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* ___k_EmptyGameObjects_14;
	// System.Single[] UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::k_EmptyTimeToLive
	SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* ___k_EmptyTimeToLive_15;
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::k_PositionID
	int32_t ___k_PositionID_18;
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::k_AngleID
	int32_t ___k_AngleID_19;
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::k_ScaleID
	int32_t ___k_ScaleID_20;
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::k_LifetimeID
	int32_t ___k_LifetimeID_21;
};

// UnityEngine.VFX.Utility.VFXOutputEventRigidBody
struct VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D  : public VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564
{
	// UnityEngine.Rigidbody UnityEngine.VFX.Utility.VFXOutputEventRigidBody::rigidBody
	Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* ___rigidBody_10;
	// UnityEngine.VFX.Utility.VFXOutputEventRigidBody/Space UnityEngine.VFX.Utility.VFXOutputEventRigidBody::attributeSpace
	int32_t ___attributeSpace_11;
	// UnityEngine.VFX.Utility.VFXOutputEventRigidBody/RigidBodyEventType UnityEngine.VFX.Utility.VFXOutputEventRigidBody::eventType
	int32_t ___eventType_12;
};

struct VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_StaticFields
{
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventRigidBody::k_Position
	int32_t ___k_Position_7;
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventRigidBody::k_Size
	int32_t ___k_Size_8;
	// System.Int32 UnityEngine.VFX.Utility.VFXOutputEventRigidBody::k_Velocity
	int32_t ___k_Velocity_9;
};

// UnityEngine.VFX.Utility.VFXOutputEventUnityEvent
struct VFXOutputEventUnityEvent_tFCDB9BF5B61308DA636D248C68F6D7783558965D  : public VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564
{
	// UnityEngine.Events.UnityEvent UnityEngine.VFX.Utility.VFXOutputEventUnityEvent::onEvent
	UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977* ___onEvent_7;
};
#ifdef __clang__
#pragma clang diagnostic pop
#endif
// UnityEngine.GameObject[]
struct GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF  : public RuntimeArray
{
	ALIGN_FIELD (8) GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* m_Items[1];

	inline GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* GetAt(il2cpp_array_size_t index) const
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items[index];
	}
	inline GameObject_t76FEDD663AB33C991A9C9A23129337651094216F** GetAddressAt(il2cpp_array_size_t index)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items + index;
	}
	inline void SetAt(il2cpp_array_size_t index, GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* value)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		m_Items[index] = value;
		Il2CppCodeGenWriteBarrier((void**)m_Items + index, (void*)value);
	}
	inline GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* GetAtUnchecked(il2cpp_array_size_t index) const
	{
		return m_Items[index];
	}
	inline GameObject_t76FEDD663AB33C991A9C9A23129337651094216F** GetAddressAtUnchecked(il2cpp_array_size_t index)
	{
		return m_Items + index;
	}
	inline void SetAtUnchecked(il2cpp_array_size_t index, GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* value)
	{
		m_Items[index] = value;
		Il2CppCodeGenWriteBarrier((void**)m_Items + index, (void*)value);
	}
};
// System.Single[]
struct SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C  : public RuntimeArray
{
	ALIGN_FIELD (8) float m_Items[1];

	inline float GetAt(il2cpp_array_size_t index) const
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items[index];
	}
	inline float* GetAddressAt(il2cpp_array_size_t index)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items + index;
	}
	inline void SetAt(il2cpp_array_size_t index, float value)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		m_Items[index] = value;
	}
	inline float GetAtUnchecked(il2cpp_array_size_t index) const
	{
		return m_Items[index];
	}
	inline float* GetAddressAtUnchecked(il2cpp_array_size_t index)
	{
		return m_Items + index;
	}
	inline void SetAtUnchecked(il2cpp_array_size_t index, float value)
	{
		m_Items[index] = value;
	}
};
// UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler[]
struct VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD  : public RuntimeArray
{
	ALIGN_FIELD (8) VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* m_Items[1];

	inline VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* GetAt(il2cpp_array_size_t index) const
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items[index];
	}
	inline VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6** GetAddressAt(il2cpp_array_size_t index)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items + index;
	}
	inline void SetAt(il2cpp_array_size_t index, VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* value)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		m_Items[index] = value;
		Il2CppCodeGenWriteBarrier((void**)m_Items + index, (void*)value);
	}
	inline VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* GetAtUnchecked(il2cpp_array_size_t index) const
	{
		return m_Items[index];
	}
	inline VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6** GetAddressAtUnchecked(il2cpp_array_size_t index)
	{
		return m_Items + index;
	}
	inline void SetAtUnchecked(il2cpp_array_size_t index, VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* value)
	{
		m_Items[index] = value;
		Il2CppCodeGenWriteBarrier((void**)m_Items + index, (void*)value);
	}
};


// T UnityEngine.Component::GetComponent<System.Object>()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR RuntimeObject* Component_GetComponent_TisRuntimeObject_m7181F81CAEC2CF53F5D2BC79B7425C16E1F80D33_gshared (Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3* __this, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.Component::TryGetComponent<System.Object>(T&)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool Component_TryGetComponent_TisRuntimeObject_m69D4ED21F14D49D805A2337F4332934CDA07DEDB_gshared (Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3* __this, RuntimeObject** ___component0, const RuntimeMethod* method) ;
// T UnityEngine.Object::Instantiate<System.Object>(T)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR RuntimeObject* Object_Instantiate_TisRuntimeObject_mCD6FC6BB14BA9EF1A4B314841EB4D40675E3C1DB_gshared (RuntimeObject* ___original0, const RuntimeMethod* method) ;
// T[] UnityEngine.GameObject::GetComponentsInChildren<System.Object>()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR ObjectU5BU5D_t8061030B0A12A55D5AD8652A20C922FE99450918* GameObject_GetComponentsInChildren_TisRuntimeObject_m6F69570C0224EE6620FD43C4DDB0F0AB152A1B20_gshared (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* __this, const RuntimeMethod* method) ;

// System.Boolean UnityEngine.Object::op_Inequality(UnityEngine.Object,UnityEngine.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool Object_op_Inequality_m4D656395C27694A7F33F5AA8DE80A7AAF9E20BA7 (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* ___x0, Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* ___y1, const RuntimeMethod* method) ;
// System.Void UnityEngine.AudioSource::Play()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void AudioSource_Play_m95DF07111C61D0E0F00257A00384D31531D590C3 (AudioSource_t871AC2272F896738252F04EE949AEF5B241D3299* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventAbstractHandler__ctor_m4E2D7BE313EA0EC6CD4BE214184BDAC7899F18E9 (VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.MonoBehaviour::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void MonoBehaviour__ctor_m592DB0105CA0BC97AA1C5F4AD27B12D68A3B7C1E (MonoBehaviour_t532A11E69716D348D8AA7F854AFCBFCB8AD17F71* __this, const RuntimeMethod* method) ;
// UnityEngine.Vector3 UnityEngine.VFX.VFXEventAttribute::GetVector3(System.Int32)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C (VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* __this, int32_t ___nameID0, const RuntimeMethod* method) ;
// System.Single UnityEngine.Vector3::get_magnitude()
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR float Vector3_get_magnitude_mF0D6017E90B345F1F52D1CC564C640F1A847AF2D_inline (Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.Color::.ctor(System.Single,System.Single,System.Single)
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR void Color__ctor_mCD6889CDE39F18704CD6EA8E2EFBFA48BA3E13B0_inline (Color_tD001788D726C3A7F1379BEED0260B9591F440C1F* __this, float ___r0, float ___g1, float ___b2, const RuntimeMethod* method) ;
// UnityEngine.Color UnityEngine.Color::op_Division(UnityEngine.Color,System.Single)
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR Color_tD001788D726C3A7F1379BEED0260B9591F440C1F Color_op_Division_m1C9D39C3D4B9AC3343E08D0ED4DD64E33D40A5FF_inline (Color_tD001788D726C3A7F1379BEED0260B9591F440C1F ___a0, float ___b1, const RuntimeMethod* method) ;
// T UnityEngine.Component::GetComponent<UnityEngine.Light>()
inline Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3* Component_GetComponent_TisLight_t1E68479B7782AF2050FAA02A5DC612FD034F18F3_mF4816FA12B6F220CA55D47D669D7E50DC118B9E9 (Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3* __this, const RuntimeMethod* method)
{
	return ((  Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3* (*) (Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3*, const RuntimeMethod*))Component_GetComponent_TisRuntimeObject_m7181F81CAEC2CF53F5D2BC79B7425C16E1F80D33_gshared)(__this, method);
}
// System.Void UnityEngine.Light::set_color(UnityEngine.Color)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Light_set_color_m242F09E22904E0A20D5B032A0749678B0796A87C (Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3* __this, Color_tD001788D726C3A7F1379BEED0260B9591F440C1F ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.Light::set_intensity(System.Single)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Light_set_intensity_mE4820C7F39F490B92ED5EA0C3AADA7C0775BE854 (Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3* __this, float ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeAbstractHandler__ctor_m02974A323F96F625C96B1484D84EA4FE8D32E738 (VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* __this, const RuntimeMethod* method) ;
// System.Int32 UnityEngine.Shader::PropertyToID(System.String)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR int32_t Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB (String_t* ___name0, const RuntimeMethod* method) ;
// UnityEngine.Transform UnityEngine.Component::get_transform()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* Component_get_transform_m2919A1D81931E6932C7F06D4C2F0AB8DDA9A5371 (Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3* __this, const RuntimeMethod* method) ;
// UnityEngine.Matrix4x4 UnityEngine.Transform::get_localToWorldMatrix()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 Transform_get_localToWorldMatrix_m5D35188766856338DD21DE756F42277C21719E6D (Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* __this, const RuntimeMethod* method) ;
// UnityEngine.Vector3 UnityEngine.Matrix4x4::MultiplyVector(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 Matrix4x4_MultiplyVector_mFD12F86A473E90BBB0002149ABA3917B2A518937 (Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___vector0, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.Component::TryGetComponent<UnityEngine.Rigidbody>(T&)
inline bool Component_TryGetComponent_TisRigidbody_t268697F5A994213ED97393309870968BC1C7393C_m2C2A32AA4FD62D8B9BF5E40B7E2F3EF738C532A6 (Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3* __this, Rigidbody_t268697F5A994213ED97393309870968BC1C7393C** ___component0, const RuntimeMethod* method)
{
	return ((  bool (*) (Component_t39FBE53E5EFCF4409111FB22C15FF73717632EC3*, Rigidbody_t268697F5A994213ED97393309870968BC1C7393C**, const RuntimeMethod*))Component_TryGetComponent_TisRuntimeObject_m69D4ED21F14D49D805A2337F4332934CDA07DEDB_gshared)(__this, ___component0, method);
}
// System.Void UnityEngine.Rigidbody::WakeUp()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Rigidbody_WakeUp_m64CF3AFAAC3CBB5360947731C1F77F13CDB960AD (Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.Rigidbody::set_velocity(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Rigidbody_set_velocity_mE4031DF1C2C1CCE889F2AC9D8871D83795BB0D62 (Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler::OnDisable()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventAbstractHandler_OnDisable_mA95FD62310C790E2FC47EBEED06C73315F3EFCC5 (VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.GameObject::SetActive(System.Boolean)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void GameObject_SetActive_m638E92E1E75E519E5B24CF150B08CA8E0CDFAB92 (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* __this, bool ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::DisposeInstances()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_DisposeInstances_mE29087C03BE175F2AC943D727E111B9759CFACE0 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.Object::op_Implicit(UnityEngine.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool Object_op_Implicit_m18E1885C296CC868AC918101523697CFE6413C79 (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* ___exists0, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.Application::get_isPlaying()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool Application_get_isPlaying_m0B3B501E1093739F8887A0DAC5F61D9CB49CC337 (const RuntimeMethod* method) ;
// System.Void UnityEngine.Object::Destroy(UnityEngine.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Object_Destroy_mFCDAE6333522488F60597AF019EA90BB1207A5AA (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* ___obj0, const RuntimeMethod* method) ;
// System.Void UnityEngine.Object::DestroyImmediate(UnityEngine.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Object_DestroyImmediate_m8249CABCDF344BE3A67EE765122EBB415DC2BC57 (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* ___obj0, const RuntimeMethod* method) ;
// System.Void UnityEngine.Object::set_hideFlags(UnityEngine.HideFlags)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Object_set_hideFlags_mACB8BFC903FB3B01BBD427753E791BF28B5E33D4 (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* __this, int32_t ___value0, const RuntimeMethod* method) ;
// T UnityEngine.Object::Instantiate<UnityEngine.GameObject>(T)
inline GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* Object_Instantiate_TisGameObject_t76FEDD663AB33C991A9C9A23129337651094216F_mC898F7E3D9541F17BD8B79579FDD431C0651E12D (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* ___original0, const RuntimeMethod* method)
{
	return ((  GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* (*) (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F*, const RuntimeMethod*))Object_Instantiate_TisRuntimeObject_mCD6FC6BB14BA9EF1A4B314841EB4D40675E3C1DB_gshared)(___original0, method);
}
// System.String UnityEngine.Object::get_name()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR String_t* Object_get_name_mAC2F6B897CF1303BA4249B4CB55271AFACBB6392 (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* __this, const RuntimeMethod* method) ;
// System.String System.String::Format(System.String,System.Object,System.Object,System.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR String_t* String_Format_m76BF8F3A6AD789E38B708848A2688D400AAC250A (String_t* ___format0, RuntimeObject* ___arg01, RuntimeObject* ___arg12, RuntimeObject* ___arg23, const RuntimeMethod* method) ;
// System.Void UnityEngine.Object::set_name(System.String)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Object_set_name_mC79E6DC8FFD72479C90F0C4CC7F42A0FEAF5AE47 (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* __this, String_t* ___value0, const RuntimeMethod* method) ;
// UnityEngine.Transform UnityEngine.GameObject::get_transform()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* GameObject_get_transform_m0BC10ADFA1632166AE5544BDF9038A2650C2AE56 (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.Transform::set_parent(UnityEngine.Transform)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Transform_set_parent_m9BD5E563B539DD5BEC342736B03F97B38A243234 (Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* __this, Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::UpdateHideFlag(UnityEngine.GameObject)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_UpdateHideFlag_m0A51F4E95B6D465F23DDD00DF131FA6F88563D83 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* ___instance0, const RuntimeMethod* method) ;
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::CheckAndRebuildInstances()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_CheckAndRebuildInstances_m734F927C477DA0AE8CABC4E035C247C03514D032 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.GameObject::get_activeSelf()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool GameObject_get_activeSelf_m4F3E5240E138B66AAA080EA30759A3D0517DA368 (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* __this, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.VFX.VFXEventAttribute::HasVector3(System.Int32)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool VFXEventAttribute_HasVector3_m22043F5E468E1AD708AF9671163457F9E15683BD (VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* __this, int32_t ___nameID0, const RuntimeMethod* method) ;
// System.Void UnityEngine.Transform::set_localPosition(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Transform_set_localPosition_mDE1C997F7D79C0885210B7732B4BA50EE7D73134 (Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.Transform::set_position(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Transform_set_position_mA1A817124BB41B685043DED2A9BA48CDF37C4156 (Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___value0, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::get_parentInstances()
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR bool VFXOutputEventPrefabSpawn_get_parentInstances_mC9BEBB7BF6BEE01BF0DDA0C461D3840A9E3D7481_inline (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.Transform::set_localEulerAngles(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Transform_set_localEulerAngles_m0458551662A1A51FDCA4C0417282B25D391661DF (Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.Transform::set_eulerAngles(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Transform_set_eulerAngles_m9F0BC484A7915A51FAB87230644229B75BACA004 (Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___value0, const RuntimeMethod* method) ;
// System.Void UnityEngine.Transform::set_localScale(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Transform_set_localScale_mBA79E811BAF6C47B80FF76414C12B47B3CD03633 (Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___value0, const RuntimeMethod* method) ;
// System.Boolean UnityEngine.VFX.VFXEventAttribute::HasFloat(System.Int32)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool VFXEventAttribute_HasFloat_mF3A88D85B0A13A73F1735E6E91F1ADD33B6F598B (VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* __this, int32_t ___nameID0, const RuntimeMethod* method) ;
// System.Single UnityEngine.VFX.VFXEventAttribute::GetFloat(System.Int32)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR float VFXEventAttribute_GetFloat_m38F12C08AE4606B72C6DDC4027E36DD4E84C1A89 (VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* __this, int32_t ___nameID0, const RuntimeMethod* method) ;
// T[] UnityEngine.GameObject::GetComponentsInChildren<UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler>()
inline VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD* GameObject_GetComponentsInChildren_TisVFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6_m60D3FC818A710169654AA887CB1CD976247E111B (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* __this, const RuntimeMethod* method)
{
	return ((  VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD* (*) (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F*, const RuntimeMethod*))GameObject_GetComponentsInChildren_TisRuntimeObject_m6F69570C0224EE6620FD43C4DDB0F0AB152A1B20_gshared)(__this, method);
}
// UnityEngine.VFX.VisualEffect UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler::get_m_VisualEffect()
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* VFXOutputEventAbstractHandler_get_m_VisualEffect_m5DE6F44EA40481C9A196614B97B68E4B1DEC59B3_inline (VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564* __this, const RuntimeMethod* method) ;
// System.Single UnityEngine.Time::get_deltaTime()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR float Time_get_deltaTime_m7AB6BFA101D83E1D8F2EF3D5A128AEE9DDBF1A6D (const RuntimeMethod* method) ;
// System.Boolean UnityEngine.Object::op_Equality(UnityEngine.Object,UnityEngine.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool Object_op_Equality_mD3DB0D72CE0250C84033DC2A90AEF9D59896E536 (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* ___x0, Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C* ___y1, const RuntimeMethod* method) ;
// UnityEngine.Vector3 UnityEngine.Matrix4x4::MultiplyPoint(UnityEngine.Vector3)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 Matrix4x4_MultiplyPoint_m20E910B65693559BFDE99382472D8DD02C862E7E (Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___point0, const RuntimeMethod* method) ;
// UnityEngine.Vector3 UnityEngine.Vector3::get_right()
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 Vector3_get_right_m13B7C3EAA64DC921EC23346C56A5A597B5481FF5_inline (const RuntimeMethod* method) ;
// UnityEngine.Vector3 UnityEngine.Vector3::op_Multiply(UnityEngine.Vector3,System.Single)
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 Vector3_op_Multiply_m516FE285F5342F922C6EB3FCB33197E9017FF484_inline (Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___a0, float ___d1, const RuntimeMethod* method) ;
// System.Void UnityEngine.Rigidbody::AddForce(UnityEngine.Vector3,UnityEngine.ForceMode)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Rigidbody_AddForce_mBDBC288D0E266BC1B62E3649B4FCE46E7EA9CCBC (Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* __this, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___force0, int32_t ___mode1, const RuntimeMethod* method) ;
// System.Void UnityEngine.Rigidbody::AddExplosionForce(System.Single,UnityEngine.Vector3,System.Single)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void Rigidbody_AddExplosionForce_mD36F7D864F32F22DA1783D20F6E9563A9C51DFA1 (Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* __this, float ___explosionForce0, Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___explosionPosition1, float ___explosionRadius2, const RuntimeMethod* method) ;
// System.Void UnityEngine.Events.UnityEvent::Invoke()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void UnityEvent_Invoke_mFBF80D59B03C30C5FE6A06F897D954ACADE061D2 (UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977* __this, const RuntimeMethod* method) ;
// System.Void UnityEngine.Color::.ctor(System.Single,System.Single,System.Single,System.Single)
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR void Color__ctor_m3786F0D6E510D9CFA544523A955870BD2A514C8C_inline (Color_tD001788D726C3A7F1379BEED0260B9591F440C1F* __this, float ___r0, float ___g1, float ___b2, float ___a3, const RuntimeMethod* method) ;
// System.Void UnityEngine.Vector3::.ctor(System.Single,System.Single,System.Single)
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR void Vector3__ctor_m376936E6B999EF1ECBE57D990A386303E2283DE0_inline (Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2* __this, float ___x0, float ___y1, float ___z2, const RuntimeMethod* method) ;
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPlayAudio::get_canExecuteInEditor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool VFXOutputEventPlayAudio_get_canExecuteInEditor_m27FA2F01A5D4E4571B806C2C2F1B3896820E2096 (VFXOutputEventPlayAudio_tE6E67F710ABBEFCCA0FC2556DA02F6AF67E7D010* __this, const RuntimeMethod* method) 
{
	{
		// public override bool canExecuteInEditor => true;
		return (bool)1;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPlayAudio::OnVFXOutputEvent(UnityEngine.VFX.VFXEventAttribute)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPlayAudio_OnVFXOutputEvent_m6C6DA8B0713992BFE6A227B3FBF734971C7E283F (VFXOutputEventPlayAudio_tE6E67F710ABBEFCCA0FC2556DA02F6AF67E7D010* __this, VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* ___eventAttribute0, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	{
		// if (audioSource != null)
		AudioSource_t871AC2272F896738252F04EE949AEF5B241D3299* L_0 = __this->___audioSource_7;
		il2cpp_codegen_runtime_class_init_inline(Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		bool L_1;
		L_1 = Object_op_Inequality_m4D656395C27694A7F33F5AA8DE80A7AAF9E20BA7(L_0, (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C*)NULL, NULL);
		if (!L_1)
		{
			goto IL_0019;
		}
	}
	{
		// audioSource.Play();
		AudioSource_t871AC2272F896738252F04EE949AEF5B241D3299* L_2 = __this->___audioSource_7;
		NullCheck(L_2);
		AudioSource_Play_m95DF07111C61D0E0F00257A00384D31531D590C3(L_2, NULL);
	}

IL_0019:
	{
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPlayAudio::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPlayAudio__ctor_m7EB85186A91EB5FF90897F8D0DA1EF8BA3557B09 (VFXOutputEventPlayAudio_tE6E67F710ABBEFCCA0FC2556DA02F6AF67E7D010* __this, const RuntimeMethod* method) 
{
	{
		VFXOutputEventAbstractHandler__ctor_m4E2D7BE313EA0EC6CD4BE214184BDAC7899F18E9(__this, NULL);
		return;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeAbstractHandler__ctor_m02974A323F96F625C96B1484D84EA4FE8D32E738 (VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* __this, const RuntimeMethod* method) 
{
	{
		MonoBehaviour__ctor_m592DB0105CA0BC97AA1C5F4AD27B12D68A3B7C1E(__this, NULL);
		return;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeLightHandler::OnVFXEventAttribute(UnityEngine.VFX.VFXEventAttribute,UnityEngine.VFX.VisualEffect)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeLightHandler_OnVFXEventAttribute_mFDF297F12D8038A8E0DF2CF3952A92EDD7D78190 (VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF* __this, VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* ___eventAttribute0, VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* ___visualEffect1, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Component_GetComponent_TisLight_t1E68479B7782AF2050FAA02A5DC612FD034F18F3_mF4816FA12B6F220CA55D47D669D7E50DC118B9E9_RuntimeMethod_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 V_0;
	memset((&V_0), 0, sizeof(V_0));
	float V_1 = 0.0f;
	Color_tD001788D726C3A7F1379BEED0260B9591F440C1F V_2;
	memset((&V_2), 0, sizeof(V_2));
	{
		// var color = eventAttribute.GetVector3(k_Color);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_0 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_il2cpp_TypeInfo_var);
		int32_t L_1 = ((VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_il2cpp_TypeInfo_var))->___k_Color_5;
		NullCheck(L_0);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_2;
		L_2 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_0, L_1, NULL);
		V_0 = L_2;
		// var intensity = color.magnitude;
		float L_3;
		L_3 = Vector3_get_magnitude_mF0D6017E90B345F1F52D1CC564C640F1A847AF2D_inline((&V_0), NULL);
		V_1 = L_3;
		// var c = new Color(color.x, color.y, color.z) / intensity;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_4 = V_0;
		float L_5 = L_4.___x_2;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_6 = V_0;
		float L_7 = L_6.___y_3;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_8 = V_0;
		float L_9 = L_8.___z_4;
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_10;
		memset((&L_10), 0, sizeof(L_10));
		Color__ctor_mCD6889CDE39F18704CD6EA8E2EFBFA48BA3E13B0_inline((&L_10), L_5, L_7, L_9, /*hidden argument*/NULL);
		float L_11 = V_1;
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_12;
		L_12 = Color_op_Division_m1C9D39C3D4B9AC3343E08D0ED4DD64E33D40A5FF_inline(L_10, L_11, NULL);
		V_2 = L_12;
		// intensity *= brightnessScale;
		float L_13 = V_1;
		float L_14 = __this->___brightnessScale_4;
		V_1 = ((float)il2cpp_codegen_multiply(L_13, L_14));
		// var light = GetComponent<Light>();
		Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3* L_15;
		L_15 = Component_GetComponent_TisLight_t1E68479B7782AF2050FAA02A5DC612FD034F18F3_mF4816FA12B6F220CA55D47D669D7E50DC118B9E9(__this, Component_GetComponent_TisLight_t1E68479B7782AF2050FAA02A5DC612FD034F18F3_mF4816FA12B6F220CA55D47D669D7E50DC118B9E9_RuntimeMethod_var);
		// light.color = c;
		Light_t1E68479B7782AF2050FAA02A5DC612FD034F18F3* L_16 = L_15;
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_17 = V_2;
		NullCheck(L_16);
		Light_set_color_m242F09E22904E0A20D5B032A0749678B0796A87C(L_16, L_17, NULL);
		// light.intensity = intensity;
		float L_18 = V_1;
		NullCheck(L_16);
		Light_set_intensity_mE4820C7F39F490B92ED5EA0C3AADA7C0775BE854(L_16, L_18, NULL);
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeLightHandler::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeLightHandler__ctor_mE108AF9CAB58998531D82128CE8F85A484309A93 (VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF* __this, const RuntimeMethod* method) 
{
	{
		// public float brightnessScale = 1.0f;
		__this->___brightnessScale_4 = (1.0f);
		VFXOutputEventPrefabAttributeAbstractHandler__ctor_m02974A323F96F625C96B1484D84EA4FE8D32E738(__this, NULL);
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeLightHandler::.cctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeLightHandler__cctor_m6B0B6CBA89FB01D034EB07478C100A388C972F73 (const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteralDD0F04E0A3F0BA1F904E0E27720F367F4228C69D);
		s_Il2CppMethodInitialized = true;
	}
	{
		// static readonly int k_Color = Shader.PropertyToID("color");
		int32_t L_0;
		L_0 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteralDD0F04E0A3F0BA1F904E0E27720F367F4228C69D, NULL);
		((VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabAttributeLightHandler_t2A935FB4E4C3BC82D8B459E6D6EBCA0268FB0DFF_il2cpp_TypeInfo_var))->___k_Color_5 = L_0;
		return;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler::OnVFXEventAttribute(UnityEngine.VFX.VFXEventAttribute,UnityEngine.VFX.VisualEffect)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_OnVFXEventAttribute_mBE1C58F252DE5E2A7AA4835572ED28BB94E32F0C (VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2* __this, VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* ___eventAttribute0, VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* ___visualEffect1, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Component_TryGetComponent_TisRigidbody_t268697F5A994213ED97393309870968BC1C7393C_m2C2A32AA4FD62D8B9BF5E40B7E2F3EF738C532A6_RuntimeMethod_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 V_0;
	memset((&V_0), 0, sizeof(V_0));
	Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 V_1;
	memset((&V_1), 0, sizeof(V_1));
	{
		// var velocity = eventAttribute.GetVector3(k_Velocity);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_0 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_il2cpp_TypeInfo_var);
		int32_t L_1 = ((VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_il2cpp_TypeInfo_var))->___k_Velocity_6;
		NullCheck(L_0);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_2;
		L_2 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_0, L_1, NULL);
		V_0 = L_2;
		// if (attributeSpace == Space.Local)
		int32_t L_3 = __this->___attributeSpace_5;
		if (L_3)
		{
			goto IL_0029;
		}
	}
	{
		// velocity = visualEffect.transform.localToWorldMatrix.MultiplyVector(velocity);
		VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* L_4 = ___visualEffect1;
		NullCheck(L_4);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_5;
		L_5 = Component_get_transform_m2919A1D81931E6932C7F06D4C2F0AB8DDA9A5371(L_4, NULL);
		NullCheck(L_5);
		Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 L_6;
		L_6 = Transform_get_localToWorldMatrix_m5D35188766856338DD21DE756F42277C21719E6D(L_5, NULL);
		V_1 = L_6;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_7 = V_0;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_8;
		L_8 = Matrix4x4_MultiplyVector_mFD12F86A473E90BBB0002149ABA3917B2A518937((&V_1), L_7, NULL);
		V_0 = L_8;
	}

IL_0029:
	{
		// if (TryGetComponent<Rigidbody>(out m_RigidBody))
		Rigidbody_t268697F5A994213ED97393309870968BC1C7393C** L_9 = (&__this->___m_RigidBody_4);
		bool L_10;
		L_10 = Component_TryGetComponent_TisRigidbody_t268697F5A994213ED97393309870968BC1C7393C_m2C2A32AA4FD62D8B9BF5E40B7E2F3EF738C532A6(__this, L_9, Component_TryGetComponent_TisRigidbody_t268697F5A994213ED97393309870968BC1C7393C_m2C2A32AA4FD62D8B9BF5E40B7E2F3EF738C532A6_RuntimeMethod_var);
		if (!L_10)
		{
			goto IL_004e;
		}
	}
	{
		// m_RigidBody.WakeUp();
		Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* L_11 = __this->___m_RigidBody_4;
		NullCheck(L_11);
		Rigidbody_WakeUp_m64CF3AFAAC3CBB5360947731C1F77F13CDB960AD(L_11, NULL);
		// m_RigidBody.velocity = velocity;
		Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* L_12 = __this->___m_RigidBody_4;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_13 = V_0;
		NullCheck(L_12);
		Rigidbody_set_velocity_mE4031DF1C2C1CCE889F2AC9D8871D83795BB0D62(L_12, L_13, NULL);
	}

IL_004e:
	{
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeRigidBodyVelocityHandler__ctor_m3E7577FAC28689CAD1C2F808E876E9CB545BFCA0 (VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2* __this, const RuntimeMethod* method) 
{
	{
		VFXOutputEventPrefabAttributeAbstractHandler__ctor_m02974A323F96F625C96B1484D84EA4FE8D32E738(__this, NULL);
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeRigidBodyVelocityHandler::.cctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabAttributeRigidBodyVelocityHandler__cctor_mEDCBBAFC7F58786F78B928909AFBC458B308501A (const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteral48DC6A58A18098420AC1CD015B24A5856038A620);
		s_Il2CppMethodInitialized = true;
	}
	{
		// static readonly int k_Velocity = Shader.PropertyToID("velocity");
		int32_t L_0;
		L_0 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteral48DC6A58A18098420AC1CD015B24A5856038A620, NULL);
		((VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabAttributeRigidBodyVelocityHandler_t41EB57B9D2FC63003987AEF91EABD934E7E4C7F2_il2cpp_TypeInfo_var))->___k_Velocity_6 = L_0;
		return;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::get_canExecuteInEditor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool VFXOutputEventPrefabSpawn_get_canExecuteInEditor_mC53F229583C311293D0E7F9BE1EBE1C3759C0FCD (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	{
		// public override bool canExecuteInEditor => true;
		return (bool)1;
	}
}
// System.UInt32 UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::get_instanceCount()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR uint32_t VFXOutputEventPrefabSpawn_get_instanceCount_m1F03848DC38DF19342686D815697378099EDC6A5 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	{
		// public uint instanceCount => m_InstanceCount;
		uint32_t L_0 = __this->___m_InstanceCount_7;
		return L_0;
	}
}
// UnityEngine.GameObject UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::get_prefabToSpawn()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* VFXOutputEventPrefabSpawn_get_prefabToSpawn_m870865E545667D391350F8360C93047EC78AC76E (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	{
		// public GameObject prefabToSpawn => m_PrefabToSpawn;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_0 = __this->___m_PrefabToSpawn_8;
		return L_0;
	}
}
// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::get_parentInstances()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool VFXOutputEventPrefabSpawn_get_parentInstances_mC9BEBB7BF6BEE01BF0DDA0C461D3840A9E3D7481 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	{
		// public bool parentInstances => m_ParentInstances;
		bool L_0 = __this->___m_ParentInstances_9;
		return L_0;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::OnDisable()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_OnDisable_m73440630E6F040D30BBA672B8561FF85A9C02E99 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* V_0 = NULL;
	int32_t V_1 = 0;
	{
		// base.OnDisable();
		VFXOutputEventAbstractHandler_OnDisable_mA95FD62310C790E2FC47EBEED06C73315F3EFCC5(__this, NULL);
		// foreach (var instance in m_Instances)
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_0 = __this->___m_Instances_16;
		V_0 = L_0;
		V_1 = 0;
		goto IL_001e;
	}

IL_0011:
	{
		// foreach (var instance in m_Instances)
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_1 = V_0;
		int32_t L_2 = V_1;
		NullCheck(L_1);
		int32_t L_3 = L_2;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_4 = (L_1)->GetAt(static_cast<il2cpp_array_size_t>(L_3));
		// instance.SetActive(false);
		NullCheck(L_4);
		GameObject_SetActive_m638E92E1E75E519E5B24CF150B08CA8E0CDFAB92(L_4, (bool)0, NULL);
		int32_t L_5 = V_1;
		V_1 = ((int32_t)il2cpp_codegen_add(L_5, 1));
	}

IL_001e:
	{
		// foreach (var instance in m_Instances)
		int32_t L_6 = V_1;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_7 = V_0;
		NullCheck(L_7);
		if ((((int32_t)L_6) < ((int32_t)((int32_t)(((RuntimeArray*)L_7)->max_length)))))
		{
			goto IL_0011;
		}
	}
	{
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::OnDestroy()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_OnDestroy_m6CF79ED22E81E3A50CF0938A9781676CBBB73C78 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	{
		// DisposeInstances();
		VFXOutputEventPrefabSpawn_DisposeInstances_mE29087C03BE175F2AC943D727E111B9759CFACE0(__this, NULL);
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::DisposeInstances()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_DisposeInstances_mE29087C03BE175F2AC943D727E111B9759CFACE0 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* V_0 = NULL;
	int32_t V_1 = 0;
	GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* V_2 = NULL;
	{
		// foreach (var instance in m_Instances)
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_0 = __this->___m_Instances_16;
		V_0 = L_0;
		V_1 = 0;
		goto IL_0030;
	}

IL_000b:
	{
		// foreach (var instance in m_Instances)
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_1 = V_0;
		int32_t L_2 = V_1;
		NullCheck(L_1);
		int32_t L_3 = L_2;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_4 = (L_1)->GetAt(static_cast<il2cpp_array_size_t>(L_3));
		V_2 = L_4;
		// if (instance)
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_5 = V_2;
		il2cpp_codegen_runtime_class_init_inline(Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		bool L_6;
		L_6 = Object_op_Implicit_m18E1885C296CC868AC918101523697CFE6413C79(L_5, NULL);
		if (!L_6)
		{
			goto IL_002c;
		}
	}
	{
		// if (Application.isPlaying)
		bool L_7;
		L_7 = Application_get_isPlaying_m0B3B501E1093739F8887A0DAC5F61D9CB49CC337(NULL);
		if (!L_7)
		{
			goto IL_0026;
		}
	}
	{
		// Destroy(instance);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_8 = V_2;
		il2cpp_codegen_runtime_class_init_inline(Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		Object_Destroy_mFCDAE6333522488F60597AF019EA90BB1207A5AA(L_8, NULL);
		goto IL_002c;
	}

IL_0026:
	{
		// DestroyImmediate(instance);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_9 = V_2;
		il2cpp_codegen_runtime_class_init_inline(Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		Object_DestroyImmediate_m8249CABCDF344BE3A67EE765122EBB415DC2BC57(L_9, NULL);
	}

IL_002c:
	{
		int32_t L_10 = V_1;
		V_1 = ((int32_t)il2cpp_codegen_add(L_10, 1));
	}

IL_0030:
	{
		// foreach (var instance in m_Instances)
		int32_t L_11 = V_1;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_12 = V_0;
		NullCheck(L_12);
		if ((((int32_t)L_11) < ((int32_t)((int32_t)(((RuntimeArray*)L_12)->max_length)))))
		{
			goto IL_000b;
		}
	}
	{
		// m_Instances = k_EmptyGameObjects;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_13 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyGameObjects_14;
		__this->___m_Instances_16 = L_13;
		Il2CppCodeGenWriteBarrier((void**)(&__this->___m_Instances_16), (void*)L_13);
		// m_TimesToLive = k_EmptyTimeToLive;
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_14 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyTimeToLive_15;
		__this->___m_TimesToLive_17 = L_14;
		Il2CppCodeGenWriteBarrier((void**)(&__this->___m_TimesToLive_17), (void*)L_14);
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::UpdateHideFlag(UnityEngine.GameObject)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_UpdateHideFlag_m0A51F4E95B6D465F23DDD00DF131FA6F88563D83 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* ___instance0, const RuntimeMethod* method) 
{
	{
		// instance.hideFlags = HideFlags.HideAndDontSave;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_0 = ___instance0;
		NullCheck(L_0);
		Object_set_hideFlags_mACB8BFC903FB3B01BBD427753E791BF28B5E33D4(L_0, ((int32_t)61), NULL);
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::CheckAndRebuildInstances()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_CheckAndRebuildInstances_m734F927C477DA0AE8CABC4E035C247C03514D032 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Int32_t680FF22E76F6EFAD4375103CBBFFA0421349384C_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Object_Instantiate_TisGameObject_t76FEDD663AB33C991A9C9A23129337651094216F_mC898F7E3D9541F17BD8B79579FDD431C0651E12D_RuntimeMethod_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteral816CEBC3D7DC9482D6A74FF2F0891D2B8B6503D6);
		s_Il2CppMethodInitialized = true;
	}
	int32_t V_0 = 0;
	GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* V_1 = NULL;
	Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* G_B6_0 = NULL;
	Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* G_B5_0 = NULL;
	Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* G_B7_0 = NULL;
	Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* G_B7_1 = NULL;
	{
		// bool rebuild = m_Instances.Length != m_InstanceCount;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_0 = __this->___m_Instances_16;
		NullCheck(L_0);
		uint32_t L_1 = __this->___m_InstanceCount_7;
		// if (rebuild)
		if (!((((int32_t)((((int64_t)((int64_t)((int32_t)(((RuntimeArray*)L_0)->max_length)))) == ((int64_t)((int64_t)(uint64_t)L_1)))? 1 : 0)) == ((int32_t)0))? 1 : 0))
		{
			goto IL_00e9;
		}
	}
	{
		// DisposeInstances();
		VFXOutputEventPrefabSpawn_DisposeInstances_mE29087C03BE175F2AC943D727E111B9759CFACE0(__this, NULL);
		// if (m_PrefabToSpawn != null && m_InstanceCount != 0)
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_2 = __this->___m_PrefabToSpawn_8;
		il2cpp_codegen_runtime_class_init_inline(Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		bool L_3;
		L_3 = Object_op_Inequality_m4D656395C27694A7F33F5AA8DE80A7AAF9E20BA7(L_2, (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C*)NULL, NULL);
		if (!L_3)
		{
			goto IL_00e9;
		}
	}
	{
		uint32_t L_4 = __this->___m_InstanceCount_7;
		if (!L_4)
		{
			goto IL_00e9;
		}
	}
	{
		// m_Instances = new GameObject[m_InstanceCount];
		uint32_t L_5 = __this->___m_InstanceCount_7;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_6 = (GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF*)(GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF*)SZArrayNew(GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF_il2cpp_TypeInfo_var, (uint32_t)L_5);
		__this->___m_Instances_16 = L_6;
		Il2CppCodeGenWriteBarrier((void**)(&__this->___m_Instances_16), (void*)L_6);
		// m_TimesToLive = new float[m_InstanceCount];
		uint32_t L_7 = __this->___m_InstanceCount_7;
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_8 = (SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C*)(SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C*)SZArrayNew(SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C_il2cpp_TypeInfo_var, (uint32_t)L_7);
		__this->___m_TimesToLive_17 = L_8;
		Il2CppCodeGenWriteBarrier((void**)(&__this->___m_TimesToLive_17), (void*)L_8);
		// for (int i = 0; i < m_Instances.Length; i++)
		V_0 = 0;
		goto IL_00db;
	}

IL_0062:
	{
		// GameObject newInstance = null;
		V_1 = (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F*)NULL;
		// newInstance = Instantiate(m_PrefabToSpawn);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_9 = __this->___m_PrefabToSpawn_8;
		il2cpp_codegen_runtime_class_init_inline(Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_10;
		L_10 = Object_Instantiate_TisGameObject_t76FEDD663AB33C991A9C9A23129337651094216F_mC898F7E3D9541F17BD8B79579FDD431C0651E12D(L_9, Object_Instantiate_TisGameObject_t76FEDD663AB33C991A9C9A23129337651094216F_mC898F7E3D9541F17BD8B79579FDD431C0651E12D_RuntimeMethod_var);
		V_1 = L_10;
		// newInstance.name = $"{name} - #{i} - {m_PrefabToSpawn.name}";
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_11 = V_1;
		String_t* L_12;
		L_12 = Object_get_name_mAC2F6B897CF1303BA4249B4CB55271AFACBB6392(__this, NULL);
		int32_t L_13 = V_0;
		int32_t L_14 = L_13;
		RuntimeObject* L_15 = Box(Int32_t680FF22E76F6EFAD4375103CBBFFA0421349384C_il2cpp_TypeInfo_var, &L_14);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_16 = __this->___m_PrefabToSpawn_8;
		NullCheck(L_16);
		String_t* L_17;
		L_17 = Object_get_name_mAC2F6B897CF1303BA4249B4CB55271AFACBB6392(L_16, NULL);
		String_t* L_18;
		L_18 = String_Format_m76BF8F3A6AD789E38B708848A2688D400AAC250A(_stringLiteral816CEBC3D7DC9482D6A74FF2F0891D2B8B6503D6, L_12, L_15, L_17, NULL);
		NullCheck(L_11);
		Object_set_name_mC79E6DC8FFD72479C90F0C4CC7F42A0FEAF5AE47(L_11, L_18, NULL);
		// newInstance.SetActive(false);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_19 = V_1;
		NullCheck(L_19);
		GameObject_SetActive_m638E92E1E75E519E5B24CF150B08CA8E0CDFAB92(L_19, (bool)0, NULL);
		// newInstance.transform.parent = m_ParentInstances ? transform : null;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_20 = V_1;
		NullCheck(L_20);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_21;
		L_21 = GameObject_get_transform_m0BC10ADFA1632166AE5544BDF9038A2650C2AE56(L_20, NULL);
		bool L_22 = __this->___m_ParentInstances_9;
		G_B5_0 = L_21;
		if (L_22)
		{
			G_B6_0 = L_21;
			goto IL_00af;
		}
	}
	{
		G_B7_0 = ((Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1*)(NULL));
		G_B7_1 = G_B5_0;
		goto IL_00b5;
	}

IL_00af:
	{
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_23;
		L_23 = Component_get_transform_m2919A1D81931E6932C7F06D4C2F0AB8DDA9A5371(__this, NULL);
		G_B7_0 = L_23;
		G_B7_1 = G_B6_0;
	}

IL_00b5:
	{
		NullCheck(G_B7_1);
		Transform_set_parent_m9BD5E563B539DD5BEC342736B03F97B38A243234(G_B7_1, G_B7_0, NULL);
		// UpdateHideFlag(newInstance);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_24 = V_1;
		VFXOutputEventPrefabSpawn_UpdateHideFlag_m0A51F4E95B6D465F23DDD00DF131FA6F88563D83(__this, L_24, NULL);
		// m_Instances[i] = newInstance;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_25 = __this->___m_Instances_16;
		int32_t L_26 = V_0;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_27 = V_1;
		NullCheck(L_25);
		ArrayElementTypeCheck (L_25, L_27);
		(L_25)->SetAt(static_cast<il2cpp_array_size_t>(L_26), (GameObject_t76FEDD663AB33C991A9C9A23129337651094216F*)L_27);
		// m_TimesToLive[i] = float.NegativeInfinity;
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_28 = __this->___m_TimesToLive_17;
		int32_t L_29 = V_0;
		NullCheck(L_28);
		(L_28)->SetAt(static_cast<il2cpp_array_size_t>(L_29), (float)(-std::numeric_limits<float>::infinity()));
		// for (int i = 0; i < m_Instances.Length; i++)
		int32_t L_30 = V_0;
		V_0 = ((int32_t)il2cpp_codegen_add(L_30, 1));
	}

IL_00db:
	{
		// for (int i = 0; i < m_Instances.Length; i++)
		int32_t L_31 = V_0;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_32 = __this->___m_Instances_16;
		NullCheck(L_32);
		if ((((int32_t)L_31) < ((int32_t)((int32_t)(((RuntimeArray*)L_32)->max_length)))))
		{
			goto IL_0062;
		}
	}

IL_00e9:
	{
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::OnVFXOutputEvent(UnityEngine.VFX.VFXEventAttribute)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_OnVFXOutputEvent_m652E6891D5CD32232E643B2F3EE2F70A8F658256 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* ___eventAttribute0, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&GameObject_GetComponentsInChildren_TisVFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6_m60D3FC818A710169654AA887CB1CD976247E111B_RuntimeMethod_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	int32_t V_0 = 0;
	int32_t V_1 = 0;
	GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* V_2 = NULL;
	VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD* V_3 = NULL;
	int32_t V_4 = 0;
	{
		// CheckAndRebuildInstances();
		VFXOutputEventPrefabSpawn_CheckAndRebuildInstances_m734F927C477DA0AE8CABC4E035C247C03514D032(__this, NULL);
		// int freeIdx = -1;
		V_0 = (-1);
		// for (int i = 0; i < m_Instances.Length; i++)
		V_1 = 0;
		goto IL_0023;
	}

IL_000c:
	{
		// if (!m_Instances[i].activeSelf)
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_0 = __this->___m_Instances_16;
		int32_t L_1 = V_1;
		NullCheck(L_0);
		int32_t L_2 = L_1;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_3 = (L_0)->GetAt(static_cast<il2cpp_array_size_t>(L_2));
		NullCheck(L_3);
		bool L_4;
		L_4 = GameObject_get_activeSelf_m4F3E5240E138B66AAA080EA30759A3D0517DA368(L_3, NULL);
		if (L_4)
		{
			goto IL_001f;
		}
	}
	{
		// freeIdx = i;
		int32_t L_5 = V_1;
		V_0 = L_5;
		// break;
		goto IL_002e;
	}

IL_001f:
	{
		// for (int i = 0; i < m_Instances.Length; i++)
		int32_t L_6 = V_1;
		V_1 = ((int32_t)il2cpp_codegen_add(L_6, 1));
	}

IL_0023:
	{
		// for (int i = 0; i < m_Instances.Length; i++)
		int32_t L_7 = V_1;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_8 = __this->___m_Instances_16;
		NullCheck(L_8);
		if ((((int32_t)L_7) < ((int32_t)((int32_t)(((RuntimeArray*)L_8)->max_length)))))
		{
			goto IL_000c;
		}
	}

IL_002e:
	{
		// if (freeIdx != -1)
		int32_t L_9 = V_0;
		if ((((int32_t)L_9) == ((int32_t)(-1))))
		{
			goto IL_0166;
		}
	}
	{
		// var availableInstance = m_Instances[freeIdx];
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_10 = __this->___m_Instances_16;
		int32_t L_11 = V_0;
		NullCheck(L_10);
		int32_t L_12 = L_11;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_13 = (L_10)->GetAt(static_cast<il2cpp_array_size_t>(L_12));
		V_2 = L_13;
		// availableInstance.SetActive(true);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_14 = V_2;
		NullCheck(L_14);
		GameObject_SetActive_m638E92E1E75E519E5B24CF150B08CA8E0CDFAB92(L_14, (bool)1, NULL);
		// if (usePosition && eventAttribute.HasVector3(k_PositionID))
		bool L_15 = __this->___usePosition_10;
		if (!L_15)
		{
			goto IL_0090;
		}
	}
	{
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_16 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_17 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_PositionID_18;
		NullCheck(L_16);
		bool L_18;
		L_18 = VFXEventAttribute_HasVector3_m22043F5E468E1AD708AF9671163457F9E15683BD(L_16, L_17, NULL);
		if (!L_18)
		{
			goto IL_0090;
		}
	}
	{
		// if (m_ParentInstances)
		bool L_19 = __this->___m_ParentInstances_9;
		if (!L_19)
		{
			goto IL_007a;
		}
	}
	{
		// availableInstance.transform.localPosition = eventAttribute.GetVector3(k_PositionID);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_20 = V_2;
		NullCheck(L_20);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_21;
		L_21 = GameObject_get_transform_m0BC10ADFA1632166AE5544BDF9038A2650C2AE56(L_20, NULL);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_22 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_23 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_PositionID_18;
		NullCheck(L_22);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_24;
		L_24 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_22, L_23, NULL);
		NullCheck(L_21);
		Transform_set_localPosition_mDE1C997F7D79C0885210B7732B4BA50EE7D73134(L_21, L_24, NULL);
		goto IL_0090;
	}

IL_007a:
	{
		// availableInstance.transform.position = eventAttribute.GetVector3(k_PositionID);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_25 = V_2;
		NullCheck(L_25);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_26;
		L_26 = GameObject_get_transform_m0BC10ADFA1632166AE5544BDF9038A2650C2AE56(L_25, NULL);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_27 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_28 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_PositionID_18;
		NullCheck(L_27);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_29;
		L_29 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_27, L_28, NULL);
		NullCheck(L_26);
		Transform_set_position_mA1A817124BB41B685043DED2A9BA48CDF37C4156(L_26, L_29, NULL);
	}

IL_0090:
	{
		// if (useAngle && eventAttribute.HasVector3(k_AngleID))
		bool L_30 = __this->___useAngle_11;
		if (!L_30)
		{
			goto IL_00db;
		}
	}
	{
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_31 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_32 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_AngleID_19;
		NullCheck(L_31);
		bool L_33;
		L_33 = VFXEventAttribute_HasVector3_m22043F5E468E1AD708AF9671163457F9E15683BD(L_31, L_32, NULL);
		if (!L_33)
		{
			goto IL_00db;
		}
	}
	{
		// if (parentInstances)
		bool L_34;
		L_34 = VFXOutputEventPrefabSpawn_get_parentInstances_mC9BEBB7BF6BEE01BF0DDA0C461D3840A9E3D7481_inline(__this, NULL);
		if (!L_34)
		{
			goto IL_00c5;
		}
	}
	{
		// availableInstance.transform.localEulerAngles = eventAttribute.GetVector3(k_AngleID);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_35 = V_2;
		NullCheck(L_35);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_36;
		L_36 = GameObject_get_transform_m0BC10ADFA1632166AE5544BDF9038A2650C2AE56(L_35, NULL);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_37 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_38 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_AngleID_19;
		NullCheck(L_37);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_39;
		L_39 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_37, L_38, NULL);
		NullCheck(L_36);
		Transform_set_localEulerAngles_m0458551662A1A51FDCA4C0417282B25D391661DF(L_36, L_39, NULL);
		goto IL_00db;
	}

IL_00c5:
	{
		// availableInstance.transform.eulerAngles = eventAttribute.GetVector3(k_AngleID);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_40 = V_2;
		NullCheck(L_40);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_41;
		L_41 = GameObject_get_transform_m0BC10ADFA1632166AE5544BDF9038A2650C2AE56(L_40, NULL);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_42 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_43 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_AngleID_19;
		NullCheck(L_42);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_44;
		L_44 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_42, L_43, NULL);
		NullCheck(L_41);
		Transform_set_eulerAngles_m9F0BC484A7915A51FAB87230644229B75BACA004(L_41, L_44, NULL);
	}

IL_00db:
	{
		// if (useScale && eventAttribute.HasVector3(k_ScaleID))
		bool L_45 = __this->___useScale_12;
		if (!L_45)
		{
			goto IL_0106;
		}
	}
	{
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_46 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_47 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_ScaleID_20;
		NullCheck(L_46);
		bool L_48;
		L_48 = VFXEventAttribute_HasVector3_m22043F5E468E1AD708AF9671163457F9E15683BD(L_46, L_47, NULL);
		if (!L_48)
		{
			goto IL_0106;
		}
	}
	{
		// availableInstance.transform.localScale = eventAttribute.GetVector3(k_ScaleID);
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_49 = V_2;
		NullCheck(L_49);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_50;
		L_50 = GameObject_get_transform_m0BC10ADFA1632166AE5544BDF9038A2650C2AE56(L_49, NULL);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_51 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_52 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_ScaleID_20;
		NullCheck(L_51);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_53;
		L_53 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_51, L_52, NULL);
		NullCheck(L_50);
		Transform_set_localScale_mBA79E811BAF6C47B80FF76414C12B47B3CD03633(L_50, L_53, NULL);
	}

IL_0106:
	{
		// if (useLifetime && eventAttribute.HasFloat(k_LifetimeID))
		bool L_54 = __this->___useLifetime_13;
		if (!L_54)
		{
			goto IL_0130;
		}
	}
	{
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_55 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_56 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_LifetimeID_21;
		NullCheck(L_55);
		bool L_57;
		L_57 = VFXEventAttribute_HasFloat_mF3A88D85B0A13A73F1735E6E91F1ADD33B6F598B(L_55, L_56, NULL);
		if (!L_57)
		{
			goto IL_0130;
		}
	}
	{
		// m_TimesToLive[freeIdx] = eventAttribute.GetFloat(k_LifetimeID);
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_58 = __this->___m_TimesToLive_17;
		int32_t L_59 = V_0;
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_60 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		int32_t L_61 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_LifetimeID_21;
		NullCheck(L_60);
		float L_62;
		L_62 = VFXEventAttribute_GetFloat_m38F12C08AE4606B72C6DDC4027E36DD4E84C1A89(L_60, L_61, NULL);
		NullCheck(L_58);
		(L_58)->SetAt(static_cast<il2cpp_array_size_t>(L_59), (float)L_62);
		goto IL_013d;
	}

IL_0130:
	{
		// m_TimesToLive[freeIdx] = float.NegativeInfinity;
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_63 = __this->___m_TimesToLive_17;
		int32_t L_64 = V_0;
		NullCheck(L_63);
		(L_63)->SetAt(static_cast<il2cpp_array_size_t>(L_64), (float)(-std::numeric_limits<float>::infinity()));
	}

IL_013d:
	{
		// var handlers = availableInstance.GetComponentsInChildren<VFXOutputEventPrefabAttributeAbstractHandler>();
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_65 = V_2;
		NullCheck(L_65);
		VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD* L_66;
		L_66 = GameObject_GetComponentsInChildren_TisVFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6_m60D3FC818A710169654AA887CB1CD976247E111B(L_65, GameObject_GetComponentsInChildren_TisVFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6_m60D3FC818A710169654AA887CB1CD976247E111B_RuntimeMethod_var);
		// foreach (var handler in handlers)
		V_3 = L_66;
		V_4 = 0;
		goto IL_015f;
	}

IL_0149:
	{
		// foreach (var handler in handlers)
		VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD* L_67 = V_3;
		int32_t L_68 = V_4;
		NullCheck(L_67);
		int32_t L_69 = L_68;
		VFXOutputEventPrefabAttributeAbstractHandler_tD7B53CFBC93C9DE91FB3C48D0CD5F17288F042D6* L_70 = (L_67)->GetAt(static_cast<il2cpp_array_size_t>(L_69));
		// handler.OnVFXEventAttribute(eventAttribute, m_VisualEffect);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_71 = ___eventAttribute0;
		VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* L_72;
		L_72 = VFXOutputEventAbstractHandler_get_m_VisualEffect_m5DE6F44EA40481C9A196614B97B68E4B1DEC59B3_inline(__this, NULL);
		NullCheck(L_70);
		VirtualActionInvoker2< VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518*, VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* >::Invoke(4 /* System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabAttributeAbstractHandler::OnVFXEventAttribute(UnityEngine.VFX.VFXEventAttribute,UnityEngine.VFX.VisualEffect) */, L_70, L_71, L_72);
		int32_t L_73 = V_4;
		V_4 = ((int32_t)il2cpp_codegen_add(L_73, 1));
	}

IL_015f:
	{
		// foreach (var handler in handlers)
		int32_t L_74 = V_4;
		VFXOutputEventPrefabAttributeAbstractHandlerU5BU5D_tBC1EAEEEB8B45B320270C85CC88659ABEF7647CD* L_75 = V_3;
		NullCheck(L_75);
		if ((((int32_t)L_74) < ((int32_t)((int32_t)(((RuntimeArray*)L_75)->max_length)))))
		{
			goto IL_0149;
		}
	}

IL_0166:
	{
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::Update()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn_Update_m147FDDF45BF5F5D2E85C5B7C2DEE0D293C78161A (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	float V_0 = 0.0f;
	int32_t V_1 = 0;
	{
		// if (Application.isPlaying || (executeInEditor && canExecuteInEditor))
		bool L_0;
		L_0 = Application_get_isPlaying_m0B3B501E1093739F8887A0DAC5F61D9CB49CC337(NULL);
		if (L_0)
		{
			goto IL_0017;
		}
	}
	{
		bool L_1 = ((VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564*)__this)->___executeInEditor_4;
		if (!L_1)
		{
			goto IL_0085;
		}
	}
	{
		bool L_2;
		L_2 = VirtualFuncInvoker0< bool >::Invoke(4 /* System.Boolean UnityEngine.VFX.Utility.VFXOutputEventAbstractHandler::get_canExecuteInEditor() */, __this);
		if (!L_2)
		{
			goto IL_0085;
		}
	}

IL_0017:
	{
		// CheckAndRebuildInstances();
		VFXOutputEventPrefabSpawn_CheckAndRebuildInstances_m734F927C477DA0AE8CABC4E035C247C03514D032(__this, NULL);
		// var dt = Time.deltaTime;
		float L_3;
		L_3 = Time_get_deltaTime_m7AB6BFA101D83E1D8F2EF3D5A128AEE9DDBF1A6D(NULL);
		V_0 = L_3;
		// for (int i = 0; i < m_Instances.Length; i++)
		V_1 = 0;
		goto IL_0079;
	}

IL_0027:
	{
		// if (m_TimesToLive[i] == float.NegativeInfinity)
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_4 = __this->___m_TimesToLive_17;
		int32_t L_5 = V_1;
		NullCheck(L_4);
		int32_t L_6 = L_5;
		float L_7 = (L_4)->GetAt(static_cast<il2cpp_array_size_t>(L_6));
		if ((((float)L_7) == ((float)(-std::numeric_limits<float>::infinity()))))
		{
			goto IL_0075;
		}
	}
	{
		// if (m_TimesToLive[i] <= 0.0f && m_Instances[i].activeSelf)
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_8 = __this->___m_TimesToLive_17;
		int32_t L_9 = V_1;
		NullCheck(L_8);
		int32_t L_10 = L_9;
		float L_11 = (L_8)->GetAt(static_cast<il2cpp_array_size_t>(L_10));
		if ((!(((float)L_11) <= ((float)(0.0f)))))
		{
			goto IL_0064;
		}
	}
	{
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_12 = __this->___m_Instances_16;
		int32_t L_13 = V_1;
		NullCheck(L_12);
		int32_t L_14 = L_13;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_15 = (L_12)->GetAt(static_cast<il2cpp_array_size_t>(L_14));
		NullCheck(L_15);
		bool L_16;
		L_16 = GameObject_get_activeSelf_m4F3E5240E138B66AAA080EA30759A3D0517DA368(L_15, NULL);
		if (!L_16)
		{
			goto IL_0064;
		}
	}
	{
		// m_Instances[i].SetActive(false);
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_17 = __this->___m_Instances_16;
		int32_t L_18 = V_1;
		NullCheck(L_17);
		int32_t L_19 = L_18;
		GameObject_t76FEDD663AB33C991A9C9A23129337651094216F* L_20 = (L_17)->GetAt(static_cast<il2cpp_array_size_t>(L_19));
		NullCheck(L_20);
		GameObject_SetActive_m638E92E1E75E519E5B24CF150B08CA8E0CDFAB92(L_20, (bool)0, NULL);
		goto IL_0075;
	}

IL_0064:
	{
		// m_TimesToLive[i] -= dt;
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_21 = __this->___m_TimesToLive_17;
		int32_t L_22 = V_1;
		NullCheck(L_21);
		float* L_23 = ((L_21)->GetAddressAt(static_cast<il2cpp_array_size_t>(L_22)));
		float L_24 = *((float*)L_23);
		float L_25 = V_0;
		*((float*)L_23) = (float)((float)il2cpp_codegen_subtract(L_24, L_25));
	}

IL_0075:
	{
		// for (int i = 0; i < m_Instances.Length; i++)
		int32_t L_26 = V_1;
		V_1 = ((int32_t)il2cpp_codegen_add(L_26, 1));
	}

IL_0079:
	{
		// for (int i = 0; i < m_Instances.Length; i++)
		int32_t L_27 = V_1;
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_28 = __this->___m_Instances_16;
		NullCheck(L_28);
		if ((((int32_t)L_27) < ((int32_t)((int32_t)(((RuntimeArray*)L_28)->max_length)))))
		{
			goto IL_0027;
		}
	}
	{
		return;
	}

IL_0085:
	{
		// DisposeInstances();
		VFXOutputEventPrefabSpawn_DisposeInstances_mE29087C03BE175F2AC943D727E111B9759CFACE0(__this, NULL);
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn__ctor_m41B5C389635415D63A2FE849B0E8C49D76FCAE96 (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	{
		// uint m_InstanceCount = 5;
		__this->___m_InstanceCount_7 = 5;
		// public bool usePosition = true;
		__this->___usePosition_10 = (bool)1;
		// public bool useAngle = true;
		__this->___useAngle_11 = (bool)1;
		// public bool useScale = true;
		__this->___useScale_12 = (bool)1;
		// public bool useLifetime = true;
		__this->___useLifetime_13 = (bool)1;
		// GameObject[] m_Instances = k_EmptyGameObjects;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_0 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyGameObjects_14;
		__this->___m_Instances_16 = L_0;
		Il2CppCodeGenWriteBarrier((void**)(&__this->___m_Instances_16), (void*)L_0);
		// float[] m_TimesToLive = k_EmptyTimeToLive;
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_1 = ((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyTimeToLive_15;
		__this->___m_TimesToLive_17 = L_1;
		Il2CppCodeGenWriteBarrier((void**)(&__this->___m_TimesToLive_17), (void*)L_1);
		VFXOutputEventAbstractHandler__ctor_m4E2D7BE313EA0EC6CD4BE214184BDAC7899F18E9(__this, NULL);
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventPrefabSpawn::.cctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventPrefabSpawn__cctor_mDE26C31C8504F0E1985C642C709347D81B5B9DB1 (const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteral88BDF3D0791A560245652E772545C49897854443);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteralBE2893848F9FC647C2288DA6581A1522E9695182);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteralF9BE17D634D1B07BCDCDA77A87710C946D81307B);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteralFC341A1966AF28A9A7A26EDFB78ABBF7DE4D0E1F);
		s_Il2CppMethodInitialized = true;
	}
	{
		// static readonly GameObject[] k_EmptyGameObjects = new GameObject[0];
		GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF* L_0 = (GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF*)(GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF*)SZArrayNew(GameObjectU5BU5D_tFF67550DFCE87096D7A3734EA15B75896B2722CF_il2cpp_TypeInfo_var, (uint32_t)0);
		((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyGameObjects_14 = L_0;
		Il2CppCodeGenWriteBarrier((void**)(&((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyGameObjects_14), (void*)L_0);
		// static readonly float[] k_EmptyTimeToLive = new float[0];
		SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C* L_1 = (SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C*)(SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C*)SZArrayNew(SingleU5BU5D_t89DEFE97BCEDB5857010E79ECE0F52CF6E93B87C_il2cpp_TypeInfo_var, (uint32_t)0);
		((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyTimeToLive_15 = L_1;
		Il2CppCodeGenWriteBarrier((void**)(&((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_EmptyTimeToLive_15), (void*)L_1);
		// static readonly int k_PositionID = Shader.PropertyToID("position");
		int32_t L_2;
		L_2 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteral88BDF3D0791A560245652E772545C49897854443, NULL);
		((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_PositionID_18 = L_2;
		// static readonly int k_AngleID = Shader.PropertyToID("angle");
		int32_t L_3;
		L_3 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteralFC341A1966AF28A9A7A26EDFB78ABBF7DE4D0E1F, NULL);
		((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_AngleID_19 = L_3;
		// static readonly int k_ScaleID = Shader.PropertyToID("scale");
		int32_t L_4;
		L_4 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteralF9BE17D634D1B07BCDCDA77A87710C946D81307B, NULL);
		((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_ScaleID_20 = L_4;
		// static readonly int k_LifetimeID = Shader.PropertyToID("lifetime");
		int32_t L_5;
		L_5 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteralBE2893848F9FC647C2288DA6581A1522E9695182, NULL);
		((VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154_il2cpp_TypeInfo_var))->___k_LifetimeID_21 = L_5;
		return;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventRigidBody::get_canExecuteInEditor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool VFXOutputEventRigidBody_get_canExecuteInEditor_m8A782488E7C3318BC6632D3BB2D5ABF29DFA949E (VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D* __this, const RuntimeMethod* method) 
{
	{
		// public override bool canExecuteInEditor => false;
		return (bool)0;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventRigidBody::OnVFXOutputEvent(UnityEngine.VFX.VFXEventAttribute)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventRigidBody_OnVFXOutputEvent_m78342CD8D6EA1B5179946FEEE4773F579D2F860F (VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D* __this, VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* ___eventAttribute0, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 V_0;
	memset((&V_0), 0, sizeof(V_0));
	float V_1 = 0.0f;
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 V_2;
	memset((&V_2), 0, sizeof(V_2));
	Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 V_3;
	memset((&V_3), 0, sizeof(V_3));
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 V_4;
	memset((&V_4), 0, sizeof(V_4));
	int32_t V_5 = 0;
	{
		// if (rigidBody == null)
		Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* L_0 = __this->___rigidBody_10;
		il2cpp_codegen_runtime_class_init_inline(Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C_il2cpp_TypeInfo_var);
		bool L_1;
		L_1 = Object_op_Equality_mD3DB0D72CE0250C84033DC2A90AEF9D59896E536(L_0, (Object_tC12DECB6760A7F2CBF65D9DCF18D044C2D97152C*)NULL, NULL);
		if (!L_1)
		{
			goto IL_000f;
		}
	}
	{
		// return;
		return;
	}

IL_000f:
	{
		// var position = eventAttribute.GetVector3(k_Position);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_2 = ___eventAttribute0;
		il2cpp_codegen_runtime_class_init_inline(VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var);
		int32_t L_3 = ((VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var))->___k_Position_7;
		NullCheck(L_2);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_4;
		L_4 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_2, L_3, NULL);
		V_0 = L_4;
		// var size = eventAttribute.GetFloat(k_Size);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_5 = ___eventAttribute0;
		int32_t L_6 = ((VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var))->___k_Size_8;
		NullCheck(L_5);
		float L_7;
		L_7 = VFXEventAttribute_GetFloat_m38F12C08AE4606B72C6DDC4027E36DD4E84C1A89(L_5, L_6, NULL);
		V_1 = L_7;
		// var velocity = eventAttribute.GetVector3(k_Velocity);
		VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* L_8 = ___eventAttribute0;
		int32_t L_9 = ((VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var))->___k_Velocity_9;
		NullCheck(L_8);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_10;
		L_10 = VFXEventAttribute_GetVector3_m471E53C85FB62D84254995061F2CFA2A5EBBEA7C(L_8, L_9, NULL);
		V_2 = L_10;
		// if (attributeSpace == Space.Local)
		int32_t L_11 = __this->___attributeSpace_11;
		if (L_11)
		{
			goto IL_008d;
		}
	}
	{
		// position = transform.localToWorldMatrix.MultiplyPoint(position);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_12;
		L_12 = Component_get_transform_m2919A1D81931E6932C7F06D4C2F0AB8DDA9A5371(__this, NULL);
		NullCheck(L_12);
		Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 L_13;
		L_13 = Transform_get_localToWorldMatrix_m5D35188766856338DD21DE756F42277C21719E6D(L_12, NULL);
		V_3 = L_13;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_14 = V_0;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_15;
		L_15 = Matrix4x4_MultiplyPoint_m20E910B65693559BFDE99382472D8DD02C862E7E((&V_3), L_14, NULL);
		V_0 = L_15;
		// velocity = transform.localToWorldMatrix.MultiplyVector(velocity);
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_16;
		L_16 = Component_get_transform_m2919A1D81931E6932C7F06D4C2F0AB8DDA9A5371(__this, NULL);
		NullCheck(L_16);
		Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 L_17;
		L_17 = Transform_get_localToWorldMatrix_m5D35188766856338DD21DE756F42277C21719E6D(L_16, NULL);
		V_3 = L_17;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_18 = V_2;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_19;
		L_19 = Matrix4x4_MultiplyVector_mFD12F86A473E90BBB0002149ABA3917B2A518937((&V_3), L_18, NULL);
		V_2 = L_19;
		// size = transform.localToWorldMatrix.MultiplyVector(Vector3.right * size).magnitude;
		Transform_tB27202C6F4E36D225EE28A13E4D662BF99785DB1* L_20;
		L_20 = Component_get_transform_m2919A1D81931E6932C7F06D4C2F0AB8DDA9A5371(__this, NULL);
		NullCheck(L_20);
		Matrix4x4_tDB70CF134A14BA38190C59AA700BCE10E2AED3E6 L_21;
		L_21 = Transform_get_localToWorldMatrix_m5D35188766856338DD21DE756F42277C21719E6D(L_20, NULL);
		V_3 = L_21;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_22;
		L_22 = Vector3_get_right_m13B7C3EAA64DC921EC23346C56A5A597B5481FF5_inline(NULL);
		float L_23 = V_1;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_24;
		L_24 = Vector3_op_Multiply_m516FE285F5342F922C6EB3FCB33197E9017FF484_inline(L_22, L_23, NULL);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_25;
		L_25 = Matrix4x4_MultiplyVector_mFD12F86A473E90BBB0002149ABA3917B2A518937((&V_3), L_24, NULL);
		V_4 = L_25;
		float L_26;
		L_26 = Vector3_get_magnitude_mF0D6017E90B345F1F52D1CC564C640F1A847AF2D_inline((&V_4), NULL);
		V_1 = L_26;
	}

IL_008d:
	{
		// switch (eventType)
		int32_t L_27 = __this->___eventType_12;
		V_5 = L_27;
		int32_t L_28 = V_5;
		switch (L_28)
		{
			case 0:
			{
				goto IL_00a9;
			}
			case 1:
			{
				goto IL_00b7;
			}
			case 2:
			{
				goto IL_00cc;
			}
		}
	}
	{
		return;
	}

IL_00a9:
	{
		// rigidBody.AddForce(velocity, ForceMode.Impulse);
		Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* L_29 = __this->___rigidBody_10;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_30 = V_2;
		NullCheck(L_29);
		Rigidbody_AddForce_mBDBC288D0E266BC1B62E3649B4FCE46E7EA9CCBC(L_29, L_30, 1, NULL);
		// break;
		return;
	}

IL_00b7:
	{
		// rigidBody.AddExplosionForce(velocity.magnitude,  position, size);
		Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* L_31 = __this->___rigidBody_10;
		float L_32;
		L_32 = Vector3_get_magnitude_mF0D6017E90B345F1F52D1CC564C640F1A847AF2D_inline((&V_2), NULL);
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_33 = V_0;
		float L_34 = V_1;
		NullCheck(L_31);
		Rigidbody_AddExplosionForce_mD36F7D864F32F22DA1783D20F6E9563A9C51DFA1(L_31, L_32, L_33, L_34, NULL);
		// break;
		return;
	}

IL_00cc:
	{
		// rigidBody.AddForce(velocity, ForceMode.VelocityChange);
		Rigidbody_t268697F5A994213ED97393309870968BC1C7393C* L_35 = __this->___rigidBody_10;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_36 = V_2;
		NullCheck(L_35);
		Rigidbody_AddForce_mBDBC288D0E266BC1B62E3649B4FCE46E7EA9CCBC(L_35, L_36, 2, NULL);
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventRigidBody::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventRigidBody__ctor_mB28B00C37C454E9DAC83E4AF825A0CE7DF4905E0 (VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D* __this, const RuntimeMethod* method) 
{
	{
		VFXOutputEventAbstractHandler__ctor_m4E2D7BE313EA0EC6CD4BE214184BDAC7899F18E9(__this, NULL);
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventRigidBody::.cctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventRigidBody__cctor_m53BE64BB9CB0633494FF46269419DB16AC87B8E9 (const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteral3EE5A4671A4E5AEBD31CA5F013A7773DC18ED22B);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteral48DC6A58A18098420AC1CD015B24A5856038A620);
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&_stringLiteral88BDF3D0791A560245652E772545C49897854443);
		s_Il2CppMethodInitialized = true;
	}
	{
		// static readonly int k_Position = Shader.PropertyToID("position");
		int32_t L_0;
		L_0 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteral88BDF3D0791A560245652E772545C49897854443, NULL);
		((VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var))->___k_Position_7 = L_0;
		// static readonly int k_Size = Shader.PropertyToID("size");
		int32_t L_1;
		L_1 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteral3EE5A4671A4E5AEBD31CA5F013A7773DC18ED22B, NULL);
		((VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var))->___k_Size_8 = L_1;
		// static readonly int k_Velocity = Shader.PropertyToID("velocity");
		int32_t L_2;
		L_2 = Shader_PropertyToID_mF5F7BA2EFF23D83482ECDE4C34227145D817B1EB(_stringLiteral48DC6A58A18098420AC1CD015B24A5856038A620, NULL);
		((VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_StaticFields*)il2cpp_codegen_static_fields_for(VFXOutputEventRigidBody_tA740A46700E4C333AD0A9F81DC0B3EC9332E2C8D_il2cpp_TypeInfo_var))->___k_Velocity_9 = L_2;
		return;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Boolean UnityEngine.VFX.Utility.VFXOutputEventUnityEvent::get_canExecuteInEditor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR bool VFXOutputEventUnityEvent_get_canExecuteInEditor_m0D808B4787268B8E4337FEB025ACBD502F76301D (VFXOutputEventUnityEvent_tFCDB9BF5B61308DA636D248C68F6D7783558965D* __this, const RuntimeMethod* method) 
{
	{
		// public override bool canExecuteInEditor => false;
		return (bool)0;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventUnityEvent::OnVFXOutputEvent(UnityEngine.VFX.VFXEventAttribute)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventUnityEvent_OnVFXOutputEvent_m6A7A4B61C8C011330ACCB16D4AB9ADBD2D226C74 (VFXOutputEventUnityEvent_tFCDB9BF5B61308DA636D248C68F6D7783558965D* __this, VFXEventAttribute_tA764A595356174BA39C782A8A64B47B39FB3F518* ___eventAttribute0, const RuntimeMethod* method) 
{
	UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977* G_B2_0 = NULL;
	UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977* G_B1_0 = NULL;
	{
		// onEvent?.Invoke();
		UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977* L_0 = __this->___onEvent_7;
		UnityEvent_tDC2C3548799DBC91D1E3F3DE60083A66F4751977* L_1 = L_0;
		G_B1_0 = L_1;
		if (L_1)
		{
			G_B2_0 = L_1;
			goto IL_000b;
		}
	}
	{
		return;
	}

IL_000b:
	{
		NullCheck(G_B2_0);
		UnityEvent_Invoke_mFBF80D59B03C30C5FE6A06F897D954ACADE061D2(G_B2_0, NULL);
		// }
		return;
	}
}
// System.Void UnityEngine.VFX.Utility.VFXOutputEventUnityEvent::.ctor()
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void VFXOutputEventUnityEvent__ctor_m47E40F4AF1F07FC4950FA257C20998C6228E9A4C (VFXOutputEventUnityEvent_tFCDB9BF5B61308DA636D248C68F6D7783558965D* __this, const RuntimeMethod* method) 
{
	{
		VFXOutputEventAbstractHandler__ctor_m4E2D7BE313EA0EC6CD4BE214184BDAC7899F18E9(__this, NULL);
		return;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR float Vector3_get_magnitude_mF0D6017E90B345F1F52D1CC564C640F1A847AF2D_inline (Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2* __this, const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Math_tEB65DE7CA8B083C412C969C92981C030865486CE_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	float V_0 = 0.0f;
	{
		float L_0 = __this->___x_2;
		float L_1 = __this->___x_2;
		float L_2 = __this->___y_3;
		float L_3 = __this->___y_3;
		float L_4 = __this->___z_4;
		float L_5 = __this->___z_4;
		il2cpp_codegen_runtime_class_init_inline(Math_tEB65DE7CA8B083C412C969C92981C030865486CE_il2cpp_TypeInfo_var);
		double L_6;
		L_6 = sqrt(((double)((float)il2cpp_codegen_add(((float)il2cpp_codegen_add(((float)il2cpp_codegen_multiply(L_0, L_1)), ((float)il2cpp_codegen_multiply(L_2, L_3)))), ((float)il2cpp_codegen_multiply(L_4, L_5))))));
		V_0 = ((float)L_6);
		goto IL_0034;
	}

IL_0034:
	{
		float L_7 = V_0;
		return L_7;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR void Color__ctor_mCD6889CDE39F18704CD6EA8E2EFBFA48BA3E13B0_inline (Color_tD001788D726C3A7F1379BEED0260B9591F440C1F* __this, float ___r0, float ___g1, float ___b2, const RuntimeMethod* method) 
{
	{
		float L_0 = ___r0;
		__this->___r_0 = L_0;
		float L_1 = ___g1;
		__this->___g_1 = L_1;
		float L_2 = ___b2;
		__this->___b_2 = L_2;
		__this->___a_3 = (1.0f);
		return;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR Color_tD001788D726C3A7F1379BEED0260B9591F440C1F Color_op_Division_m1C9D39C3D4B9AC3343E08D0ED4DD64E33D40A5FF_inline (Color_tD001788D726C3A7F1379BEED0260B9591F440C1F ___a0, float ___b1, const RuntimeMethod* method) 
{
	Color_tD001788D726C3A7F1379BEED0260B9591F440C1F V_0;
	memset((&V_0), 0, sizeof(V_0));
	{
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_0 = ___a0;
		float L_1 = L_0.___r_0;
		float L_2 = ___b1;
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_3 = ___a0;
		float L_4 = L_3.___g_1;
		float L_5 = ___b1;
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_6 = ___a0;
		float L_7 = L_6.___b_2;
		float L_8 = ___b1;
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_9 = ___a0;
		float L_10 = L_9.___a_3;
		float L_11 = ___b1;
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_12;
		memset((&L_12), 0, sizeof(L_12));
		Color__ctor_m3786F0D6E510D9CFA544523A955870BD2A514C8C_inline((&L_12), ((float)(L_1/L_2)), ((float)(L_4/L_5)), ((float)(L_7/L_8)), ((float)(L_10/L_11)), /*hidden argument*/NULL);
		V_0 = L_12;
		goto IL_0029;
	}

IL_0029:
	{
		Color_tD001788D726C3A7F1379BEED0260B9591F440C1F L_13 = V_0;
		return L_13;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR bool VFXOutputEventPrefabSpawn_get_parentInstances_mC9BEBB7BF6BEE01BF0DDA0C461D3840A9E3D7481_inline (VFXOutputEventPrefabSpawn_t3E292BCD64765E92A96A1D317DB64BAF912B2154* __this, const RuntimeMethod* method) 
{
	{
		// public bool parentInstances => m_ParentInstances;
		bool L_0 = __this->___m_ParentInstances_9;
		return L_0;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* VFXOutputEventAbstractHandler_get_m_VisualEffect_m5DE6F44EA40481C9A196614B97B68E4B1DEC59B3_inline (VFXOutputEventAbstractHandler_tDDCEC217BB2BA0FBE9EEA39A2E7207F7DC752564* __this, const RuntimeMethod* method) 
{
	{
		// protected VisualEffect m_VisualEffect { private set; get; }
		VisualEffect_t8CF4F0E13AEBF27224BB1323CC103666EDBBCFB0* L_0 = __this->___U3Cm_VisualEffectU3Ek__BackingField_6;
		return L_0;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 Vector3_get_right_m13B7C3EAA64DC921EC23346C56A5A597B5481FF5_inline (const RuntimeMethod* method) 
{
	static bool s_Il2CppMethodInitialized;
	if (!s_Il2CppMethodInitialized)
	{
		il2cpp_codegen_initialize_runtime_metadata((uintptr_t*)&Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2_il2cpp_TypeInfo_var);
		s_Il2CppMethodInitialized = true;
	}
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 V_0;
	memset((&V_0), 0, sizeof(V_0));
	{
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_0 = ((Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2_StaticFields*)il2cpp_codegen_static_fields_for(Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2_il2cpp_TypeInfo_var))->___rightVector_10;
		V_0 = L_0;
		goto IL_0009;
	}

IL_0009:
	{
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_1 = V_0;
		return L_1;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 Vector3_op_Multiply_m516FE285F5342F922C6EB3FCB33197E9017FF484_inline (Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 ___a0, float ___d1, const RuntimeMethod* method) 
{
	Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 V_0;
	memset((&V_0), 0, sizeof(V_0));
	{
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_0 = ___a0;
		float L_1 = L_0.___x_2;
		float L_2 = ___d1;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_3 = ___a0;
		float L_4 = L_3.___y_3;
		float L_5 = ___d1;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_6 = ___a0;
		float L_7 = L_6.___z_4;
		float L_8 = ___d1;
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_9;
		memset((&L_9), 0, sizeof(L_9));
		Vector3__ctor_m376936E6B999EF1ECBE57D990A386303E2283DE0_inline((&L_9), ((float)il2cpp_codegen_multiply(L_1, L_2)), ((float)il2cpp_codegen_multiply(L_4, L_5)), ((float)il2cpp_codegen_multiply(L_7, L_8)), /*hidden argument*/NULL);
		V_0 = L_9;
		goto IL_0021;
	}

IL_0021:
	{
		Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2 L_10 = V_0;
		return L_10;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR void Color__ctor_m3786F0D6E510D9CFA544523A955870BD2A514C8C_inline (Color_tD001788D726C3A7F1379BEED0260B9591F440C1F* __this, float ___r0, float ___g1, float ___b2, float ___a3, const RuntimeMethod* method) 
{
	{
		float L_0 = ___r0;
		__this->___r_0 = L_0;
		float L_1 = ___g1;
		__this->___g_1 = L_1;
		float L_2 = ___b2;
		__this->___b_2 = L_2;
		float L_3 = ___a3;
		__this->___a_3 = L_3;
		return;
	}
}
IL2CPP_MANAGED_FORCE_INLINE IL2CPP_METHOD_ATTR void Vector3__ctor_m376936E6B999EF1ECBE57D990A386303E2283DE0_inline (Vector3_t24C512C7B96BBABAD472002D0BA2BDA40A5A80B2* __this, float ___x0, float ___y1, float ___z2, const RuntimeMethod* method) 
{
	{
		float L_0 = ___x0;
		__this->___x_2 = L_0;
		float L_1 = ___y1;
		__this->___y_3 = L_1;
		float L_2 = ___z2;
		__this->___z_4 = L_2;
		return;
	}
}

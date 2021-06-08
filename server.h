/* this ALWAYS GENERATED file contains the definitions for the interfaces */


/* File created by MIDL compiler version 5.01.0164 */
/* at Thu Jun 18 13:09:40 2009
 */
/* Compiler settings for P:\Production\BOUN\BOUN\server.idl:
    Os (OptLev=s), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
*/
//@@MIDL_FILE_HEADING(  )


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 440
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __RPCNDR_H_VERSION__
#error this stub requires an updated version of <rpcndr.h>
#endif // __RPCNDR_H_VERSION__

#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __server_h__
#define __server_h__

#ifdef __cplusplus
extern "C"{
#endif 

/* Forward Declarations */ 

#ifndef __IUnicodeNotation_FWD_DEFINED__
#define __IUnicodeNotation_FWD_DEFINED__
typedef interface IUnicodeNotation IUnicodeNotation;
#endif 	/* __IUnicodeNotation_FWD_DEFINED__ */


#ifndef __UnicodeNotation_FWD_DEFINED__
#define __UnicodeNotation_FWD_DEFINED__

#ifdef __cplusplus
typedef class UnicodeNotation UnicodeNotation;
#else
typedef struct UnicodeNotation UnicodeNotation;
#endif /* __cplusplus */

#endif 	/* __UnicodeNotation_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

void __RPC_FAR * __RPC_USER MIDL_user_allocate(size_t);
void __RPC_USER MIDL_user_free( void __RPC_FAR * ); 

#ifndef __IUnicodeNotation_INTERFACE_DEFINED__
#define __IUnicodeNotation_INTERFACE_DEFINED__

/* interface IUnicodeNotation */
/* [dual][oleautomation][uuid][object] */ 


EXTERN_C const IID IID_IUnicodeNotation;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("7F6C35E3-F2AA-41F3-8B65-452E50E234FE")
    IUnicodeNotation : public IDispatch
    {
    public:
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Notate( 
            /* [in] */ VARIANT sString,
            /* [in] */ long nLen,
            /* [retval][out] */ VARIANT __RPC_FAR *aArray) = 0;
        
        virtual /* [helpstring][propget][id] */ HRESULT STDMETHODCALLTYPE get_Coalesce( 
            /* [retval][out] */ VARIANT_BOOL __RPC_FAR *VALUE) = 0;
        
        virtual /* [helpstring][propput][id] */ HRESULT STDMETHODCALLTYPE put_Coalesce( 
            /* [in] */ VARIANT_BOOL VALUE) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Generate( 
            /* [in] */ VARIANT sInput,
            /* [retval][out] */ VARIANT __RPC_FAR *sOutput) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IUnicodeNotationVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *QueryInterface )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [iid_is][out] */ void __RPC_FAR *__RPC_FAR *ppvObject);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *AddRef )( 
            IUnicodeNotation __RPC_FAR * This);
        
        ULONG ( STDMETHODCALLTYPE __RPC_FAR *Release )( 
            IUnicodeNotation __RPC_FAR * This);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfoCount )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [out] */ UINT __RPC_FAR *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetTypeInfo )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo __RPC_FAR *__RPC_FAR *ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE __RPC_FAR *GetIDsOfNames )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR __RPC_FAR *rgszNames,
            /* [in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID __RPC_FAR *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Invoke )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS __RPC_FAR *pDispParams,
            /* [out] */ VARIANT __RPC_FAR *pVarResult,
            /* [out] */ EXCEPINFO __RPC_FAR *pExcepInfo,
            /* [out] */ UINT __RPC_FAR *puArgErr);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Notate )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [in] */ VARIANT sString,
            /* [in] */ long nLen,
            /* [retval][out] */ VARIANT __RPC_FAR *aArray);
        
        /* [helpstring][propget][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *get_Coalesce )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [retval][out] */ VARIANT_BOOL __RPC_FAR *VALUE);
        
        /* [helpstring][propput][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *put_Coalesce )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [in] */ VARIANT_BOOL VALUE);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE __RPC_FAR *Generate )( 
            IUnicodeNotation __RPC_FAR * This,
            /* [in] */ VARIANT sInput,
            /* [retval][out] */ VARIANT __RPC_FAR *sOutput);
        
        END_INTERFACE
    } IUnicodeNotationVtbl;

    interface IUnicodeNotation
    {
        CONST_VTBL struct IUnicodeNotationVtbl __RPC_FAR *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IUnicodeNotation_QueryInterface(This,riid,ppvObject)	\
    (This)->lpVtbl -> QueryInterface(This,riid,ppvObject)

#define IUnicodeNotation_AddRef(This)	\
    (This)->lpVtbl -> AddRef(This)

#define IUnicodeNotation_Release(This)	\
    (This)->lpVtbl -> Release(This)


#define IUnicodeNotation_GetTypeInfoCount(This,pctinfo)	\
    (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo)

#define IUnicodeNotation_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo)

#define IUnicodeNotation_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)

#define IUnicodeNotation_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)


#define IUnicodeNotation_Notate(This,sString,nLen,aArray)	\
    (This)->lpVtbl -> Notate(This,sString,nLen,aArray)

#define IUnicodeNotation_get_Coalesce(This,VALUE)	\
    (This)->lpVtbl -> get_Coalesce(This,VALUE)

#define IUnicodeNotation_put_Coalesce(This,VALUE)	\
    (This)->lpVtbl -> put_Coalesce(This,VALUE)

#define IUnicodeNotation_Generate(This,sInput,sOutput)	\
    (This)->lpVtbl -> Generate(This,sInput,sOutput)

#endif /* COBJMACROS */


#endif 	/* C style interface */



/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IUnicodeNotation_Notate_Proxy( 
    IUnicodeNotation __RPC_FAR * This,
    /* [in] */ VARIANT sString,
    /* [in] */ long nLen,
    /* [retval][out] */ VARIANT __RPC_FAR *aArray);


void __RPC_STUB IUnicodeNotation_Notate_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propget][id] */ HRESULT STDMETHODCALLTYPE IUnicodeNotation_get_Coalesce_Proxy( 
    IUnicodeNotation __RPC_FAR * This,
    /* [retval][out] */ VARIANT_BOOL __RPC_FAR *VALUE);


void __RPC_STUB IUnicodeNotation_get_Coalesce_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][propput][id] */ HRESULT STDMETHODCALLTYPE IUnicodeNotation_put_Coalesce_Proxy( 
    IUnicodeNotation __RPC_FAR * This,
    /* [in] */ VARIANT_BOOL VALUE);


void __RPC_STUB IUnicodeNotation_put_Coalesce_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);


/* [helpstring][id] */ HRESULT STDMETHODCALLTYPE IUnicodeNotation_Generate_Proxy( 
    IUnicodeNotation __RPC_FAR * This,
    /* [in] */ VARIANT sInput,
    /* [retval][out] */ VARIANT __RPC_FAR *sOutput);


void __RPC_STUB IUnicodeNotation_Generate_Stub(
    IRpcStubBuffer *This,
    IRpcChannelBuffer *_pRpcChannelBuffer,
    PRPC_MESSAGE _pRpcMessage,
    DWORD *_pdwStubPhase);



#endif 	/* __IUnicodeNotation_INTERFACE_DEFINED__ */



#ifndef __UnicodeNotationLib_LIBRARY_DEFINED__
#define __UnicodeNotationLib_LIBRARY_DEFINED__

/* library UnicodeNotationLib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_UnicodeNotationLib;

EXTERN_C const CLSID CLSID_UnicodeNotation;

#ifdef __cplusplus

class DECLSPEC_UUID("98B8D06B-2D37-46A8-945B-771EA4F5631C")
UnicodeNotation;
#endif
#endif /* __UnicodeNotationLib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  VARIANT_UserSize(     unsigned long __RPC_FAR *, unsigned long            , VARIANT __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  VARIANT_UserMarshal(  unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, VARIANT __RPC_FAR * ); 
unsigned char __RPC_FAR * __RPC_USER  VARIANT_UserUnmarshal(unsigned long __RPC_FAR *, unsigned char __RPC_FAR *, VARIANT __RPC_FAR * ); 
void                      __RPC_USER  VARIANT_UserFree(     unsigned long __RPC_FAR *, VARIANT __RPC_FAR * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif

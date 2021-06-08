!
!  clsfactty.f90 - This file contains definitions of the IClassFactory 
!  interface that is used to create instances of the user's classes
!
!  Generated by the Visual Fortran COM Server Wizard on
!  06/20/08 at 11:42:58.
!
!   DO NOT EDIT THIS FILE!
!
!  This file is re-generated every time the object hierarchy is changed.
!

module IClassFactory_Types

    use dfwinty

    ! 00000001-0000-0000-C000-000000000046
	TYPE (GUID), PARAMETER :: IID_IClassFactory = &
		GUID(#00000001, #0000, #0000, &
		  CHAR('C0'X)//CHAR('00'X)//CHAR('00'X)//CHAR('00'X)// &
		  CHAR('00'X)//CHAR('00'X)//CHAR('00'X)//CHAR('46'X))

    !  IClassFactory instance data
	type IClassFactory_Data
        sequence
        type (T_IClassFactoryVtbl), pointer :: pVtbl
		integer refCount
	end type IClassFactory_Data

end module

module IClassFactory_Methods

  interface 

    ! IUnknown methods
    function IClassFactory_QueryInterface (pData, riid, ppv) result (r)
    !DEC$ ATTRIBUTES STDCALL :: IClassFactory_QueryInterface
        use IClassFactory_Types
        use dfwinty
        type (IClassFactory_Data) pData
	    !dec$ attributes reference :: pData
        type(GUID) riid
	    !dec$ attributes reference :: riid
        integer(INT_PTR_KIND()) ppv
	    !dec$ attributes reference :: ppv
        integer(LONG) r
    end function 

    function IClassFactory_AddRef (pData) result (r)
    !DEC$ ATTRIBUTES STDCALL :: IClassFactory_AddRef
        use IClassFactory_Types
        use dfwinty
        type (IClassFactory_Data) pData
	    !dec$ attributes reference :: pData
        integer r
    end function 

    function IClassFactory_Release (pData) result (r)
    !DEC$ ATTRIBUTES STDCALL :: IClassFactory_Release
        use IClassFactory_Types
        use dfwinty
        type (IClassFactory_Data) pData
	    !dec$ attributes reference :: pData
        integer r
    end function 

    ! IClassFactory methods
    function IClassFactory_LockServer (pData, bLock) result (r)
    !DEC$ ATTRIBUTES STDCALL :: IClassFactory_LockServer
        use IClassFactory_Types
        use dfwinty
        type (IClassFactory_Data) pData
	    !dec$ attributes reference :: pData
        logical bLock
	    !dec$ attributes value :: bLock
        integer(LONG) r
    end function 

    !  Per class
    function IClassFactory_CreateUnicodeNotationInstance (pData, pUnk, riid, ppv) result (r)
    !DEC$ ATTRIBUTES STDCALL :: IClassFactory_CreateUnicodeNotationInstance
        use IClassFactory_Types
        use dfwinty
        type (IClassFactory_Data) pData
	    !dec$ attributes reference :: pData
        integer(INT_PTR_KIND()) pUnk
	    !dec$ attributes value :: pUnk
        type(GUID) riid
	    !dec$ attributes reference :: riid
        integer(INT_PTR_KIND()) ppv
	    !dec$ attributes reference :: ppv
        integer(LONG) r
    end function 

  end interface

end module
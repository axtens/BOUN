!
!  UIUnicodeNotation.f90 - This file contains the implementation of the
!                    IUnicodeNotation methods
!
    ! IUnicodeNotation_Notate
    function IUnicodeNotation_Notate( ObjectData ,&
             sString,&
			 nLen,&
			 aArray) result (hresult)
        use UnicodeNotation_Types
        implicit none
        type(UnicodeNotation_InstanceData) ObjectData
        !dec$ attributes reference :: ObjectData
        TYPE(VARIANT), intent(in) :: sString
        INTEGER(4), intent(in) :: nLen
        TYPE(VARIANT), intent(out) :: aArray
        integer(LONG) hresult
        ! TODO:  Add implementation
        hresult = S_OK
    end function
    ! IUnicodeNotation_get_Coalesce
    function IUnicodeNotation_get_Coalesce( ObjectData ,&
             VALUE) result (hresult)
        use UnicodeNotation_Types
        implicit none
        type(UnicodeNotation_InstanceData) ObjectData
        !dec$ attributes reference :: ObjectData
        LOGICAL(2), intent(out) :: VALUE
        integer(LONG) hresult
        ! TODO:  Add implementation
        hresult = S_OK
    end function
    ! IUnicodeNotation_put_Coalesce
    function IUnicodeNotation_put_Coalesce( ObjectData ,&
             VALUE) result (hresult)
        use UnicodeNotation_Types
        implicit none
        type(UnicodeNotation_InstanceData) ObjectData
        !dec$ attributes reference :: ObjectData
        LOGICAL(2), intent(in) :: VALUE
        integer(LONG) hresult
        ! TODO:  Add implementation
        hresult = S_OK
    end function
    ! IUnicodeNotation_Generate
    function IUnicodeNotation_Generate( ObjectData ,&
             sInput,&
			 sOutput) result (hresult)
        use UnicodeNotation_Types
        implicit none
        type(UnicodeNotation_InstanceData) ObjectData
        !dec$ attributes reference :: ObjectData
        TYPE(VARIANT), intent(in) :: sInput
        TYPE(VARIANT), intent(out) :: sOutput
        integer(LONG) hresult
        ! TODO:  Add implementation
        hresult = S_OK
    end function

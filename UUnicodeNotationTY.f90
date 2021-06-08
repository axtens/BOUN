!
!  UUnicodeNotationTY.f90 - This module contains user-defined class 
!  definitions and methods
!

module UnicodeNotation_USE
	
	type UnicodeNotation_InstanceData
        sequence
        !  TODO:  Add fields and remove "dummy"
        INTEGER*2 :: bCoalesce
    end type

  contains

    !
    !  Constructor
    !
    function UnicodeNotation_CONSTRUCTOR( ObjectData ) result (hresult)
        use dfwinty
        implicit none
        type(UnicodeNotation_InstanceData) ObjectData
        !dec$ attributes reference :: ObjectData
        integer(LONG) hresult

        hresult = S_OK
        !  TODO:  Add field initialization code
    end function

    !
    !  Destructor
    !
    subroutine UnicodeNotation_DESTRUCTOR( ObjectData )
        implicit none
        type(UnicodeNotation_InstanceData) ObjectData
        !dec$ attributes reference :: ObjectData
        !  TODO:  Add field cleanup code
    end subroutine

end module




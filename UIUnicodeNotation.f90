!
!  UIUnicodeNotation.f90 - This file contains the implementation of the
!                    IUnicodeNotation methods
!
    function IUnicodeNotation_Notate( ObjectData ,&
             sString,&
			 nLen,&
			 aArray) result (hresult)
        use UnicodeNotation_Types
		USE DFWINTY
		USE OLEAUT32
		USE DFCOM
		USE Surrogacy

        implicit none
        type(UnicodeNotation_InstanceData) ObjectData
        !dec$ attributes reference :: ObjectData
        TYPE(VARIANT), intent(in) :: sString
        INTEGER(4), intent(in) :: nLen
        TYPE(VARIANT), intent(out) :: aArray
        integer(LONG) hresult
		
        ! TODO:  Add implementation

		! make sure it's a VT_BSTR
		! point to its data as being in INTEGER*2 format
		! create a safearray of strings at least as long as there are integer*2 in the string
		! convert the integer*2 to hex and store in each element ofthe safearray
		! if bCoalesce is true, detect UTF16 surrogates and convert to UTF32 codepoints

		INTEGER*2 :: aUnicode(nLen)
		POINTER( pUnicode, aUnicode )
		INTEGER*4 :: saAddr
		INTEGER*4 :: i, j
		CHARACTER*(8) :: cHex
		TYPE (SA_BOUNDS), DIMENSION(1) :: rgsabound
		INTEGER*4 :: bstr
		INTEGER*2 :: val
		INTEGER*4 :: utf32
		
		hresult = S_OK

		IF ( IAND( sString%VT, VT_BSTR ) .ne. VT_BSTR) THEN
			hresult = E_INVALIDARG
			GO TO 100
		END IF

		pUnicode = sString%VU%PTR_VAL
		
		rgsabound(1)%Extent = nLen
		rgsabound(1)%LBound = 0

		saAddr = SafeArrayCreate( VT_BSTR, 1, rgsabound(1) )

		i = 1
		j = 0
		DO !i = 1, nLen
			IF ( i .gt. nLen ) EXIT
			val = aUnicode(i)
			IF ( ObjectData%bCoalesce .eq. VARIANT_BOOL_TRUE ) THEN
				IF ( is_high_surrogate( val ) ) THEN 
					! first, test border case, where i == nLen
					IF ( i .eq. nLen ) THEN
						hresult = E_INVALIDARG
						GO TO 100
					END IF
					IF ( .not. is_low_surrogate( aUnicode( i + 1 ) ) ) THEN
						hresult = E_INVALIDARG
						GO TO 100
					END IF
					utf32 = coalesce_surrogates( val, aUnicode( i + 1 ) )
					!IF ( utf32 .ge. #100000) THEN
					WRITE( cHex, "(Z6)" ), utf32
					!ELSE
					!	WRITE( cHex, "(Z5.5)" ), utf32
					!END IF
					
					cHex = "U+" // ADJUSTL( cHex )

					!WRITE( cHex, "(2HU+Z6.6)"), utf32
					i = i + 1
				ELSE
					IF ( is_low_surrogate( val ) ) THEN
						hresult = E_INVALIDARG
						GO TO 100
					END IF
					WRITE ( cHex, "(2HU+Z4.4)" ), val
				END IF						
			ELSE
				WRITE ( cHex, "(2HU+Z4.4)" ), val
			END IF
			bstr = ConvertStringToBSTR( cHex )
			CALL SafeArrayPutElement( saAddr, j, bstr )
			j = j + 1
			i = i + 1
		END DO

		IF ( ObjectData%bCoalesce .eq. VARIANT_BOOL_TRUE ) THEN
			rgsabound(1)%Extent = j
			rgsabound(1)%LBound = 0 
			CALL SafeArrayReDim( saAddr, rgsabound(1) )
		END IF

		aArray%VT = IOR( VT_ARRAY, VT_BSTR )
		aArray%VU%PTR_VAL = saAddr

100		CONTINUE
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
		VALUE = ObjectData%bCoalesce
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
		ObjectData%bCoalesce = VALUE
        hresult = S_OK
    end function

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
		! find 'U+', take everything up to next U or next space, whichever comes first
		! convert hex to integer*2
		! 
    end function

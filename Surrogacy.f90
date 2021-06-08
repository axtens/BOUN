MODULE Surrogacy

CONTAINS

	!     #define IS_HIGH_SURROGATE(wch) (((wch) >= HIGH_SURROGATE_START) && ((wch) <= HIGH_SURROGATE_END))
	function is_high_surrogate( wch ) 
		logical :: is_high_surrogate
		integer*2 :: wch
		integer*2 :: tester
		integer*2, parameter :: HIGH_SURROGATE_START = #d800 !  #define HIGH_SURROGATE_START  0xd800
		integer*2, parameter :: HIGH_SURROGATE_END = #dbff   !  #define HIGH_SURROGATE_END    0xdbff
		tester = wch
		is_high_surrogate = ( ( tester .ge. HIGH_SURROGATE_START ) .and. ( tester .le. HIGH_SURROGATE_END ) )
	end function

	!	#define IS_LOW_SURROGATE(wch)  (((wch) >= LOW_SURROGATE_START) && ((wch) <= LOW_SURROGATE_END))
	function is_low_surrogate( wch )
		logical :: is_low_surrogate
		integer*2 :: wch
		integer*2 :: tester
		integer*2, parameter :: LOW_SURROGATE_START = #dc00 !  #define LOW_SURROGATE_START   0xdc00
		integer*2, parameter :: LOW_SURROGATE_END = #dfff   !  #define LOW_SURROGATE_END     0xdfff
		tester = wch
		is_low_surrogate = ( ( tester .ge. LOW_SURROGATE_START ) .and. ( tester .le. LOW_SURROGATE_END ) )
	end function

	!	#define IS_SURROGATE_PAIR(hs, ls) (IS_HIGH_SURROGATE(hs) && IS_LOW_SURROGATE(ls)) 
	function is_surrogate_pair( hs, ls )
		logical :: is_surrogate_pair
		integer*2 :: hs, ls
		is_surrogate_pair = ( is_high_surrogate( hs ) .and. is_low_surrogate( ls ) )
	end function

	function coalesce_surrogates( hi, lo )
		integer*4 :: coalesce_surrogates
		integer*2 :: hi, lo
		integer*4 :: X, W, U, C
		! http://www.unicode.org/unicode/faq/utf_bom.html#35
		! UTF32 X = (hi & ((1<<6) -1)) << 10 | lo & ((1<<10) -1);
		X = IOR( LSHIFT( IAND( hi, LSHIFT(1, 6) - 1), 10),IAND( lo, LSHIFT(1,10) - 1 ))

		! UTF32 W = (hi >> 6) & ((1<<5) - 1);
		W = IAND( RSHIFT( hi, 6 ), LSHIFT(1, 5) - 1)

		! UTF32 U = W + 1 
		U = W + 1

		! UTF32 C = U << 16 | X;
		C = IOR( LSHIFT( U, 16 ), X )

		coalesce_surrogates = C
	end function

END MODULE
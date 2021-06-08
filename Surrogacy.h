typedef unsigned int16 UTF16;
typedef unsigned int32 UTF32;

const UTF16 HIGH_SURROGATE_START = 0xD800
const UTF16 LOW_SURROGATE_START = 0xDC00

// http://cs.uccs.edu/~cs301/xml/xml4j_2_0_6/samples/SAXPrint/SAXPrintHandlers.java
const UTF16 HIGH_SURROGATE_END = 0x0DBFF;
const UTF16 LOW_SURROGATE_END = 0x0DBFF;

// http://msdn.microsoft.com/en-us/library/ms776242(VS.85).aspx

#define IS_HIGH_SURROGATE(wch) (((wch) >= HIGH_SURROGATE_START) && ((wch) <= HIGH_SURROGATE_END))
#define IS_LOW_SURROGATE(wch)  (((wch) >= LOW_SURROGATE_START) && ((wch) <= LOW_SURROGATE_END))
#define IS_SURROGATE_PAIR(hs, ls) (IS_HIGH_SURROGATE(hs) && IS_LOW_SURROGATE(ls)) 

// constants
const UTF32 LEAD_OFFSET = 0xD800 - (0x10000 >> 10);
const UTF32 SURROGATE_OFFSET = 0x10000 - (0xD800 << 10) - 0xDC00;

// computations
UTF16 lead = LEAD_OFFSET + (codepoint >> 10);
UTF16 trail = 0xDC00 + (codepoint & 0x3FF);

UTF32 codepoint = (lead << 10) + trail + SURROGATE_OFFSET;

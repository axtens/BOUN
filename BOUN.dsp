# Microsoft Developer Studio Project File - Name="BOUN" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=BOUN - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "BOUN.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "BOUN.mak" CFG="BOUN - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "BOUN - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "BOUN - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
F90=df.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "BOUN - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE F90 /compile_only /dll /nologo /warn:nofileopt
# ADD F90 /automatic /compile_only /dll /nologo /warn:nofileopt
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /win32
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /i "$(INTDIR)" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# Begin Custom Build - Performing Registration
OutDir=.\Release
TargetPath=.\Release\BOUN.dll
InputPath=.\Release\BOUN.dll
SOURCE="$(InputPath)"

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	regsvr32 /s /c "$(TargetPath)" > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ELSEIF  "$(CFG)" == "BOUN - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE F90 /check:bounds /compile_only /dbglibs /debug:full /dll /nologo /traceback /warn:argument_checking /warn:nofileopt
# ADD F90 /automatic /check:bounds /compile_only /dbglibs /debug:full /dll /nologo /traceback /warn:argument_checking /warn:nofileopt
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /YX /FD /GZ   /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /YX /FD /GZ   /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /win32
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /i "$(INTDIR)" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /incremental:no /debug /machine:I386 /pdbtype:sept
# Begin Custom Build - Performing Registration
OutDir=.\Debug
TargetPath=.\Debug\BOUN.dll
InputPath=.\Debug\BOUN.dll
SOURCE="$(InputPath)"

"$(OutDir)\regsvr32.trg" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	regsvr32 /s /c "$(TargetPath)" > "$(OutDir)\regsvr32.trg"

# End Custom Build

!ENDIF 

# Begin Target

# Name "BOUN - Win32 Release"
# Name "BOUN - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat;f90;for;f;fpp"
# Begin Source File

SOURCE=.\Surrogacy.f90
# End Source File
# Begin Source File

SOURCE=.\UIUnicodeNotation.f90
NODEP_F90_UIUNI=\
	".\Release\Surrogacy.mod"\
	".\Release\UnicodeNotation_Types.mod"\
	
# End Source File
# Begin Source File

SOURCE=.\UUnicodeNotationTY.f90
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\resource.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\BOUN.rc
# End Source File
# End Group
# Begin Group "Do Not Edit"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\BOUNGlobal.f90
DEP_F90_BOUNG=\
	".\Release\IClassFactory_Types.mod"\
	
# End Source File
# Begin Source File

SOURCE=.\clsfact.f90
DEP_F90_CLSFA=\
	".\Release\BOUN_global.mod"\
	".\Release\IClassFactory_Types.mod"\
	".\Release\IUnicodeNotation_Methods.mod"\
	".\Release\UnicodeNotation_Types.mod"\
	
# End Source File
# Begin Source File

SOURCE=.\clsfactty.f90
# End Source File
# Begin Source File

SOURCE=.\dllmain.f90
DEP_F90_DLLMA=\
	".\Release\BOUN_global.mod"\
	".\Release\IClassFactory_Methods.mod"\
	".\Release\IClassFactory_Types.mod"\
	".\Release\ServerHelper.mod"\
	".\Release\UnicodeNotation_Types.mod"\
	
# End Source File
# Begin Source File

SOURCE=.\IUnicodeNotation.f90
DEP_F90_IUNIC=\
	".\Release\UnicodeNotation_Types.mod"\
	
# End Source File
# Begin Source File

SOURCE=.\server.def
# End Source File
# Begin Source File

SOURCE=.\server.idl
# End Source File
# Begin Source File

SOURCE=.\serverhelper.f90
DEP_F90_SERVE=\
	".\Release\BOUN_global.mod"\
	".\Release\UnicodeNotation_Types.mod"\
	
# End Source File
# Begin Source File

SOURCE=.\UnicodeNotationTY.f90
DEP_F90_UNICO=\
	".\Release\BOUN_global.mod"\
	".\Release\UnicodeNotation_USE.mod"\
	
# End Source File
# End Group
# End Target
# End Project

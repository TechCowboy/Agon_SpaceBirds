SHELL = cmd.exe

#
# ZDS II Make File - SpaceBirds project, Release configuration
#
# Generated by: ZDS II - eZ80Acclaim! 5.3.4 (Build 19112104)
#   IDE component: d:5.3.0:19052909
#   Install Path: C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\
#

RM = del

# ZDS base directory
ZDSDIR = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4
ZDSDIR_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4

# ZDS bin directory
BIN = $(ZDSDIR)\bin

# ZDS include base directory
INCLUDE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\include
INCLUDE_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\include

# ZTP base directory
ZTPDIR = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\ZTP2.5.1
ZTPDIR_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\ZTP2.5.1

# project directory
PRJDIR = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\Agon_SpaceBirds
PRJDIR_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\Agon_SpaceBirds

# intermediate files directory
WORKDIR = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\Agon_SpaceBirds\Release
WORKDIR_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\Agon_SpaceBirds\Release

# output files directory
OUTDIR = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\Agon_SpaceBirds\Release\
OUTDIR_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.4\Agon_SpaceBirds\Release\

# tools
CC = @"$(BIN)\eZ80cc"
AS = @"$(BIN)\eZ80asm"
LD = @"$(BIN)\eZ80link"
AR = @"$(BIN)\eZ80lib"
WEBTOC = @"$(BIN)\mkwebpage"

CFLAGS =  \
-define:NDEBUG -define:_EZ80F92 -define:_EZ80ACCLAIM! -genprintf  \
-NOkeepasm -keeplst -NOlist -NOlistinc -NOmodsect -optsize  \
-promote -NOreduceopt  \
-stdinc:"\"..;..\..\include\std;..\..\include\zilog\""  \
-usrinc:"\"..;\"" -NOmultithread -NOpadbranch -NOdebug  \
-cpu:eZ80F92  \
-asmsw:"   \
	-define:_EZ80ACCLAIM!=1  \
	-include:\"..;..\..\include\std;..\..\include\zilog\" -list  \
	-NOlistmac -pagelen:0 -pagewidth:80 -quiet -sdiopt -warn -NOdebug  \
	-NOigcase -cpu:eZ80F92"

ASFLAGS =  \
-define:_EZ80ACCLAIM!=1  \
-include:"\"..;..\..\include\std;..\..\include\zilog\"" -list  \
-NOlistmac -name -pagelen:0 -pagewidth:80 -quiet -sdiopt -warn  \
-NOdebug -NOigcase -cpu:eZ80F92

LDFLAGS = @..\Release.linkcmd
build: SpaceBirds

buildall: clean SpaceBirds

relink: deltarget SpaceBirds

deltarget: 
	@if exist "$(WORKDIR)\SpaceBirds.lod"  \
            $(RM) "$(WORKDIR)\SpaceBirds.lod"
	@if exist "$(WORKDIR)\SpaceBirds.hex"  \
            $(RM) "$(WORKDIR)\SpaceBirds.hex"
	@if exist "$(WORKDIR)\SpaceBirds.map"  \
            $(RM) "$(WORKDIR)\SpaceBirds.map"

clean: 
	@if exist "$(WORKDIR)\SpaceBirds.lod"  \
            $(RM) "$(WORKDIR)\SpaceBirds.lod"
	@if exist "$(WORKDIR)\SpaceBirds.hex"  \
            $(RM) "$(WORKDIR)\SpaceBirds.hex"
	@if exist "$(WORKDIR)\SpaceBirds.map"  \
            $(RM) "$(WORKDIR)\SpaceBirds.map"
	@if exist "$(WORKDIR)\init.obj"  \
            $(RM) "$(WORKDIR)\init.obj"
	@if exist "$(WORKDIR)\init.lis"  \
            $(RM) "$(WORKDIR)\init.lis"
	@if exist "$(WORKDIR)\init.lst"  \
            $(RM) "$(WORKDIR)\init.lst"
	@if exist "$(WORKDIR)\main.obj"  \
            $(RM) "$(WORKDIR)\main.obj"
	@if exist "$(WORKDIR)\main.lis"  \
            $(RM) "$(WORKDIR)\main.lis"
	@if exist "$(WORKDIR)\main.lst"  \
            $(RM) "$(WORKDIR)\main.lst"
	@if exist "$(WORKDIR)\main.src"  \
            $(RM) "$(WORKDIR)\main.src"
	@if exist "$(WORKDIR)\mos-interface.obj"  \
            $(RM) "$(WORKDIR)\mos-interface.obj"
	@if exist "$(WORKDIR)\mos-interface.lis"  \
            $(RM) "$(WORKDIR)\mos-interface.lis"
	@if exist "$(WORKDIR)\mos-interface.lst"  \
            $(RM) "$(WORKDIR)\mos-interface.lst"
	@if exist "$(WORKDIR)\vdp.obj"  \
            $(RM) "$(WORKDIR)\vdp.obj"
	@if exist "$(WORKDIR)\vdp.lis"  \
            $(RM) "$(WORKDIR)\vdp.lis"
	@if exist "$(WORKDIR)\vdp.lst"  \
            $(RM) "$(WORKDIR)\vdp.lst"
	@if exist "$(WORKDIR)\vdp.src"  \
            $(RM) "$(WORKDIR)\vdp.src"
	@if exist "$(WORKDIR)\vdp_audio.obj"  \
            $(RM) "$(WORKDIR)\vdp_audio.obj"
	@if exist "$(WORKDIR)\vdp_audio.lis"  \
            $(RM) "$(WORKDIR)\vdp_audio.lis"
	@if exist "$(WORKDIR)\vdp_audio.lst"  \
            $(RM) "$(WORKDIR)\vdp_audio.lst"
	@if exist "$(WORKDIR)\vdp_audio.src"  \
            $(RM) "$(WORKDIR)\vdp_audio.src"

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR_ESCSPACE)\init.obj  \
            $(WORKDIR_ESCSPACE)\main.obj  \
            $(WORKDIR_ESCSPACE)\mos-interface.obj  \
            $(WORKDIR_ESCSPACE)\vdp.obj  \
            $(WORKDIR_ESCSPACE)\vdp_audio.obj

SpaceBirds: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR_ESCSPACE)\init.obj :  \
            $(PRJDIR_ESCSPACE)\init.asm
	 $(AS) $(ASFLAGS) "$(PRJDIR)\init.asm"

$(WORKDIR_ESCSPACE)\main.obj :  \
            $(PRJDIR_ESCSPACE)\main.c  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\sprites\bird_16x12.h  \
            $(PRJDIR_ESCSPACE)\sprites\bird_32x24_shaded.h  \
            $(PRJDIR_ESCSPACE)\sprites\eggs.h  \
            $(PRJDIR_ESCSPACE)\sprites\explosions.h  \
            $(PRJDIR_ESCSPACE)\sprites\playerShip.h  \
            $(PRJDIR_ESCSPACE)\sprites\title_16x16.h  \
            $(PRJDIR_ESCSPACE)\sprites\ufos.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\vdp.h  \
            $(PRJDIR_ESCSPACE)\vdp_audio.h  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdarg.h  \
            $(INCLUDE_ESCSPACE)\std\Math.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\Stdlib.h  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\main.c"

$(WORKDIR_ESCSPACE)\mos-interface.obj :  \
            $(PRJDIR_ESCSPACE)\mos-interface.asm  \
            $(PRJDIR_ESCSPACE)\mos_api.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\mos-interface.asm"

$(WORKDIR_ESCSPACE)\vdp.obj :  \
            $(PRJDIR_ESCSPACE)\vdp.c  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\vdp.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\vdp.c"

$(WORKDIR_ESCSPACE)\vdp_audio.obj :  \
            $(PRJDIR_ESCSPACE)\vdp_audio.c  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\vdp_audio.c"


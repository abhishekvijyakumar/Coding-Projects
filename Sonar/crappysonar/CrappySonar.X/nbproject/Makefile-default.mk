#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Common/AD.c ../Common/Ascii.c ../Common/BOARD.c ../Common/pwm.c ../Common/serial.c ../Common/timers.c ../Common/ToneGeneration.c ../Common/Buttons.c ping.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2108356922/AD.o ${OBJECTDIR}/_ext/2108356922/Ascii.o ${OBJECTDIR}/_ext/2108356922/BOARD.o ${OBJECTDIR}/_ext/2108356922/pwm.o ${OBJECTDIR}/_ext/2108356922/serial.o ${OBJECTDIR}/_ext/2108356922/timers.o ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o ${OBJECTDIR}/_ext/2108356922/Buttons.o ${OBJECTDIR}/ping.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2108356922/AD.o.d ${OBJECTDIR}/_ext/2108356922/Ascii.o.d ${OBJECTDIR}/_ext/2108356922/BOARD.o.d ${OBJECTDIR}/_ext/2108356922/pwm.o.d ${OBJECTDIR}/_ext/2108356922/serial.o.d ${OBJECTDIR}/_ext/2108356922/timers.o.d ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o.d ${OBJECTDIR}/_ext/2108356922/Buttons.o.d ${OBJECTDIR}/ping.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2108356922/AD.o ${OBJECTDIR}/_ext/2108356922/Ascii.o ${OBJECTDIR}/_ext/2108356922/BOARD.o ${OBJECTDIR}/_ext/2108356922/pwm.o ${OBJECTDIR}/_ext/2108356922/serial.o ${OBJECTDIR}/_ext/2108356922/timers.o ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o ${OBJECTDIR}/_ext/2108356922/Buttons.o ${OBJECTDIR}/ping.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=../Common/AD.c ../Common/Ascii.c ../Common/BOARD.c ../Common/pwm.c ../Common/serial.c ../Common/timers.c ../Common/ToneGeneration.c ../Common/Buttons.c ping.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX340F512H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2108356922/AD.o: ../Common/AD.c  .generated_files/flags/default/85559e40064f9fb11c6d91cfda819a539b65e3cd .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/AD.o.d" -o ${OBJECTDIR}/_ext/2108356922/AD.o ../Common/AD.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/Ascii.o: ../Common/Ascii.c  .generated_files/flags/default/634daad824c106a8bafa5e682ee3723d115195a9 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Ascii.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/Ascii.o.d" -o ${OBJECTDIR}/_ext/2108356922/Ascii.o ../Common/Ascii.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/BOARD.o: ../Common/BOARD.c  .generated_files/flags/default/48aae6f0f31ff6a4dbaa16379c854251aa0f3868 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/BOARD.o.d" -o ${OBJECTDIR}/_ext/2108356922/BOARD.o ../Common/BOARD.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/pwm.o: ../Common/pwm.c  .generated_files/flags/default/7ca2b611851096f4c065e1bbf67fce1cac93be49 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/pwm.o.d" -o ${OBJECTDIR}/_ext/2108356922/pwm.o ../Common/pwm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/serial.o: ../Common/serial.c  .generated_files/flags/default/6c549309e8fcfcdf458cbe19bea0385af69d0ce9 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/serial.o.d" -o ${OBJECTDIR}/_ext/2108356922/serial.o ../Common/serial.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/timers.o: ../Common/timers.c  .generated_files/flags/default/cc6848f683b290e86d64b4debd4d6693fb39a6b1 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/timers.o.d" -o ${OBJECTDIR}/_ext/2108356922/timers.o ../Common/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/ToneGeneration.o: ../Common/ToneGeneration.c  .generated_files/flags/default/d5823b6ff9087f41a73341d249248ce7bf4fa08e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/ToneGeneration.o.d" -o ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o ../Common/ToneGeneration.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/Buttons.o: ../Common/Buttons.c  .generated_files/flags/default/5c75649e29f049aee663ad0e5d16354f56498f7b .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/Buttons.o.d" -o ${OBJECTDIR}/_ext/2108356922/Buttons.o ../Common/Buttons.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ping.o: ping.c  .generated_files/flags/default/30c4f7ae94be1e330e10beaeffb80394c6c2239e .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ping.o.d 
	@${RM} ${OBJECTDIR}/ping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/ping.o.d" -o ${OBJECTDIR}/ping.o ping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f9d6b60c85a56ce2cac77d9f837efa1919234570 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2108356922/AD.o: ../Common/AD.c  .generated_files/flags/default/80ad48ee8adf5dc066aeddcd4c5ed849b24828f5 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/AD.o.d" -o ${OBJECTDIR}/_ext/2108356922/AD.o ../Common/AD.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/Ascii.o: ../Common/Ascii.c  .generated_files/flags/default/56549804244d874ebd5b0de610961e4906f2ae9b .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Ascii.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/Ascii.o.d" -o ${OBJECTDIR}/_ext/2108356922/Ascii.o ../Common/Ascii.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/BOARD.o: ../Common/BOARD.c  .generated_files/flags/default/6055e30bc7aec69254296a14484a9157f3f00d85 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/BOARD.o.d" -o ${OBJECTDIR}/_ext/2108356922/BOARD.o ../Common/BOARD.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/pwm.o: ../Common/pwm.c  .generated_files/flags/default/65c4354aa80e078d4dce023449a8e07fa93df295 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/pwm.o.d" -o ${OBJECTDIR}/_ext/2108356922/pwm.o ../Common/pwm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/serial.o: ../Common/serial.c  .generated_files/flags/default/e196c53ecd38ce93c2db441b2c497682add75eec .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/serial.o.d" -o ${OBJECTDIR}/_ext/2108356922/serial.o ../Common/serial.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/timers.o: ../Common/timers.c  .generated_files/flags/default/24f335d23ec2454d0fc748cf06dda51bc1005ae7 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/timers.o.d" -o ${OBJECTDIR}/_ext/2108356922/timers.o ../Common/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/ToneGeneration.o: ../Common/ToneGeneration.c  .generated_files/flags/default/9f431a437eb237d46d087b3772960a43a0ae6243 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/ToneGeneration.o.d" -o ${OBJECTDIR}/_ext/2108356922/ToneGeneration.o ../Common/ToneGeneration.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2108356922/Buttons.o: ../Common/Buttons.c  .generated_files/flags/default/85da7b35957b5e8bc804a0cf922c03dce3cfc0ee .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}/_ext/2108356922" 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/2108356922/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2108356922/Buttons.o.d" -o ${OBJECTDIR}/_ext/2108356922/Buttons.o ../Common/Buttons.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ping.o: ping.c  .generated_files/flags/default/f78f12df5b5ed22655afdb192af7f54375e8f543 .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ping.o.d 
	@${RM} ${OBJECTDIR}/ping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/ping.o.d" -o ${OBJECTDIR}/ping.o ping.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/884b49d529d198561375f82a760e68de9ffd40cc .generated_files/flags/default/411a0bba36ae87630292d0c795f181b015b09521
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../../ECE167/avijaya1/Common" -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=128,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=128,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/CrappySonar.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

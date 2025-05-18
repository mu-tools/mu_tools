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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/port/plib_port.c ../src/config/default/startup_xc32.c ../src/config/default/initialization.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/exceptions.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/main.c ../src/config/default/bsp/bsp.c ../src/config/default/libc_syscalls.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/rtc/plib_rtc_timer.c ../../../../mu_log/src/mu_log.c ../../../../mu_store/src/mu_vec.c ../../../../mu_store/src/mu_pqueue.c ../../../../mu_store/src/mu_spsc.c ../../../../mu_store/src/mu_queue.c ../../../../mu_store/src/mu_store.c ../../../../mu_store/src/mu_pool.c ../../../../mu_store/src/mu_pvec.c ../../../../mu_thunk/src/mu_thunk.c ../../../../mu_string/src/mu_string.c ../../../../mu_sched/src/mu_sched.c ../src/mu_time_samd21.c ../src/blinky_1.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/tasks.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ${OBJECTDIR}/_ext/745909314/mu_log.o ${OBJECTDIR}/_ext/329491743/mu_vec.o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ${OBJECTDIR}/_ext/329491743/mu_queue.o ${OBJECTDIR}/_ext/329491743/mu_store.o ${OBJECTDIR}/_ext/329491743/mu_pool.o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ${OBJECTDIR}/_ext/827437411/mu_string.o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ${OBJECTDIR}/_ext/1360937237/blinky_1.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/745909314/mu_log.o.d ${OBJECTDIR}/_ext/329491743/mu_vec.o.d ${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d ${OBJECTDIR}/_ext/329491743/mu_spsc.o.d ${OBJECTDIR}/_ext/329491743/mu_queue.o.d ${OBJECTDIR}/_ext/329491743/mu_store.o.d ${OBJECTDIR}/_ext/329491743/mu_pool.o.d ${OBJECTDIR}/_ext/329491743/mu_pvec.o.d ${OBJECTDIR}/_ext/4229052/mu_thunk.o.d ${OBJECTDIR}/_ext/827437411/mu_string.o.d ${OBJECTDIR}/_ext/1524173835/mu_sched.o.d ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d ${OBJECTDIR}/_ext/1360937237/blinky_1.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ${OBJECTDIR}/_ext/745909314/mu_log.o ${OBJECTDIR}/_ext/329491743/mu_vec.o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ${OBJECTDIR}/_ext/329491743/mu_queue.o ${OBJECTDIR}/_ext/329491743/mu_store.o ${OBJECTDIR}/_ext/329491743/mu_pool.o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ${OBJECTDIR}/_ext/827437411/mu_string.o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ${OBJECTDIR}/_ext/1360937237/blinky_1.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/port/plib_port.c ../src/config/default/startup_xc32.c ../src/config/default/initialization.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/exceptions.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/main.c ../src/config/default/bsp/bsp.c ../src/config/default/libc_syscalls.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/rtc/plib_rtc_timer.c ../../../../mu_log/src/mu_log.c ../../../../mu_store/src/mu_vec.c ../../../../mu_store/src/mu_pqueue.c ../../../../mu_store/src/mu_spsc.c ../../../../mu_store/src/mu_queue.c ../../../../mu_store/src/mu_store.c ../../../../mu_store/src/mu_pool.c ../../../../mu_store/src/mu_pvec.c ../../../../mu_thunk/src/mu_thunk.c ../../../../mu_string/src/mu_string.c ../../../../mu_sched/src/mu_sched.c ../src/mu_time_samd21.c ../src/blinky_1.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/tasks.c ../src/app.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21J18A
MP_LINKER_FILE_OPTION=,--script="../src/config/default/ATSAMD21J18A.ld"
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
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/ab5f590708ff90f8ec7c0c717a69595e49ee3713 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/29ccdb9804f794aa678de269dc39f873cf224a76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/871dea6126a0cff57427bf76c33fb331cd6980ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/54e92e33a6d5ad5e1a2993f9ad5545bebbce63f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5d7710c68247595961960b3cb727ac3cbbc270ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/c88842317477bb94109dba765e60e427492ee201 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/4c2f870140cef05453df0e127e1fc807593d12fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/b8b6c1fa823176c73a7ad5d3a79db3d56f3189b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/91e6d52f0f9e0d77639c5161330d18a475119bf8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/973c5dea51370bd8529a6ad7e7c83a474d6445d3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/d92646e22bbbfee9001ae50ce182da23d84876db .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/d7896251b389d26c4e7a638dd648689d0971130 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/570a3b924c4a78bcef45c9766f252c7ef652e871 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o: ../src/config/default/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/default/6b997f379b052a1b4d0d359e7f81ac1e992077c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ../src/config/default/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/745909314/mu_log.o: ../../../../mu_log/src/mu_log.c  .generated_files/flags/default/98f7722c4be8b0bdf7b297d85c92814f9b0cba42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/745909314" 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/745909314/mu_log.o.d" -o ${OBJECTDIR}/_ext/745909314/mu_log.o ../../../../mu_log/src/mu_log.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_vec.o: ../../../../mu_store/src/mu_vec.c  .generated_files/flags/default/715d64a76bd8309b8b3748c1b615b465fa729b4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_vec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_vec.o ../../../../mu_store/src/mu_vec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pqueue.o: ../../../../mu_store/src/mu_pqueue.c  .generated_files/flags/default/b948e1517a09666bd545689c6728cf7e940c8b31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ../../../../mu_store/src/mu_pqueue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_spsc.o: ../../../../mu_store/src/mu_spsc.c  .generated_files/flags/default/22b0d0c8c4f7d4302d814576367b7c6f0776c901 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ../../../../mu_store/src/mu_spsc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_queue.o: ../../../../mu_store/src/mu_queue.c  .generated_files/flags/default/e57507b73493ff49432cb9706fe8c346be83609b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_queue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_queue.o ../../../../mu_store/src/mu_queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_store.o: ../../../../mu_store/src/mu_store.c  .generated_files/flags/default/62abafdfad55a06c86003b6bfe24c77d0dd3b824 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_store.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_store.o ../../../../mu_store/src/mu_store.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pool.o: ../../../../mu_store/src/mu_pool.c  .generated_files/flags/default/b90054348423a86f07e5a0fa143ddf95df07dbb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pool.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pool.o ../../../../mu_store/src/mu_pool.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pvec.o: ../../../../mu_store/src/mu_pvec.c  .generated_files/flags/default/8de193933ad2aa34db8f21a75c4e5eac9385ef3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pvec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ../../../../mu_store/src/mu_pvec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/4229052/mu_thunk.o: ../../../../mu_thunk/src/mu_thunk.c  .generated_files/flags/default/c516a8a8405f646be435b99adf834aae75b37bd7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/4229052" 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o.d 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/4229052/mu_thunk.o.d" -o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ../../../../mu_thunk/src/mu_thunk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/827437411/mu_string.o: ../../../../mu_string/src/mu_string.c  .generated_files/flags/default/8a298c965f13bc4894e87b2199e726e512be172c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/827437411" 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/827437411/mu_string.o.d" -o ${OBJECTDIR}/_ext/827437411/mu_string.o ../../../../mu_string/src/mu_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1524173835/mu_sched.o: ../../../../mu_sched/src/mu_sched.c  .generated_files/flags/default/ce98d82188ca776a1690e171e0798160eb9cc26d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1524173835" 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1524173835/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ../../../../mu_sched/src/mu_sched.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o: ../src/mu_time_samd21.c  .generated_files/flags/default/e5bb7aeac1207b83e62b54712affafc9856e14e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d" -o ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ../src/mu_time_samd21.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/blinky_1.o: ../src/blinky_1.c  .generated_files/flags/default/455e3c20ca092d1256af1cfef5a5bbde6bd7c641 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/blinky_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/blinky_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/blinky_1.o.d" -o ${OBJECTDIR}/_ext/1360937237/blinky_1.o ../src/blinky_1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/b6be0884be6989299e84d0d37a0730c75c4607cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/f26d5e38488b3eccd62b4d01a550b9d2bc83d51b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/bc633a793574b41482248c169ccd99fc84bf6792 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/60e96c0080209f8f86e9b78a0e6872982aa4e364 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/980bebfc4191ceaf63d1bd9c6146d19c7be500af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/1efe7c69712969a16b83069bde447901a26512a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/3c6288b2407d3ba0eec4020f880e8feadc8bbff8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/d1fe15b186e93dd597787fc7d508c23ae11f058f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/9bd00a3135f76b3d8ebef7e02adf7ab353ed2ead .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/11d8f4f5a0f118a76e0e34698d2e4ca022c5aa55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/8e6a5d9f8c6045159305ddd9edc88277a1865318 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/629ba3d05a6c7a396aef0ebcb760c221fd9ca341 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/7bf5a58f50973a1eb174c3297c07663f650b7637 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/ea72ec496a00cfa2b107fbb52e6a90bf7d257f3b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/3c1f0dd0b1f3d54a73382915b1a90b545543a541 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/eda98c78ca04c84fc7a67025132f0df3b654bd19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o: ../src/config/default/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/default/5ccdc6cfd458b72ad27b21ae8c75069a19b07db7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ../src/config/default/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/745909314/mu_log.o: ../../../../mu_log/src/mu_log.c  .generated_files/flags/default/99fc22e91930206ddf64969c3bf1483933bc6c6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/745909314" 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/745909314/mu_log.o.d" -o ${OBJECTDIR}/_ext/745909314/mu_log.o ../../../../mu_log/src/mu_log.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_vec.o: ../../../../mu_store/src/mu_vec.c  .generated_files/flags/default/5f15d04635de836ab10df6e557dd856b0e6a219c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_vec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_vec.o ../../../../mu_store/src/mu_vec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pqueue.o: ../../../../mu_store/src/mu_pqueue.c  .generated_files/flags/default/d7ebe071b3e9f810379bb301aa66c7ee8c65bec3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ../../../../mu_store/src/mu_pqueue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_spsc.o: ../../../../mu_store/src/mu_spsc.c  .generated_files/flags/default/81ca47be595243dc0456a67badd83206284e6c95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ../../../../mu_store/src/mu_spsc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_queue.o: ../../../../mu_store/src/mu_queue.c  .generated_files/flags/default/8c4bf96310b5e327877d91abbcc10cba88e8b989 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_queue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_queue.o ../../../../mu_store/src/mu_queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_store.o: ../../../../mu_store/src/mu_store.c  .generated_files/flags/default/7b75964da4b05ed806d82e11f62e1a26322c6a4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_store.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_store.o ../../../../mu_store/src/mu_store.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pool.o: ../../../../mu_store/src/mu_pool.c  .generated_files/flags/default/f9c164570db22806f8f4deb4af28a07b8c557230 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pool.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pool.o ../../../../mu_store/src/mu_pool.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pvec.o: ../../../../mu_store/src/mu_pvec.c  .generated_files/flags/default/d31ff3abd91731e34e27416210998b9ecb914a04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pvec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ../../../../mu_store/src/mu_pvec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/4229052/mu_thunk.o: ../../../../mu_thunk/src/mu_thunk.c  .generated_files/flags/default/1555ec7e36051767288221e9a9c9e42232e05206 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/4229052" 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o.d 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/4229052/mu_thunk.o.d" -o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ../../../../mu_thunk/src/mu_thunk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/827437411/mu_string.o: ../../../../mu_string/src/mu_string.c  .generated_files/flags/default/7448fbab25d93bdd0f1a160b26f875fe7306d1b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/827437411" 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/827437411/mu_string.o.d" -o ${OBJECTDIR}/_ext/827437411/mu_string.o ../../../../mu_string/src/mu_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1524173835/mu_sched.o: ../../../../mu_sched/src/mu_sched.c  .generated_files/flags/default/b00c096a3484361834fbadf6a1bd9184eca5e8cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1524173835" 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1524173835/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ../../../../mu_sched/src/mu_sched.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o: ../src/mu_time_samd21.c  .generated_files/flags/default/bd963e8366a3e956e8d7f508e63beeca2e2f8796 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d" -o ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ../src/mu_time_samd21.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/blinky_1.o: ../src/blinky_1.c  .generated_files/flags/default/8ab51c7c583caa6a01ae24101c3f0e3bc889455e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/blinky_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/blinky_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/blinky_1.o.d" -o ${OBJECTDIR}/_ext/1360937237/blinky_1.o ../src/blinky_1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/9c142d01d47327498e06eb92c4ab0812393933e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/597d0c1bddc402f86f9aa5c4897e7383d6b1949a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/c64ae19895c11e999786040f2996437b418a099e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../../../../mu_store/inc" -I"../../../../mu_time/inc" -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_string/inc" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/blink-1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

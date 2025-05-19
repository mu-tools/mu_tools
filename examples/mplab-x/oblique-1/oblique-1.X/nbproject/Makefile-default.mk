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
FINAL_IMAGE=${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/mu_time_samd21.c ../src/config/default/bsp/bsp.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/rtc/plib_rtc_timer.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/startup_xc32.c ../src/config/default/initialization.c ../src/config/default/exceptions.c ../src/config/default/interrupts.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../../../../mu_log/src/mu_log.c ../../../../mu_sched/src/mu_sched.c ../../../../mu_store/src/mu_vec.c ../../../../mu_store/src/mu_pqueue.c ../../../../mu_store/src/mu_spsc.c ../../../../mu_store/src/mu_queue.c ../../../../mu_store/src/mu_store.c ../../../../mu_store/src/mu_pool.c ../../../../mu_store/src/mu_pvec.c ../../../../mu_string/src/mu_string.c ../../../../mu_thunk/src/mu_thunk.c ../src/main.c ../src/oblique_1.c ../src/app.c ../src/rand_lcg.c ../src/strategies.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/745909314/mu_log.o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ${OBJECTDIR}/_ext/329491743/mu_vec.o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ${OBJECTDIR}/_ext/329491743/mu_queue.o ${OBJECTDIR}/_ext/329491743/mu_store.o ${OBJECTDIR}/_ext/329491743/mu_pool.o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ${OBJECTDIR}/_ext/827437411/mu_string.o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/oblique_1.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/rand_lcg.o ${OBJECTDIR}/_ext/1360937237/strategies.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d ${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/60167341/plib_eic.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/745909314/mu_log.o.d ${OBJECTDIR}/_ext/1524173835/mu_sched.o.d ${OBJECTDIR}/_ext/329491743/mu_vec.o.d ${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d ${OBJECTDIR}/_ext/329491743/mu_spsc.o.d ${OBJECTDIR}/_ext/329491743/mu_queue.o.d ${OBJECTDIR}/_ext/329491743/mu_store.o.d ${OBJECTDIR}/_ext/329491743/mu_pool.o.d ${OBJECTDIR}/_ext/329491743/mu_pvec.o.d ${OBJECTDIR}/_ext/827437411/mu_string.o.d ${OBJECTDIR}/_ext/4229052/mu_thunk.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/oblique_1.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/rand_lcg.o.d ${OBJECTDIR}/_ext/1360937237/strategies.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/60167341/plib_eic.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/745909314/mu_log.o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ${OBJECTDIR}/_ext/329491743/mu_vec.o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ${OBJECTDIR}/_ext/329491743/mu_queue.o ${OBJECTDIR}/_ext/329491743/mu_store.o ${OBJECTDIR}/_ext/329491743/mu_pool.o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ${OBJECTDIR}/_ext/827437411/mu_string.o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/oblique_1.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/rand_lcg.o ${OBJECTDIR}/_ext/1360937237/strategies.o

# Source Files
SOURCEFILES=../src/mu_time_samd21.c ../src/config/default/bsp/bsp.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/eic/plib_eic.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/rtc/plib_rtc_timer.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/startup_xc32.c ../src/config/default/initialization.c ../src/config/default/exceptions.c ../src/config/default/interrupts.c ../src/config/default/libc_syscalls.c ../src/config/default/tasks.c ../../../../mu_log/src/mu_log.c ../../../../mu_sched/src/mu_sched.c ../../../../mu_store/src/mu_vec.c ../../../../mu_store/src/mu_pqueue.c ../../../../mu_store/src/mu_spsc.c ../../../../mu_store/src/mu_queue.c ../../../../mu_store/src/mu_store.c ../../../../mu_store/src/mu_pool.c ../../../../mu_store/src/mu_pvec.c ../../../../mu_string/src/mu_string.c ../../../../mu_thunk/src/mu_thunk.c ../src/main.c ../src/oblique_1.c ../src/app.c ../src/rand_lcg.c ../src/strategies.c

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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o: ../src/mu_time_samd21.c  .generated_files/flags/default/57326393b2d273ef129267eabf6c3c6e9b06f346 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d" -o ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ../src/mu_time_samd21.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/af03def0640a29e39e395b0d97320cc880bd2223 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/b5ccaac700db515f9271eaede3c90a1aa5ff6cba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/95a62a856dc3fa2d2405b7beefc9a58e4d5e25e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/463b8fd9e574a75e67e94834c0323be0fc4fd715 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/79c743a5c4b34d3e7f70473aab91b681319f7c83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/60e5645aeaac17612b9813b168e1a09c2f9d95f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/f90c5fe167cf98b1aee90a076d5df8697e151689 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o: ../src/config/default/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/default/bfe75ea41b7b4c070142eb2e80edd50def22410c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ../src/config/default/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/default/41d656e90f0cd0b991b520cb25a74f662363cc8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/3b20265ea9f21057e4879ddddbd7ad0aa71e0d4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/60306594821700b4c3c4532c2a360b117629ddf2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/214903580c3fa801142cd7c64b122186719739f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/e6a2a9aeb78f73217296ffc463f75a0ac6811e99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/3f75c12f779cce4964680dd7b1c85ed8850930c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/f8361ed0d1e978cca72a1f0eead749daf3bd786d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/9f0c0b2136960082d995724b37afac0a01d0818 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/a612a24ddf957d151a2bb582c153577340dc18e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/745909314/mu_log.o: ../../../../mu_log/src/mu_log.c  .generated_files/flags/default/e4a1223db6385e7f2c6db65577e1a40ca6066d04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/745909314" 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/745909314/mu_log.o.d" -o ${OBJECTDIR}/_ext/745909314/mu_log.o ../../../../mu_log/src/mu_log.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1524173835/mu_sched.o: ../../../../mu_sched/src/mu_sched.c  .generated_files/flags/default/79f66f11653a813549f926b269a91525938f54e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1524173835" 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1524173835/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ../../../../mu_sched/src/mu_sched.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_vec.o: ../../../../mu_store/src/mu_vec.c  .generated_files/flags/default/7fc07619980897ffee3e826f4255ac2532a0dc7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_vec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_vec.o ../../../../mu_store/src/mu_vec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pqueue.o: ../../../../mu_store/src/mu_pqueue.c  .generated_files/flags/default/fcfc5c1a23f8c30ecdcf9d3f23b140d8d5d50961 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ../../../../mu_store/src/mu_pqueue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_spsc.o: ../../../../mu_store/src/mu_spsc.c  .generated_files/flags/default/70d3a91220d4037a0fc2c0a7187cb46ea5d6b2cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ../../../../mu_store/src/mu_spsc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_queue.o: ../../../../mu_store/src/mu_queue.c  .generated_files/flags/default/cd72aba2b9ef03b6cf8627e864885e434569a167 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_queue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_queue.o ../../../../mu_store/src/mu_queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_store.o: ../../../../mu_store/src/mu_store.c  .generated_files/flags/default/73f1d988399ef291380e629c9c4b7552a85a1d1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_store.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_store.o ../../../../mu_store/src/mu_store.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pool.o: ../../../../mu_store/src/mu_pool.c  .generated_files/flags/default/3e4eb2b02e203be178bf5e7dd34d9868322ef012 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pool.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pool.o ../../../../mu_store/src/mu_pool.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pvec.o: ../../../../mu_store/src/mu_pvec.c  .generated_files/flags/default/df6b48bebad71ae6807b0724188f2452473be942 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pvec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ../../../../mu_store/src/mu_pvec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/827437411/mu_string.o: ../../../../mu_string/src/mu_string.c  .generated_files/flags/default/19aa392ed6a76e399f2c5b07f1c1e0aeeaacf585 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/827437411" 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/827437411/mu_string.o.d" -o ${OBJECTDIR}/_ext/827437411/mu_string.o ../../../../mu_string/src/mu_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/4229052/mu_thunk.o: ../../../../mu_thunk/src/mu_thunk.c  .generated_files/flags/default/db9aa933956b2e1f186d06515f1d8a8704e5b4ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/4229052" 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o.d 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/4229052/mu_thunk.o.d" -o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ../../../../mu_thunk/src/mu_thunk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/51fd9e58c60490440b16e8663cd2d7f469ecd4cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/oblique_1.o: ../src/oblique_1.c  .generated_files/flags/default/23cc3ed28f25d451f04e2adaae9a6ac59da29057 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oblique_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oblique_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/oblique_1.o.d" -o ${OBJECTDIR}/_ext/1360937237/oblique_1.o ../src/oblique_1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/d56276f95b3cfe03409d44e2f0e773a0643d0f07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rand_lcg.o: ../src/rand_lcg.c  .generated_files/flags/default/5f38e62d73b773669e315d9d11f2bbde22f8f60d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rand_lcg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rand_lcg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rand_lcg.o.d" -o ${OBJECTDIR}/_ext/1360937237/rand_lcg.o ../src/rand_lcg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/strategies.o: ../src/strategies.c  .generated_files/flags/default/37d7d45335f89198e17eb78094503278b4b57451 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strategies.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strategies.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/strategies.o.d" -o ${OBJECTDIR}/_ext/1360937237/strategies.o ../src/strategies.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o: ../src/mu_time_samd21.c  .generated_files/flags/default/399dd4fd86cb21ec9741c0703f8468c1125a0847 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o.d" -o ${OBJECTDIR}/_ext/1360937237/mu_time_samd21.o ../src/mu_time_samd21.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  .generated_files/flags/default/9606405eb72b63ff21bb3f8554a7aabbf604e486 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/bc56e7b2152243ce667b8554355c13064ffefbd2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167341/plib_eic.o: ../src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/f05846573e7effa4054fc9b1efd1ddfea4402d39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167341" 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167341/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60167341/plib_eic.o.d" -o ${OBJECTDIR}/_ext/60167341/plib_eic.o ../src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/7d53234eec92701be423645d3e710237c69f508e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/e1f3af59444a1c0906097a3e43132e648b69cc81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/873c4a8a78ed8ee32e2bb0fa3e66ed7f9dc68c63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/b843adb28849dbfb3ebdd2a85dc36439336c5e50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o: ../src/config/default/peripheral/rtc/plib_rtc_timer.c  .generated_files/flags/default/9a861d4389c1cf44fac07a15eb4b7bd2cf65e7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60180175" 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o.d" -o ${OBJECTDIR}/_ext/60180175/plib_rtc_timer.o ../src/config/default/peripheral/rtc/plib_rtc_timer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/default/b924f3520fcce77ebf07e786d4d99dd32ab0ff40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/7021d30c2ae3147ac551315e8933ec9996185d2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/7adaba425e36495b3bac79f6a487da8981cd3c3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/f063b105e6def18092811a522f2f0f388f4adf9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/5cd50939e82dd9d487fdac35edbe788f826eccf3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/2dcabc6bafd439c81bc5329b41fee9b4481ac313 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/723fd19dbadf5c3ee4eaa60f94adf8fa5dbc1fc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/617cd093b10878febf674f8eeb7e4b3f6f9880c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/ad3d13499b14dec0725cd3ff43c88686443e0fe3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/745909314/mu_log.o: ../../../../mu_log/src/mu_log.c  .generated_files/flags/default/e1c017a33738e58475e71000ff447f0b494f6821 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/745909314" 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o.d 
	@${RM} ${OBJECTDIR}/_ext/745909314/mu_log.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/745909314/mu_log.o.d" -o ${OBJECTDIR}/_ext/745909314/mu_log.o ../../../../mu_log/src/mu_log.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1524173835/mu_sched.o: ../../../../mu_sched/src/mu_sched.c  .generated_files/flags/default/f8b095337fd3616c4c514fa7a24c77674513e844 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1524173835" 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o.d 
	@${RM} ${OBJECTDIR}/_ext/1524173835/mu_sched.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1524173835/mu_sched.o.d" -o ${OBJECTDIR}/_ext/1524173835/mu_sched.o ../../../../mu_sched/src/mu_sched.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_vec.o: ../../../../mu_store/src/mu_vec.c  .generated_files/flags/default/d0bf5c76817ab57f8684f0dc018e3df0addabd5a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_vec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_vec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_vec.o ../../../../mu_store/src/mu_vec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pqueue.o: ../../../../mu_store/src/mu_pqueue.c  .generated_files/flags/default/a5feafc7a8615b574b937cbf8162a759239e0bcd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pqueue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pqueue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pqueue.o ../../../../mu_store/src/mu_pqueue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_spsc.o: ../../../../mu_store/src/mu_spsc.c  .generated_files/flags/default/a992f1777e1c0d7b9d4aa92c094c636282dfee3b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_spsc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_spsc.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_spsc.o ../../../../mu_store/src/mu_spsc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_queue.o: ../../../../mu_store/src/mu_queue.c  .generated_files/flags/default/8475a96b32e02a7eebe53ac1f71076a9bc63f976 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_queue.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_queue.o ../../../../mu_store/src/mu_queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_store.o: ../../../../mu_store/src/mu_store.c  .generated_files/flags/default/4ac894adad87bc1c889e0ac800593ec771888ee7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_store.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_store.o ../../../../mu_store/src/mu_store.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pool.o: ../../../../mu_store/src/mu_pool.c  .generated_files/flags/default/afea5064c0ed57101ee9d3f1a3f9085a267235ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pool.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pool.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pool.o ../../../../mu_store/src/mu_pool.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/329491743/mu_pvec.o: ../../../../mu_store/src/mu_pvec.c  .generated_files/flags/default/39627e507dad6297358fd31d055603481f039b90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/329491743" 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o.d 
	@${RM} ${OBJECTDIR}/_ext/329491743/mu_pvec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/329491743/mu_pvec.o.d" -o ${OBJECTDIR}/_ext/329491743/mu_pvec.o ../../../../mu_store/src/mu_pvec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/827437411/mu_string.o: ../../../../mu_string/src/mu_string.c  .generated_files/flags/default/c78a75142a0e8bbd9acdbc5bb41b3d68fa00ba4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/827437411" 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/827437411/mu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/827437411/mu_string.o.d" -o ${OBJECTDIR}/_ext/827437411/mu_string.o ../../../../mu_string/src/mu_string.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/4229052/mu_thunk.o: ../../../../mu_thunk/src/mu_thunk.c  .generated_files/flags/default/728726c408084a8840e82aed2305b481723a544a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/4229052" 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o.d 
	@${RM} ${OBJECTDIR}/_ext/4229052/mu_thunk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/4229052/mu_thunk.o.d" -o ${OBJECTDIR}/_ext/4229052/mu_thunk.o ../../../../mu_thunk/src/mu_thunk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/cde553265eb681c9b627068d00ecbb9656d39c8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/oblique_1.o: ../src/oblique_1.c  .generated_files/flags/default/a12c78ac3aacb71d421795805766d5af725b9111 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oblique_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/oblique_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/oblique_1.o.d" -o ${OBJECTDIR}/_ext/1360937237/oblique_1.o ../src/oblique_1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/813709ca8ee0da3cd44bd1c3ded4b0a64831180e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/rand_lcg.o: ../src/rand_lcg.c  .generated_files/flags/default/476fc024c222cc312631a1c85653e4902772967b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rand_lcg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rand_lcg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rand_lcg.o.d" -o ${OBJECTDIR}/_ext/1360937237/rand_lcg.o ../src/rand_lcg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/strategies.o: ../src/strategies.c  .generated_files/flags/default/db18efe4448407c07c215fdc7a0cc1ea9674799e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strategies.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strategies.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../../mu_log/inc" -I"../../../../mu_sched/inc" -I"../../../../mu_store/inc" -I"../../../../mu_string/inc" -I"../../../../mu_thunk/inc" -I"../../../../mu_time/inc" -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMD21J18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/strategies.o.d" -o ${OBJECTDIR}/_ext/1360937237/strategies.o ../src/strategies.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -DMU_LOG_ENABLE_FORMATTED -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21J18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/oblique-1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

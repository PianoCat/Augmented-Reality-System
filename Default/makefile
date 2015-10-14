################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := del

# All of the sources participating in the build are defined here
-include sources.mk
-include obj/local/armeabi/objs-debug/ptam/__/installfiles/subdir.mk
-include obj/local/armeabi/objs-debug/ptam/subdir.mk
-include obj/local/armeabi/objs-debug/gvars3/__/installfiles/src/subdir.mk
-include obj/local/armeabi/objs-debug/f2c/subdir.mk
-include obj/local/armeabi/objs-debug/cvd/__/installfiles/pnm_src/subdir.mk
-include obj/local/armeabi/objs-debug/cvd/__/installfiles/cvd_src/thread/subdir.mk
-include obj/local/armeabi/objs-debug/cvd/__/installfiles/cvd_src/noarch/subdir.mk
-include obj/local/armeabi/objs-debug/cvd/__/installfiles/cvd_src/fast/subdir.mk
-include obj/local/armeabi/objs-debug/cvd/__/installfiles/cvd_src/OSX/subdir.mk
-include obj/local/armeabi/objs-debug/cvd/__/installfiles/cvd_src/Linux/subdir.mk
-include obj/local/armeabi/objs-debug/cvd/__/installfiles/cvd_src/subdir.mk
-include obj/local/armeabi/objs-debug/cpufeatures/subdir.mk
-include obj/local/armeabi/objs-debug/clapack/__/INSTALL/subdir.mk
-include obj/local/armeabi/objs-debug/clapack/subdir.mk
-include obj/local/armeabi/objs-debug/blas/subdir.mk
-include ndk-modules/lapack/jni/clapack/TESTING/MATGEN/subdir.mk
-include ndk-modules/lapack/jni/clapack/TESTING/LIN/subdir.mk
-include ndk-modules/lapack/jni/clapack/TESTING/EIG/subdir.mk
-include ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/subdir.mk
-include ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/subdir.mk
-include ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/subdir.mk
-include ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/subdir.mk
-include ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/subdir.mk
-include ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/subdir.mk
-include ndk-modules/lapack/jni/clapack/SRC/subdir.mk
-include ndk-modules/lapack/jni/clapack/INSTALL/subdir.mk
-include ndk-modules/lapack/jni/clapack/F2CLIBS/libf2c/subdir.mk
-include ndk-modules/lapack/jni/clapack/BLAS/TESTING/subdir.mk
-include ndk-modules/lapack/jni/clapack/BLAS/SRC/subdir.mk
-include ndk-modules/lapack/jni/subdir.mk
-include ndk-modules/gvars3/jni/subdir.mk
-include ndk-modules/gvars3/installfiles/src/subdir.mk
-include ndk-modules/gvars3/installfiles/subdir.mk
-include ndk-modules/cvd/jni/subdir.mk
-include ndk-modules/cvd/installfiles/test/subdir.mk
-include ndk-modules/cvd/installfiles/python/CVD/subdir.mk
-include ndk-modules/cvd/installfiles/progs/subdir.mk
-include ndk-modules/cvd/installfiles/pnm_src/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/thread/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/posix/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/nothread/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/noarch/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/i686/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/fast/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/Win32/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/SSE2/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/OSX/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/NEON/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/MMX/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/Linux/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/IRIX/subdir.mk
-include ndk-modules/cvd/installfiles/cvd_src/subdir.mk
-include ndk-modules/cvd/installfiles/cvd/Linux/subdir.mk
-include ndk-modules/cvd/installfiles/subdir.mk
-include ndk-modules/TooN/jni/subdir.mk
-include jni/PTAM/Build/Win32/subdir.mk
-include jni/PTAM/Build/OSX/subdir.mk
-include jni/PTAM/Build/Linux/subdir.mk
-include jni/PTAM/subdir.mk
-include jni/subdir.mk
-include installfiles/Build/Win32/subdir.mk
-include installfiles/Build/OSX/subdir.mk
-include installfiles/Build/Linux/subdir.mk
-include installfiles/subdir.mk
-include assets/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: PTAMActivity

# Tool invocations
PTAMActivity: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	g++  -o "PTAMActivity" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(CXX_DEPS)$(OBJS)$(CPP_DEPS)$(C_DEPS) PTAMActivity
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

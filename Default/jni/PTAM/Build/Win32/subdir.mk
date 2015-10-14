################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../jni/PTAM/Build/Win32/VideoSource_Win32_CMU1394.cc 

CC_DEPS += \
./jni/PTAM/Build/Win32/VideoSource_Win32_CMU1394.d 

OBJS += \
./jni/PTAM/Build/Win32/VideoSource_Win32_CMU1394.o 


# Each subdirectory must supply rules for building sources it contributes
jni/PTAM/Build/Win32/%.o: ../jni/PTAM/Build/Win32/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../jni/PTAM/Build/OSX/VideoSource_OSX.cc 

CC_DEPS += \
./jni/PTAM/Build/OSX/VideoSource_OSX.d 

OBJS += \
./jni/PTAM/Build/OSX/VideoSource_OSX.o 


# Each subdirectory must supply rules for building sources it contributes
jni/PTAM/Build/OSX/%.o: ../jni/PTAM/Build/OSX/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



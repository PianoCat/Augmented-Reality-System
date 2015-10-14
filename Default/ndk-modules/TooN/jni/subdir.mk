################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/TooN/jni/hello-toon.cc 

CC_DEPS += \
./ndk-modules/TooN/jni/hello-toon.d 

OBJS += \
./ndk-modules/TooN/jni/hello-toon.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/TooN/jni/%.o: ../ndk-modules/TooN/jni/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/cvd/jni/hello-libcvd.cc 

CC_DEPS += \
./ndk-modules/cvd/jni/hello-libcvd.d 

OBJS += \
./ndk-modules/cvd/jni/hello-libcvd.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/jni/%.o: ../ndk-modules/cvd/jni/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



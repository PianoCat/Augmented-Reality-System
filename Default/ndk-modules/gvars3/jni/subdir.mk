################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/gvars3/jni/hello-gvars.cc 

CC_DEPS += \
./ndk-modules/gvars3/jni/hello-gvars.d 

OBJS += \
./ndk-modules/gvars3/jni/hello-gvars.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/gvars3/jni/%.o: ../ndk-modules/gvars3/jni/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



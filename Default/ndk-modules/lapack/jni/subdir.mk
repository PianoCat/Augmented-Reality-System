################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ndk-modules/lapack/jni/testclapack.cpp 

OBJS += \
./ndk-modules/lapack/jni/testclapack.o 

CPP_DEPS += \
./ndk-modules/lapack/jni/testclapack.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/%.o: ../ndk-modules/lapack/jni/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/cvd/installfiles/subimage_test.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/subimage_test.d 

OBJS += \
./ndk-modules/cvd/installfiles/subimage_test.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/%.o: ../ndk-modules/cvd/installfiles/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



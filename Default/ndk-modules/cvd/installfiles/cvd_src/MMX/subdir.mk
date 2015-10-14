################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/MMX/half_sample.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/MMX/half_sample.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/MMX/half_sample.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/MMX/%.o: ../ndk-modules/cvd/installfiles/cvd_src/MMX/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



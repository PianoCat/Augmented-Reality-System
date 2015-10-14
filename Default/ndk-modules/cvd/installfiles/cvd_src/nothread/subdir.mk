################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/nothread/runnable_batch.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/nothread/runnable_batch.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/nothread/runnable_batch.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/nothread/%.o: ../ndk-modules/cvd/installfiles/cvd_src/nothread/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



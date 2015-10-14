################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/gvars3/installfiles/main.cc 

CC_DEPS += \
./ndk-modules/gvars3/installfiles/main.d 

OBJS += \
./ndk-modules/gvars3/installfiles/main.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/gvars3/installfiles/%.o: ../ndk-modules/gvars3/installfiles/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



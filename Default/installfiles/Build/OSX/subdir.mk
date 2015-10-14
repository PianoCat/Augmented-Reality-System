################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../installfiles/Build/OSX/VideoSource_OSX.cc 

CC_DEPS += \
./installfiles/Build/OSX/VideoSource_OSX.d 

OBJS += \
./installfiles/Build/OSX/VideoSource_OSX.o 


# Each subdirectory must supply rules for building sources it contributes
installfiles/Build/OSX/%.o: ../installfiles/Build/OSX/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



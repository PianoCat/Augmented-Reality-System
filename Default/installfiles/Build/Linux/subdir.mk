################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../installfiles/Build/Linux/VideoSource_Linux_DV.cc \
../installfiles/Build/Linux/VideoSource_Linux_V4L.cc 

CC_DEPS += \
./installfiles/Build/Linux/VideoSource_Linux_DV.d \
./installfiles/Build/Linux/VideoSource_Linux_V4L.d 

OBJS += \
./installfiles/Build/Linux/VideoSource_Linux_DV.o \
./installfiles/Build/Linux/VideoSource_Linux_V4L.o 


# Each subdirectory must supply rules for building sources it contributes
installfiles/Build/Linux/%.o: ../installfiles/Build/Linux/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



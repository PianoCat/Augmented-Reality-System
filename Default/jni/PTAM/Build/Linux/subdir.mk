################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../jni/PTAM/Build/Linux/VideoSource_Linux_DV.cc \
../jni/PTAM/Build/Linux/VideoSource_Linux_V4L.cc 

CC_DEPS += \
./jni/PTAM/Build/Linux/VideoSource_Linux_DV.d \
./jni/PTAM/Build/Linux/VideoSource_Linux_V4L.d 

OBJS += \
./jni/PTAM/Build/Linux/VideoSource_Linux_DV.o \
./jni/PTAM/Build/Linux/VideoSource_Linux_V4L.o 


# Each subdirectory must supply rules for building sources it contributes
jni/PTAM/Build/Linux/%.o: ../jni/PTAM/Build/Linux/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



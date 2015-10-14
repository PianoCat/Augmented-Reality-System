################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../ndk-modules/cvd/installfiles/cvd/Linux/capture_logic.cxx 

CXX_DEPS += \
./ndk-modules/cvd/installfiles/cvd/Linux/capture_logic.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd/Linux/capture_logic.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd/Linux/%.o: ../ndk-modules/cvd/installfiles/cvd/Linux/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



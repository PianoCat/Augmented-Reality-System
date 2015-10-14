################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/Win32/glwindow.cpp \
../ndk-modules/cvd/installfiles/cvd_src/Win32/win32.cpp 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/Win32/glwindow.o \
./ndk-modules/cvd/installfiles/cvd_src/Win32/win32.o 

CPP_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/Win32/glwindow.d \
./ndk-modules/cvd/installfiles/cvd_src/Win32/win32.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/Win32/%.o: ../ndk-modules/cvd/installfiles/cvd_src/Win32/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



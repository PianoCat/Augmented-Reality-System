################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/OSX/videosource_noqtbuffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/OSX/videosource_qtbuffer.cc 

CPP_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/OSX/qtbuffer.cpp 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/OSX/videosource_noqtbuffer.d \
./ndk-modules/cvd/installfiles/cvd_src/OSX/videosource_qtbuffer.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/OSX/qtbuffer.o \
./ndk-modules/cvd/installfiles/cvd_src/OSX/videosource_noqtbuffer.o \
./ndk-modules/cvd/installfiles/cvd_src/OSX/videosource_qtbuffer.o 

CPP_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/OSX/qtbuffer.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/OSX/%.o: ../ndk-modules/cvd/installfiles/cvd_src/OSX/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/cvd_src/OSX/%.o: ../ndk-modules/cvd/installfiles/cvd_src/OSX/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



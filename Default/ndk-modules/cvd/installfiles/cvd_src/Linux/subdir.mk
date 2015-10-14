################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer3_dc1394v1.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer3_dc1394v2.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/v4l1buffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/v4l2buffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/v4lbuffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/v4lcontrol.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_nov4l1buffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_nov4lbuffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_v4l1buffer.cc \
../ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_v4lbuffer.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer3_dc1394v1.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer3_dc1394v2.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4l1buffer.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4l2buffer.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4lbuffer.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4lcontrol.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_nov4l1buffer.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_nov4lbuffer.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_v4l1buffer.d \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_v4lbuffer.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer3_dc1394v1.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/dvbuffer3_dc1394v2.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4l1buffer.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4l2buffer.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4lbuffer.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/v4lcontrol.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_nov4l1buffer.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_nov4lbuffer.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_v4l1buffer.o \
./ndk-modules/cvd/installfiles/cvd_src/Linux/videosource_v4lbuffer.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/Linux/%.o: ../ndk-modules/cvd/installfiles/cvd_src/Linux/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../ndk-modules/cvd/installfiles/test/bayer_test.cxx \
../ndk-modules/cvd/installfiles/test/diskbuffer2.cxx \
../ndk-modules/cvd/installfiles/test/dvbuffer3_bayerrgb.cxx \
../ndk-modules/cvd/installfiles/test/dvbuffer3_mono.cxx \
../ndk-modules/cvd/installfiles/test/dvbuffer_controls.cxx \
../ndk-modules/cvd/installfiles/test/dvbuffer_mono.cxx \
../ndk-modules/cvd/installfiles/test/dvbuffer_rgb.cxx \
../ndk-modules/cvd/installfiles/test/dvbuffer_yuvrgb.cxx \
../ndk-modules/cvd/installfiles/test/fast_test.cxx \
../ndk-modules/cvd/installfiles/test/o2buffer.cxx \
../ndk-modules/cvd/installfiles/test/test_images.cxx \
../ndk-modules/cvd/installfiles/test/v4l1buffer_bayer.cxx \
../ndk-modules/cvd/installfiles/test/v4l1buffer_mono.cxx \
../ndk-modules/cvd/installfiles/test/v4l1buffer_rgb.cxx \
../ndk-modules/cvd/installfiles/test/v4l2buffer.cxx \
../ndk-modules/cvd/installfiles/test/v4lbuffer_bayerrgb.cxx \
../ndk-modules/cvd/installfiles/test/v4lbuffer_mono.cxx \
../ndk-modules/cvd/installfiles/test/videoprog.cxx 

CC_SRCS += \
../ndk-modules/cvd/installfiles/test/floodfill_test.cc 

CPP_SRCS += \
../ndk-modules/cvd/installfiles/test/font.cpp 

CC_DEPS += \
./ndk-modules/cvd/installfiles/test/floodfill_test.d 

CXX_DEPS += \
./ndk-modules/cvd/installfiles/test/bayer_test.d \
./ndk-modules/cvd/installfiles/test/diskbuffer2.d \
./ndk-modules/cvd/installfiles/test/dvbuffer3_bayerrgb.d \
./ndk-modules/cvd/installfiles/test/dvbuffer3_mono.d \
./ndk-modules/cvd/installfiles/test/dvbuffer_controls.d \
./ndk-modules/cvd/installfiles/test/dvbuffer_mono.d \
./ndk-modules/cvd/installfiles/test/dvbuffer_rgb.d \
./ndk-modules/cvd/installfiles/test/dvbuffer_yuvrgb.d \
./ndk-modules/cvd/installfiles/test/fast_test.d \
./ndk-modules/cvd/installfiles/test/o2buffer.d \
./ndk-modules/cvd/installfiles/test/test_images.d \
./ndk-modules/cvd/installfiles/test/v4l1buffer_bayer.d \
./ndk-modules/cvd/installfiles/test/v4l1buffer_mono.d \
./ndk-modules/cvd/installfiles/test/v4l1buffer_rgb.d \
./ndk-modules/cvd/installfiles/test/v4l2buffer.d \
./ndk-modules/cvd/installfiles/test/v4lbuffer_bayerrgb.d \
./ndk-modules/cvd/installfiles/test/v4lbuffer_mono.d \
./ndk-modules/cvd/installfiles/test/videoprog.d 

OBJS += \
./ndk-modules/cvd/installfiles/test/bayer_test.o \
./ndk-modules/cvd/installfiles/test/diskbuffer2.o \
./ndk-modules/cvd/installfiles/test/dvbuffer3_bayerrgb.o \
./ndk-modules/cvd/installfiles/test/dvbuffer3_mono.o \
./ndk-modules/cvd/installfiles/test/dvbuffer_controls.o \
./ndk-modules/cvd/installfiles/test/dvbuffer_mono.o \
./ndk-modules/cvd/installfiles/test/dvbuffer_rgb.o \
./ndk-modules/cvd/installfiles/test/dvbuffer_yuvrgb.o \
./ndk-modules/cvd/installfiles/test/fast_test.o \
./ndk-modules/cvd/installfiles/test/floodfill_test.o \
./ndk-modules/cvd/installfiles/test/font.o \
./ndk-modules/cvd/installfiles/test/o2buffer.o \
./ndk-modules/cvd/installfiles/test/test_images.o \
./ndk-modules/cvd/installfiles/test/v4l1buffer_bayer.o \
./ndk-modules/cvd/installfiles/test/v4l1buffer_mono.o \
./ndk-modules/cvd/installfiles/test/v4l1buffer_rgb.o \
./ndk-modules/cvd/installfiles/test/v4l2buffer.o \
./ndk-modules/cvd/installfiles/test/v4lbuffer_bayerrgb.o \
./ndk-modules/cvd/installfiles/test/v4lbuffer_mono.o \
./ndk-modules/cvd/installfiles/test/videoprog.o 

CPP_DEPS += \
./ndk-modules/cvd/installfiles/test/font.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/test/%.o: ../ndk-modules/cvd/installfiles/test/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/test/%.o: ../ndk-modules/cvd/installfiles/test/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/test/%.o: ../ndk-modules/cvd/installfiles/test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



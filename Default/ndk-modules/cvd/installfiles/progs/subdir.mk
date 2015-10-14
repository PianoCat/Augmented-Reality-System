################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../ndk-modules/cvd/installfiles/progs/calibrate.cxx \
../ndk-modules/cvd/installfiles/progs/cvd_display_image.cxx \
../ndk-modules/cvd/installfiles/progs/cvd_image_viewer.cxx \
../ndk-modules/cvd/installfiles/progs/qtkit_ice_source.cxx \
../ndk-modules/cvd/installfiles/progs/se3_exp.cxx \
../ndk-modules/cvd/installfiles/progs/se3_inv.cxx \
../ndk-modules/cvd/installfiles/progs/se3_ln.cxx \
../ndk-modules/cvd/installfiles/progs/se3_post_mul.cxx \
../ndk-modules/cvd/installfiles/progs/se3_pre_mul.cxx 

CC_SRCS += \
../ndk-modules/cvd/installfiles/progs/video_play_bw.cc \
../ndk-modules/cvd/installfiles/progs/video_play_source.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/progs/video_play_bw.d \
./ndk-modules/cvd/installfiles/progs/video_play_source.d 

CXX_DEPS += \
./ndk-modules/cvd/installfiles/progs/calibrate.d \
./ndk-modules/cvd/installfiles/progs/cvd_display_image.d \
./ndk-modules/cvd/installfiles/progs/cvd_image_viewer.d \
./ndk-modules/cvd/installfiles/progs/qtkit_ice_source.d \
./ndk-modules/cvd/installfiles/progs/se3_exp.d \
./ndk-modules/cvd/installfiles/progs/se3_inv.d \
./ndk-modules/cvd/installfiles/progs/se3_ln.d \
./ndk-modules/cvd/installfiles/progs/se3_post_mul.d \
./ndk-modules/cvd/installfiles/progs/se3_pre_mul.d 

OBJS += \
./ndk-modules/cvd/installfiles/progs/calibrate.o \
./ndk-modules/cvd/installfiles/progs/cvd_display_image.o \
./ndk-modules/cvd/installfiles/progs/cvd_image_viewer.o \
./ndk-modules/cvd/installfiles/progs/qtkit_ice_source.o \
./ndk-modules/cvd/installfiles/progs/se3_exp.o \
./ndk-modules/cvd/installfiles/progs/se3_inv.o \
./ndk-modules/cvd/installfiles/progs/se3_ln.o \
./ndk-modules/cvd/installfiles/progs/se3_post_mul.o \
./ndk-modules/cvd/installfiles/progs/se3_pre_mul.o \
./ndk-modules/cvd/installfiles/progs/video_play_bw.o \
./ndk-modules/cvd/installfiles/progs/video_play_source.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/progs/%.o: ../ndk-modules/cvd/installfiles/progs/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/progs/%.o: ../ndk-modules/cvd/installfiles/progs/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



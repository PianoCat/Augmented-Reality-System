################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_UPPER_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/i686/yuv411_to_stuff_MMX.C \
../ndk-modules/cvd/installfiles/cvd_src/i686/yuv411_to_stuff_MMX_64.C 

CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/i686/convert_rgb_to_y.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/convolve_gaussian.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/gradient.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/median_3x3.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/utility_byte_differences.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/utility_double_int.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/utility_float.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/yuv420p_to_rgb_runner.cc \
../ndk-modules/cvd/installfiles/cvd_src/i686/yuv422_wrapper.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/i686/convert_rgb_to_y.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/convolve_gaussian.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/gradient.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/median_3x3.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/utility_byte_differences.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/utility_double_int.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/utility_float.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv420p_to_rgb_runner.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv422_wrapper.d 

C_UPPER_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv411_to_stuff_MMX.d \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv411_to_stuff_MMX_64.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/i686/convert_rgb_to_y.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/convolve_gaussian.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/gradient.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/median_3x3.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/utility_byte_differences.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/utility_double_int.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/utility_float.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv411_to_stuff_MMX.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv411_to_stuff_MMX_64.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv420p_to_rgb_runner.o \
./ndk-modules/cvd/installfiles/cvd_src/i686/yuv422_wrapper.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/i686/%.o: ../ndk-modules/cvd/installfiles/cvd_src/i686/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/cvd_src/i686/%.o: ../ndk-modules/cvd/installfiles/cvd_src/i686/%.C
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



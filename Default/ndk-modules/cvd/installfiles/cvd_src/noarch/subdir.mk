################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_10.cxx \
../ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_12.cxx \
../ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_9.cxx 

CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/noarch/convert_rgb_to_y.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/convolve_gaussian.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/default_memalign.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/gradient.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/half_sample.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/median_3x3.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/posix_memalign.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_10.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_12.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_9.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/two_thirds_sample.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/utility_byte_differences.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/utility_double_int.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/utility_float.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/yuv420p_to_rgb_runner.cc \
../ndk-modules/cvd/installfiles/cvd_src/noarch/yuv422_wrapper.cc 

CPP_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/noarch/default_memalign.cpp \
../ndk-modules/cvd/installfiles/cvd_src/noarch/posix_memalign.cpp 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/noarch/convert_rgb_to_y.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/convolve_gaussian.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/default_memalign.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/gradient.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/half_sample.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/median_3x3.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/posix_memalign.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_10.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_12.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_9.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/two_thirds_sample.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/utility_byte_differences.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/utility_double_int.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/utility_float.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/yuv420p_to_rgb_runner.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/yuv422_wrapper.d 

CXX_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_10.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_12.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_9.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/noarch/convert_rgb_to_y.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/convolve_gaussian.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/default_memalign.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/gradient.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/half_sample.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/median_3x3.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/posix_memalign.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_10.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_12.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/slower_corner_9.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/two_thirds_sample.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/utility_byte_differences.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/utility_double_int.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/utility_float.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/yuv420p_to_rgb_runner.o \
./ndk-modules/cvd/installfiles/cvd_src/noarch/yuv422_wrapper.o 

CPP_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/noarch/default_memalign.d \
./ndk-modules/cvd/installfiles/cvd_src/noarch/posix_memalign.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/noarch/%.o: ../ndk-modules/cvd/installfiles/cvd_src/noarch/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/cvd_src/noarch/%.o: ../ndk-modules/cvd/installfiles/cvd_src/noarch/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/cvd_src/noarch/%.o: ../ndk-modules/cvd/installfiles/cvd_src/noarch/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



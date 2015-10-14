################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_detect.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_score.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_detect.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_score.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_detect.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_score.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_detect.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_score.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_detect.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_score.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_detect.cxx \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_score.cxx 

CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_detect.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_score.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_detect.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_score.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_detect.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_score.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_detect.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_score.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_detect.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_score.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_detect.cc \
../ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_score.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_score.d 

CXX_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_score.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_detect.d \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_score.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_detect.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_10_score.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_detect.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_11_score.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_detect.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_12_score.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_detect.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_7_score.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_detect.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_8_score.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_detect.o \
./ndk-modules/cvd/installfiles/cvd_src/fast/fast_9_score.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/fast/%.o: ../ndk-modules/cvd/installfiles/cvd_src/fast/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/cvd_src/fast/%.o: ../ndk-modules/cvd/installfiles/cvd_src/fast/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



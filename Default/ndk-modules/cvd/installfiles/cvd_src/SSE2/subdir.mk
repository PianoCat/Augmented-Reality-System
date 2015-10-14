################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_10.cxx \
../ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_12.cxx \
../ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_9.cxx 

CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/SSE2/half_sample.cc \
../ndk-modules/cvd/installfiles/cvd_src/SSE2/two_thirds_sample.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/half_sample.d \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/two_thirds_sample.d 

CXX_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_10.d \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_12.d \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_9.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_10.o \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_12.o \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/faster_corner_9.o \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/half_sample.o \
./ndk-modules/cvd/installfiles/cvd_src/SSE2/two_thirds_sample.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/SSE2/%.o: ../ndk-modules/cvd/installfiles/cvd_src/SSE2/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/cvd_src/SSE2/%.o: ../ndk-modules/cvd/installfiles/cvd_src/SSE2/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



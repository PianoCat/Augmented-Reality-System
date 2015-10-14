################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/cvd/installfiles/cvd_src/posix/sched_yield.cc \
../ndk-modules/cvd/installfiles/cvd_src/posix/thread_yield.cc \
../ndk-modules/cvd/installfiles/cvd_src/posix/thread_yield_np.cc \
../ndk-modules/cvd/installfiles/cvd_src/posix/timer.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/cvd_src/posix/sched_yield.d \
./ndk-modules/cvd/installfiles/cvd_src/posix/thread_yield.d \
./ndk-modules/cvd/installfiles/cvd_src/posix/thread_yield_np.d \
./ndk-modules/cvd/installfiles/cvd_src/posix/timer.d 

OBJS += \
./ndk-modules/cvd/installfiles/cvd_src/posix/sched_yield.o \
./ndk-modules/cvd/installfiles/cvd_src/posix/thread_yield.o \
./ndk-modules/cvd/installfiles/cvd_src/posix/thread_yield_np.o \
./ndk-modules/cvd/installfiles/cvd_src/posix/timer.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/cvd_src/posix/%.o: ../ndk-modules/cvd/installfiles/cvd_src/posix/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/cpotrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/dpotrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/spotrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/zpotrf.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/cpotrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/dpotrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/spotrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/zpotrf.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/cpotrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/dpotrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/spotrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/zpotrf.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/%.o: ../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/RL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



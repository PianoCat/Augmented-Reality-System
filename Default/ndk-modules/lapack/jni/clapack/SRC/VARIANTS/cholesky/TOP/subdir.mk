################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/cpotrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/dpotrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/spotrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/zpotrf.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/cpotrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/dpotrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/spotrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/zpotrf.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/cpotrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/dpotrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/spotrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/zpotrf.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/%.o: ../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/cholesky/TOP/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



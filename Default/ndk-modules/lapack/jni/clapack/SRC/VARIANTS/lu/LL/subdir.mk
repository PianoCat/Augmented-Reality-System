################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/cgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/dgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/sgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/zgetrf.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/cgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/dgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/sgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/zgetrf.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/cgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/dgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/sgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/zgetrf.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/%.o: ../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/LL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



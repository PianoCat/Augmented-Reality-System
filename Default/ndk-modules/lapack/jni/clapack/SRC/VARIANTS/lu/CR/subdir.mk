################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/cgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/dgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/sgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/zgetrf.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/cgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/dgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/sgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/zgetrf.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/cgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/dgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/sgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/zgetrf.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/%.o: ../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/CR/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



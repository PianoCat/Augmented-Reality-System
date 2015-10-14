################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/cgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/dgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/sgetrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/zgetrf.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/cgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/dgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/sgetrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/zgetrf.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/cgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/dgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/sgetrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/zgetrf.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/%.o: ../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/lu/REC/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



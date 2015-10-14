################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/cgeqrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/dgeqrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/sceil.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/sgeqrf.c \
../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/zgeqrf.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/cgeqrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/dgeqrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/sceil.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/sgeqrf.o \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/zgeqrf.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/cgeqrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/dgeqrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/sceil.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/sgeqrf.d \
./ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/zgeqrf.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/%.o: ../ndk-modules/lapack/jni/clapack/SRC/VARIANTS/qr/LL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



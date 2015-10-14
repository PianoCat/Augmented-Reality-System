################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat1.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat2.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat3.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat1.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat2.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat3.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat1.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat2.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat3.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat1.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat2.c \
../ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat3.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat1.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat2.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat3.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat1.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat2.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat3.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat1.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat2.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat3.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat1.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat2.o \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat3.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat1.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat2.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/cblat3.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat1.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat2.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/dblat3.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat1.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat2.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/sblat3.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat1.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat2.d \
./ndk-modules/lapack/jni/clapack/BLAS/TESTING/zblat3.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/BLAS/TESTING/%.o: ../ndk-modules/lapack/jni/clapack/BLAS/TESTING/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



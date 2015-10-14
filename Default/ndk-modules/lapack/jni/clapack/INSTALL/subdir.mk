################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ndk-modules/lapack/jni/clapack/INSTALL/LAPACK_version.c \
../ndk-modules/lapack/jni/clapack/INSTALL/dlamch.c \
../ndk-modules/lapack/jni/clapack/INSTALL/dlamchtst.c \
../ndk-modules/lapack/jni/clapack/INSTALL/dsecnd.c \
../ndk-modules/lapack/jni/clapack/INSTALL/dsecndtst.c \
../ndk-modules/lapack/jni/clapack/INSTALL/ilaver.c \
../ndk-modules/lapack/jni/clapack/INSTALL/lsame.c \
../ndk-modules/lapack/jni/clapack/INSTALL/lsametst.c \
../ndk-modules/lapack/jni/clapack/INSTALL/second.c \
../ndk-modules/lapack/jni/clapack/INSTALL/secondtst.c \
../ndk-modules/lapack/jni/clapack/INSTALL/slamch.c \
../ndk-modules/lapack/jni/clapack/INSTALL/slamchtst.c \
../ndk-modules/lapack/jni/clapack/INSTALL/tstiee.c 

OBJS += \
./ndk-modules/lapack/jni/clapack/INSTALL/LAPACK_version.o \
./ndk-modules/lapack/jni/clapack/INSTALL/dlamch.o \
./ndk-modules/lapack/jni/clapack/INSTALL/dlamchtst.o \
./ndk-modules/lapack/jni/clapack/INSTALL/dsecnd.o \
./ndk-modules/lapack/jni/clapack/INSTALL/dsecndtst.o \
./ndk-modules/lapack/jni/clapack/INSTALL/ilaver.o \
./ndk-modules/lapack/jni/clapack/INSTALL/lsame.o \
./ndk-modules/lapack/jni/clapack/INSTALL/lsametst.o \
./ndk-modules/lapack/jni/clapack/INSTALL/second.o \
./ndk-modules/lapack/jni/clapack/INSTALL/secondtst.o \
./ndk-modules/lapack/jni/clapack/INSTALL/slamch.o \
./ndk-modules/lapack/jni/clapack/INSTALL/slamchtst.o \
./ndk-modules/lapack/jni/clapack/INSTALL/tstiee.o 

C_DEPS += \
./ndk-modules/lapack/jni/clapack/INSTALL/LAPACK_version.d \
./ndk-modules/lapack/jni/clapack/INSTALL/dlamch.d \
./ndk-modules/lapack/jni/clapack/INSTALL/dlamchtst.d \
./ndk-modules/lapack/jni/clapack/INSTALL/dsecnd.d \
./ndk-modules/lapack/jni/clapack/INSTALL/dsecndtst.d \
./ndk-modules/lapack/jni/clapack/INSTALL/ilaver.d \
./ndk-modules/lapack/jni/clapack/INSTALL/lsame.d \
./ndk-modules/lapack/jni/clapack/INSTALL/lsametst.d \
./ndk-modules/lapack/jni/clapack/INSTALL/second.d \
./ndk-modules/lapack/jni/clapack/INSTALL/secondtst.d \
./ndk-modules/lapack/jni/clapack/INSTALL/slamch.d \
./ndk-modules/lapack/jni/clapack/INSTALL/slamchtst.d \
./ndk-modules/lapack/jni/clapack/INSTALL/tstiee.d 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/lapack/jni/clapack/INSTALL/%.o: ../ndk-modules/lapack/jni/clapack/INSTALL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



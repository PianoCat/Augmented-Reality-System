################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../jni/PTAM/ARDriver.cc \
../jni/PTAM/ATANCamera.cc \
../jni/PTAM/Bundle.cc \
../jni/PTAM/CalibCornerPatch.cc \
../jni/PTAM/CalibImage.cc \
../jni/PTAM/CameraCalibrator.cc \
../jni/PTAM/EyeGame.cc \
../jni/PTAM/GLWindow2.cc \
../jni/PTAM/GLWindowMenu.cc \
../jni/PTAM/HomographyInit.cc \
../jni/PTAM/KeyFrame.cc \
../jni/PTAM/Map.cc \
../jni/PTAM/MapMaker.cc \
../jni/PTAM/MapPoint.cc \
../jni/PTAM/MapViewer.cc \
../jni/PTAM/MiniPatch.cc \
../jni/PTAM/PatchFinder.cc \
../jni/PTAM/Relocaliser.cc \
../jni/PTAM/ShiTomasi.cc \
../jni/PTAM/SmallBlurryImage.cc \
../jni/PTAM/System.cc \
../jni/PTAM/Tracker.cc \
../jni/PTAM/main.cc 

CC_DEPS += \
./jni/PTAM/ARDriver.d \
./jni/PTAM/ATANCamera.d \
./jni/PTAM/Bundle.d \
./jni/PTAM/CalibCornerPatch.d \
./jni/PTAM/CalibImage.d \
./jni/PTAM/CameraCalibrator.d \
./jni/PTAM/EyeGame.d \
./jni/PTAM/GLWindow2.d \
./jni/PTAM/GLWindowMenu.d \
./jni/PTAM/HomographyInit.d \
./jni/PTAM/KeyFrame.d \
./jni/PTAM/Map.d \
./jni/PTAM/MapMaker.d \
./jni/PTAM/MapPoint.d \
./jni/PTAM/MapViewer.d \
./jni/PTAM/MiniPatch.d \
./jni/PTAM/PatchFinder.d \
./jni/PTAM/Relocaliser.d \
./jni/PTAM/ShiTomasi.d \
./jni/PTAM/SmallBlurryImage.d \
./jni/PTAM/System.d \
./jni/PTAM/Tracker.d \
./jni/PTAM/main.d 

OBJS += \
./jni/PTAM/ARDriver.o \
./jni/PTAM/ATANCamera.o \
./jni/PTAM/Bundle.o \
./jni/PTAM/CalibCornerPatch.o \
./jni/PTAM/CalibImage.o \
./jni/PTAM/CameraCalibrator.o \
./jni/PTAM/EyeGame.o \
./jni/PTAM/GLWindow2.o \
./jni/PTAM/GLWindowMenu.o \
./jni/PTAM/HomographyInit.o \
./jni/PTAM/KeyFrame.o \
./jni/PTAM/Map.o \
./jni/PTAM/MapMaker.o \
./jni/PTAM/MapPoint.o \
./jni/PTAM/MapViewer.o \
./jni/PTAM/MiniPatch.o \
./jni/PTAM/PatchFinder.o \
./jni/PTAM/Relocaliser.o \
./jni/PTAM/ShiTomasi.o \
./jni/PTAM/SmallBlurryImage.o \
./jni/PTAM/System.o \
./jni/PTAM/Tracker.o \
./jni/PTAM/main.o 


# Each subdirectory must supply rules for building sources it contributes
jni/PTAM/%.o: ../jni/PTAM/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



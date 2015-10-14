################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../installfiles/ARDriver.cc \
../installfiles/ATANCamera.cc \
../installfiles/Bundle.cc \
../installfiles/CalibCornerPatch.cc \
../installfiles/CalibImage.cc \
../installfiles/CameraCalibrator.cc \
../installfiles/Capture.cc \
../installfiles/EyeGame.cc \
../installfiles/GLWindow2.cc \
../installfiles/GLWindowMenu.cc \
../installfiles/HomographyInit.cc \
../installfiles/KeyFrame.cc \
../installfiles/Map.cc \
../installfiles/MapMaker.cc \
../installfiles/MapPoint.cc \
../installfiles/MapViewer.cc \
../installfiles/MiniPatch.cc \
../installfiles/PatchFinder.cc \
../installfiles/Relocaliser.cc \
../installfiles/ShiTomasi.cc \
../installfiles/SmallBlurryImage.cc \
../installfiles/System.cc \
../installfiles/Tracker.cc \
../installfiles/VideoSource_OSX.cc \
../installfiles/main.cc 

CC_DEPS += \
./installfiles/ARDriver.d \
./installfiles/ATANCamera.d \
./installfiles/Bundle.d \
./installfiles/CalibCornerPatch.d \
./installfiles/CalibImage.d \
./installfiles/CameraCalibrator.d \
./installfiles/Capture.d \
./installfiles/EyeGame.d \
./installfiles/GLWindow2.d \
./installfiles/GLWindowMenu.d \
./installfiles/HomographyInit.d \
./installfiles/KeyFrame.d \
./installfiles/Map.d \
./installfiles/MapMaker.d \
./installfiles/MapPoint.d \
./installfiles/MapViewer.d \
./installfiles/MiniPatch.d \
./installfiles/PatchFinder.d \
./installfiles/Relocaliser.d \
./installfiles/ShiTomasi.d \
./installfiles/SmallBlurryImage.d \
./installfiles/System.d \
./installfiles/Tracker.d \
./installfiles/VideoSource_OSX.d \
./installfiles/main.d 

OBJS += \
./installfiles/ARDriver.o \
./installfiles/ATANCamera.o \
./installfiles/Bundle.o \
./installfiles/CalibCornerPatch.o \
./installfiles/CalibImage.o \
./installfiles/CameraCalibrator.o \
./installfiles/Capture.o \
./installfiles/EyeGame.o \
./installfiles/GLWindow2.o \
./installfiles/GLWindowMenu.o \
./installfiles/HomographyInit.o \
./installfiles/KeyFrame.o \
./installfiles/Map.o \
./installfiles/MapMaker.o \
./installfiles/MapPoint.o \
./installfiles/MapViewer.o \
./installfiles/MiniPatch.o \
./installfiles/PatchFinder.o \
./installfiles/Relocaliser.o \
./installfiles/ShiTomasi.o \
./installfiles/SmallBlurryImage.o \
./installfiles/System.o \
./installfiles/Tracker.o \
./installfiles/VideoSource_OSX.o \
./installfiles/main.o 


# Each subdirectory must supply rules for building sources it contributes
installfiles/%.o: ../installfiles/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



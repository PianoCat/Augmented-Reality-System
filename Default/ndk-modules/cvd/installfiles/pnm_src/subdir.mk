################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../ndk-modules/cvd/installfiles/pnm_src/bmp.cxx \
../ndk-modules/cvd/installfiles/pnm_src/cvdimage.cxx \
../ndk-modules/cvd/installfiles/pnm_src/jpeg.cxx \
../ndk-modules/cvd/installfiles/pnm_src/pnm_grok.cxx \
../ndk-modules/cvd/installfiles/pnm_src/save_postscript.cxx \
../ndk-modules/cvd/installfiles/pnm_src/text.cxx \
../ndk-modules/cvd/installfiles/pnm_src/tiff.cxx 

CC_SRCS += \
../ndk-modules/cvd/installfiles/pnm_src/bmp.cc \
../ndk-modules/cvd/installfiles/pnm_src/bmp_read.cc \
../ndk-modules/cvd/installfiles/pnm_src/bmp_write.cc \
../ndk-modules/cvd/installfiles/pnm_src/cvdimage.cc \
../ndk-modules/cvd/installfiles/pnm_src/fits.cc \
../ndk-modules/cvd/installfiles/pnm_src/fitswrite.cc \
../ndk-modules/cvd/installfiles/pnm_src/jpeg.cc \
../ndk-modules/cvd/installfiles/pnm_src/png.cc \
../ndk-modules/cvd/installfiles/pnm_src/pnm_grok.cc \
../ndk-modules/cvd/installfiles/pnm_src/save_postscript.cc \
../ndk-modules/cvd/installfiles/pnm_src/text.cc \
../ndk-modules/cvd/installfiles/pnm_src/text_write.cc \
../ndk-modules/cvd/installfiles/pnm_src/tiff.cc \
../ndk-modules/cvd/installfiles/pnm_src/tiffwrite.cc 

CC_DEPS += \
./ndk-modules/cvd/installfiles/pnm_src/bmp.d \
./ndk-modules/cvd/installfiles/pnm_src/bmp_read.d \
./ndk-modules/cvd/installfiles/pnm_src/bmp_write.d \
./ndk-modules/cvd/installfiles/pnm_src/cvdimage.d \
./ndk-modules/cvd/installfiles/pnm_src/fits.d \
./ndk-modules/cvd/installfiles/pnm_src/fitswrite.d \
./ndk-modules/cvd/installfiles/pnm_src/jpeg.d \
./ndk-modules/cvd/installfiles/pnm_src/png.d \
./ndk-modules/cvd/installfiles/pnm_src/pnm_grok.d \
./ndk-modules/cvd/installfiles/pnm_src/save_postscript.d \
./ndk-modules/cvd/installfiles/pnm_src/text.d \
./ndk-modules/cvd/installfiles/pnm_src/text_write.d \
./ndk-modules/cvd/installfiles/pnm_src/tiff.d \
./ndk-modules/cvd/installfiles/pnm_src/tiffwrite.d 

CXX_DEPS += \
./ndk-modules/cvd/installfiles/pnm_src/bmp.d \
./ndk-modules/cvd/installfiles/pnm_src/cvdimage.d \
./ndk-modules/cvd/installfiles/pnm_src/jpeg.d \
./ndk-modules/cvd/installfiles/pnm_src/pnm_grok.d \
./ndk-modules/cvd/installfiles/pnm_src/save_postscript.d \
./ndk-modules/cvd/installfiles/pnm_src/text.d \
./ndk-modules/cvd/installfiles/pnm_src/tiff.d 

OBJS += \
./ndk-modules/cvd/installfiles/pnm_src/bmp.o \
./ndk-modules/cvd/installfiles/pnm_src/bmp_read.o \
./ndk-modules/cvd/installfiles/pnm_src/bmp_write.o \
./ndk-modules/cvd/installfiles/pnm_src/cvdimage.o \
./ndk-modules/cvd/installfiles/pnm_src/fits.o \
./ndk-modules/cvd/installfiles/pnm_src/fitswrite.o \
./ndk-modules/cvd/installfiles/pnm_src/jpeg.o \
./ndk-modules/cvd/installfiles/pnm_src/png.o \
./ndk-modules/cvd/installfiles/pnm_src/pnm_grok.o \
./ndk-modules/cvd/installfiles/pnm_src/save_postscript.o \
./ndk-modules/cvd/installfiles/pnm_src/text.o \
./ndk-modules/cvd/installfiles/pnm_src/text_write.o \
./ndk-modules/cvd/installfiles/pnm_src/tiff.o \
./ndk-modules/cvd/installfiles/pnm_src/tiffwrite.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/cvd/installfiles/pnm_src/%.o: ../ndk-modules/cvd/installfiles/pnm_src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ndk-modules/cvd/installfiles/pnm_src/%.o: ../ndk-modules/cvd/installfiles/pnm_src/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



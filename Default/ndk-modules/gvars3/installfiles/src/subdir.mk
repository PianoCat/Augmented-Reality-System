################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ndk-modules/gvars3/installfiles/src/GStringUtil.cc \
../ndk-modules/gvars3/installfiles/src/GUI.cc \
../ndk-modules/gvars3/installfiles/src/GUI_Fltk.cc \
../ndk-modules/gvars3/installfiles/src/GUI_Fltk2.cc \
../ndk-modules/gvars3/installfiles/src/GUI_Motif.cc \
../ndk-modules/gvars3/installfiles/src/GUI_impl_headless.cc \
../ndk-modules/gvars3/installfiles/src/GUI_impl_noreadline.cc \
../ndk-modules/gvars3/installfiles/src/GUI_impl_readline.cc \
../ndk-modules/gvars3/installfiles/src/GUI_language.cc \
../ndk-modules/gvars3/installfiles/src/GUI_non_readline.cc \
../ndk-modules/gvars3/installfiles/src/GUI_none.cc \
../ndk-modules/gvars3/installfiles/src/GUI_readline.cc \
../ndk-modules/gvars3/installfiles/src/gvars2.cc \
../ndk-modules/gvars3/installfiles/src/gvars3.cc \
../ndk-modules/gvars3/installfiles/src/inst.cc \
../ndk-modules/gvars3/installfiles/src/inst_headless.cc \
../ndk-modules/gvars3/installfiles/src/serialize.cc 

CC_DEPS += \
./ndk-modules/gvars3/installfiles/src/GStringUtil.d \
./ndk-modules/gvars3/installfiles/src/GUI.d \
./ndk-modules/gvars3/installfiles/src/GUI_Fltk.d \
./ndk-modules/gvars3/installfiles/src/GUI_Fltk2.d \
./ndk-modules/gvars3/installfiles/src/GUI_Motif.d \
./ndk-modules/gvars3/installfiles/src/GUI_impl_headless.d \
./ndk-modules/gvars3/installfiles/src/GUI_impl_noreadline.d \
./ndk-modules/gvars3/installfiles/src/GUI_impl_readline.d \
./ndk-modules/gvars3/installfiles/src/GUI_language.d \
./ndk-modules/gvars3/installfiles/src/GUI_non_readline.d \
./ndk-modules/gvars3/installfiles/src/GUI_none.d \
./ndk-modules/gvars3/installfiles/src/GUI_readline.d \
./ndk-modules/gvars3/installfiles/src/gvars2.d \
./ndk-modules/gvars3/installfiles/src/gvars3.d \
./ndk-modules/gvars3/installfiles/src/inst.d \
./ndk-modules/gvars3/installfiles/src/inst_headless.d \
./ndk-modules/gvars3/installfiles/src/serialize.d 

OBJS += \
./ndk-modules/gvars3/installfiles/src/GStringUtil.o \
./ndk-modules/gvars3/installfiles/src/GUI.o \
./ndk-modules/gvars3/installfiles/src/GUI_Fltk.o \
./ndk-modules/gvars3/installfiles/src/GUI_Fltk2.o \
./ndk-modules/gvars3/installfiles/src/GUI_Motif.o \
./ndk-modules/gvars3/installfiles/src/GUI_impl_headless.o \
./ndk-modules/gvars3/installfiles/src/GUI_impl_noreadline.o \
./ndk-modules/gvars3/installfiles/src/GUI_impl_readline.o \
./ndk-modules/gvars3/installfiles/src/GUI_language.o \
./ndk-modules/gvars3/installfiles/src/GUI_non_readline.o \
./ndk-modules/gvars3/installfiles/src/GUI_none.o \
./ndk-modules/gvars3/installfiles/src/GUI_readline.o \
./ndk-modules/gvars3/installfiles/src/gvars2.o \
./ndk-modules/gvars3/installfiles/src/gvars3.o \
./ndk-modules/gvars3/installfiles/src/inst.o \
./ndk-modules/gvars3/installfiles/src/inst_headless.o \
./ndk-modules/gvars3/installfiles/src/serialize.o 


# Each subdirectory must supply rules for building sources it contributes
ndk-modules/gvars3/installfiles/src/%.o: ../ndk-modules/gvars3/installfiles/src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



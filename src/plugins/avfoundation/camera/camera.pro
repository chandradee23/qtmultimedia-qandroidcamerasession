# Avoid clash with a variable named `slots' in a Quartz header
CONFIG += no_keywords

TARGET = qavfcamera
QT += multimedia-private network

PLUGIN_TYPE = mediaservice
PLUGIN_CLASS_NAME = AVFServicePlugin
load(qt_plugin)

LIBS += -framework AudioToolbox \
        -framework CoreAudio \
        -framework QuartzCore \
        -framework AVFoundation \
        -framework CoreMedia
osx:LIBS += -framework AppKit \
            -framework AudioUnit
ios:LIBS += -framework CoreVideo

OTHER_FILES += avfcamera.json

DEFINES += QMEDIA_AVF_CAMERA

HEADERS += \
    avfcameradebug.h \
    avfcameraserviceplugin.h \
    avfcameracontrol.h \
    avfcamerametadatacontrol.h \
    avfimagecapturecontrol.h \
    avfcameraservice.h \
    avfcamerasession.h \
    avfstoragelocation.h \
    avfaudioinputselectorcontrol.h \
    avfcamerainfocontrol.h \
    avfmediavideoprobecontrol.h \
    avfcamerainfocontrol.h \
    avfcamerarenderercontrol.h \
    avfcameradevicecontrol.h \
    avfcamerafocuscontrol.h \
    avfcameraexposurecontrol.h \
    avfcamerautility.h \
    avfcameraviewfindersettingscontrol.h \
    avfimageencodercontrol.h \
    avfcameraflashcontrol.h

OBJECTIVE_SOURCES += \
    avfcameraserviceplugin.mm \
    avfcameracontrol.mm \
    avfcamerametadatacontrol.mm \
    avfimagecapturecontrol.mm \
    avfcameraservice.mm \
    avfcamerasession.mm \
    avfstoragelocation.mm \
    avfaudioinputselectorcontrol.mm \
    avfcamerainfocontrol.mm \
    avfmediavideoprobecontrol.mm \
    avfcamerainfocontrol.mm \
    avfcameradevicecontrol.mm \
    avfcamerarenderercontrol.mm \
    avfcamerafocuscontrol.mm \
    avfcameraexposurecontrol.mm \
    avfcamerautility.mm \
    avfcameraviewfindersettingscontrol.mm \
    avfimageencodercontrol.mm \
    avfcameraflashcontrol.mm

osx {

HEADERS += avfmediarecordercontrol.h
OBJECTIVE_SOURCES += avfmediarecordercontrol.mm

}

ios {

HEADERS += avfcamerazoomcontrol.h \
           avfmediaassetwriter.h \
           avfmediarecordercontrol_ios.h
OBJECTIVE_SOURCES += avfcamerazoomcontrol.mm \
                     avfmediaassetwriter.mm \
                     avfmediarecordercontrol_ios.mm

}

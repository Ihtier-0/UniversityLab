QT       += core gui widgets opengl openglwidgets

CONFIG += c++11 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(Viewport/Viewport.pri)
include(Camera/Camera.pri)
include(ExplicitGraphOfFunction/ExplicitGraphOfFunction.pri)
include(ObjectToDraw/ObjectToDraw.pri)
include(Grid/Grid.pri)
include(DiscreteFunction/DiscreteFunction.pri)

LIBS += -lOpengl32

SOURCES += \
        main.cpp \
        mainwindow.cpp \
        rungekuttamethodforsystems.cpp \
        universaldifferentialsweepmethod.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    mainwindow.h \
    rungekuttamethodforsystems.h \
    universaldifferentialsweepmethod.h

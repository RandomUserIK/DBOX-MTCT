#-------------------------------------------------
#
# Project created by QtCreator 2016-05-05T11:08:40
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

TARGET = DBOX-MTCT
TEMPLATE = app

DESTDIR = $$PWD

#QMAKE_LFLAGS += /STACK:64000000

SOURCES +=  main.cpp\
            mainwindow.cpp \
    graphics_view_zoom.cpp \
    minutiaemarker.cpp \
    mousefingerprintscene.cpp \
    networktrainer.cpp \
    minutiaechecker.cpp \
    caffenetwork.cpp \
    databasetester.cpp \
    isoconverter.cpp \
    QCustomPlot/qcustomplot.cpp \
    extractiontester.cpp

HEADERS  += mainwindow.h \
    graphics_view_zoom.h \
    minutiaemarker.h \
    mousefingerprintscene.h \
    networktrainer.h \
    minutiaechecker.h \
    caffenetwork.h \
    databasetester.h \
    isoconverter.h \
    qmatconverter.h \
    QCustomPlot/qcustomplot.h \
    extractiontester.h \
    helper.h


FORMS    += mainwindow.ui

#icons
RC_ICONS = core/config/Icons/mmtc.ico

#CUDA
unix:!macx: LIBS += -lcuda

#SupremaSensor
unix:!macx: LIBS += -L/usr/local/lib/ -lUFMatcher
INCLUDEPATH += /usr/local/include/suprema
DEPENDPATH += /usr/local/include/suprema

#OpenCV
unix:!macx: LIBS += -lopencv_imgcodecs
unix:!macx: LIBS += -lopencv_imgproc
unix:!macx: LIBS += -lopencv_highgui
unix:!macx: LIBS += -lopencv_ml
unix:!macx: LIBS += -lopencv_core

#ArrayFire
unix:!macx: LIBS += -L/opt/cuda/lib64/ -lcudart
INCLUDEPATH += $$PWD/../../../../../opt/cuda/include
DEPENDPATH += $$PWD/../../../../../opt/cuda/include

#Caffe
unix:!macx: LIBS += -L/usr/lib/ -lcaffe
unix:!macx: LIBS += -L/usr/lib/ -lboost_system
unix:!macx: LIBS += -L/usr/lib/ -lglog
unix:!macx: LIBS += -L/usr/lib/ -lprotobuf

#Preprocessing
unix:!macx: LIBS += -L$$PWD/../build-Preprocessing-Desktop-Debug/ -lPreprocessing

INCLUDEPATH += $$PWD/../openfinger-preprocessor-master
DEPENDPATH += $$PWD/../openfinger-preprocessor-master

#Extraction
unix:!macx: LIBS += -L$$PWD/../build-Extraction-Desktop-Debug/ -lExtraction

INCLUDEPATH += $$PWD/../openfinger-extractor-master
DEPENDPATH += $$PWD/../openfinger-extractor-master


#Matcher
unix:!macx: LIBS += -L$$PWD/../build-Matcher-Desktop-Debug/ -lMatcher

INCLUDEPATH += $$PWD/../openfinger-matcher-master
DEPENDPATH += $$PWD/../openfinger-matcher-master

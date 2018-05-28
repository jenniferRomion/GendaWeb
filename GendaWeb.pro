TEMPLATE = app
TARGET = GendaWeb

QT += qml quick webview sql network\
    positioning core widgets location

SOURCES += cpp/main.cpp \
    cpp/mycontext.cpp \
    cpp/filemanager.cpp \
    cpp/utils.cpp

RESOURCES += \
    qml.qrc

EXAMPLE_FILES += doc

macos:QMAKE_INFO_PLIST = macos/Info.plist
ios:QMAKE_INFO_PLIST = ios/Info.plist

INSTALLS += target

HEADERS += \
    cpp/mycontext.h \
    cpp/filemanager.h \
    cpp/utils.h

DISTFILES += \

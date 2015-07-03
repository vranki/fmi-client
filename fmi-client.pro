TEMPLATE = app

QT += qml quick widgets xml xmlpatterns

SOURCES += main.cpp

RESOURCES += qml/qml.qrc

OTHER_FILES += README.md

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

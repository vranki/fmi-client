import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("FMI Client")
    width: 640
    height: 480
    visible: true
    property string apiKey: "41310f48-ba78-43ac-a8b6-2aee7091b606"

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm { anchors.fill: parent }

    MetarModel { id: metarModel }
}

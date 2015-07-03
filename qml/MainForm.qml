import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

    RadarMap { anchors.fill: parent }

    ListView {
        anchors.fill: parent
        model: metarModel
        delegate: Item {
            x: 5
            width: parent.width
            height: 40
            Text {
                text: designator + " - " + name
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
            }
            Text {
                text: metar
                anchors.bottom: parent.bottom
                opacity: 0.8
            }
        }
    }
}

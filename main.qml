import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.XmlListModel 2.0

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
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        anchors.fill: parent
    }

    property string aerodromePath: "*:message/*:METAR/*:observation/*:OM_Observation/*:featureOfInterest/*:SF_SpatialSamplingFeature/*:sampledFeature/*:Aerodrome"
    property string metadataPath: "*:metadata/*:MessageMetadata"
    XmlListModel {
        id: xmlModel
        source: "http://data.fmi.fi/fmi-apikey/" + apiKey + "/wfs?request=getFeature&storedquery_id=fmi::avi::observations::finland::latest::iwxxm"
        query: "//*:FeatureCollection/*:member/*:VerifiableMessage"

        XmlRole {
            name: "designator";
            query: aerodromePath + "/*:designator/string()"
        }
        XmlRole {
            name: "name";
            query: aerodromePath + "/*:name/string()"
        }
        XmlRole {
            name: "metar"
            query: metadataPath + "/*:source/*:Process/*:input/string()"
        }
    }
}

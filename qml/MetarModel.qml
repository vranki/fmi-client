import QtQuick 2.0
import QtQuick.XmlListModel 2.0

XmlListModel {
    id: metarModel
    source: "https://opendata.fmi.fi/wfs?request=getFeature&storedquery_id=fmi::avi::observations::finland::latest::iwxxm"
    query: "//*:FeatureCollection/*:member/*:VerifiableMessage"

    property string aerodromePath: "*:message/*:METAR/*:observation/*:OM_Observation/*:featureOfInterest/*:SF_SpatialSamplingFeature/*:sampledFeature/*:Aerodrome"
    property string metadataPath: "*:metadata/*:MessageMetadata"

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

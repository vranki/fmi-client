import QtQuick 2.0

Image {
    source: "http://1.img.weatherproof.fi/php/img.php?A=dX4q1R4URdXmq1Ud4qrXd5U/RaXqqdXa7RmU1/KAn/5q/WddLq0ZD1a7/W.r/D"
    Image {
        anchors.fill: parent
        source: "http://wms.fmi.fi/fmi-apikey/303a0092-9e48-4f6a-85b7-26a4b16243cd/geoserver/Radar/wms?service=WMS&version=1.1.0&request=GetMap&layers=suomi_rr_eureffin&styles=&bbox=-115349.958171,-3303190.618365,657951.770661,-2544110.727427&width=" + width + "&height=" + height + "&srs=EPSG:999920&format=image%2Fpng&transparent=true"
    }
}

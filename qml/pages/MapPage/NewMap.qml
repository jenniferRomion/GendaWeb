import QtQuick 2.0
import QtPositioning 5.5
import QtLocation 5.6

Item  {
    id : page
    property alias myCircle : map.circle
    signal markerClicked
    signal send

    property var markerDatas : []
    property var areaDatas : []

    Plugin {
        id: mapPlugin
        name: "mapbox"
        PluginParameter { name : "mapbox.access_token"; value: "pk.eyJ1IjoianJvbWlvbiIsImEiOiJjajk4YWMzazMwcjA5MnFxc2xpc2p0ZDg0In0.Ikd1UkS5-NvY1V63e3VZwA" }
        PluginParameter { name : "mapbox.mapping.highdpi_tiles"; value: true }
    }

    PositionSource {
        id: positionSource
        active:  true //activation dynamique a mettre en place
        updateInterval: 1000

        onPositionChanged: {
            map.center = position.coordinate
            carMarker.coordinate = position.coordinate
            console.log("move : " + position.coordinate)
        }
    }

    Map {
        id: map
        property MapCircle circle
        property MapQuickItem marker

        anchors.fill : parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(48.8584, 2.2945) // Tour Eiffel
        zoomLevel: 15

        MapQuickItem {
            id: carMarker

            anchorPoint.x: image.width/4
            anchorPoint.y: image.height
            z: 3

            coordinate: QtPositioning.coordinate(positionSource.position)

            sourceItem: Image {
                id: image
                source: "../../../images/map_icons/car_pin.png"
            }
        }


        Component.onCompleted : {
            if (areaDatas.length > 0) {
                for (var i in areaDatas) {
                    map.circle = Qt.createQmlObject('import QtLocation 5.3; MapCircle {}', page)
                    map.circle.center = areaDatas[i].location
                    map.circle.radius = 50.0
                    map.circle.color = areaDatas[i].couleur
                    map.circle.border.width = 1
                    map.addMapItem(map.circle)
                }
            }

            if (markerDatas.length > 0) {
                for (var j in markerDatas) {
                    map.marker = Qt.createQmlObject('import QtLocation 5.3; Marker {onActivated :
                                                    { console.log(coordinate) ;
                                                      page.markerClicked() ;
                                                      clientPage.client_name = newName  ;
                                                      clientPage.client_satisfaction = newSatisfaction ;
                                                      clientPage.client_gendarme = newGendarme }
                                                     }', page)
                    map.marker.coordinate = markerDatas[j].location
                    map.marker.newName = markerDatas[j].name
                    map.marker.newSatisfaction = markerDatas[j].satisfaction
                    map.marker.newGendarme = markerDatas[j].gendarme

                    map.addMapItem(map.marker)
                }
            }


        }


    }
    onMarkerClicked: console.log("ok ")
}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import "../../javascript/httpRequest.js" as HttpScript

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/4) * etat.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "red"
        }
    }

    /* loader */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3) * etat.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "blue"

                AnimatedImage {
                    anchors.centerIn: parent
                    id: animation;
                    source: "../../../images/loader.gif"
                height: parent.height
                fillMode: Image.PreserveAspectFit
                }

                Rectangle {
                    property int frames: animation.frameCount

                    width: 4; height: 8
                    x: (animation.width - width) * animation.currentFrame / frames
                    y: animation.height
                }
            }
    }


    /* space filler */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (5/12) * etat.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: colorMajor
        }
    }


}

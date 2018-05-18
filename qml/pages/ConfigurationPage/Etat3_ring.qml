import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtMultimedia 5.8

import "../../modules"

ColumnLayout {

    id : etat

    property string newRingSrc: ringPath

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    /* header */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.10 * etat.width
            color: colorMinor

            Image {
                source : "../../../images/icon/music.png"
                height: 0.05 * mainPage.height
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.70 * etat.width
            color: colorMinor

            TextBox {
                text : "Sonnerie"
                bold : true
                horizontalAlignment: Text.AlignLeft
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.20 * etat.width
            color: colorMinor

            HeaderButtonReturn {
                onClicked: {
                    console.log("ok")
                    configurationPage.config_visibility3_ring = false
                    configurationPage.config_visibility3 = true
                }
            }
        }
    }


    /* RingList */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (3/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightblue"

            RingList {
                id : ringlist
                anchors.fill : parent
            }
        }
    }



    /* Selected */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (3/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "yellow"

            SoundEffect {
                id: playsound
                source : newRingSrc
            }

            Image {
                source : "../../../images/icon/play.png"
                height: 0.1 * mainPage.height
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    anchors.fill : parent
                    onClicked: { playsound.play() }
                }
            }
        }
    }


    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "red"

            MyButton {
                text : "Valider"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    ringPath = newRingSrc
                    configurationPage.config_visibility3_ring = false
                    configurationPage.config_visibility3 = true

                }
            }
        }
    }




}

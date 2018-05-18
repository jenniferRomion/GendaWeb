import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : etat

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
                source : "../../../images/icon/sound.png"
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
                text : "Sons et notifications"
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
                    configurationPage.config_visibility3 = false
                    configurationPage.config_visibility1 = true
                }
            }
        }
    }


    /* Actif */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.6 * etat.width
            //color: "yellow"

            TextBox {
                text : "Activer les notifications"
                horizontalAlignment: Text.AlignLeft
            }
        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.4 * etat.width
            //color: "blue"

            MySwitchButton {
                anchors.centerIn: parent
                checkedValue: notificationActive
                switchWidth: 1/2 * parent.width
                switchHeight: 1/3 * parent.height

                onCheckedValueChanged: { notificationActive = checkedValue }
            }
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredHeight: 0.005 * etat.height
        color: "darkgrey"
    }

    /* kilometres */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.6 * etat.width
            //color: "yellow"

            TextBox {
                text : "Distance d'alerte (km)"
                horizontalAlignment: Text.AlignLeft
            }
        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.4 * etat.width
            //color: "blue"

            ComboType {
                height : 1/2 * parent.height
                width : 0.9 * parent.width
                model: DistanceModel {}
                currentIndex: distanceIndex
                onCurrentIndexChanged: {
                    distanceIndex =currentIndex
                }
            }
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredHeight: 0.005 * etat.height
        color: "darkgrey"
    }

    /* sound */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "yellow"

            ConfigItem {
                width: parent.width
                height: parent.height
                iconsrc: "../../../images/icon/music.png"
                title: "Sonnerie"

                onClicked: {
                    configurationPage.config_visibility3 = false
                    configurationPage.config_visibility3_ring = true
                }
            }
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredHeight: 0.005 * etat.height
        color: "darkgrey"
    }

    /* space filler */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (4/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"
        }
    }


}

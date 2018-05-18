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
            color: "lightGrey"

            Image {
                source : "../../../images/icon/phone.png"
                height: 0.05 * mainPage.height
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.70 * etat.width
            color: "lightGrey"

            TextBox {
                text : "Affichage"
                bold : true
                horizontalAlignment: Text.AlignLeft
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.20 * etat.width
            color: "lightgrey"

            HeaderButtonReturn {
                onClicked: {
                    console.log("ok")
                    configurationPage.config_visibility2 = false
                    configurationPage.config_visibility1 = true
                }
            }
        }
    }


    /* Avatar */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
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
                iconsrc: "../../../images/icon/user.png"
                title: "Avatar"

                onClicked: {
                    configurationPage.config_visibility2 = false
                    configurationPage.config_visibility2_avatar = true
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

    /* System color */
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
                iconsrc: "../../../images/icon/color.png"
                title: "Couleurs d'affichage"

                onClicked: {
                    configurationPage.config_visibility2 = false
                    configurationPage.config_visibility2_color = true
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
        Layout.preferredHeight: (5/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"
        }
    }


}

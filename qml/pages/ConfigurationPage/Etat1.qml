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

    /* Display */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "red"

            ConfigItem {
                width: parent.width
                height: parent.height
                iconsrc: "../../../images/icon/phone.png"
                title: "Affichage"

                onClicked: {
                    configurationPage.config_visibility1 = false
                    configurationPage.config_visibility2 = true
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


    /* Sound and Notification */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "red"

            ConfigItem {
                width: parent.width
                height: parent.height
                iconsrc: "../../../images/icon/sound.png"
                title: "Sons et notifications"

                onClicked: {
                    configurationPage.config_visibility1 = false
                    configurationPage.config_visibility3 = true
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

    /* other */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (6/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"

        }
    }

}

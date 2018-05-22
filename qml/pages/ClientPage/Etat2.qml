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

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/4)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: clientPage.client_pm? "royalBlue" : "limeGreen"

            HeaderCustomer {
                id: headCust
                anchors.fill : parent
                policeman: clientPage.client_pm
                satisfactionClient: client_happy
            }

        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (5/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightGrey"

            TextBox {
                text: "Some details"
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
            color: "lightGrey"

            RowTypeButton {
                            srcLeftIcon: "../../images/icon/back.png"
                            onLeftClicked: {
                                console.log("BACK")
                                clientPage.client2_visibility = false;
                                clientPage.client1_visibility = true;

                            }

                            textMiddleButton: "Contacter"
                            onMiddleClicked: {
                                console.log("Contacter")
                                clientPage.client2_visibility = false;
                                clientPage.client3_visibility = true;

                            }

                            textRightButton: "Ignorer"
                            onRightClicked: {
                                console.log("Ignorer")
                                clientPage.client2_visibility = false;
                                clientPage.client4_visibility = true;
                            }
                        }
        }
    }
}

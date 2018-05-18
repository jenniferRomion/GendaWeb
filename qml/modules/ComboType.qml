import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

ComboBox {
    editable: false
    anchors.centerIn: parent

    model : ListModel {
        ListElement {text : "a"}
        ListElement {text : "b"}
    }

    style : ComboBoxStyle {
        background: Rectangle {
            color : "white"
            border.color: "#26282a"
            border.width: 1
            radius: 4
        }

        selectionColor: "#C6AF90"

        label : Text {
            font.pixelSize: Qt.application.font.pixelSize * 1.5
            font.family: "acumin-pro"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

            text : control.currentText
        }

    }
}

import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Switch {
    property bool checkedValue
    property int switchWidth: 100
    property int switchHeight: 30

//    anchors.fill: parent

    checked: checkedValue
    onClicked: {
        checkedValue === true ? checkedValue = false : checkedValue = true
    }



    style: SwitchStyle {
        groove: Rectangle {
            implicitWidth: switchWidth
            implicitHeight: switchHeight
            radius: 2///AJOUT
            border.color: control.activeFocus ? "darkblue" : "gray"
            border.width: 1
            color : checkedValue === true ? "red" : "green"
        }
    }
}

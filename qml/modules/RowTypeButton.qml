/*
RowTypeButton {
    sourceImageLeftButton: ""
    onLeftClicked: {

    }

    textMiddleButton: ""
    onMiddleClicked: {

    }

    textRightButton: ""
    onRightClicked: {

    }
}*/

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtQuick.Window 2.2


RowLayout{
    id: rowTypeButton
    anchors.fill: parent
    spacing: 0
    width: 384


    property string srcLeftIcon : ""
    property string textMiddleButton: middleButton.text
    property string textRightButton: rightButton.text
    signal leftClicked
    signal middleClicked
    signal rightClicked

    Rectangle{
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.maximumWidth: (1/3) * parent.width
        Layout.leftMargin: 0.03 * parent.width

        MyButton{
            id: leftButton
            width: parent.width
            height: parent.height
            srcIcon: srcLeftIcon

            onClicked: rowTypeButton.leftClicked()
        }
    }

    Rectangle{
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.maximumWidth: (1/3) * parent.width
        Layout.rightMargin: 0.03 * parent.width
        Layout.leftMargin: 0.03 * parent.width

        MyButton{
            id: middleButton
            width: parent.width
            height: parent.height
            text: textMiddleButton
            onClicked: rowTypeButton.middleClicked()
        }
    }

    Rectangle{
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.maximumWidth: (1/3) * parent.width
        Layout.rightMargin: 0.03 * parent.width

        MyButton{
            id: rightButton
            width: parent.width
            height: parent.height
            text: textRightButton
            onClicked: rowTypeButton.rightClicked()
        }
    }
}

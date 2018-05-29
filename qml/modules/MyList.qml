import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

ListView {
    id: idListView

    property bool withHighlight: true

    anchors { fill: parent; margins: 2 }

    highlight: Rectangle { color: withHighlight ? colorMajor : "transparent" ; radius : 20 }
    focus: true
    spacing: 4
}


import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : root

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

   Rectangle {
       Layout.preferredHeight: 0.15 * root.height
       Layout.fillWidth: true

       color: "Cyan"

   }

   Rectangle {
       Layout.preferredHeight: 0.1 * root.height
       Layout.fillWidth: true

       color: "Purple"

   }

   Rectangle {
       Layout.fillHeight: true
       Layout.fillWidth: true

       color: "NAVAJOWHITE"

   }

   Rectangle {
       Layout.fillHeight: true
       Layout.fillWidth: true

       color: "MAROON"

   }

   Rectangle {
       Layout.fillHeight: true
       Layout.fillWidth: true

       color: "PERU"

   }

   Rectangle {
       Layout.preferredHeight: 0.1 * root.height
       Layout.fillWidth: true

       color: "SEAGREEN"

   }

}

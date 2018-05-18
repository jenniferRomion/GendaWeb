import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Calendar {
    width : 0.95 * parent.width
    height: 0.95 * parent.height

    minimumDate: new Date(2018, 0, 1)
    focus: true

    style: CalendarStyle {
            gridVisible: false

            dayDelegate: Item {
                readonly property color sameMonthDateTextColor: "#444"
                readonly property color selectedDateColor: Qt.platform.os === "osx" ? "#3778d0" : systemPalette.highlight
                readonly property color selectedDateTextColor: "white"
                readonly property color differentMonthDateTextColor: "#bbb"
                readonly property color invalidDatecolor: "#dddddd"

                Rectangle {
                    anchors.fill: parent
                    border.color: "transparent"
                    color: styleData.date !== undefined && styleData.selected ? selectedDateColor : "transparent"
                    anchors.margins: styleData.selected ? -1 : 0
                }

                Image {
                    visible: true

                    /* FOR BINDING BDD
                    //visible: eventModel.eventsForDate(styleData.date).length > 0
                    */

                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.margins: -1
                    width: 1/6 * parent.width
                    height: width
                    source: "../../images/eventindicator.png"
                }

                Label {
                    id: dayDelegateText
                    text: styleData.date.getDate()
                    anchors.centerIn: parent
                    color: {
                        var color = invalidDatecolor;
                        if (styleData.valid) {
                            // Date is within the valid range.
                            color = styleData.visibleMonth ? sameMonthDateTextColor : differentMonthDateTextColor;
                            if (styleData.selected) {
                                color = selectedDateTextColor;
                            }
                        }
                        color;
                    }
                }
            }
        }



}

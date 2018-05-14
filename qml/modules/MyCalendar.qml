import QtQuick 2.0
import QtQuick.Controls 1.4

Calendar {

    minimumDate: new Date(2018, 0, 1)

    onClicked: console.log(selectedDate)

}

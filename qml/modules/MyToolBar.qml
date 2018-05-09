import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

TabBar {
    id: root

    currentIndex: swipeView.currentIndex
    contentHeight: (1/10) * mainPage.height
    spacing : mainPage.width *0.01

    background: Rectangle {
           color: "white"
       }

    TabItem {
        index : 0
        imgsource: root.currentIndex == index ? "../../../images/icon/home_gris.png" : "../../../images/icon/home.png"
    }

    TabItem {
        index : 1
        imgsource: root.currentIndex == index ? "../../../images/icon/clients_gris.png" : "../../../images/icon/clients.png"
    }

    TabItem {
        index : 2
        imgsource: root.currentIndex == index ? "../../../images/icon/itinerary_gris.png" : "../../../images/icon/itinerary.png"
    }

    TabItem {
        index : 3
        imgsource: root.currentIndex == index ? "../../../images/icon/map_gris.png" : "../../../images/icon/map.png"
    }


    TabItem {
        index : 4
        imgsource: root.currentIndex == index ? "../../../images/icon/calendar_gris.png" : "../../../images/icon/calendar.png"
    }

    TabItem {
        index : 5
        imgsource: root.currentIndex == index ? "../../../images/icon/config_gris.png" : "../../../images/icon/config.png"
    }
}

import QtQuick 2.5
import QtPositioning 5.5
import QtLocation 5.6

import "../../modules"

MyList {
    interactive: true
    model: ListModel { id: routeInfoModel }
    header: RouteListHeader {}
    delegate:  DelegateRouteList{
        routeIndex.text: index + 1
        routeInstruction.text: instruction
        routeDistance.text: distance
    }
}


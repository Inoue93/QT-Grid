import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Grid")

    ListModel {
           id: lista
           ListElement {name: "Blue"; modelWidth: 60;inside:"I"; size:20; fontColor: "Yellow"}
           ListElement {name: "Red"; modelWidth: 60;inside:"II"; size:20; fontColor: "Oragne"}
           ListElement {name: "Green"; modelWidth: 60;inside:"III"; size:20; fontColor: "Blue"}
           ListElement {name: "Orange"; modelWidth: 60;inside:"IV"; size:20; fontColor: "Black"}
           ListElement {name: "Brown"; modelWidth: 60;inside:"V"; size:20; fontColor: "White"}
           ListElement {name: "Black"; modelWidth: 60;inside:"VI"; size:20; fontColor: "Green"}
           ListElement {name: "Pink"; modelWidth: 60;inside:"VII"; size:20; fontColor: "Brown"}
           ListElement {name: "Purple"; modelWidth: 60;inside:"VIII"; size:20; fontColor: "Red"}
           ListElement {name: "Silver"; modelWidth: 60;inside:"IX"; size:20; fontColor: "Gray"}
       }

    Component{
        id:gridDelegate
        Rectangle {
        color: name
        width: modelWidth
        height: 100
            Text {
            text: qsTr(inside)
            font.pixelSize: size
            color: fontColor
                    }
        }
    }

    Grid{
        anchors.centerIn: parent
        columns: 3
        spacing: 5

        Repeater{
            model: lista
            delegate: gridDelegate
        }

    }
}



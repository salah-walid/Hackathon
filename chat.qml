import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

ApplicationWindow {
    id :root
    visible: true
    width: 480
    height: 720
    title: qsTr("We care")

    property string pseudo: "Yacine"

    header : ToolBar {
        id : header
        Material.background: "#1d2125"
        topPadding: 15
        leftPadding: 12
        height : 60
        MyHeader {
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }

    WebSocket {
        id : socket
    }

    Drawer {
        id: drawer
        width: parent.width * 0.66
        height: parent.height
    }


    ScrollView{
        id : msgArea
        contentWidth: root.width
        //anchors.fill  : parent
        ColumnLayout{
            width: parent.width
            Repeater{
                width: parent.width
                model : listModel
                Message {
                    id : message
                    message: contentMessage
                    name_sender: pseudo
                }

            }
        }
    }


ListModel{
    id : listModel
}

footer: ToolBar  {
    id : footer

    topPadding: 5
    height: 65
    leftPadding: 12

    Material.background: "#1d2125"
    MyFooter {
        anchors.left: parent.left
        anchors.right: parent.right
    }
}
}
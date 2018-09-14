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
    title: qsTr("Chkili")
    //maximumWidth: 600
    //maximumHeight: 720
    minimumWidth : 480

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

    Drawer {
        id: drawer
        width: root.width * 0.66
        height: root.height
    }

    ScrollView{
        id : msgArea
        anchors.fill  : parent
        ColumnLayout{

            Repeater{
                model : listModel
                Message {
                    id : message

                    message: label
                    name_sender: "Chakib"

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

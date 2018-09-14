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


    header : ToolBar {
        id : header
        Material.background: "#1d2125"
        topPadding: 5
        leftPadding: 12
        height : 55
        MyHeader {

        }
    }
    /*
    ScrollView {
        id: scroll
        Material.background: "#363a3f"
        anchors {
            left: parent.left; right: parent.right
            top: header.bottom; bottom: footer.top
        }

        ChatBox {

        }*/

        Message {
            y :40
            name_sender: "Chakib"
            message: "ssssssssssssssss"
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

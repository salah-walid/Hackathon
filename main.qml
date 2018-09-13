import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1


ApplicationWindow {

    id :root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    header : ToolBar {
        id : header
        Material.background: "#1d2125"

        MyHeader {

        }
    }

    ScrollView {
        id: scroll
        Material.background: "#363a3f"
        anchors {
            left: parent.left; right: parent.right
            top: header.bottom; bottom: footer.top
        }
        ChatBox {

        }
    }

    footer: ToolBar  {
        id : footer
        Material.background: "#1d2125"
        MyFooter {
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
}

import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {

    id :root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    header : ToolBar {
        id : header
        MyHeader {

        }
    }

    ScrollView {
        id: scroll
        anchors {
            left: parent.left; right: parent.right
            top: header.bottom; bottom: footer.top
        }
        ChatBox {

        }
    }

    footer: ToolBar  {
        id : footer
        MyFooter {
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
}

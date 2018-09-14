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

    /*header : ToolBar {
        id : header
        Material.background: "#1d2125"
        topPadding: 15
        leftPadding: 12
        height : 60

        LoginHeader {
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
    */
    Drawer {
        id: drawer
        width: root.width * 0.66
        height: root.height
    }

    Rectangle {
        id: rectangle
        height: 60
        color: "#1d2125"
        z: 1
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        ToolButton {
            anchors.left: parent.left
            height: 28
            anchors.verticalCenter: parent.verticalCenter

            onClicked: {
                drawer.open()
            }

            Image {
                source:"icon/menu.png"
                anchors.centerIn: menuButton

                height:15
                width:20
            }
            id: menuButton
        }

        TextField {
            id: textField
            y: 9
            height: 43
            text: qsTr("")
            anchors.verticalCenterOffset: 3
            placeholderText: "Search"
            anchors.right: toolButton.left
            anchors.rightMargin: 15
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: menuButton.right
            anchors.leftMargin: 10
            Material.accent: "#45b482"

            Image {
                id: image
                x: 277
                y: 8
                width: 28
                height: 28
                anchors.verticalCenterOffset: -3
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 0
                source: "icon/magnifying-glass-icon.png"
            }
        }

        ToolButton {
            id: toolButton
            x: 426
            y: 16
            width: 25
            height: 25
            text: qsTr("Tool Button")
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 15
            display: AbstractButton.IconOnly

            Image {
                id: image1
                anchors.fill: parent
                source: "icon/sort-by-attributes.png"
            }
        }
    }

    ScrollView {
        id: scrollViewDoctor
        contentWidth: root.width
        anchors.top: rectangle.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left

        ScrollBar.vertical: ScrollBar {
             policy: ScrollBar.AlwaysOff
         }

        ColumnLayout {
            id: columnLayout
            width: 300
            spacing: 3
            anchors.fill: parent

            Repeater{
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                model : 10
                DoctorElement{

                }

            }
        }
    }
}

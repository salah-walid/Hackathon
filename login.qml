import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1
import QtQuick.Extras 1.4
import Qt.labs.calendar 1.0
import QtQuick.Controls 1.4 as Q1
ApplicationWindow{

    Material.theme: Material.Dark
    Material.accent: Material.Purple

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
        LoginHeader {
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }

    Drawer {
        id: drawer
        width: root.width * 0.66
        height: root.height
    }

    Item {
        id: item1
        y: 139
        height: 429
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Text {
            id: text3
            x: 133
            text: qsTr("We Care! ")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 40
            font.family: "Footlight MT Light"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
            font.pixelSize: 35
        }

        Rectangle {
            id: rectangle2
            width: 300
            height: 46
            color: "#1d2125"
            radius: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: text3.bottom
            anchors.topMargin: 35
            Layout.topMargin: 40
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            TextField {
                id: textField2
                text: qsTr("")
                renderType: Text.QtRendering
                anchors.fill: parent

                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                anchors.bottomMargin: 0
                horizontalAlignment: Text.AlignLeft
                Material.accent: "#45b482"
                anchors.leftMargin: 45
                rightPadding: 0
                placeholderText: "Username"
                anchors.rightMargin: 10

            }

            Image {
                id: image2
                y: 4
                width: 30
                height: 30
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                source: "icon/user.png"
                anchors.leftMargin: 6
                anchors.verticalCenterOffset: -2
            }
        }

        Rectangle {
            id: rectangle3
            x: 4
            width: 300
            height: 46
            color: "#1d2125"
            radius: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rectangle2.bottom
            anchors.topMargin: 15
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            TextField {
                id: textField3
                text: qsTr("")
                anchors.fill: parent
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                horizontalAlignment: Text.AlignLeft
                anchors.leftMargin: 45
                Material.accent: "#45b482"
                placeholderText: "Password"
                rightPadding: 0
                echoMode: TextInput.Password
                anchors.rightMargin: 10
            }

            Image {
                id: image3
                y: 4
                width: 30
                height: 30
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                source: "icon/padlock.png"
                anchors.leftMargin: 6
                anchors.verticalCenterOffset: -2
            }
        }

        CheckBox {
            id: checkBox1
            width: 130
            height: 32
            Material.theme: Material.Dark
            Material.accent: "#45b482"
            text: qsTr("Remember Me?")
            display: AbstractButton.TextOnly
            font.pointSize:9
            anchors.top: rectangle3.bottom
            anchors.topMargin: 8
            anchors.left: rectangle3.left
            anchors.leftMargin: 0
            Material.foreground: "#728ad7"
            tristate: false

        }

        ItemDelegate {
            id: text1
            height: 32
            //color: "#45b482"
            text: qsTr("Forgot my password?")
            font.underline: true
            font.bold: true
            //horizontalAlignment: Text.AlignRight
            //verticalAlignment: Text.AlignVCenter
            anchors.top: rectangle3.bottom
            anchors.topMargin: 8
            anchors.right: rectangle3.right
            anchors.rightMargin: -12
            font.pixelSize: 12
            Material.foreground: "#45b482"
            onClicked: {
                onLinkActivated: Qt.openUrlExternally("")
                drawer.close()
            }
            
        }

       RoundButton {
            id: button
            x: 293
            width: 97
            height: 48
            text: qsTr("Login")
            autoRepeat: false
            Material.background: "#45b482"
            anchors.right: rectangle3.right
            anchors.rightMargin: 0
            anchors.top: text1.bottom
            anchors.topMargin: 6
            radius: 8
       }
    }
}


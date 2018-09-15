import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1
import QtQuick.Extras 1.4
import Qt.labs.calendar 1.0
import QtQuick.Controls 1.4 as Q1

ApplicationWindow{

    id :root
    visible: true
    width: 480
    height: 720
    title: qsTr("We care")

    Material.theme: Material.Dark
    Material.accent: Material.Purple

    Item {
        id: item_login
        height: 429
        anchors.verticalCenterOffset: -96
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Image {
            id: text3
            x: 133
            width: 200
            height: 200
            source: "icon/logo.png"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 40

            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

        }

        Rectangle {
            id: rect_username
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
                id: username
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
                id: icon_username
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
            id: rectangle_passord
            x: 4
            width: 300
            height: 46
            color: "#1d2125"
            radius: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rect_username.bottom
            anchors.topMargin: 15
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            TextField {
                id: password
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
                id: icon_password
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
            id: rememberMe
            width: 130
            height: 32
            Material.theme: Material.Dark
            Material.accent: "#45b482"
            text: qsTr("Remember Me?")
            font.pixelSize: 12
            display: AbstractButton.TextOnly
            anchors.top: rectangle_passord.bottom
            anchors.topMargin: 8
            anchors.left: rectangle_passord.left
            anchors.leftMargin: 0
            Material.foreground: "#728ad7"
            tristate: false

        }

        ItemDelegate {
            id: forgetPassword
            height: 32
            text: qsTr("Forgot my password?")
            font.underline: true
            font.bold: true
            anchors.top: rectangle_passord.bottom
            anchors.topMargin: 8
            anchors.right: rectangle_passord.right
            anchors.rightMargin: -12
            font.pixelSize: 12
            Material.foreground: "#45b482"
            onClicked: {
                onLinkActivated: Qt.openUrlExternally("")
                drawer.close()
            }
            
        }

       RoundButton {
            id: button_login
            x: 293
            width: 97
            height: 48
            text: qsTr("Login")
            autoRepeat: false
            Material.background: "#45b482"
            anchors.right: rectangle_passord.right
            anchors.rightMargin: 0
            anchors.top: forgetPassword.bottom
            anchors.topMargin: 6
            radius: 8
            onClicked: {
                if(username.text == "zadmin" && password.text == "zadmin")
                    stack.push("HomePage.qml")
            }
       }
    }

    StackView {
           id: stack
           anchors.fill: parent
           focus:true
           initialItem: item_login

           Keys.onBackPressed:{
               if(stack.depth>1){
                   pop()
               }else{
                   Qt.quit()
               }
           }
       }
}


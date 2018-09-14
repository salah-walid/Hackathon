import QtQuick 2.0
import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Item {
    property string status: "Available"
    property string name: "walid"
    property string speciality: "Counsellor"
    property string description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris"

    height : 200
    //Layout.fillWidth: true

    Layout.topMargin: 25
    Layout.leftMargin: 30
    anchors.left : parent.left
    anchors.right : parent.right
    anchors.rightMargin: 25
    anchors.leftMargin: 25

    Rectangle {
        id: rectangle
        color: "#1d2125"
        radius: 6
        height: 200
        width : parent.width

        Image {
            id: image
            width: 60
            height: 60
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            source: "icon/user-white.png"

            Rectangle {
                id: rectangle1
                x: 55
                y: 52
                width: 23
                height: 23
                color: "#45b582"
                radius: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 5
                anchors.right: parent.right
                anchors.rightMargin: 2
            }
        }

        Text {
            id: doctorName
            fontSizeMode: Text.Fit

            color: "#45b582"
            text: qsTr(name)
            font.family: "Calibri"
            verticalAlignment: Text.AlignTop
            wrapMode: Text.WordWrap
            font.pointSize: 15
            anchors.top: image.top
            anchors.topMargin: 0
            anchors.left: image.right
            anchors.leftMargin: 25
        }

        Text {
            id: doctorSpeciality
            width: 73

            color: "#728ad7"
            text: qsTr(speciality)
            anchors.left: doctorName.left
            anchors.leftMargin: 2
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            anchors.top: doctorName.bottom
            font.pointSize: 12
            font.family: "Calibri"
            anchors.topMargin: 3
            fontSizeMode: Text.HorizontalFit
        }

        RowLayout {
            id: stars
            width: 133
            height: 31
            anchors.top: doctorSpeciality.bottom
            anchors.topMargin: 2
            anchors.left: doctorSpeciality.left
            anchors.leftMargin: -7
            //activeFocusOnTab: false
            spacing: 0

            Image {
                id: image1
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.preferredWidth: 20
                Layout.leftMargin: 6
                source: "icon/star.png"
            }

            Image {
                id: image2
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/star.png"
                Layout.preferredWidth: 20
            }

            Image {
                id: image3
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/star.png"
                Layout.preferredWidth: 20
            }

            Image {
                id: image4
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/starU.png"
                Layout.preferredWidth: 20
            }

            Image {
                id: image5
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/starU.png"
                Layout.preferredWidth: 20
            }
        }

        Text {
            id: description
            color: "#ffffff"
            text: qsTr("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: image.left
            anchors.leftMargin: 0
            anchors.top: stars.bottom
            anchors.topMargin: 10
            elide: Text.ElideRight
            wrapMode: Text.WordWrap
            font.pointSize: 10
            font.family: "Calibri"

        }

        ToolButton {
            id: toolButton
            x: 582
            width: 30
            height: 30
            text: qsTr("Tool Button")
            anchors.right: description.right
            anchors.rightMargin: 8
            anchors.top: doctorName.top
            anchors.topMargin: 6
            display: AbstractButton.IconOnly

            Image {
                id: image6
                anchors.fill: parent
                source: "icon/add-event.png"
            }
        }
    }

}

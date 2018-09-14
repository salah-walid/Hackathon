import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1

Item {



    RowLayout {


        ToolButton {
            Image {
                source:"icon/menu.png"
                anchors.centerIn: toolButton
            }


            id: toolButton
            font.pixelSize: Qt.application.font.pixelSize * 1.8
        }

       Text {
           font.pixelSize: 30
           Layout.leftMargin: 20
           //font.bold : true
           font.styleName: "Calibri"
           text : "Talking to "
           color: "#505358"
       }
       Text {
           font.pixelSize: 30
           //font.bold: true
           font.styleName: "Calibri"
           text : "Dr.Abdesslam"
           color: "#45b482"
       }
    }
}

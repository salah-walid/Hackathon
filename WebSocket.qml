import QtQuick 2.0
import QtWebSockets 1.1

WebSocket {
    url: "ws://192.168.43.235:9090"
    active: true
    onTextMessageReceived: {
        var JsonObject= JSON.parse(message);
        listModel.append({"contentMessage": JsonObject.message, "pseudo":JsonObject.pseudo})
    }
    onStatusChanged: {
        if (socket.status == WebSocket.Error) {
            console.log("Error: " + socket.errorString)
        } else if (socket.status == WebSocket.Open) {
           console.log("Connected")
        } else if (socket.status == WebSocket.Closed) {
            console.log("Close")
        }
    }
}

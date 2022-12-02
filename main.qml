import QtQuick
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Call C++ from QML")

    Column {
        x: 13
        y: 89
        spacing: 10
        Button {
            x: 20
            y: 20
            width: 100
            text: "Call C++ Method"
            onClicked: {
                BWorker.regularMethod()
                BWorker.cppSlot()
            }
        }

        Rectangle {
            x: 20
            y: 100
            width: textToShowId.implicitWidth + 20
            height: 50
            color: "lightblue"
            Text {
                id: testToShowId
                x: 0
                y: 0
                width: 179
                height: 42
                text: BWorker.regularMethodWithReturn("John", 25)
            }
        }
    }

    Other {

    }
}

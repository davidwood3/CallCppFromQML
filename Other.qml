import QtQuick

Item {
    // @disable-check M16
    Component.onCompleted: {
        BWorker.cppSlot();
        BWorker.cppSlot();
    }
}

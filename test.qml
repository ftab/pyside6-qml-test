import QtQuick
import QtQuick.Controls.Material

ApplicationWindow {
    visible: true
    width: 800
    height: 480
    color: Material.backgroundColor

    Page {
        anchors.fill: parent

        SwipeView {
            id: swipeView
            anchors.fill: parent
            currentIndex: tabBar.currentIndex

            Repeater {
                model: 3

                Pane {
                    width: SwipeView.view.width
                    height: SwipeView.view.height

                    Column {
                        spacing: 40
                        width: parent.width

                        Label {
                            width: parent.width
                            wrapMode: Label.Wrap
                            horizontalAlignment: Qt.AlignHCenter
                            text: qsTr("TabBar is a bar with icons or text which allows the user "
                                  + "to switch between different subtasks, views, or modes.")
                        }

                        Button {
                            text: qsTr("Hello World")
                            onClicked: pythonObj.clicked(index)
                        }
                    }
                }
            }
        }

        footer: TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex

            TabButton {
                text: qsTr("First")
            }
            TabButton {
                text: qsTr("Second")
            }
            TabButton {
                text: qsTr("Third")
            }
        }
    }
}


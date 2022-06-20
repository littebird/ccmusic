import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs
import QtMultimedia
//import Qt.labs.platform
import Qt.labs.folderlistmodel
//import "Mediaplayer.qml"
Page {
    id:pageroot
    property int interval : 20*dp
    Rectangle{
        id: rectangle1
        anchors.fill: parent
        color: "#fefefe"
        border.color: "#fefefe"
        border.width: 0

        Label {
            id: title
            y: 27
            width: 79
            height: 30
            text: qsTr("本地音乐")
            font.pixelSize: 20
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.family: "Arial"
        }

        Label {
            id: musicNum
            y: 37
            width: 47
            height: 20
            //text: localmusic.m_musicNum +qsTr("首音乐，")
            text: qsTr("首音乐，")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            anchors.bottom: title.bottom
            anchors.bottomMargin: 3
            anchors.left: title.right
            anchors.leftMargin: 20
        }

        Label{
            id: chooseDir
            y: 37
            width: 66
            height: 20
            anchors.bottom: title.bottom
            anchors.bottomMargin: 3
            anchors.left: musicNum.right
            anchors.leftMargin: 10
            text: qsTr("选择目录")
            color: "#0C9DDA"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            font.pixelSize: 14
            MouseArea{
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                //onClicked: selecttMusicDirDlg.open();
            }
        }

        Label{
            id: newMusic
            y: 37
            width: 66
            height: 20
            anchors.bottom: title.bottom
            anchors.bottomMargin: 3
            anchors.left: chooseDir.right
            anchors.leftMargin: 10
            text: qsTr("选择音乐")
            color: "#0C9DDA"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            font.pixelSize: 14


            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor;
                onClicked: fileDialog.open();
            }
        }
    }

        Rectangle {
            id: interval
            y: 73
            height: 3
            border.width: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            color: "#f0f0f0"
        }

        Rectangle{
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: interval.bottom
            anchors.topMargin: 0

            Rectangle {
                id: rectangle2
                color: "#ffffff"
                anchors.fill: parent
                anchors.top: parent.top
                anchors.topMargin: 600
                anchors.left: parent.left
                anchors.leftMargin: 800
                visible: true
                Button {
                    id: button
                    y: 200
                    width: 240
                    height: 75
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    background: Rectangle{
                        radius: 5
                        color: button.hovered ?  "#1167A8" : "#0C73C2"
                        Label{
                            anchors.fill: parent
                            text: qsTr("选择本地文件夹")
                            color: "#ffffff"
                            verticalAlignment:Label.AlignVCenter;
                            horizontalAlignment: Label.AlignHCenter;
                            font{
                                family: "Microsoft YaHei";
                                pixelSize: 20
                            }
                        }
                    }
                    MouseArea{
                        anchors.fill: parent
                        cursorShape: hovered ?  Qt.PointingHandCursor : Qt.ArrowCursor
                        onClicked: fileDialog.open()
                    }
                }


                Label {
                    id: label
                    x: 231
                    y: 66
                    width: 177
                    height: 32
                    text: qsTr("请选择本地音乐")
                    font.bold: true
                    anchors.bottom: label1.top
                    anchors.bottomMargin: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font{
                        family: "Microsoft YaHei";
                        pixelSize: 18
                        bold: true;
                    }

                }

                Label {
                    id: label1
                    x: 136
                    y: 117
                    width: 369
                    height: 32
                    text: qsTr("升级本地音乐为高品质并和朋友分享！")
                    anchors.bottom: button.top
                    anchors.bottomMargin: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font{
                        family: "Microsoft YaHei";
                        pixelSize: 16
                    }
                }

            }
        }
    }



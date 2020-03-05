import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import "utils.js" as MyScript
import Qt.Wes.Config 1.0

Window {
    id:root
	objectName: "objWindow1"
    visible: true
    width: 600
    height: 400
    title: qsTr("Hello World")

    property var componentObject;

	Rectangle{
		id:idRect1
		objectName : "objRect1"
		color: "teal"
		height:parent.height * 1 / 3
		anchors.left : parent.left
		anchors.right : parent.right

		Button
		{
			text:"change color of componentObject"
			height: 40
			onClicked:
			{
				componentObject.color = "yellow";
			}
		}
	}
    Rectangle{
        id:idRect2
		objectName : "objRect2"
        color: "plum"
        height:parent.height * 1 / 3
        anchors.left : parent.left
        anchors.right : parent.right
        anchors.top:idRect1.bottom

		Component.onCompleted: {
			componentObject = MyScript.createComponentObject("qrc:/method2.qml",this);
		}
		
    }

	Rectangle{
        id:idRect3
		objectName : "objRect3"
        color: "tan"
        height:parent.height * 1 / 3
        anchors.left : parent.left
        anchors.right : parent.right
        anchors.top:idRect2.bottom

		Component.onCompleted: {
			Qt.createQmlObject('import QtQuick 2.0;
								Rectangle{
									color: "blue"
									width:100
									height:100

									Text
									{
										text:"createQmlObject"
									}
								}',
								this,
								null);
		}
		
    }

    Component.onCompleted: {
//		MyScript.createComponentObject("qrc:/method2.qml",this);
    }

}

import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

Rectangle{
	id:idRectNewObject
	objectName : "objRect1"
	color: "magenta"
	width:100
	height:100
//	anchors.fill: parent

    Text
    {
        text:"createComponent"
    }

	Component.onCompleted:
	{
		console.log("idRectNewObject.height",idRectNewObject.height);
		console.log("parent.height",parent.height);
	}
}

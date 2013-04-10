import QtQuick 2.0
import QtQuick.XmlListModel 2.0

Item {
	XmlListModel {
		id: model
		source: "http://new.linuxos.sk/komentare/feeds/latest/"
		query: "/rss/channel/item"

		XmlRole { name: "title"; query: "title/string()" }
		XmlRole { name: "pubDate"; query: "pubDate/string()" }
	}

	Component {
		id: discussionDelegate
		Rectangle {
			height: container.height
			color: "white"
			width: parent.width
			Item {
				id: container
				height: childrenRect.height
				Text {
					anchors { top: parent.top; left: parent.left; right: parent.right }
					color: "black"
					font { weight: Font.Bold }
					text: title
				}
			}
		}
	}

	width: 200
	height: 200

	ListView {
		id: view
		anchors.fill: parent
		model: model
		delegate: discussionDelegate
		spacing: 1
	}
}

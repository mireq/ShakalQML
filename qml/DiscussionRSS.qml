import QtQuick 2.0
import QtQuick.XmlListModel 2.0

Item {
	XmlListModel {
		id: model
		source: "http://new.linuxos.sk/komentare/feeds/latest/"
		query: "/rss/channel/item"

		XmlRole { name: "title"; query: "title/string()" }
		XmlRole { name: "description"; query: "description/string()" }
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
				height: childrenRect.height + 10
				anchors { left: parent.left; right: parent.right }
				Text {
					id: title_text
					anchors { top: parent.top; left: parent.left; right: parent.right; topMargin: 5; leftMargin: 10 }
					color: "black"
					font { weight: Font.Bold; pointSize: 15 }
					text: title
					elide: Text.ElideRight
					textFormat: Text.PlainText
				}
				Text {
					anchors { top: title_text.bottom; left: parent.left; right: parent.right; leftMargin: 10 }
					color: "#888888"
					font { pointSize: 12 }
					text: description
					maximumLineCount: 1
					elide: Text.ElideRight
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

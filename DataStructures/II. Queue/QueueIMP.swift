//
//  QueueIMP.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

final class QueueIMP<Content>: Queue {

	private(set) var elements: [Content]

	init(withFirst element: Content) {
		elements = [element]
	}

	func enqueue(_ element: Content) {
		elements.append(element)
	}

	func dequeue() -> Content {
		elements.removeFirst()
	}
}

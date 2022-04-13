//
//  Queue.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

protocol Queue: StackQueueUmbrellaProtocol {

	func enqueue(_ element: Element)
	func dequeue() -> Element
}

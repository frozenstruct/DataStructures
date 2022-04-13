//
//  PriorityQueue.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

protocol PriorityQueue {

	associatedtype Element
	associatedtype ElementWrapper

	var elements: [ElementWrapper] { get }
	var count: Int { get }
	var description: [String] { get }

	func enqueue(element: Element, priority: Int)
}

extension PriorityQueue {

	var count: Int {
		elements.count
	}

	var description: [String] {
		elements.map { "\($0)" }
	}
}


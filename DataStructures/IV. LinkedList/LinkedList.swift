//
//  LinkedList.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 13.04.2022.
//

protocol LinkedListNode {

	associatedtype Element

	associatedtype Next: LinkedListNode

	var wrappedValue: Element { get }

	var next: Next? { get }

	func setNext(next: Next?)
}

protocol LinkedList {

	associatedtype Node: LinkedListNode

	associatedtype Head: LinkedListNode

	var head: Head { get }

	var last: Node { get }

	func insert(element: Node, position: Int)

	func remove(at position: Int)

	func get(position: Int)

	func sort()

	func slice(start: Int, end: Int) -> Node

	func reverse()
}

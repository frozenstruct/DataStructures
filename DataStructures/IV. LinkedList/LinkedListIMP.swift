//
//  LinkedListIMP.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 13.04.2022.
//

final class ListNode<Wrapped>: LinkedListNode {

	typealias Element = Wrapped

	typealias Next = ListNode

	private(set) var wrappedValue: Wrapped

	private(set) var next: ListNode<Wrapped>?

	init(wrappedValue: Wrapped, next: Next?) {
		self.wrappedValue = wrappedValue
		self.next = next
	}

	func setNext(next: Next?) {
		self.next = next
	}
}

final class LinkedListIMP<Wrapped>: LinkedList {

	typealias Node = ListNode<Wrapped>

	typealias Head = ListNode<Wrapped>

	private(set) var head: Head

	private(set) var last: Node {

		let node = head

		while 
	}

	init(head: Head, next: Node?) {
		self.head = head
		self.head.setNext(next: next)
	}

	func insert(element: ListNode<Wrapped>, position: Int) {

	}

	func remove(at position: Int) {

	}

	func get(position: Int) {

	}

	func sort() {

	}

	func slice(start: Int, end: Int) -> ListNode<Wrapped> {
		ListNode<Wrapped>.init(wrappedValue: 4 as! Wrapped, next: nil)
	}

	func reverse() {

	}
}

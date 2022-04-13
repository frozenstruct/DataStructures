//
//  StackIMP.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

final class StackIMP<Content>: Stack {

	private(set) var elements: [Content]

	init(withFirst element: Content) {
		elements = [element]
	}

	func push(_ element: Content) {
		elements.append(element)
	}

	func pop() -> Content {
		elements.removeLast()
	}
}

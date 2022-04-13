//
//  Stack.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

protocol Stack: StackQueueUmbrellaProtocol {

	func push(_ element: Element)
	func pop() -> Element
}

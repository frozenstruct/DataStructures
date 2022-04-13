//
//  StackQueueUmbrellaProtocol.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

protocol StackQueueUmbrellaProtocol {

	associatedtype Element

	var elements: [Element] { get }
	var count: Int { get }
	var description: [String] { get }
}

extension StackQueueUmbrellaProtocol {

	var count: Int {
		elements.count
	}

	var description: [String] {
		elements.map { "\($0)" }
	}
}

//
//  PriorityQueueIMP.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

final class PriorityQueueIMP<Content>: PriorityQueue {
	
	// MARK: Subtypes
	
	struct QueueElement {
		
		var wrappedValue: Content
		var priority: Int
	}
	
	typealias Element = Content
	
	typealias ElementWrapper = QueueElement
	
	// MARK: Properties
	
	private(set) var elements: [QueueElement] = []
	
	// MARK: Methods
	
	func enqueue(element: Content, priority: Int) {
		let element = QueueElement(
			wrappedValue: element,
			priority: priority
		)

		guard !elements.isEmpty
		else {
			elements.append(element)
			return
		}

		guard priority != 0
		else {
			elements.insert(element, at: elements.startIndex)
			return
		}

		let priorities = getPriorities()

		for obtainedPriority in priorities {

			if element.priority <= obtainedPriority {

				let comparedElementIndex = elements.firstIndex {
					$0.priority == obtainedPriority
				}

				if comparedElementIndex == 0 {
					elements.insert(element, at: 0)
					break
				} else if let idx = comparedElementIndex {
					elements.insert(element, at: (idx - 1))
					break
				}
			} else {
				elements.append(element)
				break
			}
		}
	}

	func dequeue() -> Content {
		let startIndex = elements.startIndex
		elements.remove(at: startIndex)
		return elements[startIndex].wrappedValue
	}
}

extension PriorityQueueIMP {

	private func getPriorities() -> [Int] {
		let priorities = elements.map { $0.priority }
		let prioritiesSet = Set(priorities)
		let prioritiesArray = Array(prioritiesSet).sorted(by: <)
		return prioritiesArray
	}
}

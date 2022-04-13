//
//  main.swift
//  DataStructures
//
//  Created by Dmitry Aksyonov on 12.04.2022.
//

import Foundation

// MARK: Stack

let stack = StackIMP<Int>.init(withFirst: 3)
stack.push(5)
stack.push(6)
print(stack.pop())
print(stack.description)

// MARK: Queue

print("")

let queue = QueueIMP<Int>.init(withFirst: 3)
queue.enqueue(5)
queue.enqueue(6)
print(queue.dequeue())
print(queue.description)

// MARK: Priority Queue

print("")

let priorityQueue = PriorityQueueIMP<Int>()
priorityQueue.enqueue(element: 234, priority: 10)
print(priorityQueue.description)
priorityQueue.enqueue(element: 132, priority: 1)
print(priorityQueue.description)
priorityQueue.enqueue(element: 111, priority: 666)
print(priorityQueue.description)
priorityQueue.enqueue(element: 55, priority: 0)
print(priorityQueue.description)
print(priorityQueue.dequeue())
print(priorityQueue.description)

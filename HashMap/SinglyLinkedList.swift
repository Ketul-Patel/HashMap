//
//  SinglyLinkedList.swift
//  HashMap
//
//  Created by Ketul Patel on 4/27/15.
//  Copyright (c) 2015 Ketul Patel. All rights reserved.
//
//  Lightweight SinglyLinkedList to handle HashMap Collisions

import Foundation
struct SinglyLinkedList<T> {
    var head = HeadNode<SinglyNode<T>>()
    func findNodeWithKey(key: String) -> SinglyNode<T>? {
        if var currentNode = head.next {
            while currentNode.key != key {
                if let nextNode = currentNode.next {
                    currentNode = nextNode
                } else {
                    return nil
                }
            }
            return currentNode
        } else {
            return nil
        }
    }
    func upsertNodeWithKey(key: String, AndValue val: T) -> SinglyNode<T> {
        if var currentNode = head.next {
            while let nextNode = currentNode.next {
                if currentNode.key == key {
                    break
                } else {
                    currentNode = nextNode
                }
            }
            if currentNode.key == key {
                currentNode.value = val
                return currentNode
            } else {
                currentNode.next = SinglyNode<T>(key: key, value: val, nextNode: nil)
                return currentNode.next!
            }
        } else {
            head.next = SinglyNode<T>(key: key, value: val, nextNode: nil)
            return head.next!
        }
    }
    func displayNodes() {
        println("Printing Nodes")
        if var currentNode = head.next {
            println("First Node's Value is \(currentNode.value!)")
            while let nextNode = currentNode.next {
                currentNode = nextNode
                println("Next Node's Value is \(currentNode.value!)")
            }
        } else {
            println("List is empty")
        }
    }
}
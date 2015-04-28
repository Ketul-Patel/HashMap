//
//  SinglyNode.swift
//  HashMap
//
//  Created by Ketul Patel on 4/27/15.
//  Copyright (c) 2015 Ketul Patel. All rights reserved.
//
//  This contains all of the node classes we need for our SinglyLinkedList
import Foundation
class Node<T> {
    var value: T?
    init(value: T?) {
        self.value = value
    }
}
class HeadNode<T> {
    var next: T?
}
class SinglyNode<T>: Node<T> {
    var key: String
    var next: SinglyNode<T>?
    init(key: String, value: T, nextNode: SinglyNode<T>?) {
        self.next = nextNode
        self.key = key
        super.init(value: value)
    }
}



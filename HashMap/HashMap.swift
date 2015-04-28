//
//  HashMap.swift
//  HashMap
//
//  Created by Ketul Patel on 4/27/15.
//  Copyright (c) 2015 Ketul Patel. All rights reserved.
//

import Foundation
struct HashMap<T> {
    var table = Array<SinglyLinkedList<T>?>()
    init() {
        for i in 0...99 {
            table.append(SinglyLinkedList<T>())
        }
    }
    
    private func hashString(s: String) -> Int {
        var returnNum = 0
        let scalars = s.unicodeScalars
        for scalar in scalars {
            returnNum += Int(scalar.value)
        }
        return returnNum % 10 // we will only have 100 buckets
    }
    mutating func setKey(key: String, withValue val: T) {
        let hashedString = hashString(key)
        if let collisionList = table[hashedString] {
            collisionList.upsertNodeWithKey(key, AndValue: val)
        } else {
            table[hashedString] = SinglyLinkedList<T>()
            table[hashedString]!.upsertNodeWithKey(key, AndValue: val)
        }
    }
    func getValueAtKey(key: String) -> T? {
        let hashedString = hashString(key)
        if let collisionList = table[hashedString] {
            return collisionList.findNodeWithKey(key)?.value
        } else {
            return nil
        }
    }
}

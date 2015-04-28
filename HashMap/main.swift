//
//  main.swift
//  HashMap
//
//  Created by Ketul Patel on 4/27/15.
//  Copyright (c) 2015 Ketul Patel. All rights reserved.
//

import Foundation
var hm = HashMap<String>()
hm.setKey("Name", withValue: "Jay")
hm.setKey("Age", withValue: "22")
hm.setKey("Occupation", withValue: "Web Developer")
hm.setKey("Company", withValue: "CodingDojo")
hm.setKey("Dad", withValue: "Jay")
hm.setKey("Mom", withValue: "Harita")
hm.setKey("Brother", withValue: "Jigish")
hm.setKey("Girlfriend", withValue: "Shayna")
println(hm.getValueAtKey("Name")!)


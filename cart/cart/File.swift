//
//  File.swift
//  cart
//
//  Created by Yaman Koujan on 22/03/2022.
//

import Foundation
struct Expenses: Identifiable{
    var id = UUID()
    var store : String
    var paid : Double
    var profileImage = ""
    var purchases : String
    var l : String
}

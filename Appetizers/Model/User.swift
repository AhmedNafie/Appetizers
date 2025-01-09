//
//  User.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 09/01/2025.
//

import Foundation

//Codable because using AppStorage or userDefaults we must store data not custom types
struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}

//
//  AddressResponse.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/11/06.
//

import Foundation
import SwiftUI

struct AddressResponse: Decodable {
    let results: [Result]
}

struct Result: Decodable {
    let address1: String
    let address2: String
    let address3: String
    let kana1: String
    let kana2: String
    let kana3: String
    let prefcode: String
    let zipcode: String
    
}

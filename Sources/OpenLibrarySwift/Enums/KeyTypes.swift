//
//  KeyTypes.swift
//  
//
//  Created by devon jerothe on 9/17/23.
//

import Foundation

public enum KeyTypes: String {
    case id
    case isbn
    case oclc
    case lccn
    case olid
}

public enum AuthorKeyTypes: String {
    case id
    case olid
}

public enum CoverSize: String {
    case small = "S"
    case medium = "M"
    case large = "L"
}

//
//  CoverStore.swift
//  
//
//  Created by devon jerothe on 9/17/23.
//

import Foundation

public protocol CoverService {
    func getCover(keyType: KeyTypes, value: String, coverSize: CoverSize) -> URL?
    func getAuthorCover(keyType: AuthorKeyTypes, value: String, imgSize: CoverSize) -> URL?
}

public struct CoverStore: CoverService {

    public init() {}

    public func getCover(keyType: KeyTypes, value: String, coverSize: CoverSize) -> URL? {
        return URL(string: "https://covers.openlibrary.org/b/\(keyType.rawValue)/\(value)-\(coverSize.rawValue)")
    }

    public func getAuthorCover(keyType: AuthorKeyTypes, value: String, imgSize: CoverSize) -> URL? {
        return URL(string: "https://covers.openlibrary.org/a/\(keyType.rawValue)/\(value)-\(imgSize.rawValue)")
    }
}

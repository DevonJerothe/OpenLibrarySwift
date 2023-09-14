//
//  BookStore.swift
//
//
//  Created by devon jerothe on 6/27/23.
//

import Foundation

public protocol BookServices: APIRequest {
    func fetchBook(_ bookID: String) async -> Result<Edition, APIError>
}

public struct BookStore: BookServices {
    public var urlSession: URLSession
    public var baseURL: String = "https://openlibrary.org/books"

    public func fetchBook(_ bookID: String) async -> Result<Edition, APIError> {
        await makeRequest(endpoint: "/\(bookID).json", response: Edition.self)
    }
}


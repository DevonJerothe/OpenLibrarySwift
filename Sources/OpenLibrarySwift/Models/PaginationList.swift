//
//  File.swift
//  
//
//  Created by devon jerothe on 6/27/23.
//

import Foundation

public class PaginatedList<T: Codable>: Codable {
    var links: Links?
    var size: Int?
    var entries: [T]?
}

public class Links: Codable {
    var work: String?
    var prev: String?
    var next: String?
}

extension PaginatedList: APIRequest {
    public var urlSession: URLSession {
        URLSession.shared
    }

    public var baseURL: String {
        "https://openlibrary.org"
    }

    func nextPage() async -> Result<PaginatedList<T>, APIError> {

        guard let nextURL = self.links?.next else {
            return .failure(.invalidURL)
        }

        return await makeRequest(endpoint: "\(nextURL)", response: PaginatedList<T>.self)
    }
}

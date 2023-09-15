//
//  WorksService.swift
//  
//
//  Created by devon jerothe on 6/26/23.
//

import Foundation

public protocol WorksService: APIRequest {
    func fetchWork(_ workID: String) async -> Result<Works, APIError>
    func fetchWork(fromKey: String) async -> Result<Works, APIError>
    func fetchEditions(_ workID: String) async -> Result<PaginatedList<Edition>, APIError>
    func fetchRatings(_ workID: String) async -> Result<WorkRating, APIError>
}

public struct WorksStore: WorksService {
    public var urlSession: URLSession
    public var baseURL: String = "https://openlibrary.org/"

    public init(
        urlSession: URLSession = URLSession(configuration: .default)
    ) {
        self.urlSession = urlSession
    }

    // Fetch Work
    public func fetchWork(_ workID: String) async -> Result<Works, APIError> {
        await makeRequest(endpoint: "works/\(workID).json", response: Works.self)
    }

    // Fetch Work via Key
    public func fetchWork(fromKey: String) async -> Result<Works, APIError> {
        await makeRequest(endpoint: "\(fromKey).json", response: Works.self)
    }

    // Fetch Editions of Work
    public func fetchEditions(_ workID: String) async -> Result<PaginatedList<Edition>, APIError> {
        await makeRequest(endpoint: "works/\(workID)/editions.json", response: PaginatedList<Edition>.self)
    }

    public func fetchRatings(_ workID: String) async -> Result<WorkRating, APIError> {
        await makeRequest(endpoint: "works/\(workID)/ratings.json", response: WorkRating.self)
    }
}

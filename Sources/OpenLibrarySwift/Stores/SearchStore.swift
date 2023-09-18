//
//  SearchStore.swift
//  
//
//  Created by devon jerothe on 6/27/23.
//

import Foundation

public protocol SearchService: APIRequest {
    func searchWorks(params: [SearchParams:String]) async -> Result<QueryResponse, APIError>
}

public struct SearchStore: SearchService {
    public var urlSession: URLSession
    public var baseURL: String = "https://openlibrary.org/search"

    public init(
        urlSession: URLSession = URLSession(configuration: .default)
    ) {
        self.urlSession = urlSession
    }

    public func searchWorks(params: [SearchParams:String]) async -> Result<QueryResponse, APIError> {
        await makeRequest(endpoint: ".json", response: QueryResponse.self, params: params)
    }
}

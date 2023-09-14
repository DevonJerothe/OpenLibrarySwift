//
//  APIRequest.swift
//  
//
//  Created by devon jerothe on 6/26/23.
//

import Foundation

public protocol APIRequest {
    var urlSession: URLSession { get }
    var baseURL: String { get }
}

extension APIRequest {
    func makeRequest<T: Codable>(endpoint: String, response: T.Type, params: [SearchParams: String] = [:]) async -> Result<T, APIError> {
        guard let baseURL = URL(string: baseURL + endpoint) else {
            return .failure(.invalidURL)
        }

        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)

        if params.isEmpty == false {
            urlComponents?.queryItems = buildQueryItems(params)
        }

        guard let url = urlComponents?.url else {
            return .failure(.invalidURL)
        }

        do {
            let request = URLRequest(url: url)
            let (data, response) = try await urlSession.data(for: request)

            guard let response = response as? HTTPURLResponse else {
                return .failure(.invalidResponse)
            }

            switch response.statusCode {
            case 200...299:
                guard let decoded = try? JSONDecoder().decode(T.self, from: data) else {
                    return .failure(.decodeFailure)
                }

                return .success(decoded)
            case 401:
                return .failure(.unauthorized)
            default:
                return .failure(.serverError(code: response.statusCode))
            }
        } catch {
            return .failure(.unknownError)
        }
    }

    func buildQueryItems(_ items: [SearchParams:String]) -> [URLQueryItem] {
        var queryItems: [URLQueryItem] = []

        for param in items {
            let queryItem = URLQueryItem(name: param.key.rawValue, value: param.value)
            queryItems.append(queryItem)
        }

        return queryItems
    }
}

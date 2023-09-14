//
//  File.swift
//  
//
//  Created by devon jerothe on 6/27/23.
//

import Foundation

public enum APIError: Error, LocalizedError {
    case invalidURL
    case invalidResponse
    case unknownError
    case decodeFailure
    case unauthorized
    case serverError(code: Int)

    //TODO: better error descriptions
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Unable to create URL"
        case .invalidResponse:
            return "Response Invalid"
        case .unknownError:
            return "An unknown error occured"
        case .decodeFailure:
            return "Failed to parse data"
        case .unauthorized:
            return "Access Forbidden"
        case .serverError:
            return "Server error check status code"
        }
    }
}

//
//  File.swift
//  
//
//  Created by devon jerothe on 8/14/23.
//

import Foundation

public class QueryResponse: Codable {
    public var numFound, start, offset: Int?
    public var numFoundExact: Bool?
    public var docs: [Doc]?
    public var worksNumFound: Int?
    public var q: String?

    enum CodingKeys: String, CodingKey {
        case numFound
        case start
        case numFoundExact
        case docs
        case worksNumFound = "num_found"
        case q
        case offset
    }

    init(
        numFound: Int?,
        start: Int?,
        numFoundExact: Bool?,
        docs: [Doc]?,
        worksNumFound: Int?,
        q: String?,
        offset: Int?
    ) {
        self.numFound = numFound
        self.start = start
        self.numFoundExact = numFoundExact
        self.docs = docs
        self.worksNumFound = worksNumFound
        self.q = q
        self.offset = offset
    }
}

public class Doc: Codable {
    public var key, title: String?
    public var coverI: Int?
    public var authorName: [String]?

    enum CodingKeys: String, CodingKey {
        case key, title
        case coverI = "cover_i"
        case authorName = "author_name"
    }

    init(key: String?, title: String?, coverI: Int?, authorName: [String]?) {
        self.key = key
        self.title = title
        self.coverI = coverI
        self.authorName = authorName
    }
}

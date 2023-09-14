//
//  File.swift
//  
//
//  Created by devon jerothe on 8/14/23.
//

import Foundation

public class QueryResponse: Codable {
    var numFound, start, offset: Int?
    var numFoundExact: Bool?
    var docs: [Doc]?
    var worksNumFound: Int?
    var q: String?

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

class Doc: Codable {
    var key, title: String?
    var coverI: Int?
    var authorName: [String]?

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

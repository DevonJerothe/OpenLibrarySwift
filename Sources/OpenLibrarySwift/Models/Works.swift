//
//  File.swift
//  
//
//  Created by devon jerothe on 6/26/23.
//

import Foundation

public class Works: Codable {
    public var firstPublishDate, title, key: String?
    public var authors: [AuthorKey]?
    public var type: TypeClass?
    public var description: String?
    public var covers: [Int]?
    public var subjectPlaces, subjects, subjectPeople, subjectTimes: [String]?
    public var location: String?
    public var latestRevision, revision: Int?
}

public class AuthorKey: Codable {
    public var author: TypeClass?
    public var key: TypeClass?
}

public class WorkRating: Codable {
    public var summary: RatingSummary?
    public var counts: [String:Int]?

    init(
        summary: RatingSummary?,
        counts: [String:Int]?
    ) {
        self.summary = summary
        self.counts = counts
    }
}

public class RatingSummary: Codable {
    public var average: Double?
    public var count: Int?
    public var sortable: Double?

    init(
        average: Double?,
        count: Int?,
        sortable: Double?
    ) {
        self.average = average
        self.count = count
        self.sortable = sortable
    }
}

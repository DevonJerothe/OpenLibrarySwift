//
//  File.swift
//  
//
//  Created by devon jerothe on 6/26/23.
//

import Foundation

public class Works: Codable {
    var firstPublishDate, title, key: String?
    var authors: [AuthorKey]?
    var type: TypeClass?
    var description: String?
    var covers: [Int]?
    var subjectPlaces, subjects, subjectPeople, subjectTimes: [String]?
    var location: String?
    var latestRevision, revision: Int?
}

public class AuthorKey: Codable {
    var author: TypeClass?
    var key: TypeClass?
}

public class WorkRating: Codable {
    var summary: RatingSummary?
    var counts: [String:Int]?

    init(
        summary: RatingSummary?,
        counts: [String:Int]?
    ) {
        self.summary = summary
        self.counts = counts
    }
}

public class RatingSummary: Codable {
    var average: Double?
    var count: Int?
    var sortable: Double?

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

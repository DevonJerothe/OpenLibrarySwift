//
//  File.swift
//  
//
//  Created by devon jerothe on 6/27/23.
//

import Foundation

public class Edition: Codable {
    public var type: TypeClass?
    public var authors: [TypeClass]?
    public var isbn13: [String]?
    public var languages: [TypeClass]?
    public var pagination, publishDate: String?
    public var publishers, sourceRecords, subjects: [String]?
    public var title, weight, fullTitle: String?
    public var works: [TypeClass]?
    public var key: String?
    public var covers: [Int]?
    public var numberOfPages, latestRevision, revision: Int?
    public var localID: [String]?
    public var physicalFormat: String?
    public var isbn10: [String]?
    public var ocaid: String?
    public var subtitle: String?
    public var lcClassifications, oclcNumbers: [String]?
    public var physicalDimensions, publishCountry: String?
    public var workTitles, contributions: [String]?
    public var byStatement: String?
    public var publishPlaces, otherTitles, series: [String]?
    public var genres: [String]?
    public var editionName: String?
    public var description: EditionDescription?
    public var deweyDecimalClass, iaBoxID: [String]?
}

public class EditionDescription: Codable {
    public var type: String?
    public var value: String?
}

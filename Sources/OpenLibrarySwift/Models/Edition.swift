//
//  File.swift
//  
//
//  Created by devon jerothe on 6/27/23.
//

import Foundation

public class Edition: Codable {
    var type: TypeClass?
    var authors: [TypeClass]?
    var isbn13: [String]?
    var languages: [TypeClass]?
    var pagination, publishDate: String?
    var publishers, sourceRecords, subjects: [String]?
    var title, weight, fullTitle: String?
    var works: [TypeClass]?
    var key: String?
    var covers: [Int]?
    var numberOfPages, latestRevision, revision: Int?
    var localID: [String]?
    var physicalFormat: String?
    var isbn10: [String]?
    var ocaid: String?
    var subtitle: String?
    var lcClassifications, oclcNumbers: [String]?
    var physicalDimensions, publishCountry: String?
    var workTitles, contributions: [String]?
    var byStatement: String?
    var publishPlaces, otherTitles, series: [String]?
    var genres: [String]?
    var editionName: String?
    var description: EditionDescription? 
    var deweyDecimalClass, iaBoxID: [String]?
}

public class EditionDescription: Codable {
    var type: String?
    var value: String?
}

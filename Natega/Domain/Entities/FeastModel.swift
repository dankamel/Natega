//
//  FeastModel.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation

// MARK: - FeastModel
struct FeastModel: Codable {
    let paschaDistance, julianDayNumber, year, month: Int
    let day, weekday, tone: Int
    let titles: [String]
    let feastLevel: Int
    let feastLevelDescription: String
    let feasts: String?
    let fastLevel: Int
    let fastLevelDesc: String
    let fastException: Int
    let fastExceptionDesc: String
    let saints: [String]
    let serviceNotes: String?
    let readings: [Reading]

    enum CodingKeys: String, CodingKey {
        case paschaDistance = "pascha_distance"
        case julianDayNumber = "julian_day_number"
        case year, month, day, weekday, tone, titles
        case feastLevel = "feast_level"
        case feastLevelDescription = "feast_level_description"
        case feasts
        case fastLevel = "fast_level"
        case fastLevelDesc = "fast_level_desc"
        case fastException = "fast_exception"
        case fastExceptionDesc = "fast_exception_desc"
        case saints
        case serviceNotes = "service_notes"
        case readings
    }
}

// MARK: - Reading
struct Reading: Codable {
    let source, book, readingDescription, display: String
    let shortDisplay: String
    let passage: [Passage]

    enum CodingKeys: String, CodingKey {
        case source, book
        case readingDescription = "description"
        case display
        case shortDisplay = "short_display"
        case passage
    }
}

// MARK: - Passage
struct Passage: Codable {
    let book: Book
    let chapter, verse: Int
    let content: String
}

enum Book: String, Codable {
    case gal = "GAL"
    case luk = "LUK"
}

//
//  FeastModel.swift
//  Natega
//
//  Created by Nikola Veljanovski on 17.12.22.
//

import Foundation

// MARK: - FeastModel
struct FeastModel: Codable {
    let title, periodInfo: String?
    let bible: Bible
    let bibles: [Bible]
    let sections: [Section]
    let copticDate: String
}

// MARK: - Bible
struct Bible: Codable {
    let id: Int
    let name: String
    let languageID: Int

    enum CodingKeys: String, CodingKey {
        case id, name
        case languageID = "languageId"
    }
}

// MARK: - Section
struct Section: Codable {
    let id: Int
    let title: String
    let subSections: [SubSection]
}

// MARK: - SubSection
struct SubSection: Codable {
    let id: Int
    let title: String
    let introduction: String?
    let readings: [Reading]
}

// MARK: - Reading
struct Reading: Codable, Identifiable {
    let id: Int
    let title, introduction, conclusion: String?
    let passages: [Passage]?
    let html: String?
}

// MARK: - Passage
struct Passage: Codable {
    let bookID: Int
    let bookTranslation: String
    let chapter: Int
    let ref: String
    let verses: [Verse]

    enum CodingKeys: String, CodingKey {
        case bookID = "bookId"
        case bookTranslation, chapter, ref, verses
    }
}

// MARK: - Verse
struct Verse: Codable {
    let id, bibleID, bookID, chapter: Int
    let number: Int
    let text: String

    enum CodingKeys: String, CodingKey {
        case id
        case bibleID = "bibleId"
        case bookID = "bookId"
        case chapter, number, text
    }
}

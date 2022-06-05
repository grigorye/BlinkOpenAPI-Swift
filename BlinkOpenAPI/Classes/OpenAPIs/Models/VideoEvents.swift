//
// VideoEvents.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoEvents: Codable, JSONEncodable, Hashable {

    public var limit: Int
    public var purgeId: Int
    public var refreshCount: Int
    public var media: [Media]

    public init(limit: Int, purgeId: Int, refreshCount: Int, media: [Media]) {
        self.limit = limit
        self.purgeId = purgeId
        self.refreshCount = refreshCount
        self.media = media
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case limit
        case purgeId = "purge_id"
        case refreshCount = "refresh_count"
        case media
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(limit, forKey: .limit)
        try container.encode(purgeId, forKey: .purgeId)
        try container.encode(refreshCount, forKey: .refreshCount)
        try container.encode(media, forKey: .media)
    }
}


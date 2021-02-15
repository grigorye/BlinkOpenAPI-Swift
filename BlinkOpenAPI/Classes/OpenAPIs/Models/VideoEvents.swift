//
// VideoEvents.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoEvents: Codable {

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

}

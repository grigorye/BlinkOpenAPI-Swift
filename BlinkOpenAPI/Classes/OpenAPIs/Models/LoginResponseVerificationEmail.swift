//
// LoginResponseVerificationEmail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LoginResponseVerificationEmail: Codable, Hashable {

    public var _required: Bool

    public init(_required: Bool) {
        self._required = _required
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _required = "required"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_required, forKey: ._required)
    }
}


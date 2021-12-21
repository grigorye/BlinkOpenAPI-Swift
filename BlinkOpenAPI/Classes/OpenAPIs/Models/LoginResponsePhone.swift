//
// LoginResponsePhone.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LoginResponsePhone: Codable, Hashable {

    public var number: String
    public var last4Digits: String
    public var countryCallingCode: String
    public var valid: Bool

    public init(number: String, last4Digits: String, countryCallingCode: String, valid: Bool) {
        self.number = number
        self.last4Digits = last4Digits
        self.countryCallingCode = countryCallingCode
        self.valid = valid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case number
        case last4Digits = "last_4_digits"
        case countryCallingCode = "country_calling_code"
        case valid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(number, forKey: .number)
        try container.encode(last4Digits, forKey: .last4Digits)
        try container.encode(countryCallingCode, forKey: .countryCallingCode)
        try container.encode(valid, forKey: .valid)
    }
}


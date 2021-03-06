//
// LoginResponseClient.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct LoginResponseClient: Codable {

    public var verificationRequired: Bool

    public init(verificationRequired: Bool) {
        self.verificationRequired = verificationRequired
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case verificationRequired = "verification_required"
    }

}

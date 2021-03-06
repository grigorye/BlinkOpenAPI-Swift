//
// HomeScreenResponseAccount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct HomeScreenResponseAccount: Codable {

    public var id: Int
    public var emailVerified: Bool
    public var emailVerificationRequired: Bool

    public init(id: Int, emailVerified: Bool, emailVerificationRequired: Bool) {
        self.id = id
        self.emailVerified = emailVerified
        self.emailVerificationRequired = emailVerificationRequired
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case emailVerified = "email_verified"
        case emailVerificationRequired = "email_verification_required"
    }

}

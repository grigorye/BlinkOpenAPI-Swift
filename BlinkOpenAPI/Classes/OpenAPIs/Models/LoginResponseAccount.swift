//
// LoginResponseAccount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LoginResponseAccount: Codable, Hashable {

    public var accountId: Int
    public var userId: Int
    public var clientId: Int
    public var newAccount: Bool
    public var tier: String
    public var region: String
    public var accountVerificationRequired: Bool
    public var clientVerificationRequired: Bool
    public var phoneVerificationRequired: Bool
    public var verificationChannel: String

    public init(accountId: Int, userId: Int, clientId: Int, newAccount: Bool, tier: String, region: String, accountVerificationRequired: Bool, clientVerificationRequired: Bool, phoneVerificationRequired: Bool, verificationChannel: String) {
        self.accountId = accountId
        self.userId = userId
        self.clientId = clientId
        self.newAccount = newAccount
        self.tier = tier
        self.region = region
        self.accountVerificationRequired = accountVerificationRequired
        self.clientVerificationRequired = clientVerificationRequired
        self.phoneVerificationRequired = phoneVerificationRequired
        self.verificationChannel = verificationChannel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId = "account_id"
        case userId = "user_id"
        case clientId = "client_id"
        case newAccount = "new_account"
        case tier
        case region
        case accountVerificationRequired = "account_verification_required"
        case clientVerificationRequired = "client_verification_required"
        case phoneVerificationRequired = "phone_verification_required"
        case verificationChannel = "verification_channel"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(userId, forKey: .userId)
        try container.encode(clientId, forKey: .clientId)
        try container.encode(newAccount, forKey: .newAccount)
        try container.encode(tier, forKey: .tier)
        try container.encode(region, forKey: .region)
        try container.encode(accountVerificationRequired, forKey: .accountVerificationRequired)
        try container.encode(clientVerificationRequired, forKey: .clientVerificationRequired)
        try container.encode(phoneVerificationRequired, forKey: .phoneVerificationRequired)
        try container.encode(verificationChannel, forKey: .verificationChannel)
    }
}


//
// HomeScreenResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HomeScreenResponse: Codable, Hashable {

    public var account: HomeScreenResponseAccount
    public var networks: [Network]
    public var syncModules: [SyncModule]
    public var cameras: [Camera]

    public init(account: HomeScreenResponseAccount, networks: [Network], syncModules: [SyncModule], cameras: [Camera]) {
        self.account = account
        self.networks = networks
        self.syncModules = syncModules
        self.cameras = cameras
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case account
        case networks
        case syncModules = "sync_modules"
        case cameras
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(account, forKey: .account)
        try container.encode(networks, forKey: .networks)
        try container.encode(syncModules, forKey: .syncModules)
        try container.encode(cameras, forKey: .cameras)
    }
}


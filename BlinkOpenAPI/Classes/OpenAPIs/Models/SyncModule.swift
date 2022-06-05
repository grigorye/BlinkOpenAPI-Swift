//
// SyncModule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SyncModule: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case online = "online"
        case offline = "offline"
    }
    public var id: Int
    public var createdAt: Date
    public var updatedAt: Date
    public var lastHb: Date
    public var name: String
    public var onboarded: Bool
    public var enableTempAlerts: Bool
    public var status: Status
    public var serial: String
    public var fwVersion: String
    public var wifiStrength: Int
    public var networkId: Int
    public var localStorageEnabled: Bool
    public var localStorageCompatible: Bool
    public var localStorageStatus: String

    public init(id: Int, createdAt: Date, updatedAt: Date, lastHb: Date, name: String, onboarded: Bool, enableTempAlerts: Bool, status: Status, serial: String, fwVersion: String, wifiStrength: Int, networkId: Int, localStorageEnabled: Bool, localStorageCompatible: Bool, localStorageStatus: String) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lastHb = lastHb
        self.name = name
        self.onboarded = onboarded
        self.enableTempAlerts = enableTempAlerts
        self.status = status
        self.serial = serial
        self.fwVersion = fwVersion
        self.wifiStrength = wifiStrength
        self.networkId = networkId
        self.localStorageEnabled = localStorageEnabled
        self.localStorageCompatible = localStorageCompatible
        self.localStorageStatus = localStorageStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case lastHb = "last_hb"
        case name
        case onboarded
        case enableTempAlerts = "enable_temp_alerts"
        case status
        case serial
        case fwVersion = "fw_version"
        case wifiStrength = "wifi_strength"
        case networkId = "network_id"
        case localStorageEnabled = "local_storage_enabled"
        case localStorageCompatible = "local_storage_compatible"
        case localStorageStatus = "local_storage_status"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(lastHb, forKey: .lastHb)
        try container.encode(name, forKey: .name)
        try container.encode(onboarded, forKey: .onboarded)
        try container.encode(enableTempAlerts, forKey: .enableTempAlerts)
        try container.encode(status, forKey: .status)
        try container.encode(serial, forKey: .serial)
        try container.encode(fwVersion, forKey: .fwVersion)
        try container.encode(wifiStrength, forKey: .wifiStrength)
        try container.encode(networkId, forKey: .networkId)
        try container.encode(localStorageEnabled, forKey: .localStorageEnabled)
        try container.encode(localStorageCompatible, forKey: .localStorageCompatible)
        try container.encode(localStorageStatus, forKey: .localStorageStatus)
    }
}


//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Originator: APIModel {

    public var userLegalName: String

    public var accountId: String

    public var userPhysicalAddress: String

    public var institutionName: String

    public var value: Value

    public var timestamp: String

    public init(userLegalName: String, accountId: String, userPhysicalAddress: String, institutionName: String, value: Value, timestamp: String) {
        self.userLegalName = userLegalName
        self.accountId = accountId
        self.userPhysicalAddress = userPhysicalAddress
        self.institutionName = institutionName
        self.value = value
        self.timestamp = timestamp
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        userLegalName = try container.decode("userLegalName")
        accountId = try container.decode("accountId")
        userPhysicalAddress = try container.decode("userPhysicalAddress")
        institutionName = try container.decode("institutionName")
        value = try container.decode("value")
        timestamp = try container.decode("timestamp")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(userLegalName, forKey: "userLegalName")
        try container.encode(accountId, forKey: "accountId")
        try container.encode(userPhysicalAddress, forKey: "userPhysicalAddress")
        try container.encode(institutionName, forKey: "institutionName")
        try container.encode(value, forKey: "value")
        try container.encode(timestamp, forKey: "timestamp")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Originator else { return false }
      guard self.userLegalName == object.userLegalName else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.userPhysicalAddress == object.userPhysicalAddress else { return false }
      guard self.institutionName == object.institutionName else { return false }
      guard self.value == object.value else { return false }
      guard self.timestamp == object.timestamp else { return false }
      return true
    }

    public static func == (lhs: Originator, rhs: Originator) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
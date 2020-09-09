//
//  Environment.swift

import Foundation

public enum Environment {
  // MARK: - Keys, define all your custom configs keys.
  /// Keys
  ///
  /// Define keys from plist already defined that values from xcconfigs
  /// The rawValue must same with **plist key name**.
  enum Keys {
    enum Plist {
      static let apiBaseURL = "API_BASE_URL"
      static let logEnable = "LOG_ENABLE"
    }
  }


  // MARK: - Plist
  static let infoDictionary: [String: Any] = {
    guard let dict = Bundle.main.infoDictionary else {
      fatalError("Plist file not found")
    }
    return dict
  }()


  // MARK: - Plist values -
  //################# Plist values ######################
  // You needs implement of value how it type to return
  //   when add keys of plist on enum.
  //#####################################################

  /** Example to get API base URL of plist defined from xcconfigs. */
  static func apiBaseURL() -> URL {
    let key = #function.replacingOccurrences(of: "()", with: "")

    guard let rootURLstring = Environment.infoDictionary[Keys.Plist.apiBaseURL] as? String else {
      fatalError("\(key) not set in plist for this environment")
    }
    guard let url = URL(string: rootURLstring) else {
      fatalError("\(key): \(rootURLstring) is invalid")
    }
    return url
  }

  /** Example to get **boolean values** of plist defined from xcconfigs. */
  static func logEnable() -> Bool {
    let key = #function.replacingOccurrences(of: "()", with: "")

    guard let apiKey = Environment.infoDictionary[Keys.Plist.logEnable] as? NSString else {
      fatalError("\(key) not set in plist for this environment")
    }
    return apiKey.boolValue
  }

}

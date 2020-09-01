//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
public struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  public static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  public struct storyboard {
    /// Storyboard `Blue`.
    public static let blue = _R.storyboard.blue()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Blue", bundle: ...)`
    public static func blue(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.blue)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  public struct string {
    /// This `R.string.blueStrings` struct is generated, and contains static references to 1 localization keys.
    public struct blueStrings {
      /// Value: Blue
      public static let blue = Rswift.StringResource(key: "blue", tableName: "BlueStrings", bundle: R.hostingBundle, locales: [], comment: nil)

      /// Value: Blue
      public static func blue(preferredLanguages: [String]? = nil) -> String {
        guard let preferredLanguages = preferredLanguages else {
          return NSLocalizedString("blue", tableName: "BlueStrings", bundle: hostingBundle, comment: "")
        }

        guard let (_, bundle) = localeBundle(tableName: "BlueStrings", preferredLanguages: preferredLanguages) else {
          return "blue"
        }

        return NSLocalizedString("blue", tableName: "BlueStrings", bundle: bundle, comment: "")
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

public struct _R: Rswift.Validatable {
  public static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  public struct storyboard: Rswift.Validatable {
    public static func validate() throws {
      #if os(iOS) || os(tvOS)
      try blue.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    public struct blue: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      public typealias InitialController = BlueViewController

      public let blueViewController = StoryboardViewControllerResource<BlueViewController>(identifier: "BlueViewController")
      public let bundle = R.hostingBundle
      public let name = "Blue"

      public func blueViewController(_: Void = ()) -> BlueViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: blueViewController)
      }

      public static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.blue().blueViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'blueViewController' could not be loaded from storyboard 'Blue' as 'BlueViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}

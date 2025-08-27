//
//  LocalizationManager.swift
//  FindProiOS
//
//  Created by Osman Kök on 22.04.2025.
//

import Foundation

final class LocalizationManager {
    static let shared = LocalizationManager()

    private var translations: [String: String] = [:]

    private init() {
        loadLanguage()
    }

    func localized(_ key: String) -> String {
        return translations[key] ?? key
    }

    func setLocale(_ locale: String) {
        loadLanguage(locale: locale)
    }

    private func loadLanguage(locale: String = "tr") {
        guard let path = Bundle.main.path(forResource: locale, ofType: "json", inDirectory: "locales"),
              let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: String] else {
            print("Localization load failed")
            return

        }
        translations = json
    }
}
// titleLabel.text = LocaleKeys.jobDetail.localized


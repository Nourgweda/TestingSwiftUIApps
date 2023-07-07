//
//  ConverterHandler.swift
//  TestingSwiftUIApps
//
//  Created by Nour Gweda on 03/07/2023.
//

import Foundation
import UIKit

extension ConverterView {

    class ConverterHandler: ObservableObject {

        @Published var textValue = ""
        @Published var convertedValue = "$0"

        private let converter = Converters()

        func convertToUSD() {
            convertedValue = converter.convertEuroToUSD(euro: textValue)
            hideKeyboard()
        }

        private func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

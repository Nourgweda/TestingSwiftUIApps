//
//  Converters.swift
//  TestingSwiftUIApps
//
//  Created by Nour Gweda on 03/07/2023.
//

import Foundation

class Converters {

    func convertEuroToUSD(euro: String) -> String {
        let usdRate = 1.08
        let euroValue = Double(euro) ?? 0

        if euroValue <= 0 {
            return "please enter a positive number"
        }

        if euroValue >= 1_000_000 {
            return "value too big to convert"
        }

        return "$\(String(format: "%.2f", euroValue * usdRate))"
    }
}

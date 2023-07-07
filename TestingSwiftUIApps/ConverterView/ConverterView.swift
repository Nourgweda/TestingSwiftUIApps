//
//  ConverterView.swift
//  TestingSwiftUIApps
//
//  Created by Nour Gweda on 03/07/2023.
//

import SwiftUI

struct ConverterView: View {

    // MARK: - StateObject variables
    @StateObject internal var viewHandler = ConverterHandler()

    var body: some View {
        Form {
            VStack(spacing: 20) {
                Text("\(viewHandler.convertedValue)")
                    .font(.largeTitle)

                TextField("Enter a value", text: $viewHandler.textValue)
                    .keyboardType(.decimalPad)
                    .submitLabel(.done)

                Button("Convert") {
                    viewHandler.convertToUSD()
                }
            }
        }.padding(20)
    }
}

struct ConverterView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterView()
    }
}

//
//  SettingsScreen.swift
//  BrandMasterSUI
//
//  Created by Алексей on 03.09.2020.
//  Copyright © 2020 Alexey Orekhov. All rights reserved.
//

import SwiftUI

struct SettingsScreen: View {
    
    @State private var isOnAccuracy = false
    @State private var isOnSignal = true
    @State private var isOnSimple = true
    
    @State private var section = 0
    var deviceType = ["ДАСВ", "ДАСК"]
    var measureType = ["кгс/см\u{00B2}", "МПа"]
    
//    @State private var airCapacity: String = "250"
    
    var body: some View {
        NavigationView {
            Form {
                // Section 0
                Section(footer: Text("Точность позволяет вводить значение давления до единиц.")) {
                    Picker(selection: $section, label: Text("Тип СИЗОД")) {
                        ForEach(0..<deviceType.count) {
                            Text(self.deviceType[$0])
                        }
                    }
                    
                    Picker(selection: $section, label: Text("Единицы измерения")) {
                        ForEach(0..<measureType.count) {
                            Text(self.measureType[$0])
                        }
                    }
                    
                    Toggle(isOn: $isOnAccuracy, label: {
                        Text("Точность")
                    })
                    
                    Toggle(isOn: $isOnSignal, label: {
                        Text("Учитывать сигнал")
                    })
                    
                    Toggle(isOn: $isOnSimple, label: {
                        Text("Подробное решение")
                    })
                }
                
                // Section 1
                Section(header: Text("ПАРАМЕТРЫ СИЗОД")) {
                    Text("DFsdf")
                }
                
                // Section 2
                Section {
                    Text("Сбросить настройки")
                        .font(.body)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.trailing)
                }
                
            }.navigationBarTitle("Настройки")
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}

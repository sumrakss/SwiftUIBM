//
//  ContentView.swift
//  BrandMasterSUI
//
//  Created by Алексей on 02.09.2020.
//  Copyright © 2020 Alexey Orekhov. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
    
    @State private var isOnFire = true
    @State private var isOnHard = false
    
    @State private var enterTime = Date()
    @State private var fireTime = Date()
    @State private var enterTimeShow = false
    @State private var fireTimeShow = false
    
    @State private var teamSize = 3
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter
    }
    
    
    
    var body: some View {
            NavigationView {
                Form {
                    Section {
                        Toggle(
                            isOn: $isOnFire,
                            label: {
                                Text(isOnFire ? "Очаг - поиск" : "Очаг - обнаружен")
                        }).onTapGesture {
                            
                        }
                        
                        Toggle(
                            isOn: $isOnHard,
                            label: {
                                Text(isOnHard ? "Условия - сложные" : "Условия - нормальные")
                        }).onTapGesture {
                            
                        }
                        
                        HStack {
                            Text("Время включения")
                            Spacer()
                            Text("\(dateFormatter.string(from: enterTime))")
                                .font(.title)
                                .foregroundColor(.blue)
                        }.onTapGesture {
                            self.enterTimeShow = !self.enterTimeShow
                        }
                        
                        if self.enterTimeShow {
                            DatePicker("", selection: $enterTime, displayedComponents: .hourAndMinute)
                                .labelsHidden()
                                .environment(\.locale, Locale.init(identifier: "ru"))
                        }
                        
                        HStack {
                            Text("Время у очага")
                            Spacer()
                            Text("\(dateFormatter.string(from: fireTime))")
                                .font(.title)
                                .foregroundColor(.blue)
                        }.onTapGesture {
                            self.fireTimeShow = !self.fireTimeShow
                        }
                        
                        if self.fireTimeShow {
                            DatePicker("", selection: $fireTime, displayedComponents: .hourAndMinute)
                                .labelsHidden()
                                .environment(\.locale, Locale.init(identifier: "ru"))
                        }
                    }
                    
                    Section(header: Text("Давление в звене")) {
                            
                            Stepper("Состав звена", value: $teamSize, in: 2...5)
                            
                            TeamSizeCell()
                    }
                }.navigationBarTitle("Условия работы")
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

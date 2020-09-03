//
//  ContentView.swift
//  BrandMasterSUI
//
//  Created by Алексей on 03.09.2020.
//  Copyright © 2020 Alexey Orekhov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainScreen()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Расчёты")
            }.tag(0)
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Настройки")
            }.tag(1)
            
            Text("Info")
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Информация")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

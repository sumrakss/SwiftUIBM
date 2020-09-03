//
//  SettingsDeviceParameters.swift
//  BrandMasterSUI
//
//  Created by Алексей on 03.09.2020.
//  Copyright © 2020 Alexey Orekhov. All rights reserved.
//

import SwiftUI

struct SettingsParameters: View {
    
    @State private var airCapacity: String = "0.0"
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Vб")
                    .fontWeight(.semibold)
                
                Text("Вместимость баллона")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            TextField("enterValue", text: $airCapacity)
                .frame(width: 70, height: 35)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
        }
    }
}

struct SettingsParameters_Previews: PreviewProvider {
    static var previews: some View {
        SettingsParameters()
    }
}

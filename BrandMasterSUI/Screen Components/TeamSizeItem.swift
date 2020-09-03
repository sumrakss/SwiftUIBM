//
//  TeamSizeItem.swift
//  BrandMasterSUI
//
//  Created by Алексей on 03.09.2020.
//  Copyright © 2020 Alexey Orekhov. All rights reserved.
//

import SwiftUI


struct TeamSizeItem: View {
    
    private var number = 0
    @State private var enterValue: String = "300"
    @State private var fireValue: String = "250"
    
    var body: some View {
        HStack {
            Text("\(number)")
                .bold()
            
            TextField("enterValue", text: $enterValue)
                .frame(width: 85, height: 35)
            
            
            TextField("fireValue", text: $fireValue)
                .frame(width: 85, height: 35)
        }
        .font(.title)
        .multilineTextAlignment(.center)
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct TeamSizeItem_Previews: PreviewProvider {
    static var previews: some View {
        TeamSizeItem()
    }
}

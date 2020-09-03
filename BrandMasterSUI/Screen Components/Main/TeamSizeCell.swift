//
//  TeamSizeCell.swift
//  BrandMasterSUI
//
//  Created by Алексей on 03.09.2020.
//  Copyright © 2020 Alexey Orekhov. All rights reserved.
//

import SwiftUI

struct TeamSizeCell: View {
    var body: some View {
        VStack {
            HStack {
                Text("Р вкл.")
                Text("Р очага")
            }
            TeamSizeItem()
            TeamSizeItem()
            TeamSizeItem()
        }
    }
}

struct TeamSizeCell_Previews: PreviewProvider {
    static var previews: some View {
        TeamSizeCell()
    }
}

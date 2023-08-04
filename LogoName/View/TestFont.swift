//
//  TestFont.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//

import SwiftUI

struct TestFont: View {
    var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(Font.custom("Quicksand-Bold", size: 50))
    }
}

struct TestFont_Previews: PreviewProvider {
    static var previews: some View {
        TestFont()
    }
}

//
//  ShadowModifiers.swift
//  GitRepoWithUserInfo
//
//  Created by Abdullah on 06/02/2023.
//

import SwiftUI

struct HomeCardShadow: ViewModifier {
  
    func body(content: Content) -> some View {
        content.border(Color("card_border_color"), width: 0.4)
        .shadow (
            color: Color(red: 0, green: 0, blue: 0).opacity(0.07),
            radius: 10,
            x: 2,
            y: 2
         )
    }
}

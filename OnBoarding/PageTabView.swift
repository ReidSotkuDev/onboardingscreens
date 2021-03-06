//
//  PageTabView.swift
//  screen
//
//  Created by PMStudent on 11/11/21.
//

import SwiftUI

struct PageTabView: View {
    @Binding var selection: Int
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(tabs.indices, id: \.self) { index in
                TabDetailsView(index: index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientView()
            PageTabView(selection: Binding.constant(0))
        }
    }
}

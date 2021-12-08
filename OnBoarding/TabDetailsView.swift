//
//  TabDetailsView.swift
//  screen
//
//  Created by PMStudent on 11/11/21.
//

import SwiftUI

struct TabDetailsView: View {
    let index: Int
    
    var body: some View {
        VStack {
            Image(tabs[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 560)
            
            Text(tabs[index].title)
                .font(.title)
                .bold()
            
            Text(tabs[index].text)
                .padding()
        }
        .foregroundColor(.white)
    }
}

struct TabDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientView()
            TabDetailsView(index: 0)
        }
    }
}

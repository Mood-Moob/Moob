//
//  MenuView.swift
//  Moob
//
//  Created by 노연주 on 2022/04/25.
//

import SwiftUI

struct MenuView: View {
    var descriptionText = ""
    var image = ""
    
    var body: some View {
        ZStack{
            Color.white.frame(width: 290, height: 170, alignment: .center)
            
            VStack{
                Image(image)
                Text(descriptionText)
                    .font(.system(size: 15, weight: .thin, design: .default)).foregroundColor(Color(red: 125/255, green: 125/255, blue: 125/255))
            }
            
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

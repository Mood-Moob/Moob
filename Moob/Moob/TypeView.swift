//
//  TypeView.swift
//  Moob
//
//  Created by 노연주 on 2022/07/01.
//

import SwiftUI

struct TypeView: View {
    var typeImage = ""
    var typeName = ""
    var typeDestination = ChooseMbtiView()
    
    var body: some View {
        NavigationLink(destination: typeDestination){
            ZStack{
                Color.white.frame(width: 140, height: 160, alignment: .center)
                
                VStack{
                    Image(typeImage)
                    Text(typeName)
                        .font(.system(size: 15, weight: .thin, design: .default)).foregroundColor(Color(red: 125/255, green: 125/255, blue: 125/255))
                }
                
            }.cornerRadius(10)
                .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4).padding(13)
        }
    }
}

struct TypeView_Previews: PreviewProvider {
    static var previews: some View {
        TypeView()
    }
}

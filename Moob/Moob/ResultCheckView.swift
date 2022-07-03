//
//  ResultCheckView.swift
//  Moob
//
//  Created by 노연주 on 2022/07/03.
//

import SwiftUI

struct ResultCheckView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: ChooseMbtiView().navigationBarHidden(true)){
                        Image("Moob_Prev")
                            .resizable()
                            .frame(width: 12, height: 20, alignment: .topTrailing)
                    }.padding(30)
                    Spacer()
                    NavigationLink(destination: MainView().navigationBarHidden(true)){
                        Image("Moob_Home")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .topTrailing)
                    }.padding(30)
                }
                VStack(alignment: .leading){
                    HStack(){
                        Text("INTJ").font(.custom("SigmarOne-Regular", size: 36))
                            .foregroundColor(Color(red: 212/255, green: 214/255, blue: 255/255)).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    HStack{
                        Text("용의주도한 전략가").font(.system(size: 20, weight: .thin, design: .default))
                            .foregroundColor(Color(red: 125/255, green: 125/255, blue: 125/255)).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }.offset(x: 50, y: 0)
            }
        }
    }
}

struct ResultCheckView_Previews: PreviewProvider {
    static var previews: some View {
        ResultCheckView()
    }
}

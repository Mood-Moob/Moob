//
//  ResultCheckView.swift
//  Moob
//
//  Created by 노연주 on 2022/07/03.
//

import SwiftUI

struct ResultCheckView: View {
    var mbti = ""
    var mbtiColor = Color(red: 1, green: 1, blue: 1)
    var mbtiKorean = ""
    var mbtiImage = ""
    var mbtiJob = ""
    var mbtiBack = Color(red: 1, green: 1, blue: 1)
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: ChooseMbtiView().navigationBarHidden(true)){
                        Image("Moob_Prev")
                            .resizable()
                            .frame(width: 12, height: 20, alignment: .center)
                    }.padding(30)
                    Spacer()
                    NavigationLink(destination: MainView().navigationBarHidden(true)){
                        Image("Moob_Home")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .center)
                    }.padding(30)
                }
                VStack(alignment: .leading){
                    HStack(){
                        Text(mbti).font(.custom("SigmarOne-Regular", size: 36))
                            .foregroundColor(mbtiColor).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    HStack{
                        Text(mbtiKorean)
                            .font(.custom("AppleSDGothicNeo-Thin", size: 20))
                            .foregroundColor(Color(red: 125/255, green: 125/255, blue: 125/255)).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }.offset(x: 50, y: -20)
                HStack{
                    Image(mbtiImage).resizable().frame(width: 200, height: 200, alignment: .center)
                }
                HStack{
                    ZStack{
                        mbtiBack
                        HStack{
                            Text(mbtiJob).font(.custom("AppleSDGothicNeo-Thin", size: 20))
                                .lineSpacing(3)
                                .multilineTextAlignment(.center)
                        }
                    }.cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 4, y: 4)
                        .frame(width: 329, height: 224, alignment: .center)
                }.offset(x: 0, y: 60)
            }.offset(x: 0, y: -80)
        }
    }
}

struct ResultCheckView_Previews: PreviewProvider {
    static var previews: some View {
        ResultCheckView()
    }
}

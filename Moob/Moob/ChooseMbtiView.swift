//
//  ChooseMbtiView.swift
//  Moob
//
//  Created by 노연주 on 2022/04/25.
//

import SwiftUI

struct ChooseMbtiView: View {
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                HStack(alignment:.top){
                    Spacer()
                    NavigationLink(destination: MainView().navigationBarHidden(true)){
                        Image("Moob_Home")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .topTrailing)
                            
                    }.padding(22)
                }
                TopView(descriptionText: "Choose your MBTI.")
                HStack(){
                    Button(action:{
                        print("Front")
                    }){
                        Image("Moob_Front")
                            .resizable()
                            .frame(width: 8, height: 17, alignment: .leading)
                    }
                    Spacer()
                    Text("분석가형")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color(red: 212/255, green: 214/255, blue: 255/255))
                    Spacer()
                    Button(action:{
                        print("Back")
                    }){
                        Image("Moob_Back")
                            .resizable()
                            .frame(width: 8, height: 17, alignment: .leading)
                    }
                }.padding(37)
            }
        }
    }
}

struct ChooseMbtiView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseMbtiView()
    }
}

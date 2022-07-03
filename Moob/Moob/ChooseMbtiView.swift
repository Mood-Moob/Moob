//
//  ChooseMbtiView.swift
//  Moob
//
//  Created by 노연주 on 2022/04/25.
//

import SwiftUI

struct ChooseMbtiView: View {
    @State var typeNum = 1
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                HStack(alignment:.top){
                    Spacer()
                    NavigationLink(destination: MainView().navigationBarHidden(true)){
                        Image("Moob_Home")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .topTrailing)
                    }.padding(30)
                }
                TopView(descriptionText: "Choose your MBTI.").padding(40).offset(x: 0, y: -50)
                HStack(){
                    Button(action:{
                        if typeNum == 1 {
                            typeNum = 4
                        } else {
                            typeNum = typeNum - 1
                        }
                        print(typeNum)
                    }){
                        Image("Moob_Front")
                            .resizable()
                            .frame(width: 8, height: 17, alignment: .leading)
                    }.padding()
                    Spacer()
                    switch typeNum{
                    case 1:
                        Text("분석가형")
                            .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                            .foregroundColor(Color(red: 212/255, green: 214/255, blue: 255/255))
                    case 2:
                        Text("외교형")
                            .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                            .foregroundColor(Color(red: 218/255, green: 255/255, blue: 201/255))
                    case 3:
                        Text("관리자형")
                            .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                            .foregroundColor(Color(red: 204/255, green: 231/255, blue: 255/255))
                    case 4:
                        Text("탐험가형")
                            .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                            .foregroundColor(Color(red: 255/255, green: 234/255, blue: 178/255))
                    default:
                        Text("분석가형")
                            .font(.custom("AppleSDGothicNeo-Bold", size: 20))
                            .foregroundColor(Color(red: 212/255, green: 214/255, blue: 255/255))
                    }
                    
                    Spacer()
                    Button(action: {
                        if typeNum == 4 {
                            typeNum = 1
                        } else {
                            typeNum = typeNum + 1
                        }
                        print(typeNum)
                    }){
                        Image("Moob_Back")
                            .resizable()
                            .frame(width: 8, height: 17, alignment: .leading)
                    }.padding(10)
                }.padding(37).offset(x: 0, y: -120)
                HStack{
                    Spacer()
                    switch typeNum{
                    case 1:
                        TypeStackView(typeImage1: "Moob_INTJ", typeImage2: "Moob_INTP", typeImage3: "Moob_ENTJ", typeImage4: "Moob_ENTP", typeName1: "INTJ", typeName2: "INTP", typeName3: "ENTJ", typeName4: "ENTP", typeDetination1: ChooseMbtiView(), typeDetination2: ChooseMbtiView(), typeDetination3: ChooseMbtiView(), typeDetination4: ChooseMbtiView())
                    case 2:
                        TypeStackView(typeImage1: "Moob_INFJ", typeImage2: "Moob_INFP", typeImage3: "Moob_ENFJ", typeImage4: "Moob_ENFP", typeName1: "INFJ", typeName2: "INFP", typeName3: "ENFJ", typeName4: "ENFP", typeDetination1: ChooseMbtiView(), typeDetination2: ChooseMbtiView(), typeDetination3: ChooseMbtiView(), typeDetination4: ChooseMbtiView())
                    case 3:
                        TypeStackView(typeImage1: "Moob_ISTJ", typeImage2: "Moob_ISFJ", typeImage3: "Moob_ESTJ", typeImage4: "Moob_ESFJ", typeName1: "ISTJ", typeName2: "ISFJ", typeName3: "ESTJ", typeName4: "ESFJ", typeDetination1: ChooseMbtiView(), typeDetination2: ChooseMbtiView(), typeDetination3: ChooseMbtiView(), typeDetination4: ChooseMbtiView())
                    case 4:
                        TypeStackView(typeImage1: "Moob_ISTP", typeImage2: "Moob_ISFP", typeImage3: "Moob_ESTP", typeImage4: "Moob_ESFP", typeName1: "ISTP", typeName2: "ISFP", typeName3: "ESTP", typeName4: "ESFP", typeDetination1: ChooseMbtiView(), typeDetination2: ChooseMbtiView(), typeDetination3: ChooseMbtiView(), typeDetination4: ChooseMbtiView())
                    default:
                        TypeStackView(typeImage1: "Moob_INTJ", typeImage2: "Moob_INTP", typeImage3: "Moob_ENTJ", typeImage4: "Moob_ENTP", typeName1: "INTJ", typeName2: "INTP", typeName3: "ENTJ", typeName4: "ENTP", typeDetination1: ChooseMbtiView(), typeDetination2: ChooseMbtiView(), typeDetination3: ChooseMbtiView(), typeDetination4: ChooseMbtiView())
                    }
                    
                    Spacer()
                }.offset(x: 0, y: -130)
            }
        }
    }
    
}

struct ChooseMbtiView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseMbtiView()
    }
}

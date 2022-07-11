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
                ZStack{
                    HStack(alignment:.top){
                        Spacer()
                        NavigationLink(destination: MainView().navigationBarHidden(true)){
                            Image("Moob_Home")
                                .resizable()
                                .frame(width: 25, height: 25, alignment: .topTrailing)
                        }.padding(30).offset(x: 0, y: -100)
                    }
                    TopView(descriptionText: "Choose your MBTI.").padding(40)
                }
                HStack(){
                    Button(action:{
                        if typeNum == 1 {
                            typeNum = 4
                        } else {
                            typeNum = typeNum - 1
                        }
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
                        TypeStackView(
                            typeImage1: "Moob_INTJ",
                            typeImage2: "Moob_INTP",
                            typeImage3: "Moob_ENTJ",
                            typeImage4: "Moob_ENTP",
                            typeName1: "INTJ",
                            typeName2: "INTP",
                            typeName3: "ENTJ",
                            typeName4: "ENTP",
                            typeDetination1: ResultCheckView(
                                mbti: "INTJ",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "전략가",
                                mbtiImage: "Moob_INTJ",
                                mbtiJob: "투자 은행원\n재무 상담가\nSW 개발자",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)),
                            typeDetination2: ResultCheckView(
                                mbti: "INTP",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "논리술사",
                                mbtiImage: "Moob_INTP",
                                mbtiJob: "프로그래머\n재무 분석가\n설계자\n교수",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)),
                            typeDetination3: ResultCheckView(
                                mbti: "ENTJ",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "통솔자",
                                mbtiImage: "Moob_ENTJ",
                                mbtiJob: "임원\n변호사\n경영 컨설턴트\n분석 전문가",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)),
                            typeDetination4: ResultCheckView(
                                mbti: "ENTP",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "변론가",
                                mbtiImage: "Moob_ENTP",
                                mbtiJob: "기업가\n정치가\n부동산 전문가\n마케팅 디렉터",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)))
                    case 2:
                        TypeStackView(
                            typeImage1: "Moob_INFJ",
                            typeImage2: "Moob_INFP",
                            typeImage3: "Moob_ENFJ",
                            typeImage4: "Moob_ENFP",
                            typeName1: "INFJ",
                            typeName2: "INFP",
                            typeName3: "ENFJ",
                            typeName4: "ENFP",
                            typeDetination1: ResultCheckView(
                                mbti: "INFJ",
                                mbtiColor: Color(red: 218/255, green: 255/255, blue: 201/255),
                                mbtiKorean: "옹호자",
                                mbtiImage: "Moob_INFJ",
                                mbtiJob: "치료사\n사회복지사\n고객관계매니저",
                                mbtiBack: Color(red: 244/255, green: 255/255, blue: 239/255)),
                            typeDetination2: ResultCheckView(
                                mbti: "INFP",
                                mbtiColor: Color(red: 218/255, green: 255/255, blue: 201/255),
                                mbtiKorean: "중재자",
                                mbtiImage: "Moob_INFP",
                                mbtiJob: "그래픽디자이너\n심리학자\n치료사\n작가\n편집자",
                                mbtiBack: Color(red: 244/255, green: 255/255, blue: 239/255)),
                            typeDetination3: ResultCheckView(
                                mbti: "ENFJ",
                                mbtiColor: Color(red: 218/255, green: 255/255, blue: 201/255),
                                mbtiKorean: "선도자",
                                mbtiImage: "Moob_ENFJ",
                                mbtiJob: "PR전문가\n세일즈 매니저\n고용/HR 전문가",
                                mbtiBack: Color(red: 244/255, green: 255/255, blue: 239/255)),
                            typeDetination4: ResultCheckView(
                                mbti: "ENFP",
                                mbtiColor: Color(red: 218/255, green: 255/255, blue: 201/255),
                                mbtiKorean: "활동가",
                                mbtiImage: "Moob_ENFP",
                                mbtiJob: "저널리스트\n요식업 경영자\n파티플래너",
                                mbtiBack: Color(red: 244/255, green: 255/255, blue: 239/255)))
                    case 3:
                        TypeStackView(
                            typeImage1: "Moob_ISTJ",
                            typeImage2: "Moob_ISFJ",
                            typeImage3: "Moob_ESTJ",
                            typeImage4: "Moob_ESFJ",
                            typeName1: "ISTJ",
                            typeName2: "ISFJ",
                            typeName3: "ESTJ",
                            typeName4: "ESFJ",
                            typeDetination1: ResultCheckView(
                                mbti: "ISTJ",
                                mbtiColor: Color(red: 204/255, green: 231/255, blue: 255/255),
                                mbtiKorean: "현실주의자",
                                mbtiImage: "Moob_ISTJ",
                                mbtiJob: "감리사\n회계사\n재무 경영자\n웹 개발자",
                                mbtiBack: Color(red: 242/255, green: 249/255, blue: 255/255)),
                            typeDetination2: ResultCheckView(
                                mbti: "ISFJ",
                                mbtiColor: Color(red: 204/255, green: 231/255, blue: 255/255),
                                mbtiKorean: "수호자",
                                mbtiImage: "Moob_ISFJ",
                                mbtiJob: "치과의사\n사서\n초등학교 교사\n창업가",
                                mbtiBack: Color(red: 242/255, green: 249/255, blue: 255/255)),
                            typeDetination3: ResultCheckView(
                                mbti: "ESTJ",
                                mbtiColor: Color(red: 204/255, green: 231/255, blue: 255/255),
                                mbtiKorean: "경영자",
                                mbtiImage: "Moob_ESTJ",
                                mbtiJob: "보험 세일즈맨\n약사\n변호사\n프로젝트 매니저",
                                mbtiBack: Color(red: 242/255, green: 249/255, blue: 255/255)),
                            typeDetination4: ResultCheckView(
                                mbti: "ESFJ",
                                mbtiColor: Color(red: 204/255, green: 231/255, blue: 255/255),
                                mbtiKorean: "집정관",
                                mbtiImage: "Moob_ESFJ",
                                mbtiJob: "판매 대표자\n간호사\n헬스케어 종사자",
                                mbtiBack: Color(red: 242/255, green: 249/255, blue: 255/255)))
                    case 4:
                        TypeStackView(
                            typeImage1: "Moob_ISTP",
                            typeImage2: "Moob_ISFP",
                            typeImage3: "Moob_ESTP",
                            typeImage4: "Moob_ESFP",
                            typeName1: "ISTP",
                            typeName2: "ISFP",
                            typeName3: "ESTP",
                            typeName4: "ESFP",
                            typeDetination1: ResultCheckView(
                                mbti: "ISTP",
                                mbtiColor: Color(red: 255/255, green: 234/255, blue: 178/255),
                                mbtiKorean: "장인",
                                mbtiImage: "Moob_ISTP",
                                mbtiJob: "토목기사\n파일럿\n경제학자\n데이터 분석가",
                                mbtiBack: Color(red: 255/255, green: 243/255, blue: 212/255)),
                            typeDetination2: ResultCheckView(
                                mbti: "ISFP",
                                mbtiColor: Color(red: 255/255, green: 234/255, blue: 178/255),
                                mbtiKorean: "모험가",
                                mbtiImage: "Moob_ISFP",
                                mbtiJob: "패션디자이너\n물리치료사\n조경설계자",
                                mbtiBack: Color(red: 255/255, green: 243/255, blue: 212/255)),
                            typeDetination3: ResultCheckView(
                                mbti: "ESTP",
                                mbtiColor: Color(red: 255/255, green: 234/255, blue: 178/255),
                                mbtiKorean: "사업가",
                                mbtiImage: "Moob_ESTP",
                                mbtiJob: "탐정\n은행원\n투자가\n스포츠 코치",
                                mbtiBack: Color(red: 255/255, green: 243/255, blue: 212/255)),
                            typeDetination4: ResultCheckView(
                                mbti: "ESFP",
                                mbtiColor: Color(red: 255/255, green: 234/255, blue: 178/255),
                                mbtiKorean: "연예인",
                                mbtiImage: "Moob_ESFP",
                                mbtiJob: "아동 복지 상담가\n배우\n디자이너\n환경 과학자",
                                mbtiBack: Color(red: 255/255, green: 243/255, blue: 212/255)))
                    default:
                        TypeStackView(
                            typeImage1: "Moob_INTJ",
                            typeImage2: "Moob_INTP",
                            typeImage3: "Moob_ENTJ",
                            typeImage4: "Moob_ENTP",
                            typeName1: "INTJ",
                            typeName2: "INTP",
                            typeName3: "ENTJ",
                            typeName4: "ENTP",
                            typeDetination1: ResultCheckView(
                                mbti: "INTJ",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "전략가",
                                mbtiImage: "Moob_INTJ",
                                mbtiJob: "투자 은행원\n재무 상담가\nSW 개발자",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)),
                            typeDetination2: ResultCheckView(
                                mbti: "INTP",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "논리술사",
                                mbtiImage: "Moob_INTP",
                                mbtiJob: "프로그래머\n재무 분석가\n설계자\n교수",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)),
                            typeDetination3: ResultCheckView(
                                mbti: "ENTJ",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "통솔자",
                                mbtiImage: "Moob_ENTJ",
                                mbtiJob: "임원\n변호사\n경영 컨설턴트\n분석 전문가",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)),
                            typeDetination4: ResultCheckView(
                                mbti: "ENTP",
                                mbtiColor: Color(red: 212/255, green: 214/255, blue: 255/255),
                                mbtiKorean: "변론가",
                                mbtiImage: "Moob_ENTP",
                                mbtiJob: "기업가\n정치가\n부동산 전문가\n마케팅 디렉터",
                                mbtiBack: Color(red: 240/255, green: 241/255, blue: 255/255)))
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

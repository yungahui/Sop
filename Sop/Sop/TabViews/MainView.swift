//
//  ContentView.swift
//  Sop
//
//  Created by 윤가희 on 2022/04/30.
//

import SwiftUI

struct MainView: View {
    //var stringTest : String
    let array: [String] = ["1", "2"]
    
    @State var pictureName1 = ""
    @State var pictureName2 = ""
    
    var AlbumArray : [String] = ["Album1" ]
    
    var body: some View {
        
        ScrollView(){
            VStack{
                HStack(spacing: 0){
                    Text("Sop")
                        .font(.custom("BrandonGrotesque-BoldItalic", size: 36))
                        .foregroundColor(Color("TextColor"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                } //App logo
                .padding([.vertical], 16.0)
                .padding(.leading, 16.0)
                .ignoresSafeArea()

                ImageBlock(SopPhoto: pictureName1, album: Album1, SopTest: AlbumArray[0][0])
                    .padding(.bottom, 20.0)
                //ImageBlock(SopPhoto: pictureName2, album: Album2)
                    .padding(.bottom, 20.0)

            }
        }
        .onAppear{
            pictureName1 = AlbumPictureNames["Album1"]?.randomElement() ?? "IMG_7943"
            pictureName2 = AlbumPictureNames["Album2"]?.randomElement() ?? "IMG_7504"
        }
    }
}

//let 자 = Album5.first(where: {$0.imgName == "IMG_7943" })!

//필름 한 롤의 사진을 album1,2,3로 딕셔너리에 저장 > 접속할때마다 각각의 롤에서 랜덤으로 한 장씩 골라서 메인홈에서 보여줌
var AlbumPictureNames : [String : [String]] = [
    "Album1" : ["IMG_7943", "IMG_7941", "IMG_7933", "IMG_7920", "IMG_3684"],
    "Album2" : ["IMG_7504", "IMG_7493"]
]


struct Img {
    var imgName : String
    var SopTitle: String
    var heart: Bool
    var CameraInfo: String
    var FilmInfo: String
    var Setting: String
    var Explain: String
}

var AlbumArray : [[Img]] = [Album5, Album4]

var Album5 : [Img] = [
    Img(imgName : "IMG_7943", SopTitle: "부산 바다", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting: "1/250s   f/4   iso 200", Explain: "우연히 만난 부산의 노을"),
    Img(imgName : "IMG_7941", SopTitle : "청사포", heart : false, CameraInfo : "Nikon FM2", FilmInfo : "FujiColor C200", Setting : "1/500s   f/4   iso 200", Explain : "따뜻한 느낌의 풍경이라, 꼭 필름에 잘 담아내고 싶었다. 하늘이 하얗게 날아간게 아쉽다."),
    Img(imgName: "IMG_7933", SopTitle: "흰여울 바다", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting : "1/500s   f/8   iso 200", Explain: ""),
    Img(imgName: "IMG_7920", SopTitle: "캠핑 모닥불", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting: "1/15s   f/2.8   iso 200", Explain: "불 사진을 찍어보는건 처음이었는데, 꽤 마음에 드는 결과물이 나왔다. 셔터스피드를 낮춰서 찍은게 신의 한 수."),
    Img(imgName: "IMG_3684", SopTitle: "광합성", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting : "1/250s   f/8   iso 200", Explain: "hi")
]
var Album4 : [Img] = [
    Img(imgName : "IMG_7943", SopTitle: "부산 바다", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting: "1/250s   f/4   iso 200", Explain: "우연히 만난 부산의 노을"),
    Img(imgName : "IMG_7941", SopTitle : "청사포", heart : false, CameraInfo : "Nikon FM2", FilmInfo : "FujiColor C200", Setting : "1/500s   f/4   iso 200", Explain : "따뜻한 느낌의 풍경이라, 꼭 필름에 잘 담아내고 싶었다. 하늘이 하얗게 날아간게 아쉽다."),
    Img(imgName: "IMG_7933", SopTitle: "흰여울 바다", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting : "1/500s   f/8   iso 200", Explain: ""),
    Img(imgName: "IMG_7920", SopTitle: "캠핑 모닥불", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting: "1/15s   f/2.8   iso 200", Explain: "불 사진을 찍어보는건 처음이었는데, 꽤 마음에 드는 결과물이 나왔다. 셔터스피드를 낮춰서 찍은게 신의 한 수."),
    Img(imgName: "IMG_3684", SopTitle: "광합성", heart: false, CameraInfo: "Nikon FM2", FilmInfo: "FujiColor C200", Setting : "1/250s   f/8   iso 200", Explain: "hi")
]

var Album1 : [String : [String : String]] = [
    "IMG_7943": ["SopTitle" : "부산 바다", "heart" : "0", "CameraInfo" : "Nikon FM2", "FilmInfo" : "FujiColor C200", "Setting" : "1/250s   f/4   iso 200", "Explain" : "우연히 만난 부산의 노을"],
    "IMG_7941": ["SopTitle" : "청사포", "heart" : "0", "CameraInfo" : "Nikon FM2", "FilmInfo" : "FujiColor C200", "Setting" : "1/500s   f/4   iso 200", "Explain" : "따뜻한 느낌의 풍경이라, 꼭 필름에 잘 담아내고 싶었다. 하늘이 하얗게 날아간게 아쉽다."],
    "IMG_7933": ["SopTitle": "흰여울 바다", "CameraInfo": "Nikon FM2", "FilmInfo": "FujiColor C200", "Setting" : "1/500s   f/8   iso 200", "Explain": "hi"],
    "IMG_7920": ["SopTitle": "캠핑 모닥불", "CameraInfo": "Nikon FM2", "FilmInfo": "FujiColor C200", "Setting" : "1/15s   f/2.8   iso 200", "Explain": "불 사진을 찍어보는건 처음이었는데, 꽤 마음에 드는 결과물이 나왔다. 셔터스피드를 낮춰서 찍은게 신의 한 수."],
    "IMG_3684": ["SopTitle": "광합성", "CameraInfo": "Nikon FM2", "FilmInfo": "FujiColor C200", "Setting" : "1/250s   f/8   iso 200", "Explain": "hi"]]
var Album2 : [String : [String : String]] = [
    "IMG_7504": ["SopTitle": "아카이브앱크", "CameraInfo": "Harman XP2", "FilmInfo": "Harman B&W", "Setting" : "Auto", "Explain": "처음으로 찍어본 흑백 필름. 수동 카메라가 그리웠다.."],
    "IMG_7493": ["SopTitle": "광안리 바다", "CameraInfo": "Harman XP2", "FilmInfo": "Harman B&W", "Setting" : "Auto", "Explain": "흑백 필름도 매력 있지만 맑은 날 바다에서는 컬러 필름으로 찍고 싶다. 색감이 담기지 않아 아쉽다."]]

struct TagInactive: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(height: 26)
            .font(.system(size: 13.0))
            .padding(.horizontal, 10.0)
            .foregroundColor(Color("TextColor"))
            .background(Color("TagInactive"))
            .cornerRadius(13.0)
    }
}

struct TagActive: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(height: 26)
            .font(.system(size: 13.0))
            .padding(.horizontal, 10.0)
            .foregroundColor(Color.white)
            .background(Color("TagActive"))
            .cornerRadius(13.0)
    }
}
struct TagActiveFilm: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(height: 26)
            .font(.system(size: 13.0))
            .padding(.horizontal, 10.0)
            .foregroundColor(Color.white)
            .background(Color("TagActiveFilm"))
            .cornerRadius(13.0)
    }
}

struct heart: ToggleStyle {
    var fontSize: Int
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "heart.fill" : "heart")
                .font(Font.system(size: CGFloat(fontSize), weight: .semibold))
                .foregroundColor(Color("TextColor"))
                .opacity( configuration.isOn ? 1 : 0.2)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

struct ImageBlock: View {
    @State private var status = false
    @State private var isDetailView = false
    var SopPhoto: String
    @State var album : [String : [String : String]]
    
    var SopTest: Img

    var body: some View {
            VStack{
                Button(action: {
                    isDetailView.toggle()
                }){
                Image(SopPhoto)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 358)
                    //.padding(.bottom, 16.0)
                    .padding(.bottom, 4.0)
                    
                    .fullScreenCover(isPresented: $isDetailView){
                        PhotoDetail(SopPhoto: SopPhoto, Album: album)
                    }
                }
                if let name = album[SopPhoto]{
                HStack{
                    Text(name["SopTitle"]!)
                        .font(Font.system(size: 18, weight: .bold))
                        .foregroundColor(Color("TextColor"))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    Toggle(isOn: $status, label:{})
                        .toggleStyle(heart(fontSize: 18))
                    /*
                    if status{
                        if let oldValue = Album1[SopPhoto]!.updateValue("1", forKey: "heart"){}
                        else{}
                    }else{
                        if let oldValue = Album1[SopPhoto]!.updateValue("0", forKey: "heart"){}
                        else{}
                    }
                     */  //하트 누른거 유지되게 하고싶어
                }
                .padding(.horizontal, 16)
                //.padding(.bottom, 12)
                
                HStack{
                    Button(action:{}){
                        Text(name["CameraInfo"]!)
                    }.buttonStyle(TagActive())
                    Button(action:{}){
                        Text(name["FilmInfo"]!)
                    }.buttonStyle(TagActiveFilm())
                    Spacer()
                }
                .padding(.horizontal, 16.0)
                Spacer()
                    } //제목+하트
                
            }
            .padding(.bottom, 40.0)//이미지+제목+태그.
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

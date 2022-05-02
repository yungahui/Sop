//
//  PictureDetail.swift
//  Sop
//
//  Created by 윤가희 on 2022/04/30.
//

import SwiftUI

struct PhotoDetail: View {
    @State private var status = false
    @Environment(\.presentationMode) var presentationMode
    var SopPhoto: String
    var Album : [String : [String : String]]
    /*
    var albums: [[Img]]
    
    func test() {
        albums      // [[Img]]
        albums[0]   // [Img]
        albums[0][0]    // Img
    }
    */
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ZStack(alignment: .topLeading){
        ScrollView(){
            VStack{
                    Image(SopPhoto)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 390.0)
                        .padding(.bottom, 16.0)

                HStack{
                    Text(Album[SopPhoto]!["SopTitle"]!)
                        .font(Font.system(size: 24, weight: .bold))
                        .foregroundColor(Color("TextColor"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Toggle(isOn: $status, label:{})
                        .toggleStyle(heart(fontSize: 24))
                } //제목+하트
                .padding(.horizontal, 16.0)
                .padding(.bottom, 4.0)
                HStack{
                    Text(Album[SopPhoto]!["Setting"]!)
                        .font(Font.system(size: 14, weight: .light))
                        .foregroundColor(Color("TextColor"))
                        .opacity(0.5)
                    Spacer()
                }
                .padding(.leading, 16.0)
                .padding(.bottom, 4.0)
                
                HStack{
                    Text(Album[SopPhoto]!["Explain"]!)
                        .font(Font.system(size: 16))
                        .foregroundColor(Color("TextColor"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.horizontal, 16.0)
                .padding(.bottom, 12.0)
                
                HStack{
                    Button(action:{}){
                        Text(Album[SopPhoto]!["CameraInfo"]!)
                    }.buttonStyle(TagActive())
                    Button(action:{}){
                        Text(Album[SopPhoto]!["FilmInfo"]!)
                    }.buttonStyle(TagActiveFilm())
                    Spacer()
                }
                .padding(.horizontal, 16.0)
                .padding(.bottom, 100.0)
                
                HStack{
                    Text("이 필름의 다른 사진")
                        .font(Font.system(size: 16, weight: .bold))
                        .foregroundColor(Color("TextColor"))
                    Spacer()
                }
                .padding(.horizontal, 16.0)
                
                ScrollView{
                    let pictureNames = Album.map{ key, value in
                        return key
                    }.filter{
                        $0 != SopPhoto
                    }
                    LazyVGrid(columns: columns){
                        ForEach(pictureNames, id: \.self){ pictureName in
                            Image(pictureName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 176, height: 176, alignment: .center)
                                .clipped()
                        }
                    }
                    .padding(.horizontal, 16.0)
                }
                .padding(.bottom, 60.0)
                Text("Sopfilm")
                    .font(.custom("BrandonGrotesque-RegularItalic", size: 12))
                    .foregroundColor(Color("TextColor"))
                    .padding(.bottom, 20.0)

                Spacer()
            }
        }.ignoresSafeArea()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName: "xmark")
                    .font(Font.system(size: 18, weight: .semibold))
                    .foregroundColor(Color("TextColor"))
            }
            .padding(.leading, 16.0)
            .padding(.top, 0.0)
        }

    }

}
/*
struct PhotoDetail_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetail()
    }
}
 */

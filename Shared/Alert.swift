//
//  Alert.swift
//  FullBrowser
//
//  Created by 近藤和志 on 2022/03/23.
//

import SwiftUI

struct AlertMark: View {
    var body: some View{
        Image(systemName: "exclamationmark.triangle.fill").font(.largeTitle)
            .foregroundColor(Color.red)
            .padding()
    }
}

struct AlertMarkYellow: View {
    var body: some View{
        Image(systemName: "exclamationmark.triangle.fill").font(.largeTitle)
            .foregroundColor(Color.yellow)
            .padding()
    }
}

struct SmileMark: View {
    var body: some View{
        Image(systemName: "face.smiling.fill").font(.largeTitle)
            .foregroundColor(Color.blue)
            .padding()
    }
}


//MARK: Alert1　正常に表示されない
struct Alert: View {
    
    @Binding var theURL1: String
    
    var body: some View {
        ZStack{
            AlertMessage(theURL1: $theURL1)
                .padding()
                .background(Color.yellow)
                .cornerRadius(25)
                .opacity(0.8)
                .frame(width: 330)
            AlertMessage(theURL1: $theURL1)
            
        }.padding()
    }
}

struct AlertMessage: View {
    
    @Binding var theURL1: String
    
    var body: some View {
        
        VStack{
            AlertMark()
            Text("\(theURL1)").font(.title)
                .foregroundColor(Color.black)
                .padding()
            Text("は正常に表示されない可能性があります").font(.title2)
                .foregroundColor(Color.black)
            if let url = URL(string: theURL1) {
                Link(destination: url){
                    Text("デフォルトのブラウザで開く").font(.title2)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(25)
                }
            }
        }.frame(width: 330)
    }
}

//MARK: Alert2　スキームがない

struct Alert2: View {
    @Environment(\.presentationMode) var showdetail
    
    var body: some View {
        
        ZStack{
            AlertMessage2()
                .padding()
                .background(Color.yellow)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage2()
        }.padding()
    }
}

struct AlertMessage2: View {
    @State private var showingDetailModal = false
    
    var body: some View {
        
        VStack{
            AlertMark()
            Text("URLのスキームが必要です").font(.title2)
                .foregroundColor(Color.black)
            Button(action: {
                self.showingDetailModal.toggle()
            }) {
                Text("詳しく知る").font(.title2)
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(25)
            }.sheet(isPresented: $showingDetailModal) {
                DetailView()
            }.frame(width: 330)
        }
    }
}

//MARK: Alert3　正しいURLか確認して

struct Alert3: View {
    var body: some View {
        ZStack{
            AlertMessage3()
                .padding()
                .background(Color.red)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage3()
        }.padding()
    }
}

struct AlertMessage3: View {
    var body: some View {
        VStack{
            AlertMarkYellow()
            Text("正しいURLかご確認ください").font(.title2)
                .foregroundColor(Color.black)
        }.frame(width: 330)
    }
}

//MARK: Alert4 URLを入力して

struct Alert4: View {
    var body: some View {
        ZStack{
            AlertMessage4()
                .padding()
                .background(Color.red)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage4()
        }.padding()
        
    }
}

struct AlertMessage4: View {
    var body: some View {
        VStack{
            AlertMark()
            Text("URLを入力してください").font(.title2)
                .foregroundColor(Color.black)
            Text("アプリがクラッシュします").font(.title)
                .foregroundColor(Color.black)
        }.frame(width: 330)
    }
}

//MARK: Alert5　安全ではないよ

struct Alert5: View {
    @Binding var theURL1: String
    
    var body: some View {
        ZStack{
            AlertMessage5(theURL1: $theURL1)
                .padding()
                .background(Color.yellow)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage5(theURL1: $theURL1)
            
        }.padding()
    }
}

struct AlertMessage5: View {
    @Binding var theURL1: String
    
    var body: some View {
        
        VStack{
            AlertMark()
            Text("\(theURL1)").font(.title)
                .foregroundColor(Color.black)
                .padding()
            Text("は安全ではない可能性があります").font(.title2)
                .foregroundColor(Color.black)
        }.frame(width: 330)
    }
}

//MARK: Alert6 安全なサイト

struct Alert6: View {
    
    var body: some View {
        ZStack{
            AlertMessage6()
                .padding()
                .background(Color.green)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage6()
            
        }.padding()
    }
}

struct AlertMessage6: View {
    
    var body: some View {
        
        VStack{
            SmileMark()
            Text("Great!").font(.title)
                .foregroundColor(Color.black)
                .padding()
            Text("安全なサイト")
            Text("正しい情報源")
        }.frame(width: 330)
    }
}

//MARK: Alert7 マイナポータルは使えないよ

struct Alert7: View {
    
    var body: some View {
        ZStack{
            AlertMessage7()
                .padding()
                .background(Color.yellow)
                .cornerRadius(25)
                .opacity(0.8)
            AlertMessage7()
            
        }.padding()
    }
}

struct AlertMessage7: View {
    
    var body: some View {
        
        VStack{
            AlertMark()
            Text("マイナポータルは利用できません").font(.title2)
                .foregroundColor(Color.black)
            HStack{
                Text("「マイナポータル」アプリ").bold()
                Text("を利用するか")
            }
            HStack{
                Text("Safari").bold()
                Text("で開いてください")
            }
            Link(destination: URL(string:"https://myna.go.jp")!){
                Text("デフォルトのブラウザで開く").font(.title2)
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            Text("デフォルトのブラウザがSafariである必要があります")
        }.frame(width: 330)
    }
}

//
//  abour.swift
//  FullBrowser
//
//  Created by 近藤和志 on 2022/03/21.
//

import SwiftUI

struct about: View {
    @Environment(\.presentationMode) private var presentationMode2
    @Environment(\.presentationMode) var presentation2
    @State var theURL = "https://github.com/Kondo-Kazushi/FullBrowser"
    @AppStorage("version") var version: String = "1.1.0"

    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    VStack{
                        Text("Welcome").font(.title)
                        Text("FullBrowser").font(.largeTitle)
                        NavigationLink(destination: WebView(theURL1: $theURL)
                            .edgesIgnoringSafeArea(.all)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                        ){
                            Text("GitHubで詳しく見る").bold()
                        }
                        
                    }.padding()
                }
                Text("Version \(version)")
                Button("閉じる") {
                    presentationMode2.wrappedValue.dismiss()
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(25)
            }.padding()
        }
    }
    
    
    
    struct about_Previews: PreviewProvider {
        static var previews: some View {
            about()
        }
    }
}

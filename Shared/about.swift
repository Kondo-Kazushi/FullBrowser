//
//  abour.swift
//  FullBrowser
//
//  Created by 近藤和志 on 2022/03/21.
//

import SwiftUI

struct about: View {
    @Environment(\.presentationMode) private var presentationMode
    @Environment(\.presentationMode) var presentation
    @State var theURL = "https://github.com/Kondo-Kazushi/FullBrowser"

    
    let url = "https://github.com/Kondo-Kazushi/FullBrowser"

    
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
                Button("閉じる") {
                    presentationMode.wrappedValue.dismiss()
                }.padding()
            }
        }
    }
    
    
    
    struct about_Previews: PreviewProvider {
        static var previews: some View {
            about()
        }
    }
}

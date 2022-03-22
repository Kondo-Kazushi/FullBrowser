//
//  Settings.swift
//  FullBrowser
//
//  Created by 近藤和志 on 2022/03/22.
//

import SwiftUI

struct settings: View {
    @Environment(\.presentationMode) private var presentationMode
    @Environment(\.presentationMode) var presentation
    @State var theURL = ""
    @AppStorage("name") var name: String = "user"

    
    
    let url = "https://github.com/Kondo-Kazushi/FullBrowser"
    
    
    var body: some View {
        
            VStack{
                Form{
                    Section("プロフィール"){
                        TextField("ニックネーム", text: $name)
                    }
                }
                Button("Done") {
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(25)
            }.padding()
        
    }
    
    
    
    struct settings_Previews: PreviewProvider {
        static var previews: some View {
            settings()
        }
    }
}

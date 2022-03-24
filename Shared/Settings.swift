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
    @AppStorage("version") var version: String = "1.1.0"
    @AppStorage("showname") var showname = true

    
    
    let url = "https://github.com/Kondo-Kazushi/FullBrowser"
    
    
    var body: some View {
        
            VStack{
                Form{
                    Section(){
                        TextField("ニックネーム", text: $name)
                        Toggle(isOn: $showname) {
                            Text("ホームにニックネームを表示する")
                        }
                    } header: {
                        Text("プロフィール")
                    } footer: {
                        Text("iPhoneのランドスケープモードではオフにすることをおすすめします")
                    }
                    Section(){
                        TextField("希望するバージョン", text: $version)
                    } header: {
                        Text("Versionを偽装する")
                    } footer: {
                        Text("Versionを偽装しても以前の仕様には戻りません")
                    }
                }.cornerRadius(15)
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


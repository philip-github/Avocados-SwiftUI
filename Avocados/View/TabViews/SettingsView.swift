//
//  SettingsView.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/26/22.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            //MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"),
                            radius: 8,
                            x: 0,
                            y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title,
                                  design: .serif,
                                  weight: .bold))
                .foregroundColor(Color("ColorGreenAdaptive"))
            }//: VSTACK
            .padding()
            
            Form {
                //MARK: - SECTION 1
                Section {
                    Text("General Settings")
                    
                    Toggle("Enable notification",
                           isOn: $enableNotification)
                    
                    Toggle("Background refresh",
                           isOn: $backgroundRefresh)
                }//: SECTION 1
                
                //MARK: - SECTION 2
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }//: HSTACK
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("John / Jane")
                        }//: HSTACK
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }//: HSTACK
                        HStack {
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        }//: HSTACK
                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }//: HSTACK
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("👍 Happy Coding")
                        }//: HSTACK
                    }//: CONDITIONAL
                }//: SECTION 2
            }//: FORM
        }//: VSTACK
        .frame(maxWidth: 640)
        .animation(.easeIn, value: enableNotification)
    }//: BODY
}

//MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

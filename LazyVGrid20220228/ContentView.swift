//
//  ContentView.swift
//  LazyVGrid20220228
//
//  Created by 桃井優太 on 2022/02/28.
//

import SwiftUI

struct ContentView: View {
    var vGridItem: [GridItem] = Array(repeating: .init(.adaptive(minimum: 120)), count: 2)
    @State var string = ""
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    TextField("検索", text: $string)
                        .padding(.horizontal)
                        .padding(.bottom, 4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    
                    LazyVGrid(columns: vGridItem) {
                        ForEach((1...15), id: \.self) { id in
                            VStack {
                                
                                Button {
                                    
                                } label: {
                                    VStack (alignment: .leading){
                                        HStack {
                                            Image(systemName: "wand.and.stars.inverse")
                                                .font(Font.title)
                                                .foregroundColor(Color.white)
                                            Spacer()
                                            Button {
                                                
                                            } label: {
                                                Image(systemName: "gearshape.fill")
                                                    .font(Font.title)
                                                    .foregroundColor(Color.white)
                                            }
                                        }
                                        .padding(.horizontal, 8.0)
                                        .padding(.top, 8.0)
                                        
                                        Text("\(id)番目")
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                            .padding(.top, 24)
                                            .padding(.bottom, 1)
                                            .padding(.leading, 12)
                                        Text("3個のアクション")
                                            .font(.footnote)
                                            .fontWeight(.light)
                                            .foregroundColor(Color.white)
                                            .padding(.leading, 12.0)
                                            .padding(.bottom, 14)
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 100)
                                .background(Color.orange)
                                .padding(.all, 2.0)
                                .cornerRadius(26)
                            }
                            
                        }
                    }
                }
            }
            .padding(.horizontal, 8.0)
            .navigationTitle("LazyVGrid")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Text("戻る")
                            
                    }
                    .padding(.top, 4.0)

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("選択")
                            .padding(.top, 5.0)
                    }

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("+")
                            .font(.largeTitle)
                            .fontWeight(.light)
                    }

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

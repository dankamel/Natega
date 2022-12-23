//
//  Home.swift
//  Natega
//
//  Created by Daniel Kamel on 23/12/2022.
//

import SwiftUI

struct Home: View {
    
    private var todaysDate: String = "22nd January"
    private var copticDate: String = "12 Kiahk"
    
    private var imageNames: [String] = ["1", "2"]
    
    var body: some View {
        
        ZStack {
            
            //we will use this background if no icon present:
            DefaultBackground()
            
            VStack{
                
                HStack {
                    
                    Text("Today, \(todaysDate)").font(.system(size: 15, weight: .medium, design: .rounded)).multilineTextAlignment(.center)
                    
                    Image(systemName: "smallcircle.filled.circle.fill")
                        .font(.system(size: 7, weight: .thin, design: .rounded)).multilineTextAlignment(.center)
                    
                    Text("\(copticDate)").font(.system(size: 15, weight: .regular, design: .rounded)).multilineTextAlignment(.center)
                    
                }.padding(.top, 10)
                
                Text("Nativity Fast").font(.system(size: 13, weight: .regular, design: .rounded)).multilineTextAlignment(.center)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                    .background(Color(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235).opacity(0.4))
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
               
                Spacer()
                
                
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack(spacing: 50) {
                        
                        TabView {

                            ForEach(imageNames, id:\.self) { imageNames in
                                
                                Image(imageNames)
                                    .resizable()
                                    .padding(5)
                                    .aspectRatio(contentMode: .fit)
                                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                    .shadow(color: Color(#colorLiteral(red: 0.2241683006, green: 0.2581242323, blue: 0.6071507931, alpha: 1)).opacity(0.3), radius: 10, x: 0, y:20)
                                
                            }

                        }
                        .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        .frame(width: UIScreen.main.bounds.width - 80, height: 350, alignment: .center).cornerRadius(30)

                        

                        
                        
                    }
                    
                    
                })
                .padding(.top, 10)
                
                
            }
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

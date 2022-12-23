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
    
    var body: some View {
        
        ZStack {
            
            //we will use this background if no icon present:
            DefaultBackground()
            
            VStack{
                
                // MARK: Date, Coptic date, Fast
                HStack {
                    
                    Text("Today, \(todaysDate)")
                        .font(.system(size: 15, weight: .medium, design: .rounded))
                    
                    Image(systemName: "smallcircle.filled.circle.fill")
                        .font(.system(size: 7, weight: .thin, design: .rounded))
                    
                    Text("\(copticDate)")
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                    
                }.padding(.top, 10)
                
                Text("Nativity Fast")
                    .font(.system(size: 13, weight: .regular, design: .rounded))
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                    .background(Color(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235).opacity(0.4))
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
               
                Spacer()
                
                // MARK: Default picture (annual days)
                VStack(spacing: 10) {
                    Image("Church")
                        .resizable()
                        .scaledToFit()
                        .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .frame(width: 350, height: 300)
                        .shadow(color: Color(#colorLiteral(red: 0.6549019813537598, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), radius:40, x:0, y:20)
                    
                    HStack(spacing: 4) {
                        
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.5083333253860474, green: 0.4694140553474426, blue: 0.4638541638851166, alpha: 1)))
                        .frame(width: 5, height: 5)

                        Circle()
                            .fill(Color(#colorLiteral(red: 0.6499999761581421, green: 0.586805522441864, blue: 0.5741666555404663, alpha: 1)))
                        .frame(width: 5, height: 5)
                        
                    }
                    .padding(.top, -20)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
                // MARK: Commemorations
                VStack(spacing: 10) {
                    
                    Text("Commemorations ")
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .padding(.trailing, 140)
                    
                    HStack(spacing: 5) {
                        
                        Button(action: {
                            //insert button action here
                        }, label:{
                            
                            Image(systemName: "chevron.left")
                                .font(.system(size: 12, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.52, blue: 0.57, alpha: 1)))
                            
                        })
                        
                        Text("The Departure of Saint Christodoulos")
                            .font(.system(size: 15, weight: .regular, design: .rounded))
                        
                        Button(action: {
                            //insert button action here
                        }, label:{
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 12, weight: .semibold, design: .rounded))
                                .foregroundColor(Color.black)
                            
                        })
                        
                        
                    }


                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.leading, -70)
                .padding(.top, -10)
                
            }
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

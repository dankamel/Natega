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
                
                
                VStack(spacing: 10) {
                    
                    // MARK: Default picture (annual days)
                    Image("Church")
                        .resizable()
                        .scaledToFit()
                        .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .frame(width: 350, height: 300)
                        .shadow(color: Color(#colorLiteral(red: 0.6549019813537598, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), radius:40, x:0, y:20)
                    
                    // MARK: Image indicators
                    HStack(spacing: 4) {
                        
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.5083333253860474, green: 0.4694140553474426, blue: 0.4638541638851166, alpha: 1)))
                            .frame(width: 5, height: 5)
                        
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.6499999761581421, green: 0.586805522441864, blue: 0.5741666555404663, alpha: 1)))
                            .frame(width: 5, height: 5)
                        
                    }
                    .padding(.top, -20)
                    
                    
                    VStack (spacing: 5) {
                        
                        // MARK: Commemorations
                        Text("Commemorations")
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                        
                        HStack(spacing: 6) {
                            
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
                        
                        // MARK: Readings
                        Text("Readings")
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                            .padding(.top, 20)

                        
                        VStack(spacing: 13){
                            
                        HStack (spacing: 13) {
                            
                            Button(action: {
                                //button action
                            }, label:{
                                Text("Gal 5:16-6:2")
                                    .font(.system(size: 15, weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.26, green: 0.41, blue: 0.47, alpha: 1)))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 15)
                                    .background(Color(#colorLiteral(red: 0.667638897895813, green: 0.8200347423553467, blue: 0.8708333373069763, alpha: 1)))
                                    .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            })
                            
                            Button(action: {
                                //button action
                            }, label:{
                                Text("Gal 5:16-6:2")
                                    .font(.system(size: 15, weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.34, blue: 0.38, alpha: 1)))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 15)
                                    .background(Color(#colorLiteral(red: 0.5471354126930237, green: 0.7336588501930237, blue: 0.7958333492279053, alpha: 1)))
                                    .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            })
                            
                            Button(action: {
                                //button action
                            }, label:{
                                Text("Gal 5:16-6:2")
                                    .font(.system(size: 15, weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.23, green: 0.4, blue: 0.46, alpha: 1)))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 15)
                                    .background(Color(#colorLiteral(red: 0.4593750238418579, green: 0.6773437261581421, blue: 0.75, alpha: 1)))
                                    .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            })
                            
                        }
                        
                        HStack (spacing: 13) {
                            
                            Button(action: {
                                //button action
                            }, label:{
                                Text("Gal 5:16-6:2")
                                    .font(.system(size: 15, weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.5, green: 0.3, blue: 0.35, alpha: 1)))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 15)
                                    .background(Color(#colorLiteral(red: 0.7208333611488342, green: 0.49557292461395264, blue: 0.5456308126449585, alpha: 1)))
                                    .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            })
                            
                            Button(action: {
                                //button action
                            }, label:{
                                Text("Gal 5:16-6:2")
                                    .font(.system(size: 15, weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.37, green: 0.2, blue: 0.24, alpha: 1)))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 15)
                                    .background(Color(#colorLiteral(red: 0.5916666388511658, green: 0.3747221827507019, blue: 0.42334774136543274, alpha: 1)))
                                    .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            })
                            
                            
                        }
                        
                        HStack (spacing: 13) {
                            
                            Button(action: {
                                //button action
                            }, label:{
                                Text("Gal 5:16-6:2")
                                    .font(.system(size: 15, weight: .medium, design: .rounded))
                                    .foregroundColor(Color(#colorLiteral(red: 0.42, green: 0.25, blue: 0.48, alpha: 1)))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 15)
                                    .background(Color(#colorLiteral(red: 0.6445750594139099, green: 0.45124998688697815, blue: 0.7124999761581421, alpha: 1)))
                                    .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            })
                            
                            
                        }
                            
                        }
                        
                        // MARK: Upcoming
                        Text("Upcoming")
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                            .padding(.top, 20)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 7) {
                                    
                                HStack {
                                    
                                    Text("Feast of the Nativity")
                                        .font(.system(size: 15, weight: .medium, design: .rounded))
                                    
                                    Image(systemName: "smallcircle.filled.circle.fill")
                                        .font(.system(size: 7, weight: .thin, design: .rounded))
                                    
                                    Text("in 6 days").font(.system(size: 15, weight: .light, design: .rounded))
                                    
                                }
                                .padding(.vertical, 10)
                                .padding(.horizontal, 30)
                                .background(Color.white.opacity(0.7))
                                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .shadow(color: Color(#colorLiteral(red: 0.8984375, green: 0.9023876190185547, blue: 0.9375, alpha: 1)), radius:40, x:0, y:20)
                                
                                HStack {
                                    
                                    Text("Feast of the Cross")
                                        .font(.system(size: 15, weight: .medium, design: .rounded))
                                    
                                    Image(systemName: "smallcircle.filled.circle.fill")
                                        .font(.system(size: 7, weight: .thin, design: .rounded))
                                    
                                    Text("in 2 days").font(.system(size: 15, weight: .light, design: .rounded))
                                    
                                }
                                .padding(.vertical, 10)
                                .padding(.horizontal, 30)
                                .background(Color.white.opacity(0.7))
                                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .shadow(color: Color(#colorLiteral(red: 0.8984375, green: 0.9023876190185547, blue: 0.9375, alpha: 1)), radius:40, x:0, y:20)
                                
                                HStack {
                                    
                                    Text("St Mary's feast")
                                        .font(.system(size: 15, weight: .medium, design: .rounded))
                                    
                                    Image(systemName: "smallcircle.filled.circle.fill")
                                        .font(.system(size: 7, weight: .thin, design: .rounded))
                                    
                                    Text("in 9 days").font(.system(size: 15, weight: .light, design: .rounded))
                                    
                                }
                                .padding(.vertical, 10)
                                .padding(.horizontal, 30)
                                .background(Color.white.opacity(0.7))
                                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .shadow(color: Color(#colorLiteral(red: 0.8984375, green: 0.9023876190185547, blue: 0.9375, alpha: 1)), radius:40, x:0, y:20)
                                
                            }
                            // Below is the padding to allow shadow to be free rather than squashed... although the shadow I've put is super light, you basically can't see it... probably should make the shadow darker
                            .frame(height: 100)
                            .padding(.top, -30)
                        }

                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
            }
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

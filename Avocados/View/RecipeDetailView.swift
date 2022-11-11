//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/27/22.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - PROPERTIES
    
    var recipe: Recipe
    @State private var pulsate: Bool = false
    @Environment(\.dismiss) var dismiss
    
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    //TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle,
                                      design: .serif,
                                      weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    // RATINGS
                    RecipeRatingView(recipe: recipe)
                    // COOKING
                    RecipeCookingView(recipe: recipe)
                    // INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    VStack(alignment: .leading, spacing: 5){
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }//: VSTACK
                    //INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42,
                                       height: 42,
                                       alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                            
                        }//: VSTACK
                    }//: LOOP
                }//: GROUP
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }//: VSTACK
        }//: SCROLL VIEW
        .edgesIgnoringSafeArea(.top)
        .overlay (
            HStack{
                Spacer()
                VStack{
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8)
                            .animation(.easeIn(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
                    }//: BUTTON
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }//: VSTACK
            }//: HSTACK
        )//: OVERLAY
        .onAppear {
            self.pulsate.toggle()
        }
    }//: BODY
}

//MARK: - PREVIEW

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}

//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/26/22.
//

import SwiftUI

struct RipeningStagesView: View {
    
    //MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25){
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }//: HSTACK
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }//: VSTACK
        }//: SCROLL VIEW
        .edgesIgnoringSafeArea(.all)
    }//: BODY
}

//MARK: - PREVIEW

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}

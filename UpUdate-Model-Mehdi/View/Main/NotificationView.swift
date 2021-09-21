//
//  NotificationView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 05/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationView {
            List {
            ForEach(0..<15) { _ in
                HStack {
                    Image("photo1").resizable().clipShape(Circle()).frame(width: 50, height: 50).padding(.trailing, 8).padding(.leading, 8)
                VStack(alignment: .leading, spacing: 5) {
                    Text("David").font(.headline).bold()
                    Text("Shared a new photo").font(.subheadline)
                        }
                        Spacer()
                    Text("15:00").bold()
                    }.padding(10)
                }    
            }.navigationBarTitle(Text("Activity"), displayMode: .inline)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

//
//  DiaryEntryDetailsView.swift
//  DiaryAPP
//
//  Created by Jorge Ramos on 10/17/23.
//

import SwiftUI

struct DiaryEntryDetailsView: View {
    @Binding var entry: DiaryEntry
    // You can add more detailed view for a single diary entry here
    // Handle images, voice notes, etc.
    var body: some View {
        Text(entry.title)
    }
}

//struct DiaryEntryDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DiaryEntryDetailsView()
//    }
//}

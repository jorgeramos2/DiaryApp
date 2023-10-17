//
//  DiaryEntriesExplorer.swift
//  DiaryAPP
//
//  Created by Jorge Ramos on 10/17/23.
//

import SwiftUI
struct DiaryEntriesExplorer: View {
    @State private var diaryEntries: [DiaryEntry] = []
    @State private var isAddingEntry = false
    var body: some View {
        NavigationView {
            List {
                ForEach(diaryEntries.indices, id: \.self) { index in
                          NavigationLink(destination: DiaryEntryDetailsView(entry: $diaryEntries[index])) {
                              if let image = diaryEntries[index].image {
                                  image
                                      .resizable()
                                      .aspectRatio(contentMode: .fit)
                                      .frame(height: 100)
                              }
                              Text(diaryEntries[index].title)
                          }
                      }
                  }
                  .navigationBarTitle("Diary")
                  .navigationBarItems(trailing:
                      Button(action: {
                          self.isAddingEntry = true
                      }) {
                          Image(systemName: "plus")
                      }
                  )
              }
              .sheet(isPresented: $isAddingEntry) {
                  DiaryEntryCreationView(diaryEntries: $diaryEntries)
        }
    }
}


struct DiaryEntriesExplorer_Previews: PreviewProvider {
    static var previews: some View {
        DiaryEntriesExplorer()
    }
}

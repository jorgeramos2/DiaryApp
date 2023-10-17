//
//  DiaryEntryCreationView.swift
//  DiaryAPP
//
//  Created by Jorge Ramos on 10/17/23.
//

import SwiftUI

struct DiaryEntryCreationView: View {
    @Binding var diaryEntries: [DiaryEntry]
    @State private var text = ""
    @State private var selectedImage: [Image]?
    @State private var selectedVoiceNote: URL?

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Add Entry")) {
                    TextField("Text", text: $text)
                    Button("Select Image") {
                        // Implement image selection logic
                    }
                    Button("Record Voice Note") {
                        // Implement voice note recording logic
                    }
                }
                Section {
                    Button("Save") {
                        
//                        diaryEntries.append(DiaryEntry(title: "hola", text: text, image: selectedImage, voiceNote: selectedVoiceNote))
//                        text = ""
//                        selectedImage = nil
//                        selectedVoiceNote = nil
                    }
                }
            }
            .navigationBarTitle("New Entry")
        }
    }
}

//struct DiaryEntryCreationView_Previews: PreviewProvider {
//    static var previews: some View {
//        DiaryEntryCreationView()
//    }
//}


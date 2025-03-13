//
//  AddNoteScreen.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//


import SwiftUI



struct AddNoteScreen: View {
    @State private var memoriesText: String = ""
    let maxCharacterCount: Int = 100 // Hard limit for input
    @State private var animateTextField: Bool = false
    
    
    private var characterLimit: CharacterLimit {
        CharacterLimit.fromCount(memoriesText.count)
    }
    
    var body: some View {
        ZStack {
            LumeoBackground()
                .blur(radius: characterLimit.blur) // Apply blur based on enum
            
            VStack {
                addNoteHeaderSection
                
                if isMemoriesTextValid() {
                    LumeoButton(title: "Continue") {
                        print("Continue with text: \(memoriesText)")
                    }
                }
            }
            .animation(.snappy, value: memoriesText)
        }
        .onChange(of: memoriesText) { oldValue, newValue in
            if newValue.count > maxCharacterCount {
                memoriesText = String(newValue.prefix(maxCharacterCount))
            }
        }
        .onAppear {
            withAnimation(.snappy(duration: 0.8)) {
                animateTextField = true
            }
        }
       
    }
    
    private func wordExceedsMaxCharacterCount() -> Bool {
        return memoriesText.count > maxCharacterCount
    }
    
    private func isMemoriesTextValid() -> Bool {
        !memoriesText.isEmpty &&
           !memoriesText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
           memoriesText.count < maxCharacterCount
    }
}



#Preview {
    AddNoteScreen()
}

extension AddNoteScreen {
    private var addNoteHeaderSection: some View {
        VStack {
            Text("Add a Note to your Photos")
                .font(.custom("Halu", size: 34))
            
            TextField(text: $memoriesText, axis: .vertical) {
                Text("Add your memories here")
            }
            .padding()
            .lineLimit(8, reservesSpace: true)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(.ultraThinMaterial.shadow(.drop(radius: 10)))
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(characterLimit.characterLimitColor, lineWidth: 2)
                    }
                    
            )
            .padding(.horizontal)
            .scaleEffect(animateTextField ? 1 : 0.01)
            .rotationEffect(.degrees(animateTextField ? 0 : -40))
            
            Text("\(memoriesText.count)/\(maxCharacterCount)")
                .font(.custom("Halu", size: 20))
                .foregroundStyle(characterLimit.characterLimitTextColor) // Use enum color
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                .kerning(1.5)
        }
        
        .animation(.snappy, value: memoriesText) // Animate changes in limit state
  
    }
    
}

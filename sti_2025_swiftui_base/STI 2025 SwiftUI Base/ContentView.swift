//
//  ContentView.swift
//  STI SwiftUI Base
//
//  Created by Diego Saragoza Da Silva on 30/09/25.
//

import SwiftUI

struct Citation {
    var author: String
    var content: String
}

struct ContentView: View {
    @State var citations: [Citation] = [
        Citation(author: "Steve Jobs", content: "A única maneira de fazer um ótimo trabalho é amar o que você faz."),
        Citation(author: "Albert Einstein", content: "A imaginação é mais importante que o conhecimento. O conhecimento é limitado, enquanto a imaginação abraça o mundo inteiro."),
        Citation(author: "Eleanor Roosevelt", content: "O futuro pertence àqueles que acreditam na beleza de seus sonhos."),
        Citation(author: "Charles Chaplin", content: "A persistência é o caminho do êxito."),
        Citation(author: "Thomas Edison", content: "Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez."),
        Citation(author: "Albert Einstein", content: "Se você quer viver uma vida feliz, amarre-a a um objetivo, não a pessoas ou coisas."),
        Citation(author: "Linus Torvalds", content: "Fale com códigos, mostre-me o código-fonte."),
        Citation(author: "Charles R. Swindoll", content: "A vida é 10% o que acontece com você e 90% como você reage a isso."),
        Citation(author: "Platão", content: "Não espere por uma crise para descobrir o que é importante em sua vida."),
        Citation(author: "Dalai Lama", content: "A felicidade não é algo pronto. Ela vem de suas próprias ações."),
        Citation(author: "Groucho Marx", content: "Eu acho a televisão muito educativa. Toda vez que alguém liga o aparelho, eu vou para o outro quarto e leio um livro."),
        Citation(author: "Groucho Marx - Adaptado", content: "Eu acho IA muito educativa. Toda vez que alguém abre o chat, eu vou para o outro quarto e leio um livro."),
        Citation(author: "Mark Twain", content: "Nunca deixe para amanhã o que você pode fazer depois de amanhã."),
        Citation(author: "Billy Connolly", content: "Antes de julgar um homem, caminhe uma milha com os sapatos dele. Depois disso, quem se importa? Ele está a uma milha e você ficou com os sapatos dele."),
        Citation(author: "Mitch Hedberg", content: "Minhas plantas de plástico morreram porque eu não fingi que as regava."),
        Citation(author: "Michael Scott (The Office)", content: "Eu não sou supersticioso, mas sou um pouquinho 'sticioso'."),
        Citation(author: "Lily Tomlin", content: "Eu sempre quis ser alguém, mas agora percebo que deveria ter sido mais específica."),
        Citation(author: "Bob Hope", cont/Users/alunomack/Desktop/sti_2025_swiftui_base/STI 2025 SwiftUI Baseent: "Um banco é um lugar que te empresta dinheiro se você puder provar que não precisa dele."),
        Citation(author: "Steven Wright", content: "Se na primeira vez você não tiver sucesso, o paraquedismo definitivamente não é para você.")
    ]
    
    @State var chosenCit: Citation? = nil
    
    var body: some View {
        NavigationStack{
            VStack {
                Button{
                    chosenCit = citations.randomElement()
                }label:{
                    ZStack{
                        Circle()
                            .stroke(lineWidth:5)
                            .frame(width:200)
                            .shadow(radius:5)
                        Text("Citação")
                            .foregroundStyle(.blue)
                            .bold()
                        
                    }
                }
                if let chosenCitLocal = chosenCit{
                    VStack(alignment: .leading){
                        Text("\"\(chosenCitLocal.content)\"")
                            .padding(.bottom)
                            .italic()
                            .padding([.horizontal, .top])
                            .fontDesign(.serif)
                        Text(chosenCitLocal.author)
                            .bold()
                            .padding([.horizontal, .bottom])
                    }
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(minWidth: 300, maxWidth: 350, maxHeight: 200)
                    .shadow(radius: 5, x: 10, y:10)
                    .transition(.push(from: .top))
                }
            }
            .padding()
            .navigationTitle("Citações")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button{
                        withAnimation(){
                            chosenCit = nil
                        }
                    }label: {
                        Image(systemName: "eraser")
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .primaryAction) {
                    Button{
                        
                    }label: {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  PopOver.swift
//  Game
//
//  Created by Apple on 09.04.2024.
//

import SwiftUI

struct PopOverView: View {
    var body: some View {
        ZStack{
            Image("BackGrnd")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack{
                Text("Добро пожаловать в игру «Крестики-нолики»!")
                    .font(.title)
                    .padding(.all, 10)
                    .multilineTextAlignment(.center)
                 Text("Это классическая игра, которая никогда не устаревает. Правила очень простые: два игрока играют друг против друга, каждый пытается составить ряд из трёх своих символов (крестиков или ноликов) по вертикали, горизонтали или диагонали. Первый игрок выбирает свой символ, а второй — противоположный. Игра начинается с пустой доски, и игроки делают ходы по очереди, пока кто-то из них не выиграет. Вы готовы начать?")
                    .fontWeight(.bold)
                    .padding(.all, 10)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 500, alignment: .center)
                    .font(.title3)
            }
        }
    }
}
struct AlertInfo: Identifiable{
    var id: String { name }
    let name: String
    let msg: String
}

struct PopOver_Previews: PreviewProvider {
    static var previews: some View {
        PopOverView()
    }
}

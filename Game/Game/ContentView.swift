//
//  ContentView.swift
//  Game
//
//  Created by Apple on 07.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingPopover = false
    @State private var TTT = [0, 0, 0,
                              0, 0, 0,
                              0, 0, 0]
    @State private var isPlaying = true
    @State private var nowPlaying: String = "⭕️"
    @State private var winnerRule: AlertInfo?
    @State private var player1: String = "Игрок 1"
    @State private var player2: String = "Игрок 2"
    private var TextValue: String{
        if $nowPlaying.wrappedValue == "⭕️"{
            return "\($player1.wrappedValue)"
        } else {
            return "\($player2.wrappedValue)"
        }
    }
    var body: some View {
        NavigationView {
            ZStack{
                Image("BackGrnd")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                Text("Ходит: \(self.TextValue)")
                    .offset(x: 0, y: -400)
                    .font(.title)
                VStack {
                    Capsule()
                        .offset(x: 0, y: -262)
                        .frame(width: 500, height: 4, alignment: .center)
                        .ignoresSafeArea()
                    Capsule()
                        .offset(x: 0, y: -146)
                        .frame(width: 500, height: 4, alignment: .center)
                    Capsule()
                        .offset(x: 0, y: -25)
                        .frame(width: 500, height: 4, alignment: .center)
                    Capsule()
                        .offset(x: 0, y: 96)
                        .frame(width: 500, height: 4, alignment: .center)
                }
                Capsule()
                    .offset(x: 65, y: -83)
                    .frame(width: 4, height: 395, alignment: .center)
                Capsule()
                    .offset(x: -65, y: -83)
                    .frame(width: 4, height: 395, alignment: .center)
                Group{
                    //1.1
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[0] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $TTT.wrappedValue[0] = 2
                            $nowPlaying.wrappedValue = "⭕️"
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label: {
                        if ($TTT.wrappedValue[0] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[0] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: -130, y: -217)
                    .frame(width: 130, height: 125, alignment: .center)
                    //1.2
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[3] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[3] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label: {
                        if ($TTT.wrappedValue[3] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[3] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: -130, y: -85)
                    .frame(width: 128, height: 130, alignment: .center)
                    //1.3
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[6] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[6] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label:{
                        if ($TTT.wrappedValue[6] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[6] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: -130, y: 47)
                    .frame(width: 128, height: 130, alignment: .center)
                    //2.1
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[1] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[1] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label:{
                        if ($TTT.wrappedValue[1] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[1] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: 0, y: -217)
                    .frame(width: 128, height: 125, alignment: .center)
                    //2.2
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[4] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[4] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label:{
                        if ($TTT.wrappedValue[4] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[4] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: 0, y: -85)
                    .frame(width: 128, height: 130, alignment: .center)
                    //2.3
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[7] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[7] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label:{
                        if ($TTT.wrappedValue[7] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[7] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: 0, y: 47)
                    .frame(width: 128, height: 130, alignment: .center)
                    //3.1
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[2] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[2] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label:{
                        if ($TTT.wrappedValue[2] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[2] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: 130, y: -217)
                    .frame(width: 128, height: 125, alignment: .center)
                    //3.2
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[5] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[5] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label:{
                        if ($TTT.wrappedValue[5] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[5] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: 130, y: -85)
                    .frame(width: 128, height: 130, alignment: .center)
                    //3.3
                    Button{
                        if ($nowPlaying.wrappedValue == "⭕️"){
                            $TTT.wrappedValue[8] = 1
                            $nowPlaying.wrappedValue = "❌"
                        } else{
                            $nowPlaying.wrappedValue = "⭕️"
                            $TTT.wrappedValue[8] = 2
                        }
                        startGame(TTT: $TTT, isPlaying: $isPlaying)
                    }label:{
                        if ($TTT.wrappedValue[8] == 2){
                            Text("❌")
                                .font(.largeTitle)
                        } else if ($TTT.wrappedValue[8] == 1){
                            Text("⭕️")
                                .font(.largeTitle)
                        } else {
                            Rectangle()
                                .foregroundColor(Color(red: 0.5883361697, green: 0.8764591813, blue: 0.9464597106))
                        }
                    }
                    .offset(x: 130, y: 47)
                    .frame(width: 128, height: 130, alignment: .center)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    HStack{
                        TextEditor(text: $player1)
                            .frame(width: 100, height: 50, alignment: .leading)
                            .font(.title2)
                            .padding(.horizontal, 5)
                            .background(Color(hue: 0.37, saturation: 1.0, brightness: 1.0))

                        Text(": ⭕️")
                            .font(.title2)
                            .padding(.horizontal, 5)
                        }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack{
                        TextEditor(text: $player2)
                            .frame(width: 100, height: 50, alignment: .leading)
                            .font(.title2)
                            .padding(.horizontal, 5)
                            .background(Color(hue: 0.37, saturation: 1.0, brightness: 1.0))

                        Text(": ❌")
                            .font(.title2)
                            .padding(.horizontal, 5)
                        }
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Button{
                        self.isShowingPopover = true
                            }label: {
                        Text("Об Игре")
                            }
                            .popover(isPresented: $isShowingPopover) {
                                        PopOverView()
                                    }
                            .frame(minWidth: 250, idealWidth: 300, maxWidth: 350, minHeight: 30, idealHeight: 50, maxHeight: 100, alignment: .center)
                            .foregroundColor(Color(hue: 0.583, saturation: 0.823, brightness: 0.548))
                            .background(Color(hue: 0.37, saturation: 1.0, brightness: 1.0))
                }
            }
            .alert(item: $winnerRule) { show in
                Alert(title: Text(show.name), message: Text(show.msg), dismissButton: .default(Text("Продолжить Играть!")))
                    }
        }
    }
    
    func startGame(TTT: Binding<[Int]>, isPlaying: Binding<Bool>){
            for row in [0, 3, 6]{ //winner rows
                if ((TTT[row].wrappedValue == TTT[row + 1].wrappedValue) && (TTT[row + 1].wrappedValue == TTT[row + 2].wrappedValue) && (TTT[row].wrappedValue != 0)){
                    self.winnerRule = AlertInfo(name: "Собрали строку!", msg: "\(self.TextValue) проиграл(а)")
                    $TTT.wrappedValue = [0, 0, 0, 0, 0, 0, 0, 0, 0]
                    $isPlaying.wrappedValue = false
                }
            }

            for col in [0, 1, 2]{ // winner columns
                if ((TTT[col].wrappedValue == TTT[col + 3].wrappedValue) && TTT[col + 3].wrappedValue == TTT[col + 6].wrappedValue) && (TTT[col].wrappedValue != 0){
                    self.winnerRule = AlertInfo(name: "Собрали столбец!", msg: "\(self.TextValue) проиграл(а)")
                    $TTT.wrappedValue = [0, 0, 0, 0, 0, 0, 0, 0, 0]
                    $isPlaying.wrappedValue = false
                }
            }

            if (TTT[0].wrappedValue == TTT[4].wrappedValue) && (TTT[4].wrappedValue == TTT[8].wrappedValue) && (TTT[0].wrappedValue != 0){ // winner left-right diagonal
                self.winnerRule = AlertInfo(name: "Собрали диагональ слева-направо!", msg: "\(self.TextValue) проиграл(а)")
                $TTT.wrappedValue = [0, 0, 0, 0, 0, 0, 0, 0, 0]
                $isPlaying.wrappedValue = false
            }

            if (TTT[2].wrappedValue == TTT[4].wrappedValue) && (TTT[4].wrappedValue == TTT[6].wrappedValue) && (TTT[2].wrappedValue != 0){ // winner right-left diagonal
                self.winnerRule = AlertInfo(name: "Собрали диагональ справа-налево!", msg: "\(self.TextValue) проиграл(а)")
                $TTT.wrappedValue = [0, 0, 0, 0, 0, 0, 0, 0, 0]
                $isPlaying.wrappedValue = false
            }
        if (TTT.wrappedValue.reduce(0, +) == 13) || (TTT.wrappedValue.reduce(0, +) == 14){ //ничья
            self.winnerRule = AlertInfo(name: "Ничья!", msg: "Победила Дружба)")
            $TTT.wrappedValue = [0, 0, 0, 0, 0, 0, 0, 0, 0]
            $isPlaying.wrappedValue = false
        }
        $isPlaying.wrappedValue = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

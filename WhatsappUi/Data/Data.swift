//
//  Data.swift
//  WhatsappUi
//
//  Created by Bruno  on 28/06/24.
//

import Foundation

struct Chat {
    let username: String
    let message: String
    let Date: String
    let avatar: String
}

struct Call {
    let username: String
    let statusCall: String
    let date: String
    let avatarCall: String
}

let messages: [String] = [
    "Hola, espero que estes bien",
    "A que hora vamos a salir?",
    "Ya jugaste Elden Ring Shadow of Edtree?",
    "Vamos a comer we jiji",
    "Bazingaaa!",
    "Hola mailve!!!"
]

let avatars: [String] = [
    "https://avatar.iran.liara.run/public/15",
    "https://avatar.iran.liara.run/public/35",
    "https://avatar.iran.liara.run/public/21",
    "https://avatar.iran.liara.run/public/43",
    "https://avatar.iran.liara.run/public/27",
    "https://avatar.iran.liara.run/public/17",
]

let avatarsCalls: [String] = [
    "https://avatar.iran.liara.run/public/12",
    "https://avatar.iran.liara.run/public/33",
    "https://avatar.iran.liara.run/public/24",
    "https://avatar.iran.liara.run/public/45",
    "https://avatar.iran.liara.run/public/26",
    "https://avatar.iran.liara.run/public/17",
]

let users: [Chat] = [
    Chat(username: "Bruce", message: messages[0], Date: "5:23a.m.", avatar: avatars[0]),
    Chat(username: "Franco", message: messages[1], Date: "1:34a.m.", avatar: avatars[1]),
    Chat(username: "Maria", message: messages[2], Date: "3:23p.m.", avatar: avatars[2]),
    Chat(username: "John", message: messages[3], Date: "6:45p.m.", avatar: avatars[3]),
    Chat(username: "Gerardo", message: messages[4], Date: "4:00p.m.", avatar: avatars[4]),
    Chat(username: "Melina", message: messages[5], Date: "2:12a.m.", avatar: avatars[5])
]

let calls: [Call] = [
    Call(username: "Jose", statusCall: "Entrante", date: "27/05/24", avatarCall: avatarsCalls[0]),
    Call(username: "Pepe", statusCall: "Perdida", date: "17/10/24", avatarCall: avatarsCalls[1]),
    Call(username: "Andres", statusCall: "Saliente", date: "17/05/23", avatarCall: avatarsCalls[2]),
    Call(username: "Lupita", statusCall: "Entrante", date: "01/12/22", avatarCall: avatarsCalls[3]),
]

//
//  DataMessenger.swift
//  Messanger
//
//  Created by Georgi Teoharov on 18.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

enum TypeOfData {
    case profileImage, name, lastMessage, time
    
}


import Foundation
import UIKit

struct DataMessenger {
    static var profiles: [[TypeOfData : String]] =
    [
        [.profileImage: "kristina",
         .name: "Kristina Teoharova",
         .lastMessage: "Слъцето на кака",
         .time: "22:32"
        ],
        [.profileImage: "izabela",
         .name: "Izabela Ivanova",
         .lastMessage: "Къде си мишко ❤️",
         .time: "04:20"
        ],
        [.profileImage: "violeta",
         .name: "Violeta Teoharova",
         .lastMessage: "Няма ли да дойдеш?",
         .time: "20:20"
        ],
        [.profileImage: "hristoslav",
         .name: "Hristoslav Teoharov",
         .lastMessage: "Да пием бира ?",
         .time: "18:20"
        ],
        [.profileImage: "zvezdata",
         .name: "Zvezdelin Kolev",
         .lastMessage: "Аз съм РАЗКазвачА",
         .time: "04:20"
        ],
        [.profileImage: "stanimir",
         .name: "Stanimir Stoyanov",
         .lastMessage: "Keramoti? 🇬🇷 🚤 ⚓️",
         .time: "09:20"
        ],
    ]
}

//
//  RecipesData.swift
//  CookingApp
//
//  Created by Georgi Teoharov on 16.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//
enum TypeOfData {
    case dishName
    case recipe
    case timeToCook
    case pictureOfDish
    case favorite
    case seen
}

import Foundation

struct RecipesData {
    static var recipes: [[TypeOfData : String]] =
    [
        [.dishName : "Гергьовска салата",
         .timeToCook : "30 мин.",
         .pictureOfDish : "georgiRecipe",
         .favorite: "",
         .recipe: """
            Продукти:
            
            500 г спанак
            1 шепа коприва
            2 връзки пресен лук
            1 връзка чесън
            1 връзка магданоз
            сол на вкус
            сок от един лимон
            1 с. л. олио
            1 парче сирене
            2-3 сварени яйца
            10 маслини
            млян черен пипер
            
            Приготвяне:
            
            • За рецептата "Гергьовска салата от спанак и коприва" спанакът и копривата се измиват добре и се попарват с вряла вода.
            • Изцеждат се, изстискват се и се нарязват.
            • Слагат се в голяма купа заедно с нарязания лук.
            • Поръсва се със солта, лимоновия сок и олиото и се разбърква леко.
            • Върху салатата се настъргва на едро ренде сиренето.
            • Украсява се с резени яйца и маслини и се поръсва с черен пипер.
            • Гергьовската салата от спанак и коприва се поднася веднага.
            """],
        [.dishName : "Хайдушко гювече",
         .timeToCook : "30 мин.",
         .pictureOfDish : "haidushkoGyuveche",
         .favorite: "",
         .recipe: """
            Продукти:
            
            1 кг крехко свинско от бута
            50 г кашкавал
            7-8 глави кромид лук
            2 глави чесън
            60-70 г краве масло
            300 мл червено вино
            4 зелени чушки
            5 яйца
            1/2 ч. л. кимион
            смлян черен пипер
            сол
            
            Приготвяне:
            
            • Месото се нарязва на дребни късчета.
            • Прехвърлят се в купа.
            • Поръсват се с кимиона, солта и черния пипер.
            • Разбъркват се със ситно нарязаните лук, чесън и чушки.
            • Покриват се със "свежо" фолио.
            • Купата се оставя в хладилник за една нощ.
            • На дъното на всяко гювече се поставя по парче краве масло.
            • Отгоре се разпределя сместа.
            • Виното се сипва по равно във всяко гювече.
            • След което се похлупват с капак или алуминиево фолио.
            • Гювечетата се поставят да се запекат във фурна на 200 С.
            • Малко преди да се извадят, всяко се залива с по едно разбито яйце.
            • Отгоре се поръсва с кашкавал.
            • Хайдушкото гювече се допича без капак до готовност.
            """
        ],
        
        [.dishName : "Месо с картофи, дюли и маслини",
         .timeToCook : "80 мин.",
         .pictureOfDish : "mesoKartofi",
         .favorite: "",
         .recipe: """
            Продукти:
            
            1 кг свинско месо
            4-5 с. л. олио
            2 моркова
            1 глава кромид
            1 ч. л. червен пипер
            2 с. л. доматено пюре
            4-5 картофа
            1-2 дюли
            6-8 маслини
            4-5 с. л. нарязани на ситно домати
            2 с. л. брашно
            1 ч. ч. вино
            сол и млян черен пипер на вкус
            Приготвяне:
            
            1. Нарежете месото на порции и ги запържете за кратко в част от олиото, загрято в тиган на силен огън.
            2. В друг съд сложете нарязаните лук и моркови и ги запържете в останалото олиото. Добавете месото, червения пипер и доматеното пюре. Сипете толкова топла вода, колкото да покрие месото.
            3. Добавете нарязаните картофи и дюли, маслините без костилки и рязаните домати.
            4. Поръсете с брашното, размито в малко студена вода. Сипете виното и малко топла вода, за да се покрие ястието, овкусете със солта и черния пипер и оставете ястието да къкри на бавен огън.
            """
        ],
        
        [.dishName : "Доматен гювеч",
         .timeToCook : "40 мин.",
         .pictureOfDish : "domatenGyuvech",
         .favorite: "",
         .recipe: """
            Продукти:
            
            800 г добре узрели домати
            3 глави кромид
            2 с. л. брашно
            1/2 чаена чаша олио
            20 г масло
            200 г сирене
            магданоз
            3–4 яйца
            1 чаена чаша прясно мляко
            Приготвяне:
            
            • Лукът се нарязва на ситно и се запържва в олиото, заедно с брашното.
            • Доматите се нарязват на филийки и се прибавят към лука.
            • След като се запържат, се изсипват в намазана с масло тавичка и се разпределят на равномерен пласт.
            • Поръсват се с настърганото сирене и нарязания на ситно магданоз.
            • Яйцата се разбиват с прясното мляко и се изсипват върху гювеча.
            • Ястието се пече в силна фурна.
            """
        ],
        
        [.dishName : "Бухтичките на баба",
         .timeToCook : "25 мин.",
         .pictureOfDish : "buhtichki",
         .favorite: "",
         .recipe: """
            Продукти:
            
            2 яйца
            400 мл прясно мляко
            1 ч. л. сол
            2 ч. л. захар
            400 г брашно
            2 пакетчета суха мая
            150 мл олио
            Приготвяне:
            
            1. Яйцата и леко затопленото прясно мляко се разбиват. Прибавят се солта и захарта.
            2. Сипват се брашното и сухата мая и се разбърква, докато се получи рядко тесто.
            3. Оставя се да втаса. От него се гребва със супена лъжица и се пуска в дълбок тиган със сгорещената мазнина.
            4. Изпържените бухтички се отцеждат от мазнината върху салфетка и се сервират топли със сирене или сладко по желание.
            """
        ],
        
        [.dishName : "Кадаиф",
         .timeToCook : "55 мин.",
         .pictureOfDish : "kadaif",
         .favorite: "",
         .recipe: """
            Продукти:
            
            500 г готов кадаиф
            мляна канела
            200 г орехови ядки
            250 г краве масло
            1 л вода
            600 г (3 пълни ч. ч.) захар
            2 с. л. лимонов сок
            1 белтък
            Приготвяне:
            
            • Кадаифът се слага в намазана с масло тава и се наръсва със счуканите орехови ядки и малко канела.
            • Залива се с разтопеното масло и се пече до зачервяване.
            • Оставя се да охлади напълно.
            • Приготвя се сироп, като 20 минути се вари 1 л вода със захарта.
            • Сваля се от огъня, прибавя се лимоновият сок и се охлажда леко.
            • Студеният кадаиф се залива с него.
            • Щом се напои добре, се украсява се с белтъка, разбит на сняг с малко пудра захар.
            """
        ],
        
        [.dishName : "Пълнени дюли",
         .timeToCook : "30 мин.",
         .pictureOfDish : "pulneniDyuli",
         .favorite: "",
         .recipe: """
            Продукти:
            
            4 големи дюли
            2 с. л. пудра захар
            1 парче тиква
            2 ябълки
            1 к. ч. стафиди
            1 бучка масло
            захар на вкус
            1 пакетче сметана
            сладко по избор
            ром на вкус
            Приготвяне:
            
            1. С остър нож разрежете измитите дюли на половинки така, че да се получи зигзагообразен разрез. Всяка половина изчистете от семките и сърцевината и оформете чашка.
            2. Подредете ги в тава и ги наръсете с пудрата захар. Около плодовете налейте малко вода. Печете ги в умерено силна фурна и ги извадете полуготови.
            3. Тиквата и ябълките нарежете на парченца и ги задушете леко в маслото, захар и малко вода. С омекналите плодове и стафидите напълнете дюлите и ги запечете до пълното им омекване.
            4. След като изстинат, ги гарнирайте с разбита сметана. Украсете ги с плодове от сладкото и при поднасяне ги полейте с малко ром.
            Стефка Анчева от с. Николово
            """
        ],
        
        [.dishName : "Пълнени патладжани",
         .timeToCook : "50 мин.",
         .pictureOfDish : "pulnenPatladjan",
         .favorite: "",
         .recipe: """
            Продукти:
            
            3 патладжана
            250 г кайма
            1/2 глава кромид лук
            1 морков
            2-3 печени червени чушки
            2 домата
            1 скилидка чесън
            смлян черен пипер
            сол
            1/2 връзка магданоз
            олио за пържене
            Приготвяне:
            
            • За рецептата "Пълнени патладжани" фурната се загрява на 200 С.
            • Сините домати се разрязват по дължина и се издълбават.
            • Издълбаното се нарязва на ситно и се оставя настрани.
            • В дълбок тиган се сгорещяват 2-3 с. л. олио.
            • Изпържват се за кратко издълбаните патладжани от двете страни.
            • Изваждат се и се нареждат в огнеупорна тава.
            • За рецептата "Пълнени патладжани" в същият тиган се запържват нарязаните на дребно лук и морков до омекване.
            • Прибавя се каймата и се запържва до побеляване.
            • Добавят се издълбаната част от патладжаните и нарязаните на дребно обелени чушки.
            • Един домат се обелва и настъргва на ренде и се прибавя към сместа в тигана.
            • Всичко за рецептата "Пълнени патладжани"се разбърква и се готви 7-8 минути на умерен огън.
            • Сваля се от котлона и се прибавят сол, черен пипер и ситно нарязаните чесън и магданоз.
            • Сместа се разбърква и с нея се пълнят издълбаните и изпържени лодки от син домат.
            • Вторият домат се нарязва на колелца, които покриват патладжаните отгоре.
            • Патладжаните за рецептата "Пълнени патладжани" се наръсват с малко олио.
            • Сипва се вода в тавата около 1 пръст.
            • Пълнените патладжани се пекат 30-40 минути.
            • Поднасят се с кисело мляко и хляб по желание.
            """
        ],
        
        [.dishName : "Баница с кайма",
         .timeToCook : "45 мин.",
         .pictureOfDish : "banicaKaima",
         .favorite: "",
         .recipe: """
            Продукти:

            500 г кайма смес
            2 глави кромид
            1/2 ч. л. млян черен пипер
            1 ч. л. сушена чубрица
            500 г фини кори за баница
            250 мл газирана вода
            3 яйца
            1/3 ч. ч. олио
            Приготвяне:

            1. Каймата за рецептата "Баница с кайма" се размива с малко вода, докато стане на каша. Кромидът се обелва и се нарязва на много ситно. Прибавя се в кашата от каймата заедно с чубрицата и черния пипер.
            2. В намаслена тава за рецептата "Баница с кайма" се слага 1 кора и върху нея се поставят 2 набрани с ръка кори. Сипва се част от каймата.
            3. Повтаря се до изчерпване на продуктите, като се завършва с 2 цели кори. Баницата се нарязва на парчета и се залива със смес от газираната вода, яйцата и олиото.
            4. Изпича се в силно загрята фурна до готовност и щом се извади, се покрива с кърпа, за да омекне кората.
            """
        ],
        
        [.dishName : "Мусака",
         .timeToCook : "60 мин.",
         .pictureOfDish : "musaka",
         .favorite: "",
         .recipe: """
            Продукти:
            
            1 с. л. брашно (с връх)
            1 ч. ч. мляко ( може прясно или кисело)
            2 яйца
            50-60 мл мазнина
            на вкус чубрица
            на вкус сол
            на вкус червен пипер
            на вкус черен пипер
            1 лук
            2-3 домати (може от консерва или доматено пюре)
            1 кг картофи
            500 г кайма
            Приготвяне:
            
            • Ситно нарязаният лук се задушава в мазнината, прибавя се предварително овкусената каймата и се запържва до получаването на топчета.
            • След това се добавят доматите.
            • Разбърква се и се оставя минутка - две да поври.
            • Картофите се обелват и нарязват на кубчета, сипват се в тавата, посоляват се, и на тях им слагам по малко червен пипер и чубрица, прибавя се сместа от доматите и каймата, разбъркват се и се заливат с гореща вода докато се покрие изравнената смес.
            • Пече се до зачервяване(водата да се изпари).
            • За заливката, загрява се в подходящ съд мазнината, добавя се брашното и се разбърква добре, след това добавяте млякото и чакате да заври, след което на тънка струя добавяте разбърканите яйца.
            • Продължавате да бъркате, докато се сгъсти малко.
            • Сипвате в средата на мусаката и с лъжица разнасяте сместа, да се покрие цялата.
            • Отново се запича до зачервяване и получаване на коричка.
            """
        ],
        
        [.dishName : "Мусака с тиквички",
         .timeToCook : "40 мин.",
         .pictureOfDish : "musakaTikvichki",
         .favorite: "",
         .recipe: """
            Продукти:
            
            4-5 (1 кг) тиквички
            2 моркова
            4 стръка зелен лук
            1 връзка магданоз
            сол на вкус
            500 г кайма
            2 с. л. олио
            2 с. л. доматено пюре, размито във вода
            настърган кашкавал
            кисело мляко
            Приготвяне:
            
            • За рецептата "Мусака с тиквички" фурната се загрява на 200 С.
            • Тиквичките се обелват и нарязват на кубчета.
            • Лукът и магданозът на ситно, а морковите се настъргват.
            • Зеленчуците за рецептата "Мусака с тиквички" се смесват с каймата.
            • Добавят се пюрето, олиото и сол на вкус.
            • Всичко се разбърква добре и се прехвърля в огнеупорна тава.
            • Ястието "Мусака с тиквички" се залива с вода.
            • Мусаката с тиквички се пече 40 минути или до готовност.
            • Накрая се поръсва с настъргания кашкавал и се запича, докато кашкавалът се разтопи.
            • Мусаката с тиквички се разпределя по чинии и по желание се поднася с кисело мляко.
            """
        ],
        
        [.dishName : "Торта Мюсли",
         .timeToCook : "20 мин.",
         .pictureOfDish : "tortaMyusli",
         .favorite: "",
         .recipe: """
            Продукти:
            
            кисело мляко
            обикновени бисквити
            захар (по желание)
            сезонни меки плодове - банан, ягоди, киви
            мюсли
            стафиди (по желание)
            Приготвяне:
            
            • За рецептата "Торта Мюсли" в правоъгълна тавичка се нареждат плътно бисквитите.
            • Върху тях обилно се слага кисело мляко на равен слой, а върху него - нарязаните на резенчета един вид плодове - например ягоди.
            • Наръсва се с мюсли и стафиди, а върху тях се слага още кисело мляко.
            • След това за рецептата "Торта Мюсли" - отново ред бисквити, ред кисело мляко (тая торта "пие" много кисело мляко, за да стане сочна и лека), ред банани, мюсли и стафиди и пак кисело мляко.
            • В този момент моята тава се напълни, но може да се сложи и трети ред.
            • Отгоре тортата отново се покрива с кисело мляко и щедро се наръсва с мюсли.
            • Тортата Мюсли трябва да престои една нощ в хладилника и да ви е сладко!
            
            Това е една много лека и лятна торта, която може да се прави дори от деца. Идеята "откраднах" от един тукашен ресторант и на тази основа импровизирах.
            Резултатът много ми допадна. Външният вид подлежи на "разкрасяване", ако десертът ще се сервира на претенциозни гурмани. В неразкрасения си вид е идеална за ядене от тавата.
            Аз сложих неподсладено кисело мляко, като използвах сладостта само на бисквитите и плодовете, но за любителите на по-сладкото е добре да се сложи малко захар в киселото мляко. За моята торта аз използвах: бисквити "Пти бьор", кисело мляко "На баба" - кафяво, мюсли на Нестле "Ябълки с канела", ягоди и банани от пазара.
            """
        ],
        
        [.dishName : "Кебап по странджански",
         .timeToCook : "40 мин.",
         .pictureOfDish : "kebap",
         .favorite: "",
         .recipe: """
            Продукти:
            
            900 г телешко месо (свинско или говеждо)
            75 мл олио
            250 г кромид лук
            2-3 скилидки чесън
            150 г консервирани домати
            1 с. л. брашно
            1 с. л. червен пипер
            50 мл червено вино
            100 мл вода
            сол
            50 г кисели краставички
            25 г люти чушки
            20 г лимон
            щипка черен пипер
            1 с. л. чубрица
            Приготвяне:
            
            • Месото (от бут - шол, ябълка, от плешка или от врат) се измива под студена течаща вода и се нарязва на парченца по 25-30 г.
            • Поръсва се със смлян черен пипер (едро смлян).
            • Запържва се до зачервяване в мазнината.
            • Прибавят се последователно дребно нарязаните кромид лук, краставички, чесън, и домати.
            • Задушават се, докато останат на мазнина.
            • Прибавя се брашното и се пържи 1-2 минути.
            • Прибавят се червеният пипер, лютите чушки (по желание), обеленият и нарязан на филийки лимон,чубрицата и виното.
            • Ястието се залива с водата и се посолява.
            • Задушава във фурната (200 С) до пълното омекване на месото около 25 минути.
            • При поднасяне кебапът по странджански се гарнира с ориз.
            """
        ],
        
        [.dishName : "Винен кебап със сметана",
         .timeToCook : "55 мин.",
         .pictureOfDish : "vinenKebap",
         .favorite: "",
         .recipe: """
            Продукти:
            
            1 кг свинска плешка
            черен пипер
            1 скилидка чесън
            сол
            1 ч. ч. червено вино
            1 дафинов лист
            1 к. ч. доматен сос
            2 с. л. брашно
            червен пипер
            3-4 с. л. сметана
            Приготвяне:
            
            1. За рецептата "Винен кебап със сметана" месото се нарязва на малки парченца, наръсва се с черен пипер, изпържва се в олиото със счуканата скилидка чесън, залива се с подсолена вода, колкото да го покрие, и се задушава до омекване.
            2. Прибавят се виното, доматеният сос, дафиновият лист. Посолява се, добавя се размитото във вода брашно, залива се с 2 ч. ч. вода и се разбърква.
            3. Вари се 5-6 минути и се поръсва с червен пипер. Оставя се да ври още 5-6 минути.
            4. Сваля се от огъня и като поизстине, се добавя сметаната. Сервира се заедно с топка картофено пюре или варен ориз.
            """
        ],
        
        [.dishName : "Салата с боб",
         .timeToCook : "15 мин.",
         .pictureOfDish : "salataBob",
         .favorite: "",
         .recipe: """
            Продукти:
            
            100 г зрял фасул
            1 глава кромид лук
            3 с. л. олио
            3 с. л. оцет
            сол
            смлян черен пипер
            Приготвяне:
            
            • Бобът се измива и се накисва от предната вечер.
            • Слага се да ври на тих огън с топла вода.
            • Когато бобът омекне, се посолява.
            • Добре свареният се отцежда от водата.
            • Поставя се в купа за салата.
            • Прибавя се нарязаният на тънки филийки лук.
            • Посолява се и се подправя със смлян черен пипер.
            • Салатата с боб се разбърква и се гарнира с маслини.
            """
        ],
        
        [.dishName : "Сливенска салата",
         .timeToCook : "15 мин.",
         .pictureOfDish : "slivenskaSalata",
         .favorite: "",
         .recipe: """
            Продукти:
            
            500 г прясно зеле
            100 г шунка
            150 г царевица от консерва
            2-3 стръка копър
            200 г майонеза
            сол
            лимонов сок
            Приготвяне:
            
            • Зелето се нарязва на лентички, шунката - на кубчета.
            • Смесват се с царевицата и нарязания копър, заливат се с майонезата и се разбъркват.
            • Сливенската салата се подправя със сол и лимонов сок на вкус.
            """
        ],
        
        [.dishName : "Таратор",
         .timeToCook : "10 мин.",
         .pictureOfDish : "tarator",
         .favorite: "",
         .recipe: """
            Продукти:
            
            300 г кисело мляко
            200 г краставици
            1 с. л. олио
            1 скилидка чесън
            120 мл вода
            сол
            орехи
            копър
            Приготвяне:
            
            • За рецептата "Таратор (класическа рецепта)" киселото мляко се разбива добре.
            • Разрежда се със студена вода.
            • Към разреденото мляко се прибавят краставиците, нарязани на дребни кубчета и олиото.
            • Добавят се ситно нарязаният копър и счуканият (пресован) чесън.
            • Посолява се на вкус.
            • Сместа за рецептата "Таратор (класическа рецепта)" се разбърква добре и се поставя в хладилник.
            • Тараторът при сервиране се поръсва по желание с орехи.
            """
        ],
        
        [.dishName : "Боб на фурна",
         .timeToCook : "120 мин.",
         .pictureOfDish : "bobFurna",
         .favorite: "",
         .recipe: """
            Продукти:
            
            200 г (1 ч. ч.) зрял боб
            750 мл (3 ч. ч.) студена вода
            1 глава кромид лук
            1 морков
            1 чушка
            2 с. л. доматено пюре
            1 с. л. сух джоджен
            1/4 ч. л. сол
            2 ч. л. червен пипер
            3 с. л. олио
            Приготвяне:
            
            • За рецептата "Боб на фурна " бобът (зрял фасул) се почиства и се измива.
            • Залива се със студена вода и се оставя да кисне 8-10 часа.
            • Бобът се измива и се поставя в голяма тенджера, след което се залива отново със студена вода.
            • След като заври, се излива водата и се измива.
            • Връща се в тенджерата и се залива с 3 ч. ч. вода.
            • След като заври, се отстранява с лъжица пяната, която се получава.
            • Огънят се намалява на слаб и бобът се вари 60 минути или до омекване.
            • Лукът, морковът и чушката се почистват и нарязват на дребно.
            • Изсипват се при боба и се варят още 30 минути.
            • След като бобът заедно със зеленчуците се е сварил, се прибавят доматеното пюре, джодженът, солта, червеният пипер и олиото.
            • Сместа се разбърква и се прехвърля в огнеупорна тава, като е добре бобът да бъде на дебел пласт.
            • Фурната се загрява на 200 С.
            • Бобът на фурна се пече 30-50 минути или докато водата напълно се изпари и бобът придобие коричка.
        """
        ],
        
        [.dishName : "Друсани картофи",
         .timeToCook : "30 мин.",
         .pictureOfDish : "drusaniKartofi",
         .favorite: "",
         .recipe: """
            Продукти:
            
            600 г пресни картофи
            50 мл олио
            1 с. л. краве масло
            ситно нарязан копър
            зелен лук
            морска сол
            Приготвяне:
            
            • За рецептата "Друсани картофи" картофите се измиват с четка и се подсушават с кухненско руло.
            • В тенджера (тиган) с тефлоново покритие се загрява олиото.
            • Прибавят се картофите и се похлупват плътно с капак.
            • Запържват се на среден огън (при мен 2 степен), като се раздрусват често, за да могат картофите да се зачервят от всички страни.
            • След 20 минути се проверяват, дали са омекнали.
            • Ако са готови се прибавя на вкус ситно нарязан копър, пресован чесън и морска сол и 1 с. л. краве масло.
            • Похлупва се и се раздрусва няколко пъти в продължение на 2-3 минути на слаб огън.
            • Друсаните картофи се сервират се веднага.
        """
        ],
        
        [.dishName : "Миш - маш",
         .timeToCook : "40 мин.",
         .pictureOfDish : "mishmash",
         .favorite: "",
         .recipe: """
            Продукти:
            
            100 г кромид лук
            400 г чушки
            200 г домати
            4 яйца
            100 г сирене
            сол
            смлян черен пипер
            магданоз
            копър
            Приготвяне:
            
            • Лукът се обелва и се нарязва на дребно.
            • Запържва се в сгорещен тиган до омекване.
            • Прибавят се изчистените и нарязани на дребно чушки и се задушават около 20 минути на слаб огън.
            • Доматите се нарязват на кубчета и се добавят при чушките.
            • Задушават се за още 20 минути.
            • Когато се изпари водата, се прибавят натрошеното сирене, разбърканите яйца, ситно нарязаният магданоз и/ или копър.
            • Ястието се посолява и се подправя на вкус.
            • Сместа се изпържва добре, като често се разбърква.
            • Миш - машът се поднася веднага.
            """
        ],
        
        [.dishName : "Спаначени пръжки",
         .timeToCook : "120 мин.",
         .pictureOfDish : "spanacheniPrujki",
         .favorite: "",
         .recipe: """
            Продукти:
            
            За тестото:
            
            1 яйце
            сол
            250 г брашно
            1 с. л. олио
            хладка вода
            
            За плънката:
            
            1 кг спанак
            1 връзка магданоз
            3 стръка дeвисил
            2-3 яйца
            150 г извара (сирене или настърган кашкавал)
            щипка черен пипер
            сол на вкус
            1/2 ч. ч. олио
            Приготвяне:
            
            • За рецептата "Спаначени пръжки" от продуктите се замесва средно меко тесто.
            • Разделя се на няколко топки, които се разточват на кора с дебелина 5-7 мм и се нарязват на квадрати или правоъгълници.
            • Почистени, измити и накълцани на дребно спанакът, магданозът и девесилът се задушават в малко от олиото.
            • Оставят се да поизстинат и се прибавят яйцата, изварата, черният пипер и сол на вкус.
            • В средата на всеки квадрат за рецептата "Спаначени пръжки" се слага от плънката и се прегъва на две, за да се получи триъгълник.
            • По краищата се притиска с дръжката на лъжица или с върха на пръстите.
            • Получените пръжки се пускат в силно сгорещено олио и се пържат до зачервяване.
            """
        ],
        
        [.dishName : "Сирене по врачански",
         .timeToCook : "10 мин.",
         .pictureOfDish : "sireneVrachanski",
         .favorite: "",
         .recipe: """
            Продукти:
            
            2 с. л. олио
            400 г сирене
            5-6 домата
            4 червени люти чушлета
            4 яйца
            3-4 стръка магданоз
            Приготвяне:
            
            1. За рецептата "Сирене по врачански" в намазаните с малко олио гювечета се нарежда сиренето, нарязано на филийки.
            2. Покрива се с кръгчета от доматите, слага се по едно люто чушле, цепнато на едно-две места, и се пече в умерена фурна.
            3. Гювечетата за рецептата "Сирене по врачански" се изваждат, във всяко се чуква по едно яйце и се връщат във фурната да се запекат.
            4. Щом се извадят, във всяко гювече се наръсва по малко ситно нарязан магданоз. Поднасят се топли.
            """
        ],
        
        [.dishName : "Свинско с тиква",
         .timeToCook : "115 мин.",
         .pictureOfDish : "svinskoTikva",
         .favorite: "",
         .recipe: """
            Продукти:
            
            1 ч. ч. зехтин
            2 едри скилидки чесън
            по няколко щипки риган, розмарин и мащерка
            1 кг свинско месо
            черен пипер и сол на вкус
            2 едри глави кромид лук
            1 кг тиква
            2 ч. ч. бяло вино
            1 с. л. салвия (градински чай)
            Приготвяне:
            
            • В кухненски комбайн се смесват 1/2 ч. ча. зехтин, чесънът, мащерката, риганът и розмарина, докато се получи пюре.
            • С тази смес се намазва месото, поръсва се със сол и черен пипер.
            • Поставя се в тава за печене, добавят се 1 ч. ч. вино и малко вода.
            • Покрива с алуминиево фолио и се пече около 50 минути в загрята фурна при 180 С.
            • Сваля се фолиото и се пече още 15 минути, за да хване коричка.
            • Лукът се нарязва на ситно, тиквата - на едри кубчета.
            • Лукът се задушава в малко зехтин.
            • Добавя се тиквата, подправя се със сол, черен пипер на вкус, 1 ч. ч.бяло вино и салвията.
            • Всичко се задушава на слаб огън до омекване на тиквата - около 20 минути.
            • Свинското се сервира заедно с тиквените кубчета като гарнитура.
            • Свинското с тиква се консумира топло.
            """
        ],
        
        [.dishName : "Патица с тиква и портокали",
         .timeToCook : "45 мин.",
         .pictureOfDish : "patica",
         .favorite: "",
         .recipe: """
            Продукти:
            
            1,5 кг патица
            3 портокала
            парче тиква
            1 лимон суха и прясна мащерка
            сол и смлян черен пипер
            зехтин
            Приготвяне:
            
            • За рецептата “Патица с тиква и портокали” фурната се загрява на 220 С.
            • Патицата се измива добре и се подсушава с кухненско руло.
            • Натрива се със сол и черен пипер отвътре и отвън.
            • Портокалите се измиват и нарязват на 8 части, а тиквата на средни кубчета.
            • За рецептата “Патица с тиква и портокали” се изстисква сокът от лимона.
            • Портокалите и тиквата се поливат с лимоновия сок, овкусяват се със сол и черен пипер.
            • Накрая се поръсват със суха мащерка на вкус.
            • Патицата се пълни с половината от подготвените портокали и тиква.
            • Отворът се закрепва с клечки за зъби или дървени шишове.
            • Крилцата и краката на патицата се връзват с кухненски конец.
            • Патицата се поставя в тава, застлана с хартия за печене с гърдите надолу.
            • Патицата с тиква и портокали се пече 15-20 минути, след което температура на фурната се намалява на 170 С.
            • Патицата се пече още 1-1,5 часа, като периодично се полива с мазнината, която се отделя по време на печенето.
            • Тавата се изважда и се прибавят останалите портокали и тиква, които се напръскват леко със зехтин и поръсват с листа от прясна мащерка.
            • Тавата с патицата, тиквата и портокалите се връща обратно във фурната.
            • Ястието "Патица с тиква и портокали” се запича до готовност на патицата.
            • Готовността на патицата се определя, като се забоде в дебелата част на бедрото нож и потече бистър сок.
            • По желание в края на печенето температурата на фурна се увеличава на 200 С, за да може патицата да придобие златист цвят.
            • Готовата изпечена патица се покрива с алуминиево фолио и се оставя да престои 15-20 минути.
        """
        ],
        
        [.dishName : "Родопски клин със спанак",
         .timeToCook : "35 мин.",
         .pictureOfDish : "rodopskiKlin",
         .favorite: "",
         .recipe: """
            Продукти:
            
            1 пакет одрински кори
            300 г спанак
            250 г сирене
            3 яйца
            1 ч. ч. сварен ориз
            Приготвяне:
            
            1. За рецептата "Родопски клин със спанак" спанакът се бланшира и всички продукти се разбъркват.
            2. В намаслена тава се слагат няколко кори, разстила се плънката и отгоре пак се слагат кори.
            3. Родопският клин със спанак се пече се върху печката, като се обръща.
            """
        ]
    ]
}

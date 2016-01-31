//conversations that are longer than one popup box

//Chat with Granny, scr_IntRoomTown1 line 30
if conversation=0
{}

if conversation=1
{
 if part=1 {text="Everybody loves grannies cookies :)"}
 if part=2 {text="I could make you some too if you like ^_^"}
}

//Chat with Trainer, scr_IntrRoomTown1 line 107
if conversation=2
{
 if part=1 {text="Hello!"}
 if part=2 {text="How are you?"}
}

//Quest with Granny, scr_Quest1 line ~30
if conversation=3
{
 if part=1 {text="Hi there! So you're the one that fell out of the sky?#I am very curious what stories you have to tell me."}
 if part=2 {text="I shall connect you to the people in Rendonan. They#are all very interested in you."}
 if part=3 {
           text="Let's see, how about you have a chat with 'Jack'.#He is very skilled with enhancing equipment."
           obj_Controller.Questactive[1]=1
           obj_Controller.Questpart[1]=1
           obj_Controller.Questhint[1]="Talk with Jack"
           }
}


//Quest with Granny, scr_Quest1 line ~40
if conversation=4
{
 if part=1 {text="Welcome back. Did the kid like the cookies? He prefers cookies#that have been soaked in oil. He says it gives him a boost."}
 if part=2 {
           text="Oh yeah, here you have the sword I promised you. It is freshly cut out of own garden."
           obj_Controller.Questhint[1]=""
           //Reward
           global.quest1reward+=1                    //Links to db_Questrewards (obj_Chatbox)
           }

}

//quest with Blacksmith, scr_Quest1 line ~60
if conversation=5
{
 if part=1 {text="Thanks mate!"}
 if part=2 {
           text=("Could you do me a favor and tell the Trainer that I've finished the sword he asked me for?")
           obj_Controller.Questpart[1]=5
           obj_Controller.Questhint[1]="Tell the trainer about his new sword"
           }
}

//Quest with Alice, scr_Quest1 line ~100
if conversation=6
{
 if part=1 {text="Oh hi there!"}
 if part=2 {text="Where do you come from? I've never seen you here before.#You are from another planet arent you? <3"}
 if part=3 {
           text=("Could you do me a favor and ask the oracle about our future#together? I am really curious where our faith will bring us")
           obj_Controller.Questpart[1]=7
           obj_Controller.Questhint[1]="Ask the oracle for your future"
           }
}

//Quest with Trainer, scr_Quest1 line ~130
if conversation=7
{
 if part=1 {text="Cheers! I was wondering when my sword would be finished."}
 if part=2 {text="Come by some time if you like me to teach you how we live, after greeting my fellow student of course."}
 if part=3 {
           text=("Her name is 'Alice'. She is very kind. Only, she doesn't really like#roses. No-one knows why that is. I thought girls liked roses.")
           obj_Controller.Questpart[1]=6
           obj_Controller.Questhint[1]="Talk with Alice"
           }
}

//Quest with Gramps, scr_Quest1 line ~160
if conversation=8
{
 if part=1 {text="Well hello there. Decided to finally say hi? I heard that Granny is#looking for you. She was mumbling about your 'big wooden' sword' o.o;"}
 if part=2 {
           text=("You're not flirting with my wifey are you..?#I be keeping an eye on you .\_/.")
           obj_Controller.Questpart[1]=9
           obj_Controller.Questhint[1]="Talk with Granny"
           }
}

//Quest with Kid, scr_Quest1 line ~170
if conversation=9
{
 if part=1 {text="Cool, thanks! I love Grannies cookies. BTW, did you see#my last creation: guard tower? It can be found here in Town"}
 if part=2 {
           text=("Can you do me a favor and bring this hammer to the blacksmith?")
           obj_Controller.Questpart[1]=4
           obj_Controller.Questhint[1]="Bring the hammer to the blacksmith"
           }
}

//Quest with Oracle, scr_Quest1 line ~190
if conversation=10
{
 if part=1 {text="Youuuuu.. Youu shall be an important person one day, very#important indeed. Yes yes, importance is the key."}
 if part=2 {text="Yyoouu wheel have to do some challanges and show strength.#Do these tests -"}
 if part=3 {text="- But first thy must rest."}
 if part=4 {
           text="...?!@$ BTW bro, if ya dun' mind, send teh old Gramps me greetings if ye like."
           obj_Controller.Questpart[1]=8
           obj_Controller.Questhint[1]="Greet Gramps"
           }
}
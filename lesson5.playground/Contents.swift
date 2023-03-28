import UIKit

// OOP - object oriented programming

class Post {
    var postTitle = ""
    var postText = ""
    var postAuthor = ""
}
let firstPost = Post ()

firstPost.postTitle = "This is my"
firstPost.postText = "Here are"
firstPost.postAuthor = "VT"

let secondPart = firstPost

secondPart.postTitle = "2"
secondPart.postText = "New post"

firstPost === secondPart

class Comment {
    var like = ""
    var authir = ""
    
    var numberOfComments = 0
    
    func addComment() {
        numberOfComments += 1
    }
}

let firstComment = Comment()
firstComment.addComment()
firstComment.addComment()
firstComment.addComment()

class Human {
    
    var myName: String
    var myAge: Int
    
    init(name: String, age: Int){
        self.myName = name
        self.myAge = age
    }
}

let person = Human(name: "Tod", age: 22)
person.myAge








class Parent {
    
    var myName: String
    var myAge: Int
    
    init(name: String, age: Int){
        self.myName = name
        self.myAge = age
    }
    
    func walk(){
        print("can walk")
    }
}

let dad = Parent(name: "Sam", age: 40)

dad.myName
dad.walk()

class Child: Parent{
    
    func feeding(){
        if myAge <= 4{
            print("kinder age")
        }else{
            print("ready to go to school")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 2)
littleBoy.walk()

class Figure {
    func draw() {}
}

class Circle: Figure {
    
    override func draw() {
        print("Draw the Circle")
    
    }
}

class Rectangle: Figure {
    
    override func draw() {
        print("Draw the Rectangle")
    }

}

let rectangle = Rectangle()

rectangle.draw()

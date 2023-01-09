//
//  Resource.swift
//  fitApp
//
//  Created by Artyom Prima on 06.01.2023.
//

import Foundation
import UIKit

struct AdditionalTraining {
    var image: String
    var imageAmrap: String
    var nameTraining: String
    var levelTraining: String
    var timeTrainig: String
    var calories: String
    var rating: String
    
}

let exampleAdditionalTraining: [AdditionalTraining] = [
    AdditionalTraining(image: "image3", imageAmrap: "amrap1", nameTraining: "Push Your Limit", levelTraining: "Beginner - Full Body", timeTrainig: "20min", calories: "125kcal", rating: "4.0"),
    AdditionalTraining(image: "image4", imageAmrap: "amrap2", nameTraining: "Amrap", levelTraining: "Beginner - Lower Body", timeTrainig: "15min", calories: "88kcal", rating: "4.2"),
    AdditionalTraining(image: "image5", imageAmrap: "amrap3", nameTraining: "Deep Amrap Killer", levelTraining: "Beginner - Full Body", timeTrainig: "15min", calories: "88kcla", rating: "4.5"),
    AdditionalTraining(image: "image6", imageAmrap: "amrap4", nameTraining: "Deep Amrap Burner", levelTraining: "Beginner - Full Body", timeTrainig: "15min", calories: "125kcal", rating: "3.9"),
]

struct WorkoutTypes{
    var image: String
    var name: String
    var count: String
}

let exampleWorkoutTypes: [WorkoutTypes] = [
    WorkoutTypes(image: "image1", name: "Hiit", count: "12 session"),
    WorkoutTypes(image: "image2", name: "Amrap", count: "15 session"),
    WorkoutTypes(image: "image2", name: "Amrap", count: "15 session"),
    WorkoutTypes(image: "image1", name: "Hiit", count: "12 session"),
]

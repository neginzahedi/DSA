//
//  GradingStudents.swift
//  DSA
//

import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

func gradingStudents(grades: [Int]) -> [Int] {
    var roundedGrades: [Int] = []
    for grade in grades {
        if grade < 38 {
            roundedGrades.append(grade)
        } else {
            let remainder = grade % 5
            if remainder >= 3 {
                let roundedGrade = grade + (5 - remainder)
                roundedGrades.append(roundedGrade)
            } else {
                roundedGrades.append(grade)
            }
        }
    }
    return roundedGrades
}

import Cocoa

// MARK: PROBLEM SOLVING - Grading Students

// HackerLand University has the following grading policy:

// Every student receives a grade in the inclusive range from 0 to 100.

// Any grade less than 40 is a failing grade.

// Sam is a professor at the university and likes to round each student's grade according to these rules:

// If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.

// If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.

func gradingStudents(grades: [Int]) -> [Int] {
	var finalGrades = [Int]()
	for grade in grades {
		var newGrade = grade
		let roundedGrade = ((grade / 5) + 1) * 5
	
		if grade >= 38 && (roundedGrade - grade) < 3 {
			newGrade = roundedGrade
		}
		finalGrades.append(newGrade)
	}
	return finalGrades
}
var testResults = gradingStudents(grades: [4, 73, 67, 38, 33])
print(testResults)


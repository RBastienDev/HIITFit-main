

import SwiftUI


struct ExerciseView: View {
	
	
	let index: Int
	
	let interval: TimeInterval = 3
	
	var exercise: Exercise {
		Exercise.exercises[index]
	}
	
	
    var body: some View {
			GeometryReader { geometry in
				VStack{
					//header
				HeaderView(exerciseName: exercise.exerciseName)
						.padding(.bottom)
					//video player
					VideoPlayerView(videoName: exercise.videoName)
						.frame(height: geometry.size.height * 0.35) .padding(20)
					//timer
					Text(Date().addingTimeInterval(interval), style: .timer)
						.font(.system(size: geometry.size.height * 0.07))
					
					Button("Start/Done") {
						
					}
					.font(.title3) .padding()
					RatingView()
						.padding()
					
					Spacer()
					Button("History"){
						
					}
					.padding(.bottom)
				}
			}
		}
}

#Preview {
	ExerciseView(index: 0)
}


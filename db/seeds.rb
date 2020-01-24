Game.destroy_all
Question.destroy_all
Player.destroy_all

api_questions = RestClient.get "https://opentdb.com/api.php?amount=50&type=multiple"
parsed_questions = JSON.parse(api_questions)
questions = parsed_questions["results"]


questions.map do |api_data|
    Question.create(
        category: api_data["category"],
        difficulty: api_data["difficulty"], 
        question: api_data["question"], 
        correct: api_data["correct_answer"], 
        false1: api_data["incorrect_answers"][0],
        false2: api_data["incorrect_answers"][1],
        false3: api_data["incorrect_answers"][2]
    )
end
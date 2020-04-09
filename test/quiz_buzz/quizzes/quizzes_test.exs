defmodule QuizBuzz.QuizzesTest do
  use ExUnit.Case, async: true

  alias QuizBuzz.{Factory, Quizzes}
  alias QuizBuzz.Quizzes.{Player, Team}

  describe "QuizBuzz.Quizzes.add_team/2" do
    test "adds a new team with the supplied name" do
      quiz = Factory.new_quiz() |> Quizzes.add_team("My team")
      assert [%Team{name: "My team"}] = quiz.teams
    end
  end

  describe "QuizBuzz.Quizzes.join_quiz/2" do
    test "adds a new unaffiliated player with the supplied name" do
      quiz = Factory.new_quiz() |> Quizzes.join_quiz("Joe Bloggs")
      assert [%Player{name: "Joe Bloggs"}] = quiz.players
    end
  end
end

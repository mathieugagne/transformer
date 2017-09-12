# frozen_string_literal: true

module Potloc
  class Question
    QUESTIONS = [
      {
        id: 1,
        category: "email",
        column: 13,
        question_id: nil,
      },
      {
        id: 2,
        category: "simple",
        column: 0,
        question_id: nil,
      },
      {
        id: 3,
        category: "simple",
        column: 1,
        question_id: nil,
      },
      {
        id: 4,
        category: "simple",
        column: 7,
        question_id: nil,
      },
      {
        id: 5,
        category: "simple",
        column: 10,
        question_id: nil,
      },
      {
        id: 6,
        category: "simple",
        column: 11,
        question_id: nil,
      },
      {
        id: 7,
        category: "simple",
        column: 12,
        question_id: nil,
      },
      {
        id: 8,
        category: "simple",
        column: 14,
        question_id: nil,
      },
      {
        id: 9,
        category: "simple",
        column: 15,
        question_id: nil,
      },
      {
        id: 10,
        category: "simple",
        column: 16,
        question_id: nil,
      },
    ].freeze

    attr_reader :id, :category, :column, :question_id, :survey_id

    def initialize(attributes = {})
      @id = attributes.fetch(:id, nil)
      @category = attributes.fetch(:category, "simple")
      @column = attributes.fetch(:column, nil)
      @question_id = attributes.fetch(:question_id, nil)
      @survey_id = attributes.fetch(:survey_id, "foobar")
    end

    def inspect
      "<Question:#{object_id} id:#{id}, column:#{column} category:#{category} question_id:#{question_id}>"
    end

    class << self
      def all
        questions = QUESTIONS.reject { |question| question[:category] == "email" }
        questions.map do |question|
          Question.new(question)
        end
      end

      def email
        Question.new(QUESTIONS.detect { |question| question[:category] == "email" })
      end
    end
  end
end

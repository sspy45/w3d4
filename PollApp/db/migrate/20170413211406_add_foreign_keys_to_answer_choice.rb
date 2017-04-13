class AddForeignKeysToAnswerChoice < ActiveRecord::Migration[5.0]
  def change
    add_column :answer_choices, :text, :text
    add_column :answer_choices, :question_id, :integer

    add_column :responses, :answer_choice_id, :integer
    add_column :responses, :user_id, :integer
  end
end

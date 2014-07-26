class CreateTrialModels < ActiveRecord::Migration
  def change
    create_table :trial_models do |t|
      t.string :trial_attribute

      t.timestamps
    end
  end
end

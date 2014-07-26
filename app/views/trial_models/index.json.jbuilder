json.array!(@trial_models) do |trial_model|
  json.extract! trial_model, :id, :trial_attribute
  json.url trial_model_url(trial_model, format: :json)
end

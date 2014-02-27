json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :version, :name, :project_id, :start_date, :end_end, :status, :initial_time
  json.url sprint_url(sprint, format: :json)
end

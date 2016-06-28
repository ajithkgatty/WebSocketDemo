json.array!(@counters) do |counter|
  json.extract! counter, :id, :first_name, :last_name, :count
  json.url counter_url(counter, format: :json)
end

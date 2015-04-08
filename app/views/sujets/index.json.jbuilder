json.array!(@sujets) do |sujet|
  json.extract! sujet, :id, :titre, :contenu
  json.url sujet_url(sujet, format: :json)
end

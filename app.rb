# Obter a data e hora atual formatada como string
require "rest-client"
require "json"
require "unicode_utils"

class Tradutor
  def translate_text(text, source_lang, target_lang)
    base_url = "https://api.mymemory.translated.net/get"
    params = {
      q: text,
      langpair: "#{source_lang}|#{target_lang}",
    }

    response = RestClient.post(base_url, params)
    if response.code == 200
      json_response = JSON.parse(response.body)
      translation = json_response["responseData"]["translatedText"]

      return translation
    else
      puts "Falha na solicitação."
      return nil
    end
  end
end

# Exemplo de uso
#text_to_translate = 'Hello, how are you?'
print "Digite o texto que você quer traduzir: "
text_to_translate = gets.chomp.downcase
print "Digite para qual lingua que você quer traduzir: "
string_com_acentos = gets.chomp.downcase

string_sem_acentos = UnicodeUtils.nfkd(string_com_acentos).gsub(/[^\x00-\x7F]/, "")

# Mapeamento dos idiomas alvo
language_mapping = {
  "arabe" => "ar",
  "portugues" => "pt",
  "bulgaro" => "bg",
  "checo" => "cs",
  "dinamarques" => "da",
  "holandes" => "nl",
  "ingles" => "en-us",
  "reino unido" => "en-gb",
  "filandes" => "fl",
  "frances" => "fr",
  "alemao" => "da",
  "grego" => "el",
  "hebraico" => "he",
  "hind" => "hi",
  "hungaro" => "hu",
  "indonesio" => "id",
  "italiano" => "it",
  "japones" => "ja",
  "coreano" => "ko",
  "noruegues" => "no",
  "polones" => "pl",
  "romeno" => "ro",
  "russo" => "ru",
  "chines - simplificado" => "zh-cn",
  "espanhol" => "es",
  "sueco" => "sv",
  "tailandes" => "th",
  "chines - tradicional" => "zh-tw",
  "chines" => "zh-tw",
  "turco" => "tr",
  "ucraniano" => "uk",
  "vietnamita" => "vi",
}

# Verifica se o idioma é suportado no mapeamento
if language_mapping.key?(string_sem_acentos)
  target_language = language_mapping[string_sem_acentos]

  source_language = "en-us"
  translated_text = Tradutor.new::translate_text(text_to_translate, source_language, target_language)

  # Abrir o arquivo para escrita
  current_time = Time.now.strftime("%d-%m-%Y_%H:%M:%S")
  file_name = "#{current_time}.txt"

  File.open(file_name, "w") do |file|
    # Código para escrever no arquivo
    file.puts "Texto original: #{text_to_translate}"
    file.puts ""
    file.puts ""
    file.puts "Tradução: #{translated_text}"
  end
else
  puts "Idioma não suportado: #{string_sem_acentos}"
end

source_language = "en"

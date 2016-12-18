class DataLoader
  def load_sentences
    YAML.load_file('db/sentences.yml').each do |sentence|
      Sentence.create(description: sentence["description"], truth: sentence["truth"])
    end
  end
end

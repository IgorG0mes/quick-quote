class AppConfiguration
  FILE_PATH = Rails.root.join('config', 'configuration.yml')

  def self.get(key)
    data[key.to_s]
  end

  def self.update(key, value)
    data[key.to_s] = value
    File.write(FILE_PATH, data.to_yaml)
  end

  private

  def self.data
    @data ||= YAML.load_file(FILE_PATH) || {}
  end
end

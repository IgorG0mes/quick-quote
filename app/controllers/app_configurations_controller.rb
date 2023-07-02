class AppConfigurationsController < ApplicationController
  FILE_PATH = Rails.root.join('config', 'configuration.yml')

  def index
    @configurations = load_configurations
  end

  def update
    # debugger
    key = params[:key]
    value = params[:key_value][key]
    AppConfiguration.update(key, value)
    redirect_to app_configurations_path, notice: "Valor atualizado com sucesso!"
  end

  private

  def load_configurations
    YAML.load_file FILE_PATH
  end
end

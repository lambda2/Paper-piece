module PaperPiece
  module Locales

    def self.included(base)
      base.extend ClassMethods
      base.define_language "fr"
      base.load_translations
    end

    module ClassMethods
      attr_reader :language
      attr_reader :translations

      def define_language(lang)
        raise "Unable to find specified language: #{lang}" unless ["fr"].include? lang
        @language = lang
      end

      def load_translations
        file_path = File.expand_path("../../locales/#{@language}.yml", __FILE__)
        @translations = YAML.load File.open(file_path)
      end

    end

  end
end
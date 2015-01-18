
require 'yaml'
require "paper_piece/locales"
require "paper_piece/paper"

module PaperPiece

  include Locales

  def self.configure
    yield self
  end

end

require "paper_piece/railtie" if defined? Rails
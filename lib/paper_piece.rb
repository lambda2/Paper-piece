

require "paper_piece/paper"

module PaperPiece

  def self.configure
    yield self
  end

end

require "paper_piece/railtie" if defined? Rails
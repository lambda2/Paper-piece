
module PaperPiece

  class Paper

    def self.write piece
      inst = Paper.new
      inst << piece
      inst
    end

    def initialize
      @stack = []
    end

    def to_yaml
      @stack.to_yaml
    end

    def <<(value)
      @stack += [*value]
      self
    end

    def +(value)
      @stack += [*value]
      self
    end

    def to_s
      self.render
    end


    def render
      buffer = []
      connectors = PaperPiece.translations[PaperPiece.language]["connectors"]
      p connectors
      first, middle, last = cut @stack

      buffer << connectors["first"].sample + first if first
      middle.each{|part| buffer << connectors["middle"].sample + part} if middle.any?
      buffer << connectors["last"].sample + last if last
      return buffer
    end

    private

    def cut part
      _part = part.clone
      f = _part.shift
      l = _part.pop
      if _part.any?
        return f, _part, l
      else
        return f, nil, l
      end
    end

  end
end
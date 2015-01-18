
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

    def render

    end

    def <<(value)
      @stack += [*value]
    end

    private

    def cut part
      f = part.shift
      l = part.pop
      if part.any?
        return f, part, l
      else
        return f, nil, l
      end
    end

  end
end
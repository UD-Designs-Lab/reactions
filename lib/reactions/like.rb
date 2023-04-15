module Reactions
  class Like < Reaction
    def like=(value)
      self.value = value
      reset_other_reactions(:like)
    end

    private

    def reset_other_reactions(current_reaction)
      %i[love smile celebrate wow sad angry].each do |reaction|
        next if reaction == current_reaction

        send("#{reaction}=", false)
      end
    end
  end
end

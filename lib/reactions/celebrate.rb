require_relative '../reaction'

module Reactions
  class Celebrate < Reaction
    def celebrate=(value)
      self.value = value
      reset_other_reactions(:celebrate)
    end

    private

    def reset_other_reactions(current_reaction)
      %i[like love smile wow sad angry].each do |reaction|
        next if reaction == current_reaction

        send("#{reaction}=", false)
      end
    end
  end
end

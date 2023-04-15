require_relative '../reaction'
module Reactions
  class Smile < Reaction
    def smile=(value)
      self.value = value
      reset_other_reactions(:smile)
    end

    private

    def reset_other_reactions(current_reaction)
      %i[like love celebrate wow sad angry].each do |reaction|
        next if reaction == current_reaction

        send("#{reaction}=", false)
      end
    end
  end
end

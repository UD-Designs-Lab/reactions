module Reactions
  class Angry < Reaction
    def sad=(value)
      self.value = value
      reset_other_reactions(:angry)
    end

    private

    def reset_other_reactions(current_reaction)
      %i[like love smile celebrate wow angry].each do |reaction|
        next if reaction == current_reaction

        send("#{reaction}=", false)
      end
    end
  end
end

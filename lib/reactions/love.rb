require_relative '../reaction'
module Reactions
  class Love < Reaction
    def love=(value)
      self.value = value
      reset_other_reactions(:love)
    end

    private

    def reset_other_reactions(current_reaction)
      %i[like smile celebrate wow sad angry].each do |reaction|
        next if reaction == current_reaction

        send("#{reaction}=", false)
      end
    end
  end
end

class Task < ApplicationRecord
  # include AASM

  # aasm do # default column: aasm_state
  #   state :sleeping, initial: true
  #   state :running

  #   event :run do
  #     transitions from: :sleeping, to: :running
  #   end

  #   event :sleep do
  #     transitions from: :running, to: :sleeping
  #   end
  # end
end

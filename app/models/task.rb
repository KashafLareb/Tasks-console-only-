class Task < ApplicationRecord
  include AASM

  aasm do # default column: aasm_state
    state :no_status, initial: true
    state :next_up
    state :in_progress
    state :completed

    event :stage do
      transitions from: :no_status, to: :next_up
    end

    event :start do
      transitions from: :next_up, to: :in_progress
    end

    event :complete do
      transitions from: :in_progress, to: :completed
    end
  end
end

require 'forwardable'

class MyStack
  extend Forwardable

  def initialize
    @stack = []
  end

  def_delegators(:@stack, :push, :size, :clear, :pop)
  def_delegator(:@stack, :last, :peek)
end

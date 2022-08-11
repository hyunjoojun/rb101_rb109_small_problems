=begin
Input: A string of commands
Output: values (integer)

Rules:
- Write a method that takes a stack-and-register programming language.
- Each operation operates on a register.
- The register begins with 0.
- The register is not part of the stack.

Algorithm:
- The register will be a number.
- A stack will be an array.
- Any number in the input string will become a register value.
- Split the input string into elements.
- Follow which command does what.
=end

def minilang(commands)
  register = 0
  stack = []

  commands.split.each do |command|
    if command.to_i.to_s == command
      register = command.to_i
    else
      case command
      when 'PUSH' then stack << register
      when 'ADD' then register += stack.pop
      when 'SUB' then register -= stack.pop
      when 'MULT' then register *= stack.pop
      when 'DIV' then register /= stack.pop
      when 'MOD' then register %= stack.pop
      when 'POP' then register = stack.pop
      when 'PRINT' then puts register
      end
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

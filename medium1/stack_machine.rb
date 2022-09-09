=begin
Input: A string of commands
Output: values (integer)

Rules:
- Write a method that operates commands that are on the list.
- All operations operates on a register which is the current value.
- The register is not part of the stack.
- All operations are integer opreations.
- Initialize the register to 0.

Algorithm:
- Set register equal to 0.
- Set stack as an empty array.
- Split the input string into operations.
- Follow the problem description to create cases.
=end

def minilang(program)
  register = 0
  stack = []
  commands = program.split

  commands.each do |command|
    if command.to_i.to_s == command
      register = command.to_i
    else
      register = main_program(command, register, stack)
    end
  end
end

def main_program(command, register, stack)
  case command
  when 'PRINT' then puts register
  when 'PUSH' then stack << register
  when 'MULT' then register *= stack.pop
  when 'ADD' then register += stack.pop
  when 'POP' then register = stack.pop
  when 'SUB' then register -= stack.pop
  when 'DIV' then register /= stack.pop
  when 'MOD' then register %= stack.pop
  else puts 'Invalid command'
  end
  register
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
minilang('HELLO')

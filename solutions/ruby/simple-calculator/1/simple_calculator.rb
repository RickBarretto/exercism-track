
class ArgumentError < StandardError
end

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  UnsupportedOperation = StandardError

  def self.calculate(first_operand, second_operand, operation)

  invalid_arguments = [
    [first_operand, second_operand].any? { |arg| arg.class != Integer }, 
    operation.class != String
  ]
    
   if invalid_arguments.any?
      raise ArgumentError.new("Raises an ArgumentError")
   end
    
    if operation == "+"
      calc = first_operand + second_operand
    elsif operation == "*"
      calc = first_operand * second_operand
    elsif operation == "/"
      begin
        calc = first_operand / second_operand
      rescue ZeroDivisionError 
        return "Division by zero is not allowed."
      end
    else
       raise UnsupportedOperation.new("Raises an UnsupportedOperation")
    end

    "#{ first_operand} #{operation} #{second_operand} = #{calc}"
    
  end
end

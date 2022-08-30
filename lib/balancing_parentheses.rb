require_relative './stack'

def balancing_parentheses string
    stack = Stack.new

    string.chars.each { |c| 
        if c == "("
            stack.push(c)
        elsif c ==")"
            if stack.peek == "("
                stack.pop
            else
                stack.push(c)
            end
        end
    }

    stack.size

end


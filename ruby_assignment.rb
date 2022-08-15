# Write a ruby program to recreate array flatten method.Sample Input: [1, [2, 3, [4, 5]]]Sample Output: [1, 2, 3, 4, 5]
def abc(array)
    results = []
    array.each do |element|
      if element.class == Array 
        element.each {|value| results << value}
      else
        results << element
      end
    end
    results
end
print abc([1, 2, 3, [4, 5,]])










# Write a Calculator program to include addition, subtraction, multiplication and total methods.
# Sample code:
class Calculator
  def add(*args)
    args.reduce(:+)
  end
  def subtract(*args)
    args.reduce(:-)
  end
  def multiply(*args)
    args.reduce(:*)
  end
  #def total

end
p Calculator.new.add(1,2)



#4
def play(text_input)
  print "Game Started!!\n\n"
  result = []
  text_array = text_input.split
  result << text_array.shift
  text_array.delete(result[0])
  while !text_array.empty?
      res = text_array.find { |e| result[-1][-1] == e[0] }
      if res == nil
          break
      end
      result << res
      text_array.delete(res)  
  end
  print result
  print "\n\nGame Ended!!"
end
text_input = "acs ear nodejs religion acs zebra store"
p play(text_input)




s ="string"



p ["s",2,3].find { |e| s[0]==e}





5.def change_for (num)
    hash={}
    if num >= 25
        hash[:quarters]=num/25
        num = num%25
    end
    if num>= 10
        hash[:dimes]=num/10
        num = num%10
    end
    if num>= 5
        hash[:nickles]=num/5
        num = num%5
    end
    if num>=1
        hash[:pennies] = num
    end
    return hash
end
p change_for(120)


#2.
def merge_sort(unsorted_array) 
  
  if unsorted_array.length <=1 
      return unsorted_array
  else 
      
      mid = unsorted_array.length/2
      first_half = merge_sort(unsorted_array.slice(0...mid))
      second_half = merge_sort(unsorted_array.slice(mid...unsorted_array.length))
      merge(first_half, second_half)
  end 
end

def merge(left_array, right_array)
  sorted_array = []
  
  while !left_array.empty? && !right_array.empty? do
    
      if left_array[0] < right_array[0]
          sorted_array.push(left_array.shift)
      else   
          sorted_array.push(right_array.shift)
      end
  end 
  
  return sorted_array.concat(left_array).concat(right_array)
end
p merge_sort([4, 1, 5, 2, 33, 312]) 

#6
class Student
def initialize(name, roll, city, age)
@name= name
@rollno= roll
@city= city
@age= age
end
def method_missing(m,*args,&block)
  if m.to_s == "name_rollno"
    p  "Student name is #{@name} and rollno is #{@rollno}"
  elsif m.to_s == "city_age"
    p  "Student city is #{@city} and age is #{@age}"
  else
    p  "Student does not have a hobby. Student age is #{@age}"
  end
end
end
s1 = Student.new("test", 20, "hyderabad", 23)
s1.name_rollno_age
s1.age
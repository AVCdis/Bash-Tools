#This function takes an integer n as input and returns a list of strings. For numbers divisible by both 3 and 5, it appends "FizzBuzz". For numbers divisible by 3, it appends "Fizz"
#For numbers divisible by 5, it appends "Buzz". Otherwise, it appends the number as a string

fizzBuzz() {
  for ((i = 1; i <= 100; i++)); do
    if ((i % 15 == 0)); then
      echo "FizzBuzz"
    elif ((i % 3 == 0)); then
      echo "Fizz"
    elif ((i % 5 == 0)); then
      echo "Buzz"
    else
      echo "$i"
    fi
  done
}

fizzBuzz

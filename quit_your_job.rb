



# Page 68 - Should you quit your job?

# Hours per day the song 
# "Take This Job and Shove It" plays in your head
H = 1

# Your age
A = 24

# How good is your current job? 
# (1-10 with 10 being "ambassador to Italy")
G = 7

# How many kids do you have?
K = 0

# Your chances of quickly finding another job 
# (1-10 with 10 being "already signed a new contract")
P = 9

# Your level of financial commitment 
# (1-10 with 10 being "mortgaged into the next milennium")
F = 2

# Monthly salary you could expect to recieve at a new job
Sn = 7500

# Monthly salary at current job
Sc = 6333

def quit?
  a = (6*H**3)/(A*G*(K+1)**2)
  b1 = (20*P)/(A*G*(K+1))
  b2 = (((F+1)**2)+(20*(((F*Sn)/Sc)-F)))
  a + (b1 * b2)
end

if quit? > 1
  puts "Yeah you should quit"
else
  puts "No you should keep your job"
end

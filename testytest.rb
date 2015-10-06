master = 'master'
git_branch = 'git branch'
pwd = 'pwd'
git_remote = 'git remote -v'
git_remote_add = 'git remote add origingit@github.com:zachalewel/githug.git'
git_remote_add = 'git remote add upstream git@github.com:Gazler/githug.git'

puts "To do any homework assignment think about the following:\n"

print "What directory am I in?\n"
directory = gets.chomp

print "What command do I use to find that out?\n"
pwd = gets.chomp

if pwd == 'pwd'
  print "Yes pwd will print the working directory.\n"
end

if pwd != 'pwd'
  puts "Not quite the correct answer, please try again\n"
  print "\nWhat command do I use to find that out?\n"
  pwd = gets.chomp
end

print "What branch am I on?\n "
branch = gets.chomp

if branch.length == 27 #123456789_Chapter_1_master
  puts "Correct, I am on  #{branch} branch which is also seems to be formatted correctly\n"
end

if branch.length == 26 #123456789_Chapter1_master
  puts "Correct, I am on #{branch} branch which is also seems to be formatted correctly\n"
end

if branch.length == 28 #123456789_Chapter_12_master
  puts "Correct I am on #{branch} branch which is also seems to be formatted correctly\n"
end

if branch.length == 22 #123456789_intro_master
  puts "Correct I am on #{branch} branch which is also seems to be formatted correctly\n"
end

if branch.length == 6 #master
  puts "What am I doing on #{branch}? Homework is done on with the format xxxxxx_yyyyy_zzzzzz\n"
end

print "\nWhat command do I use to see what branch I'm on? \n"
git_branch = gets.chomp

if git_branch then
  puts "Yes running git branch will list my branches. \n"
end

print "Where is #{branch} branched from? \n"
branched_from = gets.chomp

if master then
  puts " Yes this branch #{branch} is branched off of master \n"
end

print "Now lets take a look at our remotes, How would I do that?\n"
git_remote = gets.chomp

if git_remote
  puts "This is indeed how I display what remote I have set up.\n"
end

print "\n If for some reason I didn't have any remotes set up, How would I go about setting them up?\n
Assuming the ssh url (something we forked) was git@github.com:Gazler/githug.git\n
And the ssh url from something we cloned was git@github.com:zachalewel/githug.git\n"
git_remote_add = gets.chomp

if git_remote_add
  print "\nYep"
end

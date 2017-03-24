#!/usr/bin/env ruby
# part_template.rb: a script that creates all the needed part
# files in a directory based on a user supplied 'template.tmp'

#   Read in template file: template.tmp
template = File.read("template.tmp")
#puts template

#   Ask for names of files.
puts "What is the name of the part? (filename_prefix)"
filename_prefix = gets.chomp.to_s
#puts filename_prefix
#   Ask for number of files.
puts "How many parts do you need? (file_count)"
file_count = gets.chomp.to_i

#  Hash to translate numbers into words
numbers_to_words = { 
	"1" =>	"One",
	"2" =>	"Two",
	"3" =>	"Three",
	"4" =>	"Four",
	"5" =>	"Five",
	"6" =>	"Six",
	"7" =>	"Seven",
	"8" =>	"Eight",
	"9" =>	"Nine",
	"10" =>	"Ten",
	"11" => "Eleven",
	"12" =>	"Twelve",
	"13" => "Thirteen",
	"14" => "Fourteen",
	"15" => "Fifteen",
	"16" => "Sixteen",
	"17" => "Seventeen",
	"18" => "Eighteen",
	"19" => "Nineteen",
	"20" => "Twenty"
}
#puts numbers_to_words[file_count.to_s]

#   TODO: Write files and substitute number.
i = 1
while i++ < file_count
	file_name = filename_prefix + "_" + i.to_s
#   TODO: comments/guidlines for use.
#   TODO: also spit out files for review. 
#   		Q: does ruby have a pager?
#   		Q: can I use `less` while the script is still running?
#   TODO: delete template.tmp if all is well
#
#   Possible Features:
#   non-interactive mode
#   rescue missing template.tmp
#   possibly allow user to 
#   create based on directory name instead of input

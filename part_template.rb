#!/usr/bin/env ruby
#  part_template.rb: a script that creates all the needed part
#  files in a directory based on a user supplied 'template.tmp'

#  Guidelines for template.tmp
template_guidelines = "---GUIDELINES FOR TEMPLATE.TMP---
It must be named template.tmp
It should include everything common to all movements: 
version, language, includes, etc.
Variables containing music should be in the form:
[piece]partNUMMov or [piece]partMNUM.
'NUM' will be replaced by the word for the movement number.\n\n"

#  Check for template.tmp. 
#  If it's not there, show guidelines for creating it and exit.
unless File.exist?("template.tmp") 
	puts "\nCannot find template.tmp"
	puts "Please create one according to these guidelines and run again\n\n"
	puts template_guidelines
	exit
end

#   Read in template file: template.tmp
template = File.read("template.tmp")

#   Ask for names of files.
puts "What is the name of the part? (filename_prefix)"
filename_prefix = gets.chomp.to_s

#   Ask for number of files.
puts "How many parts do you need? (file_count)"
file_count = gets.chomp.to_i

#  Method to translate numbers into words
def number_to_ord(i)
	nums_hash = { 
		"1" =>	"First",
		"2" =>	"Second",
		"3" =>	"Third",
		"4" =>	"Fourth",
		"5" =>	"Fifth",
		"6" =>	"Sixth",
		"7" =>	"Seventh",
		"8" =>	"Eighth",
		"9" =>	"Ninth",
		"10" =>	"Tenth",
		"11" => "Eleventh",
		"12" =>	"Twelfth",
		"13" => "Thirteenth",
		"14" => "Fourteenth",
		"15" => "Fifteenth",
		"16" => "Sixteenth",
		"17" => "Seventeenth",
		"18" => "Eighteenth",
		"19" => "Nineteenth",
		"20" => "Twentieth"
	}
	nums_hash[i.to_s]
end

#  Write files and substitute number.
i = 1
while i <= file_count do
	this_template = template.gsub(/NUM/, number_to_ord(i))
	file_name = filename_prefix + "_" + i.to_s + ".ily"
	new_part = File.new(file_name, "w")
	new_part.puts this_template
	puts new_part
	new_part.close
	i+=1
end
	
#   TODO: also spit out files for review. 
#   		Q: does ruby have a pager?
#   		Q: can I use `less` while the script is still running?
#   TODO: delete template.tmp if all is well
#
#
#  GUIDELINES FOR TEMPLATE.TMP
#	Should include everything common to all movements:
#	version, language, includes, etc.
#	vairables containing music should be in the form:
#	[piece]partNUMMov or [piece]partMNUM.
#	'NUM' will be replaced by the word for the movement number.
#
#
#
#   Possible Features:
#   non-interactive mode
#   rescue missing template.tmp
#   possibly allow user to 
#   create based on directory name instead of input

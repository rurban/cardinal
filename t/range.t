require 'Test'
include Test
plan 9

discrete = 1..4
todo ".class of Range is not Range.", "10"
is discrete.class.to_s, 'Range', 'simple discrete Range creation'

r = 5..6
proclaim r.include?(5), '.include? for Range'
nok r.include?(100), '.include? for Range'
proclaim r.member?(6), '.member? for Range'

skip("Parens around a range are unparseable.", "15")
#arr = (7..9).to_a
#is arr, [7, 8, 9], 'to_a for Range'

skip("Parens around a range are unparseable.","15",3)
#prev = 1
#(2...4).each do |cur|
#   if(cur == (prev + 1))
#    	pass 'range .each' 
#   end
#   prev = cur
#end

skip("Something else broken with parsing here, too.", "15")
#find_me = 1337
#rule = case find_me
#	when 0..400
#		'1st rule'
#	when 401..800
#		'2nd rule'
#	when 801..1200
#		'3rd rule'
#	when 1201..1600
#		'THE Cardinal rule'
#	when 1601..2000
#		'THE Golden rule'
#	else
#		'default rule'
#	end
#is rule, 'THE Cardinal rule', 'case when and range'

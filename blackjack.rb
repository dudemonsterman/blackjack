def dealer2
	if $dfinal < 15
		dcards3 = $deck.pop()
		dcards3 = $face.values_at(dcards3).to_s
		$dfinal = $final + dcards3.to_i
		dealer2
	elsif $dfinal > $final and $dfinal <= 21
		puts 'Dealer wins1'
		puts $dfinal
		exit
	elsif $dfinal < $final and $final <= 21
		puts 'You win'
		puts $final
		exit
	elsif $dfinal > 21 and $final <= 21
		puts 'Dealer busts'
		puts 'You win'
		exit
	else 
		puts 'Dealer wins2'
		puts $dfinal
		exit
	end
end
def dealer
	dcards = $deck.pop()
	dcards = $face.values_at(dcards).to_s
	dcards2 = $deck.pop()
	dcards2 = $face.values_at(dcards2).to_s

	$dfinal = dcards.to_i + dcards2.to_i

	puts dcards
	puts dcards2
	puts $dfinal
	dealer2
end
def options
	if $final > 21
		puts 'you bust'
		dealer
	end
	puts 'hit or stand:	'
	input = gets.strip
	if input == 'stand'
		puts 'dealers turn'
		dealer
	elsif input.eql? 'hit'
		cards3 = $deck.pop()
		puts cards3
		cards3 = $face.values_at(cards3).to_s
		$final = $final + cards3.to_i
		puts $final
		options
	end
end

$deck = [2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,'j','j','j','j','q','q','q','q','k','k','k','k','a','a','a','a']

$deck.shuffle!

$face = {'j'=>10, 'q'=>10, 'k'=>10, 'a'=>11, 2=>2, 3=>3, 4=>4, 5=>5, 6=>6, 7=>7, 8=>8, 9=>9, 10=>10}

$cards = $deck.pop()
puts $cards
$cards = $face.values_at($cards).to_s

$cards2 = $deck.pop()
puts $cards2
$cards2 = $face.values_at($cards2).to_s

$final = $cards.to_i + $cards2.to_i
puts $final
options

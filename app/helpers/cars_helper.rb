module CarsHelper

	def options_helper(group,atty,class_name)
		ary = []
		group.where('arrived IS NULL OR arrived = (?)', false).each do |opt|
				ary << [opt.send(atty), opt.send(atty), {class: class_name}]
		end
		options_for_select(ary.uniq)
	end
end


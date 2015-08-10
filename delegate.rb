module Delegate
	def method_missing(method, *args, &block)
		if @delegete.respond_to? method then @delegete.public_send method, *args, &block
		else super end
	end
	def delegate(object)
		@delegete = object
	end
end
			
		

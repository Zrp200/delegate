module Delegate
	def method_missing(method, *args, &block)
		if @delegete.respond_to? method
			@delegete.public_send(method, *args, &block)
		else 
			super
		end
	end
	def respond_to?(method)
		@delegete.respond_to?(method) || super
	end
	private
	def delegate(object)
		@delegete = object
	end
end
			
		

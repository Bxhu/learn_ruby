class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
  	self.seconds = 0
  end

  def time_string
  	hour = self.seconds/3600
  	minute = (self.seconds - hour*3600)/60
  	second = (self.seconds - hour*3600) - minute*60

  	result = ""
  	if hour < 10
  		result += "0" + hour.to_s
  	else
  		result += hour.to_s
  	end
  	result += ":"
  	if minute < 10
  		result += "0" + minute.to_s
  	else
  		result += minute.to_s
  	end
  	result += ":"
  	if second < 10
  		result += "0" + second.to_s
  	else
  		result += second.to_s
  	end
  	return result
  end

end

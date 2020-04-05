class Job
  @@all = []

  def initialize

  Job.all << self
  end

  def self.all 
    @@all
  end
end


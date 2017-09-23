class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @quota = 50.0
    @earnings = 0.0
  end
  def name
    @name
  end
  def experience
    @experience
  end
  def earnings
    @earnings
  end

  def quota
    @quota += @experience/2
  end
  def deliver(start_address, end_address)

    @papers_delivered = end_address - start_address
    @experience += @papers_delivered
    @earnings += @papers_delivered*0.25
    if @papers_delivered > @quota
      @earnings += (@papers_delivered - @quota)*0.25
    elsif @papers_delivered < @quota
      @earnings -= 2.0
    end
    quota
  end
  def report
    "Experience: #{@experience}\nQuota: #{@quota}\nEarnings: #{@earnings}"
  end


end

ari = Paperboy.new("ari")

papers = gets.chomp.to_i
ari.deliver(0, papers)
puts ari.report

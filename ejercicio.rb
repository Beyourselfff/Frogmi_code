class Store
    attr_reader :incidents
  
    def initialize
      @incidents = []
    end
  
    def incident_status(start_date, end_date)
  
      open_incidents = @incidents.select { |incident| incident.open? && start_date <= incident.created_at && incident.created_at <= end_date}
      solved_incidents = @incidents.select { |incident| incident.solved? && start_date <= incident.solved_at && incident.solved_at <= end_date}
      average_time = (solved_incidents.size / (date.parse(end_date) - date.parse(start_date)))
      max_date = solved_incidents.max
  
      {open_incidents: open_incidents, solved_incidents: solved_incidents, average_time: average_time, max_time: max_time}
    end
nd
  
class Incident
    attr_reader :description, :status, :created_at, :solved_at
  
    def initialize(description)
      @description = description
      @status = 'open'
      @created_at = Time.now
      @solved_at = nil
    end
  
    def open?
      return @status == 'open'
    end
  
    def solved?
      return @solved == 'solved'
    end
  
    def solve!(solved_date = Time.now)
      @status = 'solved'
      @solved_at = solved_date
    end
end
  
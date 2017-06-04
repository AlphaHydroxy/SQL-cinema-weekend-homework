require_relative( '../db/sql_runner' )

class Ticket
  attr_reader :id
  attr_accessor :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
  end

  def save()
    sql = "INSERT INTO tickets (customer_id, film_id) VALUES ('#{ @customer_id }', '#{ @film_id }') RETURNING *;"
    visit = SqlRunner.run( sql ).first
    @id = visit['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM tickets;"
    tickets = SqlRunner.run(sql)
    return tickets.map { |ticket| Ticket.new( ticket ) }
  end

  def self.delete_all() 
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end

  def details()
    sql = "select customers.name, films.title  
    from tickets inner join customers ON tickets.customer_id = customers.id inner join films ON tickets.film_id = films.id;"
    tickets = SqlRunner.run()
    return tickets.map {|ticket| Ticket.new(ticket)}
  end

end
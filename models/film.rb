require_relative( '../db/sql_runner' )

class Film
  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price'].to_i
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{price}) RETURNING *;"
    film = SqlRunner.run(sql).first
    @id = film['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM films"
    films = SqlRunner.run(sql)
    return films.map { |film| Film.new(film)}
  end

  def self.delete_all()
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

  def films()
    sql = "SELECT customers.name FROM customers INNER JOIN tickets ON customers.id = tickets.customer_id WHERE film_id = #{@id};"
    customers = SqlRunner.run(sql)
    return customers.map {|customer| customer['name']}
  end

  def how_many_tickets_from_one_customer()
    sql = "SELECT COUNT(*) FROM tickets where customer_id = #{@id};"
    SqlRunner.run(sql)
  end

end
require_relative( '../db/sql_runner' )

class Customer
  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds'].to_i
  end

  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{funds}) RETURNING *;"
    customer = SqlRunner.run(sql).first
    @id = customer['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run(sql)
    return customers.map { |customer| Customer.new(customer)}
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def customers_()
    sql = "SELECT films.title FROM films INNER JOIN tickets ON films.id = tickets.film_id WHERE customer_id = #{@id};"
    results = SqlRunner.run(sql)
    return results.map {|film| film['title']}
  end

  def update()
    sql = "UPDATE customers SET (name, funds) = ('#{@name}', #{@funds}) WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def how_many_customers_to_film()
    sql = "SELECT COUNT (*) FROM tickets where film_id = #{@id};"
    SqlRunner.run(sql)
    return 
  end
end
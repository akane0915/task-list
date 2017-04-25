require('rspec')
require('tasks') #requires lib file that is .rb

describe(Task) do
  before() do
    Task.clear()
  end

  describe('#description') do
    it("lets you give a description") do
      test_task = Task.new('laundry') #doesnt matter english explination
      expect(test_task.description()).to(eq('laundry'))
    end
  end

  describe('.all') do
    it('is empty first') do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it ("adds a task to the array of saved tasks") do
      test_task = Task.new('clean the house')
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it ("empties out all of the saved tasks") do
    Task.new("do the dishes").save()
    Task.clear()
    expect(Task.all()).to(eq([]))
    end
  end
end

#Demo Metaprogramming
#Generating class and object from text file

class FileRecord
	def self.create(filename)
		#get class name
		file_name = File.basename(filename, ".txt")
		new_class_name = file_name.capitalize
		puts "New Class Name " + new_class_name.to_s

		#get field from first row of record
		fields = []
		File.open(filename) do |f|
			fields = f.gets.chomp.split(",")
		end
		puts "fields : "+fields.to_s
		
		#register class name into Ruby runtime
		new_class = Object.const_set(new_class_name, Class.new)
		
		#construct class dynamicaly
		new_class.class_eval do
			#add instance variable,getter,setter
			attr_accessor *fields
			
			#add instance method initialize into Person class
			#identicaly to manual hand code the folowing:
			#class Person
			#  def initialize(*arg)
			#    puts "instantiate "+self.class.name.to_s
			#    @name = args[0]
			#    @age = args[1]
			#  end
			#end
			define_method(:initialize) do |*args|
				puts "instantiate "+self.class.name.to_s
				
				#set whatever argument given in constructor in instance variable
				#ex: @birthdate = arg[0]
				fields.each_with_index do |field, i|
					puts " setting variable : @"+field +" with value : "+args[i].to_s
					instance_variable_set("@"+field, args[i])
				end
			end
			
			define_method(:to_s) do
				output = self.class.name.to_s
				fields.each { |field|
					output << "#{field}=#{self.send(field)}"
					#output <<":"
					#output << field
					#output << "="
					#output << self.send(field)
				}
				output
			end
		end	
				
		#add class/static method into new class
		#identical to :
		# Person.get_instance
		#end
		def new_class.get_records
			alldata = []
			File.open(self.to_s.downcase+".txt") do |f|
				#discard first line, since it contain field definition
				f.gets
				while (line = f.gets)
					values = line.chomp.split(",")
					alldata << self.new(*values)
				end
			end
			alldata
		end
				
		new_class
	end	
end

#p = FileRecord.create("person.txt").new("wayan", 18, "Desa")
#puts p.age

#p = FileRecord.create("person.txt").new("endy", 17, "menara dea")
#puts p.age

#x = FileRecord.create.new
#puts "Display All Content from person.txt"
#all_person = FileRecord.create("person.txt").get_records
#all_person.each do |p|
#	puts p
#end

puts "Display All Content from produk.txt"
semua = FileRecord.create("produk.txt").get_records
semua.each do |p|
	puts "Nama class : #{p.class}"
	puts "Produk #{p.kode} - #{p.nama} : Rp. #{p.harga}"
end


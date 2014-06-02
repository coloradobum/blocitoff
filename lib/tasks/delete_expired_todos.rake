task :greet do
  puts 'hello'
end

task :ask => :greet do
  puts "How are you?"
end


namespace :todo do
  desc "Delete all expired Todos."
  task :delete_expired => :environment do
    puts "#{Todo.expired.count} todos deleted."    
   Todo.expired.each do |todo|
     todo.destroy
   end 
  end
end

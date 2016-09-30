class Alavetelitheme < Rails::Railtie
  initializer "alavetelitheme.configure_rails_initialization" do |app|
    puts "Alavetelitheme<Railtie|#{app}"
  end
end

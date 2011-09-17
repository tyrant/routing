require 'nokogiri'
require 'net/http'
require 'uri'

# This Rake task scrapes the Tranz Metro web pages displaying the Wellington region's train timetables.
# From each of the timetable pages:
#  - update the list of stops, creating new ones if necessary;
#  - update the list of jumps between each stop, collecting: start time, start day, end time, end day,
#  - starting station, halt-at-start boolean, ending station, halt-at-end boolean.  
task :tranzmetro => :environment do
  
  url_base = 'http://www.tranzmetro.co.nz/Timetable.aspx'
  line_ids = [1, 2, 3, 4, 5]
  direction_ids = [0, 1]
  
  line_ids.each do |line_id|
    direction_ids.each do |direction_id|
    
      url = URI.parse("#{url_base}?LineID=#{line_id}&DirectionID=#{direction_id}")
      request = Net::HTTP::Get.new(url.path)
      puts request.to_a
      response = Net::HTTP.start(url.host, url.port) do |http|
        http.request(request)
      end
      
      doc = Nokogiri::HTML(response.body)
      #puts doc
      doc.css('form').each do |node|
        #puts node
      end
    end
  end
end

task :test_http do
  url = URI.parse('http://www.tranzmetro.co.nz/')
  request = Net::HTTP::Get.new(url.path)
  response = Net::HTTP.start(url.host, url.port) do |http|
    http.request(request)
  end
  puts response.body
end

require 'rubygems'
require 'scrubyt'

google_data = Scrubyt::Extractor.define do
  fetch 'http://www.google.com/ncr'
  fill_textfield 'grey', 'ruby'
  submit

  result 'Ruby Programming Language'
end

google_data.to_xml.write($stdout, 1)
Scrubyt::ResultDumper.print_statistics(google_data)

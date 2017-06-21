require "json"
require "nokogiri"
require "csv"
require "axlsx"

def slasher fname
  slash_articles =[]
  File.open fname, 'r' do |f|
    doc = Nokogiri::XML(f)
    slash_articles = doc.css('item').map do |i|
       {
         title: i.at_css('title').content,
         link: i.at_css('link').content,
         summary: i.at_css('description').content
       }
    end
  end

  slash_articles
end


def jason filename
  feedzilla_articles =[]
  File.open(filename, "r") do |f|
    items = JSON.parse(f.read)
    feedzilla_articles= items['articles'].map do |a|
      {
        title: a['title'],
        link: a['url'],
        summary: a['summary']
      }
    end
  end
  feedzilla_articles
end


w = ( jason "feedzilla.json") + (slasher "slashdot.xml")

puts w

w = w.sort_by {|a| a[:title]}

puts w

CSV.open("article.csv", "wb") do |csv|
  w.each { |a| csv << [ a[:title], a[:link], a[:summary] ]  }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
 w.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
end
pkg.serialize("articles.xlsx")

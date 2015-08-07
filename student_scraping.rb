require 'nokogiri'
require 'open-uri'

html = open("http://web0715.students.flatironschool.com/")

doc = Nokogiri::HTML(html)

students = doc.search("div.big-comment h3 a")



url = students.collect { |student| student.values }
# student[i].values
# doc.search("div.big-comment h3 a href").values
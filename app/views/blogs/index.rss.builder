xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do
  xml.channel do
    xml.title "RSS Blog App"
    xml.description "RSS blog description"
    xml.link blogs_url

    @blogs.each do |blog|
      xml.item do
        xml.title blog.title
        xml.description blog.description
      end
    end
  end
end
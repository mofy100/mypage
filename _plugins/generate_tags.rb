# _plugins/generate_tags.rb
module Jekyll
  class TagPage < Page
    def initialize(site, base, tag)
      @site = site
      @base = base
      @dir  = "tag/#{tag}"
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag.html')
      self.data['tag'] = tag
      self.data['title'] = "タグ: #{tag}"
      self.data['pagination'] = {
        'enabled' => true,
        'tag' => tag
      }

    end
  end

  class TagGenerator < Generator
    safe true

    def generate(site)
      site.tags.each_key do |tag|
        site.pages << TagPage.new(site, site.source, tag)
      end
    end
  end
end
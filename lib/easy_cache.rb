require 'gemmy'

module EasyCache
  def cache(db_name)
    @cache = EasyCache.cache db_name
    
  end
  def self.cache(db_name)
    Gemmy.component("cache").new db_name
  end
  refine Hash do
    include EasyCache
  end
end

Gem.find_files("easy_cache/**/*.rb").each &method(:require)

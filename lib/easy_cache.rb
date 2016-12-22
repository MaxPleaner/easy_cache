require 'gemmy'

class EasyCache

  module HashPatch
    def cache(db_name)
      EasyCacheModule.cache self, db_name
    end

    def self.cache(hash, db_name)
      Gemmy.component("cache").new db_name
    end

    refine Hash do
      include HashPatch
    end
  end
  
  def self.new(hash={}, db_name)
    HashPatch.cache hash, db_name
  end

end

Gem.find_files("easy_cache/**/*.rb").each &method(:require)

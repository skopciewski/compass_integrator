# fix bug with Gem.datadir
# see: https://github.com/rubygems/rubygems/issues/1673

if Gem.rubygems_version.to_s == "2.5.1"
  class Gem::BasicSpecification
    undef :datadir if method_defined?(:datadir)
    def datadir
      File.join full_gem_path, "data", name
    end
  end
end

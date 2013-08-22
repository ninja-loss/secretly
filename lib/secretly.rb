require "secretly/version"

module Secretly

  def self.fetch( where, lookup )
    send "fetch_from_#{where}", lookup
  end

  def self.fetch_from_file( filepath )
    filepath = File.expand_path( filepath )
    raise "Secret file '#{filepath} does not exist" unless File.exists?( filepath )
    File.read( filepath ).strip
  end

end

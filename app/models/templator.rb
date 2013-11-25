module Templator

  #def apply(template_name,data_map)
  #  template = File.read("#{Rails.root.to_s}/app/templates/#{template_name}.html.erb")
  #  rhtml = ERB.new(template)
  #  @data_map = data_map
  #  rhtml.result(binding)
  #end

  class Namespace
    def initialize(hash)
      hash.each do |key, value|
        singleton_class.send(:define_method, key) { value }
      end
    end

    def get_binding
      binding
    end
  end

  def apply(template_name,data_map)
    template = File.read("#{Rails.root.to_s}/app/views/#{template_name}.html.erb")
    ns = Namespace.new(data_map)
    ERB.new(template).result(ns.get_binding)
  end

end
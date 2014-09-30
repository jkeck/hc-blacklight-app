class DemoModel < SolrDocument
  include ActiveModel
  def self.to_partial_path
    'demo/demo'
  end
end

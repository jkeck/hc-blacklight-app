namespace :"bl-demo" do
  namespace :solr do
    desc "Index fixtures (will start and stop solr)"
    task :"index-fixtures" do
      Jettywrapper.wrap(Jettywrapper.load_config) do
        Rake::Task["bl-demo:index-fixtures"].invoke
      end
    end
  end
  desc "Index fixtures (you must have solr started already)"
  task :"index-fixtures" do
    solr = Blacklight.solr
    solr.add(
      Dir["#{Rails.root}/spec/fixtures/solr_documents/*.yml"].map do |file|
        YAML.load(File.read(file))
      end
    )
    solr.commit
  end
end

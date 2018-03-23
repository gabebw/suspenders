RSpec::Matchers.define :contain_json do |sub_json|
  match do |filename|
    filepath = File.join(project_path, filename)
    json = JSON.parse(filepath, symbolize_names: true)
    sub_json < json
  end
end

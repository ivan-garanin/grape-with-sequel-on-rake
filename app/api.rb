class API < Grape::API
  format :json

  add_swagger_documentation :format => :json,
                            :hide_documentation_path => true,
                            :mount_path => 'swagger_doc'
end

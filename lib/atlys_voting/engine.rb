module AtlysVoting
  class Engine < ::Rails::Engine
    isolate_namespace AtlysVoting

    initializer "atlys_voting", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount AtlysVoting::Engine, at: "/voting"
      end
    end

  end
end

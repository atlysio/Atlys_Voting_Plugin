module AtlysVoting
  class Engine < ::Rails::Engine
    isolate_namespace AtlysVoting

    initializer "atlys_voting", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount AtlysVoting::Engine, at: "/"
      end
    end

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

  end
end

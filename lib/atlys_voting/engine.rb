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
        app.config.paths["db/migrate"] += config.paths["db/migrate"].expanded
      end
    end

  end
end

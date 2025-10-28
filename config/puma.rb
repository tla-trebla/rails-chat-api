threads_count = ENV.fetch("RAILS_MAX_THREADS", 5)
threads threads_count, threads_count

workers ENV.fetch("WEB_CONCURRENCY") { 2 }
preload_app!

port ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "production" }

plugin :tmp_restart
require 'rubocop/rake_task'
require 'haml_lint/rake_task'

HamlLint::RakeTask.new

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['--display-cop-names']
end

desc 'Run Brakeman and exit with non-zero exit status'
task :brakeman, :output_files do |_t, args|
  require 'brakeman'
  files = args[:output_files].split(' ') if args[:output_files]
  tracker = Brakeman.run(
    app_path: '.',
    output_files: files,
    print_report: true,
    table_width: 2000
  )
  tracker.errors.any? && abort('Found errors!')
end

task :rails_best_practices do
  sh 'rails_best_practices --spec .'
end

task ruby: %i[rubocop haml_lint]
task rails: %i[ruby brakeman rails_best_practices]
task default: [:ruby]

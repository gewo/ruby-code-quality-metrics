require 'rubocop/rake_task'

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

task rails: [:rubocop, :brakeman]
task default: [:rubocop]

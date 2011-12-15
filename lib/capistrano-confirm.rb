def colorful(str, code="31")
  "\e[#{code}m#{str.upcase}\e[0m"
end

Capistrano::Configuration.instance.load do
  namespace :deploy do
    task :confirm do
      first_num, sencond_num = rand(10), rand(10)

      result      = first_num + sencond_num
      stage_info  = " #{colorful(stage)}" rescue ''
      branch_info = " with branch #{colorful(branch)}" rescue ''

      Capistrano::CLI.ui.say %Q(
#{colorful("="*80, 33)}

You are deploying#{stage_info}#{branch_info}, Are you sure?
Please make sure you did #{colorful("code review")}, and are not deploying the #{colorful("wrong branch")},
Answer the bellow question to make sure you are not drunk!
  #{first_num} + #{sencond_num} = ?

#{colorful("="*80, 33)}
)

      answer = Capistrano::CLI.ui.ask("Your answer here (answer `NO` to stop the deploy):").strip
      if (answer =~ /^\s*\d+\s*$/) && (answer.to_i == result)
        Capistrano::CLI.ui.say colorful("Deploying#{"."*71}", 33)
      else
        Capistrano::CLI.ui.say colorful("Stoping#{"."*73}", 33)
        Capistrano::CLI.ui.say colorful("Difficult question for you? Your math must be taught by National Bureau of Statistics!") if (answer =~ /^\s*\d+\s*$/)
        abort
      end
    end

    before "deploy:update_code", "deploy:confirm"
  end
end

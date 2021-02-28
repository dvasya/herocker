module MyApp

using Genie, Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = MyApp))

  Genie.genie(; context = @__MODULE__)

  Base.eval(Main, :(const Genie = MyApp.Genie))
  Base.eval(Main, :(using Genie))
end

end

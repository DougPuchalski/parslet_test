class SimpleTransform < Parslet::Transform
  rule(funcall: 'puts', arglist: sequence(:args)) {
    "puts(#{args.inspect})"
  }
  # ... other rules
end


class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    tree = {funcall: 'puts', arglist: [1,2,3]}
    puts SimpleTransform.new.apply(tree) # => "puts([1, 2, 3])"

    true
  end
end

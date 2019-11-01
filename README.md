# Run DispatchRider::Handlers::Base class as ActiveJob::Base via Sidekiq

This gem aims at killing [DispatchRider](https://github.com/payrollhero/dispatch-rider)

That gem was built as a pub/sub system and use SNS+SQS as it favorite backend for storing queues jobs.
It has a special "Handler" type of object.

Then later was created an [adapter to run any ActiveJob via DispatchRider](https://github.com/payrollhero/activejob-dispatch_rider)

Then it seems there was some [attempt](https://github.com/payrollhero/dispatch_rider-active_job/commit/d595db5cbd0f3eeb1c848713e04996b964e13243) at running those handlers via ActiveJob, but it was never merged into master. And I'm not too sure of the original direction that was aimed to be taken.

This gem aims at implementing DispatchRider::Handlers::Base in a way that you don't need to make any changes to your app, outside of swapping the gems.

remove `dispatch-rider` and `activejob-dispatch_rider`, then add this gem.

All `DispatchRider::Handlers::Base` subclasses should then be run via ActiveJob::Base

I use sidekiq, and going to test only with sidekiq.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dispatch-rider-handler-as-active-job'
```

And then execute:

    $ bundle

## Usage

If you were not using DispatchRider before, you don't need this gem. if you did, it should JustWork(tm)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Running the test suite

The initial version won't have any tests. I'm going to test this live and if nothing runs its broken, if everything runs its fine. if you feel like contributing tests, please open a pull request.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dispatch-rider-handler-as-active-job. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Dispatch::Rider::Handler::As::Active::Job project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/dispatch-rider-handler-as-active-job/blob/master/CODE_OF_CONDUCT.md).

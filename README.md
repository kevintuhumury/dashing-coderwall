# Coderwall widget for Dashing

With the Coderwall widget you can show off your achievements (badges) collected on [Coderwall](http://coderwall.com). Coderwall basically is a website that provides developers and any associated teams the opportunity to specify their skills, experiences and interest. By connecting your Github account to your Coderwall profile, you'll be able to receive badges for certain achievements. A few examples of these achievements (and thus the widget itself) can be seen [below](https://github.com/kevintuhumury/dashing-coderwall#preview).

## Dependencies

The Coderwall widget depends on the [json](https://github.com/flori/json) gem. So, add `json` to the Gemfile of your Dashing dashboard:

```ruby
gem "json"
```

This widget has been [Haml](http://haml.info/)ified (we're using a HAML template in the `/widgets/coderwall` directory instead of an HTML template), so besides the above you'll also need to add `haml` to the Gemfile (if you haven't already):

```ruby
gem "haml"
```

and require it in your `config.ru` file right below the require of dashing itself. So the first few lines of your `config.ru` should look something like the following:

```ruby
require 'dashing'
require 'haml'

configure do
...
```

Now run `bundle install`.

## Usage

To use this widget, copy `coderwall.coffee`, `coderwall.haml` and `coderwall.sass` into the `/widgets/coderwall` directory of your dashboard. Copy the `coderwall.png` image to the `/assets/images` directory and place the `/jobs/coderwall.rb` file in the `/jobs` folder.

To include the widget on your dashboard, add the following snippet to the dashboard layout file:

```ruby
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="coderwall" data-view="Coderwall"></div>
</li>
```
When you're using a Hamlified dashboard layout (hey, you're already using a Hamlified widget, so why not Hamlify your dashboard layout?), you could also do the following:

```ruby
%li(data-row="1" data-col="1" data-sizex="1" data-sizey="1")
  %div(data-id="coderwall" data-view="Coderwall")
```

Now, let's move on to the next section and configure your widget. Once that's done, you should be able to start using it!

## Configuration

To actually show of your achievements, you'll need to enter your Coderwall username in the `jobs/coderwall.rb` file. Simply change the username setting below to your own:

```ruby
# widget configuration

username = "YOUR_USERNAME"
```

That's it!

## Preview

![image](https://f.cloud.github.com/assets/412952/1176864/1a437c98-2173-11e3-942d-f82692059fc3.png)

## Copyright

Copyright 2013 Kevin Tuhumury. Released under the MIT License.

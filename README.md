# VideoBlur

Blur a part of a video using FFmpeg

Input video :

![image](http://i.imgur.com/dUC5I3g.jpg)


Output video :

![image](http://i.imgur.com/O3L9iiP.jpg)


## Requirements :

[FFmpeg](https://www.ffmpeg.org/) must be installed. To ensure it is available, on your command line, run `which ffmpeg`.
This will give you the path where ffmpeg is installed. For example, it might return `/usr/local/bin/ffmpeg`.

Install FFmpeg on OS X : ``` brew install ffmpeg ``` 

Install FFmpeg on Linux : ``` apt-get install ffmpeg ffmpeg ``` 



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'video_blur'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install video_blur


## Usage

Example : Blur the video in.mp4 starting at (x=200, y=160) with blur box size (width=145, height=360)
    
    video_blur in.mp4 -x 200 -y 160 -w 145 -e 360 -o out.mp4


For more information see help :

    Usage: video_blur [options] [input_file]
        -o, --output OUTPUT              Set output directory
        -W, --screen-width WIDTH         Set screen width (default 1440)
        -H, --screen-height HEIGHT       Set screen width (default 1440)
        -x, --box-x X-POSITION           Set box x origin
        -y, --box-y Y-POSITION           Set box y origin
        -w, --box-width WIDTH            Set box width
        -e, --box-height height          Set box width
        -h, --help                       Prints this help


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/video_blur/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

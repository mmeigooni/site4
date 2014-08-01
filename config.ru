use Rack::Static,
  :urls => ["/assets"],
  :root => "public"

map "/" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=3600' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
end

map "/page2" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/page2.html', File::RDONLY)
  ]
}
end

map "/page3" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/page3.html', File::RDONLY)
  ]
}
end
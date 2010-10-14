#!/usr/bin/env ruby
# encoding: utf-8

def change_time time_stamp
  times = time_stamp.split(".")
  "#{times[0]},#{times[1]}00"
end

start_time = "00:00:00,000"
line_index = 0

@time_stamp = ""

if ARGV.size.zero?
  puts "Usage:\nsrt2txt.rb subtitles.srt > transcription_file.txt"
else
  begin
    File.open(ARGV[0]).each_line{ |l|
      srt_part = line_index % 4
      case srt_part
      when 0
        # index, do nothing
      when 1
        # timestamp
        @timestamp = l.split("--> ").last.gsub(/,/,".")[0,10]
      when 2
        # proper subtitle
        puts "#{l.chomp} ##{@timestamp}#"
      when 3
        # empty line, do nothing
      end
  
      line_index += 1
    }
  rescue
    puts "ERROR: file #{ARGV[0]} not found" 
  end
end
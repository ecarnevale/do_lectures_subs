#!/usr/bin/env ruby
# encoding: utf-8

def change_time time_stamp
  times = time_stamp.split(".")
  "#{times[0]},#{times[1]}00"
end

if ARGV.size.zero?
  puts "Usage:\ntxt2srt.rb transcription_file.txt > subtitles.srt"
else
  start_time = "00:00:00,000"
  line_index = 0
  
  begin
    File.open(ARGV[0]).each_line{ |l|
      line_index += 1
      line_elements = l.split("#")
      unless line_elements[1].nil?
        end_time = line_elements[1]
        puts line_index
        puts "#{change_time(start_time)} --> #{change_time(end_time)}"
        puts line_elements[0]
        puts ""
      else
        end_time = line_elements[0]
      end
      start_time = end_time
    }
  rescue
    puts "ERROR: file #{ARGV[0]} not found"
  end
end
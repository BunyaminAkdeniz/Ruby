# frozen_string_literal: true

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    a = @line.chomp.match(/\[.*\]:/).to_s
    a = @line.chomp.delete(@line.match(/\[.*\]:/).to_s)
    p a
    a.gsub(/\\./, '').gsub(/\A\s/,'')
    p b
  end

  def log_level
    @line.match(/\[.*\]/).to_s.delete('[]').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

p LogLineParser.new('[INFO]: File moved').message
# coding: utf-8
require 'optparse'
Options = Struct.new(:name)
class Parser
  def self.parse(options)
    args = Options.new("world")

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: example.rb [options]"

      opts.on("-n Name", "--name=Name", "Name to say hello to") do |n|
        args.name = n
      end

      opts.on("-h", "--help", "Print this help") do
        puts opts
#        exit # 会让程序直接退出执行
      end
    end

    opt_parser.parse!(options)
    return args
  end
end

arg_one = Parser.parse(%w[--help])
puts arg_one

arg_two  = Parser.parse(%w[--name=jay])
puts arg_two

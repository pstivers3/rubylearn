  class File
    def self.my_open(*args)
      result = file = File.new(*args)
      # If there's a block, pass in the file and close
      # the file when it returns
      if block_given?
        result = yield file
        file.close
      end

      return result
    end
  end

  File.my_open("testfile", "r") do |file|
    while line = file.gets
      puts line
    end
  end


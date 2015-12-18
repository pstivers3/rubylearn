#!/usr/bin/env ruby

class ProcTest
  def pass_in_proc(&block)
    @stored_proc = block
  end
  def use_proc(param1,param2)
    @stored_proc.call(param1,param2)
  end
end

pt = ProcTest.new
pt.pass_in_proc {|x,y| puts x+y}
pt.use_proc(2,3)

#!/usr/bin/env ruby

# file: shutter3_morsecode.rb


require 'morsecode'
require 'shutter3_sps'


class Shutter3MorseCode < Shutter3Sps

  def initialize(bdid, topic: 'shutter3', sps_address: nil, 
       sps_port: 59000, debug: false)

    super(bdid, sps_address: sps_address, sps_port: sps_port)
    @mc = ''
    @t = Time.now
    @debug = debug

  end

  def on_android_keypress()

  end

  def on_android_keydown()
    @t = Time.now
    puts '@t: ' + @t.inspect if @debug
  end

  def on_android_keyup()
    keyup(1)
    puts '@t2: ' + (Time.now - @t).inspect if @debug
  end

  def on_connect()
    super()
  end

  def on_disconnect()
    super()
  end

  def on_ios_keypress()

  end

  def on_ios_keydown()
    @t = Time.now
    puts '@t: ' + @t.inspect if @debug
  end

  def on_ios_keyup()
    keyup(2)
    puts '@t2: ' + (Time.now - @t).inspect if @debug
  end

  private

  def keyup(key)

    if @t + 0.5 > Time.now then
      @mc += key.to_s
    else
      if Time.now > @t + 1.2 then
        notify MorseCode.new(@mc).to_s
        @mc = ''
      elsif @mc[-1] == '4'
        @mc[-1] = '5'
      elsif @mc[-1] == '5'
        notify MorseCode.new(@mc).to_s
        @mc = ''
      else
        @mc += '4'
      end
    end

    puts '@mc: '  + @mc.inspect if @debug

  end

end


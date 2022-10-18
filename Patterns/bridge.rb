class Remote
  @device = nil
  def initialize(device)
    @device = device
  end

  def toggle_power
    puts 'SIMPLE REMOTE: toggle power logic...'
    if @device.is_enabled
      @device.disable
    else
      @device.enable
    end
  end

  def set_volume
    if @device.is_enabled
      @device.disable
    else
      @device.enable
    end
  end
end

class AdvancedRemote < Remote
  def mute
    puts 'SIMPLE REMOTE: mute logic...'
    @device.set_volume(0)
  end
end

class Device
  def is_enabled
  end
  def enable
  end
  def disable
  end
  def get_volume
  end
  def set_volume(percent)
  end
  def get_channel
  end
  def set_channel(channel)
  end
end

class Television < Device
end

class Radio < Device
end

tv = Television.new
remote = Remote.new(tv)
remote.toggle_power

radio = Radio.new
advanced_remote = AdvancedRemote.new(radio)
advanced_remote.mute
# Using the Shutter3_morsecode gem to publish a message to an SPS broker


    require 'shutter3_morsecode'

    s3s = Shutter3MorseCode.new 'FF:FF:EF:FE:E0:3A', sps_address: '192.168.4.135'
    s3s.start


## Output: 

*MESSAGE: shutter3: ready*

The above output displayed the message *ready* from the morse code I tapped out using the Android button to represent a dash and the iOS button to represent a dot. The send command was initiated by holding down either button for a couple of seconds.

## Resources

* shutter3_morsecode https://rubygems.org/gems/shutter3_morsecode

shutter3 morsecode sps

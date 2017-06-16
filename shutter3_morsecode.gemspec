Gem::Specification.new do |s|
  s.name = 'shutter3_morsecode'
  s.version = '0.1.0'
  s.summary = 'Uses a Shutter3 bluetooth device to publish ' + 
      'SimplePubSub (SPS) messages using morse code.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/shutter3_morsecode.rb']
  s.add_runtime_dependency('shutter3_sps', '~> 0.1', '>=0.1.1')
  s.add_runtime_dependency('morsecode`', '~> 0.2', '>=0.2.1')
  s.signing_key = '../privatekeys/shutter3_morsecode.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/shutter3_morsecode'
end

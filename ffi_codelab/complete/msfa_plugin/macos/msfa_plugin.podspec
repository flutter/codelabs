#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint msfa_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'msfa_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter FFI plugin project.'
  s.description      = <<-DESC
A new Flutter FFI plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  # This will ensure the source files in Classes/ are included in the native
  # builds of apps using this FFI plugin. Podspec does not support relative
  # paths, so Classes contains a forwarder C file that relatively imports
  # `../src/*` so that the C sources can be shared among all target platforms.
  s.source           = { :path => '.' }
  s.source_files     = [
    'Classes/dx7note.cc',
    'Classes/env.cc',
    'Classes/exp2.cc',
    'Classes/fir.cc',
    'Classes/fm_core.cc',
    'Classes/fm_op_kernel.cc',
    'Classes/freqlut.cc',
    'Classes/lfo.cc',
    'Classes/log2.cc',
    'Classes/libmsfa.cc',
    'Classes/patch.cc',
    'Classes/pitchenv.cc',
    'Classes/resofilter.cc',
    'Classes/ringbuffer.cc',
    'Classes/sawtooth.cc',
    'Classes/sin.cc',
    'Classes/synth_unit.cc'   
    ]
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end

{
  'targets': [
    {
      'target_name': 'core',
      'type': 'static_library',
      'sources': [
        'dx7note.cc',
        'env.cc',
        'exp2.cc',
        'fm_core.cc',
        'fm_op_kernel.cc',
        'freqlut.cc',
        'lfo.cc',
        'log2.cc',
        'patch.cc',
        'pitchenv.cc',
        'resofilter.cc',
        'ringbuffer.cc',
        'sawtooth.cc',
        'sin.cc',
        'synth_unit.cc',
        'test_ringbuffer.cc',
      ],
      'include_dirs': ['.'],
    },
    {
      'target_name': 'test_filter',
      'type': 'executable',
      'sources': [
        'test_filter.cc',
        'fir.cc',
      ],
    }
  ],
}


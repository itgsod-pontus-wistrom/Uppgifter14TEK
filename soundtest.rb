require 'wavefile'

OUTPUT_FILENAME = "mysound.wav"
SAMPLE_RATE = 44100
TWO_PI = 2 * Math::PI
RANDOM_GENERATOR = Random.new

def main
  # Read the command-line arguments.
  wave_type = 'sine'.to_sym    # Should be "sine", "square", "saw", "triangle", or "noise"
  frequency = '440.0'.to_f      # 440.0 is the same as middle-A on a piano.
  max_amplitude = '0.7'.to_f  # Should be between 0.0 (silence) and 1.0 (full volume).

  samples = generate_sample_data(wave_type, 44100, frequency, max_amplitude)
  buffer = WaveFile::Buffer.new(samples, WaveFile::Format.new(:mono, :float, 44100))

  WaveFile::Writer.new(OUTPUT_FILENAME, WaveFile::Format.new(:mono, :pcm_16, 44100)) do |writer|
    writer.write(buffer)
  end
end

def generate_sample_data(wave_type, num_samples, frequency, max_amplitude)
  return []
end

main
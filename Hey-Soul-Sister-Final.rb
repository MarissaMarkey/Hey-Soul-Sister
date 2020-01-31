singintro="C:/Users/marissa_markey/Documents/Audacity/heysoulsistersingintro.wav"
introtwo="C:/Users/marissa_markey/Documents/Audacity/introdos.wav"
clap="C:/Users/marissa_markey/Documents/Audacity/clap.wav"
hey="C:/Users/marissa_markey/Documents/Audacity/hey.wav"
beat="C:/Users/marissa_markey/Documents/Audacity/beathey.wav"
singing="C:/Users/marissa_markey/Documents/Audacity/tonight.wav"
ending= "C:/Users/marissa_markey/Documents/Audacity/heysoulsisterending.wav"

sample singintro, amp: 5
sleep 16
live_loop:intro do
  3.times do
    sample introtwo, amp: 5
    sleep 9.7
  end
  stop
end
sleep 9.7
live_loop:clap do
  8.times do
    sample clap, amp: 5, sustain:1.5
    sleep 2.5
  end
  stop
end
sleep 11.5
live_loop:hey do
  1.times do
    sample hey, amp: 5
    sleep 9.7
  end
  stop
end
x=0.5
sleep 8
live_loop:singing do
  sample singing, amp: 1.5
  sleep 20
  stop
end
x=2.5
live_loop:beat do
  6.times do
    sample beat, amp: x
    print sample_duration beat
    x=x-0.5
    sleep 9
  end
  stop
end
sleep 46
sample ending







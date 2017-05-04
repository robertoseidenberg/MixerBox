import MixerBox

extension ViewController {
  
  func updateColorPreview() {
    zoom.backgroundColor = UIColor(hsb: hsbMixer.hsb)
  }
  
  func updateHSBSliders(hsb: HSB, labelsOnly: Bool = false) {
    
    if labelsOnly == false {
      hueSlider.value = 360 * hsb.hue
      saturationSlider.value = 100 * hsb.saturation
      brightnessSlider.value = 100 * hsb.brightness
    }
    
    hueLabel.text = String(Int(hueSlider.value))
    saturationLabel.text = String(Int(saturationSlider.value))
    brightnessLabel.text = String(Int(brightnessSlider.value))
  }
  
  func updateRGBSliders(rgb: RGB, labelsOnly: Bool = false) {
    
    if labelsOnly == false {
      redSlider.value = 255 * rgb.red
      greenSlider.value = 255 * rgb.green
      blueSlider.value = 255 * rgb.blue
    }
    
    redLabel.text = String(Int(redSlider.value))
    greenLabel.text = String(Int(greenSlider.value))
    blueLabel.text = String(Int(blueSlider.value))
  }
}

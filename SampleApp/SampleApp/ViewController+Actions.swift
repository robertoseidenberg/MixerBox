import UIKit
import MixerBox

extension ViewController {
  
  @IBAction func action(sender: UISlider) {
    
    if hsbSliders.contains(sender) {
      
      let hsb = HSB(hue:        hueSlider.value / 360,
                    saturation: saturationSlider.value / 100,
                    brightness: brightnessSlider.value / 100)
      
      hsbMixer.hsb = hsb
      sbMixer.hsb = hsb
      updateHSBSliders(hsb: hsb, labelsOnly: true)
      updateRGBSliders(rgb: hsb.rgb())
    }
    
    if rgbSliders.contains(sender) {
      
      let rgb = RGB(red:   redSlider.value / 255,
                    green: greenSlider.value / 255,
                    blue:  blueSlider.value / 255)
      
      // Prevent resetting if hue value in case
      // RGB goes to pitch black
      var hsb = rgb.hsb()
      if rgb.red == 0 && rgb.green == 0 && rgb.blue == 0 {
        hsb.hue = hueSlider.value / 360
      }
      
      hsbMixer.hsb = hsb
      sbMixer.hsb = hsb
      updateHSBSliders(hsb: hsb)
      updateRGBSliders(rgb: hsb.rgb(), labelsOnly: true)
    }
    
    updateColorPreview()
  }
}

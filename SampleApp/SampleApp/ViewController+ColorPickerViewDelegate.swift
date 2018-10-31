import MixerBox

extension ViewController {
  
  func colorPickerView(_ view: ColorPickerView, didSelectHSB hsb: HSB) {
    
    updateColorPreview()
    updateHSBSliders(hsb: view.hsb)
    updateRGBSliders(rgb: view.hsb.rgb())
    
    if      view == hsbMixer { sbMixer.setHSB(hsb, animated: false) }
    else if view == sbMixer  {hsbMixer.setHSB(hsb, animated: false) }
  }
}

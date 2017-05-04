import UIKit
import MixerBox

class ViewController: UIViewController, ColorPickerViewDelegate {

  @IBOutlet var redSlider: UISlider!
  @IBOutlet var greenSlider: UISlider!
  @IBOutlet var blueSlider: UISlider!
  @IBOutlet var rgbSliders: [UISlider]!

  @IBOutlet var redLabel: UILabel!
  @IBOutlet var greenLabel: UILabel!
  @IBOutlet var blueLabel: UILabel!

  @IBOutlet var hueSlider: UISlider!
  @IBOutlet var saturationSlider: UISlider!
  @IBOutlet var brightnessSlider: UISlider!
  @IBOutlet var hsbSliders: [UISlider]!

  @IBOutlet var hueLabel: UILabel!
  @IBOutlet var saturationLabel: UILabel!
  @IBOutlet var brightnessLabel: UILabel!

  @IBOutlet var zoom: UIView!

  @IBOutlet var hsbMixer: HSBView! { didSet { hsbMixer.delegate = self }}
  @IBOutlet var sbMixer: SBView!   { didSet { sbMixer.delegate = self }}
}

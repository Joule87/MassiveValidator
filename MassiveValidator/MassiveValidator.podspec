Pod::Spec.new do |spec|

  spec.name         = "MassiveValidator"
  spec.version      = "1.0.0"
  spec.summary      = "Short and easy way to validate UITextFiels"
  spec.description  = "It validates UITextFields content like email-address, name, age, password, required fields, etc. Also, you can add and extra behavior in response."
  spec.homepage     = "https://github.com/Joule87/MassiveValidator"
  spec.license      = "MIT"
  spec.author       = { "Julio Collado" => "jcolladopm7@gmail.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/Joule87/MassiveValidator.git", :tag => "1.0.0" }
  spec.source_files = "MassiveValidator/**/*"
  spec.swift_versions = "5.0"

end

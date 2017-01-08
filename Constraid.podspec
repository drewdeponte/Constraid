Pod::Spec.new do |spec|
  spec.name = "Constraid"
  spec.version = "1.0.2"
  spec.summary = "Your friendly NSLayoutConstraint Aid"
  spec.homepage = "https://github.com/uptech/Constraid"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Drew De Ponte" => 'cyphactor@gmail.com' }

  spec.platform = :ios, "9.0"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/uptech/RGB.git", tag: "#{spec.version}" }
  spec.source_files = "Constraid/**/*.{h,swift}"
end

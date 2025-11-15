add_global_arguments('-DGDK_VERSION_MIN_REQUIRED=GDK_VERSION_4_10', language: 'c')
myapp_sources = [
  'main.c',
  'myapp-application.c',
  'myapp-window.c',
]

myapp_deps = [
  dependency('gtk4'),
  dependency('libadwaita-1', version: '>= 1.4'),
  dependency('cairo'),
]

myapp_sources += gnome.compile_resources('myapp-resources',
  'myapp.gresource.xml',
  c_name: 'myapp'
)

executable('Memerist', myapp_sources,
  dependencies: myapp_deps,
       install: true,
)

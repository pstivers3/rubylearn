a = {}

p a[:missing]

# a[:some_key] = :value

p a.fetch(:some_key) { p "this block won't run" }

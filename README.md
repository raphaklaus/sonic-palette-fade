# Sonic Palette Fade Effect

![](sample.gif)

This is a reusable scene aiming to reproduce the fade in and fade out effect present in Sonic 1 and Sonic 2 using shaders.

Essentially what the games do is to fade from zero color to full color, each channel per time. It works like this for fade-ins:

Start the transition of the blue channel to its maximum value. When it's done, do it with the green channel, and once is complete, do the same with red.

The fade-outs are the same, but starting decrementing the value and starting from the red channel and finishing with the blue one.

## Requirements

* Godot 3.2.1 or later

## Usage

1) Add the this scene along with its dependencies (GDScript + Shader code) to the root node of your tree.

1) Setup it by `$Transitions.init(transition_duration_in_seconds)` 

2) Call it wherever you want by `$Transitions.fade_in()` or `$Transitions.fade_out()`


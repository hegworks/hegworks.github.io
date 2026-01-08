---
title: Timeline Animation Editor
date: 2026-01-07 12:00:00 +0100
categories: [ articles ]
tags: [ custom-engine, cpp, imgui, tanim, animation ]
description: Implementing a Timeline Animation Editor for Custom Engines
image:
  path: /assets/img/posts/tanim/placeholder.png
  alt: TODO header
---

![alt text](/assets/img/posts/tanim/placeholder.png)

# Introduction

## Final result

- show demo
- what the tool exactly is (and maybe what it isn't)
- list what the tool can do

## This article

- 2 main parts
  - design & architecture
  - Curves

# Design & Architecture

## Philosophy & Aim

- designing a portable tool that is not intrusive to the engine & does not access the engine directly
- The main calls that the engine has to make

## Storing Animation Data

- Structures needed to hold the animation data:
  - Timeline -> Sequence -> Curve -> Keyframe -> Tangent

## Data separation & reasons

- TimelineData
- ComponentData

## Serialization

- The idea behind it
- The tools involved (visit_struct, magic_enum, nlohmann json)

## Reflection

- Supporting Common Types
- Reflecting User Structs

## Forcing Types

- MetaTypes
- RepresentationTypes

## Different approaches to reusing an animation

- Old uuid way

VS

- New name-based system

# Curves

## Initial approach

- why started with this
- separate smoothstep, linear, constant

## Hermite

- what it is
- why did I decided to switch
- why did I choose hermite

## Bezier

- what it is
- why did I decided to switch (again!)
- continuity

## Bezier vs Hermite

- data representation
- evaluation
- conversion

## Mathematics

### Newton–Raphson method

- where & why we need it

### Tangents, and different presets

- monotonic in time: x (time) doesn't go back / no more than 1 value for any time / no loops in the curve
- the 1/3 rule: derivative of P1 equal to 0 gives t = 1/3, and for P2 gives 2/3. meaning that they have their maximum
  influence in these ts. it makes sure of C2 continuity in piece-wise cubic curves. it is also industry standard.
- AUTO: Fritsch-Carlson monotonic Catmull-Rom
- Linear: control points point toward keyframes
- Flat: control points are horizontal

### How constants are handled

### Finding the extrema

### Challenges of quaternions

evaluation difference
forced type difference
delete/add keyframes difference
spins trick
representation types

# Performance

## stress test results

## the tool vs raw code

# Conclusion

## The future

- what would add-to/fix-in the tool with more time
- separating the curve editor from the animation part

## The tool

- where to get it
- the use documentation
- buas mention

## References

- all/or the most important references

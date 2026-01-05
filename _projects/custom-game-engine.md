---
title: Custom Game Engine
date: 2025-01-05
client: BUas Academic Project
team: Solo Developer
technologies:
  - C++
  - OpenGL
  - EnTT
  - ImGui
image: /assets/images/projects/game-engine.jpg
excerpt: A custom-built game engine featuring ECS architecture, advanced rendering, and comprehensive tooling for game development.
---

## Overview

This is a custom game engine built from scratch as part of my studies at Breda University of Applied Sciences. The engine demonstrates modern game development practices and architectural patterns.

## Key Features

### Entity Component System (ECS)
The engine uses **EnTT** for efficient entity-component management:

```cpp
// Example: Creating an entity with components
auto entity = registry.create();
registry.emplace<Transform>(entity, position, rotation, scale);
registry.emplace<MeshRenderer>(entity, mesh, material);
registry.emplace<RigidBody>(entity, mass, velocity);
```

### Rendering Pipeline
- Modern OpenGL 4.5+ rendering
- PBR (Physically Based Rendering) materials
- Shadow mapping with cascaded shadow maps
- Post-processing effects stack

### Editor Tools
Built-in editor using **ImGui** with:
- Scene hierarchy view
- Component inspector with reflection
- Asset browser
- Real-time performance profiler
- Timeline sequencer for animations

## Technical Challenges

### Memory Management
Implemented custom memory allocators for:
- Pool allocators for fixed-size components
- Stack allocators for frame-temporary data
- RAII-based resource handles with reference counting

### Component Reflection
Used `visit_struct` library to enable automatic serialization and UI generation:

```cpp
VISITABLE_STRUCT(Transform, 
    position, 
    rotation, 
    scale
);
```

This allows the editor to automatically generate UI for any component type.

### Resource Management
Developed a resource management system with:
- Asynchronous loading
- Hot-reloading for rapid iteration
- Automatic dependency tracking

## Results

The engine successfully powers several demo projects and is used in coursework at BUas. Performance metrics:
- 60+ FPS with 10,000+ entities
- Sub-millisecond entity creation/destruction
- Editor remains responsive with complex scenes

## What I Learned

This project taught me:
- **Low-level graphics programming** - Understanding the GPU pipeline
- **Modern C++ patterns** - Template metaprogramming, RAII, move semantics
- **Architecture design** - Balancing flexibility with performance
- **Tool development** - Creating user-friendly editor interfaces
- **Debugging complex systems** - Using profilers and visualization tools

## Future Plans

Planned improvements include:
- Vulkan rendering backend
- Multi-threaded job system
- Visual scripting system
- Advanced physics integration

---

*This project is ongoing and represents my passion for understanding game engines at a fundamental level.*

// g8i9_build_a_minimal.swift

import Foundation

// Game Prototypes
struct GamePrototype {
    let id: Int
    let name: String
    let description: String
    let integrations: [Integration]
}

// Integrations
struct Integration {
    let id: Int
    let name: String
    let type: IntegrationType
}

// Integration Types
enum IntegrationType: String, CaseIterable {
    case api, ui, audio, physics, graphics
}

// Game Prototype Integrator
class GamePrototypeIntegrator {
    private var prototypes: [GamePrototype] = []
    
    func addPrototype(_ prototype: GamePrototype) {
        prototypes.append(prototype)
    }
    
    func getPrototypes() -> [GamePrototype] {
        return prototypes
    }
    
    func integratePrototype(_ prototype: GamePrototype, with integration: Integration) -> GamePrototype {
        var integratedPrototype = prototype
        integratedPrototype.integrations.append(integration)
        return integratedPrototype
    }
}

// Sample usage
let integrator = GamePrototypeIntegrator()

let prototype1 = GamePrototype(id: 1, name: "Minimal Game", description: "A minimal game prototype", integrations: [])
let integration1 = Integration(id: 1, name: "API Integration", type: .api)
let integratedPrototype1 = integrator.integratePrototype(prototype1, with: integration1)

print(integratedPrototype1)
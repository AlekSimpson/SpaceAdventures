//
//  GameScene.swift
//  Space Adventures
//
//  Created by Alek Simpson on 4/16/17.
//  Copyright © 2017 Studios. All rights reserved.
//

import SpriteKit
import GameplayKit



class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var CaptainWill = SKSpriteNode(imageNamed: "Captain Will")
    
    var Tree = SKSpriteNode(imageNamed: "StartWorldTree")
    
    var Tree2 = SKSpriteNode(imageNamed: "StartWorldTree")
    
    var swipeRightRec:UISwipeGestureRecognizer = UISwipeGestureRecognizer()
    
    var swipeLeftRec:UISwipeGestureRecognizer = UISwipeGestureRecognizer()
    
    var DriftWood = SKSpriteNode(imageNamed: "DriftWood")
    
    var DriftWood2 = SKSpriteNode(imageNamed: "DriftWood")
    
    var OneX = SKSpriteNode(imageNamed: "OneX")
    
    var InventoryButton = SKSpriteNode(imageNamed: "InventoryButton")
    
    var background = SKSpriteNode(imageNamed: "DefaultStartWorldMorning")
    
    var InventoryLabel:SKLabelNode = SKLabelNode()
    
    var BackButton = SKSpriteNode(imageNamed: "BackButton")
    
    var TreeLives:Int = 1
    
    var Tree2Lives:Int = 1
    
    var Transport = SKSpriteNode(imageNamed: "InventoryButton")
    
    var MobileTransporter = SKSpriteNode(imageNamed: "MobileTransporter")
    
    var MobileTransporterCollection:Int = 1
    
    var EquipButton = SKSpriteNode(imageNamed: "InventoryButton")
    
    var InventoryDriftWood = SKSpriteNode(imageNamed: "DriftWood")
    
    var TradingOutpostSprite = SKSpriteNode(imageNamed: "TradingOutpostSpriteTexture")
    
    var TradingOutpostInsideBackground = SKSpriteNode(imageNamed: "BarBackGround")
    
    var Trader = SKSpriteNode(imageNamed: "Trader")
    
    var TradingScene = SKSpriteNode(imageNamed: "TradingBackGround2.0")
    
    var BackTradingButton = SKSpriteNode(imageNamed: "InventoryButton")
    
    var SceneVariable:Int = 0
    
    var TradingDriftWood = SKSpriteNode(imageNamed: "DriftWood")
    
    var AddButton = SKSpriteNode(imageNamed: "addButton")
    
    var DriftWoodSelected:Int = 0
    
    var WoodHouseEquiped:Int = 0
    
    var GrayBackground = SKSpriteNode(imageNamed: "GreyBackground")
    
    var TechButton = SKSpriteNode(imageNamed: "InventoryButton")
    
    var BuildingButton = SKSpriteNode(imageNamed: "InventoryButton")
    
    var ItemButton = SKSpriteNode(imageNamed: "InventoryButton")
    
    var WoodHouseItem = SKSpriteNode(imageNamed: "WoodHouse")
    
    var InventoryIronPiece = SKSpriteNode(imageNamed: "IronPiece")
    
    var GoldPiece = SKSpriteNode(imageNamed: "GoldCoin")
    
    var TransportBackGround = SKSpriteNode(imageNamed: "TransportBackground")
    
    var TradingOutpostLocation = SKSpriteNode(imageNamed: "SiteLocationMarker")
    
    var Tree3 = SKSpriteNode(imageNamed: "StartWorldTree")
    
    var Tree4 = SKSpriteNode(imageNamed: "StartWorldTree")
    
    var Tree5 = SKSpriteNode(imageNamed: "StartWorldTree")
    
    var Tree6 = SKSpriteNode(imageNamed: "StartWorldTree")
    
    var ForestLocation = SKSpriteNode(imageNamed: "SiteLocationMarker")
    
    var DriftWood3 = SKSpriteNode(imageNamed: "DriftWood")
    
    var DriftWood4 = SKSpriteNode(imageNamed: "DriftWood")
    
    var DriftWood5 = SKSpriteNode(imageNamed: "DriftWood")
    
    var DriftWood6 = SKSpriteNode(imageNamed: "DriftWood")
    
    var InventoryPlasmaWeapon = SKSpriteNode(imageNamed: "LaserWeapon")
    
    var PlasmaDischarge = SKSpriteNode(imageNamed: "PlasmaDischargeLeft")
    
    var FireButton = SKSpriteNode(imageNamed: "InventoryButton")
    
    var Tree3Lives:Int = 1
    
    var Tree4Lives:Int = 1
    
    var Tree5Lives:Int = 1
    
    var Tree6Lives:Int = 1
    
    var TradingSceneVariable:Int = 0
    
    var GoldCoinCollection:Int = 50
    
    var IronPieceCollection:Int = 0
    
    var WoodHouseCollection:Int = 1
    
    var DriftWoodCollection:Int = 9
    
    var PlasmaWeaponCollection:Int = 1
    
    var Direction:Int = 1
    
    var PlasmaWeaponEquiped:Int = 0
    
    var EquipPlasmaWeapon = SKSpriteNode(imageNamed: "LaserWeapon")
    
    var EquipWoodHouse = SKSpriteNode(imageNamed: "WoodHouse")
    
    var slot1:Int = 0
    var slot2:Int = 0
    var slot3:Int = 0
    var slot4:Int = 0
    var slot5:Int = 0
    var slot6:Int = 0
    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        
        InventoryLabel.text = "Backpack"
        
        //GreyBackground
        
        GrayBackground.size = self.size
        GrayBackground.zPosition = 0
        
        //GrayBackground
        
        //PlasmaDischarge
        
        PlasmaDischarge.setScale(0.5)
        PlasmaDischarge.zPosition = 3
        //PlasmaDischarge.position = CGPoint(x: CaptainWill.position.x, y: CaptainWill.position.y)
        PlasmaDischarge.position.x = CaptainWill.position.x
        PlasmaDischarge.position.y = CaptainWill.position.y
        
        //PlasmaDischarge
        
        //ForestMarker
        
        ForestLocation.name = "ForestLocation"
        ForestLocation.setScale(3)
        ForestLocation.zPosition = 2
        ForestLocation.position = CGPoint(x: 18, y: 163)
        
        //ForestMarker
        
        //InventoryPlasmaWeapon
        
        InventoryPlasmaWeapon.name = "InventoryPlasmaWeapon"
        InventoryPlasmaWeapon.setScale(2)
        InventoryPlasmaWeapon.zPosition = 2
        InventoryPlasmaWeapon.position = CGPoint(x: -301, y: 154)
        
        //InventoryPlasmaWeapon
        
        //Tree3
        
        Tree3.name = "Tree3"
        Tree3.position = CGPoint(x: -200, y: -5)
        Tree3.zPosition = 2
        Tree3.setScale(3)
        Tree3.physicsBody?.isDynamic = true
        
        //Tree3
        
        //Tree4
        
        Tree4.name = "Tree4"
        Tree4.position = CGPoint(x: -150, y: -5)
        Tree4.zPosition = 2
        Tree4.setScale(3)
        Tree4.physicsBody?.isDynamic = true
        
        //Tree4
        
        //Tree5
        
        Tree5.name = "Tree5"
        Tree5.position = CGPoint(x: -100, y: -5)
        Tree5.zPosition = 2
        Tree5.setScale(3)
        Tree5.physicsBody?.isDynamic = true
        
        //Tree5
        
        //FireButton
        
        FireButton.name = "FireButton"
        FireButton.zPosition = 2
        FireButton.setScale(1)
        FireButton.position = CGPoint(x: -239, y: -125)

        
        //FireButton
        
        //Tree6
        
        Tree6.name = "Tree6"
        Tree6.position = CGPoint(x: 150, y: -5)
        Tree6.zPosition = 2
        Tree6.setScale(3)
        Tree6.physicsBody?.isDynamic = true
        
        //Tree6
        
        //TransportBackground
        
        TransportBackGround.size = self.size
        TransportBackGround.zPosition = 0
        
        //TransportBackground
        
        background.size = self.size
        background.zPosition = 0
        self.addChild(background)
        
        swipeRightRec.addTarget(self, action: #selector(GameScene.swipeRight))
        swipeRightRec.direction = .right
        self.view!.addGestureRecognizer(swipeRightRec)
        
        swipeLeftRec.addTarget(self, action: #selector(GameScene.swipeLeft))
        swipeLeftRec.direction = .left
        self.view!.addGestureRecognizer(swipeLeftRec)
        
        //Captain Will
        
        CaptainWill.position = CGPoint(x: 86, y: -51)
        CaptainWill.physicsBody = SKPhysicsBody(rectangleOf: CaptainWill.size)
        CaptainWill.physicsBody!.affectedByGravity = false
        CaptainWill.physicsBody!.categoryBitMask = PhysicsCategoryies.CaptainWill
        CaptainWill.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        CaptainWill.physicsBody!.contactTestBitMask = PhysicsCategoryies.DriftWood | PhysicsCategoryies.DriftWood2
        CaptainWill.zPosition = 2
        
        
        self.addChild(CaptainWill)
        
        //CaptainWill
        
        //Tree
        Tree.name = "Tree"
        Tree.position = CGPoint(x: 208, y: -5)
        Tree.zPosition = 2
        Tree.setScale(3)
        Tree.physicsBody?.isDynamic = true
        self.addChild(Tree)
        
        //Tree
        
        //Tree2
        Tree2.name = "Tree2"
        Tree2.position = CGPoint(x: -200, y: -5)
        Tree2.zPosition = 2
        Tree2.setScale(3)
        Tree2.physicsBody?.isDynamic = true
        self.addChild(Tree2)
        
        //Tree2
        
        //DriftWood
        
        DriftWood.name = "DriftWood"
        DriftWood.position = CGPoint(x: 0, y: 0)
        DriftWood.physicsBody = SKPhysicsBody(rectangleOf: DriftWood.size)
        DriftWood.physicsBody!.affectedByGravity = false
        DriftWood.physicsBody!.categoryBitMask = PhysicsCategoryies.DriftWood
        DriftWood.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        DriftWood.physicsBody!.contactTestBitMask = PhysicsCategoryies.CaptainWill
        DriftWood.zPosition = 2
        DriftWood.setScale(1)
        //DriftWood.physicsBody?.isDynamic = true
        DriftWood.position = CGPoint(x: 208, y: -5)
        
        
        //DriftWood
        
        //DriftWood2
        
        DriftWood2.name = "DriftWood2"
        DriftWood2.position = CGPoint(x: 208, y: -5)
        DriftWood2.physicsBody = SKPhysicsBody(rectangleOf: DriftWood2.size)
        DriftWood2.physicsBody!.affectedByGravity = false
        DriftWood2.physicsBody!.categoryBitMask = PhysicsCategoryies.DriftWood2
        DriftWood2.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        DriftWood2.physicsBody!.contactTestBitMask = PhysicsCategoryies.CaptainWill
        DriftWood2.zPosition = 2
        DriftWood2.setScale(1)
        //DriftWood2.physicsBody?.isDynamic = true
        DriftWood2.position = CGPoint(x: -200, y: -5)
        
        
        
        //DriftWood3
        
        DriftWood3.name = "DriftWood3"
        DriftWood3.position = CGPoint(x: 208, y: -5)
        DriftWood3.physicsBody = SKPhysicsBody(rectangleOf: DriftWood3.size)
        DriftWood3.physicsBody!.affectedByGravity = false
        DriftWood3.physicsBody!.categoryBitMask = PhysicsCategoryies.DriftWood3
        DriftWood3.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        DriftWood3.physicsBody!.contactTestBitMask = PhysicsCategoryies.CaptainWill
        DriftWood3.zPosition = 2
        DriftWood3.setScale(1)
        //DriftWood2.physicsBody?.isDynamic = true
        DriftWood3.position = CGPoint(x: -200, y: -5)
        
        //DriftWood3
        
        //DriftWood4
        
        DriftWood4.name = "DriftWood4"
        DriftWood4.position = CGPoint(x: 208, y: -5)
        DriftWood4.physicsBody = SKPhysicsBody(rectangleOf: DriftWood4.size)
        DriftWood4.physicsBody!.affectedByGravity = false
        DriftWood4.physicsBody!.categoryBitMask = PhysicsCategoryies.DriftWood4
        DriftWood4.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        DriftWood4.physicsBody!.contactTestBitMask = PhysicsCategoryies.CaptainWill
        DriftWood4.zPosition = 2
        DriftWood4.setScale(1)
        //DriftWood2.physicsBody?.isDynamic = true
        DriftWood4.position = CGPoint(x: -200, y: -5)
        
        //DriftWood4
        
        //DriftWood5
        
        DriftWood5.name = "DriftWood5"
        DriftWood5.position = CGPoint(x: 208, y: -5)
        DriftWood5.physicsBody = SKPhysicsBody(rectangleOf: DriftWood5.size)
        DriftWood5.physicsBody!.affectedByGravity = false
        DriftWood5.physicsBody!.categoryBitMask = PhysicsCategoryies.DriftWood5
        DriftWood5.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        DriftWood5.physicsBody!.contactTestBitMask = PhysicsCategoryies.CaptainWill
        DriftWood5.zPosition = 2
        DriftWood5.setScale(1)
        //DriftWood2.physicsBody?.isDynamic = true
        DriftWood5.position = CGPoint(x: -200, y: -5)
        
        //DriftWood5
        
        //DriftWood6
        
        DriftWood6.name = "DriftWood6"
        DriftWood6.position = CGPoint(x: 208, y: -5)
        DriftWood6.physicsBody = SKPhysicsBody(rectangleOf: DriftWood6.size)
        DriftWood6.physicsBody!.affectedByGravity = false
        DriftWood6.physicsBody!.categoryBitMask = PhysicsCategoryies.DriftWood6
        DriftWood6.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        DriftWood6.physicsBody!.contactTestBitMask = PhysicsCategoryies.CaptainWill
        DriftWood6.zPosition = 2
        DriftWood6.setScale(1)
        //DriftWood2.physicsBody?.isDynamic = true
        DriftWood6.position = CGPoint(x: -200, y: -5)
        
        //DriftWood6
        
        
        
        //OneX
        
        OneX.position = CGPoint(x: 255, y: 124)
        OneX.setScale(1)
        OneX.zPosition = 2
        
        //OneX
        
        //InventoryButton
        
        InventoryButton.name = "InventoryButton"
        InventoryButton.position = CGPoint(x: -281, y: 162)
        InventoryButton.setScale(1)
        InventoryButton.zPosition = 2
        self.addChild(InventoryButton)
        
        //InventoryButton
        
        //BackButton
        
        BackButton.zPosition = 2
        BackButton.name = "BackButton"
        BackButton.position = CGPoint(x: -281, y: 162)
        BackButton.setScale(1)
        
        //BackButton
        
        //TransportButton
        
        Transport.zPosition = 2
        Transport.name = "TransportButton"
        Transport.position = CGPoint(x: -239, y: -125)
        Transport.setScale(1)
        
        //TransportButton
        
        //EquipButton
        
        EquipButton.zPosition = 2
        EquipButton.name = "EquipButton"
        EquipButton.position = CGPoint(x: 0, y: -145)
        EquipButton.setScale(1)
        self.addChild(EquipButton)
        
        //EquipButton
        
        //InventoryDriftWood
        
        InventoryDriftWood.zPosition = 2
        InventoryDriftWood.name = "InventoryDriftWood"
        InventoryDriftWood.position = CGPoint(x: 0, y: -145)
        InventoryDriftWood.setScale(1)
        
        
        //InventoryDriftWood
        
        //AddButton
        
        AddButton.name = "AddButton"
        AddButton.position = CGPoint(x: 0, y: 0)
        AddButton.zPosition = 2
        AddButton.setScale(3)
        
        
        //AddButton
        
        //TradingOutpost
        
        TradingOutpostSprite.position = CGPoint(x: -215, y: -15)
        TradingOutpostSprite.physicsBody = SKPhysicsBody(rectangleOf: TradingOutpostSprite.size)
        TradingOutpostSprite.physicsBody!.affectedByGravity = false
        TradingOutpostSprite.physicsBody!.categoryBitMask = PhysicsCategoryies.TradingOutpost
        TradingOutpostSprite.physicsBody!.collisionBitMask = PhysicsCategoryies.None
        TradingOutpostSprite.physicsBody!.contactTestBitMask = PhysicsCategoryies.CaptainWill
        TradingOutpostSprite.setScale(5)
        TradingOutpostSprite.zPosition = 2
        
        //TradingOutpost
        
        //TradingOutpostInside
        
        TradingOutpostInsideBackground.size = self.size
        TradingOutpostInsideBackground.zPosition = 0
        
        
        //TradingOutpostInside
        
        //Trader
        
        Trader.name = "Trader"
        Trader.setScale(3)
        Trader.position = CGPoint(x: -246, y: -10)
        Trader.zPosition = 2
        
        //Trader
        
        //TradingScene
        
        TradingScene.size = self.size
        TradingScene.zPosition = 0
        
        //TradingScene
        
        //BackTradingSceneButton
        
        BackTradingButton.name = "BackTradingButton"
        BackTradingButton.position = CGPoint(x: -281, y: 162)
        BackTradingButton.setScale(1)
        BackTradingButton.zPosition = 2
        
        //BackTradingSceneButton
        
        //TechButton
        
        TechButton.name = "TechButton"
        TechButton.position = CGPoint(x: -200, y: 0)
        TechButton.setScale(1)
        TechButton.zPosition = 2
        
        //TechButton
        
        //BuildingButton
        
        BuildingButton.name = "BuildingButton"
        BuildingButton.position = CGPoint(x: 200, y: 0)
        BuildingButton.setScale(1)
        BuildingButton.zPosition = 2
        
        //BuildingButton
        
        //ItemButton
        
        ItemButton.name = "ItemButton"
        ItemButton.position = CGPoint(x: 0, y: 0)
        ItemButton.setScale(1)
        ItemButton.zPosition = 2
        
        //ItemButton
        
        //IronPiece
        
        InventoryIronPiece.name = "InventoryIronPiece"
        InventoryIronPiece.position = CGPoint(x: -299, y: 150)
        InventoryIronPiece.setScale(2)
        InventoryIronPiece.zPosition = 2
        
        //IronPiece
        
        //WoodHouseItem
        
        WoodHouseItem.name = "WoodHouseItem"
        WoodHouseItem.position = CGPoint(x: -299, y: 150)
        WoodHouseItem.setScale(2)
        WoodHouseItem.zPosition = 2
        
        //WoodHouseItem
        
        //TradingOutpostMarker
        
        TradingOutpostLocation.name = "TradingOutpostLocation"
        TradingOutpostLocation.setScale(3)
        TradingOutpostLocation.zPosition = 2
        TradingOutpostLocation.position = CGPoint(x: -265, y: 61)
        
        //TradingOutpostMarker
        
        //EquipPlasmaWeapon
        
        EquipPlasmaWeapon.name = "EquipPlasmaWeapon"
        EquipPlasmaWeapon.position = CGPoint(x: -301, y: -71)
        EquipPlasmaWeapon.setScale(2)
        EquipPlasmaWeapon.zPosition = 2
        
        
        //EquipPlasmaWeapon
        
        //EquipWoodHouse
        
        EquipWoodHouse.name = "WoodHouseEquiped"
        EquipWoodHouse.position = CGPoint(x: -301, y: -10)
        EquipWoodHouse.setScale(2)
        EquipWoodHouse.zPosition = 2
        
        //EquipWoodHouse
        
        if MobileTransporterCollection >= 1 {
            
            self.addChild(Transport)
            
            
        }else if MobileTransporterCollection == 0 {
            
            let remove:SKAction = SKAction.removeFromParent()
            MobileTransporter.run(remove)
            
        }
        
    }
    
    struct PhysicsCategoryies {
        static let None : UInt32 = 0 //0
        static let CaptainWill : UInt32 = 0b1 //1
        static let DriftWood : UInt32 = 0b10 //2
        static let DriftWood2 : UInt32 = 0b100 //3
        static let TradingOutpost  : UInt32 = 0b1000 //4
        static let DriftWood3 : UInt32 = 0b10000 // 5
        static let DriftWood4 : UInt32 = 0b100000 // 6
        static let DriftWood5 : UInt32 = 0b1000000 // 7
        static let DriftWood6 : UInt32 = 0b10000000 // 8
        
    }
    
    func slotAssignment(){
        
        if DriftWoodCollection > 0 {
            
            InventoryDriftWood.position = CGPoint(x: -301, y: 94)
            InventoryDriftWood.setScale(2)
            self.addChild(InventoryDriftWood)
            
            
        }
        if MobileTransporterCollection > 0 {
            
            MobileTransporter.position = CGPoint(x: -301, y: 34)
            MobileTransporter.setScale(2)
            self.addChild(MobileTransporter)
            
        }
        if IronPieceCollection > 0{
            
            InventoryIronPiece.position = CGPoint(x: -301, y: -17)
            InventoryIronPiece.setScale(2)
            self.addChild(InventoryIronPiece)
            
        }
        if WoodHouseCollection > 0 {
            
            WoodHouseItem.position = CGPoint(x: -301, y: -72)
            WoodHouseItem.setScale(2)
            self.addChild(WoodHouseItem)
            
        }
        
    }
    
    func EquipSlotAssignment(){
        
        if WoodHouseCollection > 0 {
            
            self.addChild(EquipWoodHouse)
            
        }
        if MobileTransporterCollection > 0 {
            
            MobileTransporter.position = CGPoint(x: -301, y: 34)
            MobileTransporter.setScale(2)
            self.addChild(MobileTransporter)
            
        }
        if PlasmaWeaponCollection > 0 {
            
            self.addChild(EquipPlasmaWeapon)
            
        }
        
        
    }
    
    func SlotUnAssignment(){
        
        let remove:SKAction = SKAction.removeFromParent()
        
        if DriftWoodCollection > 0 {
            
            InventoryDriftWood.run(remove)
            
            
        }
        if MobileTransporterCollection > 0 {
            
            MobileTransporter.run(remove)
            
        }
        if IronPieceCollection > 0 {
            
            InventoryIronPiece.run(remove)
            
        }
        if WoodHouseCollection > 0 {
            
            WoodHouseItem.run(remove)
            
        }
        
    }
    
    func checkTreeLives(){
        
        if TreeLives == 0 {
            
            let remove:SKAction = SKAction.removeFromParent()
            
            InventoryDriftWood.run(remove)
            
            
        }
        if Tree2Lives == 0 {
            
            let remove:SKAction = SKAction.removeFromParent()
            
            InventoryDriftWood.run(remove)
            
            
        }
        
    }
    
    func addTrees(){
        
        self.addChild(Tree3)
        self.addChild(Tree4)
        self.addChild(Tree5)
        self.addChild(Tree6)
        
    }
    func removeTrees(){
        
        let remove:SKAction = SKAction.removeFromParent()
        
        Tree6.run(remove)
        Tree5.run(remove)
        Tree4.run(remove)
        Tree3.run(remove)
        
        
    }
    func firePlasmaDishchargeLeft(){
        
        let PlasmaDischargeTwo = SKSpriteNode(imageNamed: "PlasmaDischargeLeft")
        PlasmaDischargeTwo.zPosition = 0
        
        PlasmaDischargeTwo.position.x = CaptainWill.position.x
        PlasmaDischargeTwo.position.y = CaptainWill.position.y
        PlasmaDischargeTwo.zRotation = CaptainWill.zRotation
        PlasmaDischargeTwo.zPosition = CaptainWill.zPosition
        
        let action = SKAction.moveBy(x: CaptainWill.position.x + -10000, y: CaptainWill.zPosition + 0, duration: 15)
        let wait = SKAction.wait(forDuration: 3)
        let actionDone = SKAction.removeFromParent()
        PlasmaDischargeTwo.run(SKAction.sequence([action, actionDone, wait]))
        PlasmaDischarge.setScale(1)
        PlasmaDischarge.zPosition = 3
        
        /*
         Projectile.physicsBody = SKPhysicsBody(rectangleOf: Projectile.size)
         Projectile.physicsBody?.affectedByGravity = false
         Projectile.physicsBody?.isDynamic = false
         Projectile.physicsBody?.categoryBitMask = Type.Projectile.rawValue
         Projectile.physicsBody?.collisionBitMask = Type.Romulan.rawValue | Type.Defiant.rawValue
         Projectile.physicsBody?.contactTestBitMask = Type.Romulan.rawValue | Type.Defiant.rawValue
         Projectile.physicsBody?.usesPreciseCollisionDetection = true
         */
        self.addChild(PlasmaDischargeTwo)
        
    }
    func firePlasmaDischargeRight(){
        
        let PlasmaDischargeTwo = SKSpriteNode(imageNamed: "PlasmaDischargeLeft")
        PlasmaDischargeTwo.zPosition = 0
        
        PlasmaDischargeTwo.position.x = CaptainWill.position.x
        PlasmaDischargeTwo.position.y = CaptainWill.position.y
        PlasmaDischargeTwo.zRotation = CaptainWill.zRotation
        PlasmaDischargeTwo.zPosition = CaptainWill.zPosition
        PlasmaDischargeTwo.setScale(1)
        PlasmaDischargeTwo.zPosition = 3
        
        let action = SKAction.moveBy(x: CaptainWill.position.x + 10000, y: CaptainWill.zPosition + 0, duration: 15)
        let wait = SKAction.wait(forDuration: 3)
        let actionDone = SKAction.removeFromParent()
        PlasmaDischargeTwo.run(SKAction.sequence([action, actionDone, wait]))
        
        /*
        Projectile.physicsBody = SKPhysicsBody(rectangleOf: Projectile.size)
        Projectile.physicsBody?.affectedByGravity = false
        Projectile.physicsBody?.isDynamic = false
        Projectile.physicsBody?.categoryBitMask = Type.Projectile.rawValue
        Projectile.physicsBody?.collisionBitMask = Type.Romulan.rawValue | Type.Defiant.rawValue
        Projectile.physicsBody?.contactTestBitMask = Type.Romulan.rawValue | Type.Defiant.rawValue
        Projectile.physicsBody?.usesPreciseCollisionDetection = true
        */
        self.addChild(PlasmaDischargeTwo)
        
        
    }
    func CheckForSelectedAnimation(){
        
        if Direction == 1 && PlasmaWeaponEquiped == 1 && WoodHouseEquiped == 0 {
            
            let FiringAnimation:SKAction = SKAction(named: "CaptainWillFiringRight")!
        
            CaptainWill.run(FiringAnimation)
            
        }else if Direction == 2 && PlasmaWeaponEquiped == 1 && WoodHouseEquiped == 0 {
            
            let FiringAnimation:SKAction = SKAction(named: "CaptainWillWFiringLeft")!
            
            CaptainWill.run(FiringAnimation)
            
            
            
            
        }else if Direction == 1 && PlasmaWeaponEquiped == 0 && WoodHouseEquiped == 1 {
            
            let CaptainWillWoodHouseLeft:SKAction = SKAction(named: "CaptainWillWoodHouse")!
            
            CaptainWill.run(CaptainWillWoodHouseLeft)
            
        }else if Direction == 2 && PlasmaWeaponEquiped == 0 && WoodHouseEquiped == 1 {
            
            let CaptainWillWoodHouseRight:SKAction = SKAction(named: "CaptainWillWoodHouseRight")!
            
            
            CaptainWill.run(CaptainWillWoodHouseRight)
            
            
            
        }
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "Tree" {
                
                self.addChild(DriftWood)
                
                TreeLives = TreeLives - 1
                
                let removeAction:SKAction = SKAction.removeFromParent()
                let fallAction:SKAction = SKAction.moveBy(x: 0, y: -50, duration: 1)
                DriftWood.position = CGPoint(x: 208, y: -5)
                
                Tree.run(removeAction)
                DriftWood.run(fallAction)
                
            }else if nodesArray.first?.name == "Tree2" {
                
                self.addChild(DriftWood2)
                
                Tree2Lives = Tree2Lives - 1
                
                let removeAction:SKAction = SKAction.removeFromParent()
                let fallAction:SKAction = SKAction.moveBy(x: 0, y: -50, duration: 1)
                DriftWood2.position = CGPoint(x: -200, y: -5)
                
                Tree2.run(removeAction)
                DriftWood2.run(fallAction)
                
            }else if nodesArray.first?.name == "InventoryButton" {
                
                if SceneVariable == 0 {
                    let remove:SKAction = SKAction.removeFromParent()
                    background.run(remove)
                    Tree.run(remove)
                    Tree2.run(remove)
                    CaptainWill.run(remove)
                    OneX.run(remove)
                    InventoryLabel.position = CGPoint(x: -2, y: 151)
                    self.addChild(InventoryLabel)
                    InventoryButton.run(remove)
                    self.addChild(BackButton)
                    InventoryLabel.run(remove)
                    EquipButton.run(remove)
                    Transport.run(remove)
                
                    slotAssignment()
                
                }else if SceneVariable == 1 {
                    
                    let remove:SKAction = SKAction.removeFromParent()
                    background.run(remove)
                    CaptainWill.run(remove)
                    InventoryLabel.position = CGPoint(x: -2, y: 151)
                    self.addChild(InventoryLabel)
                    InventoryButton.run(remove)
                    self.addChild(BackButton)
                    InventoryLabel.run(remove)
                    TradingOutpostSprite.run(remove)
                    EquipButton.run(remove)
                    Transport.run(remove)
                    
                    slotAssignment()
                    
                    
                }else if SceneVariable == 2 {
                    
                    let remove:SKAction = SKAction.removeFromParent()
                    
                    TradingOutpostInsideBackground.run(remove)
                    CaptainWill.run(remove)
                    InventoryButton.run(remove)
                    self.addChild(BackButton)
                    InventoryLabel.run(remove)
                    TradingOutpostSprite.run(remove)
                    Trader.run(remove)
                    EquipButton.run(remove)
                    Transport.run(remove)
                    
                    slotAssignment()
                    
                    
                }else if SceneVariable == 3 {
                    
                    
                    let remove:SKAction = SKAction.removeFromParent()
                    
                    background.run(remove)
                    CaptainWill.run(remove)
                    InventoryButton.run(remove)
                    self.addChild(BackButton)
                    InventoryLabel.run(remove)
                    EquipButton.run(remove)
                    Transport.run(remove)
                    removeTrees()
                    
                    slotAssignment()
                    
                }
                
            }else if nodesArray.first?.name == "BackButton" {
                
                if SceneVariable == 0 {
                    let remove:SKAction = SKAction.removeFromParent()
                
                    self.addChild(background)
                    self.addChild(CaptainWill)
                    self.addChild(InventoryButton)
                    self.addChild(Transport)
                    self.addChild(EquipButton)
                    BackButton.run(remove)
                    checkTreeLives()
                    CheckForSelectedAnimation()
                    SlotUnAssignment()
                    EquipWoodHouse.run(remove)
                    EquipPlasmaWeapon.run(remove)
                    
                    if TreeLives == 1 {
                    
                        self.addChild(Tree)
                    
                    }else if TreeLives == 0 {
                    
                        Tree.run(remove)
                    
                    }
                    if Tree2Lives == 1 {
                    
                        self.addChild(Tree2)
                    
                    }else if Tree2Lives == 0 {
                    
                        Tree2.run(remove)
                    
                    }
                    
                    
                    
                    
                    
                }else if SceneVariable == 1 {
                    
                    let remove:SKAction = SKAction.removeFromParent()
                    
                    self.addChild(background)
                    self.addChild(CaptainWill)
                    self.addChild(InventoryButton)
                    self.addChild(TradingOutpostSprite)
                    BackButton.run(remove)
                    InventoryDriftWood.run(remove)
                    self.addChild(EquipButton)
                    self.addChild(Transport)
                    CheckForSelectedAnimation()
                    SlotUnAssignment()
                    
                }else if SceneVariable == 2 {
                    
                    let remove:SKAction = SKAction.removeFromParent()
                    
                    self.addChild(TradingOutpostInsideBackground)
                    self.addChild(CaptainWill)
                    self.addChild(InventoryButton)
                    self.addChild(TradingOutpostSprite)
                    self.addChild(Trader)
                    self.addChild(EquipButton)
                    self.addChild(Transport)
                    BackButton.run(remove)
                    CheckForSelectedAnimation()
                    SlotUnAssignment()
                    
                    
                }else if SceneVariable == 3 {
                    
                    let remove:SKAction = SKAction.removeFromParent()
                    
                    self.addChild(background)
                    self.addChild(CaptainWill)
                    self.addChild(InventoryButton)
                    self.addChild(EquipButton)
                    self.addChild(Transport)
                    BackButton.run(remove)
                    addTrees()
                    CheckForSelectedAnimation()
                    SlotUnAssignment()
                    
                }
                
                
                
                
            }else if nodesArray.first?.name == "TransportButton" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                background.run(remove)
                self.addChild(TransportBackGround)
                self.addChild(TradingOutpostLocation)
                self.addChild(ForestLocation)
                EquipButton.run(remove)
                Transport.run(remove)
                InventoryButton.run(remove)
                CaptainWill.run(remove)
                
                
                if TreeLives > 0 {
                    
                    Tree.run(remove)
                    
                }
                if Tree2Lives > 0 {
                    Tree2.run(remove)
                }
                
            }else if nodesArray.first?.name == "EquipButton" {
                
                
                
                
                
            }else if nodesArray.first?.name == "Trader" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                TradingSceneVariable = 1
                
                TradingOutpostInsideBackground.run(remove)
                self.addChild(TradingScene)
                CaptainWill.run(remove)
                Trader.run(remove)
                EquipButton.run(remove)
                Transport.run(remove)
                InventoryButton.run(remove)
                BackTradingButton.position = CGPoint(x: 0, y: 162)
                self.addChild(BackTradingButton)
                self.addChild(AddButton)
                
                
            }else if nodesArray.first?.name == "BackTradingButton" {
                
                
                let remove:SKAction = SKAction.removeFromParent()
                
                if TradingSceneVariable == 1 {
                    
                    self.addChild(TradingOutpostInsideBackground)
                    TradingScene.run(remove)
                    AddButton.run(remove)
                }
                if TradingSceneVariable == 2 {
                    
                    GrayBackground.run(remove)
                    TechButton.run(remove)
                    BuildingButton.run(remove)
                    ItemButton.run(remove)
                    self.addChild(TradingOutpostInsideBackground)
                    
                }
                if TradingSceneVariable == 3 {
                    
                    self.addChild(TradingOutpostInsideBackground)
                    
                }
                
                //self.addChild(TradingOutpostInsideBackground)
                self.addChild(CaptainWill)
                self.addChild(Trader)
                BackTradingButton.run(remove)
                self.addChild(InventoryButton)
                self.addChild(EquipButton)
                self.addChild(Transport)
                //AddButton.run(remove)
                
                if WoodHouseCollection == 0 {
                    
                    WoodHouseItem.run(remove)
                    
                }
                if IronPieceCollection == 0 {
                    
                    InventoryIronPiece.run(remove)
                    
                }
                if PlasmaWeaponCollection == 0 {
                    
                    InventoryPlasmaWeapon.run(remove)
                    
                }
                
               
                
            }else if nodesArray.first?.name == "AddButton" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                TradingSceneVariable = 2
                
                AddButton.run(remove)
                TradingScene.run(remove)
                self.addChild(GrayBackground)
                self.addChild(ItemButton)
                self.addChild(TechButton)
                self.addChild(BuildingButton)
                
                
            }else if nodesArray.first?.name == "TechButton" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                TradingSceneVariable = 3
                
                GrayBackground.run(remove)
                TechButton.run(remove)
                ItemButton.run(remove)
                BuildingButton.run(remove)
                BackTradingButton.position = CGPoint(x: 0, y: -162)
                self.addChild(InventoryPlasmaWeapon)
                
            }else if nodesArray.first?.name == "BuildingButton" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                TradingSceneVariable = 3
                
                GrayBackground.run(remove)
                TechButton.run(remove)
                ItemButton.run(remove)
                BuildingButton.run(remove)
                BackTradingButton.position = CGPoint(x: 0, y: -162)
                self.addChild(WoodHouseItem)
                
            }else if nodesArray.first?.name == "ItemButton" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                TradingSceneVariable = 3
                
                GrayBackground.run(remove)
                TechButton.run(remove)
                ItemButton.run(remove)
                BuildingButton.run(remove)
                BackTradingButton.position = CGPoint(x: 0, y: -162)
                self.addChild(InventoryIronPiece)
                
            }else if nodesArray.first?.name == "InventoryIronPiece" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                InventoryIronPiece.run(remove)
                
                if GoldCoinCollection > 10 {
                    
                    IronPieceCollection = IronPieceCollection + 2
                    //GoldCoinCollection = GoldCoinCollection - 10
                    
                }
                
                
            }else if nodesArray.first?.name == "WoodHouseItem" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                WoodHouseItem.run(remove)
                
                if DriftWoodCollection >= 9 {
                    
                    WoodHouseCollection = WoodHouseCollection + 1
                    
                    
                }
                
                
            }else if nodesArray.first?.name == "TradingOutpostLocation" {
                
                let remove:SKAction = SKAction.removeFromParent()
                
                SceneVariable = 1
                
                TransportBackGround.run(remove)
                self.addChild(background)
                TradingOutpostSprite.position = CGPoint(x: -180, y: -15)
                self.addChild(TradingOutpostSprite)
                self.addChild(CaptainWill)
                self.addChild(InventoryButton)
                self.addChild(EquipButton)
                self.addChild(Transport)
                TradingOutpostLocation.run(remove)
                ForestLocation.run(remove)
                
            }else if nodesArray.first?.name == "ForestLocation" { 
                
                let remove:SKAction = SKAction.removeFromParent()
                
                SceneVariable = 3
                
                TransportBackGround.run(remove)
                self.addChild(background)
                addTrees()
                self.addChild(CaptainWill)
                self.addChild(InventoryButton)
                self.addChild(EquipButton)
                self.addChild(Transport)
                ForestLocation.run(remove)
                TradingOutpostLocation.run(remove)
                
                
            }else if nodesArray.first?.name == "Tree3" {
                
                self.addChild(DriftWood3)
                
                Tree3Lives = Tree3Lives - 1
                
                let removeAction:SKAction = SKAction.removeFromParent()
                let fallAction:SKAction = SKAction.moveBy(x: 0, y: -50, duration: 1)
                DriftWood3.position = CGPoint(x: -200, y: -5)
                
                Tree3.run(removeAction)
                DriftWood3.run(fallAction)
                
            }else if nodesArray.first?.name == "Tree4" {
                
                self.addChild(DriftWood4)
                
                Tree4Lives = Tree4Lives - 1
                
                let removeAction:SKAction = SKAction.removeFromParent()
                let fallAction:SKAction = SKAction.moveBy(x: 0, y: -50, duration: 1)
                DriftWood4.position = CGPoint(x: -150, y: -5)
                
                Tree4.run(removeAction)
                DriftWood4.run(fallAction)
                
            }else if nodesArray.first?.name == "Tree5" {
                
                self.addChild(DriftWood5)
                
                Tree5Lives = Tree5Lives - 1
                
                let removeAction:SKAction = SKAction.removeFromParent()
                let fallAction:SKAction = SKAction.moveBy(x: 0, y: -50, duration: 1)
                DriftWood5.position = CGPoint(x: -100, y: -5)
                
                Tree5.run(removeAction)
                DriftWood5.run(fallAction)
                
            }else if nodesArray.first?.name == "Tree6" {
                
                self.addChild(DriftWood6)
                
                Tree6Lives = Tree6Lives - 1
                
                let removeAction:SKAction = SKAction.removeFromParent()
                let fallAction:SKAction = SKAction.moveBy(x: 0, y: -50, duration: 1)
                DriftWood6.position = CGPoint(x: 150, y: -5)
                
                Tree6.run(removeAction)
                DriftWood6.run(fallAction)
                
            }else if nodesArray.first?.name == "FireButton"{
                
                if Direction == 1 {
                    
                    firePlasmaDischargeRight()
                    
                    
                }else if Direction == 2 {
                    
                    firePlasmaDishchargeLeft()
                    
                }
                
                
            }
            
            
            
            
        
        
        }
    }
    
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        
        var body1 = SKPhysicsBody()
        var body2 = SKPhysicsBody()
        
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask{
            
            body1 = contact.bodyA
            body2 = contact.bodyB
            
        }else {
            
            body1 = contact.bodyB
            body2 = contact.bodyA
            
        }
        
        if body1.categoryBitMask == PhysicsCategoryies.CaptainWill && body2.categoryBitMask == PhysicsCategoryies.DriftWood {
            
            DriftWoodCollection = DriftWoodCollection + 1

            
            let remove:SKAction = SKAction.removeFromParent()
            let moveAction:SKAction = SKAction.moveBy(x: -10, y: 0, duration: 1)
            let group:SKAction = SKAction.sequence([moveAction, remove])
            DriftWood.run(group)
            
            //self.addChild(OneX)
            
            
            
        }else if body1.categoryBitMask == PhysicsCategoryies.CaptainWill && body2.categoryBitMask == PhysicsCategoryies.DriftWood2 {
            
            DriftWoodCollection = DriftWoodCollection + 1

            
            let remove:SKAction = SKAction.removeFromParent()
            let moveAction:SKAction = SKAction.moveBy(x: 10, y: 0, duration: 1)
            let group:SKAction = SKAction.sequence([moveAction, remove])
            DriftWood2.run(group)
            
            //self.addChild(OneX)
            
            
            
            
        }else if body1.categoryBitMask == PhysicsCategoryies.CaptainWill && body2.categoryBitMask == PhysicsCategoryies.TradingOutpost {
            
            let remove:SKAction = SKAction.removeFromParent()
            
            SceneVariable = 2
            
            
            
            background.run(remove)
            self.addChild(TradingOutpostInsideBackground)
            TradingOutpostSprite.run(remove)
            CaptainWill.setScale(3)
            CaptainWill.position = CGPoint(x: 500, y: -59)
            self.addChild(Trader)
            
            
            
        }else if body1.categoryBitMask == PhysicsCategoryies.CaptainWill && body2.categoryBitMask == PhysicsCategoryies.DriftWood3 {
            
            DriftWoodCollection = DriftWoodCollection + 1
            
            
            let remove:SKAction = SKAction.removeFromParent()
            let moveAction:SKAction = SKAction.moveBy(x: 10, y: 0, duration: 1)
            let group:SKAction = SKAction.sequence([moveAction, remove])
            DriftWood3.run(group)
            
        }else if body1.categoryBitMask == PhysicsCategoryies.CaptainWill && body2.categoryBitMask == PhysicsCategoryies.DriftWood4 {
            
            DriftWoodCollection = DriftWoodCollection + 1
            
            
            let remove:SKAction = SKAction.removeFromParent()
            let moveAction:SKAction = SKAction.moveBy(x: 10, y: 0, duration: 1)
            let group:SKAction = SKAction.sequence([moveAction, remove])
            DriftWood4.run(group)
            
        }else if body1.categoryBitMask == PhysicsCategoryies.CaptainWill && body2.categoryBitMask == PhysicsCategoryies.DriftWood5 {
            
            DriftWoodCollection = DriftWoodCollection + 1
            
            
            let remove:SKAction = SKAction.removeFromParent()
            let moveAction:SKAction = SKAction.moveBy(x: 10, y: 0, duration: 1)
            let group:SKAction = SKAction.sequence([moveAction, remove])
            DriftWood5.run(group)
            
        }else if body1.categoryBitMask == PhysicsCategoryies.CaptainWill && body2.categoryBitMask == PhysicsCategoryies.DriftWood6 {
            
            DriftWoodCollection = DriftWoodCollection + 1
            
            
            let remove:SKAction = SKAction.removeFromParent()
            let moveAction:SKAction = SKAction.moveBy(x: 10, y: 0, duration: 1)
            let group:SKAction = SKAction.sequence([moveAction, remove])
            DriftWood6.run(group)
            
        }
        
    }
    
    
    func swipeRight(){
        
        Direction = 1
        
        if PlasmaWeaponEquiped == 1 {
            
            let walkAnimation:SKAction = SKAction(named: "CaptainWillRight")!
            
            let FiringAnimation:SKAction = SKAction(named: "CaptainWillFiringRight")!
            
            let walkAction:SKAction = SKAction.moveBy(x: 50, y: 0, duration: 3)
            
            let sequence:SKAction = SKAction.sequence([walkAnimation, walkAction, FiringAnimation])
            
            CaptainWill.run(sequence)
            
            
        }else if WoodHouseEquiped == 1 {
            
            let walkAnimation:SKAction = SKAction(named: "CaptainWillRight")!
            
            let FiringAnimation:SKAction = SKAction(named: "CaptainWillWoodHouseRight")!
            
            let walkAction:SKAction = SKAction.moveBy(x: 50, y: 0, duration: 3)
            
            let sequence:SKAction = SKAction.sequence([walkAnimation, walkAction, FiringAnimation])
            
            CaptainWill.run(sequence)
            
        }
        
        let walkAnimation:SKAction = SKAction(named: "CaptainWillRight")!
        
        let walkAction:SKAction = SKAction.moveBy(x: 100, y: 0, duration: 3)
        
        let group:SKAction = SKAction.sequence([walkAnimation, walkAction])
        
        CaptainWill.run(group)
        
        
        
    }
    func swipeLeft(){
        
        Direction = 2
        
        if PlasmaWeaponEquiped == 1 {
            
            let walkAnimation:SKAction = SKAction(named: "CaptainWillLeft")!
            
            let FiringAnimation:SKAction = SKAction(named: "CaptainWillFiringLeft")!
            
            let walkAction:SKAction = SKAction.moveBy(x: -50, y: 0, duration: 3)
            
            let sequence:SKAction = SKAction.sequence([walkAnimation, walkAction, FiringAnimation])
            
            CaptainWill.run(sequence)
            
            
        }else if WoodHouseEquiped == 1 {
            
            let walkAnimation:SKAction = SKAction(named: "CaptainWillLeft")!
            
            let FiringAnimation:SKAction = SKAction(named: "CaptainWillWoodHouse")!
            
            let walkAction:SKAction = SKAction.moveBy(x: -50, y: 0, duration: 3)
            
            let sequence:SKAction = SKAction.sequence([walkAnimation, walkAction, FiringAnimation])
            
            CaptainWill.run(sequence)
            
        }
        
        let walkAnimation:SKAction = SKAction(named: "CaptainWillLeft")!
        
        let walkAction:SKAction = SKAction.moveBy(x: -100, y: 0, duration: 3)
        
        let group:SKAction = SKAction.sequence([walkAnimation, walkAction])
        
        CaptainWill.run(group)
        
        
        
    }
    
    
    
}
    












-- ProbablyEngine Rotation Packager
-- Custom Retribution Paladin Rotation
-- Created on Nov 19th 2013 4:43 am
ProbablyEngine.rotation.register_custom(70, "Retribution[Shadow]", {

    --Cooldowns
    { "Avenging Wrath", "modifier.cooldowns" },
    { "Guardian of Ancient Kings", "modifier.cooldowns" },
    { "#gloves", "modifier.cooldowns" },
    
    --Inquisition
    { "Inquisition", {
        "!player.buff(Inquisition)",
        "player.holypower <= 3"
    }},
    
        { "Inquisition", {
        "player.buff(Inquisition).duration <= 3",
        "player.holypower <= 3"
    }},
    
    --Heal me up!
    { "Flash of Light", "modifier.shift" },
    
    --Save somebody
    { "Lay on Hands", {
    	    "lowest.health < 20",
    	    "modifier.cooldowns"
    }, "lowest" },
    { "Flash of Light", {
    	    "lowest.health < 20",
    	    "player.buff(Selfless Healer).count = 3"
    }, "lowest" },
    
    --Interrupts
    { "Rebuke", "modifier.interrupts" },
    
    --DPS
    { "Templar's Verdict", {
        "player.holypower = 5",
        "!modifier.multitarget"
    }},
    
    { "Divine Storm", {
        "player.holypower >= 3",
        "modifier.multitarget"
    }},
    { "Hammer of Wrath" },
    { "Execution Sentence" },
    { "Holy Prism" },
    { "Exorcism" },   
    { "Hammer of the Righteous", "modifier.multitarget" },
    { "Crusader Strike", "!modifier.multitarget" },
    { "Judgment" },
    { "Templar's verdict", "!modifier.multitarget"},

})
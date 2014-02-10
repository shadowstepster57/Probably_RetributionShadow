-- ProbablyEngine Rotation Packager
-- Custom Retribution Paladin Rotation
-- Created on Nov 19th 2013 4:43 am
ProbablyEngine.rotation.register_custom(70, "Retribution[Shadow]", {

    --Heal me up!
    { "Flash of Light", "modifier.shift" },
    
    --Save somebody
    { "Lay on Hands", {
    	    "lowest.health < 10",
    	    "modifier.cooldowns"
    }, "lowest" },
    { "Flash of Light", {
    	    "lowest.health < 30",
    	    "player.buff(Selfless Healer).stacks = 3"
    }, "lowest" },
    { "Flash of Light", {
    	    "lowest.health < 30",
    	    "player.buff(Selfless Healer)",
    	    "!player.moving",
    	    "player.mana > 60"
    }, "lowest" },
    
    --Interrupts
    { "Rebuke", {
    "modifier.interrupts",
    "target.casting.percent = 75"
    }},
    
    --Break Roots
    { "Emancipate", {
    	    "player.state.root",
    	    "player.state.snare"
    }},
    
    --Cooldowns
    { "Avenging Wrath", {
        "modifier.cooldowns",
        "player.buff(Inquisition)"
    }},
    { "Guardian of Ancient Kings", {
        "modifier.cooldowns",
        "player.buff(Inquisition)"
    }},
    
    -- Inquisition
    { "Inquisition", {
        "!player.buff(Inquisition)",
        "player.holypower >= 3"
    }},
    { "Inquisition", {
        "player.buff(Inquisition).duration <= 2",
        "player.holypower >= 3"
    }},
    
    --DPS
    {{	{ "Templar's Verdict", "player.holypower = 5"},
        { "Hammer of Wrath" },
        { "Execution Sentence" },
    	{ "Exorcism" },
    	{ "Crusader Strike" },
    	{ "Judgement" },
    	{ "Templar's Verdict" },
    }, "!modifier.multitarget" },
    {{	{ "Templar's Verdict", {
        "player.holypower = 5",
        "modifier.enemies <= 2"
        }},
        { "Divine Storm", {
        "player.holypower = 5",
        "modifier.enemies > 2"
        }, "target.range < 8" },
        { "Hammer of Wrath" },
        { "Execution Sentence" },
        { "Hammer of the Righteous", "modifier.enemies > 3" },
    	{ "Exorcism"},
    	{ "Crusader Strike" },
    	{ "Judgement" },
    	{ "Divine Storm", "modifier.enemies > 2" },
    	{ "Templar's Verdict"},
    }, "modifier.multitarget" },
})
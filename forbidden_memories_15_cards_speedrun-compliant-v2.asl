// Yu-Gi-Oh! Forbidden Memories - LiveSplit Auto Splitter (Any%)

state("ePSXe", "2.0.0") {
    byte duelist_id: 0x8B5381;
    bool is_defeat: 0x8B5382;
    byte win_01: 0x993A32;
    byte lost_01: 0x8B534E;
    byte lost_02: 0x9EF63D;
    
    byte menu_id_or_something2: 0x90ABD8;
    // using some axexkil's autosplitter address ↓
    byte menu_transition: 0x90AC28;
}

state("ePSXe", "1.9.25") {
    // offset is -0x18E980 compared to 2.0.0
    
    byte duelist_id: 0x726A01;
    bool is_defeat: 0x726A02;
    byte win_01: 0x8050B2;
    byte lost_01: 0x7269CE;
    byte lost_02: 0x860CBD;
    
    byte menu_id_or_something2: 0x77C258;
    byte menu_transition: 0x77C2A8;
}

state("ePSXe", "2.0.2") {
    // offset is +0xB120 compared to 2.0.0
    
    byte duelist_id: 0x8C04A1;
    bool is_defeat: 0x8C04A2;
    byte win_01: 0x99EB52;
    byte lost_01: 0x8C046E;
    byte lost_02: 0x9FA75D;
    
    byte menu_id_or_something2: 0x915CF8;
    byte menu_transition: 0x915D48;
}

state("duckstation-qt-x64-ReleaseLTCG", "DuckStation") {
    // Need to use 0x268cd370000 as base address: ...
    // ... these addresses are placeholders and ...
    // ... are manually updated during execution.
    //
    // The fix implementation unvoluntarily introduces a ...
    // ... 5-frame delay after each action. Increasing the ...
    // ... refreashRate doesn't seem to help.
    byte duelist_id: 0x0; //0x9B361;
    bool is_defeat: 0x0; //0x9B362;
    byte win_01: 0x0; //0x179A12;
    byte lost_01: 0x0; //0x9B32E;
    byte lost_02: 0x0; //0x1D561D;
    
    byte menu_id_or_something2: 0x0; //0xF0BB8;
    byte menu_transition: 0x0; //0xF0C08;
}

startup {
    refreshRate = 0.5;
    
    settings.Add("15cards_any%", true, "15 Cards - Any%");
    settings.Add("15cards_allduelists", false, "15 Cards - All Duelists");
	
	settings.CurrentDefaultParent = "15cards_any%";
	settings.Add("heishinL",   true, "Heishin 1 (lose)");
	settings.Add("rex",        true, "Rex Raptor");
	settings.Add("weevil",     true, "Weevil Underwood");
	settings.Add("mai",        true, "Mai Valentine");
	settings.Add("keith",      true, "Bandit Keith");
	settings.Add("shadi",      true, "Shadi");
	settings.Add("bakura",     true, "Yami Bakura");
	settings.Add("pegasus",    true, "Pegasus");
	settings.Add("isis",       true, "Isis");
	settings.Add("kaiba",      true, "Kaiba");
	settings.Add("soldier",    true, "Mage Soldier");
	settings.Add("ocean",      true, "Ocean Mage");
	settings.Add("secmeton",   true, "Secmeton");
	settings.Add("mountain",   true, "Moutain Mage");
	settings.Add("atenza",     true, "High Mage Atenza");
	settings.Add("desert",     true, "Desert Mage");
	settings.Add("martis",     true, "High Mage Martis");
	settings.Add("meadow",     true, "Meadow Mage");
	settings.Add("kepura",     true, "High Mage Kepura");
	settings.Add("forest",     true, "Forest Mage");
	settings.Add("anubisius",  true, "High Mage Anubisius");
	settings.Add("labyrinth",  true, "Labyrinth Mage");
	settings.Add("sebek",      true, "Guardian Sebek");
	settings.Add("neku",       true, "Guardian Neku");
	settings.Add("heishin2",   true, "Heishin 2nd");
	settings.Add("seto3",      true, "Seto 3rd");
	settings.Add("darknite",   true, "Darknite");
	settings.Add("nitemare",   true, "Nitemare");
        
	settings.CurrentDefaultParent = "15cards_allduelists";
	settings.Add("simon",     false, "Simon Muran");
	settings.Add("teana",     false, "Teana");
	settings.Add("jono",      false, "Jono");
	settings.Add("villager1", false, "Villager 1");
	settings.Add("villager2", false, "Villager 2");
	settings.Add("villager3", false, "Villager 3");
	settings.Add("seto",      false, "Seto 1");
	settings.Add("heishinW",  false, "Heishin 1 (win)");
	settings.Add("teana2",    false, "Teana 2");
	settings.Add("jono2",     false, "Jono 2");
	settings.Add("seto2",     false, "Seto 2nd");
	settings.Add("k",         false, "Duel Master K");
    
    vars.GetSplitList = (Func<Dictionary<string, KeyValuePair<int, bool>>>)(() =>
	{
		return new Dictionary<string, KeyValuePair<int, bool>>
		{   // name, (id, is_defeat)
			{"simon",     new KeyValuePair<int, bool>( 1, false)},
			{"teana",     new KeyValuePair<int, bool>( 2, false)},
			{"jono",      new KeyValuePair<int, bool>( 3, false)},
			{"villager1", new KeyValuePair<int, bool>( 4, false)},
			{"villager2", new KeyValuePair<int, bool>( 5, false)},
			{"villager3", new KeyValuePair<int, bool>( 6, false)},
			{"seto",      new KeyValuePair<int, bool>( 7, false)},
			{"heishinL",  new KeyValuePair<int, bool>( 8, true)},
			{"heishinW",  new KeyValuePair<int, bool>( 8, false)},
			{"rex",       new KeyValuePair<int, bool>( 9, false)},
			{"weevil",    new KeyValuePair<int, bool>(10, false)},
			{"mai",       new KeyValuePair<int, bool>(11, false)},
			{"keith",     new KeyValuePair<int, bool>(12, false)},
			{"shadi",     new KeyValuePair<int, bool>(13, false)},
			{"bakura",    new KeyValuePair<int, bool>(14, false)},
			{"pegasus",   new KeyValuePair<int, bool>(15, false)},
			{"isis",      new KeyValuePair<int, bool>(16, false)},
			{"kaiba",     new KeyValuePair<int, bool>(17, false)},
			{"soldier",   new KeyValuePair<int, bool>(18, false)},
			{"jono2",     new KeyValuePair<int, bool>(19, false)},
			{"teana2",    new KeyValuePair<int, bool>(20, false)},
			{"ocean",     new KeyValuePair<int, bool>(21, false)},
			{"secmeton",  new KeyValuePair<int, bool>(22, false)},
			{"forest",    new KeyValuePair<int, bool>(23, false)},
			{"anubisius", new KeyValuePair<int, bool>(24, false)},
			{"mountain",  new KeyValuePair<int, bool>(25, false)},
			{"atenza",    new KeyValuePair<int, bool>(26, false)},
			{"desert",    new KeyValuePair<int, bool>(27, false)},
			{"martis",    new KeyValuePair<int, bool>(28, false)},
			{"meadow",    new KeyValuePair<int, bool>(29, false)},
			{"kepura",    new KeyValuePair<int, bool>(30, false)},
			{"labyrinth", new KeyValuePair<int, bool>(31, false)},
			{"seto2",     new KeyValuePair<int, bool>(32, false)},
			{"sebek",     new KeyValuePair<int, bool>(33, false)},
			{"neku",      new KeyValuePair<int, bool>(34, false)},
			{"heishin2",  new KeyValuePair<int, bool>(35, false)},
			{"seto3",     new KeyValuePair<int, bool>(36, false)},
			{"darknite",  new KeyValuePair<int, bool>(37, false)},
			{"nitemare",  new KeyValuePair<int, bool>(38, false)},
			{"k",         new KeyValuePair<int, bool>(39, false)}
        };
    });
    
    vars.min_star = 1;
    vars.max_star = 5;
    
    // DuckStation 
    //   addresses and offsets
    vars.DS_baseAddress = 0x268cd370000;
    vars.DS_duelist_id_offset = 0x9B361;
    vars.DS_is_defeat_offset = 0x9B362;
    vars.DS_win_01_offset = 0x179A12;
    vars.DS_lost_01_offset = 0x9B32E;
    vars.DS_lost_02_offset = 0x1D561D;
    vars.DS_menu_id_or_something2_offset = 0xF0BB8;
    vars.DS_menu_transition_offset = 0xF0C08;
    //   the following values mimic the `old` object
    vars.duelist_id = 0x0;
    vars.is_defeat = 0x0;
    vars.win_01 = 0x0;
    vars.lost_01 = 0x0;
    vars.lost_02 = 0x0;
    vars.menu_id_or_something2 = 0x0;
    vars.menu_transition = 0x0;
}

init {
    print("ModuleMemorySize: "+modules.First().ModuleMemorySize);
    
    vars.isManualMemory = false;

    switch(modules.First().ModuleMemorySize) {
    case 10518528: version = "ePSXe 1.9.25";
                   break;
    case 20287488: version = "ePSXe 2.0.0";
                   break;
    case 22360064: version = "ePSXe 2.0.2";
                   break;
    case 12771328: version = "DuckStation";
                   vars.isManualMemory = true;
                   break;
    default: version = "";
		     return false;
    }
    
    vars.splits = vars.GetSplitList();
    
    refreshRate = 200.0 / 3;
}

update {
    if(vars.isManualMemory){
        
        old.duelist_id = vars.duelist_id;
        current.duelist_id = memory.ReadValue<byte>(new IntPtr(vars.DS_baseAddress + vars.DS_duelist_id_offset));
        vars.duelist_id = current.duelist_id;
        
        old.is_defeat = vars.is_defeat;
        current.is_defeat = memory.ReadValue<bool>(new IntPtr(vars.DS_baseAddress + vars.DS_is_defeat_offset));
        vars.is_defeat = current.is_defeat;
        
        old.win_01 = vars.win_01;
        current.win_01 = memory.ReadValue<byte>(new IntPtr(vars.DS_baseAddress + vars.DS_win_01_offset));
        vars.win_01 = current.win_01;
        
        old.lost_01 = vars.lost_01;
        current.lost_01 = memory.ReadValue<byte>(new IntPtr(vars.DS_baseAddress + vars.DS_lost_01_offset));
        vars.lost_01 = current.lost_01;
        
        old.lost_02 = vars.lost_02;
        current.lost_02 = memory.ReadValue<byte>(new IntPtr(vars.DS_baseAddress + vars.DS_lost_02_offset));
        vars.lost_02 = current.lost_02;
        
        old.menu_id_or_something2 = vars.menu_id_or_something2;
        current.menu_id_or_something2 = memory.ReadValue<byte>(new IntPtr(vars.DS_baseAddress + vars.DS_menu_id_or_something2_offset));
        vars.menu_id_or_something2 = current.menu_id_or_something2;
        
        old.menu_transition = vars.menu_transition;
        current.menu_transition = memory.ReadValue<byte>(new IntPtr(vars.DS_baseAddress + vars.DS_menu_transition_offset));
        vars.menu_transition = current.menu_transition;
    }
    
    return version != "";
}

start {
    return (
        old.menu_transition == 193 && current.menu_transition == 191
        && old.menu_id_or_something2 == 87 && current.menu_id_or_something2 == 84
    );
}

reset {
    bool isRaceRun = timer.CurrentTime.ToString().StartsWith("-");  
    if(isRaceRun) return false;
    
    return old.menu_transition == 193 && current.menu_transition == 191
            && current.menu_id_or_something2 == 84;
}

split {
    foreach(var split_ in vars.splits)
	{	
        var split_alias = split_.Key;
        var duelist_id = split_.Value.Key;
        var is_defeatsplit_ = split_.Value.Value;
        
		if(!settings.ContainsKey(split_alias) 
        || !settings[split_alias]
        || !vars.splits.ContainsKey(split_alias))
            continue;
        
        if (current.duelist_id != duelist_id 
        || is_defeatsplit_ && !current.is_defeat)
            continue;
        
        if(current.win_01 != old.win_01 
           && vars.min_star <= current.win_01 
           && current.win_01 <= vars.max_star
        || is_defeatsplit_ 
           && (current.lost_01 != old.lost_01 
               || current.lost_02 != old.lost_02)
        ) {
            vars.splits.Remove(split_.Key);
            return true;
        }
    }
    
    return false;
}

onStart {
    vars.splits = vars.GetSplitList();
}

onReset {
    vars.splits = vars.GetSplitList();
}

exit {
    refreshRate = 0.5;
}
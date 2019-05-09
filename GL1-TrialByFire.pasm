0:      set_episode 00000000
        set_floor_handler 00000000, 150
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        leti R64, 00000000
        map_designate_ex R60
        get_difflvl R83
        get_slotnumber R250
        ret 
1:      ret 
2:      p_action_disable 
        npc_nont
        disable_movement2 R250
        hud_hide 
        cine_enable 
        cam_zmin 
        ret 
3:      cam_zmout 
        cine_disable 
        hud_show 
        enable_movement2 R250
        npc_talk
        p_action_enable 
        ret 
150:    switch_jmp R0, 2:151:1
151:    leti R60, 000000ED
        leti R61, 00000000
        leti R62, 0000014D
        leti R63, FFFFFFF1
        p_setpos 00000000, R60
        call 310
        set R0
        bgm 00000001
        ret
310:    call 2
        message 0000044C, 'Intro Text.'
        add_msg 'Begin quest.'
        mesend 
        call 3
        ret 
400:    message 0000044C, 'Yes?'
        mesend
        jmp 402
402:    list R100, 'Who are you? <cr> Who do you work for? <cr> What is the reward? <cr> Nothing.'
        switch_jmp R100, 4:403:404:405:406
403:    message 0000044C, 'I am TURMS, a messenger.'
        add_msg 'My master does not like to appear <cr> in person. So he sends me.'
        mesend
        jmp 402
404:    message 0000044C, 'He will let you know, should <cr> you succeed in your mission.'
        mesend
        jmp 402
405:    message 0000044C, 'Meseta and an opportunity <cr> to work with us again.'
        mesend
        jmp 402
406:    message 0000044C, 'Very well. Please return <cr> when the dragon is slain.'
        mesend
        ret

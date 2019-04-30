0:      set_floor_handler 00000000, 150
        set_floor_handler 00000001, 160
        set_floor_handler 00000002, 170
        set_floor_handler 0000000B, 180
        set_qt_success 250
        get_difflvl R83
        ret 
1:      ret 
2:      disable_movement2 R250
        p_action_disable
        hud_hide
        cine_enable
        cam_zmin
        ret
3:      enable_movement2 R250
        p_action_enable
        hud_show
        cine_disable
        cam_zmout
        ret
150:    switch_jmp R0, 2:151:1
151:    leti R1, 00000020
        leti R2, 00000000
        leti R3, 00000026
        leti R4, 00002A68
        p_setpos 00000000, R1
        call 2
        message 0000044C, 'Good Evening.'
        add_msg 'My master has sent me to find a hunter.'
        add_msg 'He hopes you are up to the task.'
        add_msg 'There is a dragon terrorizing the Central Dome.'
        add_msg 'Return to me when it is slain for your reward.'
        mesend
        set R0
        bgm 00000000
        call 3
        ret
160:    ret
170:    ret
180:    ret
250:    ret
400:    switch_jmp R50, 2:401:406
401:    message 0000044C, 'Yes?'
        jmp 209
402:    add_msg 'I am TURMS, a messenger.'
        add_msg 'My master does not like to apear <cr> in person. So he sends me.'
        add_msg 'Anything else?'
        jmp 209
403:    add_msg 'He will let you know should <cr> you succeed in your mission.'
        add_msg 'Anything else?'
        jmp 209
404:    add_msg 'Meseta and opportunity.'
        add_msg 'Anything else?'
        jmp 209
405:    add_msg 'Very well. Please return <cr> when the dragon is slain.'
        mesend
        ret
406:    message 0000044C, 'So the dragon is slain. <cr> Excellent!'
        add_msg 'Someone very important <cr> is waiting for you just outside.'
        mesend
        ret
409:    list R100 'Who are you? <cr> Who do you work for? <cr> What is the reward? <cr> Nothing.'
        switch_jmp R100, 4:402:403:404:405
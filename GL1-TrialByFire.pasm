0:      set_episode 00000000
        set_floor_handler 00000000, 150
        set_qt_success 250
        leti R60, 00000000
        leti R61, 00000000
        leti R62, 00000000
        leti R63, 00000000
        map_designate R60
        get_difflvl R83
        ret 
1:      ret 
2:      disable_movement1 00000000
        p_action_disable
        hud_hide
        cine_enable
        cam_zmin
        ret
3:      enable_movement1 00000000
        p_action_enable
        hud_show
        cine_disable
        cam_zmout
        ret
150:    switch_jmp R0, 2:151:1
151:    leti R60, 00000020
        leti R60, 00000000
        leti R60, 00000026
        leti R60, 00002A68
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
250:    switch_jmp R83, 4:251:252:253:254
251:    window_msg 'You've been awarded <color 1>1<color 0> Meseta.'
        bgm 00000001
        winend
        pl_add_meseta2 00000001
        ret
252:    window_msg 'You've been awarded <color 1>1<color 0> Meseta.'
        bgm 00000001
        winend
        pl_add_meseta2 00000001
        ret
253:    window_msg 'You've been awarded <color 1>1<color 0> Meseta.'
        bgm 00000001
        winend
        pl_add_meseta2 00000001
        ret
254:    window_msg 'You've been awarded <color 1>1<color 0> Meseta.'
        bgm 00000001
        winend
        pl_add_meseta2 00000001
        ret
400:    switch_jmp R50, 2:401:407
401:    message 0000044C, 'Yes?'
        mesend
        jmp 402
402:    list R100 'Who are you? <cr> Who do you work for? <cr> What is the reward? <cr> Nothing.'
        switch_jmp R100, 4:403:404:405:406
403:    message 0000044C, 'I am TURMS, a messenger.'
        add_msg 'My master does not like to apear <cr> in person. So he sends me.'
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
407:    switch_jmp R51, 2:408:409
408:    set R51
        message 0000044C, 'So the dragon is slain. <cr> Excellent!'
        add_msg 'Someone very important <cr> is waiting for you just outside.'
        mesend
        ret
409:    message 0000044C, 'Someone very important <cr> is waiting for you just outside.'
        mesend
        ret
410:    message 0000044D, 'That dragon is no joke, <cr> I barely got out alive.'
        jmp 411
411:    list R100 'Who are you? <cr> What was the dragon like? <cr> Know about the client? <cr> Goodbye.'
        switch_jmp R100, 4:412:413:414:415
412:    message 0000044D, 'Ranger Gomez, thought I could <cr> take the dragon.'
        add_msg 'I was on the Gran Squal <cr> and have been working <cr> in the guild.'
        add_msg 'Guess I bit off more than <cr> I could chew.'
        mesend
        jmp 411
413:    message 0000044D, 'Huge. Breathes fire. <cr> Burrows around.'
        add_msg 'I hope that is the <cr> top of the food chain.'
        add_msg 'If there's anything <cr> bigger than that, <cr> I'll retire.'
        mesend
        jmp 411
414:    message 0000044D, 'Strange messenger, <cr> offering money.'
        add_msg 'Something just aint right <cr> about this job.'
        add_msg 'Did you hear how TURMS <cr> says master?'
        add_msg 'Can't tell if he's a slave <cr> or an employee.'
        mesend
        jmp 411
415:    message 0000044D, 'Good luck.'
        mesend
        ret
416:    message 0000044E, 'Contratules.'
        add_msg 'Looks like a winner is you.'
        add_msg 'Test complete.'
        mesend
        set R255
        ret
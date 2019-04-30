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
151:    leti R1 00000020
        leti R2 00000000
        leti R3 00000026
        leti R4 00002A68
        p_setpos 00000000, R1
        call 2
        message 0000044C, 'Good Evening.'
        add_msg 'My master has sent<cr>me to find a hunter.'
        add_msg 'He hopes you are<cr>up to the task.'
        add_msg 'The dragon has<cr>returned again.'
        add_msg 'Return to me when<cr>it is slain.'
        mesend
        set R0
        bgm 00000000
        call 3
        ret
160:    ret
170:    ret
180:    ret
250:    ret
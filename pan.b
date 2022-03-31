	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM e1 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 6: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 2
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 9
		;
		now.lock_is_occupied[ Index(((P3 *)_this)->proc, 3) ] = trpt->bup.ovals[5];
		now.lock_water_level[ Index(((P3 *)_this)->proc, 3) ] = trpt->bup.ovals[4];
		now.slide_status[ Index(((P3 *)_this)->proc, 3) ].higher = trpt->bup.ovals[3];
		now.slide_status[ Index(((P3 *)_this)->proc, 3) ].lower = trpt->bup.ovals[2];
		now.doors_status[ Index(((P3 *)_this)->proc, 3) ].higher = trpt->bup.ovals[1];
		now.doors_status[ Index(((P3 *)_this)->proc, 3) ].lower = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 9: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 11
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 17
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 17
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 20
		;
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 21
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 15: // STATE 22
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 28
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 17: // STATE 28
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 31
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P3 *)_this)->proc, 2) ], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 20: // STATE 1
		;
		((P2 *)_this)->num = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 3
		;
		XX = 1;
		unrecv(now.request_low[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 24: // STATE 5
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 25: // STATE 6
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 27: // STATE 12
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 28: // STATE 13
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 31: // STATE 20
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 32: // STATE 21
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 33: // STATE 22
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 34: // STATE 23
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 36: // STATE 25
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 37: // STATE 26
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 39: // STATE 33
		;
		XX = 1;
		unrecv(now.observed_low[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 40: // STATE 34
		;
		XX = 1;
		unrecv(now.request_high[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 42: // STATE 36
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 43: // STATE 37
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 45: // STATE 43
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 46: // STATE 44
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 49: // STATE 51
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 50: // STATE 52
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 51: // STATE 53
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 52: // STATE 54
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 54: // STATE 56
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 3) ]);
		;
		goto R999;

	case 55: // STATE 57
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 57: // STATE 64
		;
		XX = 1;
		unrecv(now.observed_high[ Index(((int)((P2 *)_this)->num), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 58: // STATE 71
		;
		((P2 *)_this)->num = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 73
		;
		((P2 *)_this)->num = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->num = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 60: // STATE 77
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ship */
;
		;
		;
		;
		
	case 63: // STATE 3
		;
		_m = unsend(now.request_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		;
		goto R999;
;
		;
		
	case 65: // STATE 8
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 66: // STATE 9
		;
		_m = unsend(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		;
		goto R999;
;
		;
		
	case 68: // STATE 12
		;
		_m = unsend(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		;
		goto R999;

	case 69: // STATE 19
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 72: // STATE 27
		;
		_m = unsend(now.request_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		;
		goto R999;
;
		;
		
	case 74: // STATE 33
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 75: // STATE 34
		;
		_m = unsend(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		;
		goto R999;
;
		;
		
	case 77: // STATE 37
		;
		_m = unsend(now.observed_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		;
		goto R999;

	case 78: // STATE 45
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 81: // STATE 53
		;
		_m = unsend(now.request_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		;
		goto R999;
;
		;
		
	case 83: // STATE 58
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 84: // STATE 59
		;
		_m = unsend(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		;
		goto R999;
;
		;
		
	case 86: // STATE 62
		;
		_m = unsend(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		;
		goto R999;

	case 87: // STATE 69
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 90: // STATE 77
		;
		_m = unsend(now.request_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		;
		goto R999;
;
		;
		
	case 92: // STATE 83
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 93: // STATE 84
		;
		_m = unsend(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 3) ]);
		;
		goto R999;
;
		;
		
	case 95: // STATE 87
		;
		_m = unsend(now.observed_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 3) ]);
		;
		goto R999;

	case 96: // STATE 95
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 98: // STATE 102
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 103
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 101: // STATE 105
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 106
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 110
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 104: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 106: // STATE 3
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 4
		;
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 109: // STATE 6
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 110: // STATE 9
		;
		_m = unsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 111: // STATE 10
		;
		XX = 1;
		unrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 113: // STATE 12
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 115: // STATE 14
		;
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 118: // STATE 20
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;

	case 119: // STATE 23
		;
		_m = unsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 120: // STATE 24
		;
		XX = 1;
		unrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 122: // STATE 26
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 123: // STATE 27
		;
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 125: // STATE 29
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 126: // STATE 32
		;
		_m = unsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 127: // STATE 33
		;
		XX = 1;
		unrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 129: // STATE 35
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 131: // STATE 37
		;
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 134: // STATE 43
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 46
		;
		_m = unsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 136: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;
	}


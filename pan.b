	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 10
		;
		now.lock_is_occupied = trpt->bup.ovals[5];
		now.lock_water_level = trpt->bup.ovals[4];
		now.slide_status.higher = trpt->bup.ovals[3];
		now.slide_status.lower = trpt->bup.ovals[2];
		now.doors_status.higher = trpt->bup.ovals[1];
		now.doors_status.lower = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 7: // STATE 11
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 12
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 21
		;
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 22
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 13: // STATE 23
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 25
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 31
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 31
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 34
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 41
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC monitor */
;
		;
		;
		;
		
	case 21: // STATE 3
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 22: // STATE 1
		;
		XX = 1;
		unrecv(now.request_low, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 25: // STATE 4
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 26: // STATE 5
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 27: // STATE 6
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 28: // STATE 7
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 30: // STATE 9
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 31: // STATE 10
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		
	case 32: // STATE 16
		goto R999;
;
		;
		;
		
	case 34: // STATE 14
		goto R999;

	case 35: // STATE 17
		;
		XX = 1;
		unrecv(now.observed_low[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 36: // STATE 19
		;
		XX = 1;
		unrecv(now.request_high, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 39: // STATE 22
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 40: // STATE 23
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 41: // STATE 24
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 42: // STATE 25
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 44: // STATE 27
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 45: // STATE 28
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 47: // STATE 35
		;
		XX = 1;
		unrecv(now.observed_high[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 48: // STATE 39
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
		
	case 51: // STATE 3
		;
		_m = unsend(now.request_high);
		;
		goto R999;
;
		;
		
	case 53: // STATE 8
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 54: // STATE 9
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 56: // STATE 12
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 57: // STATE 19
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 60: // STATE 27
		;
		_m = unsend(now.request_low);
		;
		goto R999;
;
		;
		
	case 62: // STATE 33
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 63: // STATE 34
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 65: // STATE 37
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 66: // STATE 45
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 69: // STATE 53
		;
		_m = unsend(now.request_low);
		;
		goto R999;
;
		;
		
	case 71: // STATE 58
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 72: // STATE 59
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 74: // STATE 62
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 75: // STATE 69
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 78: // STATE 77
		;
		_m = unsend(now.request_high);
		;
		goto R999;
;
		;
		
	case 80: // STATE 83
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 81: // STATE 84
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 83: // STATE 87
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 84: // STATE 95
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 86: // STATE 102
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 103
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 89: // STATE 105
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 106
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 110
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 92: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 94: // STATE 3
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 4
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 97: // STATE 6
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 9
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 99: // STATE 10
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 101: // STATE 12
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 103: // STATE 14
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 106: // STATE 20
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 23
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 108: // STATE 24
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 110: // STATE 26
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 27
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 113: // STATE 29
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 32
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 115: // STATE 33
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 117: // STATE 35
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 119: // STATE 37
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 122: // STATE 43
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 123: // STATE 46
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 124: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;
	}


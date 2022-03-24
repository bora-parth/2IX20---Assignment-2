#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - lock_env.pml:290 - [(run monitor())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 3, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lock_env.pml:291 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - lock_env.pml:295 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - lock_env.pml:297 - [((proc<1))] (11:0:6 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)_this)->proc)<1)))
			continue;
		/* merge: doors_status.lower = 2(11, 5, 11) */
		reached[4][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.doors_status.lower;
		now.doors_status.lower = 2;
#ifdef VAR_RANGES
		logval("doors_status.lower", now.doors_status.lower);
#endif
		;
		/* merge: doors_status.higher = 2(11, 6, 11) */
		reached[4][6] = 1;
		(trpt+1)->bup.ovals[1] = now.doors_status.higher;
		now.doors_status.higher = 2;
#ifdef VAR_RANGES
		logval("doors_status.higher", now.doors_status.higher);
#endif
		;
		/* merge: slide_status.lower = 2(11, 7, 11) */
		reached[4][7] = 1;
		(trpt+1)->bup.ovals[2] = now.slide_status.lower;
		now.slide_status.lower = 2;
#ifdef VAR_RANGES
		logval("slide_status.lower", now.slide_status.lower);
#endif
		;
		/* merge: slide_status.higher = 2(11, 8, 11) */
		reached[4][8] = 1;
		(trpt+1)->bup.ovals[3] = now.slide_status.higher;
		now.slide_status.higher = 2;
#ifdef VAR_RANGES
		logval("slide_status.higher", now.slide_status.higher);
#endif
		;
		/* merge: lock_water_level = 1(11, 9, 11) */
		reached[4][9] = 1;
		(trpt+1)->bup.ovals[4] = now.lock_water_level;
		now.lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		/* merge: lock_is_occupied = 0(11, 10, 11) */
		reached[4][10] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 7: // STATE 11 - lock_env.pml:304 - [(run lock(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		if (!(addproc(II, 1, 0, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 12 - lock_env.pml:305 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - lock_env.pml:306 - [((proc==1))] (28:0:2 - 1)
		IfNotBlocked
		reached[4][13] = 1;
		if (!((((int)((P4 *)_this)->proc)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b7(28, 14, 28) */
		reached[4][14] = 1;
		;
		/* merge: proc = 0(28, 18, 28) */
		reached[4][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[4][29] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 10: // STATE 18 - lock_env.pml:310 - [proc = 0] (0:28:1 - 3)
		IfNotBlocked
		reached[4][18] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[4][29] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 11: // STATE 19 - lock_env.pml:312 - [((proc==0))] (22:0:2 - 1)
		IfNotBlocked
		reached[4][19] = 1;
		if (!((((int)((P4 *)_this)->proc)==0)))
			continue;
		/* merge: ship_status[proc] = 3(22, 20, 22) */
		reached[4][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P4 *)_this)->proc), 1) ];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[:init::proc]", now.ship_status[ Index(((int)((P4 *)_this)->proc), 1) ]);
#endif
		;
		/* merge: ship_pos[proc] = 0(22, 21, 22) */
		reached[4][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]);
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = 0;
#ifdef VAR_RANGES
		logval("ship_pos[:init::proc]", ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 22 - lock_env.pml:313 - [(run ship(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!(addproc(II, 1, 1, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 23 - lock_env.pml:313 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 24 - lock_env.pml:314 - [(((proc>0)&&(proc<1)))] (28:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		if (!(((((int)((P4 *)_this)->proc)>0)&&(((int)((P4 *)_this)->proc)<1))))
			continue;
		/* merge: proc = (proc+1)(0, 25, 28) */
		reached[4][25] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[4][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 26 - lock_env.pml:315 - [((proc==1))] (37:0:2 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		if (!((((int)((P4 *)_this)->proc)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b8(37, 27, 37) */
		reached[4][27] = 1;
		;
		/* merge: proc = 0(37, 31, 37) */
		reached[4][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[4][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 31 - lock_env.pml:319 - [proc = 0] (0:37:1 - 3)
		IfNotBlocked
		reached[4][31] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[4][38] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 17: // STATE 32 - lock_env.pml:321 - [((proc<1))] (37:0:2 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (!((((int)((P4 *)_this)->proc)<1)))
			continue;
		/* merge: nr_of_ships_at_pos[ship_pos[proc]] = (nr_of_ships_at_pos[ship_pos[proc]]+1)(37, 33, 37) */
		reached[4][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[:init::proc]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ]));
#endif
		;
		/* merge: proc = (proc+1)(37, 34, 37) */
		reached[4][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[4][38] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 18: // STATE 41 - lock_env.pml:325 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][41] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monitor */
	case 19: // STATE 1 - lock_env.pml:271 - [assert(((0<=ship_pos[0])&&(ship_pos[0]<=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		spin_assert(((0<=((int)now.ship_pos[0]))&&(((int)now.ship_pos[0])<=1)), "((0<=ship_pos[0])&&(ship_pos[0]<=1))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 2 - lock_env.pml:283 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 21: // STATE 1 - lock_env.pml:232 - [request_low?1] (0:0:0 - 1)
		reached[2][1] = 1;
		if (q_zero(now.request_low))
		{	if (boq != now.request_low) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_low) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_low, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_low-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_low, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_low);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.request_low))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 22: // STATE 2 - lock_env.pml:234 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 3 - lock_env.pml:234 - [change_doors_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 1, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 4 - lock_env.pml:234 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][4] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 7 - lock_env.pml:237 - [((slide_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!((now.slide_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 8 - lock_env.pml:237 - [change_slide_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 1, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 27: // STATE 9 - lock_env.pml:237 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][9] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 12 - lock_env.pml:240 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 13 - lock_env.pml:242 - [(((lock_water_level!=2)&&(slide_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!(((now.lock_water_level!=2)&&(now.slide_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 14 - lock_env.pml:242 - [change_slide_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 2, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 15 - lock_env.pml:242 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][15] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 16 - lock_env.pml:242 - [change_doors_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 2, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 17 - lock_env.pml:242 - [doors_pos_changed?1] (27:0:0 - 1)
		reached[2][17] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: .(goto)(27, 22, 27) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(27, 26, 27) */
		reached[2][26] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 34: // STATE 18 - lock_env.pml:244 - [((lock_water_level==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((now.lock_water_level==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 19 - lock_env.pml:244 - [change_doors_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 2, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 20 - lock_env.pml:244 - [doors_pos_changed?1] (27:0:0 - 1)
		reached[2][20] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: .(goto)(27, 22, 27) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(27, 26, 27) */
		reached[2][26] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 37: // STATE 26 - lock_env.pml:248 - [.(goto)] (0:27:0 - 4)
		IfNotBlocked
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 23 - lock_env.pml:246 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 24 - lock_env.pml:246 - [(1)] (27:0:0 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(27, 26, 27) */
		reached[2][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 40: // STATE 27 - lock_env.pml:248 - [observed_low[0]?1] (0:0:0 - 1)
		reached[2][27] = 1;
		if (q_zero(now.observed_low[0]))
		{	if (boq != now.observed_low[0]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_low[0]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_low[0], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_low[0]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_low[0], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_low[0]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.observed_low[0]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 41: // STATE 29 - lock_env.pml:249 - [request_high?1] (0:0:0 - 1)
		reached[2][29] = 1;
		if (q_zero(now.request_high))
		{	if (boq != now.request_high) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_high) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_high, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_high-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_high, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_high);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.request_high))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 42: // STATE 30 - lock_env.pml:251 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 31 - lock_env.pml:251 - [change_doors_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 2, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 32 - lock_env.pml:251 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][32] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 35 - lock_env.pml:254 - [((slide_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!((now.slide_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 36 - lock_env.pml:254 - [change_slide_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 2, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 37 - lock_env.pml:254 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][37] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 48: // STATE 40 - lock_env.pml:257 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 41 - lock_env.pml:259 - [(((lock_water_level!=1)&&(slide_status.higher==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		if (!(((now.lock_water_level!=1)&&(now.slide_status.higher==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 42 - lock_env.pml:259 - [change_slide_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 1, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 43 - lock_env.pml:259 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][43] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 52: // STATE 44 - lock_env.pml:259 - [change_doors_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 1, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 45 - lock_env.pml:259 - [doors_pos_changed?1] (55:0:0 - 1)
		reached[2][45] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: .(goto)(55, 50, 55) */
		reached[2][50] = 1;
		;
		/* merge: .(goto)(55, 54, 55) */
		reached[2][54] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 54: // STATE 46 - lock_env.pml:261 - [((lock_water_level==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		if (!((now.lock_water_level==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 47 - lock_env.pml:261 - [change_doors_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 1, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 56: // STATE 48 - lock_env.pml:261 - [doors_pos_changed?1] (55:0:0 - 1)
		reached[2][48] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: .(goto)(55, 50, 55) */
		reached[2][50] = 1;
		;
		/* merge: .(goto)(55, 54, 55) */
		reached[2][54] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 57: // STATE 54 - lock_env.pml:265 - [.(goto)] (0:55:0 - 4)
		IfNotBlocked
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 51 - lock_env.pml:263 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 52 - lock_env.pml:263 - [(1)] (55:0:0 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(55, 54, 55) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 60: // STATE 55 - lock_env.pml:265 - [observed_high[0]?1] (0:0:0 - 1)
		reached[2][55] = 1;
		if (q_zero(now.observed_high[0]))
		{	if (boq != now.observed_high[0]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_high[0]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_high[0], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_high[0]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_high[0], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_high[0]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.observed_high[0]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 61: // STATE 60 - lock_env.pml:267 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][60] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ship */
	case 62: // STATE 1 - lock_env.pml:123 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 2 - lock_env.pml:125 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 3 - lock_env.pml:126 - [request_high!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.request_high))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high, 0, 1, 1);
		if (q_zero(now.request_high)) { boq = now.request_high; };
		_m = 2; goto P999; /* 0 */
	case 65: // STATE 4 - lock_env.pml:127 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 5 - lock_env.pml:129 - [(!(lock_is_occupied))] (9:0:3 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		/* merge: ship_status[shipid] = 4(9, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(9, 7, 9) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(9, 8, 9) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 67: // STATE 9 - lock_env.pml:133 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 11 - lock_env.pml:135 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 12 - lock_env.pml:136 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 70: // STATE 16 - lock_env.pml:139 - [(((doors_status.higher==1)&&!(lock_is_occupied)))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(((now.doors_status.higher==1)&& !(((int)now.lock_is_occupied)))))
			continue;
		/* merge: ship_status[shipid] = 4(107, 17, 107) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(107, 18, 107) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 19, 107) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b2(107, 20, 107) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 71: // STATE 25 - lock_env.pml:145 - [((ship_status[shipid]==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 26 - lock_env.pml:147 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 27 - lock_env.pml:148 - [request_low!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.request_low))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low, 0, 1, 1);
		if (q_zero(now.request_low)) { boq = now.request_low; };
		_m = 2; goto P999; /* 0 */
	case 74: // STATE 28 - lock_env.pml:149 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 29 - lock_env.pml:152 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0)))] (34:0:4 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)==0))))
			continue;
		/* merge: ship_status[shipid] = 5(34, 30, 34) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(34, 31, 34) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(34, 32, 34) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(34, 33, 34) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 76: // STATE 34 - lock_env.pml:157 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 77: // STATE 36 - lock_env.pml:160 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]==2)&&((ship_pos[shipid]-1)!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 37 - lock_env.pml:161 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 79: // STATE 41 - lock_env.pml:165 - [(((doors_status.lower==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!(((now.doors_status.lower==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)==0)))))
			continue;
		/* merge: ship_status[shipid] = 5(107, 42, 107) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(107, 43, 107) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(107, 44, 107) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 45, 107) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b3(107, 46, 107) */
		reached[1][46] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 80: // STATE 51 - lock_env.pml:172 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]!=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 52 - lock_env.pml:174 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 53 - lock_env.pml:175 - [request_low!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (q_full(now.request_low))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low, 0, 1, 1);
		if (q_zero(now.request_low)) { boq = now.request_low; };
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 54 - lock_env.pml:176 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 55 - lock_env.pml:178 - [(!(lock_is_occupied))] (59:0:3 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		/* merge: ship_status[shipid] = 2(59, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(59, 57, 59) */
		reached[1][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(59, 58, 59) */
		reached[1][58] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 85: // STATE 59 - lock_env.pml:182 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 86: // STATE 61 - lock_env.pml:184 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 62 - lock_env.pml:185 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 88: // STATE 66 - lock_env.pml:188 - [(((doors_status.lower==1)&&!(lock_is_occupied)))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!(((now.doors_status.lower==1)&& !(((int)now.lock_is_occupied)))))
			continue;
		/* merge: ship_status[shipid] = 2(107, 67, 107) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(107, 68, 107) */
		reached[1][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 69, 107) */
		reached[1][69] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b4(107, 70, 107) */
		reached[1][70] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 89: // STATE 75 - lock_env.pml:194 - [((ship_status[shipid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 76 - lock_env.pml:196 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 77 - lock_env.pml:197 - [request_high!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (q_full(now.request_high))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high, 0, 1, 1);
		if (q_zero(now.request_high)) { boq = now.request_high; };
		_m = 2; goto P999; /* 0 */
	case 92: // STATE 78 - lock_env.pml:198 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 79 - lock_env.pml:201 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==1)))] (84:0:4 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)==1))))
			continue;
		/* merge: ship_status[shipid] = 3(84, 80, 84) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(84, 81, 84) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(84, 82, 84) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(84, 83, 84) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 94: // STATE 84 - lock_env.pml:206 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 95: // STATE 86 - lock_env.pml:209 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]==2)&&((ship_pos[shipid]+1)!=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 87 - lock_env.pml:210 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 97: // STATE 91 - lock_env.pml:214 - [(((doors_status.higher==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==1))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!(((now.doors_status.higher==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)==1)))))
			continue;
		/* merge: ship_status[shipid] = 3(107, 92, 107) */
		reached[1][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(107, 93, 107) */
		reached[1][93] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(107, 94, 107) */
		reached[1][94] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 95, 107) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b5(107, 96, 107) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 98: // STATE 101 - lock_env.pml:221 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 102 - lock_env.pml:222 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 103 - lock_env.pml:222 - [ship_status[shipid] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 104 - lock_env.pml:223 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 105 - lock_env.pml:224 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 106 - lock_env.pml:224 - [ship_status[shipid] = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 110 - lock_env.pml:226 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC lock */
	case 105: // STATE 1 - lock_env.pml:80 - [change_doors_pos?2] (0:0:0 - 1)
		reached[0][1] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_doors_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_doors_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 106: // STATE 2 - lock_env.pml:82 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 3 - lock_env.pml:82 - [doors_status.lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.doors_status.lower;
		now.doors_status.lower = 1;
#ifdef VAR_RANGES
		logval("doors_status.lower", now.doors_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 4 - lock_env.pml:83 - [lock_water_level = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 2;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 5 - lock_env.pml:84 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 6 - lock_env.pml:84 - [doors_status.lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.doors_status.lower;
		now.doors_status.lower = 2;
#ifdef VAR_RANGES
		logval("doors_status.lower", now.doors_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 9 - lock_env.pml:86 - [doors_pos_changed!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 112: // STATE 10 - lock_env.pml:87 - [change_doors_pos?1] (0:0:0 - 1)
		reached[0][10] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_doors_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_doors_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 113: // STATE 11 - lock_env.pml:89 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 12 - lock_env.pml:89 - [doors_status.higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.doors_status.higher;
		now.doors_status.higher = 1;
#ifdef VAR_RANGES
		logval("doors_status.higher", now.doors_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 13 - lock_env.pml:91 - [(((doors_status.lower==2)&&(slide_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((now.doors_status.lower==2)&&(now.slide_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 14 - lock_env.pml:92 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 15 - lock_env.pml:93 - [(((doors_status.lower==1)||(slide_status.lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((now.doors_status.lower==1)||(now.slide_status.lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 19 - lock_env.pml:95 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 20 - lock_env.pml:95 - [doors_status.higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.doors_status.higher;
		now.doors_status.higher = 2;
#ifdef VAR_RANGES
		logval("doors_status.higher", now.doors_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 23 - lock_env.pml:97 - [doors_pos_changed!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][23] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 121: // STATE 24 - lock_env.pml:98 - [change_slide_pos?2] (0:0:0 - 1)
		reached[0][24] = 1;
		if (q_zero(now.change_slide_pos))
		{	if (boq != now.change_slide_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_slide_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_slide_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 122: // STATE 25 - lock_env.pml:100 - [((slide_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((now.slide_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 26 - lock_env.pml:100 - [slide_status.lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = now.slide_status.lower;
		now.slide_status.lower = 1;
#ifdef VAR_RANGES
		logval("slide_status.lower", now.slide_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 27 - lock_env.pml:101 - [lock_water_level = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 2;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 28 - lock_env.pml:102 - [((slide_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((now.slide_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 29 - lock_env.pml:102 - [slide_status.lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.slide_status.lower;
		now.slide_status.lower = 2;
#ifdef VAR_RANGES
		logval("slide_status.lower", now.slide_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 32 - lock_env.pml:104 - [slide_pos_changed!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][32] = 1;
		if (q_full(now.slide_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed, 0, 1, 1);
		if (q_zero(now.slide_pos_changed)) { boq = now.slide_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 128: // STATE 33 - lock_env.pml:105 - [change_slide_pos?1] (0:0:0 - 1)
		reached[0][33] = 1;
		if (q_zero(now.change_slide_pos))
		{	if (boq != now.change_slide_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_slide_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_slide_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 129: // STATE 34 - lock_env.pml:107 - [((slide_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((now.slide_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 35 - lock_env.pml:107 - [slide_status.higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.slide_status.higher;
		now.slide_status.higher = 1;
#ifdef VAR_RANGES
		logval("slide_status.higher", now.slide_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 36 - lock_env.pml:109 - [(((doors_status.lower==2)&&(slide_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((now.doors_status.lower==2)&&(now.slide_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 37 - lock_env.pml:110 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 38 - lock_env.pml:111 - [(((doors_status.lower==1)||(slide_status.lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!(((now.doors_status.lower==1)||(now.slide_status.lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 42 - lock_env.pml:113 - [((slide_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.slide_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 43 - lock_env.pml:113 - [slide_status.higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.slide_status.higher;
		now.slide_status.higher = 2;
#ifdef VAR_RANGES
		logval("slide_status.higher", now.slide_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 46 - lock_env.pml:115 - [slide_pos_changed!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][46] = 1;
		if (q_full(now.slide_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed, 0, 1, 1);
		if (q_zero(now.slide_pos_changed)) { boq = now.slide_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 137: // STATE 50 - lock_env.pml:117 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


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

		 /* CLAIM f1 */
	case 3: // STATE 1 - _spin_nvr.tmp:14 - [(!(request_high[(4-1)]?[1]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !(not_RV(now.request_high[ Index((4-1), 4) ]) && \
		(q_len(now.request_high[ Index((4-1), 4) ]) > 0 \
		&& qrecv(now.request_high[ Index((4-1), 4) ], 0, 0, 0) == 1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:19 - [(!(request_high[(4-1)]?[1]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!( !(not_RV(now.request_high[ Index((4-1), 4) ]) && \
		(q_len(now.request_high[ Index((4-1), 4) ]) > 0 \
		&& qrecv(now.request_high[ Index((4-1), 4) ], 0, 0, 0) == 1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM e1 */
	case 6: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(request_low[0]?[1]))&&!((doors_status[0].lower==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !( !(not_RV(now.request_low[0]) && \
		(q_len(now.request_low[0]) > 0 \
		&& qrecv(now.request_low[0], 0, 0, 0) == 1)))&& !((now.doors_status[0].lower==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:8 - [(!((doors_status[0].lower==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!( !((now.doors_status[0].lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 9: // STATE 1 - lock_env_multiple.pml:319 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - lock_env_multiple.pml:323 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - lock_env_multiple.pml:325 - [((proc<4))] (10:0:6 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!((((int)((P3 *)_this)->proc)<4)))
			continue;
		/* merge: doors_status[proc].lower = 2(10, 4, 10) */
		reached[3][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.doors_status[ Index(((int)((P3 *)_this)->proc), 4) ].lower;
		now.doors_status[ Index(((P3 *)_this)->proc, 4) ].lower = 2;
#ifdef VAR_RANGES
		logval("doors_status[:init::proc].lower", now.doors_status[ Index(((int)((P3 *)_this)->proc), 4) ].lower);
#endif
		;
		/* merge: doors_status[proc].higher = 2(10, 5, 10) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals[1] = now.doors_status[ Index(((int)((P3 *)_this)->proc), 4) ].higher;
		now.doors_status[ Index(((P3 *)_this)->proc, 4) ].higher = 2;
#ifdef VAR_RANGES
		logval("doors_status[:init::proc].higher", now.doors_status[ Index(((int)((P3 *)_this)->proc), 4) ].higher);
#endif
		;
		/* merge: slide_status[proc].lower = 2(10, 6, 10) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals[2] = now.slide_status[ Index(((int)((P3 *)_this)->proc), 4) ].lower;
		now.slide_status[ Index(((P3 *)_this)->proc, 4) ].lower = 2;
#ifdef VAR_RANGES
		logval("slide_status[:init::proc].lower", now.slide_status[ Index(((int)((P3 *)_this)->proc), 4) ].lower);
#endif
		;
		/* merge: slide_status[proc].higher = 2(10, 7, 10) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals[3] = now.slide_status[ Index(((int)((P3 *)_this)->proc), 4) ].higher;
		now.slide_status[ Index(((P3 *)_this)->proc, 4) ].higher = 2;
#ifdef VAR_RANGES
		logval("slide_status[:init::proc].higher", now.slide_status[ Index(((int)((P3 *)_this)->proc), 4) ].higher);
#endif
		;
		/* merge: lock_water_level[proc] = 1(10, 8, 10) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[4] = now.lock_water_level[ Index(((int)((P3 *)_this)->proc), 4) ];
		now.lock_water_level[ Index(((P3 *)_this)->proc, 4) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[:init::proc]", now.lock_water_level[ Index(((int)((P3 *)_this)->proc), 4) ]);
#endif
		;
		/* merge: lock_is_occupied[proc] = 0(10, 9, 10) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.lock_is_occupied[ Index(((int)((P3 *)_this)->proc), 4) ]);
		now.lock_is_occupied[ Index(((P3 *)_this)->proc, 4) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[:init::proc]", ((int)now.lock_is_occupied[ Index(((int)((P3 *)_this)->proc), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 12: // STATE 10 - lock_env_multiple.pml:332 - [(run lock(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!(addproc(II, 1, 0, ((int)((P3 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - lock_env_multiple.pml:333 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = (((int)((P3 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - lock_env_multiple.pml:334 - [((proc==4))] (25:0:2 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((((int)((P3 *)_this)->proc)==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->proc = 0;
		/* merge: goto :b8(25, 13, 25) */
		reached[3][13] = 1;
		;
		/* merge: proc = 0(25, 17, 25) */
		reached[3][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 17 - lock_env_multiple.pml:338 - [proc = 0] (0:25:1 - 3)
		IfNotBlocked
		reached[3][17] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 18 - lock_env_multiple.pml:340 - [((proc<2))] (21:0:2 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		if (!((((int)((P3 *)_this)->proc)<2)))
			continue;
		/* merge: ship_status[proc] = 3(21, 19, 21) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P3 *)_this)->proc), 2) ];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[:init::proc]", now.ship_status[ Index(((int)((P3 *)_this)->proc), 2) ]);
#endif
		;
		/* merge: ship_pos[proc] = 0(21, 20, 21) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]);
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = 0;
#ifdef VAR_RANGES
		logval("ship_pos[:init::proc]", ((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 21 - lock_env_multiple.pml:341 - [(run ship(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		if (!(addproc(II, 1, 1, ((int)((P3 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 22 - lock_env_multiple.pml:341 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = (((int)((P3 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 23 - lock_env_multiple.pml:342 - [((proc==2))] (34:0:2 - 1)
		IfNotBlocked
		reached[3][23] = 1;
		if (!((((int)((P3 *)_this)->proc)==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->proc = 0;
		/* merge: goto :b9(34, 24, 34) */
		reached[3][24] = 1;
		;
		/* merge: proc = 0(34, 28, 34) */
		reached[3][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 20: // STATE 28 - lock_env_multiple.pml:346 - [proc = 0] (0:34:1 - 3)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 29 - lock_env_multiple.pml:348 - [((proc<2))] (34:0:2 - 1)
		IfNotBlocked
		reached[3][29] = 1;
		if (!((((int)((P3 *)_this)->proc)<2)))
			continue;
		/* merge: nr_of_ships_at_pos[ship_pos[proc]] = (nr_of_ships_at_pos[ship_pos[proc]]+1)(34, 30, 34) */
		reached[3][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P3 *)_this)->proc, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]), 5) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[:init::proc]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]), 5) ]));
#endif
		;
		/* merge: proc = (proc+1)(34, 31, 34) */
		reached[3][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = (((int)((P3 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 38 - lock_env_multiple.pml:352 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 23: // STATE 1 - lock_env_multiple.pml:242 - [num = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->num);
		((P2 *)_this)->num = 0;
#ifdef VAR_RANGES
		logval("main_control:num", ((int)((P2 *)_this)->num));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 2 - lock_env_multiple.pml:244 - [((num<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)((P2 *)_this)->num)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 3 - lock_env_multiple.pml:246 - [request_low[num]?1] (0:0:0 - 1)
		reached[2][3] = 1;
		if (q_zero(now.request_low[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.request_low[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_low[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_low[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_low[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_low[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_low[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.request_low[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 26: // STATE 4 - lock_env_multiple.pml:249 - [((doors_status[num].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->num), 4) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 5 - lock_env_multiple.pml:249 - [change_doors_pos[num]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 1, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 6 - lock_env_multiple.pml:249 - [doors_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][6] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 29: // STATE 11 - lock_env_multiple.pml:253 - [((slide_status[num].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->num), 4) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 12 - lock_env_multiple.pml:253 - [change_slide_pos[num]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 1, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 13 - lock_env_multiple.pml:253 - [slide_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][13] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 32: // STATE 18 - lock_env_multiple.pml:257 - [((doors_status[num].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->num), 4) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 19 - lock_env_multiple.pml:259 - [(((lock_water_level[num]!=2)&&(slide_status[num].lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (!(((now.lock_water_level[ Index(((int)((P2 *)_this)->num), 4) ]!=2)&&(now.slide_status[ Index(((int)((P2 *)_this)->num), 4) ].lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 20 - lock_env_multiple.pml:259 - [change_slide_pos[num]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 2, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 21 - lock_env_multiple.pml:259 - [slide_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][21] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 36: // STATE 22 - lock_env_multiple.pml:259 - [change_doors_pos[num]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 2, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 23 - lock_env_multiple.pml:259 - [doors_pos_changed[num]?1] (33:0:0 - 1)
		reached[2][23] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
		/* merge: .(goto)(33, 28, 33) */
		reached[2][28] = 1;
		;
		/* merge: .(goto)(33, 32, 33) */
		reached[2][32] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 38: // STATE 24 - lock_env_multiple.pml:261 - [((lock_water_level[num]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!((now.lock_water_level[ Index(((int)((P2 *)_this)->num), 4) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 25 - lock_env_multiple.pml:261 - [change_doors_pos[num]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 2, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 26 - lock_env_multiple.pml:261 - [doors_pos_changed[num]?1] (33:0:0 - 1)
		reached[2][26] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
		/* merge: .(goto)(33, 28, 33) */
		reached[2][28] = 1;
		;
		/* merge: .(goto)(33, 32, 33) */
		reached[2][32] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 41: // STATE 32 - lock_env_multiple.pml:265 - [.(goto)] (0:33:0 - 4)
		IfNotBlocked
		reached[2][32] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 29 - lock_env_multiple.pml:263 - [((doors_status[num].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->num), 4) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 30 - lock_env_multiple.pml:263 - [(1)] (33:0:0 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(33, 32, 33) */
		reached[2][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 44: // STATE 33 - lock_env_multiple.pml:265 - [observed_low[num]?1] (0:0:0 - 1)
		reached[2][33] = 1;
		if (q_zero(now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.observed_low[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 45: // STATE 35 - lock_env_multiple.pml:267 - [request_high[num]?1] (0:0:0 - 1)
		reached[2][35] = 1;
		if (q_zero(now.request_high[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.request_high[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_high[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_high[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_high[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_high[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_high[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.request_high[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 46: // STATE 36 - lock_env_multiple.pml:270 - [((doors_status[num].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->num), 4) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 37 - lock_env_multiple.pml:270 - [change_doors_pos[num]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 2, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 38 - lock_env_multiple.pml:270 - [doors_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][38] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 49: // STATE 43 - lock_env_multiple.pml:274 - [((slide_status[num].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->num), 4) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 44 - lock_env_multiple.pml:274 - [change_slide_pos[num]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 2, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 45 - lock_env_multiple.pml:274 - [slide_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][45] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 52: // STATE 50 - lock_env_multiple.pml:278 - [((doors_status[num].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->num), 4) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 51 - lock_env_multiple.pml:280 - [(((lock_water_level[num]!=1)&&(slide_status[num].higher==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!(((now.lock_water_level[ Index(((int)((P2 *)_this)->num), 4) ]!=1)&&(now.slide_status[ Index(((int)((P2 *)_this)->num), 4) ].higher==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 52 - lock_env_multiple.pml:280 - [change_slide_pos[num]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 1, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 55: // STATE 53 - lock_env_multiple.pml:280 - [slide_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][53] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 56: // STATE 54 - lock_env_multiple.pml:280 - [change_doors_pos[num]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][54] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 1, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 57: // STATE 55 - lock_env_multiple.pml:280 - [doors_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][55] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 58: // STATE 56 - lock_env_multiple.pml:282 - [((lock_water_level[num]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][56] = 1;
		if (!((now.lock_water_level[ Index(((int)((P2 *)_this)->num), 4) ]==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 57 - lock_env_multiple.pml:282 - [change_doors_pos[num]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][57] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ], 0, 1, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->num), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 60: // STATE 58 - lock_env_multiple.pml:282 - [doors_pos_changed[num]?1] (0:0:0 - 1)
		reached[2][58] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->num), 4) ]))
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
	case 61: // STATE 61 - lock_env_multiple.pml:284 - [((doors_status[num].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][61] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->num), 4) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 65 - lock_env_multiple.pml:286 - [observed_high[num]?1] (76:0:1 - 5)
		reached[2][65] = 1;
		if (q_zero(now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ]))
		{	if (boq != now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.observed_high[ Index(((int)((P2 *)_this)->num), 4) ]))
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
		/* merge: goto :b7(76, 66, 76) */
		reached[2][66] = 1;
		;
		/* merge: num = (num+1)(76, 73, 76) */
		reached[2][73] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->num);
		((P2 *)_this)->num = (((int)((P2 *)_this)->num)+1);
#ifdef VAR_RANGES
		logval("main_control:num", ((int)((P2 *)_this)->num));
#endif
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[2][77] = 1;
		;
		_m = 4; goto P999; /* 3 */
	case 63: // STATE 73 - lock_env_multiple.pml:291 - [num = (num+1)] (0:76:1 - 4)
		IfNotBlocked
		reached[2][73] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->num);
		((P2 *)_this)->num = (((int)((P2 *)_this)->num)+1);
#ifdef VAR_RANGES
		logval("main_control:num", ((int)((P2 *)_this)->num));
#endif
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[2][77] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 64: // STATE 74 - lock_env_multiple.pml:292 - [((num==4))] (76:0:2 - 1)
		IfNotBlocked
		reached[2][74] = 1;
		if (!((((int)((P2 *)_this)->num)==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: num */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->num;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->num = 0;
		/* merge: num = 0(0, 75, 76) */
		reached[2][75] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->num);
		((P2 *)_this)->num = 0;
#ifdef VAR_RANGES
		logval("main_control:num", ((int)((P2 *)_this)->num));
#endif
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[2][77] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 65: // STATE 79 - lock_env_multiple.pml:294 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][79] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ship */
	case 66: // STATE 1 - lock_env_multiple.pml:133 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 2 - lock_env_multiple.pml:135 - [((doors_status[(ship_pos[shipid]-1)].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 3 - lock_env_multiple.pml:136 - [request_high[(ship_pos[shipid]-1)]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.request_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ], 0, 1, 1);
		if (q_zero(now.request_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])) { boq = now.request_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 69: // STATE 4 - lock_env_multiple.pml:137 - [((doors_status[(ship_pos[shipid]-1)].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 5 - lock_env_multiple.pml:139 - [(!(lock_is_occupied[(ship_pos[shipid]-1)]))] (9:0:3 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]))))
			continue;
		/* merge: ship_status[shipid] = 4(9, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 1(9, 7, 9) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 4) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(9, 8, 9) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 71: // STATE 9 - lock_env_multiple.pml:143 - [observed_high[(ship_pos[shipid]-1)]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (q_full(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ], 0, 1, 1);
		if (q_zero(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])) { boq = now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 72: // STATE 11 - lock_env_multiple.pml:145 - [(lock_is_occupied[(ship_pos[shipid]-1)])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 12 - lock_env_multiple.pml:146 - [observed_high[(ship_pos[shipid]-1)]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (q_full(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ], 0, 1, 1);
		if (q_zero(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])) { boq = now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 74: // STATE 16 - lock_env_multiple.pml:149 - [(((doors_status[(ship_pos[shipid]-1)].higher==1)&&!(lock_is_occupied[(ship_pos[shipid]-1)])))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ].higher==1)&& !(((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])))))
			continue;
		/* merge: ship_status[shipid] = 4(107, 17, 107) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 1(107, 18, 107) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 4) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 19, 107) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		/* merge: goto :b2(107, 20, 107) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 75: // STATE 25 - lock_env_multiple.pml:155 - [((ship_status[shipid]==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 26 - lock_env_multiple.pml:157 - [((doors_status[(ship_pos[shipid]-1)].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 27 - lock_env_multiple.pml:158 - [request_low[(ship_pos[shipid]-1)]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.request_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ], 0, 1, 1);
		if (q_zero(now.request_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])) { boq = now.request_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 78: // STATE 28 - lock_env_multiple.pml:159 - [((doors_status[(ship_pos[shipid]-1)].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 29 - lock_env_multiple.pml:162 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0)))] (34:0:4 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 5) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)==0))))
			continue;
		/* merge: ship_status[shipid] = 5(34, 30, 34) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 0(34, 31, 34) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 4) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(34, 32, 34) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(34, 33, 34) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 80: // STATE 34 - lock_env_multiple.pml:167 - [observed_low[ship_pos[shipid]]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (q_full(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ], 0, 1, 1);
		if (q_zero(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])) { boq = now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 81: // STATE 36 - lock_env_multiple.pml:170 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]==2)&&((ship_pos[shipid]-1)!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 5) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 37 - lock_env_multiple.pml:171 - [observed_low[(ship_pos[shipid]-1)]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (q_full(now.observed_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ], 0, 1, 1);
		if (q_zero(now.observed_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])) { boq = now.observed_low[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 41 - lock_env_multiple.pml:175 - [(((doors_status[(ship_pos[shipid]-1)].lower==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!(((now.doors_status[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ].lower==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 5) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)==0)))))
			continue;
		/* merge: ship_status[shipid] = 5(107, 42, 107) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[(ship_pos[shipid]-1)] = 0(107, 43, 107) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		now.lock_is_occupied[ Index((now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ]-1), 4) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[(ship_pos[ship:shipid]-1)]", ((int)now.lock_is_occupied[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(107, 44, 107) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 45, 107) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		/* merge: goto :b3(107, 46, 107) */
		reached[1][46] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 84: // STATE 51 - lock_env_multiple.pml:182 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]!=4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 52 - lock_env_multiple.pml:184 - [((doors_status[ship_pos[shipid]].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 53 - lock_env_multiple.pml:185 - [request_low[ship_pos[shipid]]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (q_full(now.request_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ], 0, 1, 1);
		if (q_zero(now.request_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])) { boq = now.request_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 87: // STATE 54 - lock_env_multiple.pml:186 - [((doors_status[ship_pos[shipid]].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 55 - lock_env_multiple.pml:188 - [(!(lock_is_occupied[ship_pos[shipid]]))] (59:0:3 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]))))
			continue;
		/* merge: ship_status[shipid] = 2(59, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 1(59, 57, 59) */
		reached[1][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(59, 58, 59) */
		reached[1][58] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 89: // STATE 59 - lock_env_multiple.pml:192 - [observed_low[ship_pos[shipid]]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (q_full(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ], 0, 1, 1);
		if (q_zero(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])) { boq = now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 90: // STATE 61 - lock_env_multiple.pml:194 - [(lock_is_occupied[ship_pos[shipid]])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!(((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 62 - lock_env_multiple.pml:195 - [observed_low[ship_pos[shipid]]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (q_full(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ], 0, 1, 1);
		if (q_zero(now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])) { boq = now.observed_low[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 92: // STATE 66 - lock_env_multiple.pml:198 - [(((doors_status[ship_pos[shipid]].lower==1)&&!(lock_is_occupied[ship_pos[shipid]])))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!(((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ].lower==1)&& !(((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])))))
			continue;
		/* merge: ship_status[shipid] = 2(107, 67, 107) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 1(107, 68, 107) */
		reached[1][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 69, 107) */
		reached[1][69] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		/* merge: goto :b4(107, 70, 107) */
		reached[1][70] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 93: // STATE 75 - lock_env_multiple.pml:204 - [((ship_status[shipid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 76 - lock_env_multiple.pml:206 - [((doors_status[ship_pos[shipid]].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 77 - lock_env_multiple.pml:207 - [request_high[ship_pos[shipid]]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (q_full(now.request_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ], 0, 1, 1);
		if (q_zero(now.request_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])) { boq = now.request_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 96: // STATE 78 - lock_env_multiple.pml:208 - [((doors_status[ship_pos[shipid]].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 79 - lock_env_multiple.pml:211 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==4)))] (84:0:4 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 5) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)==4))))
			continue;
		/* merge: ship_status[shipid] = 3(84, 80, 84) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 0(84, 81, 84) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(84, 82, 84) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(84, 83, 84) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 98: // STATE 84 - lock_env_multiple.pml:216 - [observed_high[(ship_pos[shipid]-1)]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (q_full(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ], 0, 1, 1);
		if (q_zero(now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])) { boq = now.observed_high[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 99: // STATE 86 - lock_env_multiple.pml:219 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]==2)&&((ship_pos[shipid]+1)!=4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 5) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)!=4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 87 - lock_env_multiple.pml:220 - [observed_high[ship_pos[shipid]]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (q_full(now.observed_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ], 0, 1, 1);
		if (q_zero(now.observed_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])) { boq = now.observed_high[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 101: // STATE 91 - lock_env_multiple.pml:224 - [(((doors_status[ship_pos[shipid]].higher==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==4))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!(((now.doors_status[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ].higher==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 5) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)==4)))))
			continue;
		/* merge: ship_status[shipid] = 3(107, 92, 107) */
		reached[1][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[ship_pos[shipid]] = 0(107, 93, 107) */
		reached[1][93] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.lock_is_occupied[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship_pos[ship:shipid]]", ((int)now.lock_is_occupied[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(107, 94, 107) */
		reached[1][94] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 95, 107) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 5) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 5) ]));
#endif
		;
		/* merge: goto :b5(107, 96, 107) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 102: // STATE 101 - lock_env_multiple.pml:231 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 102 - lock_env_multiple.pml:232 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 103 - lock_env_multiple.pml:232 - [ship_status[shipid] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 104 - lock_env_multiple.pml:233 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 105 - lock_env_multiple.pml:234 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 106 - lock_env_multiple.pml:234 - [ship_status[shipid] = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 110 - lock_env_multiple.pml:236 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC lock */
	case 109: // STATE 1 - lock_env_multiple.pml:90 - [change_doors_pos[lockid]?2] (0:0:0 - 1)
		reached[0][1] = 1;
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
		{	if (boq != now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
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
	case 110: // STATE 2 - lock_env_multiple.pml:92 - [((doors_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 3 - lock_env_multiple.pml:92 - [doors_status[lockid].lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower;
		now.doors_status[ Index(((P0 *)_this)->lockid, 4) ].lower = 1;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].lower", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 4 - lock_env_multiple.pml:93 - [lock_water_level[lockid] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ];
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 4) ] = 2;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 5 - lock_env_multiple.pml:94 - [((doors_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 6 - lock_env_multiple.pml:94 - [doors_status[lockid].lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower;
		now.doors_status[ Index(((P0 *)_this)->lockid, 4) ].lower = 2;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].lower", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 9 - lock_env_multiple.pml:96 - [doors_pos_changed[lockid]!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 1, 1);
		if (q_zero(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ])) { boq = now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 116: // STATE 10 - lock_env_multiple.pml:97 - [change_doors_pos[lockid]?1] (0:0:0 - 1)
		reached[0][10] = 1;
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
		{	if (boq != now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
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
	case 117: // STATE 11 - lock_env_multiple.pml:99 - [((doors_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 12 - lock_env_multiple.pml:99 - [doors_status[lockid].higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher;
		now.doors_status[ Index(((P0 *)_this)->lockid, 4) ].higher = 1;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].higher", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 13 - lock_env_multiple.pml:101 - [(((doors_status[lockid].lower==2)&&(slide_status[lockid].lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==2)&&(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 14 - lock_env_multiple.pml:102 - [lock_water_level[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ];
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 4) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 15 - lock_env_multiple.pml:103 - [(((doors_status[lockid].lower==1)||(slide_status[lockid].lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==1)||(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 19 - lock_env_multiple.pml:105 - [((doors_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 20 - lock_env_multiple.pml:105 - [doors_status[lockid].higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher;
		now.doors_status[ Index(((P0 *)_this)->lockid, 4) ].higher = 2;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].higher", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 23 - lock_env_multiple.pml:107 - [doors_pos_changed[lockid]!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][23] = 1;
		if (q_full(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 1, 1);
		if (q_zero(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ])) { boq = now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 125: // STATE 24 - lock_env_multiple.pml:108 - [change_slide_pos[lockid]?2] (0:0:0 - 1)
		reached[0][24] = 1;
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
		{	if (boq != now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
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
	case 126: // STATE 25 - lock_env_multiple.pml:110 - [((slide_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 26 - lock_env_multiple.pml:110 - [slide_status[lockid].lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower;
		now.slide_status[ Index(((P0 *)_this)->lockid, 4) ].lower = 1;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].lower", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 27 - lock_env_multiple.pml:111 - [lock_water_level[lockid] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ];
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 4) ] = 2;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 28 - lock_env_multiple.pml:112 - [((slide_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 29 - lock_env_multiple.pml:112 - [slide_status[lockid].lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower;
		now.slide_status[ Index(((P0 *)_this)->lockid, 4) ].lower = 2;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].lower", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 32 - lock_env_multiple.pml:114 - [slide_pos_changed[lockid]!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][32] = 1;
		if (q_full(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 1, 1);
		if (q_zero(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ])) { boq = now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 132: // STATE 33 - lock_env_multiple.pml:115 - [change_slide_pos[lockid]?1] (0:0:0 - 1)
		reached[0][33] = 1;
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
		{	if (boq != now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 4) ]))
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
	case 133: // STATE 34 - lock_env_multiple.pml:117 - [((slide_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 35 - lock_env_multiple.pml:117 - [slide_status[lockid].higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher;
		now.slide_status[ Index(((P0 *)_this)->lockid, 4) ].higher = 1;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].higher", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 36 - lock_env_multiple.pml:119 - [(((doors_status[lockid].lower==2)&&(slide_status[lockid].lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==2)&&(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 37 - lock_env_multiple.pml:120 - [lock_water_level[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ];
		now.lock_water_level[ Index(((P0 *)_this)->lockid, 4) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", now.lock_water_level[ Index(((int)((P0 *)_this)->lockid), 4) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 38 - lock_env_multiple.pml:121 - [(((doors_status[lockid].lower==1)||(slide_status[lockid].lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==1)||(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 42 - lock_env_multiple.pml:123 - [((slide_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 43 - lock_env_multiple.pml:123 - [slide_status[lockid].higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher;
		now.slide_status[ Index(((P0 *)_this)->lockid, 4) ].higher = 2;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].higher", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 4) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 46 - lock_env_multiple.pml:125 - [slide_pos_changed[lockid]!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][46] = 1;
		if (q_full(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ], 0, 1, 1);
		if (q_zero(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ])) { boq = now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 4) ]; };
		_m = 2; goto P999; /* 0 */
	case 141: // STATE 50 - lock_env_multiple.pml:127 - [-end-] (0:0:0 - 1)
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


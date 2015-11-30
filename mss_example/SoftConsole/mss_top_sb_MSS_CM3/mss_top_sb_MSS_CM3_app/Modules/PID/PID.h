/*
 * PID.h
 *
 *  Created on: 20.11.2015
 *      Author: vetal
 */

#ifndef PID_H_
#define PID_H_
// ================== ACEL DEFINES



#define k 65.53  // 2 bytes is range [-500;500] degrees
#define k1 57.29 // radians to degrees
#define D_lim 4000 //TODO calib
#define I_lim 4000 //TODO calib
#define P_lim 4000 //TODO calib


// power range is 0 to 1000

#define low_trottle 20
#define low_trottle2 10

#define high_trottle 850
#define high_trottle2 1000





#include <stdint.h>
#include <stdlib.h>
#include <math.h>

static int16_t Kp_u = 7, Kp_d = 100,
				Kd_u= 3, Kd_d = 100;
static int32_t Ki_u= 3, Ki_d = 100000;//TODO calib

static int32_t Integr_pitch=0, Integr_roll=0;
static int16_t Itmp_p, Itmp_r;
static int16_t Dtmp_p, Dtmp_r;
static int16_t Ptmp_p, Ptmp_r;

void acell_angle( int16_t * ax,
				  int16_t * ay,
				  int16_t * az,
				  int16_t * acell_pitch,
				  int16_t * acell_roll);
void my_angle(int16_t * gx,
				int16_t * gy,
				int16_t * gz,
				int16_t * acell_pitch,
				int16_t * acell_roll,
				int16_t * _pitch_curr,
				int16_t * _roll_curr,
				uint32_t d_t);
void my_PID(int16_t * pitch,
			int16_t * roll,
			int16_t * pow,
			int16_t * force,
			int16_t * gx,
			int16_t * gy,
			uint16_t d_t);

int8_t change_coef(int8_t _type);


void set_I(uint8_t val);
void set_P(uint8_t val);
void set_D(uint8_t val);

int16_t get_I_p(void);
int16_t get_I_r(void);
int16_t get_P_p(void);
int16_t get_P_r(void);
int16_t get_D_p(void);
int16_t get_D_r(void);

#endif /* PID_H_ */

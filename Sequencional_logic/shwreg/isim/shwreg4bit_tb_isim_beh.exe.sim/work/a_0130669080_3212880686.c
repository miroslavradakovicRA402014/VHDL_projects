/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/mika/projects_workspace/VHDL_projects/Combinational_logic/shwreg/shwreg4bit.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0130669080_3212880686_p_0(char *t0)
{
    char t26[16];
    char t27[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t28;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3872);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 3968);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 6446);
    t13 = xsi_mem_cmp(t2, t6, 2U);
    if (t13 == 1)
        goto LAB11;

LAB15:    t8 = (t0 + 6448);
    t14 = xsi_mem_cmp(t8, t6, 2U);
    if (t14 == 1)
        goto LAB12;

LAB16:    t10 = (t0 + 6450);
    t16 = xsi_mem_cmp(t10, t6, 2U);
    if (t16 == 1)
        goto LAB13;

LAB17:
LAB14:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 3968);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB11:    xsi_set_current_line(55, ng0);
    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t17 = (t0 + 3968);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB10;

LAB12:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t23 = (3 - 3);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t1 = (t5 + t25);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t27 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 3;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t13 = (1 - 3);
    t28 = (t13 * -1);
    t28 = (t28 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t28;
    t6 = xsi_base_array_concat(t6, t26, t7, (char)99, t3, (char)97, t1, t27, (char)101);
    t28 = (1U + 3U);
    t4 = (4U != t28);
    if (t4 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 3968);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB10;

LAB13:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t23 = (3 - 2);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t5 = (t0 + 1672U);
    t6 = *((char **)t5);
    t3 = *((unsigned char *)t6);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t27 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 2;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t13 = (0 - 2);
    t28 = (t13 * -1);
    t28 = (t28 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t28;
    t5 = xsi_base_array_concat(t5, t26, t7, (char)97, t1, t27, (char)99, t3, (char)101);
    t28 = (3U + 1U);
    t4 = (4U != t28);
    if (t4 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3968);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB10;

LAB18:;
LAB19:    xsi_size_not_matching(4U, t28, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(4U, t28, 0);
    goto LAB22;

}

static void work_a_0130669080_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4032);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3888);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0130669080_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0130669080_3212880686_p_0,(void *)work_a_0130669080_3212880686_p_1};
	xsi_register_didat("work_a_0130669080_3212880686", "isim/shwreg4bit_tb_isim_beh.exe.sim/work/a_0130669080_3212880686.didat");
	xsi_register_executes(pe);
}

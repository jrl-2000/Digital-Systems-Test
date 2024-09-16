/**********************************************************************
 * $show_all_signals example 1 -- PLI application using VPI routines
 *
 * C source to scan through a module and list the names of all nets,
 * reg and variables in the module, with their current logic value.
 *
 * Usage: $show_all_signals(<module_instance>);
 *
 * For the book, "The Verilog PLI Handbook" by Stuart Sutherland
 *  Book copyright 1999, Kluwer Academic Publishers, Norwell, MA, USA
 *   Contact: www.wkap.il
 *  Example copyright 1998, Sutherland HDL Inc, Portland, Oregon, USA
 *   Contact: www.sutherland.com or (503) 692-0898
 *********************************************************************/

#include <stdlib.h>    /* ANSI C standard library */
#include <stdio.h>     /* ANSI C standard input/output library */
#include "vpi_user.h"  /* IEEE 1364 PLI VPI routine library  */
#include "veriuser.h"  /* IEEE 1364 PLI TF routine library  */
                       /* using TF routines for simulation control */

/* prototypes of the PLI application routines */
int  get_value_calltf();


/**********************************************************************
 * $show_all_signals Registration Data
 * (add this function name to the vlog_startup_routines array)
 *********************************************************************/
void get_value_register()
{
  s_vpi_systf_data tf_data;

  tf_data.type        = vpiSysTask;
  tf_data.tfname      = "$getValue";
  tf_data.calltf      = get_value_calltf;
  tf_data.compiletf   = NULL;
  tf_data.sizetf      = NULL;
  vpi_register_systf(&tf_data);
  return;
}

/**********************************************************************
 * calltf routine
 *********************************************************************/


int get_value_calltf(char *user_data)
{

	vpiHandle systfref, args_iter, argh;
	struct t_vpi_value argval;
	int value;
 
  // Obtain a handle to the argument list
	systfref = vpi_handle(vpiSysTfCall, NULL);
	args_iter = vpi_iterate(vpiArgument, systfref);
 
  // Grab the value of the first argument
	argh = vpi_scan(args_iter);
	argval.format = vpiIntVal;
	vpi_get_value(argh, &argval);
	value = argval.value.integer;
	vpi_printf("VPI routine received %d\n", value);
 
  // Increment the value and put it back as first argument
//	argval.value.integer = value + 1;
//	vpi_put_value(argh, &argval, NULL, vpiNoDelay);
 
  // Cleanup and return
	vpi_free_object(args_iter);
	return 0;

}

/*********************************************************************/

void (*vlog_startup_routines[])() = 
{
    /*** add user entries here ***/
  get_value_register,
  0 /*** final entry must be 0 ***/
};

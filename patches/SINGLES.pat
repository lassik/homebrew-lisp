--- scl.c.~1.153.~	2018-06-29 18:33:08.463952880 -0400
+++ scl.c	2021-08-22 10:46:30.378000067 -0400
@@ -947,8 +947,12 @@
  done:
   /* at this point, we have a legitimate floating point result */
   if (lead_sgn==-1)  res = -res;
-  if (i==len) return shrtp ? makflo(res) : makdbl(res, 0.0);
-
+  if (i==len)
+# ifdef SINGLES
+    return shrtp ? makflo(res) : makdbl(res, 0.0);
+# else
+    return makdbl(res, 0.0);
+# endif
   if (str[i]=='i' || str[i]=='I') { /* pure imaginary number  */
     if (lead_sgn==0) return BOOL_F; /* must have leading sign */
     if (++i < len) return BOOL_F; /* `i' not last character */
--- scmfig.h.~1.74.~	2015-07-15 21:47:43.000000000 -0400
+++ scmfig.h	2021-08-22 10:41:48.034085618 -0400
@@ -109,7 +109,7 @@
 
 #ifdef FLOATS
 # ifndef _MSC_VER
-#  define SINGLES
+/* #  define SINGLES */
 # endif
 #endif
 
--- unif.c.~1.72.~	2017-10-21 22:10:25.745305509 -0400
+++ unif.c	2021-08-22 10:44:06.546012278 -0400
@@ -894,7 +894,9 @@
 # endif
 # ifdef FLOATS
   case tc7_VfloR32:
+#  ifdef SINGLES
     return makflo(((float *)CDR(v))[pos]);
+#  endif
   case tc7_VfloC32:
     return makdbl(((float *)CDR(v))[2*pos],
 		  ((float *)CDR(v))[2*pos+1]);
@@ -1003,10 +1005,12 @@
     /* Fall through */
   case tc7_VfloR64:
 #  ifdef CDR_DOUBLES
+#   ifdef SINGLES
     if (NIMP(last) && (last != flo0) && (tc_flo==CAR(last))) {
       FLO(last) = ((double *)CDR(v))[pos];
       return last;
     }
+#   endif
 #  else
 #   ifdef SINGLES
     if (NIMP(last) && tc_dblr==CAR(last))

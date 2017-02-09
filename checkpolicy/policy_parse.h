/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     PATH = 258,
     QPATH = 259,
     FILENAME = 260,
     CLONE = 261,
     COMMON = 262,
     CLASS = 263,
     CONSTRAIN = 264,
     VALIDATETRANS = 265,
     INHERITS = 266,
     SID = 267,
     ROLE = 268,
     ROLEATTRIBUTE = 269,
     ATTRIBUTE_ROLE = 270,
     ROLES = 271,
     TYPEALIAS = 272,
     TYPEATTRIBUTE = 273,
     TYPEBOUNDS = 274,
     TYPE = 275,
     TYPES = 276,
     ALIAS = 277,
     ATTRIBUTE = 278,
     BOOL = 279,
     TUNABLE = 280,
     IF = 281,
     ELSE = 282,
     TYPE_TRANSITION = 283,
     TYPE_MEMBER = 284,
     TYPE_CHANGE = 285,
     ROLE_TRANSITION = 286,
     RANGE_TRANSITION = 287,
     SENSITIVITY = 288,
     DOMINANCE = 289,
     DOM = 290,
     DOMBY = 291,
     INCOMP = 292,
     CATEGORY = 293,
     LEVEL = 294,
     RANGE = 295,
     MLSCONSTRAIN = 296,
     MLSVALIDATETRANS = 297,
     USER = 298,
     NEVERALLOW = 299,
     ALLOW = 300,
     AUDITALLOW = 301,
     AUDITDENY = 302,
     DONTAUDIT = 303,
     ALLOWXPERM = 304,
     AUDITALLOWXPERM = 305,
     DONTAUDITXPERM = 306,
     NEVERALLOWXPERM = 307,
     SOURCE = 308,
     TARGET = 309,
     SAMEUSER = 310,
     FSCON = 311,
     PORTCON = 312,
     NETIFCON = 313,
     NODECON = 314,
     PIRQCON = 315,
     IOMEMCON = 316,
     IOPORTCON = 317,
     PCIDEVICECON = 318,
     DEVICETREECON = 319,
     FSUSEXATTR = 320,
     FSUSETASK = 321,
     FSUSETRANS = 322,
     GENFSCON = 323,
     U1 = 324,
     U2 = 325,
     U3 = 326,
     R1 = 327,
     R2 = 328,
     R3 = 329,
     T1 = 330,
     T2 = 331,
     T3 = 332,
     L1 = 333,
     L2 = 334,
     H1 = 335,
     H2 = 336,
     NOT = 337,
     AND = 338,
     OR = 339,
     XOR = 340,
     CTRUE = 341,
     CFALSE = 342,
     IDENTIFIER = 343,
     NUMBER = 344,
     EQUALS = 345,
     NOTEQUAL = 346,
     IPV4_ADDR = 347,
     IPV6_ADDR = 348,
     MODULE = 349,
     VERSION_IDENTIFIER = 350,
     REQUIRE = 351,
     OPTIONAL = 352,
     POLICYCAP = 353,
     PERMISSIVE = 354,
     FILESYSTEM = 355,
     DEFAULT_USER = 356,
     DEFAULT_ROLE = 357,
     DEFAULT_TYPE = 358,
     DEFAULT_RANGE = 359,
     LOW_HIGH = 360,
     LOW = 361,
     HIGH = 362
   };
#endif
/* Tokens.  */
#define PATH 258
#define QPATH 259
#define FILENAME 260
#define CLONE 261
#define COMMON 262
#define CLASS 263
#define CONSTRAIN 264
#define VALIDATETRANS 265
#define INHERITS 266
#define SID 267
#define ROLE 268
#define ROLEATTRIBUTE 269
#define ATTRIBUTE_ROLE 270
#define ROLES 271
#define TYPEALIAS 272
#define TYPEATTRIBUTE 273
#define TYPEBOUNDS 274
#define TYPE 275
#define TYPES 276
#define ALIAS 277
#define ATTRIBUTE 278
#define BOOL 279
#define TUNABLE 280
#define IF 281
#define ELSE 282
#define TYPE_TRANSITION 283
#define TYPE_MEMBER 284
#define TYPE_CHANGE 285
#define ROLE_TRANSITION 286
#define RANGE_TRANSITION 287
#define SENSITIVITY 288
#define DOMINANCE 289
#define DOM 290
#define DOMBY 291
#define INCOMP 292
#define CATEGORY 293
#define LEVEL 294
#define RANGE 295
#define MLSCONSTRAIN 296
#define MLSVALIDATETRANS 297
#define USER 298
#define NEVERALLOW 299
#define ALLOW 300
#define AUDITALLOW 301
#define AUDITDENY 302
#define DONTAUDIT 303
#define ALLOWXPERM 304
#define AUDITALLOWXPERM 305
#define DONTAUDITXPERM 306
#define NEVERALLOWXPERM 307
#define SOURCE 308
#define TARGET 309
#define SAMEUSER 310
#define FSCON 311
#define PORTCON 312
#define NETIFCON 313
#define NODECON 314
#define PIRQCON 315
#define IOMEMCON 316
#define IOPORTCON 317
#define PCIDEVICECON 318
#define DEVICETREECON 319
#define FSUSEXATTR 320
#define FSUSETASK 321
#define FSUSETRANS 322
#define GENFSCON 323
#define U1 324
#define U2 325
#define U3 326
#define R1 327
#define R2 328
#define R3 329
#define T1 330
#define T2 331
#define T3 332
#define L1 333
#define L2 334
#define H1 335
#define H2 336
#define NOT 337
#define AND 338
#define OR 339
#define XOR 340
#define CTRUE 341
#define CFALSE 342
#define IDENTIFIER 343
#define NUMBER 344
#define EQUALS 345
#define NOTEQUAL 346
#define IPV4_ADDR 347
#define IPV6_ADDR 348
#define MODULE 349
#define VERSION_IDENTIFIER 350
#define REQUIRE 351
#define OPTIONAL 352
#define POLICYCAP 353
#define PERMISSIVE 354
#define FILESYSTEM 355
#define DEFAULT_USER 356
#define DEFAULT_ROLE 357
#define DEFAULT_TYPE 358
#define DEFAULT_RANGE 359
#define LOW_HIGH 360
#define LOW 361
#define HIGH 362




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 68 "./checkpolicy/policy_parse.y"
{
	unsigned int val;
	uint64_t val64;
	uintptr_t valptr;
	void *ptr;
        require_func_t require_func;
}
/* Line 1529 of yacc.c.  */
#line 271 "./checkpolicy/policy_parse.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;


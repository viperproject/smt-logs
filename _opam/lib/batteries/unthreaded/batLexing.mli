(*
 * BatLexing - Additional functions for string manipulations.
 * Copyright (C) 1996 Xavier Leroy, INRIA Rocquencourt
 * Copyright (C) 2009 David Teller, LIFO, Universite d'Orleans
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version,
 * with the special exception on linking described in file LICENSE.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *)

(** Simple lexing using ocaml conventions

    This module extends Stdlib's
    {{:http://caml.inria.fr/pub/docs/manual-ocaml/libref/Lexing.html}Lexing}
    module, go there for documentation on the rest of the functions
    and types.

*)

(** The run-time library for lexers generated by [ocamllex]. *)

(** {6 Positions} *)

type position = Lexing.position = {
  pos_fname : string;
  pos_lnum : int;
  pos_bol : int;
  pos_cnum : int;
}
(** A value of type [position] describes a point in a source file.
    [pos_fname] is the file name; [pos_lnum] is the line number;
    [pos_bol] is the offset of the beginning of the line (number
    of characters between the beginning of the file and the beginning
    of the line); [pos_cnum] is the offset of the position (number of
    characters between the beginning of the file and the position).

    See the documentation of type [lexbuf] for information about
    how the lexing engine will manage positions.
*)

val dummy_pos : position
(** A value of type [position], guaranteed to be different from any
    valid position.
*)


(** {6 Lexer buffers} *)


type lexbuf = Lexing.lexbuf =
  { refill_buff : lexbuf -> unit;
    mutable lex_buffer : Bytes.t;
    mutable lex_buffer_len : int;
    mutable lex_abs_pos : int;
    mutable lex_start_pos : int;
    mutable lex_curr_pos : int;
    mutable lex_last_pos : int;
    mutable lex_last_action : int;
    mutable lex_eof_reached : bool;
    mutable lex_mem : int array;
    mutable lex_start_p : position;
    mutable lex_curr_p : position;
  }
(** The type of lexer buffers. A lexer buffer is the argument passed
    to the scanning functions defined by the generated scanners.
    The lexer buffer holds the current state of the scanner, plus
    a function to refill the buffer from the input.

    At each token, the lexing engine will copy [lex_curr_p] to
    [lex_start_p], then change the [pos_cnum] field
    of [lex_curr_p] by updating it with the number of characters read
    since the start of the [lexbuf].  The other fields are left
    unchanged by the lexing engine.  In order to keep them
    accurate, they must be initialised before the first use of the
    lexbuf, and updated by the relevant lexer actions (i.e. at each
    end of line -- see also [new_line]).

    Note: Batteries does not currently support the ~with_positions:false
    mode available since OCaml 4.08 to disable position tracking. If you
    need this, please get in touch with the Batteries maintainers.
*)

##V<4.08##val from_input   : BatIO.input   -> lexbuf
##V<4.08##(** Create a lexer buffer on the given input
##V<4.08##    [Lexing.from_input inp] returns a lexer buffer which reads
##V<4.08##    from the input [inp], at the current reading position. *)

##V<4.08##val from_string : string -> lexbuf
##V<4.08##(** Create a lexer buffer which reads from
##V<4.08##    the given string. Reading starts from the first character in
##V<4.08##    the string. An end-of-input condition is generated when the
##V<4.08##    end of the string is reached. *)

##V<4.08##val from_function : (Bytes.t -> int -> int) -> lexbuf
##V<4.08##(** Create a lexer buffer with the given function as its reading method.
##V<4.08##    When the scanner needs more characters, it will call the given
##V<4.08##    function, giving it a byte sequence [s] and a byte
##V<4.08##    count [n]. The function should put [n] bytes or less in [s],
##V<4.08##    starting at byte number 0, and return the number of byte
##V<4.08##    provided. A return value of 0 means end of input. *)

##V>=4.08##val from_channel : ?with_positions:bool -> in_channel -> lexbuf
##V>=4.08##(** Create a lexer buffer on the given input channel.
##V>=4.08##   [Lexing.from_channel inchan] returns a lexer buffer which reads
##V>=4.08##   from the input channel [inchan], at the current reading position. *)

##V>=4.08##val from_string : ?with_positions:bool -> string -> lexbuf
##V>=4.08##(** Create a lexer buffer which reads from
##V>=4.08##   the given string. Reading starts from the first character in
##V>=4.08##   the string. An end-of-input condition is generated when the
##V>=4.08##   end of the string is reached. *)

##V>=4.08##val from_function : ?with_positions:bool -> (bytes -> int -> int) -> lexbuf
##V>=4.08##(** Create a lexer buffer with the given function as its reading method.
##V>=4.08##   When the scanner needs more characters, it will call the given
##V>=4.08##   function, giving it a byte sequence [s] and a byte
##V>=4.08##   count [n]. The function should put [n] bytes or fewer in [s],
##V>=4.08##   starting at index 0, and return the number of bytes
##V>=4.08##   provided. A return value of 0 means end of input. *)

##V>=4.11##val set_position : lexbuf -> position -> unit
##V>=4.11##(** Set the initial tracked input position for [lexbuf] to a custom value.
##V>=4.11##   Ignores [pos_fname]. See {!set_filename} for changing this field.
##V>=4.11##   @since 4.11 *)
##V>=4.11##
##V>=4.11##val set_filename: lexbuf -> string -> unit
##V>=4.11##(** Set filename in the initial tracked position to [file] in
##V>=4.11##   [lexbuf].
##V>=4.11##   @since 4.11 *)

##V>=4.08##val with_positions : lexbuf -> bool
##V>=4.08##(** Tell whether the lexer buffer keeps track of position fields
##V>=4.08##    [lex_curr_p] / [lex_start_p], as determined by the corresponding
##V>=4.08##    optional argument for functions that create lexer buffers
##V>=4.08##    (whose default value is [true]).
##V>=4.08##
##V>=4.08##    When [with_positions] is [false], lexer actions should not
##V>=4.08##    modify position fields.  Doing it nevertheless could
##V>=4.08##    re-enable the [with_position] mode and degrade performances.
##V>=4.08##*)

(** {6 Functions for lexer semantic actions} *)


(** The following functions can be called from the semantic actions
    of lexer definitions (the ML code enclosed in braces that
    computes the value returned by lexing functions). They give
    access to the character string matched by the regular expression
    associated with the semantic action. These functions must be
    applied to the argument [lexbuf], which, in the code generated by
    [ocamllex], is bound to the lexer buffer passed to the parsing
    function. *)

val lexeme : lexbuf -> string
(** [Lexing.lexeme lexbuf] returns the string matched by
           the regular expression. *)

val lexeme_char : lexbuf -> int -> char
(** [Lexing.lexeme_char lexbuf i] returns character number [i] in
    the matched string. *)

val lexeme_start : lexbuf -> int
(** [Lexing.lexeme_start lexbuf] returns the offset in the
    input stream of the first character of the matched string.
    The first character of the stream has offset 0. *)

val lexeme_end : lexbuf -> int
(** [Lexing.lexeme_end lexbuf] returns the offset in the input stream
    of the character following the last character of the matched
    string. The first character of the stream has offset 0. *)

val lexeme_start_p : lexbuf -> position
(** Like [lexeme_start], but return a complete [position] instead
    of an offset. *)

val lexeme_end_p : lexbuf -> position
(** Like [lexeme_end], but return a complete [position] instead
    of an offset. *)

val new_line : lexbuf -> unit
(** Update the [lex_curr_p] field of the lexbuf to reflect the start
    of a new line.  You can call this function in the semantic action
    of the rule that matches the end-of-line character.
    @since 3.11.0
*)

(** {6 Miscellaneous functions} *)

val flush_input : lexbuf -> unit
(** Discard the contents of the buffer and reset the current
    position to 0.  The next use of the lexbuf will trigger a
    refill. *)

(**/**)

(** {6  } *)

(** The following definitions are used by the generated scanners only.
    They are not intended to be used by user programs. *)

val sub_lexeme : lexbuf -> int -> int -> string
val sub_lexeme_opt : lexbuf -> int -> int -> string option
val sub_lexeme_char : lexbuf -> int -> char
val sub_lexeme_char_opt : lexbuf -> int -> char option

type lex_tables = Lexing.lex_tables =
  { lex_base : string;
    lex_backtrk : string;
    lex_default : string;
    lex_trans : string;
    lex_check : string;
    lex_base_code : string;
    lex_backtrk_code : string;
    lex_default_code : string;
    lex_trans_code : string;
    lex_check_code : string;
    lex_code: string;}

val engine : lex_tables -> int -> lexbuf -> int
val new_engine : lex_tables -> int -> lexbuf -> int

(** {6 Deprecated}*)

val from_channel : BatIO.input -> lexbuf
  (** @deprecated As {!from_input}*)

  (**/**)
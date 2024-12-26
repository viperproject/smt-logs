// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/parser_combinators.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/parser_combinators-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/parser_combinators.dfy

const $$Language$Dafny: bool
uses {
axiom $$Language$Dafny;
}

type Ty;

type Bv0 = int;

const unique TBool: Ty
uses {
axiom Tag(TBool) == TagBool;
}

const unique TChar: Ty
uses {
axiom Tag(TChar) == TagChar;
}

const unique TInt: Ty
uses {
axiom Tag(TInt) == TagInt;
}

const unique TReal: Ty
uses {
axiom Tag(TReal) == TagReal;
}

const unique TORDINAL: Ty
uses {
axiom Tag(TORDINAL) == TagORDINAL;
}

revealed function TBitvector(int) : Ty;

axiom (forall w: int :: { TBitvector(w) } Inv0_TBitvector(TBitvector(w)) == w);

revealed function TSet(Ty) : Ty;

axiom (forall t: Ty :: { TSet(t) } Inv0_TSet(TSet(t)) == t);

axiom (forall t: Ty :: { TSet(t) } Tag(TSet(t)) == TagSet);

revealed function TISet(Ty) : Ty;

axiom (forall t: Ty :: { TISet(t) } Inv0_TISet(TISet(t)) == t);

axiom (forall t: Ty :: { TISet(t) } Tag(TISet(t)) == TagISet);

revealed function TMultiSet(Ty) : Ty;

axiom (forall t: Ty :: { TMultiSet(t) } Inv0_TMultiSet(TMultiSet(t)) == t);

axiom (forall t: Ty :: { TMultiSet(t) } Tag(TMultiSet(t)) == TagMultiSet);

revealed function TSeq(Ty) : Ty;

axiom (forall t: Ty :: { TSeq(t) } Inv0_TSeq(TSeq(t)) == t);

axiom (forall t: Ty :: { TSeq(t) } Tag(TSeq(t)) == TagSeq);

revealed function TMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv0_TMap(TMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv1_TMap(TMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Tag(TMap(t, u)) == TagMap);

revealed function TIMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv0_TIMap(TIMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv1_TIMap(TIMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Tag(TIMap(t, u)) == TagIMap);

revealed function Inv0_TBitvector(Ty) : int;

revealed function Inv0_TSet(Ty) : Ty;

revealed function Inv0_TISet(Ty) : Ty;

revealed function Inv0_TSeq(Ty) : Ty;

revealed function Inv0_TMultiSet(Ty) : Ty;

revealed function Inv0_TMap(Ty) : Ty;

revealed function Inv1_TMap(Ty) : Ty;

revealed function Inv0_TIMap(Ty) : Ty;

revealed function Inv1_TIMap(Ty) : Ty;

type TyTag;

revealed function Tag(Ty) : TyTag;

const unique TagBool: TyTag;

const unique TagChar: TyTag;

const unique TagInt: TyTag;

const unique TagReal: TyTag;

const unique TagORDINAL: TyTag;

const unique TagSet: TyTag;

const unique TagISet: TyTag;

const unique TagMultiSet: TyTag;

const unique TagSeq: TyTag;

const unique TagMap: TyTag;

const unique TagIMap: TyTag;

const unique TagClass: TyTag;

type TyTagFamily;

revealed function TagFamily(Ty) : TyTagFamily;

revealed function {:identity} Lit<T>(x: T) : T
uses {
axiom (forall<T> x: T :: {:identity} { Lit(x): T } Lit(x): T == x);
}

axiom (forall<T> x: T :: { $Box(Lit(x)) } $Box(Lit(x)) == Lit($Box(x)));

revealed function {:identity} LitInt(x: int) : int
uses {
axiom (forall x: int :: {:identity} { LitInt(x): int } LitInt(x): int == x);
}

axiom (forall x: int :: { $Box(LitInt(x)) } $Box(LitInt(x)) == Lit($Box(x)));

revealed function {:identity} LitReal(x: real) : real
uses {
axiom (forall x: real :: {:identity} { LitReal(x): real } LitReal(x): real == x);
}

axiom (forall x: real :: { $Box(LitReal(x)) } $Box(LitReal(x)) == Lit($Box(x)));

revealed function {:inline} char#IsChar(n: int) : bool
{
  (0 <= n && n < 55296) || (57344 <= n && n < 1114112)
}

type char;

revealed function char#FromInt(int) : char;

axiom (forall n: int :: 
  { char#FromInt(n) } 
  char#IsChar(n) ==> char#ToInt(char#FromInt(n)) == n);

revealed function char#ToInt(char) : int;

axiom (forall ch: char :: 
  { char#ToInt(ch) } 
  char#FromInt(char#ToInt(ch)) == ch && char#IsChar(char#ToInt(ch)));

revealed function char#Plus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Plus(a, b) } 
  char#Plus(a, b) == char#FromInt(char#ToInt(a) + char#ToInt(b)));

revealed function char#Minus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Minus(a, b) } 
  char#Minus(a, b) == char#FromInt(char#ToInt(a) - char#ToInt(b)));

type ref;

const null: ref;

type Box;

const $ArbitraryBoxValue: Box;

revealed function $Box<T>(T) : Box;

revealed function $Unbox<T>(Box) : T;

axiom (forall<T> x: T :: { $Box(x) } $Unbox($Box(x)) == x);

axiom (forall<T> x: Box :: { $Unbox(x): T } $Box($Unbox(x): T) == x);

revealed function $IsBox(Box, Ty) : bool;

revealed function $IsAllocBox(Box, Ty, Heap) : bool;

axiom (forall bx: Box :: 
  { $IsBox(bx, TInt) } 
  $IsBox(bx, TInt) ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, TInt));

axiom (forall bx: Box :: 
  { $IsBox(bx, TReal) } 
  $IsBox(bx, TReal)
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, TReal));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBool) } 
  $IsBox(bx, TBool)
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, TBool));

axiom (forall bx: Box :: 
  { $IsBox(bx, TChar) } 
  $IsBox(bx, TChar)
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, TChar));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(0)) } 
  $IsBox(bx, TBitvector(0))
     ==> $Box($Unbox(bx): Bv0) == bx && $Is($Unbox(bx): Bv0, TBitvector(0)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSet(t)) } 
  $IsBox(bx, TSet(t))
     ==> $Box($Unbox(bx): Set) == bx && $Is($Unbox(bx): Set, TSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TISet(t)) } 
  $IsBox(bx, TISet(t))
     ==> $Box($Unbox(bx): ISet) == bx && $Is($Unbox(bx): ISet, TISet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TMultiSet(t)) } 
  $IsBox(bx, TMultiSet(t))
     ==> $Box($Unbox(bx): MultiSet) == bx && $Is($Unbox(bx): MultiSet, TMultiSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSeq(t)) } 
  $IsBox(bx, TSeq(t))
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, TSeq(t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TMap(s, t)) } 
  $IsBox(bx, TMap(s, t))
     ==> $Box($Unbox(bx): Map) == bx && $Is($Unbox(bx): Map, TMap(s, t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TIMap(s, t)) } 
  $IsBox(bx, TIMap(s, t))
     ==> $Box($Unbox(bx): IMap) == bx && $Is($Unbox(bx): IMap, TIMap(s, t)));

axiom (forall<T> v: T, t: Ty :: 
  { $IsBox($Box(v), t) } 
  $IsBox($Box(v), t) <==> $Is(v, t));

axiom (forall<T> v: T, t: Ty, h: Heap :: 
  { $IsAllocBox($Box(v), t, h) } 
  $IsAllocBox($Box(v), t, h) <==> $IsAlloc(v, t, h));

revealed function $Is<T>(T, Ty) : bool;

axiom (forall v: int :: { $Is(v, TInt) } $Is(v, TInt));

axiom (forall v: real :: { $Is(v, TReal) } $Is(v, TReal));

axiom (forall v: bool :: { $Is(v, TBool) } $Is(v, TBool));

axiom (forall v: char :: { $Is(v, TChar) } $Is(v, TChar));

axiom (forall v: ORDINAL :: { $Is(v, TORDINAL) } $Is(v, TORDINAL));

axiom (forall v: Bv0 :: { $Is(v, TBitvector(0)) } $Is(v, TBitvector(0)));

axiom (forall v: Set, t0: Ty :: 
  { $Is(v, TSet(t0)) } 
  $Is(v, TSet(t0))
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: ISet, t0: Ty :: 
  { $Is(v, TISet(t0)) } 
  $Is(v, TISet(t0)) <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0))
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0)) ==> $IsGoodMultiSet(v));

axiom (forall v: Seq, t0: Ty :: 
  { $Is(v, TSeq(t0)) } 
  $Is(v, TSeq(t0))
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsBox(Seq#Index(v, i), t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsBox(Map#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     ==> $Is(Map#Domain(v), TSet(t0))
       && $Is(Map#Values(v), TSet(t1))
       && $Is(Map#Items(v), TSet(Tclass._System.Tuple2(t0, t1))));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx] ==> $IsBox(IMap#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     ==> $Is(IMap#Domain(v), TISet(t0))
       && $Is(IMap#Values(v), TISet(t1))
       && $Is(IMap#Items(v), TISet(Tclass._System.Tuple2(t0, t1))));

revealed function $IsAlloc<T>(T, Ty, Heap) : bool;

axiom (forall h: Heap, v: int :: { $IsAlloc(v, TInt, h) } $IsAlloc(v, TInt, h));

axiom (forall h: Heap, v: real :: { $IsAlloc(v, TReal, h) } $IsAlloc(v, TReal, h));

axiom (forall h: Heap, v: bool :: { $IsAlloc(v, TBool, h) } $IsAlloc(v, TBool, h));

axiom (forall h: Heap, v: char :: { $IsAlloc(v, TChar, h) } $IsAlloc(v, TChar, h));

axiom (forall h: Heap, v: ORDINAL :: 
  { $IsAlloc(v, TORDINAL, h) } 
  $IsAlloc(v, TORDINAL, h));

axiom (forall v: Bv0, h: Heap :: 
  { $IsAlloc(v, TBitvector(0), h) } 
  $IsAlloc(v, TBitvector(0), h));

axiom (forall v: Set, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSet(t0), h) } 
  $IsAlloc(v, TSet(t0), h)
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: ISet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TISet(t0), h) } 
  $IsAlloc(v, TISet(t0), h)
     <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: MultiSet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TMultiSet(t0), h) } 
  $IsAlloc(v, TMultiSet(t0), h)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: Seq, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSeq(t0), h) } 
  $IsAlloc(v, TSeq(t0), h)
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsAllocBox(Seq#Index(v, i), t0, h)));

axiom (forall v: Map, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TMap(t0, t1), h) } 
  $IsAlloc(v, TMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsAllocBox(Map#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

axiom (forall v: IMap, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TIMap(t0, t1), h) } 
  $IsAlloc(v, TIMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx]
         ==> $IsAllocBox(IMap#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

revealed function $AlwaysAllocated(Ty) : bool;

axiom (forall ty: Ty :: 
  { $AlwaysAllocated(ty) } 
  $AlwaysAllocated(ty)
     ==> (forall h: Heap, v: Box :: 
      { $IsAllocBox(v, ty, h) } 
      $IsBox(v, ty) ==> $IsAllocBox(v, ty, h)));

revealed function $OlderTag(Heap) : bool;

type ClassName;

const unique class._System.int: ClassName;

const unique class._System.bool: ClassName;

const unique class._System.set: ClassName;

const unique class._System.seq: ClassName;

const unique class._System.multiset: ClassName;

revealed function Tclass._System.object?() : Ty
uses {
// Tclass._System.object? Tag
axiom Tag(Tclass._System.object?()) == Tagclass._System.object?
   && TagFamily(Tclass._System.object?()) == tytagFamily$object;
}

revealed function Tclass._System.Tuple2(Ty, Ty) : Ty;

revealed function dtype(ref) : Ty;

revealed function TypeTuple(a: ClassName, b: ClassName) : ClassName;

revealed function TypeTupleCar(ClassName) : ClassName;

revealed function TypeTupleCdr(ClassName) : ClassName;

axiom (forall a: ClassName, b: ClassName :: 
  { TypeTuple(a, b) } 
  TypeTupleCar(TypeTuple(a, b)) == a && TypeTupleCdr(TypeTuple(a, b)) == b);

type HandleType;

revealed function SetRef_to_SetBox(s: [ref]bool) : Set;

axiom (forall s: [ref]bool, bx: Box :: 
  { Set#IsMember(SetRef_to_SetBox(s), bx) } 
  Set#IsMember(SetRef_to_SetBox(s), bx) == s[$Unbox(bx): ref]);

axiom (forall s: [ref]bool :: 
  { SetRef_to_SetBox(s) } 
  $Is(SetRef_to_SetBox(s), TSet(Tclass._System.object?())));

revealed function Apply1(Ty, Ty, Heap, HandleType, Box) : Box;

type DatatypeType;

type DtCtorId;

revealed function DatatypeCtorId(DatatypeType) : DtCtorId;

revealed function DtRank(DatatypeType) : int;

revealed function BoxRank(Box) : int;

axiom (forall d: DatatypeType :: { BoxRank($Box(d)) } BoxRank($Box(d)) == DtRank(d));

type ORDINAL = Box;

revealed function ORD#IsNat(ORDINAL) : bool;

revealed function ORD#Offset(ORDINAL) : int;

axiom (forall o: ORDINAL :: { ORD#Offset(o) } 0 <= ORD#Offset(o));

revealed function {:inline} ORD#IsLimit(o: ORDINAL) : bool
{
  ORD#Offset(o) == 0
}

revealed function {:inline} ORD#IsSucc(o: ORDINAL) : bool
{
  0 < ORD#Offset(o)
}

revealed function ORD#FromNat(int) : ORDINAL;

axiom (forall n: int :: 
  { ORD#FromNat(n) } 
  0 <= n ==> ORD#IsNat(ORD#FromNat(n)) && ORD#Offset(ORD#FromNat(n)) == n);

axiom (forall o: ORDINAL :: 
  { ORD#Offset(o) } { ORD#IsNat(o) } 
  ORD#IsNat(o) ==> o == ORD#FromNat(ORD#Offset(o)));

revealed function ORD#Less(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p) } 
  (ORD#Less(o, p) ==> o != p)
     && (ORD#IsNat(o) && !ORD#IsNat(p) ==> ORD#Less(o, p))
     && (ORD#IsNat(o) && ORD#IsNat(p)
       ==> ORD#Less(o, p) == (ORD#Offset(o) < ORD#Offset(p)))
     && (ORD#Less(o, p) && ORD#IsNat(p) ==> ORD#IsNat(o)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, o) } 
  ORD#Less(o, p) || o == p || ORD#Less(p, o));

axiom (forall o: ORDINAL, p: ORDINAL, r: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, r) } { ORD#Less(o, p), ORD#Less(o, r) } 
  ORD#Less(o, p) && ORD#Less(p, r) ==> ORD#Less(o, r));

revealed function ORD#LessThanLimit(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#LessThanLimit(o, p) } 
  ORD#LessThanLimit(o, p) == ORD#Less(o, p));

revealed function ORD#Plus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (ORD#IsNat(ORD#Plus(o, p)) ==> ORD#IsNat(o) && ORD#IsNat(p))
     && (ORD#IsNat(p)
       ==> ORD#IsNat(ORD#Plus(o, p)) == ORD#IsNat(o)
         && ORD#Offset(ORD#Plus(o, p)) == ORD#Offset(o) + ORD#Offset(p)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#Plus(o, p) || ORD#Less(o, ORD#Plus(o, p)))
     && (p == ORD#Plus(o, p) || ORD#Less(p, ORD#Plus(o, p))));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#FromNat(0) ==> ORD#Plus(o, p) == p)
     && (p == ORD#FromNat(0) ==> ORD#Plus(o, p) == o));

revealed function ORD#Minus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> ORD#IsNat(ORD#Minus(o, p)) == ORD#IsNat(o)
       && ORD#Offset(ORD#Minus(o, p)) == ORD#Offset(o) - ORD#Offset(p));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> (p == ORD#FromNat(0) && ORD#Minus(o, p) == o)
       || (p != ORD#FromNat(0) && ORD#Less(ORD#Minus(o, p), o)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n
     ==> ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Plus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && m + n <= ORD#Offset(o)
     ==> ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Minus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(n - m))));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(n - m))));

const $ModuleContextHeight: int;

const $FunctionContextHeight: int;

type LayerType;

const $LZ: LayerType;

revealed function $LS(LayerType) : LayerType;

revealed function AsFuelBottom(LayerType) : LayerType;

revealed function AtLayer<A>([LayerType]A, LayerType) : A;

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, ly) } 
  AtLayer(f, ly) == f[ly]);

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, $LS(ly)) } 
  AtLayer(f, $LS(ly)) == AtLayer(f, ly));

type Field;

revealed function FDim(Field) : int
uses {
axiom FDim(alloc) == 0;
}

revealed function IndexField(int) : Field;

axiom (forall i: int :: { IndexField(i) } FDim(IndexField(i)) == 1);

revealed function IndexField_Inverse(Field) : int;

axiom (forall i: int :: { IndexField(i) } IndexField_Inverse(IndexField(i)) == i);

revealed function MultiIndexField(Field, int) : Field;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  FDim(MultiIndexField(f, i)) == FDim(f) + 1);

revealed function MultiIndexField_Inverse0(Field) : Field;

revealed function MultiIndexField_Inverse1(Field) : int;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  MultiIndexField_Inverse0(MultiIndexField(f, i)) == f
     && MultiIndexField_Inverse1(MultiIndexField(f, i)) == i);

revealed function DeclType(Field) : ClassName;

type NameFamily;

revealed function DeclName(Field) : NameFamily
uses {
axiom DeclName(alloc) == allocName;
}

revealed function FieldOfDecl(ClassName, NameFamily) : Field;

axiom (forall cl: ClassName, nm: NameFamily :: 
  { FieldOfDecl(cl, nm): Field } 
  DeclType(FieldOfDecl(cl, nm): Field) == cl
     && DeclName(FieldOfDecl(cl, nm): Field) == nm);

revealed function $IsGhostField(Field) : bool
uses {
axiom $IsGhostField(alloc);
}

axiom (forall h: Heap, k: Heap :: 
  { $HeapSuccGhost(h, k) } 
  $HeapSuccGhost(h, k)
     ==> $HeapSucc(h, k)
       && (forall o: ref, f: Field :: 
        { read(k, o, f) } 
        !$IsGhostField(f) ==> read(h, o, f) == read(k, o, f)));

axiom (forall<T> h: Heap, k: Heap, v: T, t: Ty :: 
  { $HeapSucc(h, k), $IsAlloc(v, t, h) } 
  $HeapSucc(h, k) ==> $IsAlloc(v, t, h) ==> $IsAlloc(v, t, k));

axiom (forall h: Heap, k: Heap, bx: Box, t: Ty :: 
  { $HeapSucc(h, k), $IsAllocBox(bx, t, h) } 
  $HeapSucc(h, k) ==> $IsAllocBox(bx, t, h) ==> $IsAllocBox(bx, t, k));

const unique alloc: Field;

const unique allocName: NameFamily;

revealed function _System.array.Length(a: ref) : int;

axiom (forall o: ref :: { _System.array.Length(o) } 0 <= _System.array.Length(o));

revealed function Int(x: real) : int
uses {
axiom (forall x: real :: { Int(x): int } Int(x): int == int(x));
}

revealed function Real(x: int) : real
uses {
axiom (forall x: int :: { Real(x): real } Real(x): real == real(x));
}

axiom (forall i: int :: { Int(Real(i)) } Int(Real(i)) == i);

revealed function {:inline} _System.real.Floor(x: real) : int
{
  Int(x)
}

type Heap = [ref][Field]Box;

revealed function {:inline} read(H: Heap, r: ref, f: Field) : Box
{
  H[r][f]
}

revealed function {:inline} update(H: Heap, r: ref, f: Field, v: Box) : Heap
{
  H[r := H[r][f := v]]
}

revealed function $IsGoodHeap(Heap) : bool;

revealed function $IsHeapAnchor(Heap) : bool;

var $Heap: Heap where $IsGoodHeap($Heap) && $IsHeapAnchor($Heap);

const $OneHeap: Heap
uses {
axiom $IsGoodHeap($OneHeap);
}

revealed function $HeapSucc(Heap, Heap) : bool;

axiom (forall h: Heap, r: ref, f: Field, x: Box :: 
  { update(h, r, f, x) } 
  $IsGoodHeap(update(h, r, f, x)) ==> $HeapSucc(h, update(h, r, f, x)));

axiom (forall a: Heap, b: Heap, c: Heap :: 
  { $HeapSucc(a, b), $HeapSucc(b, c) } 
  a != c ==> $HeapSucc(a, b) && $HeapSucc(b, c) ==> $HeapSucc(a, c));

axiom (forall h: Heap, k: Heap :: 
  { $HeapSucc(h, k) } 
  $HeapSucc(h, k)
     ==> (forall o: ref :: 
      { read(k, o, alloc) } 
      $Unbox(read(h, o, alloc)) ==> $Unbox(read(k, o, alloc))));

revealed function $HeapSuccGhost(Heap, Heap) : bool;

procedure $YieldHavoc(this: ref, rds: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      $o == this || Set#IsMember(rds, $Box($o)) || Set#IsMember(nw, $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc0(this: ref, rds: Set, modi: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      Set#IsMember(rds, $Box($o)) && !Set#IsMember(modi, $Box($o)) && $o != this
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc1(this: ref, modi: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || $o == this
         || Set#IsMember(modi, $Box($o))
         || Set#IsMember(nw, $Box($o)));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterCollectNewObjects(prevHeap: Heap, newHeap: Heap, this: ref, NW: Field) returns (s: Set);
  ensures (forall bx: Box :: 
    { Set#IsMember(s, bx) } 
    Set#IsMember(s, bx)
       <==> Set#IsMember($Unbox(read(newHeap, this, NW)): Set, bx)
         || (
          $Unbox(bx) != null
           && !$Unbox(read(prevHeap, $Unbox(bx): ref, alloc))
           && $Unbox(read(newHeap, $Unbox(bx): ref, alloc))));



type Set;

revealed function Set#Card(s: Set) : int;

axiom (forall s: Set :: { Set#Card(s) } 0 <= Set#Card(s));

revealed function Set#Empty() : Set;

revealed function Set#IsMember(s: Set, o: Box) : bool;

axiom (forall o: Box :: 
  { Set#IsMember(Set#Empty(), o) } 
  !Set#IsMember(Set#Empty(), o));

axiom (forall s: Set :: 
  { Set#Card(s) } 
  (Set#Card(s) == 0 <==> s == Set#Empty())
     && (Set#Card(s) != 0
       ==> (exists x: Box :: { Set#IsMember(s, x) } Set#IsMember(s, x))));

revealed function Set#UnionOne(s: Set, o: Box) : Set;

axiom (forall a: Set, x: Box, o: Box :: 
  { Set#IsMember(Set#UnionOne(a, x), o) } 
  Set#IsMember(Set#UnionOne(a, x), o) <==> o == x || Set#IsMember(a, o));

axiom (forall a: Set, x: Box :: 
  { Set#UnionOne(a, x) } 
  Set#IsMember(Set#UnionOne(a, x), x));

axiom (forall a: Set, x: Box, y: Box :: 
  { Set#UnionOne(a, x), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#UnionOne(a, x), y));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  !Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

revealed function Set#Union(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Union(a, b), o) } 
  Set#IsMember(Set#Union(a, b), o) <==> Set#IsMember(a, o) || Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, b) } 
  Set#Disjoint(a, b)
     ==> Set#Difference(Set#Union(a, b), a) == b
       && Set#Difference(Set#Union(a, b), b) == a);

revealed function Set#Intersection(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Intersection(a, b), o) } 
  Set#IsMember(Set#Intersection(a, b), o)
     <==> Set#IsMember(a, o) && Set#IsMember(b, o));

axiom (forall a: Set, b: Set :: 
  { Set#Union(Set#Union(a, b), b) } 
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, Set#Union(a, b)) } 
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(Set#Intersection(a, b), b) } 
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(a, Set#Intersection(a, b)) } 
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Union(a, b)) } { Set#Card(Set#Intersection(a, b)) } 
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b))
     == Set#Card(a) + Set#Card(b));

revealed function Set#Difference(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Difference(a, b), o) } 
  Set#IsMember(Set#Difference(a, b), o)
     <==> Set#IsMember(a, o) && !Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Difference(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> !Set#IsMember(Set#Difference(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Difference(a, b)) } 
  Set#Card(Set#Difference(a, b))
         + Set#Card(Set#Difference(b, a))
         + Set#Card(Set#Intersection(a, b))
       == Set#Card(Set#Union(a, b))
     && Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

revealed function Set#Subset(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Subset(a, b) } 
  Set#Subset(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) ==> Set#IsMember(b, o)));

revealed function Set#Equal(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Equal(a, b) } 
  Set#Equal(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) <==> Set#IsMember(b, o)));

axiom (forall a: Set, b: Set :: { Set#Equal(a, b) } Set#Equal(a, b) ==> a == b);

revealed function Set#Disjoint(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Disjoint(a, b) } 
  Set#Disjoint(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      !Set#IsMember(a, o) || !Set#IsMember(b, o)));

revealed function Set#FromBoogieMap([Box]bool) : Set;

axiom (forall m: [Box]bool, bx: Box :: 
  { Set#IsMember(Set#FromBoogieMap(m), bx) } 
  Set#IsMember(Set#FromBoogieMap(m), bx) == m[bx]);

type ISet = [Box]bool;

revealed function ISet#Empty() : ISet;

axiom (forall o: Box :: { ISet#Empty()[o] } !ISet#Empty()[o]);

revealed function ISet#FromSet(Set) : ISet;

axiom (forall s: Set, bx: Box :: 
  { ISet#FromSet(s)[bx] } 
  ISet#FromSet(s)[bx] == Set#IsMember(s, bx));

revealed function ISet#UnionOne(ISet, Box) : ISet;

axiom (forall a: ISet, x: Box, o: Box :: 
  { ISet#UnionOne(a, x)[o] } 
  ISet#UnionOne(a, x)[o] <==> o == x || a[o]);

axiom (forall a: ISet, x: Box :: { ISet#UnionOne(a, x) } ISet#UnionOne(a, x)[x]);

axiom (forall a: ISet, x: Box, y: Box :: 
  { ISet#UnionOne(a, x), a[y] } 
  a[y] ==> ISet#UnionOne(a, x)[y]);

revealed function ISet#Union(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Union(a, b)[o] } 
  ISet#Union(a, b)[o] <==> a[o] || b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), a[y] } 
  a[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), b[y] } 
  b[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, b) } 
  ISet#Disjoint(a, b)
     ==> ISet#Difference(ISet#Union(a, b), a) == b
       && ISet#Difference(ISet#Union(a, b), b) == a);

revealed function ISet#Intersection(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Intersection(a, b)[o] } 
  ISet#Intersection(a, b)[o] <==> a[o] && b[o]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(ISet#Union(a, b), b) } 
  ISet#Union(ISet#Union(a, b), b) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, ISet#Union(a, b)) } 
  ISet#Union(a, ISet#Union(a, b)) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(ISet#Intersection(a, b), b) } 
  ISet#Intersection(ISet#Intersection(a, b), b) == ISet#Intersection(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(a, ISet#Intersection(a, b)) } 
  ISet#Intersection(a, ISet#Intersection(a, b)) == ISet#Intersection(a, b));

revealed function ISet#Difference(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Difference(a, b)[o] } 
  ISet#Difference(a, b)[o] <==> a[o] && !b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Difference(a, b), b[y] } 
  b[y] ==> !ISet#Difference(a, b)[y]);

revealed function ISet#Subset(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Subset(a, b) } 
  ISet#Subset(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] ==> b[o]));

revealed function ISet#Equal(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Equal(a, b) } 
  ISet#Equal(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] <==> b[o]));

axiom (forall a: ISet, b: ISet :: { ISet#Equal(a, b) } ISet#Equal(a, b) ==> a == b);

revealed function ISet#Disjoint(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Disjoint(a, b) } 
  ISet#Disjoint(a, b) <==> (forall o: Box :: { a[o] } { b[o] } !a[o] || !b[o]));

revealed function Math#min(a: int, b: int) : int;

axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);

axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);

axiom (forall a: int, b: int :: 
  { Math#min(a, b) } 
  Math#min(a, b) == a || Math#min(a, b) == b);

revealed function Math#clip(a: int) : int;

axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);

axiom (forall a: int :: { Math#clip(a) } a < 0 ==> Math#clip(a) == 0);

type MultiSet;

revealed function MultiSet#Multiplicity(m: MultiSet, o: Box) : int;

revealed function MultiSet#UpdateMultiplicity(m: MultiSet, o: Box, n: int) : MultiSet;

axiom (forall m: MultiSet, o: Box, n: int, p: Box :: 
  { MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) } 
  0 <= n
     ==> (o == p ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) == n)
       && (o != p
         ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p)
           == MultiSet#Multiplicity(m, p)));

revealed function $IsGoodMultiSet(ms: MultiSet) : bool;

axiom (forall ms: MultiSet :: 
  { $IsGoodMultiSet(ms) } 
  $IsGoodMultiSet(ms)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(ms, bx) } 
      0 <= MultiSet#Multiplicity(ms, bx)
         && MultiSet#Multiplicity(ms, bx) <= MultiSet#Card(ms)));

revealed function MultiSet#Card(m: MultiSet) : int;

axiom (forall s: MultiSet :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));

axiom (forall s: MultiSet, x: Box, n: int :: 
  { MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n)) } 
  0 <= n
     ==> MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n))
       == MultiSet#Card(s) - MultiSet#Multiplicity(s, x) + n);

revealed function MultiSet#Empty() : MultiSet;

axiom (forall o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Empty(), o) } 
  MultiSet#Multiplicity(MultiSet#Empty(), o) == 0);

axiom (forall s: MultiSet :: 
  { MultiSet#Card(s) } 
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty())
     && (MultiSet#Card(s) != 0
       ==> (exists x: Box :: 
        { MultiSet#Multiplicity(s, x) } 
        0 < MultiSet#Multiplicity(s, x))));

revealed function MultiSet#Singleton(o: Box) : MultiSet;

axiom (forall r: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Singleton(r), o) } 
  (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 1 <==> r == o)
     && (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 0 <==> r != o));

axiom (forall r: Box :: 
  { MultiSet#Singleton(r) } 
  MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r));

revealed function MultiSet#UnionOne(m: MultiSet, o: Box) : MultiSet;

axiom (forall a: MultiSet, x: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o) } 
  0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o)
     <==> o == x || 0 < MultiSet#Multiplicity(a, o));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#UnionOne(a, x) } 
  MultiSet#Multiplicity(MultiSet#UnionOne(a, x), x)
     == MultiSet#Multiplicity(a, x) + 1);

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  0 < MultiSet#Multiplicity(a, y)
     ==> 0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  x != y
     ==> MultiSet#Multiplicity(a, y) == MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#Card(MultiSet#UnionOne(a, x)) } 
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);

revealed function MultiSet#Union(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Union(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Union(a, b), o)
     == MultiSet#Multiplicity(a, o) + MultiSet#Multiplicity(b, o));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Union(a, b)) } 
  MultiSet#Card(MultiSet#Union(a, b)) == MultiSet#Card(a) + MultiSet#Card(b));

revealed function MultiSet#Intersection(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Intersection(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Intersection(a, b), o)
     == Math#min(MultiSet#Multiplicity(a, o), MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(MultiSet#Intersection(a, b), b) } 
  MultiSet#Intersection(MultiSet#Intersection(a, b), b)
     == MultiSet#Intersection(a, b));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) } 
  MultiSet#Intersection(a, MultiSet#Intersection(a, b))
     == MultiSet#Intersection(a, b));

revealed function MultiSet#Difference(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Difference(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Difference(a, b), o)
     == Math#clip(MultiSet#Multiplicity(a, o) - MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet, y: Box :: 
  { MultiSet#Difference(a, b), MultiSet#Multiplicity(b, y), MultiSet#Multiplicity(a, y) } 
  MultiSet#Multiplicity(a, y) <= MultiSet#Multiplicity(b, y)
     ==> MultiSet#Multiplicity(MultiSet#Difference(a, b), y) == 0);

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Difference(a, b)) } 
  MultiSet#Card(MultiSet#Difference(a, b))
         + MultiSet#Card(MultiSet#Difference(b, a))
         + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
       == MultiSet#Card(MultiSet#Union(a, b))
     && MultiSet#Card(MultiSet#Difference(a, b))
       == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

revealed function MultiSet#Subset(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Subset(a, b) } 
  MultiSet#Subset(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) <= MultiSet#Multiplicity(b, o)));

revealed function MultiSet#Equal(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b) ==> a == b);

revealed function MultiSet#Disjoint(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Disjoint(a, b) } 
  MultiSet#Disjoint(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == 0 || MultiSet#Multiplicity(b, o) == 0));

revealed function MultiSet#FromSet(s: Set) : MultiSet;

axiom (forall s: Set, a: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSet(s), a) } 
  (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 0 <==> !Set#IsMember(s, a))
     && (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 1 <==> Set#IsMember(s, a)));

axiom (forall s: Set :: 
  { MultiSet#Card(MultiSet#FromSet(s)) } 
  MultiSet#Card(MultiSet#FromSet(s)) == Set#Card(s));

revealed function MultiSet#FromSeq(s: Seq) : MultiSet
uses {
axiom MultiSet#FromSeq(Seq#Empty()) == MultiSet#Empty();
}

axiom (forall s: Seq :: { MultiSet#FromSeq(s) } $IsGoodMultiSet(MultiSet#FromSeq(s)));

axiom (forall s: Seq :: 
  { MultiSet#Card(MultiSet#FromSeq(s)) } 
  MultiSet#Card(MultiSet#FromSeq(s)) == Seq#Length(s));

axiom (forall s: Seq, v: Box :: 
  { MultiSet#FromSeq(Seq#Build(s, v)) } 
  MultiSet#FromSeq(Seq#Build(s, v)) == MultiSet#UnionOne(MultiSet#FromSeq(s), v));

axiom (forall a: Seq, b: Seq :: 
  { MultiSet#FromSeq(Seq#Append(a, b)) } 
  MultiSet#FromSeq(Seq#Append(a, b))
     == MultiSet#Union(MultiSet#FromSeq(a), MultiSet#FromSeq(b)));

axiom (forall s: Seq, i: int, v: Box, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x) } 
  0 <= i && i < Seq#Length(s)
     ==> MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x)
       == MultiSet#Multiplicity(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s), MultiSet#Singleton(Seq#Index(s, i))), 
          MultiSet#Singleton(v)), 
        x));

axiom (forall s: Seq, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(s), x) } 
  (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && x == Seq#Index(s, i))
     <==> 0 < MultiSet#Multiplicity(MultiSet#FromSeq(s), x));

type Seq;

revealed function Seq#Length(s: Seq) : int;

axiom (forall s: Seq :: { Seq#Length(s) } 0 <= Seq#Length(s));

revealed function Seq#Empty() : Seq
uses {
axiom Seq#Length(Seq#Empty()) == 0;
}

axiom (forall s: Seq :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

revealed function Seq#Build(s: Seq, val: Box) : Seq;

revealed function Seq#Build_inv0(s: Seq) : Seq;

revealed function Seq#Build_inv1(s: Seq) : Box;

axiom (forall s: Seq, val: Box :: 
  { Seq#Build(s, val) } 
  Seq#Build_inv0(Seq#Build(s, val)) == s
     && Seq#Build_inv1(Seq#Build(s, val)) == val);

axiom (forall s: Seq, v: Box :: 
  { Seq#Build(s, v) } 
  Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Index(Seq#Build(s, v), i) } 
  (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
     && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Length(Seq#Append(s0, s1)) } 
  Seq#Length(Seq#Append(s0, s1)) == Seq#Length(s0) + Seq#Length(s1));

revealed function Seq#Index(s: Seq, i: int) : Box;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#Index(Seq#Append(s0, s1), n) } 
  (n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s0, n))
     && (Seq#Length(s0) <= n
       ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s1, n - Seq#Length(s0))));

revealed function Seq#Update(s: Seq, i: int, val: Box) : Seq;

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Length(Seq#Update(s, i, v)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s, i, v)) == Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Index(Seq#Update(s, i, v), n) } 
  0 <= n && n < Seq#Length(s)
     ==> (i == n ==> Seq#Index(Seq#Update(s, i, v), n) == v)
       && (i != n ==> Seq#Index(Seq#Update(s, i, v), n) == Seq#Index(s, n)));

revealed function Seq#Append(s0: Seq, s1: Seq) : Seq;

revealed function Seq#Contains(s: Seq, val: Box) : bool;

axiom (forall s: Seq, x: Box :: 
  { Seq#Contains(s, x) } 
  Seq#Contains(s, x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall x: Box :: 
  { Seq#Contains(Seq#Empty(), x) } 
  !Seq#Contains(Seq#Empty(), x));

axiom (forall s0: Seq, s1: Seq, x: Box :: 
  { Seq#Contains(Seq#Append(s0, s1), x) } 
  Seq#Contains(Seq#Append(s0, s1), x)
     <==> Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall s: Seq, v: Box, x: Box :: 
  { Seq#Contains(Seq#Build(s, v), x) } 
  Seq#Contains(Seq#Build(s, v), x) <==> v == x || Seq#Contains(s, x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Take(s, n), x) } 
  Seq#Contains(Seq#Take(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Drop(s, n), x) } 
  Seq#Contains(Seq#Drop(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

revealed function Seq#Equal(s0: Seq, s1: Seq) : bool;

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Equal(s0, s1) } 
  Seq#Equal(s0, s1)
     <==> Seq#Length(s0) == Seq#Length(s1)
       && (forall j: int :: 
        { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

axiom (forall a: Seq, b: Seq :: { Seq#Equal(a, b) } Seq#Equal(a, b) ==> a == b);

revealed function Seq#SameUntil(s0: Seq, s1: Seq, n: int) : bool;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#SameUntil(s0, s1, n) } 
  Seq#SameUntil(s0, s1, n)
     <==> (forall j: int :: 
      { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
      0 <= j && j < n ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

revealed function Seq#Take(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Take(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s, n)) == n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Take(s, n), j) } { Seq#Index(s, j), Seq#Take(s, n) } 
  0 <= j && j < n && j < Seq#Length(s)
     ==> Seq#Index(Seq#Take(s, n), j) == Seq#Index(s, j));

revealed function Seq#Drop(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Drop(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s, n)) == Seq#Length(s) - n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Drop(s, n), j) } 
  0 <= n && 0 <= j && j < Seq#Length(s) - n
     ==> Seq#Index(Seq#Drop(s, n), j) == Seq#Index(s, j + n));

axiom (forall s: Seq, n: int, k: int :: 
  {:weight 25} { Seq#Index(s, k), Seq#Drop(s, n) } 
  0 <= n && n <= k && k < Seq#Length(s)
     ==> Seq#Index(Seq#Drop(s, n), k - n) == Seq#Index(s, k));

axiom (forall s: Seq, t: Seq, n: int :: 
  { Seq#Take(Seq#Append(s, t), n) } { Seq#Drop(Seq#Append(s, t), n) } 
  n == Seq#Length(s)
     ==> Seq#Take(Seq#Append(s, t), n) == s && Seq#Drop(Seq#Append(s, t), n) == t);

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  n <= i && i < Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= n && n <= i && i < Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i - n, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));

axiom (forall s: Seq, v: Box, n: int :: 
  { Seq#Drop(Seq#Build(s, v), n) } 
  0 <= n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Build(s, v), n) == Seq#Build(Seq#Drop(s, n), v));

axiom (forall s: Seq, n: int :: { Seq#Drop(s, n) } n == 0 ==> Seq#Drop(s, n) == s);

axiom (forall s: Seq, n: int :: 
  { Seq#Take(s, n) } 
  n == 0 ==> Seq#Take(s, n) == Seq#Empty());

axiom (forall s: Seq, m: int, n: int :: 
  { Seq#Drop(Seq#Drop(s, m), n) } 
  0 <= m && 0 <= n && m + n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, m + n));

axiom (forall s: Seq, bx: Box, t: Ty :: 
  { $Is(Seq#Build(s, bx), TSeq(t)) } 
  $Is(s, TSeq(t)) && $IsBox(bx, t) ==> $Is(Seq#Build(s, bx), TSeq(t)));

revealed function Seq#Create(ty: Ty, heap: Heap, len: int, init: HandleType) : Seq;

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType :: 
  { Seq#Length(Seq#Create(ty, heap, len, init): Seq) } 
  $IsGoodHeap(heap) && 0 <= len
     ==> Seq#Length(Seq#Create(ty, heap, len, init): Seq) == len);

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType, i: int :: 
  { Seq#Index(Seq#Create(ty, heap, len, init), i) } 
  $IsGoodHeap(heap) && 0 <= i && i < len
     ==> Seq#Index(Seq#Create(ty, heap, len, init), i)
       == Apply1(TInt, ty, heap, init, $Box(i)));

revealed function Seq#FromArray(h: Heap, a: ref) : Seq;

axiom (forall h: Heap, a: ref :: 
  { Seq#Length(Seq#FromArray(h, a)) } 
  Seq#Length(Seq#FromArray(h, a)) == _System.array.Length(a));

axiom (forall h: Heap, a: ref :: 
  { Seq#FromArray(h, a) } 
  (forall i: int :: 
    { read(h, a, IndexField(i)) } { Seq#Index(Seq#FromArray(h, a): Seq, i) } 
    0 <= i && i < Seq#Length(Seq#FromArray(h, a))
       ==> Seq#Index(Seq#FromArray(h, a), i) == read(h, a, IndexField(i))));

axiom (forall h0: Heap, h1: Heap, a: ref :: 
  { Seq#FromArray(h1, a), $HeapSucc(h0, h1) } 
  $IsGoodHeap(h0) && $IsGoodHeap(h1) && $HeapSucc(h0, h1) && h0[a] == h1[a]
     ==> Seq#FromArray(h0, a) == Seq#FromArray(h1, a));

axiom (forall h: Heap, i: int, v: Box, a: ref :: 
  { Seq#FromArray(update(h, a, IndexField(i), v), a) } 
  0 <= i && i < _System.array.Length(a)
     ==> Seq#FromArray(update(h, a, IndexField(i), v), a)
       == Seq#Update(Seq#FromArray(h, a), i, v));

axiom (forall h: Heap, a: ref, n0: int, n1: int :: 
  { Seq#Take(Seq#FromArray(h, a), n0), Seq#Take(Seq#FromArray(h, a), n1) } 
  n0 + 1 == n1 && 0 <= n0 && n1 <= _System.array.Length(a)
     ==> Seq#Take(Seq#FromArray(h, a), n1)
       == Seq#Build(Seq#Take(Seq#FromArray(h, a), n0), read(h, a, IndexField(n0): Field)));

revealed function Seq#Rank(Seq) : int;

axiom (forall s: Seq, i: int :: 
  { DtRank($Unbox(Seq#Index(s, i)): DatatypeType) } 
  0 <= i && i < Seq#Length(s)
     ==> DtRank($Unbox(Seq#Index(s, i)): DatatypeType) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Drop(s, i)) } 
  0 < i && i <= Seq#Length(s) ==> Seq#Rank(Seq#Drop(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Take(s, i)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Rank(Seq#Take(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int, j: int :: 
  { Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) } 
  0 <= i && i < j && j <= Seq#Length(s)
     ==> Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) < Seq#Rank(s));

type Map;

revealed function Map#Domain(Map) : Set;

revealed function Map#Elements(Map) : [Box]Box;

revealed function Map#Card(Map) : int;

axiom (forall m: Map :: { Map#Card(m) } 0 <= Map#Card(m));

axiom (forall m: Map :: { Map#Card(m) } Map#Card(m) == 0 <==> m == Map#Empty());

axiom (forall m: Map :: 
  { Map#Domain(m) } 
  m == Map#Empty() || (exists k: Box :: Set#IsMember(Map#Domain(m), k)));

axiom (forall m: Map :: 
  { Map#Values(m) } 
  m == Map#Empty() || (exists v: Box :: Set#IsMember(Map#Values(m), v)));

axiom (forall m: Map :: 
  { Map#Items(m) } 
  m == Map#Empty()
     || (exists k: Box, v: Box :: 
      Set#IsMember(Map#Items(m), $Box(#_System._tuple#2._#Make2(k, v)))));

axiom (forall m: Map :: 
  { Set#Card(Map#Domain(m)) } { Map#Card(m) } 
  Set#Card(Map#Domain(m)) == Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Values(m)) } { Map#Card(m) } 
  Set#Card(Map#Values(m)) <= Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Items(m)) } { Map#Card(m) } 
  Set#Card(Map#Items(m)) == Map#Card(m));

revealed function Map#Values(Map) : Set;

axiom (forall m: Map, v: Box :: 
  { Set#IsMember(Map#Values(m), v) } 
  Set#IsMember(Map#Values(m), v)
     == (exists u: Box :: 
      { Set#IsMember(Map#Domain(m), u) } { Map#Elements(m)[u] } 
      Set#IsMember(Map#Domain(m), u) && v == Map#Elements(m)[u]));

revealed function Map#Items(Map) : Set;

revealed function #_System._tuple#2._#Make2(Box, Box) : DatatypeType;

revealed function _System.Tuple2._0(DatatypeType) : Box;

revealed function _System.Tuple2._1(DatatypeType) : Box;

axiom (forall m: Map, item: Box :: 
  { Set#IsMember(Map#Items(m), item) } 
  Set#IsMember(Map#Items(m), item)
     <==> Set#IsMember(Map#Domain(m), _System.Tuple2._0($Unbox(item)))
       && Map#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function Map#Empty() : Map;

axiom (forall u: Box :: 
  { Set#IsMember(Map#Domain(Map#Empty(): Map), u) } 
  !Set#IsMember(Map#Domain(Map#Empty(): Map), u));

revealed function Map#Glue(Set, [Box]Box, Ty) : Map;

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Domain(Map#Glue(a, b, t)) } 
  Map#Domain(Map#Glue(a, b, t)) == a);

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Elements(Map#Glue(a, b, t)) } 
  Map#Elements(Map#Glue(a, b, t)) == b);

axiom (forall a: Set, b: [Box]Box, t0: Ty, t1: Ty :: 
  { Map#Glue(a, b, TMap(t0, t1)) } 
  (forall bx: Box :: Set#IsMember(a, bx) ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(Map#Glue(a, b, TMap(t0, t1)), TMap(t0, t1)));

revealed function Map#Build(Map, Box, Box) : Map;

axiom (forall m: Map, u: Box, u': Box, v: Box :: 
  { Set#IsMember(Map#Domain(Map#Build(m, u, v)), u') } 
    { Map#Elements(Map#Build(m, u, v))[u'] } 
  (u' == u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
           == Set#IsMember(Map#Domain(m), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  Set#IsMember(Map#Domain(m), u) ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  !Set#IsMember(Map#Domain(m), u)
     ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

revealed function Map#Merge(Map, Map) : Map;

axiom (forall m: Map, n: Map :: 
  { Map#Domain(Map#Merge(m, n)) } 
  Map#Domain(Map#Merge(m, n)) == Set#Union(Map#Domain(m), Map#Domain(n)));

axiom (forall m: Map, n: Map, u: Box :: 
  { Map#Elements(Map#Merge(m, n))[u] } 
  Set#IsMember(Map#Domain(Map#Merge(m, n)), u)
     ==> (!Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(m)[u])
       && (Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(n)[u]));

revealed function Map#Subtract(Map, Set) : Map;

axiom (forall m: Map, s: Set :: 
  { Map#Domain(Map#Subtract(m, s)) } 
  Map#Domain(Map#Subtract(m, s)) == Set#Difference(Map#Domain(m), s));

axiom (forall m: Map, s: Set, u: Box :: 
  { Map#Elements(Map#Subtract(m, s))[u] } 
  Set#IsMember(Map#Domain(Map#Subtract(m, s)), u)
     ==> Map#Elements(Map#Subtract(m, s))[u] == Map#Elements(m)[u]);

revealed function Map#Equal(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Equal(m, m') } 
  Map#Equal(m, m')
     <==> (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) == Set#IsMember(Map#Domain(m'), u))
       && (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) ==> Map#Elements(m)[u] == Map#Elements(m')[u]));

axiom (forall m: Map, m': Map :: { Map#Equal(m, m') } Map#Equal(m, m') ==> m == m');

revealed function Map#Disjoint(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Disjoint(m, m') } 
  Map#Disjoint(m, m')
     <==> (forall o: Box :: 
      { Set#IsMember(Map#Domain(m), o) } { Set#IsMember(Map#Domain(m'), o) } 
      !Set#IsMember(Map#Domain(m), o) || !Set#IsMember(Map#Domain(m'), o)));

type IMap;

revealed function IMap#Domain(IMap) : ISet;

revealed function IMap#Elements(IMap) : [Box]Box;

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() || (exists k: Box :: IMap#Domain(m)[k]));

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() || (exists v: Box :: IMap#Values(m)[v]));

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty()
     || (exists k: Box, v: Box :: IMap#Items(m)[$Box(#_System._tuple#2._#Make2(k, v))]));

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() <==> IMap#Domain(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() <==> IMap#Values(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty() <==> IMap#Items(m) == ISet#Empty());

revealed function IMap#Values(IMap) : ISet;

axiom (forall m: IMap, v: Box :: 
  { IMap#Values(m)[v] } 
  IMap#Values(m)[v]
     == (exists u: Box :: 
      { IMap#Domain(m)[u] } { IMap#Elements(m)[u] } 
      IMap#Domain(m)[u] && v == IMap#Elements(m)[u]));

revealed function IMap#Items(IMap) : ISet;

axiom (forall m: IMap, item: Box :: 
  { IMap#Items(m)[item] } 
  IMap#Items(m)[item]
     <==> IMap#Domain(m)[_System.Tuple2._0($Unbox(item))]
       && IMap#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function IMap#Empty() : IMap;

axiom (forall u: Box :: 
  { IMap#Domain(IMap#Empty(): IMap)[u] } 
  !IMap#Domain(IMap#Empty(): IMap)[u]);

revealed function IMap#Glue([Box]bool, [Box]Box, Ty) : IMap;

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Domain(IMap#Glue(a, b, t)) } 
  IMap#Domain(IMap#Glue(a, b, t)) == a);

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Elements(IMap#Glue(a, b, t)) } 
  IMap#Elements(IMap#Glue(a, b, t)) == b);

axiom (forall a: [Box]bool, b: [Box]Box, t0: Ty, t1: Ty :: 
  { IMap#Glue(a, b, TIMap(t0, t1)) } 
  (forall bx: Box :: a[bx] ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(IMap#Glue(a, b, TIMap(t0, t1)), TIMap(t0, t1)));

revealed function IMap#Build(IMap, Box, Box) : IMap;

axiom (forall m: IMap, u: Box, u': Box, v: Box :: 
  { IMap#Domain(IMap#Build(m, u, v))[u'] } 
    { IMap#Elements(IMap#Build(m, u, v))[u'] } 
  (u' == u
       ==> IMap#Domain(IMap#Build(m, u, v))[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> IMap#Domain(IMap#Build(m, u, v))[u'] == IMap#Domain(m)[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == IMap#Elements(m)[u']));

revealed function IMap#Equal(IMap, IMap) : bool;

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m')
     <==> (forall u: Box :: IMap#Domain(m)[u] == IMap#Domain(m')[u])
       && (forall u: Box :: 
        IMap#Domain(m)[u] ==> IMap#Elements(m)[u] == IMap#Elements(m')[u]));

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m') ==> m == m');

revealed function IMap#Merge(IMap, IMap) : IMap;

axiom (forall m: IMap, n: IMap :: 
  { IMap#Domain(IMap#Merge(m, n)) } 
  IMap#Domain(IMap#Merge(m, n)) == ISet#Union(IMap#Domain(m), IMap#Domain(n)));

axiom (forall m: IMap, n: IMap, u: Box :: 
  { IMap#Elements(IMap#Merge(m, n))[u] } 
  IMap#Domain(IMap#Merge(m, n))[u]
     ==> (!IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(m)[u])
       && (IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(n)[u]));

revealed function IMap#Subtract(IMap, Set) : IMap;

axiom (forall m: IMap, s: Set :: 
  { IMap#Domain(IMap#Subtract(m, s)) } 
  IMap#Domain(IMap#Subtract(m, s))
     == ISet#Difference(IMap#Domain(m), ISet#FromSet(s)));

axiom (forall m: IMap, s: Set, u: Box :: 
  { IMap#Elements(IMap#Subtract(m, s))[u] } 
  IMap#Domain(IMap#Subtract(m, s))[u]
     ==> IMap#Elements(IMap#Subtract(m, s))[u] == IMap#Elements(m)[u]);

revealed function INTERNAL_add_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_add_boogie(x, y): int } 
  INTERNAL_add_boogie(x, y): int == x + y);
}

revealed function INTERNAL_sub_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_sub_boogie(x, y): int } 
  INTERNAL_sub_boogie(x, y): int == x - y);
}

revealed function INTERNAL_mul_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mul_boogie(x, y): int } 
  INTERNAL_mul_boogie(x, y): int == x * y);
}

revealed function INTERNAL_div_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_div_boogie(x, y): int } 
  INTERNAL_div_boogie(x, y): int == x div y);
}

revealed function INTERNAL_mod_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mod_boogie(x, y): int } 
  INTERNAL_mod_boogie(x, y): int == x mod y);
}

revealed function {:never_pattern true} INTERNAL_lt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_lt_boogie(x, y): bool } 
  INTERNAL_lt_boogie(x, y): bool == (x < y));
}

revealed function {:never_pattern true} INTERNAL_le_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_le_boogie(x, y): bool } 
  INTERNAL_le_boogie(x, y): bool == (x <= y));
}

revealed function {:never_pattern true} INTERNAL_gt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_gt_boogie(x, y): bool } 
  INTERNAL_gt_boogie(x, y): bool == (x > y));
}

revealed function {:never_pattern true} INTERNAL_ge_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_ge_boogie(x, y): bool } 
  INTERNAL_ge_boogie(x, y): bool == (x >= y));
}

revealed function Mul(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mul(x, y): int } Mul(x, y): int == x * y);
}

revealed function Div(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Div(x, y): int } Div(x, y): int == x div y);
}

revealed function Mod(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mod(x, y): int } Mod(x, y): int == x mod y);
}

revealed function Add(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Add(x, y): int } Add(x, y): int == x + y);
}

revealed function Sub(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Sub(x, y): int } Sub(x, y): int == x - y);
}

function Tclass._System.nat() : Ty
uses {
// Tclass._System.nat Tag
axiom Tag(Tclass._System.nat()) == Tagclass._System.nat
   && TagFamily(Tclass._System.nat()) == tytagFamily$nat;
}

const unique Tagclass._System.nat: TyTag;

// Box/unbox axiom for Tclass._System.nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.nat()) } 
  $IsBox(bx, Tclass._System.nat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._System.nat()));

// $Is axiom for subset type _System.nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._System.nat()) } 
  $Is(x#0, Tclass._System.nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type _System.nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._System.nat(), $h) } 
  $IsAlloc(x#0, Tclass._System.nat(), $h));

const unique class._System.object?: ClassName;

const unique Tagclass._System.object?: TyTag;

// Box/unbox axiom for Tclass._System.object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object?()) } 
  $IsBox(bx, Tclass._System.object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object?()));

// $Is axiom for trait object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._System.object?()) } 
  $Is($o, Tclass._System.object?()));

// $IsAlloc axiom for trait object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.object?(), $h) } 
  $IsAlloc($o, Tclass._System.object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_System.object(ty: Ty) : bool;

function Tclass._System.object() : Ty
uses {
// Tclass._System.object Tag
axiom Tag(Tclass._System.object()) == Tagclass._System.object
   && TagFamily(Tclass._System.object()) == tytagFamily$object;
}

const unique Tagclass._System.object: TyTag;

// Box/unbox axiom for Tclass._System.object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object()) } 
  $IsBox(bx, Tclass._System.object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object()));

// $Is axiom for non-null type _System.object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._System.object()) } { $Is(c#0, Tclass._System.object?()) } 
  $Is(c#0, Tclass._System.object())
     <==> $Is(c#0, Tclass._System.object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _System.object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.object(), $h) } 
    { $IsAlloc(c#0, Tclass._System.object?(), $h) } 
  $IsAlloc(c#0, Tclass._System.object(), $h)
     <==> $IsAlloc(c#0, Tclass._System.object?(), $h));

const unique class._System.array?: ClassName;

function Tclass._System.array?(Ty) : Ty;

const unique Tagclass._System.array?: TyTag;

// Tclass._System.array? Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tag(Tclass._System.array?(_System.array$arg)) == Tagclass._System.array?
     && TagFamily(Tclass._System.array?(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array?_0(Ty) : Ty;

// Tclass._System.array? injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tclass._System.array?_0(Tclass._System.array?(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array?
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array?(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array?(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array?(_System.array$arg)));

// array.: Type axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
     ==> $IsBox(read($h, $o, IndexField($i0)), _System.array$arg));

// array.: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, IndexField($i0)), _System.array$arg, $h));

// $Is axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array?(_System.array$arg)) } 
  $Is($o, Tclass._System.array?(_System.array$arg))
     <==> $o == null || dtype($o) == Tclass._System.array?(_System.array$arg));

// $IsAlloc axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// array.Length: Type axiom
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { _System.array.Length($o), Tclass._System.array?(_System.array$arg) } 
  $o != null && dtype($o) == Tclass._System.array?(_System.array$arg)
     ==> $Is(_System.array.Length($o), TInt));

// array.Length: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array.Length($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array.Length($o), TInt, $h));

function Tclass._System.array(Ty) : Ty;

const unique Tagclass._System.array: TyTag;

// Tclass._System.array Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tag(Tclass._System.array(_System.array$arg)) == Tagclass._System.array
     && TagFamily(Tclass._System.array(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array_0(Ty) : Ty;

// Tclass._System.array injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tclass._System.array_0(Tclass._System.array(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array(_System.array$arg)));

// $Is axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array(_System.array$arg)) } 
    { $Is(c#0, Tclass._System.array?(_System.array$arg)) } 
  $Is(c#0, Tclass._System.array(_System.array$arg))
     <==> $Is(c#0, Tclass._System.array?(_System.array$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h));

function Tclass._System.___hFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc1: TyTag;

// Tclass._System.___hFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hFunc1(#$T0, #$R)) == Tagclass._System.___hFunc1
     && TagFamily(Tclass._System.___hFunc1(#$T0, #$R)) == tytagFamily$_#Func1);

function Tclass._System.___hFunc1_0(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_0(Tclass._System.___hFunc1(#$T0, #$R)) == #$T0);

function Tclass._System.___hFunc1_1(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_1(Tclass._System.___hFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc1(#$T0, #$R)));

function Handle1([Heap,Box]Box, [Heap,Box]bool, [Heap,Box]Set) : HandleType;

function Requires1(Ty, Ty, Heap, HandleType, Box) : bool;

function Reads1(Ty, Ty, Heap, HandleType, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) == h[heap, bx0]);

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Requires1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  r[heap, bx0] ==> Requires1(t0, t1, heap, Handle1(h, r, rd), bx0));

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box, 
    bx: Box :: 
  { Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx) } 
  Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx)
     == Set#IsMember(rd[heap, bx0], bx));

function {:inline} Requires1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

function {:inline} Reads1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// empty-reads property for Reads1 
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Reads1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Reads1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap) && $IsBox(bx0, t0) && $Is(f, Tclass._System.___hFunc1(t0, t1))
     ==> (Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
       <==> Set#Equal(Reads1(t0, t1, heap, f, bx0), Set#Empty(): Set)));

// empty-reads property for Requires1
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Requires1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Requires1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
     ==> Requires1(t0, t1, $OneHeap, f, bx0) == Requires1(t0, t1, heap, f, bx0));

axiom (forall f: HandleType, t0: Ty, t1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
     <==> (forall h: Heap, bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsGoodHeap(h) && $IsBox(bx0, t0) && Requires1(t0, t1, h, f, bx0)
         ==> $IsBox(Apply1(t0, t1, h, f, bx0), t1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, u0: Ty, u1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)), $Is(f, Tclass._System.___hFunc1(u0, u1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t1) } { $IsBox(bx, u1) } 
        $IsBox(bx, t1) ==> $IsBox(bx, u1))
     ==> $Is(f, Tclass._System.___hFunc1(u0, u1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
       <==> (forall bx0: Box :: 
        { Apply1(t0, t1, h, f, bx0) } { Reads1(t0, t1, h, f, bx0) } 
        $IsBox(bx0, t0) && $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r)) } 
            r != null && Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
     ==> (forall bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
         ==> $IsAllocBox(Apply1(t0, t1, h, f, bx0), t1, h)));

function Tclass._System.___hPartialFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc1: TyTag;

// Tclass._System.___hPartialFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == Tagclass._System.___hPartialFunc1
     && TagFamily(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == tytagFamily$_#PartialFunc1);

function Tclass._System.___hPartialFunc1_0(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_0(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc1_1(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_1(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0)
           ==> Set#Equal(Reads1(#$T0, #$R, $OneHeap, f#0, x0#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc1(#$T0, #$R), $h));

function Tclass._System.___hTotalFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc1: TyTag;

// Tclass._System.___hTotalFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hTotalFunc1(#$T0, #$R)) == Tagclass._System.___hTotalFunc1
     && TagFamily(Tclass._System.___hTotalFunc1(#$T0, #$R)) == tytagFamily$_#TotalFunc1);

function Tclass._System.___hTotalFunc1_0(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_0(Tclass._System.___hTotalFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc1_1(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_1(Tclass._System.___hTotalFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0) ==> Requires1(#$T0, #$R, $OneHeap, f#0, x0#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h));

function Tclass._System.___hFunc0(Ty) : Ty;

const unique Tagclass._System.___hFunc0: TyTag;

// Tclass._System.___hFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tag(Tclass._System.___hFunc0(#$R)) == Tagclass._System.___hFunc0
     && TagFamily(Tclass._System.___hFunc0(#$R)) == tytagFamily$_#Func0);

function Tclass._System.___hFunc0_0(Ty) : Ty;

// Tclass._System.___hFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tclass._System.___hFunc0_0(Tclass._System.___hFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc0(#$R)));

function Handle0([Heap]Box, [Heap]bool, [Heap]Set) : HandleType;

function Apply0(Ty, Heap, HandleType) : Box;

function Requires0(Ty, Heap, HandleType) : bool;

function Reads0(Ty, Heap, HandleType) : Set;

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Apply0(t0, heap, Handle0(h, r, rd)) } 
  Apply0(t0, heap, Handle0(h, r, rd)) == h[heap]);

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Requires0(t0, heap, Handle0(h, r, rd)) } 
  r[heap] ==> Requires0(t0, heap, Handle0(h, r, rd)));

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set, bx: Box :: 
  { Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx) } 
  Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx)
     == Set#IsMember(rd[heap], bx));

function {:inline} Requires0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

function {:inline} Reads0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// empty-reads property for Reads0 
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Reads0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Reads0(t0, heap, f) } 
  $IsGoodHeap(heap) && $Is(f, Tclass._System.___hFunc0(t0))
     ==> (Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
       <==> Set#Equal(Reads0(t0, heap, f), Set#Empty(): Set)));

// empty-reads property for Requires0
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Requires0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Requires0(t0, heap, f) } 
  $IsGoodHeap(heap)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
     ==> Requires0(t0, $OneHeap, f) == Requires0(t0, heap, f));

axiom (forall f: HandleType, t0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
     <==> (forall h: Heap :: 
      { Apply0(t0, h, f) } 
      $IsGoodHeap(h) && Requires0(t0, h, f) ==> $IsBox(Apply0(t0, h, f), t0)));

axiom (forall f: HandleType, t0: Ty, u0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)), $Is(f, Tclass._System.___hFunc0(u0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t0) } { $IsBox(bx, u0) } 
        $IsBox(bx, t0) ==> $IsBox(bx, u0))
     ==> $Is(f, Tclass._System.___hFunc0(u0)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc0(t0), h)
       <==> Requires0(t0, h, f)
         ==> (forall r: ref :: 
          { Set#IsMember(Reads0(t0, h, f), $Box(r)) } 
          r != null && Set#IsMember(Reads0(t0, h, f), $Box(r))
             ==> $Unbox(read(h, r, alloc)): bool)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc0(t0), h)
     ==> 
    Requires0(t0, h, f)
     ==> $IsAllocBox(Apply0(t0, h, f), t0, h));

function Tclass._System.___hPartialFunc0(Ty) : Ty;

const unique Tagclass._System.___hPartialFunc0: TyTag;

// Tclass._System.___hPartialFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tag(Tclass._System.___hPartialFunc0(#$R)) == Tagclass._System.___hPartialFunc0
     && TagFamily(Tclass._System.___hPartialFunc0(#$R)) == tytagFamily$_#PartialFunc0);

function Tclass._System.___hPartialFunc0_0(Ty) : Ty;

// Tclass._System.___hPartialFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tclass._System.___hPartialFunc0_0(Tclass._System.___hPartialFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc0(#$R)));

// $Is axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hFunc0(#$R))
       && Set#Equal(Reads0(#$R, $OneHeap, f#0), Set#Empty(): Set));

// $IsAlloc axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc0(#$R), $h));

function Tclass._System.___hTotalFunc0(Ty) : Ty;

const unique Tagclass._System.___hTotalFunc0: TyTag;

// Tclass._System.___hTotalFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tag(Tclass._System.___hTotalFunc0(#$R)) == Tagclass._System.___hTotalFunc0
     && TagFamily(Tclass._System.___hTotalFunc0(#$R)) == tytagFamily$_#TotalFunc0);

function Tclass._System.___hTotalFunc0_0(Ty) : Ty;

// Tclass._System.___hTotalFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tclass._System.___hTotalFunc0_0(Tclass._System.___hTotalFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc0(#$R)));

// $Is axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) && Requires0(#$R, $OneHeap, f#0));

// $IsAlloc axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h));

const unique ##_System._tuple#2._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_System._tuple#2._#Make2(a#0#0#0, a#0#1#0))
     == ##_System._tuple#2._#Make2);
}

function _System.Tuple2.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #_System._tuple#2._#Make2(a#1#0#0, a#1#1#0)));

const unique Tagclass._System.Tuple2: TyTag;

// Tclass._System.Tuple2 Tag
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tag(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == Tagclass._System.Tuple2
     && TagFamily(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == tytagFamily$_tuple#2);

function Tclass._System.Tuple2_0(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 0
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_0(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T0);

function Tclass._System.Tuple2_1(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 1
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_1(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T1);

// Box/unbox axiom for Tclass._System.Tuple2
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)));

// Constructor $Is
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, a#2#0#0: Box, a#2#1#0: Box :: 
  { $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     <==> $IsBox(a#2#0#0, _System._tuple#2$T0) && $IsBox(a#2#1#0, _System._tuple#2$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2$T0: Ty, 
    _System._tuple#2$T1: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _System._tuple#2$T0, $h)
         && $IsAllocBox(a#2#1#0, _System._tuple#2$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#_System._tuple#2._#Make2(a#3#0#0, a#3#1#0)));

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#4#0#0, a#4#1#0) } 
  _System.Tuple2._0(#_System._tuple#2._#Make2(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#_System._tuple#2._#Make2(a#5#0#0, a#5#1#0)));

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#6#0#0, a#6#1#0) } 
  _System.Tuple2._1(#_System._tuple#2._#Make2(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0) < DtRank(#_System._tuple#2._#Make2(a#7#0#0, a#7#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2(d) } 
  $IsA#_System.Tuple2(d) ==> _System.Tuple2.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d), $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> _System.Tuple2.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b)
     <==> _System.Tuple2._0(a) == _System.Tuple2._0(b)
       && _System.Tuple2._1(a) == _System.Tuple2._1(b));

// Datatype extensionality axiom: _System._tuple#2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b) <==> a == b);

const unique class._System.Tuple2: ClassName;

// Constructor function declaration
function #_System._tuple#0._#Make0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
// Constructor $Is
axiom $Is(#_System._tuple#0._#Make0(), Tclass._System.Tuple0());
// Constructor literal
axiom #_System._tuple#0._#Make0() == Lit(#_System._tuple#0._#Make0());
}

const unique ##_System._tuple#0._#Make0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
}

function _System.Tuple0.___hMake0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#0._#Make0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d) ==> d == #_System._tuple#0._#Make0());

function Tclass._System.Tuple0() : Ty
uses {
// Tclass._System.Tuple0 Tag
axiom Tag(Tclass._System.Tuple0()) == Tagclass._System.Tuple0
   && TagFamily(Tclass._System.Tuple0()) == tytagFamily$_tuple#0;
}

const unique Tagclass._System.Tuple0: TyTag;

// Box/unbox axiom for Tclass._System.Tuple0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple0()) } 
  $IsBox(bx, Tclass._System.Tuple0())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple0()));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._System.Tuple0())
     ==> $IsAlloc(d, Tclass._System.Tuple0(), $h));

// Depth-one case-split function
function $IsA#_System.Tuple0(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple0(d) } 
  $IsA#_System.Tuple0(d) ==> _System.Tuple0.___hMake0_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d), $Is(d, Tclass._System.Tuple0()) } 
  $Is(d, Tclass._System.Tuple0()) ==> _System.Tuple0.___hMake0_q(d));

// Datatype extensional equality declaration
function _System.Tuple0#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#0._#Make0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b));

// Datatype extensionality axiom: _System._tuple#0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b) <==> a == b);

const unique class._System.Tuple0: ClassName;

function Tclass._System.___hFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc2: TyTag;

// Tclass._System.___hFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == Tagclass._System.___hFunc2
     && TagFamily(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == tytagFamily$_#Func2);

function Tclass._System.___hFunc2_0(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_0(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T0);

function Tclass._System.___hFunc2_1(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_1(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$T1);

function Tclass._System.___hFunc2_2(Ty) : Ty;

// Tclass._System.___hFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hFunc2_2(Tclass._System.___hFunc2(#$T0, #$T1, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc2(#$T0, #$T1, #$R)));

function Handle2([Heap,Box,Box]Box, [Heap,Box,Box]bool, [Heap,Box,Box]Set) : HandleType;

function Apply2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Box;

function Requires2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : bool;

function Reads2(Ty, Ty, Ty, Heap, HandleType, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  Apply2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) == h[heap, bx0, bx1]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box :: 
  { Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1) } 
  r[heap, bx0, bx1] ==> Requires2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box]Box, 
    r: [Heap,Box,Box]bool, 
    rd: [Heap,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx: Box :: 
  { Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx) } 
  Set#IsMember(Reads2(t0, t1, t2, heap, Handle2(h, r, rd), bx0, bx1), bx)
     == Set#IsMember(rd[heap, bx0, bx1], bx));

function {:inline} Requires2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

function {:inline} Reads2#canCall(t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box) : bool
{
  true
}

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Reads2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Reads2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads2(t0, t1, t2, h0, f, bx0, bx1) == Reads2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Requires2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires2(t0, t1, t2, h0, f, bx0, bx1) == Requires2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h0, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// frame axiom for Apply2
axiom (forall t0: Ty, t1: Ty, t2: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { $HeapSucc(h0, h1), Apply2(t0, t1, t2, h1, f, bx0, bx1) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads2(t0, t1, t2, h1, f, bx0, bx1), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply2(t0, t1, t2, h0, f, bx0, bx1) == Apply2(t0, t1, t2, h1, f, bx0, bx1));

// empty-reads property for Reads2 
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Reads2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     ==> (Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
       <==> Set#Equal(Reads2(t0, t1, t2, heap, f, bx0, bx1), Set#Empty(): Set)));

// empty-reads property for Requires2
axiom (forall t0: Ty, t1: Ty, t2: Ty, heap: Heap, f: HandleType, bx0: Box, bx1: Box :: 
  { Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1), $IsGoodHeap(heap) } 
    { Requires2(t0, t1, t2, heap, f, bx0, bx1) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && Set#Equal(Reads2(t0, t1, t2, $OneHeap, f, bx0, bx1), Set#Empty(): Set)
     ==> Requires2(t0, t1, t2, $OneHeap, f, bx0, bx1)
       == Requires2(t0, t1, t2, heap, f, bx0, bx1));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
     <==> (forall h: Heap, bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, u0: Ty, u1: Ty, u2: Ty :: 
  { $Is(f, Tclass._System.___hFunc2(t0, t1, t2)), $Is(f, Tclass._System.___hFunc2(u0, u1, u2)) } 
  $Is(f, Tclass._System.___hFunc2(t0, t1, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, t2) } { $IsBox(bx, u2) } 
        $IsBox(bx, t2) ==> $IsBox(bx, u2))
     ==> $Is(f, Tclass._System.___hFunc2(u0, u1, u2)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
       <==> (forall bx0: Box, bx1: Box :: 
        { Apply2(t0, t1, t2, h, f, bx0, bx1) } { Reads2(t0, t1, t2, h, f, bx0, bx1) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && Requires2(t0, t1, t2, h, f, bx0, bx1)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r)) } 
            r != null && Set#IsMember(Reads2(t0, t1, t2, h, f, bx0, bx1), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc2(t0, t1, t2), h)
     ==> (forall bx0: Box, bx1: Box :: 
      { Apply2(t0, t1, t2, h, f, bx0, bx1) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && Requires2(t0, t1, t2, h, f, bx0, bx1)
         ==> $IsAllocBox(Apply2(t0, t1, t2, h, f, bx0, bx1), t2, h)));

function Tclass._System.___hPartialFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc2: TyTag;

// Tclass._System.___hPartialFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hPartialFunc2
     && TagFamily(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#PartialFunc2);

function Tclass._System.___hPartialFunc2_0(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_0(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc2_1(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_1(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc2_2(Ty) : Ty;

// Tclass._System.___hPartialFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hPartialFunc2_2(Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Set#Equal(Reads2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc2(#$T0, #$T1, #$R), $h));

function Tclass._System.___hTotalFunc2(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc2: TyTag;

// Tclass._System.___hTotalFunc2 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tag(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == Tagclass._System.___hTotalFunc2
     && TagFamily(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
       == tytagFamily$_#TotalFunc2);

function Tclass._System.___hTotalFunc2_0(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_0(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc2_1(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_1(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc2_2(Ty) : Ty;

// Tclass._System.___hTotalFunc2 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R) } 
  Tclass._System.___hTotalFunc2_2(Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)));

// $Is axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R))
       && (forall x0#0: Box, x1#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1)
           ==> Requires2(#$T0, #$T1, #$R, $OneHeap, f#0, x0#0, x1#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc2
axiom (forall #$T0: Ty, #$T1: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc2(#$T0, #$T1, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc2(#$T0, #$T1, #$R), $h));

const reveal_Parsers.Engine.Concat: bool;

const reveal_Parsers.Engine.Either: bool;

const reveal_Parsers.Engine.Char: bool;

const reveal_Parsers.Engine.Parentheses': bool;

const unique class._module.__default: ClassName;

// function declaration for _module._default.Apply
function _module.__default.Apply(f#0: HandleType) : int
uses {
// definition axiom for _module.__default.Apply (revealed)
axiom {:id "id164"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType :: 
    { _module.__default.Apply(f#0), $IsGoodHeap($Heap) } 
    _module.__default.Apply#canCall(f#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc0(TInt)))
       ==> _module.__default.Apply(f#0) == $Unbox(Apply0(TInt, $Heap, f#0)): int);
// definition axiom for _module.__default.Apply for all literals (revealed)
axiom {:id "id165"} 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, f#0: HandleType :: 
    {:weight 3} { _module.__default.Apply(Lit(f#0)), $IsGoodHeap($Heap) } 
    _module.__default.Apply#canCall(Lit(f#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc0(TInt)))
       ==> _module.__default.Apply(Lit(f#0)) == $Unbox(Apply0(TInt, $Heap, Lit(f#0))): int);
}

function _module.__default.Apply#canCall(f#0: HandleType) : bool;

function _module.__default.Apply#requires(HandleType) : bool;

// #requires axiom for _module.__default.Apply
axiom (forall $Heap: Heap, f#0: HandleType :: 
  { _module.__default.Apply#requires(f#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(f#0, Tclass._System.___hTotalFunc0(TInt))
     ==> _module.__default.Apply#requires(f#0) == true);

procedure {:verboseName "Apply (well-formedness)"} CheckWellformed$$_module.__default.Apply(f#0: HandleType where $Is(f#0, Tclass._System.___hTotalFunc0(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.F0
function _module.__default.F0($ly: LayerType) : int
uses {
// definition axiom for _module.__default.F0 (revealed)
axiom {:id "id167"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap :: 
    { _module.__default.F0($LS($ly)), $IsGoodHeap($Heap) } 
    _module.__default.F0#canCall()
         || (1 < $FunctionContextHeight && $IsGoodHeap($Heap))
       ==> _module.__default.Apply#canCall(_module.__default.F0#Handle($LS($LZ)))
         && _module.__default.F0($LS($ly))
           == _module.__default.Apply(_module.__default.F0#Handle($LS($LZ))));
// definition axiom for _module.__default.F0 for all literals (revealed)
axiom {:id "id168"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap :: 
    {:weight 3} { _module.__default.F0($LS($ly)), $IsGoodHeap($Heap) } 
    _module.__default.F0#canCall()
         || (1 < $FunctionContextHeight && $IsGoodHeap($Heap))
       ==> _module.__default.Apply#canCall(_module.__default.F0#Handle($LS($LZ)))
         && _module.__default.F0($LS($ly))
           == _module.__default.Apply(_module.__default.F0#Handle($LS($LZ))));
}

function _module.__default.F0#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.F0($LS($ly)) } 
  _module.__default.F0($LS($ly)) == _module.__default.F0($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.F0(AsFuelBottom($ly)) } 
  _module.__default.F0($ly) == _module.__default.F0($LZ));

function _module.__default.F0#requires(LayerType) : bool;

// #requires axiom for _module.__default.F0
axiom (forall $ly: LayerType, $Heap: Heap :: 
  { _module.__default.F0#requires($ly), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) ==> _module.__default.F0#requires($ly) == true);

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.F0#Handle($LS($ly)) } 
  _module.__default.F0#Handle($LS($ly)) == _module.__default.F0#Handle($ly));

function _module.__default.F0#Handle($fuel: LayerType) : HandleType;

axiom (forall $ly: LayerType, $heap: Heap :: 
  { Apply0(TInt, $heap, _module.__default.F0#Handle($ly)) } 
  Apply0(TInt, $heap, _module.__default.F0#Handle($ly))
     == $Box(_module.__default.F0($ly)));

axiom (forall $ly: LayerType, $heap: Heap :: 
  { Requires0(TInt, $heap, _module.__default.F0#Handle($ly)) } 
  Requires0(TInt, $heap, _module.__default.F0#Handle($ly))
     == _module.__default.F0#requires($ly));

axiom (forall $bx: Box, $ly: LayerType, $heap: Heap :: 
  { Set#IsMember(Reads0(TInt, $heap, _module.__default.F0#Handle($ly)), $bx) } 
  Set#IsMember(Reads0(TInt, $heap, _module.__default.F0#Handle($ly)), $bx)
     == false);

axiom (forall $ly: LayerType, $heap: Heap :: 
  { _module.__default.F0($ly), $IsGoodHeap($heap) } 
  _module.__default.F0($ly)
     == $Unbox(Apply0(TInt, $heap, _module.__default.F0#Handle($ly))): int);

procedure {:verboseName "F0 (well-formedness)"} CheckWellformed$$_module.__default.F0();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F0 (well-formedness)"} CheckWellformed$$_module.__default.F0()
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##f#0: HandleType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id169"} 1 != $FunctionContextHeight;
        ##f#0 := _module.__default.F0#Handle($LS($LZ));
        // assume allocatedness for argument to function
        assume $IsAlloc(##f#0, Tclass._System.___hTotalFunc0(TInt), $Heap);
        assume _module.__default.Apply#canCall(_module.__default.F0#Handle($LS($LZ)));
        assume {:id "id170"} _module.__default.F0($LS($LZ))
           == _module.__default.Apply(_module.__default.F0#Handle($LS($LZ)));
        assume _module.__default.Apply#canCall(_module.__default.F0#Handle($LS($LZ)));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.F0($LS($LZ)), TInt);
        return;

        assume false;
    }
}



// function declaration for _module._default.F1
function _module.__default.F1($ly: LayerType) : int
uses {
// definition axiom for _module.__default.F1 (revealed)
axiom {:id "id171"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.F1($LS($ly)) } 
    _module.__default.F1#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.F1#canCall()
         && _module.__default.Apply#canCall(Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                Handle0((lambda $l#2#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#2#ly#0)))), 
                  (lambda $l#2#heap#0: Heap :: true), 
                  (lambda $l#2#heap#0: Heap :: SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
              $ly)))
         && _module.__default.F1($LS($ly))
           == LitInt(_module.__default.Apply(Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle0((lambda $l#0#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#0#ly#0)))), 
                      (lambda $l#0#heap#0: Heap :: true), 
                      (lambda $l#0#heap#0: Heap :: SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $ly)))));
// definition axiom for _module.__default.F1 for all literals (revealed)
axiom {:id "id172"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    {:weight 3} { _module.__default.F1($LS($ly)) } 
    _module.__default.F1#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.F1#canCall()
         && _module.__default.Apply#canCall(Lit(AtLayer((lambda $l#5#ly#0: LayerType :: 
                Handle0((lambda $l#5#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#5#ly#0)))), 
                  (lambda $l#5#heap#0: Heap :: true), 
                  (lambda $l#5#heap#0: Heap :: SetRef_to_SetBox((lambda $l#5#o#0: ref :: false))))), 
              $LS($ly))))
         && _module.__default.F1($LS($ly))
           == LitInt(_module.__default.Apply(Lit(AtLayer((lambda $l#3#ly#0: LayerType :: 
                    Handle0((lambda $l#3#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#3#ly#0)))), 
                      (lambda $l#3#heap#0: Heap :: true), 
                      (lambda $l#3#heap#0: Heap :: SetRef_to_SetBox((lambda $l#3#o#0: ref :: false))))), 
                  $LS($ly))))));
}

function _module.__default.F1#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.F1($LS($ly)) } 
  _module.__default.F1($LS($ly)) == _module.__default.F1($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.F1(AsFuelBottom($ly)) } 
  _module.__default.F1($ly) == _module.__default.F1($LZ));

function _module.__default.F1#requires(LayerType) : bool;

// #requires axiom for _module.__default.F1
axiom (forall $ly: LayerType :: 
  { _module.__default.F1#requires($ly) } 
  _module.__default.F1#requires($ly) == true);

procedure {:verboseName "F1 (well-formedness)"} CheckWellformed$$_module.__default.F1();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F1 (well-formedness)"} CheckWellformed$$_module.__default.F1()
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##f#0: HandleType;
  var $lambdaHeap#0: Heap;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        if (*)
        {
            havoc $lambdaHeap#0;
            assume $IsGoodHeap($lambdaHeap#0);
            assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
            if (true)
            {
                $_Frame#l0 := (lambda $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> false);
                assert {:id "id173"} false;
                assume _module.__default.F1#canCall();
                assume {:id "id174"} lambdaResult#0 == LitInt(_module.__default.F1($LS($LZ)));
                assume _module.__default.F1#canCall();
                // CheckWellformedWithResult: any expression
                assume $Is(lambdaResult#0, TInt);
            }

            assume false;
        }

        // End Comprehension WF check
        ##f#0 := Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
              Handle0((lambda $l#7#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#7#ly#0)))), 
                (lambda $l#7#heap#0: Heap :: true), 
                (lambda $l#7#heap#0: Heap :: SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
            $LS($LZ)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##f#0, Tclass._System.___hTotalFunc0(TInt), $Heap);
        assume _module.__default.Apply#canCall(Lit(AtLayer((lambda $l#8#ly#0: LayerType :: 
                Handle0((lambda $l#8#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#8#ly#0)))), 
                  (lambda $l#8#heap#0: Heap :: true), 
                  (lambda $l#8#heap#0: Heap :: SetRef_to_SetBox((lambda $l#8#o#0: ref :: false))))), 
              $LS($LZ))));
        assume {:id "id175"} _module.__default.F1($LS($LZ))
           == LitInt(_module.__default.Apply(Lit(AtLayer((lambda $l#10#ly#0: LayerType :: 
                    Handle0((lambda $l#10#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#10#ly#0)))), 
                      (lambda $l#10#heap#0: Heap :: true), 
                      (lambda $l#10#heap#0: Heap :: 
                        SetRef_to_SetBox((lambda $l#10#o#0: ref :: false))))), 
                  $LS($LZ)))));
        assume _module.__default.F1#canCall()
           && _module.__default.Apply#canCall(Lit(AtLayer((lambda $l#12#ly#0: LayerType :: 
                  Handle0((lambda $l#12#heap#0: Heap :: $Box(LitInt(_module.__default.F1($l#12#ly#0)))), 
                    (lambda $l#12#heap#0: Heap :: true), 
                    (lambda $l#12#heap#0: Heap :: 
                      SetRef_to_SetBox((lambda $l#12#o#0: ref :: false))))), 
                $LS($LZ))));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.F1($LS($LZ)), TInt);
        return;

        assume false;
    }
}



const unique class.Parsers.__default: ClassName;

// Constructor function declaration
function #Parsers.Either.Left(Box) : DatatypeType;

const unique ##Parsers.Either.Left: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #Parsers.Either.Left(a#0#0#0) } 
  DatatypeCtorId(#Parsers.Either.Left(a#0#0#0)) == ##Parsers.Either.Left);
}

function Parsers.Either.Left_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Parsers.Either.Left_q(d) } 
  Parsers.Either.Left_q(d) <==> DatatypeCtorId(d) == ##Parsers.Either.Left);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Parsers.Either.Left_q(d) } 
  Parsers.Either.Left_q(d)
     ==> (exists a#1#0#0: Box :: d == #Parsers.Either.Left(a#1#0#0)));

function Tclass.Parsers.Either(Ty, Ty) : Ty;

const unique Tagclass.Parsers.Either: TyTag;

// Tclass.Parsers.Either Tag
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty :: 
  { Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R) } 
  Tag(Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
       == Tagclass.Parsers.Either
     && TagFamily(Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
       == tytagFamily$Either);

function Tclass.Parsers.Either_0(Ty) : Ty;

// Tclass.Parsers.Either injectivity 0
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty :: 
  { Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R) } 
  Tclass.Parsers.Either_0(Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
     == Parsers.Either$L);

function Tclass.Parsers.Either_1(Ty) : Ty;

// Tclass.Parsers.Either injectivity 1
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty :: 
  { Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R) } 
  Tclass.Parsers.Either_1(Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
     == Parsers.Either$R);

// Box/unbox axiom for Tclass.Parsers.Either
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R)) } 
  $IsBox(bx, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R)));

// Constructor $Is
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty, a#2#0#0: Box :: 
  { $Is(#Parsers.Either.Left(a#2#0#0), 
      Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R)) } 
  $Is(#Parsers.Either.Left(a#2#0#0), 
      Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
     <==> $IsBox(a#2#0#0, Parsers.Either$L));

// Constructor $IsAlloc
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Parsers.Either.Left(a#2#0#0), 
      Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Parsers.Either.Left(a#2#0#0), 
        Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), 
        $h)
       <==> $IsAllocBox(a#2#0#0, Parsers.Either$L, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Parsers.Either$L: Ty, $h: Heap :: 
  { $IsAllocBox(Parsers.Either.l(d), Parsers.Either$L, $h) } 
  $IsGoodHeap($h)
       && 
      Parsers.Either.Left_q(d)
       && (exists Parsers.Either$R: Ty :: 
        { $IsAlloc(d, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), $h) } 
        $IsAlloc(d, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), $h))
     ==> $IsAllocBox(Parsers.Either.l(d), Parsers.Either$L, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #Parsers.Either.Left(Lit(a#3#0#0)) } 
  #Parsers.Either.Left(Lit(a#3#0#0)) == Lit(#Parsers.Either.Left(a#3#0#0)));

function Parsers.Either.l(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #Parsers.Either.Left(a#4#0#0) } 
  Parsers.Either.l(#Parsers.Either.Left(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #Parsers.Either.Left(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#Parsers.Either.Left(a#5#0#0)));

// Constructor function declaration
function #Parsers.Either.Right(Box) : DatatypeType;

const unique ##Parsers.Either.Right: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: Box :: 
  { #Parsers.Either.Right(a#6#0#0) } 
  DatatypeCtorId(#Parsers.Either.Right(a#6#0#0)) == ##Parsers.Either.Right);
}

function Parsers.Either.Right_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Parsers.Either.Right_q(d) } 
  Parsers.Either.Right_q(d) <==> DatatypeCtorId(d) == ##Parsers.Either.Right);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Parsers.Either.Right_q(d) } 
  Parsers.Either.Right_q(d)
     ==> (exists a#7#0#0: Box :: d == #Parsers.Either.Right(a#7#0#0)));

// Constructor $Is
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty, a#8#0#0: Box :: 
  { $Is(#Parsers.Either.Right(a#8#0#0), 
      Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R)) } 
  $Is(#Parsers.Either.Right(a#8#0#0), 
      Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
     <==> $IsBox(a#8#0#0, Parsers.Either$R));

// Constructor $IsAlloc
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty, a#8#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Parsers.Either.Right(a#8#0#0), 
      Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Parsers.Either.Right(a#8#0#0), 
        Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), 
        $h)
       <==> $IsAllocBox(a#8#0#0, Parsers.Either$R, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Parsers.Either$R: Ty, $h: Heap :: 
  { $IsAllocBox(Parsers.Either.r(d), Parsers.Either$R, $h) } 
  $IsGoodHeap($h)
       && 
      Parsers.Either.Right_q(d)
       && (exists Parsers.Either$L: Ty :: 
        { $IsAlloc(d, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), $h) } 
        $IsAlloc(d, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R), $h))
     ==> $IsAllocBox(Parsers.Either.r(d), Parsers.Either$R, $h));

// Constructor literal
axiom (forall a#9#0#0: Box :: 
  { #Parsers.Either.Right(Lit(a#9#0#0)) } 
  #Parsers.Either.Right(Lit(a#9#0#0)) == Lit(#Parsers.Either.Right(a#9#0#0)));

function Parsers.Either.r(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: Box :: 
  { #Parsers.Either.Right(a#10#0#0) } 
  Parsers.Either.r(#Parsers.Either.Right(a#10#0#0)) == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: Box :: 
  { #Parsers.Either.Right(a#11#0#0) } 
  BoxRank(a#11#0#0) < DtRank(#Parsers.Either.Right(a#11#0#0)));

// Depth-one case-split function
function $IsA#Parsers.Either(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Parsers.Either(d) } 
  $IsA#Parsers.Either(d) ==> Parsers.Either.Left_q(d) || Parsers.Either.Right_q(d));

// Questionmark data type disjunctivity
axiom (forall Parsers.Either$L: Ty, Parsers.Either$R: Ty, d: DatatypeType :: 
  { Parsers.Either.Right_q(d), $Is(d, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R)) } 
    { Parsers.Either.Left_q(d), $Is(d, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R)) } 
  $Is(d, Tclass.Parsers.Either(Parsers.Either$L, Parsers.Either$R))
     ==> Parsers.Either.Left_q(d) || Parsers.Either.Right_q(d));

// Datatype extensional equality declaration
function Parsers.Either#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Parsers.Either.Left
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.Either#Equal(a, b), Parsers.Either.Left_q(a) } 
    { Parsers.Either#Equal(a, b), Parsers.Either.Left_q(b) } 
  Parsers.Either.Left_q(a) && Parsers.Either.Left_q(b)
     ==> (Parsers.Either#Equal(a, b) <==> Parsers.Either.l(a) == Parsers.Either.l(b)));

// Datatype extensional equality definition: #Parsers.Either.Right
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.Either#Equal(a, b), Parsers.Either.Right_q(a) } 
    { Parsers.Either#Equal(a, b), Parsers.Either.Right_q(b) } 
  Parsers.Either.Right_q(a) && Parsers.Either.Right_q(b)
     ==> (Parsers.Either#Equal(a, b) <==> Parsers.Either.r(a) == Parsers.Either.r(b)));

// Datatype extensionality axiom: Parsers.Either
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.Either#Equal(a, b) } 
  Parsers.Either#Equal(a, b) <==> a == b);

const unique class.Parsers.Either: ClassName;

// Constructor function declaration
function #Parsers.ParseResult.Failure() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Parsers.ParseResult.Failure()) == ##Parsers.ParseResult.Failure;
// Constructor literal
axiom #Parsers.ParseResult.Failure() == Lit(#Parsers.ParseResult.Failure());
}

const unique ##Parsers.ParseResult.Failure: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Parsers.ParseResult.Failure()) == ##Parsers.ParseResult.Failure;
}

function Parsers.ParseResult.Failure_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Parsers.ParseResult.Failure_q(d) } 
  Parsers.ParseResult.Failure_q(d)
     <==> DatatypeCtorId(d) == ##Parsers.ParseResult.Failure);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Parsers.ParseResult.Failure_q(d) } 
  Parsers.ParseResult.Failure_q(d) ==> d == #Parsers.ParseResult.Failure());

function Tclass.Parsers.ParseResult(Ty) : Ty;

const unique Tagclass.Parsers.ParseResult: TyTag;

// Tclass.Parsers.ParseResult Tag
axiom (forall Parsers.ParseResult$T: Ty :: 
  { Tclass.Parsers.ParseResult(Parsers.ParseResult$T) } 
  Tag(Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
       == Tagclass.Parsers.ParseResult
     && TagFamily(Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
       == tytagFamily$ParseResult);

function Tclass.Parsers.ParseResult_0(Ty) : Ty;

// Tclass.Parsers.ParseResult injectivity 0
axiom (forall Parsers.ParseResult$T: Ty :: 
  { Tclass.Parsers.ParseResult(Parsers.ParseResult$T) } 
  Tclass.Parsers.ParseResult_0(Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     == Parsers.ParseResult$T);

// Box/unbox axiom for Tclass.Parsers.ParseResult
axiom (forall Parsers.ParseResult$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Parsers.ParseResult(Parsers.ParseResult$T)) } 
  $IsBox(bx, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Parsers.ParseResult(Parsers.ParseResult$T)));

// Constructor $Is
axiom (forall Parsers.ParseResult$T: Ty :: 
  { $Is(#Parsers.ParseResult.Failure(), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult$T)) } 
  $Is(#Parsers.ParseResult.Failure(), 
    Tclass.Parsers.ParseResult(Parsers.ParseResult$T)));

// Constructor $IsAlloc
axiom (forall Parsers.ParseResult$T: Ty, $h: Heap :: 
  { $IsAlloc(#Parsers.ParseResult.Failure(), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Parsers.ParseResult.Failure(), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult$T), 
      $h));

// Constructor function declaration
function #Parsers.ParseResult.Success(int, Box) : DatatypeType;

const unique ##Parsers.ParseResult.Success: DtCtorId
uses {
// Constructor identifier
axiom (forall a#16#0#0: int, a#16#1#0: Box :: 
  { #Parsers.ParseResult.Success(a#16#0#0, a#16#1#0) } 
  DatatypeCtorId(#Parsers.ParseResult.Success(a#16#0#0, a#16#1#0))
     == ##Parsers.ParseResult.Success);
}

function Parsers.ParseResult.Success_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Parsers.ParseResult.Success_q(d) } 
  Parsers.ParseResult.Success_q(d)
     <==> DatatypeCtorId(d) == ##Parsers.ParseResult.Success);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Parsers.ParseResult.Success_q(d) } 
  Parsers.ParseResult.Success_q(d)
     ==> (exists a#17#0#0: int, a#17#1#0: Box :: 
      d == #Parsers.ParseResult.Success(a#17#0#0, a#17#1#0)));

// Constructor $Is
axiom (forall Parsers.ParseResult$T: Ty, a#18#0#0: int, a#18#1#0: Box :: 
  { $Is(#Parsers.ParseResult.Success(a#18#0#0, a#18#1#0), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult$T)) } 
  $Is(#Parsers.ParseResult.Success(a#18#0#0, a#18#1#0), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     <==> $Is(a#18#0#0, Tclass._System.nat()) && $IsBox(a#18#1#0, Parsers.ParseResult$T));

// Constructor $IsAlloc
axiom (forall Parsers.ParseResult$T: Ty, a#18#0#0: int, a#18#1#0: Box, $h: Heap :: 
  { $IsAlloc(#Parsers.ParseResult.Success(a#18#0#0, a#18#1#0), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Parsers.ParseResult.Success(a#18#0#0, a#18#1#0), 
        Tclass.Parsers.ParseResult(Parsers.ParseResult$T), 
        $h)
       <==> $IsAlloc(a#18#0#0, Tclass._System.nat(), $h)
         && $IsAllocBox(a#18#1#0, Parsers.ParseResult$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Parsers.ParseResult.pos(d), Tclass._System.nat(), $h) } 
  $IsGoodHeap($h)
       && 
      Parsers.ParseResult.Success_q(d)
       && (exists Parsers.ParseResult$T: Ty :: 
        { $IsAlloc(d, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $h) } 
        $IsAlloc(d, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $h))
     ==> $IsAlloc(Parsers.ParseResult.pos(d), Tclass._System.nat(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Parsers.ParseResult$T: Ty, $h: Heap :: 
  { $IsAllocBox(Parsers.ParseResult.t(d), Parsers.ParseResult$T, $h) } 
  $IsGoodHeap($h)
       && 
      Parsers.ParseResult.Success_q(d)
       && $IsAlloc(d, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $h)
     ==> $IsAllocBox(Parsers.ParseResult.t(d), Parsers.ParseResult$T, $h));

// Constructor literal
axiom (forall a#19#0#0: int, a#19#1#0: Box :: 
  { #Parsers.ParseResult.Success(LitInt(a#19#0#0), Lit(a#19#1#0)) } 
  #Parsers.ParseResult.Success(LitInt(a#19#0#0), Lit(a#19#1#0))
     == Lit(#Parsers.ParseResult.Success(a#19#0#0, a#19#1#0)));

function Parsers.ParseResult.pos(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#20#0#0: int, a#20#1#0: Box :: 
  { #Parsers.ParseResult.Success(a#20#0#0, a#20#1#0) } 
  Parsers.ParseResult.pos(#Parsers.ParseResult.Success(a#20#0#0, a#20#1#0))
     == a#20#0#0);

function Parsers.ParseResult.t(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#21#0#0: int, a#21#1#0: Box :: 
  { #Parsers.ParseResult.Success(a#21#0#0, a#21#1#0) } 
  Parsers.ParseResult.t(#Parsers.ParseResult.Success(a#21#0#0, a#21#1#0))
     == a#21#1#0);

// Inductive rank
axiom (forall a#22#0#0: int, a#22#1#0: Box :: 
  { #Parsers.ParseResult.Success(a#22#0#0, a#22#1#0) } 
  BoxRank(a#22#1#0) < DtRank(#Parsers.ParseResult.Success(a#22#0#0, a#22#1#0)));

// Depth-one case-split function
function $IsA#Parsers.ParseResult(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Parsers.ParseResult(d) } 
  $IsA#Parsers.ParseResult(d)
     ==> Parsers.ParseResult.Failure_q(d) || Parsers.ParseResult.Success_q(d));

// Questionmark data type disjunctivity
axiom (forall Parsers.ParseResult$T: Ty, d: DatatypeType :: 
  { Parsers.ParseResult.Success_q(d), $Is(d, Tclass.Parsers.ParseResult(Parsers.ParseResult$T)) } 
    { Parsers.ParseResult.Failure_q(d), $Is(d, Tclass.Parsers.ParseResult(Parsers.ParseResult$T)) } 
  $Is(d, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     ==> Parsers.ParseResult.Failure_q(d) || Parsers.ParseResult.Success_q(d));

// Datatype extensional equality declaration
function Parsers.ParseResult#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Parsers.ParseResult.Failure
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.ParseResult#Equal(a, b), Parsers.ParseResult.Failure_q(a) } 
    { Parsers.ParseResult#Equal(a, b), Parsers.ParseResult.Failure_q(b) } 
  Parsers.ParseResult.Failure_q(a) && Parsers.ParseResult.Failure_q(b)
     ==> Parsers.ParseResult#Equal(a, b));

// Datatype extensional equality definition: #Parsers.ParseResult.Success
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.ParseResult#Equal(a, b), Parsers.ParseResult.Success_q(a) } 
    { Parsers.ParseResult#Equal(a, b), Parsers.ParseResult.Success_q(b) } 
  Parsers.ParseResult.Success_q(a) && Parsers.ParseResult.Success_q(b)
     ==> (Parsers.ParseResult#Equal(a, b)
       <==> Parsers.ParseResult.pos(a) == Parsers.ParseResult.pos(b)
         && Parsers.ParseResult.t(a) == Parsers.ParseResult.t(b)));

// Datatype extensionality axiom: Parsers.ParseResult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.ParseResult#Equal(a, b) } 
  Parsers.ParseResult#Equal(a, b) <==> a == b);

const unique class.Parsers.ParseResult: ClassName;

// function declaration for Parsers.ParseResult.IsFailure
function Parsers.ParseResult.IsFailure(Parsers.ParseResult$T: Ty, this: DatatypeType) : bool;

function Parsers.ParseResult.IsFailure#canCall(Parsers.ParseResult$T: Ty, this: DatatypeType) : bool;

function Parsers.ParseResult.IsFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for Parsers.ParseResult.IsFailure
axiom (forall Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  { Parsers.ParseResult.IsFailure#requires(Parsers.ParseResult$T, this) } 
  $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     ==> Parsers.ParseResult.IsFailure#requires(Parsers.ParseResult$T, this) == true);

// definition axiom for Parsers.ParseResult.IsFailure (revealed)
axiom {:id "id176"} (forall Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  { Parsers.ParseResult.IsFailure(Parsers.ParseResult$T, this) } 
  Parsers.ParseResult.IsFailure#canCall(Parsers.ParseResult$T, this)
       || $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     ==> Parsers.ParseResult.IsFailure(Parsers.ParseResult$T, this)
       == Parsers.ParseResult.Failure_q(this));

// definition axiom for Parsers.ParseResult.IsFailure for all literals (revealed)
axiom {:id "id177"} (forall Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  {:weight 3} { Parsers.ParseResult.IsFailure(Parsers.ParseResult$T, Lit(this)) } 
  Parsers.ParseResult.IsFailure#canCall(Parsers.ParseResult$T, Lit(this))
       || $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     ==> Parsers.ParseResult.IsFailure(Parsers.ParseResult$T, Lit(this))
       == Lit(Parsers.ParseResult.Failure_q(Lit(this))));

// function declaration for Parsers.ParseResult.PropagateFailure
function Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : DatatypeType;

function Parsers.ParseResult.PropagateFailure#canCall(Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.PropagateFailure$U: Ty, 
    this: DatatypeType)
   : bool;

// consequence axiom for Parsers.ParseResult.PropagateFailure
axiom (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this) } 
  Parsers.ParseResult.PropagateFailure#canCall(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this)
       || ($Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && Parsers.ParseResult.Failure_q(this))
     ==> $Is(Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult.PropagateFailure$U)));

// alloc consequence axiom for Parsers.ParseResult.PropagateFailure
axiom (forall $Heap: Heap, 
    Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { $IsAlloc(Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult.PropagateFailure$U), 
      $Heap) } 
  (Parsers.ParseResult.PropagateFailure#canCall(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this)
         || ($IsAlloc(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $Heap)
           && Parsers.ParseResult.Failure_q(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult.PropagateFailure$U), 
      $Heap));

function Parsers.ParseResult.PropagateFailure#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Parsers.ParseResult.PropagateFailure
axiom (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { Parsers.ParseResult.PropagateFailure#requires(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this) } 
  $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     ==> Parsers.ParseResult.PropagateFailure#requires(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this)
       == Parsers.ParseResult.Failure_q(this));

// definition axiom for Parsers.ParseResult.PropagateFailure (revealed)
axiom {:id "id178"} (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this) } 
  Parsers.ParseResult.PropagateFailure#canCall(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this)
       || ($Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && Parsers.ParseResult.Failure_q(this))
     ==> Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, this)
       == Lit(#Parsers.ParseResult.Failure()));

// definition axiom for Parsers.ParseResult.PropagateFailure for all literals (revealed)
axiom {:id "id179"} (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  {:weight 3} { Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, Lit(this)) } 
  Parsers.ParseResult.PropagateFailure#canCall(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, Lit(this))
       || ($Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && Lit(Parsers.ParseResult.Failure_q(Lit(this))))
     ==> Parsers.ParseResult.PropagateFailure(Parsers.ParseResult$T, Parsers.ParseResult.PropagateFailure$U, Lit(this))
       == Lit(#Parsers.ParseResult.Failure()));

// function declaration for Parsers.ParseResult.Extract
function Parsers.ParseResult.Extract(Parsers.ParseResult$T: Ty, this: DatatypeType) : DatatypeType;

function Parsers.ParseResult.Extract#canCall(Parsers.ParseResult$T: Ty, this: DatatypeType) : bool;

// consequence axiom for Parsers.ParseResult.Extract
axiom (forall Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  { Parsers.ParseResult.Extract(Parsers.ParseResult$T, this) } 
  Parsers.ParseResult.Extract#canCall(Parsers.ParseResult$T, this)
       || ($Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && Parsers.ParseResult.Success_q(this))
     ==> $Is(Parsers.ParseResult.Extract(Parsers.ParseResult$T, this), 
      Tclass._System.Tuple2(Tclass._System.nat(), Parsers.ParseResult$T)));

// alloc consequence axiom for Parsers.ParseResult.Extract
axiom (forall $Heap: Heap, Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  { $IsAlloc(Parsers.ParseResult.Extract(Parsers.ParseResult$T, this), 
      Tclass._System.Tuple2(Tclass._System.nat(), Parsers.ParseResult$T), 
      $Heap) } 
  (Parsers.ParseResult.Extract#canCall(Parsers.ParseResult$T, this)
         || ($IsAlloc(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $Heap)
           && Parsers.ParseResult.Success_q(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(Parsers.ParseResult.Extract(Parsers.ParseResult$T, this), 
      Tclass._System.Tuple2(Tclass._System.nat(), Parsers.ParseResult$T), 
      $Heap));

function Parsers.ParseResult.Extract#requires(Ty, DatatypeType) : bool;

// #requires axiom for Parsers.ParseResult.Extract
axiom (forall Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  { Parsers.ParseResult.Extract#requires(Parsers.ParseResult$T, this) } 
  $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
     ==> Parsers.ParseResult.Extract#requires(Parsers.ParseResult$T, this)
       == Parsers.ParseResult.Success_q(this));

// definition axiom for Parsers.ParseResult.Extract (revealed)
axiom {:id "id180"} (forall Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  { Parsers.ParseResult.Extract(Parsers.ParseResult$T, this) } 
  Parsers.ParseResult.Extract#canCall(Parsers.ParseResult$T, this)
       || ($Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && Parsers.ParseResult.Success_q(this))
     ==> Parsers.ParseResult.Extract(Parsers.ParseResult$T, this)
       == #_System._tuple#2._#Make2($Box(Parsers.ParseResult.pos(this)), Parsers.ParseResult.t(this)));

// definition axiom for Parsers.ParseResult.Extract for all literals (revealed)
axiom {:id "id181"} (forall Parsers.ParseResult$T: Ty, this: DatatypeType :: 
  {:weight 3} { Parsers.ParseResult.Extract(Parsers.ParseResult$T, Lit(this)) } 
  Parsers.ParseResult.Extract#canCall(Parsers.ParseResult$T, Lit(this))
       || ($Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && Lit(Parsers.ParseResult.Success_q(Lit(this))))
     ==> Parsers.ParseResult.Extract(Parsers.ParseResult$T, Lit(this))
       == Lit(#_System._tuple#2._#Make2($Box(LitInt(Parsers.ParseResult.pos(Lit(this)))), 
          Lit(Parsers.ParseResult.t(Lit(this))))));

// function declaration for Parsers.ParseResult.MapResult
function Parsers.ParseResult.MapResult(Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    this: DatatypeType, 
    f#0: HandleType)
   : DatatypeType;

function Parsers.ParseResult.MapResult#canCall(Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    this: DatatypeType, 
    f#0: HandleType)
   : bool;

// consequence axiom for Parsers.ParseResult.MapResult
axiom (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    this: DatatypeType, 
    f#0: HandleType :: 
  { Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0) } 
  Parsers.ParseResult.MapResult#canCall(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0)
       || ($Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && $Is(f#0, 
          Tclass._System.___hTotalFunc1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T')))
     ==> $Is(Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult.MapResult$T')));

// alloc consequence axiom for Parsers.ParseResult.MapResult
axiom (forall $Heap: Heap, 
    Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    this: DatatypeType, 
    f#0: HandleType :: 
  { $IsAlloc(Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult.MapResult$T'), 
      $Heap) } 
  (Parsers.ParseResult.MapResult#canCall(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0)
         || ($IsAlloc(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $Heap)
           && 
          $Is(f#0, 
            Tclass._System.___hTotalFunc1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T'))
           && $IsAlloc(f#0, 
            Tclass._System.___hTotalFunc1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T'), 
            $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0), 
      Tclass.Parsers.ParseResult(Parsers.ParseResult.MapResult$T'), 
      $Heap));

function Parsers.ParseResult.MapResult#requires(Ty, Ty, DatatypeType, HandleType) : bool;

// #requires axiom for Parsers.ParseResult.MapResult
axiom (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    f#0: HandleType :: 
  { Parsers.ParseResult.MapResult#requires(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
       && $IsAlloc(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $Heap)
       && $Is(f#0, 
        Tclass._System.___hTotalFunc1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T'))
     ==> Parsers.ParseResult.MapResult#requires(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0)
       == true);

// definition axiom for Parsers.ParseResult.MapResult (revealed)
axiom {:id "id182"} (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    f#0: HandleType :: 
  { Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0), $IsGoodHeap($Heap) } 
  Parsers.ParseResult.MapResult#canCall(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && $IsAlloc(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $Heap)
         && $Is(f#0, 
          Tclass._System.___hTotalFunc1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T')))
     ==> Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', this, f#0)
       == (if Parsers.ParseResult.Failure_q(this)
         then #Parsers.ParseResult.Failure()
         else (var t#6 := Parsers.ParseResult.t(this); 
          (var pos#6 := Parsers.ParseResult.pos(this); 
            #Parsers.ParseResult.Success(pos#6, 
              Apply1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', $Heap, f#0, t#6))))));

// definition axiom for Parsers.ParseResult.MapResult for decreasing-related literals (revealed)
axiom {:id "id183"} (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    f#0: HandleType :: 
  {:weight 3} { Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', Lit(this), f#0), $IsGoodHeap($Heap) } 
  Parsers.ParseResult.MapResult#canCall(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', Lit(this), f#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && $IsAlloc(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $Heap)
         && $Is(f#0, 
          Tclass._System.___hTotalFunc1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T')))
     ==> Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', Lit(this), f#0)
       == (if Parsers.ParseResult.Failure_q(Lit(this))
         then #Parsers.ParseResult.Failure()
         else (var t#8 := Lit(Parsers.ParseResult.t(Lit(this))); 
          (var pos#8 := LitInt(Parsers.ParseResult.pos(Lit(this))); 
            #Parsers.ParseResult.Success(pos#8, 
              Apply1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', $Heap, f#0, t#8))))));

// definition axiom for Parsers.ParseResult.MapResult for all literals (revealed)
axiom {:id "id184"} (forall Parsers.ParseResult$T: Ty, 
    Parsers.ParseResult.MapResult$T': Ty, 
    $Heap: Heap, 
    this: DatatypeType, 
    f#0: HandleType :: 
  {:weight 3} { Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', Lit(this), Lit(f#0)), $IsGoodHeap($Heap) } 
  Parsers.ParseResult.MapResult#canCall(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', Lit(this), Lit(f#0))
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T))
         && $IsAlloc(this, Tclass.Parsers.ParseResult(Parsers.ParseResult$T), $Heap)
         && $Is(f#0, 
          Tclass._System.___hTotalFunc1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T')))
     ==> Parsers.ParseResult.MapResult(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', Lit(this), Lit(f#0))
       == (if Parsers.ParseResult.Failure_q(Lit(this))
         then #Parsers.ParseResult.Failure()
         else (var t#10 := Lit(Parsers.ParseResult.t(Lit(this))); 
          (var pos#10 := LitInt(Parsers.ParseResult.pos(Lit(this))); 
            #Parsers.ParseResult.Success(pos#10, 
              Apply1(Parsers.ParseResult$T, Parsers.ParseResult.MapResult$T', $Heap, Lit(f#0), t#10))))));

// Constructor function declaration
function #Parsers.Engine.Engine(Seq) : DatatypeType;

const unique ##Parsers.Engine.Engine: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Seq :: 
  { #Parsers.Engine.Engine(a#0#0#0) } 
  DatatypeCtorId(#Parsers.Engine.Engine(a#0#0#0)) == ##Parsers.Engine.Engine);
}

function Parsers.Engine.Engine_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Parsers.Engine.Engine_q(d) } 
  Parsers.Engine.Engine_q(d) <==> DatatypeCtorId(d) == ##Parsers.Engine.Engine);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Parsers.Engine.Engine_q(d) } 
  Parsers.Engine.Engine_q(d)
     ==> (exists a#1#0#0: Seq :: d == #Parsers.Engine.Engine(a#1#0#0)));

function Tclass.Parsers.Engine() : Ty
uses {
// Tclass.Parsers.Engine Tag
axiom Tag(Tclass.Parsers.Engine()) == Tagclass.Parsers.Engine
   && TagFamily(Tclass.Parsers.Engine()) == tytagFamily$Engine;
}

const unique Tagclass.Parsers.Engine: TyTag;

// Box/unbox axiom for Tclass.Parsers.Engine
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Parsers.Engine()) } 
  $IsBox(bx, Tclass.Parsers.Engine())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Parsers.Engine()));

// Constructor $Is
axiom (forall a#2#0#0: Seq :: 
  { $Is(#Parsers.Engine.Engine(a#2#0#0), Tclass.Parsers.Engine()) } 
  $Is(#Parsers.Engine.Engine(a#2#0#0), Tclass.Parsers.Engine())
     <==> $Is(a#2#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Parsers.Engine.input(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      Parsers.Engine.Engine_q(d)
       && $IsAlloc(d, Tclass.Parsers.Engine(), $h)
     ==> $IsAlloc(Parsers.Engine.input(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#3#0#0: Seq :: 
  { #Parsers.Engine.Engine(Lit(a#3#0#0)) } 
  #Parsers.Engine.Engine(Lit(a#3#0#0)) == Lit(#Parsers.Engine.Engine(a#3#0#0)));

function Parsers.Engine.input(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#4#0#0: Seq :: 
  { #Parsers.Engine.Engine(a#4#0#0) } 
  Parsers.Engine.input(#Parsers.Engine.Engine(a#4#0#0)) == a#4#0#0);

// Inductive seq element rank
axiom (forall a#5#0#0: Seq, i: int :: 
  { Seq#Index(a#5#0#0, i), #Parsers.Engine.Engine(a#5#0#0) } 
  0 <= i && i < Seq#Length(a#5#0#0)
     ==> DtRank($Unbox(Seq#Index(a#5#0#0, i)): DatatypeType)
       < DtRank(#Parsers.Engine.Engine(a#5#0#0)));

// Inductive seq rank
axiom (forall a#6#0#0: Seq :: 
  { #Parsers.Engine.Engine(a#6#0#0) } 
  Seq#Rank(a#6#0#0) < DtRank(#Parsers.Engine.Engine(a#6#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Parsers.Engine(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Parsers.Engine())
     ==> $IsAlloc(d, Tclass.Parsers.Engine(), $h));

// Depth-one case-split function
function $IsA#Parsers.Engine(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Parsers.Engine(d) } 
  $IsA#Parsers.Engine(d) ==> Parsers.Engine.Engine_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Parsers.Engine.Engine_q(d), $Is(d, Tclass.Parsers.Engine()) } 
  $Is(d, Tclass.Parsers.Engine()) ==> Parsers.Engine.Engine_q(d));

// Datatype extensional equality declaration
function Parsers.Engine#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Parsers.Engine.Engine
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.Engine#Equal(a, b) } 
  Parsers.Engine#Equal(a, b)
     <==> Seq#Equal(Parsers.Engine.input(a), Parsers.Engine.input(b)));

// Datatype extensionality axiom: Parsers.Engine
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Parsers.Engine#Equal(a, b) } 
  Parsers.Engine#Equal(a, b) <==> a == b);

const unique class.Parsers.Engine: ClassName;

// function declaration for Parsers.Engine.Concat0
function Parsers.Engine.Concat0(Parsers.Engine.Concat0$L: Ty, 
    Parsers.Engine.Concat0$R: Ty, 
    left#0: HandleType, 
    right#0: HandleType)
   : HandleType;

function Parsers.Engine.Concat0#canCall(Parsers.Engine.Concat0$L: Ty, 
    Parsers.Engine.Concat0$R: Ty, 
    left#0: HandleType, 
    right#0: HandleType)
   : bool;

// consequence axiom for Parsers.Engine.Concat0
axiom (forall Parsers.Engine.Concat0$L: Ty, 
    Parsers.Engine.Concat0$R: Ty, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0) } 
  Parsers.Engine.Concat0#canCall(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0)
       || ($Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L)))
         && $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R))))
     ==> $Is(Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R)))));

// alloc consequence axiom for Parsers.Engine.Concat0
axiom (forall $Heap: Heap, 
    Parsers.Engine.Concat0$L: Ty, 
    Parsers.Engine.Concat0$R: Ty, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { $IsAlloc(Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R))), 
      $Heap) } 
  (Parsers.Engine.Concat0#canCall(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0)
         || (
          $Is(left#0, 
            Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L)))
           && $IsAlloc(left#0, 
            Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L)), 
            $Heap)
           && 
          $Is(right#0, 
            Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R)))
           && $IsAlloc(right#0, 
            Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R)), 
            $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R))), 
      $Heap));

function Parsers.Engine.Concat0#requires(Ty, Ty, HandleType, HandleType) : bool;

// #requires axiom for Parsers.Engine.Concat0
axiom (forall Parsers.Engine.Concat0$L: Ty, 
    Parsers.Engine.Concat0$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Concat0#requires(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(left#0, 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L)))
       && $Is(right#0, 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R)))
     ==> Parsers.Engine.Concat0#requires(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0)
       == true);

// definition axiom for Parsers.Engine.Concat0 (revealed)
axiom {:id "id185"} (forall Parsers.Engine.Concat0$L: Ty, 
    Parsers.Engine.Concat0$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Concat0#canCall(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L)))
         && $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R))))
     ==> (forall $l#8#pos#0: int, $l#8#heap#0: Heap :: 
        LitInt(0) <= $l#8#pos#0 && $IsGoodHeap($l#8#heap#0)
           ==> Requires1#canCall(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
              $Heap, 
              left#0, 
              $Box($l#8#pos#0))
             && (Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                $Heap, 
                left#0, 
                $Box($l#8#pos#0))
               ==> 
              Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                    $Heap, 
                    left#0, 
                    $Box($l#8#pos#0))): DatatypeType)
               ==> Requires1#canCall(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                $Heap, 
                right#0, 
                $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                        $Heap, 
                        left#0, 
                        $Box($l#8#pos#0))): DatatypeType))))
             && (Requires1(Tclass._System.nat(), 
                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                  $Heap, 
                  left#0, 
                  $Box($l#8#pos#0))
                 && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                        $Heap, 
                        left#0, 
                        $Box($l#8#pos#0))): DatatypeType)
                   ==> Requires1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                    $Heap, 
                    right#0, 
                    $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                            $Heap, 
                            left#0, 
                            $Box($l#8#pos#0))): DatatypeType))))
               ==> (var valueOrError0#8 := $Unbox(Apply1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                      $l#8#heap#0, 
                      left#0, 
                      $Box($l#8#pos#0))): DatatypeType; 
                Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat0$L, valueOrError0#8)
                   && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$L, valueOrError0#8)
                     ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat0$L, 
                      Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                      valueOrError0#8))
                   && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$L, valueOrError0#8)
                     ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat0$L, valueOrError0#8)
                       && (var pos#18 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$L, valueOrError0#8))): int; 
                        (var valueOrError1#8 := $Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                                $l#8#heap#0, 
                                right#0, 
                                $Box(pos#18))): DatatypeType; 
                          Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat0$R, valueOrError1#8)
                             && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$R, valueOrError1#8)
                               ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat0$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                                valueOrError1#8))
                             && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$R, valueOrError1#8)
                               ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat0$R, valueOrError1#8))))))))
       && Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, left#0, right#0)
         == Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
              Handle1((lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  $Box((var valueOrError0#7 := $Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                            $l#7#heap#0, 
                            left#0, 
                            $Box($Unbox($l#7#pos#0): int))): DatatypeType; 
                      (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$L, valueOrError0#7)
                         then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat0$L, 
                          Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                          valueOrError0#7)
                         else (var pos#15, l#7 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$L, valueOrError0#7))): int, 
                            _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$L, valueOrError0#7)); 
                          (var valueOrError1#7 := $Unbox(Apply1(Tclass._System.nat(), 
                                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                                  $l#7#heap#0, 
                                  right#0, 
                                  $Box(pos#15))): DatatypeType; 
                            (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$R, valueOrError1#7)
                               then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat0$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                                valueOrError1#7)
                               else (var pos#16, r#7 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$R, valueOrError1#7))): int, 
                                  _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$R, valueOrError1#7)); 
                                #Parsers.ParseResult.Success(pos#16, $Box(#_System._tuple#2._#Make2(l#7, r#7))))))))))), 
                (lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  $IsBox($l#7#pos#0, Tclass._System.nat())
                     && 
                    Requires1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                      $l#7#heap#0, 
                      left#0, 
                      $l#7#pos#0)
                     && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                            $l#7#heap#0, 
                            left#0, 
                            $Box($Unbox($l#7#pos#0): int))): DatatypeType)
                       ==> Requires1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                        $l#7#heap#0, 
                        right#0, 
                        $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                                $l#7#heap#0, 
                                left#0, 
                                $Box($Unbox($l#7#pos#0): int))): DatatypeType))))), 
                (lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
            $LS($LZ))));

// definition axiom for Parsers.Engine.Concat0 for all literals (revealed)
axiom {:id "id186"} (forall Parsers.Engine.Concat0$L: Ty, 
    Parsers.Engine.Concat0$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  {:weight 3} { Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, Lit(left#0), Lit(right#0)), $IsGoodHeap($Heap) } 
  Parsers.Engine.Concat0#canCall(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, Lit(left#0), Lit(right#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L)))
         && $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R))))
     ==> (forall $l#10#pos#0: int, $l#10#heap#0: Heap :: 
        LitInt(0) <= $l#10#pos#0 && $IsGoodHeap($l#10#heap#0)
           ==> Requires1#canCall(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
              $Heap, 
              Lit(left#0), 
              $Box($l#10#pos#0))
             && (Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                $Heap, 
                Lit(left#0), 
                $Box($l#10#pos#0))
               ==> 
              Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                    $Heap, 
                    Lit(left#0), 
                    $Box($l#10#pos#0))): DatatypeType)
               ==> Requires1#canCall(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                $Heap, 
                Lit(right#0), 
                $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                        $Heap, 
                        Lit(left#0), 
                        $Box($l#10#pos#0))): DatatypeType))))
             && (Requires1(Tclass._System.nat(), 
                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                  $Heap, 
                  Lit(left#0), 
                  $Box($l#10#pos#0))
                 && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                        $Heap, 
                        Lit(left#0), 
                        $Box($l#10#pos#0))): DatatypeType)
                   ==> Requires1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                    $Heap, 
                    Lit(right#0), 
                    $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                            $Heap, 
                            Lit(left#0), 
                            $Box($l#10#pos#0))): DatatypeType))))
               ==> (var valueOrError0#10 := $Unbox(Apply1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                      $l#10#heap#0, 
                      Lit(left#0), 
                      $Box($l#10#pos#0))): DatatypeType; 
                Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat0$L, valueOrError0#10)
                   && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$L, valueOrError0#10)
                     ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat0$L, 
                      Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                      valueOrError0#10))
                   && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$L, valueOrError0#10)
                     ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat0$L, valueOrError0#10)
                       && (var pos#22 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$L, valueOrError0#10))): int; 
                        (var valueOrError1#10 := $Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                                $l#10#heap#0, 
                                Lit(right#0), 
                                $Box(pos#22))): DatatypeType; 
                          Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat0$R, valueOrError1#10)
                             && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$R, valueOrError1#10)
                               ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat0$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                                valueOrError1#10))
                             && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$R, valueOrError1#10)
                               ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat0$R, valueOrError1#10))))))))
       && Parsers.Engine.Concat0(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R, Lit(left#0), Lit(right#0))
         == Lit(AtLayer((lambda $l#9#ly#0: LayerType :: 
              Handle1((lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  $Box((var valueOrError0#9 := $Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                            $l#9#heap#0, 
                            Lit(left#0), 
                            $Box($Unbox($l#9#pos#0): int))): DatatypeType; 
                      (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$L, valueOrError0#9)
                         then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat0$L, 
                          Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                          valueOrError0#9)
                         else (var pos#19, l#9 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$L, valueOrError0#9))): int, 
                            _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$L, valueOrError0#9)); 
                          (var valueOrError1#9 := $Unbox(Apply1(Tclass._System.nat(), 
                                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                                  $l#9#heap#0, 
                                  Lit(right#0), 
                                  $Box(pos#19))): DatatypeType; 
                            (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat0$R, valueOrError1#9)
                               then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat0$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat0$L, Parsers.Engine.Concat0$R), 
                                valueOrError1#9)
                               else (var pos#20, r#9 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$R, valueOrError1#9))): int, 
                                  _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat0$R, valueOrError1#9)); 
                                #Parsers.ParseResult.Success(pos#20, $Box(#_System._tuple#2._#Make2(l#9, r#9))))))))))), 
                (lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  $IsBox($l#9#pos#0, Tclass._System.nat())
                     && 
                    Requires1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                      $l#9#heap#0, 
                      Lit(left#0), 
                      $l#9#pos#0)
                     && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                            $l#9#heap#0, 
                            Lit(left#0), 
                            $Box($Unbox($l#9#pos#0): int))): DatatypeType)
                       ==> Requires1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$R), 
                        $l#9#heap#0, 
                        Lit(right#0), 
                        $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat0$L), 
                                $l#9#heap#0, 
                                Lit(left#0), 
                                $Box($Unbox($l#9#pos#0): int))): DatatypeType))))), 
                (lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#9#o#0: ref :: false))))), 
            $LS($LZ))));

// function declaration for Parsers.Engine.Concat
function Parsers.Engine.Concat(Parsers.Engine.Concat$L: Ty, 
    Parsers.Engine.Concat$R: Ty, 
    $reveal: bool, 
    left#0: HandleType, 
    right#0: HandleType)
   : HandleType;

function Parsers.Engine.Concat#canCall(Parsers.Engine.Concat$L: Ty, 
    Parsers.Engine.Concat$R: Ty, 
    left#0: HandleType, 
    right#0: HandleType)
   : bool;

// consequence axiom for Parsers.Engine.Concat
axiom (forall Parsers.Engine.Concat$L: Ty, 
    Parsers.Engine.Concat$R: Ty, 
    $reveal: bool, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, $reveal, left#0, right#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Concat#canCall(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, left#0, right#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L)))
         && $IsAlloc(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L)), 
          $Heap)
         && 
        $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R)))
         && $IsAlloc(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R)), 
          $Heap))
     ==> (forall pos#18: int :: 
        { Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R)), 
            $Heap, 
            Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, $reveal, left#0, right#0), 
            $Box(pos#18)) } 
          { $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
              $Heap, 
              left#0, 
              $Box(pos#18))): DatatypeType } 
          { Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
            $Heap, 
            left#0, 
            $Box(pos#18)) } 
        LitInt(0) <= pos#18
             && 
            Requires1(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
              $Heap, 
              left#0, 
              $Box(pos#18))
             && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                    $Heap, 
                    left#0, 
                    $Box(pos#18))): DatatypeType)
               ==> Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                $Heap, 
                right#0, 
                $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                        $Heap, 
                        left#0, 
                        $Box(pos#18))): DatatypeType))))
           ==> Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R)), 
            $Heap, 
            Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, $reveal, left#0, right#0), 
            $Box(pos#18)))
       && $Is(Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, $reveal, left#0, right#0), 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
          Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R)))));

// alloc consequence axiom for Parsers.Engine.Concat
axiom (forall Parsers.Engine.Concat$L: Ty, 
    Parsers.Engine.Concat$R: Ty, 
    $reveal: bool, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { $IsAlloc(Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, $reveal, left#0, right#0), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R))), 
      $Heap) } 
  Parsers.Engine.Concat#canCall(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, left#0, right#0)
       || (
        $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L)))
         && $IsAlloc(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L)), 
          $Heap)
         && 
        $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R)))
         && $IsAlloc(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R)), 
          $Heap))
     ==> $IsAlloc(Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, $reveal, left#0, right#0), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R))), 
      $Heap));

function Parsers.Engine.Concat#requires(Ty, Ty, HandleType, HandleType) : bool;

// #requires axiom for Parsers.Engine.Concat
axiom (forall Parsers.Engine.Concat$L: Ty, 
    Parsers.Engine.Concat$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Concat#requires(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, left#0, right#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(left#0, 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L)))
       && $Is(right#0, 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R)))
     ==> Parsers.Engine.Concat#requires(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, left#0, right#0)
       == true);

// definition axiom for Parsers.Engine.Concat (revealed)
axiom {:id "id187"} (forall Parsers.Engine.Concat$L: Ty, 
    Parsers.Engine.Concat$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, true, left#0, right#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Concat#canCall(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, left#0, right#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L)))
         && $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R))))
     ==> (forall $l#8#pos#0: int, $l#8#heap#0: Heap :: 
        LitInt(0) <= $l#8#pos#0 && $IsGoodHeap($l#8#heap#0)
           ==> Requires1#canCall(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
              $Heap, 
              left#0, 
              $Box($l#8#pos#0))
             && (Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                $Heap, 
                left#0, 
                $Box($l#8#pos#0))
               ==> 
              Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                    $Heap, 
                    left#0, 
                    $Box($l#8#pos#0))): DatatypeType)
               ==> Requires1#canCall(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                $Heap, 
                right#0, 
                $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                        $Heap, 
                        left#0, 
                        $Box($l#8#pos#0))): DatatypeType))))
             && (Requires1(Tclass._System.nat(), 
                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                  $Heap, 
                  left#0, 
                  $Box($l#8#pos#0))
                 && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                        $Heap, 
                        left#0, 
                        $Box($l#8#pos#0))): DatatypeType)
                   ==> Requires1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                    $Heap, 
                    right#0, 
                    $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                            $Heap, 
                            left#0, 
                            $Box($l#8#pos#0))): DatatypeType))))
               ==> (var valueOrError0#8 := $Unbox(Apply1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                      $l#8#heap#0, 
                      left#0, 
                      $Box($l#8#pos#0))): DatatypeType; 
                Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat$L, valueOrError0#8)
                   && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$L, valueOrError0#8)
                     ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat$L, 
                      Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                      valueOrError0#8))
                   && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$L, valueOrError0#8)
                     ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat$L, valueOrError0#8)
                       && (var pos#22 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat$L, valueOrError0#8))): int; 
                        (var valueOrError1#8 := $Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                                $l#8#heap#0, 
                                right#0, 
                                $Box(pos#22))): DatatypeType; 
                          Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat$R, valueOrError1#8)
                             && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$R, valueOrError1#8)
                               ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                                valueOrError1#8))
                             && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$R, valueOrError1#8)
                               ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat$R, valueOrError1#8))))))))
       && Parsers.Engine.Concat(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, true, left#0, right#0)
         == Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
              Handle1((lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  $Box((var valueOrError0#7 := $Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                            $l#7#heap#0, 
                            left#0, 
                            $Box($Unbox($l#7#pos#0): int))): DatatypeType; 
                      (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$L, valueOrError0#7)
                         then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat$L, 
                          Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                          valueOrError0#7)
                         else (var pos#19, l#7 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat$L, valueOrError0#7))): int, 
                            _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat$L, valueOrError0#7)); 
                          (var valueOrError1#7 := $Unbox(Apply1(Tclass._System.nat(), 
                                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                                  $l#7#heap#0, 
                                  right#0, 
                                  $Box(pos#19))): DatatypeType; 
                            (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$R, valueOrError1#7)
                               then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                                valueOrError1#7)
                               else (var pos#20, r#7 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat$R, valueOrError1#7))): int, 
                                  _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat$R, valueOrError1#7)); 
                                #Parsers.ParseResult.Success(pos#20, $Box(#_System._tuple#2._#Make2(l#7, r#7))))))))))), 
                (lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  $IsBox($l#7#pos#0, Tclass._System.nat())
                     && 
                    Requires1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                      $l#7#heap#0, 
                      left#0, 
                      $l#7#pos#0)
                     && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                            $l#7#heap#0, 
                            left#0, 
                            $Box($Unbox($l#7#pos#0): int))): DatatypeType)
                       ==> Requires1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                        $l#7#heap#0, 
                        right#0, 
                        $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                                $l#7#heap#0, 
                                left#0, 
                                $Box($Unbox($l#7#pos#0): int))): DatatypeType))))), 
                (lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
            $LS($LZ))));

// definition axiom for Parsers.Engine.Concat for all literals (revealed)
axiom {:id "id188"} (forall Parsers.Engine.Concat$L: Ty, 
    Parsers.Engine.Concat$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  {:weight 3} { Parsers.Engine.Concat(Parsers.Engine.Concat$L, 
      Parsers.Engine.Concat$R, 
      true, 
      Lit(left#0), 
      Lit(right#0)), $IsGoodHeap($Heap) } 
  Parsers.Engine.Concat#canCall(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R, Lit(left#0), Lit(right#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L)))
         && $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R))))
     ==> (forall $l#10#pos#0: int, $l#10#heap#0: Heap :: 
        LitInt(0) <= $l#10#pos#0 && $IsGoodHeap($l#10#heap#0)
           ==> Requires1#canCall(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
              $Heap, 
              Lit(left#0), 
              $Box($l#10#pos#0))
             && (Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                $Heap, 
                Lit(left#0), 
                $Box($l#10#pos#0))
               ==> 
              Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                    $Heap, 
                    Lit(left#0), 
                    $Box($l#10#pos#0))): DatatypeType)
               ==> Requires1#canCall(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                $Heap, 
                Lit(right#0), 
                $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                        $Heap, 
                        Lit(left#0), 
                        $Box($l#10#pos#0))): DatatypeType))))
             && (Requires1(Tclass._System.nat(), 
                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                  $Heap, 
                  Lit(left#0), 
                  $Box($l#10#pos#0))
                 && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                        $Heap, 
                        Lit(left#0), 
                        $Box($l#10#pos#0))): DatatypeType)
                   ==> Requires1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                    $Heap, 
                    Lit(right#0), 
                    $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                            $Heap, 
                            Lit(left#0), 
                            $Box($l#10#pos#0))): DatatypeType))))
               ==> (var valueOrError0#10 := $Unbox(Apply1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                      $l#10#heap#0, 
                      Lit(left#0), 
                      $Box($l#10#pos#0))): DatatypeType; 
                Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat$L, valueOrError0#10)
                   && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$L, valueOrError0#10)
                     ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat$L, 
                      Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                      valueOrError0#10))
                   && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$L, valueOrError0#10)
                     ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat$L, valueOrError0#10)
                       && (var pos#26 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat$L, valueOrError0#10))): int; 
                        (var valueOrError1#10 := $Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                                $l#10#heap#0, 
                                Lit(right#0), 
                                $Box(pos#26))): DatatypeType; 
                          Parsers.ParseResult.IsFailure#canCall(Parsers.Engine.Concat$R, valueOrError1#10)
                             && (Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$R, valueOrError1#10)
                               ==> Parsers.ParseResult.PropagateFailure#canCall(Parsers.Engine.Concat$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                                valueOrError1#10))
                             && (!Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$R, valueOrError1#10)
                               ==> Parsers.ParseResult.Extract#canCall(Parsers.Engine.Concat$R, valueOrError1#10))))))))
       && Parsers.Engine.Concat(Parsers.Engine.Concat$L, 
          Parsers.Engine.Concat$R, 
          true, 
          Lit(left#0), 
          Lit(right#0))
         == Lit(AtLayer((lambda $l#9#ly#0: LayerType :: 
              Handle1((lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  $Box((var valueOrError0#9 := $Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                            $l#9#heap#0, 
                            Lit(left#0), 
                            $Box($Unbox($l#9#pos#0): int))): DatatypeType; 
                      (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$L, valueOrError0#9)
                         then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat$L, 
                          Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                          valueOrError0#9)
                         else (var pos#23, l#9 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat$L, valueOrError0#9))): int, 
                            _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat$L, valueOrError0#9)); 
                          (var valueOrError1#9 := $Unbox(Apply1(Tclass._System.nat(), 
                                  Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                                  $l#9#heap#0, 
                                  Lit(right#0), 
                                  $Box(pos#23))): DatatypeType; 
                            (if Parsers.ParseResult.IsFailure(Parsers.Engine.Concat$R, valueOrError1#9)
                               then Parsers.ParseResult.PropagateFailure(Parsers.Engine.Concat$R, 
                                Tclass._System.Tuple2(Parsers.Engine.Concat$L, Parsers.Engine.Concat$R), 
                                valueOrError1#9)
                               else (var pos#24, r#9 := $Unbox(_System.Tuple2._0(Parsers.ParseResult.Extract(Parsers.Engine.Concat$R, valueOrError1#9))): int, 
                                  _System.Tuple2._1(Parsers.ParseResult.Extract(Parsers.Engine.Concat$R, valueOrError1#9)); 
                                #Parsers.ParseResult.Success(pos#24, $Box(#_System._tuple#2._#Make2(l#9, r#9))))))))))), 
                (lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  $IsBox($l#9#pos#0, Tclass._System.nat())
                     && 
                    Requires1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                      $l#9#heap#0, 
                      Lit(left#0), 
                      $l#9#pos#0)
                     && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                            $l#9#heap#0, 
                            Lit(left#0), 
                            $Box($Unbox($l#9#pos#0): int))): DatatypeType)
                       ==> Requires1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Concat$R), 
                        $l#9#heap#0, 
                        Lit(right#0), 
                        $Box(Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Concat$L), 
                                $l#9#heap#0, 
                                Lit(left#0), 
                                $Box($Unbox($l#9#pos#0): int))): DatatypeType))))), 
                (lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#9#o#0: ref :: false))))), 
            $LS($LZ))));

// function declaration for Parsers.Engine.Either
function Parsers.Engine.Either(Parsers.Engine.Either$L: Ty, 
    Parsers.Engine.Either$R: Ty, 
    $reveal: bool, 
    left#0: HandleType, 
    right#0: HandleType)
   : HandleType;

function Parsers.Engine.Either#canCall(Parsers.Engine.Either$L: Ty, 
    Parsers.Engine.Either$R: Ty, 
    left#0: HandleType, 
    right#0: HandleType)
   : bool;

// consequence axiom for Parsers.Engine.Either
axiom (forall Parsers.Engine.Either$L: Ty, 
    Parsers.Engine.Either$R: Ty, 
    $reveal: bool, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, $reveal, left#0, right#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Either#canCall(Parsers.Engine.Either$L, Parsers.Engine.Either$R, left#0, right#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$L)))
         && $IsAlloc(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$L)), 
          $Heap)
         && 
        $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$R)))
         && $IsAlloc(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$R)), 
          $Heap))
     ==> (forall pos#11: int :: 
        { Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R)), 
            $Heap, 
            Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, $reveal, left#0, right#0), 
            $Box(pos#11)) } 
          { Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
            $Heap, 
            right#0, 
            $Box(pos#11)) } 
          { $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
              $Heap, 
              left#0, 
              $Box(pos#11))): DatatypeType } 
          { Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
            $Heap, 
            left#0, 
            $Box(pos#11)) } 
        LitInt(0) <= pos#11
             && 
            Requires1(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
              $Heap, 
              left#0, 
              $Box(pos#11))
             && (Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                    $Heap, 
                    left#0, 
                    $Box(pos#11))): DatatypeType)
               ==> Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                $Heap, 
                right#0, 
                $Box(pos#11)))
           ==> Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R)), 
            $Heap, 
            Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, $reveal, left#0, right#0), 
            $Box(pos#11)))
       && $Is(Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, $reveal, left#0, right#0), 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
          Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R)))));

// alloc consequence axiom for Parsers.Engine.Either
axiom (forall Parsers.Engine.Either$L: Ty, 
    Parsers.Engine.Either$R: Ty, 
    $reveal: bool, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { $IsAlloc(Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, $reveal, left#0, right#0), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R))), 
      $Heap) } 
  Parsers.Engine.Either#canCall(Parsers.Engine.Either$L, Parsers.Engine.Either$R, left#0, right#0)
       || (
        $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$L)))
         && $IsAlloc(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$L)), 
          $Heap)
         && 
        $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$R)))
         && $IsAlloc(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$R)), 
          $Heap))
     ==> $IsAlloc(Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, $reveal, left#0, right#0), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R))), 
      $Heap));

function Parsers.Engine.Either#requires(Ty, Ty, HandleType, HandleType) : bool;

// #requires axiom for Parsers.Engine.Either
axiom (forall Parsers.Engine.Either$L: Ty, 
    Parsers.Engine.Either$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Either#requires(Parsers.Engine.Either$L, Parsers.Engine.Either$R, left#0, right#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(left#0, 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$L)))
       && $Is(right#0, 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$R)))
     ==> Parsers.Engine.Either#requires(Parsers.Engine.Either$L, Parsers.Engine.Either$R, left#0, right#0)
       == true);

// definition axiom for Parsers.Engine.Either (revealed)
axiom {:id "id189"} (forall Parsers.Engine.Either$L: Ty, 
    Parsers.Engine.Either$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  { Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, true, left#0, right#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Either#canCall(Parsers.Engine.Either$L, Parsers.Engine.Either$R, left#0, right#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$L)))
         && $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$R))))
     ==> (forall $l#26#pos#0: int, $l#26#heap#0: Heap :: 
        LitInt(0) <= $l#26#pos#0 && $IsGoodHeap($l#26#heap#0)
           ==> Requires1#canCall(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
              $Heap, 
              left#0, 
              $Box($l#26#pos#0))
             && (Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                $Heap, 
                left#0, 
                $Box($l#26#pos#0))
               ==> 
              Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                    $Heap, 
                    left#0, 
                    $Box($l#26#pos#0))): DatatypeType)
               ==> Requires1#canCall(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                $Heap, 
                right#0, 
                $Box($l#26#pos#0)))
             && (Requires1(Tclass._System.nat(), 
                  Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                  $Heap, 
                  left#0, 
                  $Box($l#26#pos#0))
                 && (Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                        $Heap, 
                        left#0, 
                        $Box($l#26#pos#0))): DatatypeType)
                   ==> Requires1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                    $Heap, 
                    right#0, 
                    $Box($l#26#pos#0)))
               ==> 
              Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                    $l#26#heap#0, 
                    left#0, 
                    $Box($l#26#pos#0))): DatatypeType)
               ==> Parsers.ParseResult.MapResult#canCall(Parsers.Engine.Either$R, 
                Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R), 
                $Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                    $l#26#heap#0, 
                    right#0, 
                    $Box($l#26#pos#0))): DatatypeType, 
                Lit(AtLayer((lambda $l#28#ly#0: LayerType :: 
                      Handle1((lambda $l#28#heap#0: Heap, $l#28#r#0: Box :: 
                          $Box(#Parsers.Either.Right($l#28#r#0))), 
                        (lambda $l#28#heap#0: Heap, $l#28#r#0: Box :: 
                          $IsBox($l#28#r#0, Parsers.Engine.Either$R)), 
                        (lambda $l#28#heap#0: Heap, $l#28#r#0: Box :: 
                          SetRef_to_SetBox((lambda $l#28#o#0: ref :: false))))), 
                    $LS($LZ))))))
       && Parsers.Engine.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R, true, left#0, right#0)
         == Lit(AtLayer((lambda $l#24#ly#0: LayerType :: 
              Handle1((lambda $l#24#heap#0: Heap, $l#24#pos#0: Box :: 
                  $Box((if Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                            $l#24#heap#0, 
                            left#0, 
                            $Box($Unbox($l#24#pos#0): int))): DatatypeType)
                       then Parsers.ParseResult.MapResult(Parsers.Engine.Either$R, 
                        Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R), 
                        $Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                            $l#24#heap#0, 
                            right#0, 
                            $Box($Unbox($l#24#pos#0): int))): DatatypeType, 
                        Lit(AtLayer((lambda $l#25#ly#0: LayerType :: 
                              Handle1((lambda $l#25#heap#0: Heap, $l#25#r#0: Box :: 
                                  $Box(#Parsers.Either.Right($l#25#r#0))), 
                                (lambda $l#25#heap#0: Heap, $l#25#r#0: Box :: 
                                  $IsBox($l#25#r#0, Parsers.Engine.Either$R)), 
                                (lambda $l#25#heap#0: Heap, $l#25#r#0: Box :: 
                                  SetRef_to_SetBox((lambda $l#25#o#0: ref :: false))))), 
                            $l#24#ly#0)))
                       else (var l#7 := Parsers.ParseResult.t($Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                                $l#24#heap#0, 
                                left#0, 
                                $Box($Unbox($l#24#pos#0): int))): DatatypeType); 
                        (var pos#12 := Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                                  Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                                  $l#24#heap#0, 
                                  left#0, 
                                  $Box($Unbox($l#24#pos#0): int))): DatatypeType); 
                          #Parsers.ParseResult.Success(pos#12, $Box(#Parsers.Either.Left(l#7)))))))), 
                (lambda $l#24#heap#0: Heap, $l#24#pos#0: Box :: 
                  $IsBox($l#24#pos#0, Tclass._System.nat())
                     && 
                    Requires1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                      $l#24#heap#0, 
                      left#0, 
                      $l#24#pos#0)
                     && (Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                            $l#24#heap#0, 
                            left#0, 
                            $Box($Unbox($l#24#pos#0): int))): DatatypeType)
                       ==> Requires1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                        $l#24#heap#0, 
                        right#0, 
                        $l#24#pos#0))), 
                (lambda $l#24#heap#0: Heap, $l#24#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#24#o#0: ref :: false))))), 
            $LS($LZ))));

// definition axiom for Parsers.Engine.Either for all literals (revealed)
axiom {:id "id190"} (forall Parsers.Engine.Either$L: Ty, 
    Parsers.Engine.Either$R: Ty, 
    $Heap: Heap, 
    left#0: HandleType, 
    right#0: HandleType :: 
  {:weight 3} { Parsers.Engine.Either(Parsers.Engine.Either$L, 
      Parsers.Engine.Either$R, 
      true, 
      Lit(left#0), 
      Lit(right#0)), $IsGoodHeap($Heap) } 
  Parsers.Engine.Either#canCall(Parsers.Engine.Either$L, Parsers.Engine.Either$R, Lit(left#0), Lit(right#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(left#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$L)))
         && $Is(right#0, 
          Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Parsers.Engine.Either$R))))
     ==> (forall $l#31#pos#0: int, $l#31#heap#0: Heap :: 
        LitInt(0) <= $l#31#pos#0 && $IsGoodHeap($l#31#heap#0)
           ==> Requires1#canCall(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
              $Heap, 
              Lit(left#0), 
              $Box($l#31#pos#0))
             && (Requires1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                $Heap, 
                Lit(left#0), 
                $Box($l#31#pos#0))
               ==> 
              Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                    $Heap, 
                    Lit(left#0), 
                    $Box($l#31#pos#0))): DatatypeType)
               ==> Requires1#canCall(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                $Heap, 
                Lit(right#0), 
                $Box($l#31#pos#0)))
             && (Requires1(Tclass._System.nat(), 
                  Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                  $Heap, 
                  Lit(left#0), 
                  $Box($l#31#pos#0))
                 && (Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                        $Heap, 
                        Lit(left#0), 
                        $Box($l#31#pos#0))): DatatypeType)
                   ==> Requires1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                    $Heap, 
                    Lit(right#0), 
                    $Box($l#31#pos#0)))
               ==> 
              Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                    $l#31#heap#0, 
                    Lit(left#0), 
                    $Box($l#31#pos#0))): DatatypeType)
               ==> Parsers.ParseResult.MapResult#canCall(Parsers.Engine.Either$R, 
                Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R), 
                $Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                    $l#31#heap#0, 
                    Lit(right#0), 
                    $Box($l#31#pos#0))): DatatypeType, 
                Lit(AtLayer((lambda $l#33#ly#0: LayerType :: 
                      Handle1((lambda $l#33#heap#0: Heap, $l#33#r#0: Box :: 
                          $Box(#Parsers.Either.Right($l#33#r#0))), 
                        (lambda $l#33#heap#0: Heap, $l#33#r#0: Box :: 
                          $IsBox($l#33#r#0, Parsers.Engine.Either$R)), 
                        (lambda $l#33#heap#0: Heap, $l#33#r#0: Box :: 
                          SetRef_to_SetBox((lambda $l#33#o#0: ref :: false))))), 
                    $LS($LZ))))))
       && Parsers.Engine.Either(Parsers.Engine.Either$L, 
          Parsers.Engine.Either$R, 
          true, 
          Lit(left#0), 
          Lit(right#0))
         == Lit(AtLayer((lambda $l#29#ly#0: LayerType :: 
              Handle1((lambda $l#29#heap#0: Heap, $l#29#pos#0: Box :: 
                  $Box((if Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                            $l#29#heap#0, 
                            Lit(left#0), 
                            $Box($Unbox($l#29#pos#0): int))): DatatypeType)
                       then Parsers.ParseResult.MapResult(Parsers.Engine.Either$R, 
                        Tclass.Parsers.Either(Parsers.Engine.Either$L, Parsers.Engine.Either$R), 
                        $Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                            $l#29#heap#0, 
                            Lit(right#0), 
                            $Box($Unbox($l#29#pos#0): int))): DatatypeType, 
                        Lit(AtLayer((lambda $l#30#ly#0: LayerType :: 
                              Handle1((lambda $l#30#heap#0: Heap, $l#30#r#0: Box :: 
                                  $Box(#Parsers.Either.Right($l#30#r#0))), 
                                (lambda $l#30#heap#0: Heap, $l#30#r#0: Box :: 
                                  $IsBox($l#30#r#0, Parsers.Engine.Either$R)), 
                                (lambda $l#30#heap#0: Heap, $l#30#r#0: Box :: 
                                  SetRef_to_SetBox((lambda $l#30#o#0: ref :: false))))), 
                            $l#29#ly#0)))
                       else (var l#9 := Parsers.ParseResult.t($Unbox(Apply1(Tclass._System.nat(), 
                                Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                                $l#29#heap#0, 
                                Lit(left#0), 
                                $Box($Unbox($l#29#pos#0): int))): DatatypeType); 
                        (var pos#14 := Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                                  Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                                  $l#29#heap#0, 
                                  Lit(left#0), 
                                  $Box($Unbox($l#29#pos#0): int))): DatatypeType); 
                          #Parsers.ParseResult.Success(pos#14, $Box(#Parsers.Either.Left(l#9)))))))), 
                (lambda $l#29#heap#0: Heap, $l#29#pos#0: Box :: 
                  $IsBox($l#29#pos#0, Tclass._System.nat())
                     && 
                    Requires1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                      $l#29#heap#0, 
                      Lit(left#0), 
                      $l#29#pos#0)
                     && (Parsers.ParseResult.Failure_q($Unbox(Apply1(Tclass._System.nat(), 
                            Tclass.Parsers.ParseResult(Parsers.Engine.Either$L), 
                            $l#29#heap#0, 
                            Lit(left#0), 
                            $Box($Unbox($l#29#pos#0): int))): DatatypeType)
                       ==> Requires1(Tclass._System.nat(), 
                        Tclass.Parsers.ParseResult(Parsers.Engine.Either$R), 
                        $l#29#heap#0, 
                        Lit(right#0), 
                        $l#29#pos#0))), 
                (lambda $l#29#heap#0: Heap, $l#29#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#29#o#0: ref :: false))))), 
            $LS($LZ))));

// function declaration for Parsers.Engine.Char
function Parsers.Engine.Char($reveal: bool, this: DatatypeType, c#0: char) : HandleType;

function Parsers.Engine.Char#canCall(this: DatatypeType, c#0: char) : bool;

// consequence axiom for Parsers.Engine.Char
axiom (forall $reveal: bool, $Heap: Heap, this: DatatypeType, c#0: char :: 
  { Parsers.Engine.Char($reveal, this, c#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Char#canCall(this, c#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.Engine())
         && $IsAlloc(this, Tclass.Parsers.Engine(), $Heap)
         && $Is(c#0, TChar))
     ==> (forall pos#7: int :: 
        { Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(TChar), 
            $Heap, 
            Parsers.Engine.Char($reveal, this, c#0), 
            $Box(pos#7)) } 
        LitInt(0) <= pos#7
           ==> Requires1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(TChar), 
            $Heap, 
            Parsers.Engine.Char($reveal, this, c#0), 
            $Box(pos#7)))
       && (forall pos#8: int :: 
        { $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(TChar), 
              $Heap, 
              Parsers.Engine.Char($reveal, this, c#0), 
              $Box(pos#8))): DatatypeType } 
        LitInt(0) <= pos#8
           ==> (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(TChar), 
                    $Heap, 
                    Parsers.Engine.Char($reveal, this, c#0), 
                    $Box(pos#8))): DatatypeType)
               ==> Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(TChar), 
                      $Heap, 
                      Parsers.Engine.Char($reveal, this, c#0), 
                      $Box(pos#8))): DatatypeType)
                 == pos#8 + 1)
             && (Parsers.ParseResult.Success_q($Unbox(Apply1(Tclass._System.nat(), 
                    Tclass.Parsers.ParseResult(TChar), 
                    $Heap, 
                    Parsers.Engine.Char($reveal, this, c#0), 
                    $Box(pos#8))): DatatypeType)
               ==> Parsers.ParseResult.pos($Unbox(Apply1(Tclass._System.nat(), 
                      Tclass.Parsers.ParseResult(TChar), 
                      $Heap, 
                      Parsers.Engine.Char($reveal, this, c#0), 
                      $Box(pos#8))): DatatypeType)
                 <= Seq#Length(Parsers.Engine.input(this))))
       && $Is(Parsers.Engine.Char($reveal, this, c#0), 
        Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(TChar))));

function Parsers.Engine.Char#requires(DatatypeType, char) : bool;

// #requires axiom for Parsers.Engine.Char
axiom (forall this: DatatypeType, c#0: char :: 
  { Parsers.Engine.Char#requires(this, c#0) } 
  $Is(this, Tclass.Parsers.Engine()) && $Is(c#0, TChar)
     ==> Parsers.Engine.Char#requires(this, c#0) == true);

// definition axiom for Parsers.Engine.Char (revealed)
axiom {:id "id191"} (forall this: DatatypeType, c#0: char :: 
  { Parsers.Engine.Char(true, this, c#0) } 
  Parsers.Engine.Char#canCall(this, c#0)
       || ($Is(this, Tclass.Parsers.Engine()) && $Is(c#0, TChar))
     ==> (forall $l#8#pos#0: int :: 
        LitInt(0) <= $l#8#pos#0
           ==> Parsers.Engine.Engine_q(this)
             && ($l#8#pos#0 < Seq#Length(Parsers.Engine.input(this))
               ==> Parsers.Engine.Engine_q(this)))
       && Parsers.Engine.Char(true, this, c#0)
         == Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
              Handle1((lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  $Box((if $Unbox($l#7#pos#0): int < Seq#Length(Parsers.Engine.input(this))
                         && $Unbox(Seq#Index(Parsers.Engine.input(this), $Unbox($l#7#pos#0): int)): char
                           == c#0
                       then #Parsers.ParseResult.Success($Unbox($l#7#pos#0): int + 1, $Box(c#0))
                       else #Parsers.ParseResult.Failure()))), 
                (lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  $IsBox($l#7#pos#0, Tclass._System.nat())), 
                (lambda $l#7#heap#0: Heap, $l#7#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
            $LS($LZ))));

// definition axiom for Parsers.Engine.Char for all literals (revealed)
axiom {:id "id192"} (forall this: DatatypeType, c#0: char :: 
  {:weight 3} { Parsers.Engine.Char(true, Lit(this), Lit(c#0)) } 
  Parsers.Engine.Char#canCall(Lit(this), Lit(c#0))
       || ($Is(this, Tclass.Parsers.Engine()) && $Is(c#0, TChar))
     ==> (forall $l#10#pos#0: int :: 
        LitInt(0) <= $l#10#pos#0
           ==> Parsers.Engine.Engine_q(Lit(this))
             && ($l#10#pos#0 < Seq#Length(Lit(Parsers.Engine.input(Lit(this))))
               ==> Parsers.Engine.Engine_q(Lit(this))))
       && Parsers.Engine.Char(true, Lit(this), Lit(c#0))
         == Lit(AtLayer((lambda $l#9#ly#0: LayerType :: 
              Handle1((lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  $Box((if $Unbox($l#9#pos#0): int < Seq#Length(Lit(Parsers.Engine.input(Lit(this))))
                         && $Unbox(Seq#Index(Lit(Parsers.Engine.input(Lit(this))), $Unbox($l#9#pos#0): int)): char
                           == Lit(c#0)
                       then #Parsers.ParseResult.Success($Unbox($l#9#pos#0): int + 1, $Box(Lit(c#0)))
                       else #Parsers.ParseResult.Failure()))), 
                (lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  $IsBox($l#9#pos#0, Tclass._System.nat())), 
                (lambda $l#9#heap#0: Heap, $l#9#pos#0: Box :: 
                  SetRef_to_SetBox((lambda $l#9#o#0: ref :: false))))), 
            $LS($LZ))));

function Parsers.Engine.EOS(this: DatatypeType) : HandleType
uses {
axiom (forall this: DatatypeType :: 
  { Parsers.Engine.EOS(this): HandleType } 
  Parsers.Engine.EOS(this): HandleType
     == Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#pos#0: Box :: 
              $Box((if $Unbox($l#0#pos#0): int >= Seq#Length(Parsers.Engine.input(this))
                   then #Parsers.ParseResult.Success($Unbox($l#0#pos#0): int, $Box(Lit(#_System._tuple#0._#Make0())))
                   else #Parsers.ParseResult.Failure()))), 
            (lambda $l#0#heap#0: Heap, $l#0#pos#0: Box :: 
              $IsBox($l#0#pos#0, Tclass._System.nat())), 
            (lambda $l#0#heap#0: Heap, $l#0#pos#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ))));
}

// Engine.EOS: Type axiom
axiom (forall $o: DatatypeType :: 
  { Parsers.Engine.EOS($o) } 
  $Is($o, Tclass.Parsers.Engine())
     ==> $Is(Parsers.Engine.EOS($o), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Tclass._System.Tuple0()))));

// Engine.EOS: Allocation axiom
axiom (forall $h: Heap, $o: DatatypeType :: 
  { Parsers.Engine.EOS($o), $IsAlloc($o, Tclass.Parsers.Engine(), $h) } 
  $IsGoodHeap($h)
       && $Is($o, Tclass.Parsers.Engine())
       && $IsAlloc($o, Tclass.Parsers.Engine(), $h)
     ==> $IsAlloc(Parsers.Engine.EOS($o), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Tclass._System.Tuple0())), 
      $h));

function Parsers.Engine.Epsilon() : HandleType
uses {
axiom Parsers.Engine.Epsilon(): HandleType
   == Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
        Handle1((lambda $l#1#heap#0: Heap, $l#1#pos#0: Box :: 
            $Box(#Parsers.ParseResult.Success($Unbox($l#1#pos#0): int, $Box(Lit(#_System._tuple#0._#Make0()))))), 
          (lambda $l#1#heap#0: Heap, $l#1#pos#0: Box :: 
            $IsBox($l#1#pos#0, Tclass._System.nat())), 
          (lambda $l#1#heap#0: Heap, $l#1#pos#0: Box :: 
            SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
      $LS($LZ)));
// Engine.Epsilon: Type axiom
axiom $Is(Parsers.Engine.Epsilon(), 
  Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Tclass._System.Tuple0())));
}

// Engine.Epsilon: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(Parsers.Engine.Epsilon(), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Tclass._System.Tuple0())), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(Parsers.Engine.Epsilon(), 
      Tclass._System.___hPartialFunc1(Tclass._System.nat(), Tclass.Parsers.ParseResult(Tclass._System.Tuple0())), 
      $h));

// function declaration for Parsers.Engine.Parentheses'
function Parsers.Engine.Parentheses_k($ly: LayerType, $reveal: bool, this: DatatypeType, pos#0: int) : DatatypeType;

function Parsers.Engine.Parentheses_k#canCall(this: DatatypeType, pos#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses_k($LS($ly), $reveal, this, pos#0) } 
  Parsers.Engine.Parentheses_k($LS($ly), $reveal, this, pos#0)
     == Parsers.Engine.Parentheses_k($ly, $reveal, this, pos#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses_k(AsFuelBottom($ly), $reveal, this, pos#0) } 
  Parsers.Engine.Parentheses_k($ly, $reveal, this, pos#0)
     == Parsers.Engine.Parentheses_k($LZ, $reveal, this, pos#0));

// consequence axiom for Parsers.Engine.Parentheses_k
axiom (forall $ly: LayerType, $reveal: bool, this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses_k($ly, $reveal, this, pos#0) } 
  Parsers.Engine.Parentheses_k#canCall(this, pos#0)
       || ($Is(this, Tclass.Parsers.Engine()) && LitInt(0) <= pos#0)
     ==> $Is(Parsers.Engine.Parentheses_k($ly, $reveal, this, pos#0), 
      Tclass.Parsers.ParseResult(Tclass._System.nat())));

function Parsers.Engine.Parentheses_k#requires(LayerType, DatatypeType, int) : bool;

// #requires axiom for Parsers.Engine.Parentheses_k
axiom (forall $ly: LayerType, $Heap: Heap, this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses_k#requires($ly, this, pos#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Parsers.Engine())
       && $IsAlloc(this, Tclass.Parsers.Engine(), $Heap)
       && LitInt(0) <= pos#0
     ==> Parsers.Engine.Parentheses_k#requires($ly, this, pos#0) == true);

// definition axiom for Parsers.Engine.Parentheses_k (revealed)
axiom {:id "id193"} (forall $ly: LayerType, $Heap: Heap, this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses_k($LS($ly), true, this, pos#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Parentheses_k#canCall(this, pos#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.Engine())
         && $IsAlloc(this, Tclass.Parsers.Engine(), $Heap)
         && LitInt(0) <= pos#0)
     ==> (forall $l#29#pos'#0: int :: 
        (pos#0 < $l#29#pos'#0 ==> Parsers.Engine.Engine_q(this))
           && (pos#0 < $l#29#pos'#0 && $l#29#pos'#0 <= Seq#Length(Parsers.Engine.input(this))
             ==> Parsers.Engine.Parentheses_k#canCall(this, $l#29#pos'#0)))
       && (var rec#2 := Lit(AtLayer((lambda $l#33#ly#0: LayerType :: 
                Handle1((lambda $l#33#heap#0: Heap, $l#33#pos'#0: Box :: 
                    $Box(Parsers.Engine.Parentheses_k($l#33#ly#0, reveal_Parsers.Engine.Parentheses', this, $Unbox($l#33#pos'#0): int))), 
                  (lambda $l#33#heap#0: Heap, $l#33#pos'#0: Box :: 
                    $IsBox($l#33#pos'#0, TInt)
                       && 
                      pos#0 < $Unbox($l#33#pos'#0): int
                       && $Unbox($l#33#pos'#0): int <= Seq#Length(Parsers.Engine.input(this))), 
                  (lambda $l#33#heap#0: Heap, $l#33#pos'#0: Box :: 
                    SetRef_to_SetBox((lambda $l#33#o#0: ref :: false))))), 
              $ly)); 
        Parsers.Engine.Char#canCall(this, Lit(char#FromInt(40)))
           && 
          Parsers.Engine.Char#canCall(this, Lit(char#FromInt(41)))
           && Parsers.Engine.Concat#canCall(Tclass._System.nat(), 
            TChar, 
            rec#2, 
            Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(41))))
           && Parsers.Engine.Concat#canCall(TChar, 
            Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
            Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(40))), 
            Parsers.Engine.Concat(Tclass._System.nat(), 
              TChar, 
              reveal_Parsers.Engine.Concat, 
              rec#2, 
              Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(41)))))
           && Parsers.Engine.Either#canCall(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
            Tclass._System.Tuple0(), 
            Parsers.Engine.Concat(TChar, 
              Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
              reveal_Parsers.Engine.Concat, 
              Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(40))), 
              Parsers.Engine.Concat(Tclass._System.nat(), 
                TChar, 
                reveal_Parsers.Engine.Concat, 
                rec#2, 
                Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(41))))), 
            Parsers.Engine.Epsilon())
           && (forall $l#30#r#0: DatatypeType :: 
            $Is($l#30#r#0, 
                Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                  Tclass._System.Tuple0()))
               ==> 
              Parsers.Either.Left_q($l#30#r#0)
               ==> _System.Tuple2.___hMake2_q($Unbox(Parsers.Either.l($l#30#r#0)): DatatypeType)
                 && _System.Tuple2.___hMake2_q($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($l#30#r#0)): DatatypeType)): DatatypeType)
                 && 
                _System.Tuple2.___hMake2_q($Unbox(Parsers.Either.l($l#30#r#0)): DatatypeType)
                 && _System.Tuple2.___hMake2_q($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($l#30#r#0)): DatatypeType)): DatatypeType)
                 && _System.Tuple2.___hMake2_q($Unbox(Parsers.Either.l($l#30#r#0)): DatatypeType))
           && Parsers.ParseResult.MapResult#canCall(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
              Tclass._System.Tuple0()), 
            Tclass._System.nat(), 
            $Unbox(Apply1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                    Tclass._System.Tuple0())), 
                $Heap, 
                Parsers.Engine.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                  Tclass._System.Tuple0(), 
                  reveal_Parsers.Engine.Either, 
                  Parsers.Engine.Concat(TChar, 
                    Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
                    reveal_Parsers.Engine.Concat, 
                    Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(40))), 
                    Parsers.Engine.Concat(Tclass._System.nat(), 
                      TChar, 
                      reveal_Parsers.Engine.Concat, 
                      rec#2, 
                      Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(41))))), 
                  Parsers.Engine.Epsilon()), 
                $Box(pos#0))): DatatypeType, 
            (var count#3 := Lit(AtLayer((lambda $l#32#ly#0: LayerType :: 
                      Handle1((lambda $l#32#heap#0: Heap, $l#32#r#0: Box :: 
                          $Box((if Parsers.Either.Left_q($Unbox($l#32#r#0): DatatypeType)
                               then (var c'#21 := $Unbox(_System.Tuple2._1($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#32#r#0): DatatypeType)): DatatypeType)): DatatypeType)): char; 
                                (var n#21 := $Unbox(_System.Tuple2._0($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#32#r#0): DatatypeType)): DatatypeType)): DatatypeType)): int; 
                                  (var c#21 := $Unbox(_System.Tuple2._0($Unbox(Parsers.Either.l($Unbox($l#32#r#0): DatatypeType)): DatatypeType)): char; 
                                    n#21 + 1)))
                               else 0))), 
                        (lambda $l#32#heap#0: Heap, $l#32#r#0: Box :: 
                          $IsBox($l#32#r#0, 
                            Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                              Tclass._System.Tuple0()))), 
                        (lambda $l#32#heap#0: Heap, $l#32#r#0: Box :: 
                          SetRef_to_SetBox((lambda $l#32#o#0: ref :: false))))), 
                    $ly)); 
              count#3)))
       && Parsers.Engine.Parentheses_k($LS($ly), true, this, pos#0)
         == (var rec#2 := Lit(AtLayer((lambda $l#27#ly#0: LayerType :: 
                  Handle1((lambda $l#27#heap#0: Heap, $l#27#pos'#0: Box :: 
                      $Box(Parsers.Engine.Parentheses_k($l#27#ly#0, reveal_Parsers.Engine.Parentheses', this, $Unbox($l#27#pos'#0): int))), 
                    (lambda $l#27#heap#0: Heap, $l#27#pos'#0: Box :: 
                      $IsBox($l#27#pos'#0, TInt)
                         && 
                        pos#0 < $Unbox($l#27#pos'#0): int
                         && $Unbox($l#27#pos'#0): int <= Seq#Length(Parsers.Engine.input(this))), 
                    (lambda $l#27#heap#0: Heap, $l#27#pos'#0: Box :: 
                      SetRef_to_SetBox((lambda $l#27#o#0: ref :: false))))), 
                $ly)); 
          Parsers.ParseResult.MapResult(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
              Tclass._System.Tuple0()), 
            Tclass._System.nat(), 
            $Unbox(Apply1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                    Tclass._System.Tuple0())), 
                $Heap, 
                Parsers.Engine.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                  Tclass._System.Tuple0(), 
                  reveal_Parsers.Engine.Either, 
                  Parsers.Engine.Concat(TChar, 
                    Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
                    reveal_Parsers.Engine.Concat, 
                    Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(40))), 
                    Parsers.Engine.Concat(Tclass._System.nat(), 
                      TChar, 
                      reveal_Parsers.Engine.Concat, 
                      rec#2, 
                      Parsers.Engine.Char(reveal_Parsers.Engine.Char, this, Lit(char#FromInt(41))))), 
                  Parsers.Engine.Epsilon()), 
                $Box(pos#0))): DatatypeType, 
            (var count#3 := Lit(AtLayer((lambda $l#28#ly#0: LayerType :: 
                      Handle1((lambda $l#28#heap#0: Heap, $l#28#r#0: Box :: 
                          $Box((if Parsers.Either.Left_q($Unbox($l#28#r#0): DatatypeType)
                               then (var c'#18 := $Unbox(_System.Tuple2._1($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#28#r#0): DatatypeType)): DatatypeType)): DatatypeType)): char; 
                                (var n#18 := $Unbox(_System.Tuple2._0($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#28#r#0): DatatypeType)): DatatypeType)): DatatypeType)): int; 
                                  (var c#18 := $Unbox(_System.Tuple2._0($Unbox(Parsers.Either.l($Unbox($l#28#r#0): DatatypeType)): DatatypeType)): char; 
                                    n#18 + 1)))
                               else 0))), 
                        (lambda $l#28#heap#0: Heap, $l#28#r#0: Box :: 
                          $IsBox($l#28#r#0, 
                            Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                              Tclass._System.Tuple0()))), 
                        (lambda $l#28#heap#0: Heap, $l#28#r#0: Box :: 
                          SetRef_to_SetBox((lambda $l#28#o#0: ref :: false))))), 
                    $ly)); 
              count#3))));

// definition axiom for Parsers.Engine.Parentheses_k for all literals (revealed)
axiom {:id "id194"} (forall $ly: LayerType, $Heap: Heap, this: DatatypeType, pos#0: int :: 
  {:weight 3} { Parsers.Engine.Parentheses_k($LS($ly), true, Lit(this), LitInt(pos#0)), $IsGoodHeap($Heap) } 
  Parsers.Engine.Parentheses_k#canCall(Lit(this), LitInt(pos#0))
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.Engine())
         && $IsAlloc(this, Tclass.Parsers.Engine(), $Heap)
         && LitInt(0) <= pos#0)
     ==> (forall $l#36#pos'#0: int :: 
        (pos#0 < $l#36#pos'#0 ==> Parsers.Engine.Engine_q(Lit(this)))
           && (pos#0 < $l#36#pos'#0
               && $l#36#pos'#0 <= Seq#Length(Lit(Parsers.Engine.input(Lit(this))))
             ==> Parsers.Engine.Parentheses_k#canCall(Lit(this), $l#36#pos'#0)))
       && (var rec#3 := Lit(AtLayer((lambda $l#40#ly#0: LayerType :: 
                Handle1((lambda $l#40#heap#0: Heap, $l#40#pos'#0: Box :: 
                    $Box(Parsers.Engine.Parentheses_k($l#40#ly#0, 
                        reveal_Parsers.Engine.Parentheses', 
                        Lit(this), 
                        $Unbox($l#40#pos'#0): int))), 
                  (lambda $l#40#heap#0: Heap, $l#40#pos'#0: Box :: 
                    $IsBox($l#40#pos'#0, TInt)
                       && 
                      pos#0 < $Unbox($l#40#pos'#0): int
                       && $Unbox($l#40#pos'#0): int <= Seq#Length(Lit(Parsers.Engine.input(Lit(this))))), 
                  (lambda $l#40#heap#0: Heap, $l#40#pos'#0: Box :: 
                    SetRef_to_SetBox((lambda $l#40#o#0: ref :: false))))), 
              $LS($ly))); 
        Parsers.Engine.Char#canCall(Lit(this), Lit(char#FromInt(40)))
           && 
          Parsers.Engine.Char#canCall(Lit(this), Lit(char#FromInt(41)))
           && Parsers.Engine.Concat#canCall(Tclass._System.nat(), 
            TChar, 
            rec#3, 
            Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(41))))
           && Parsers.Engine.Concat#canCall(TChar, 
            Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
            Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(40))), 
            Parsers.Engine.Concat(Tclass._System.nat(), 
              TChar, 
              reveal_Parsers.Engine.Concat, 
              rec#3, 
              Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(41)))))
           && Parsers.Engine.Either#canCall(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
            Tclass._System.Tuple0(), 
            Parsers.Engine.Concat(TChar, 
              Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
              reveal_Parsers.Engine.Concat, 
              Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(40))), 
              Parsers.Engine.Concat(Tclass._System.nat(), 
                TChar, 
                reveal_Parsers.Engine.Concat, 
                rec#3, 
                Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(41))))), 
            Parsers.Engine.Epsilon())
           && (forall $l#37#r#0: DatatypeType :: 
            $Is($l#37#r#0, 
                Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                  Tclass._System.Tuple0()))
               ==> 
              Parsers.Either.Left_q($l#37#r#0)
               ==> _System.Tuple2.___hMake2_q($Unbox(Parsers.Either.l($l#37#r#0)): DatatypeType)
                 && _System.Tuple2.___hMake2_q($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($l#37#r#0)): DatatypeType)): DatatypeType)
                 && 
                _System.Tuple2.___hMake2_q($Unbox(Parsers.Either.l($l#37#r#0)): DatatypeType)
                 && _System.Tuple2.___hMake2_q($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($l#37#r#0)): DatatypeType)): DatatypeType)
                 && _System.Tuple2.___hMake2_q($Unbox(Parsers.Either.l($l#37#r#0)): DatatypeType))
           && Parsers.ParseResult.MapResult#canCall(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
              Tclass._System.Tuple0()), 
            Tclass._System.nat(), 
            $Unbox(Apply1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                    Tclass._System.Tuple0())), 
                $Heap, 
                Parsers.Engine.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                  Tclass._System.Tuple0(), 
                  reveal_Parsers.Engine.Either, 
                  Parsers.Engine.Concat(TChar, 
                    Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
                    reveal_Parsers.Engine.Concat, 
                    Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(40))), 
                    Parsers.Engine.Concat(Tclass._System.nat(), 
                      TChar, 
                      reveal_Parsers.Engine.Concat, 
                      rec#3, 
                      Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(41))))), 
                  Parsers.Engine.Epsilon()), 
                $Box(LitInt(pos#0)))): DatatypeType, 
            (var count#4 := Lit(AtLayer((lambda $l#39#ly#0: LayerType :: 
                      Handle1((lambda $l#39#heap#0: Heap, $l#39#r#0: Box :: 
                          $Box((if Parsers.Either.Left_q($Unbox($l#39#r#0): DatatypeType)
                               then (var c'#25 := $Unbox(_System.Tuple2._1($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#39#r#0): DatatypeType)): DatatypeType)): DatatypeType)): char; 
                                (var n#25 := $Unbox(_System.Tuple2._0($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#39#r#0): DatatypeType)): DatatypeType)): DatatypeType)): int; 
                                  (var c#25 := $Unbox(_System.Tuple2._0($Unbox(Parsers.Either.l($Unbox($l#39#r#0): DatatypeType)): DatatypeType)): char; 
                                    n#25 + 1)))
                               else 0))), 
                        (lambda $l#39#heap#0: Heap, $l#39#r#0: Box :: 
                          $IsBox($l#39#r#0, 
                            Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                              Tclass._System.Tuple0()))), 
                        (lambda $l#39#heap#0: Heap, $l#39#r#0: Box :: 
                          SetRef_to_SetBox((lambda $l#39#o#0: ref :: false))))), 
                    $LS($ly))); 
              count#4)))
       && Parsers.Engine.Parentheses_k($LS($ly), true, Lit(this), LitInt(pos#0))
         == (var rec#3 := Lit(AtLayer((lambda $l#34#ly#0: LayerType :: 
                  Handle1((lambda $l#34#heap#0: Heap, $l#34#pos'#0: Box :: 
                      $Box(Parsers.Engine.Parentheses_k($l#34#ly#0, 
                          reveal_Parsers.Engine.Parentheses', 
                          Lit(this), 
                          $Unbox($l#34#pos'#0): int))), 
                    (lambda $l#34#heap#0: Heap, $l#34#pos'#0: Box :: 
                      $IsBox($l#34#pos'#0, TInt)
                         && 
                        pos#0 < $Unbox($l#34#pos'#0): int
                         && $Unbox($l#34#pos'#0): int <= Seq#Length(Lit(Parsers.Engine.input(Lit(this))))), 
                    (lambda $l#34#heap#0: Heap, $l#34#pos'#0: Box :: 
                      SetRef_to_SetBox((lambda $l#34#o#0: ref :: false))))), 
                $LS($ly))); 
          Parsers.ParseResult.MapResult(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
              Tclass._System.Tuple0()), 
            Tclass._System.nat(), 
            $Unbox(Apply1(Tclass._System.nat(), 
                Tclass.Parsers.ParseResult(Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                    Tclass._System.Tuple0())), 
                $Heap, 
                Parsers.Engine.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                  Tclass._System.Tuple0(), 
                  reveal_Parsers.Engine.Either, 
                  Parsers.Engine.Concat(TChar, 
                    Tclass._System.Tuple2(Tclass._System.nat(), TChar), 
                    reveal_Parsers.Engine.Concat, 
                    Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(40))), 
                    Parsers.Engine.Concat(Tclass._System.nat(), 
                      TChar, 
                      reveal_Parsers.Engine.Concat, 
                      rec#3, 
                      Parsers.Engine.Char(reveal_Parsers.Engine.Char, Lit(this), Lit(char#FromInt(41))))), 
                  Parsers.Engine.Epsilon()), 
                $Box(LitInt(pos#0)))): DatatypeType, 
            (var count#4 := Lit(AtLayer((lambda $l#35#ly#0: LayerType :: 
                      Handle1((lambda $l#35#heap#0: Heap, $l#35#r#0: Box :: 
                          $Box((if Parsers.Either.Left_q($Unbox($l#35#r#0): DatatypeType)
                               then (var c'#22 := $Unbox(_System.Tuple2._1($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#35#r#0): DatatypeType)): DatatypeType)): DatatypeType)): char; 
                                (var n#22 := $Unbox(_System.Tuple2._0($Unbox(_System.Tuple2._1($Unbox(Parsers.Either.l($Unbox($l#35#r#0): DatatypeType)): DatatypeType)): DatatypeType)): int; 
                                  (var c#22 := $Unbox(_System.Tuple2._0($Unbox(Parsers.Either.l($Unbox($l#35#r#0): DatatypeType)): DatatypeType)): char; 
                                    n#22 + 1)))
                               else 0))), 
                        (lambda $l#35#heap#0: Heap, $l#35#r#0: Box :: 
                          $IsBox($l#35#r#0, 
                            Tclass.Parsers.Either(Tclass._System.Tuple2(TChar, Tclass._System.Tuple2(Tclass._System.nat(), TChar)), 
                              Tclass._System.Tuple0()))), 
                        (lambda $l#35#heap#0: Heap, $l#35#r#0: Box :: 
                          SetRef_to_SetBox((lambda $l#35#o#0: ref :: false))))), 
                    $LS($ly))); 
              count#4))));

// function declaration for Parsers.Engine.Parentheses
function Parsers.Engine.Parentheses(this: DatatypeType, pos#0: int) : DatatypeType;

function Parsers.Engine.Parentheses#canCall(this: DatatypeType, pos#0: int) : bool;

// consequence axiom for Parsers.Engine.Parentheses
axiom (forall this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses(this, pos#0) } 
  Parsers.Engine.Parentheses#canCall(this, pos#0)
       || ($Is(this, Tclass.Parsers.Engine()) && LitInt(0) <= pos#0)
     ==> $Is(Parsers.Engine.Parentheses(this, pos#0), 
      Tclass.Parsers.ParseResult(Tclass._System.nat())));

function Parsers.Engine.Parentheses#requires(DatatypeType, int) : bool;

// #requires axiom for Parsers.Engine.Parentheses
axiom (forall $Heap: Heap, this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses#requires(this, pos#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.Parsers.Engine())
       && $IsAlloc(this, Tclass.Parsers.Engine(), $Heap)
       && LitInt(0) <= pos#0
     ==> Parsers.Engine.Parentheses#requires(this, pos#0) == true);

// layer synonym axiom
axiom (forall $ly: LayerType, $reveal: bool, this: DatatypeType :: 
  { Parsers.Engine.Parentheses_k#Handle($LS($ly), $reveal, this) } 
  Parsers.Engine.Parentheses_k#Handle($LS($ly), $reveal, this)
     == Parsers.Engine.Parentheses_k#Handle($ly, $reveal, this));

function Parsers.Engine.Parentheses_k#Handle($fuel: LayerType, $reveal: bool, self: DatatypeType) : HandleType;

axiom (forall $ly: LayerType, $reveal: bool, $self: DatatypeType, $heap: Heap, $fh$1x#0: Box :: 
  { Apply1(Tclass._System.nat(), 
      Tclass.Parsers.ParseResult(Tclass._System.nat()), 
      $heap, 
      Parsers.Engine.Parentheses_k#Handle($ly, $reveal, $self), 
      $fh$1x#0) } 
  Apply1(Tclass._System.nat(), 
      Tclass.Parsers.ParseResult(Tclass._System.nat()), 
      $heap, 
      Parsers.Engine.Parentheses_k#Handle($ly, $reveal, $self), 
      $fh$1x#0)
     == $Box(Parsers.Engine.Parentheses_k($ly, $reveal, $self, $Unbox($fh$1x#0): int)));

axiom (forall $ly: LayerType, $reveal: bool, $self: DatatypeType, $heap: Heap, $fh$1x#0: Box :: 
  { Requires1(Tclass._System.nat(), 
      Tclass.Parsers.ParseResult(Tclass._System.nat()), 
      $heap, 
      Parsers.Engine.Parentheses_k#Handle($ly, $reveal, $self), 
      $fh$1x#0) } 
  Requires1(Tclass._System.nat(), 
      Tclass.Parsers.ParseResult(Tclass._System.nat()), 
      $heap, 
      Parsers.Engine.Parentheses_k#Handle($ly, $reveal, $self), 
      $fh$1x#0)
     == Parsers.Engine.Parentheses_k#requires($ly, $self, $Unbox($fh$1x#0): int));

axiom (forall $bx: Box, 
    $ly: LayerType, 
    $reveal: bool, 
    $self: DatatypeType, 
    $heap: Heap, 
    $fh$1x#0: Box :: 
  { Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.nat()), 
        $heap, 
        Parsers.Engine.Parentheses_k#Handle($ly, $reveal, $self), 
        $fh$1x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.nat()), 
        $heap, 
        Parsers.Engine.Parentheses_k#Handle($ly, $reveal, $self), 
        $fh$1x#0), 
      $bx)
     == false);

axiom (forall $ly: LayerType, $reveal: bool, $self: DatatypeType, $heap: Heap, $fh$1x#0: int :: 
  { Parsers.Engine.Parentheses_k($ly, $reveal, $self, $fh$1x#0), $IsGoodHeap($heap) } 
  Parsers.Engine.Parentheses_k($ly, $reveal, $self, $fh$1x#0)
     == $Unbox(Apply1(Tclass._System.nat(), 
        Tclass.Parsers.ParseResult(Tclass._System.nat()), 
        $heap, 
        Parsers.Engine.Parentheses_k#Handle($ly, $reveal, $self), 
        $Box($fh$1x#0))): DatatypeType);

// definition axiom for Parsers.Engine.Parentheses (revealed)
axiom {:id "id195"} (forall $Heap: Heap, this: DatatypeType, pos#0: int :: 
  { Parsers.Engine.Parentheses(this, pos#0), $IsGoodHeap($Heap) } 
  Parsers.Engine.Parentheses#canCall(this, pos#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.Engine())
         && $IsAlloc(this, Tclass.Parsers.Engine(), $Heap)
         && LitInt(0) <= pos#0)
     ==> Parsers.Engine.Concat#canCall(Tclass._System.nat(), 
        Tclass._System.Tuple0(), 
        Parsers.Engine.Parentheses_k#Handle($LS($LZ), reveal_Parsers.Engine.Parentheses', this), 
        Parsers.Engine.EOS(this))
       && (forall $l#14#r#0: DatatypeType :: 
        $Is($l#14#r#0, Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()))
           ==> _System.Tuple2.___hMake2_q($l#14#r#0))
       && Parsers.ParseResult.MapResult#canCall(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()), 
        Tclass._System.nat(), 
        $Unbox(Apply1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0())), 
            $Heap, 
            Parsers.Engine.Concat(Tclass._System.nat(), 
              Tclass._System.Tuple0(), 
              reveal_Parsers.Engine.Concat, 
              Parsers.Engine.Parentheses_k#Handle($LS($LZ), reveal_Parsers.Engine.Parentheses', this), 
              Parsers.Engine.EOS(this)), 
            $Box(pos#0))): DatatypeType, 
        Lit(AtLayer((lambda $l#15#ly#0: LayerType :: 
              Handle1((lambda $l#15#heap#0: Heap, $l#15#r#0: Box :: 
                  $Box($Unbox(_System.Tuple2._0($Unbox($l#15#r#0): DatatypeType)): int)), 
                (lambda $l#15#heap#0: Heap, $l#15#r#0: Box :: 
                  $IsBox($l#15#r#0, Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()))), 
                (lambda $l#15#heap#0: Heap, $l#15#r#0: Box :: 
                  SetRef_to_SetBox((lambda $l#15#o#0: ref :: false))))), 
            $LS($LZ))))
       && Parsers.Engine.Parentheses(this, pos#0)
         == Parsers.ParseResult.MapResult(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()), 
          Tclass._System.nat(), 
          $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0())), 
              $Heap, 
              Parsers.Engine.Concat(Tclass._System.nat(), 
                Tclass._System.Tuple0(), 
                reveal_Parsers.Engine.Concat, 
                Parsers.Engine.Parentheses_k#Handle($LS($LZ), reveal_Parsers.Engine.Parentheses', this), 
                Parsers.Engine.EOS(this)), 
              $Box(pos#0))): DatatypeType, 
          Lit(AtLayer((lambda $l#13#ly#0: LayerType :: 
                Handle1((lambda $l#13#heap#0: Heap, $l#13#r#0: Box :: 
                    $Box($Unbox(_System.Tuple2._0($Unbox($l#13#r#0): DatatypeType)): int)), 
                  (lambda $l#13#heap#0: Heap, $l#13#r#0: Box :: 
                    $IsBox($l#13#r#0, Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()))), 
                  (lambda $l#13#heap#0: Heap, $l#13#r#0: Box :: 
                    SetRef_to_SetBox((lambda $l#13#o#0: ref :: false))))), 
              $LS($LZ)))));

// definition axiom for Parsers.Engine.Parentheses for all literals (revealed)
axiom {:id "id196"} (forall $Heap: Heap, this: DatatypeType, pos#0: int :: 
  {:weight 3} { Parsers.Engine.Parentheses(Lit(this), LitInt(pos#0)), $IsGoodHeap($Heap) } 
  Parsers.Engine.Parentheses#canCall(Lit(this), LitInt(pos#0))
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.Parsers.Engine())
         && $IsAlloc(this, Tclass.Parsers.Engine(), $Heap)
         && LitInt(0) <= pos#0)
     ==> Parsers.Engine.Concat#canCall(Tclass._System.nat(), 
        Tclass._System.Tuple0(), 
        Parsers.Engine.Parentheses_k#Handle($LS($LZ), reveal_Parsers.Engine.Parentheses', Lit(this)), 
        Parsers.Engine.EOS(Lit(this)))
       && (forall $l#17#r#0: DatatypeType :: 
        $Is($l#17#r#0, Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()))
           ==> _System.Tuple2.___hMake2_q($l#17#r#0))
       && Parsers.ParseResult.MapResult#canCall(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()), 
        Tclass._System.nat(), 
        $Unbox(Apply1(Tclass._System.nat(), 
            Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0())), 
            $Heap, 
            Parsers.Engine.Concat(Tclass._System.nat(), 
              Tclass._System.Tuple0(), 
              reveal_Parsers.Engine.Concat, 
              Parsers.Engine.Parentheses_k#Handle($LS($LZ), reveal_Parsers.Engine.Parentheses', Lit(this)), 
              Parsers.Engine.EOS(Lit(this))), 
            $Box(LitInt(pos#0)))): DatatypeType, 
        Lit(AtLayer((lambda $l#18#ly#0: LayerType :: 
              Handle1((lambda $l#18#heap#0: Heap, $l#18#r#0: Box :: 
                  $Box($Unbox(_System.Tuple2._0($Unbox($l#18#r#0): DatatypeType)): int)), 
                (lambda $l#18#heap#0: Heap, $l#18#r#0: Box :: 
                  $IsBox($l#18#r#0, Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()))), 
                (lambda $l#18#heap#0: Heap, $l#18#r#0: Box :: 
                  SetRef_to_SetBox((lambda $l#18#o#0: ref :: false))))), 
            $LS($LZ))))
       && Parsers.Engine.Parentheses(Lit(this), LitInt(pos#0))
         == Parsers.ParseResult.MapResult(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()), 
          Tclass._System.nat(), 
          $Unbox(Apply1(Tclass._System.nat(), 
              Tclass.Parsers.ParseResult(Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0())), 
              $Heap, 
              Parsers.Engine.Concat(Tclass._System.nat(), 
                Tclass._System.Tuple0(), 
                reveal_Parsers.Engine.Concat, 
                Parsers.Engine.Parentheses_k#Handle($LS($LZ), reveal_Parsers.Engine.Parentheses', Lit(this)), 
                Parsers.Engine.EOS(Lit(this))), 
              $Box(LitInt(pos#0)))): DatatypeType, 
          Lit(AtLayer((lambda $l#16#ly#0: LayerType :: 
                Handle1((lambda $l#16#heap#0: Heap, $l#16#r#0: Box :: 
                    $Box($Unbox(_System.Tuple2._0($Unbox($l#16#r#0): DatatypeType)): int)), 
                  (lambda $l#16#heap#0: Heap, $l#16#r#0: Box :: 
                    $IsBox($l#16#r#0, Tclass._System.Tuple2(Tclass._System.nat(), Tclass._System.Tuple0()))), 
                  (lambda $l#16#heap#0: Heap, $l#16#r#0: Box :: 
                    SetRef_to_SetBox((lambda $l#16#o#0: ref :: false))))), 
              $LS($LZ)))));

procedure {:verboseName "Parsers.Engine.reveal_Concat (well-formedness)"} {:verify false} CheckWellFormed$$Parsers.Engine.reveal__Concat();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parsers.Engine.reveal_Concat (call)"} {:verify false} Call$$Parsers.Engine.reveal__Concat();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_Parsers.Engine.Concat;



procedure {:verboseName "Parsers.Engine.reveal_Either (well-formedness)"} {:verify false} CheckWellFormed$$Parsers.Engine.reveal__Either();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parsers.Engine.reveal_Either (call)"} {:verify false} Call$$Parsers.Engine.reveal__Either();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_Parsers.Engine.Either;



procedure {:verboseName "Parsers.Engine.reveal_Char (well-formedness)"} {:verify false} CheckWellFormed$$Parsers.Engine.reveal__Char();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parsers.Engine.reveal_Char (call)"} {:verify false} Call$$Parsers.Engine.reveal__Char();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_Parsers.Engine.Char;



procedure {:verboseName "Parsers.Engine.reveal_Parentheses' (well-formedness)"} {:verify false} CheckWellFormed$$Parsers.Engine.reveal__Parentheses_k();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Parsers.Engine.reveal_Parentheses' (call)"} {:verify false} Call$$Parsers.Engine.reveal__Parentheses_k();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal_Parsers.Engine.Parentheses';



const unique tytagFamily$nat: TyTagFamily;

const unique tytagFamily$object: TyTagFamily;

const unique tytagFamily$array: TyTagFamily;

const unique tytagFamily$_#Func1: TyTagFamily;

const unique tytagFamily$_#PartialFunc1: TyTagFamily;

const unique tytagFamily$_#TotalFunc1: TyTagFamily;

const unique tytagFamily$_#Func0: TyTagFamily;

const unique tytagFamily$_#PartialFunc0: TyTagFamily;

const unique tytagFamily$_#TotalFunc0: TyTagFamily;

const unique tytagFamily$_tuple#2: TyTagFamily;

const unique tytagFamily$_tuple#0: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$Either: TyTagFamily;

const unique tytagFamily$ParseResult: TyTagFamily;

const unique tytagFamily$Engine: TyTagFamily;

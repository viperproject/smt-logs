// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy

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

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

const reveal_Utils._default.MaxF: bool;

const unique class.Induction.__default: ClassName;

function Induction.__default.Zero() : Box
uses {
// _default.Zero: Type axiom
axiom 0 < $FunctionContextHeight
   ==> $IsBox(Induction.__default.Zero(), Tclass.Induction.V());
}

function Tclass.Induction.V() : Ty
uses {
axiom $AlwaysAllocated(Tclass.Induction.V());
}

// _default.Zero: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAllocBox(Induction.__default.Zero(), Tclass.Induction.V(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAllocBox(Induction.__default.Zero(), Tclass.Induction.V(), $h));

// function declaration for Induction._default.P
function Induction.__default.P(st#0: Box, e#0: DatatypeType) : bool;

function Induction.__default.P#canCall(st#0: Box, e#0: DatatypeType) : bool;

function Tclass.Induction.S() : Ty
uses {
axiom $AlwaysAllocated(Tclass.Induction.S());
}

function Tclass.AST.Expr() : Ty
uses {
// Tclass.AST.Expr Tag
axiom Tag(Tclass.AST.Expr()) == Tagclass.AST.Expr
   && TagFamily(Tclass.AST.Expr()) == tytagFamily$Expr;
}

const unique Tagclass.AST.Expr: TyTag;

// Box/unbox axiom for Tclass.AST.Expr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AST.Expr()) } 
  $IsBox(bx, Tclass.AST.Expr())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.AST.Expr()));

function Induction.__default.P#requires(Box, DatatypeType) : bool;

// #requires axiom for Induction.__default.P
axiom (forall st#0: Box, e#0: DatatypeType :: 
  { Induction.__default.P#requires(st#0, e#0) } 
  $IsBox(st#0, Tclass.Induction.S()) && $Is(e#0, Tclass.AST.Expr())
     ==> Induction.__default.P#requires(st#0, e#0) == true);

procedure {:verboseName "Induction.P (well-formedness)"} CheckWellformed$$Induction.__default.P(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.P_Succ
function Induction.__default.P__Succ(st#0: Box, e#0: DatatypeType, st'#0: Box, v#0: Box) : bool;

function Induction.__default.P__Succ#canCall(st#0: Box, e#0: DatatypeType, st'#0: Box, v#0: Box) : bool;

function Induction.__default.P__Succ#requires(Box, DatatypeType, Box, Box) : bool;

// #requires axiom for Induction.__default.P__Succ
axiom (forall st#0: Box, e#0: DatatypeType, st'#0: Box, v#0: Box :: 
  { Induction.__default.P__Succ#requires(st#0, e#0, st'#0, v#0) } 
  $IsBox(st#0, Tclass.Induction.S())
       && $Is(e#0, Tclass.AST.Expr())
       && $IsBox(st'#0, Tclass.Induction.S())
       && $IsBox(v#0, Tclass.Induction.V())
     ==> Induction.__default.P__Succ#requires(st#0, e#0, st'#0, v#0) == true);

procedure {:verboseName "Induction.P_Succ (well-formedness)"} CheckWellformed$$Induction.__default.P__Succ(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()), 
    st'#0: Box where $IsBox(st'#0, Tclass.Induction.S()), 
    v#0: Box where $IsBox(v#0, Tclass.Induction.V()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.P_Fail
function Induction.__default.P__Fail(st#0: Box, e#0: DatatypeType) : bool;

function Induction.__default.P__Fail#canCall(st#0: Box, e#0: DatatypeType) : bool;

function Induction.__default.P__Fail#requires(Box, DatatypeType) : bool;

// #requires axiom for Induction.__default.P__Fail
axiom (forall st#0: Box, e#0: DatatypeType :: 
  { Induction.__default.P__Fail#requires(st#0, e#0) } 
  $IsBox(st#0, Tclass.Induction.S()) && $Is(e#0, Tclass.AST.Expr())
     ==> Induction.__default.P__Fail#requires(st#0, e#0) == true);

procedure {:verboseName "Induction.P_Fail (well-formedness)"} CheckWellformed$$Induction.__default.P__Fail(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.Pes
function Induction.__default.Pes(st#0: Box, es#0: Seq) : bool;

function Induction.__default.Pes#canCall(st#0: Box, es#0: Seq) : bool;

function Induction.__default.Pes#requires(Box, Seq) : bool;

// #requires axiom for Induction.__default.Pes
axiom (forall st#0: Box, es#0: Seq :: 
  { Induction.__default.Pes#requires(st#0, es#0) } 
  $IsBox(st#0, Tclass.Induction.S()) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> Induction.__default.Pes#requires(st#0, es#0) == true);

procedure {:verboseName "Induction.Pes (well-formedness)"} CheckWellformed$$Induction.__default.Pes(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.Pes_Succ
function Induction.__default.Pes__Succ(st#0: Box, es#0: Seq, st'#0: Box, vs#0: Box) : bool;

function Induction.__default.Pes__Succ#canCall(st#0: Box, es#0: Seq, st'#0: Box, vs#0: Box) : bool;

function Tclass.Induction.VS() : Ty
uses {
axiom $AlwaysAllocated(Tclass.Induction.VS());
}

function Induction.__default.Pes__Succ#requires(Box, Seq, Box, Box) : bool;

// #requires axiom for Induction.__default.Pes__Succ
axiom (forall st#0: Box, es#0: Seq, st'#0: Box, vs#0: Box :: 
  { Induction.__default.Pes__Succ#requires(st#0, es#0, st'#0, vs#0) } 
  $IsBox(st#0, Tclass.Induction.S())
       && $Is(es#0, TSeq(Tclass.AST.Expr()))
       && $IsBox(st'#0, Tclass.Induction.S())
       && $IsBox(vs#0, Tclass.Induction.VS())
     ==> Induction.__default.Pes__Succ#requires(st#0, es#0, st'#0, vs#0) == true);

procedure {:verboseName "Induction.Pes_Succ (well-formedness)"} CheckWellformed$$Induction.__default.Pes__Succ(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())), 
    st'#0: Box where $IsBox(st'#0, Tclass.Induction.S()), 
    vs#0: Box where $IsBox(vs#0, Tclass.Induction.VS()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.Pes_Fail
function Induction.__default.Pes__Fail(st#0: Box, es#0: Seq) : bool;

function Induction.__default.Pes__Fail#canCall(st#0: Box, es#0: Seq) : bool;

function Induction.__default.Pes__Fail#requires(Box, Seq) : bool;

// #requires axiom for Induction.__default.Pes__Fail
axiom (forall st#0: Box, es#0: Seq :: 
  { Induction.__default.Pes__Fail#requires(st#0, es#0) } 
  $IsBox(st#0, Tclass.Induction.S()) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> Induction.__default.Pes__Fail#requires(st#0, es#0) == true);

procedure {:verboseName "Induction.Pes_Fail (well-formedness)"} CheckWellformed$$Induction.__default.Pes__Fail(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.AppendValue
function Induction.__default.AppendValue(v#0: Box, vs#0: Box) : Box
uses {
// consequence axiom for Induction.__default.AppendValue
axiom 0 <= $FunctionContextHeight
   ==> (forall v#0: Box, vs#0: Box :: 
    { Induction.__default.AppendValue(v#0, vs#0) } 
    Induction.__default.AppendValue#canCall(v#0, vs#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(v#0, Tclass.Induction.V())
           && $IsBox(vs#0, Tclass.Induction.VS()))
       ==> $IsBox(Induction.__default.AppendValue(v#0, vs#0), Tclass.Induction.VS()));
}

function Induction.__default.AppendValue#canCall(v#0: Box, vs#0: Box) : bool;

function Induction.__default.AppendValue#requires(Box, Box) : bool;

// #requires axiom for Induction.__default.AppendValue
axiom (forall v#0: Box, vs#0: Box :: 
  { Induction.__default.AppendValue#requires(v#0, vs#0) } 
  $IsBox(v#0, Tclass.Induction.V()) && $IsBox(vs#0, Tclass.Induction.VS())
     ==> Induction.__default.AppendValue#requires(v#0, vs#0) == true);

procedure {:verboseName "Induction.AppendValue (well-formedness)"} CheckWellformed$$Induction.__default.AppendValue(v#0: Box where $IsBox(v#0, Tclass.Induction.V()), 
    vs#0: Box where $IsBox(vs#0, Tclass.Induction.VS()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Induction.__default.NilVS() : Box
uses {
// _default.NilVS: Type axiom
axiom 0 < $FunctionContextHeight
   ==> $IsBox(Induction.__default.NilVS(), Tclass.Induction.VS());
}

// _default.NilVS: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAllocBox(Induction.__default.NilVS(), Tclass.Induction.VS(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAllocBox(Induction.__default.NilVS(), Tclass.Induction.VS(), $h));

// function declaration for Induction._default.VS_Last
function Induction.__default.VS__Last(vs#0: Box) : Box
uses {
// consequence axiom for Induction.__default.VS__Last
axiom 1 <= $FunctionContextHeight
   ==> (forall vs#0: Box :: 
    { Induction.__default.VS__Last(vs#0) } 
    Induction.__default.VS__Last#canCall(vs#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(vs#0, Tclass.Induction.VS())
           && vs#0 != Induction.__default.NilVS())
       ==> $IsBox(Induction.__default.VS__Last(vs#0), Tclass.Induction.V()));
}

function Induction.__default.VS__Last#canCall(vs#0: Box) : bool;

function Induction.__default.VS__Last#requires(Box) : bool;

// #requires axiom for Induction.__default.VS__Last
axiom (forall vs#0: Box :: 
  { Induction.__default.VS__Last#requires(vs#0) } 
  $IsBox(vs#0, Tclass.Induction.VS())
     ==> Induction.__default.VS__Last#requires(vs#0)
       == (vs#0 != Induction.__default.NilVS()));

procedure {:verboseName "Induction.VS_Last (well-formedness)"} CheckWellformed$$Induction.__default.VS__Last(vs#0: Box where $IsBox(vs#0, Tclass.Induction.VS()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.UpdateState_Pre
function Induction.__default.UpdateState__Pre(st#0: Box, vars#0: Seq, argvs#0: Box) : bool;

function Induction.__default.UpdateState__Pre#canCall(st#0: Box, vars#0: Seq, argvs#0: Box) : bool;

function Induction.__default.UpdateState__Pre#requires(Box, Seq, Box) : bool;

// #requires axiom for Induction.__default.UpdateState__Pre
axiom (forall st#0: Box, vars#0: Seq, argvs#0: Box :: 
  { Induction.__default.UpdateState__Pre#requires(st#0, vars#0, argvs#0) } 
  $IsBox(st#0, Tclass.Induction.S())
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $IsBox(argvs#0, Tclass.Induction.VS())
     ==> Induction.__default.UpdateState__Pre#requires(st#0, vars#0, argvs#0) == true);

procedure {:verboseName "Induction.UpdateState_Pre (well-formedness)"} CheckWellformed$$Induction.__default.UpdateState__Pre(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))), 
    argvs#0: Box where $IsBox(argvs#0, Tclass.Induction.VS()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.AssignState
function Induction.__default.AssignState(st#0: Box, vars#0: Seq, vals#0: Box) : Box
uses {
// consequence axiom for Induction.__default.AssignState
axiom 1 <= $FunctionContextHeight
   ==> (forall st#0: Box, vars#0: Seq, vals#0: Box :: 
    { Induction.__default.AssignState(st#0, vars#0, vals#0) } 
    Induction.__default.AssignState#canCall(st#0, vars#0, vals#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(st#0, Tclass.Induction.S())
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $IsBox(vals#0, Tclass.Induction.VS())
           && Induction.__default.UpdateState__Pre(st#0, vars#0, vals#0))
       ==> $IsBox(Induction.__default.AssignState(st#0, vars#0, vals#0), Tclass.Induction.S()));
}

function Induction.__default.AssignState#canCall(st#0: Box, vars#0: Seq, vals#0: Box) : bool;

function Induction.__default.AssignState#requires(Box, Seq, Box) : bool;

// #requires axiom for Induction.__default.AssignState
axiom (forall st#0: Box, vars#0: Seq, vals#0: Box :: 
  { Induction.__default.AssignState#requires(st#0, vars#0, vals#0) } 
  $IsBox(st#0, Tclass.Induction.S())
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $IsBox(vals#0, Tclass.Induction.VS())
     ==> Induction.__default.AssignState#requires(st#0, vars#0, vals#0)
       == Induction.__default.UpdateState__Pre(st#0, vars#0, vals#0));

procedure {:verboseName "Induction.AssignState (well-formedness)"} CheckWellformed$$Induction.__default.AssignState(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))), 
    vals#0: Box where $IsBox(vals#0, Tclass.Induction.VS()))
   returns (st'#0: Box);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.BindStartScope
function Induction.__default.BindStartScope(st#0: Box, vars#0: Seq, vals#0: Box) : Box
uses {
// consequence axiom for Induction.__default.BindStartScope
axiom 1 <= $FunctionContextHeight
   ==> (forall st#0: Box, vars#0: Seq, vals#0: Box :: 
    { Induction.__default.BindStartScope(st#0, vars#0, vals#0) } 
    Induction.__default.BindStartScope#canCall(st#0, vars#0, vals#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(st#0, Tclass.Induction.S())
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $IsBox(vals#0, Tclass.Induction.VS())
           && Induction.__default.UpdateState__Pre(st#0, vars#0, vals#0))
       ==> $IsBox(Induction.__default.BindStartScope(st#0, vars#0, vals#0), Tclass.Induction.S()));
}

function Induction.__default.BindStartScope#canCall(st#0: Box, vars#0: Seq, vals#0: Box) : bool;

function Induction.__default.BindStartScope#requires(Box, Seq, Box) : bool;

// #requires axiom for Induction.__default.BindStartScope
axiom (forall st#0: Box, vars#0: Seq, vals#0: Box :: 
  { Induction.__default.BindStartScope#requires(st#0, vars#0, vals#0) } 
  $IsBox(st#0, Tclass.Induction.S())
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $IsBox(vals#0, Tclass.Induction.VS())
     ==> Induction.__default.BindStartScope#requires(st#0, vars#0, vals#0)
       == Induction.__default.UpdateState__Pre(st#0, vars#0, vals#0));

procedure {:verboseName "Induction.BindStartScope (well-formedness)"} CheckWellformed$$Induction.__default.BindStartScope(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))), 
    vals#0: Box where $IsBox(vals#0, Tclass.Induction.VS()))
   returns (st'#0: Box);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.BindEndScope
function Induction.__default.BindEndScope(st0#0: Box, st#0: Box, vars#0: Seq) : Box
uses {
// consequence axiom for Induction.__default.BindEndScope
axiom 0 <= $FunctionContextHeight
   ==> (forall st0#0: Box, st#0: Box, vars#0: Seq :: 
    { Induction.__default.BindEndScope(st0#0, st#0, vars#0) } 
    Induction.__default.BindEndScope#canCall(st0#0, st#0, vars#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(st0#0, Tclass.Induction.S())
           && $IsBox(st#0, Tclass.Induction.S())
           && $Is(vars#0, TSeq(TSeq(TChar))))
       ==> $IsBox(Induction.__default.BindEndScope(st0#0, st#0, vars#0), Tclass.Induction.S()));
}

function Induction.__default.BindEndScope#canCall(st0#0: Box, st#0: Box, vars#0: Seq) : bool;

function Induction.__default.BindEndScope#requires(Box, Box, Seq) : bool;

// #requires axiom for Induction.__default.BindEndScope
axiom (forall st0#0: Box, st#0: Box, vars#0: Seq :: 
  { Induction.__default.BindEndScope#requires(st0#0, st#0, vars#0) } 
  $IsBox(st0#0, Tclass.Induction.S())
       && $IsBox(st#0, Tclass.Induction.S())
       && $Is(vars#0, TSeq(TSeq(TChar)))
     ==> Induction.__default.BindEndScope#requires(st0#0, st#0, vars#0) == true);

procedure {:verboseName "Induction.BindEndScope (well-formedness)"} CheckWellformed$$Induction.__default.BindEndScope(st0#0: Box where $IsBox(st0#0, Tclass.Induction.S()), 
    st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))))
   returns (st'#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for Induction._default.P_Step
function Induction.__default.P__Step(st#0: Box, e#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for Induction.__default.P__Step
axiom 1 <= $FunctionContextHeight
   ==> (forall st#0: Box, e#0: DatatypeType :: 
    { Induction.__default.P__Step(st#0, e#0) } 
    Induction.__default.P__Step#canCall(st#0, e#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(st#0, Tclass.Induction.S())
           && $Is(e#0, Tclass.AST.Expr())
           && 
          Induction.__default.P(st#0, e#0)
           && !Induction.__default.P__Fail(st#0, e#0))
       ==> Induction.__default.P__Succ(st#0, 
          e#0, 
          _System.Tuple2._0(Induction.__default.P__Step(st#0, e#0)), 
          _System.Tuple2._1(Induction.__default.P__Step(st#0, e#0)))
         && $Is(Induction.__default.P__Step(st#0, e#0), 
          Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V())));
}

function Induction.__default.P__Step#canCall(st#0: Box, e#0: DatatypeType) : bool;

function Induction.__default.P__Step#requires(Box, DatatypeType) : bool;

// #requires axiom for Induction.__default.P__Step
axiom (forall st#0: Box, e#0: DatatypeType :: 
  { Induction.__default.P__Step#requires(st#0, e#0) } 
  $IsBox(st#0, Tclass.Induction.S()) && $Is(e#0, Tclass.AST.Expr())
     ==> Induction.__default.P__Step#requires(st#0, e#0)
       == (Induction.__default.P(st#0, e#0) && !Induction.__default.P__Fail(st#0, e#0)));

procedure {:verboseName "Induction.P_Step (well-formedness)"} CheckWellformed$$Induction.__default.P__Step(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()))
   returns (res#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id3"} Induction.__default.P__Succ(st#0, e#0, _System.Tuple2._0(res#0), _System.Tuple2._1(res#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.P_Step (well-formedness)"} CheckWellformed$$Induction.__default.P__Step(st#0: Box, e#0: DatatypeType) returns (res#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##e#1: DatatypeType;
  var ##st#2: Box;
  var ##e#2: DatatypeType;
  var ##st'#0: Box;
  var ##v#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st#0, e#0);
    assume {:id "id4"} Induction.__default.P(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id5"} !Induction.__default.P__Fail(st#0, e#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(Induction.__default.P__Step(st#0, e#0), 
          Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V()));
        assume $Is(res#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V()));
        ##st#2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
        ##e#2 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
        assume _System.Tuple2.___hMake2_q(res#0);
        ##st'#0 := _System.Tuple2._0(res#0);
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
        assume _System.Tuple2.___hMake2_q(res#0);
        ##v#0 := _System.Tuple2._1(res#0);
        // assume allocatedness for argument to function
        assume $IsAllocBox(##v#0, Tclass.Induction.V(), $Heap);
        assume Induction.__default.P__Succ#canCall(st#0, e#0, _System.Tuple2._0(res#0), _System.Tuple2._1(res#0));
        assume {:id "id6"} Induction.__default.P__Succ(st#0, e#0, _System.Tuple2._0(res#0), _System.Tuple2._1(res#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for Induction._default.Pes_Step
function Induction.__default.Pes__Step(st#0: Box, es#0: Seq) : DatatypeType
uses {
// consequence axiom for Induction.__default.Pes__Step
axiom 1 <= $FunctionContextHeight
   ==> (forall st#0: Box, es#0: Seq :: 
    { Induction.__default.Pes__Step(st#0, es#0) } 
    Induction.__default.Pes__Step#canCall(st#0, es#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(st#0, Tclass.Induction.S())
           && $Is(es#0, TSeq(Tclass.AST.Expr()))
           && 
          Induction.__default.Pes(st#0, es#0)
           && !Induction.__default.Pes__Fail(st#0, es#0))
       ==> Induction.__default.Pes__Succ(st#0, 
          es#0, 
          _System.Tuple2._0(Induction.__default.Pes__Step(st#0, es#0)), 
          _System.Tuple2._1(Induction.__default.Pes__Step(st#0, es#0)))
         && $Is(Induction.__default.Pes__Step(st#0, es#0), 
          Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.VS())));
}

function Induction.__default.Pes__Step#canCall(st#0: Box, es#0: Seq) : bool;

function Induction.__default.Pes__Step#requires(Box, Seq) : bool;

// #requires axiom for Induction.__default.Pes__Step
axiom (forall st#0: Box, es#0: Seq :: 
  { Induction.__default.Pes__Step#requires(st#0, es#0) } 
  $IsBox(st#0, Tclass.Induction.S()) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> Induction.__default.Pes__Step#requires(st#0, es#0)
       == (Induction.__default.Pes(st#0, es#0)
         && !Induction.__default.Pes__Fail(st#0, es#0)));

procedure {:verboseName "Induction.Pes_Step (well-formedness)"} CheckWellformed$$Induction.__default.Pes__Step(st#0: Box where $IsBox(st#0, Tclass.Induction.S()), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())))
   returns (res#0: DatatypeType);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id7"} Induction.__default.Pes__Succ(st#0, es#0, _System.Tuple2._0(res#0), _System.Tuple2._1(res#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.Pes_Step (well-formedness)"} CheckWellformed$$Induction.__default.Pes__Step(st#0: Box, es#0: Seq) returns (res#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##es#0: Seq;
  var ##st#1: Box;
  var ##es#1: Seq;
  var ##st#2: Box;
  var ##es#2: Seq;
  var ##st'#0: Box;
  var ##vs#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##es#0 := es#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes#canCall(st#0, es#0);
    assume {:id "id8"} Induction.__default.Pes(st#0, es#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#1 := es#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#1, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes__Fail#canCall(st#0, es#0);
    assume {:id "id9"} !Induction.__default.Pes__Fail(st#0, es#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(Induction.__default.Pes__Step(st#0, es#0), 
          Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.VS()));
        assume $Is(res#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.VS()));
        ##st#2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
        ##es#2 := es#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#2, TSeq(Tclass.AST.Expr()), $Heap);
        assume _System.Tuple2.___hMake2_q(res#0);
        ##st'#0 := _System.Tuple2._0(res#0);
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
        assume _System.Tuple2.___hMake2_q(res#0);
        ##vs#0 := _System.Tuple2._1(res#0);
        // assume allocatedness for argument to function
        assume $IsAllocBox(##vs#0, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.Pes__Succ#canCall(st#0, es#0, _System.Tuple2._0(res#0), _System.Tuple2._1(res#0));
        assume {:id "id10"} Induction.__default.Pes__Succ(st#0, es#0, _System.Tuple2._0(res#0), _System.Tuple2._1(res#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



procedure {:verboseName "Induction.P_Fail_Sound (well-formedness)"} CheckWellFormed$$Induction.__default.P__Fail__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.P_Fail_Sound (call)"} Call$$Induction.__default.P__Fail__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id13"} Induction.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id14"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.P_Succ_Sound (well-formedness)"} CheckWellFormed$$Induction.__default.P__Succ__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.Induction.S())
         && $IsAllocBox(st'#0, Tclass.Induction.S(), $Heap), 
    v#0: Box
       where $IsBox(v#0, Tclass.Induction.V())
         && $IsAllocBox(v#0, Tclass.Induction.V(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.P_Succ_Sound (call)"} Call$$Induction.__default.P__Succ__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.Induction.S())
         && $IsAllocBox(st'#0, Tclass.Induction.S(), $Heap), 
    v#0: Box
       where $IsBox(v#0, Tclass.Induction.V())
         && $IsAllocBox(v#0, Tclass.Induction.V(), $Heap));
  // user-defined preconditions
  requires {:id "id17"} Induction.__default.P__Succ(st#0, e#0, st'#0, v#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id18"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.Pes_Fail_Sound (well-formedness)"} CheckWellFormed$$Induction.__default.Pes__Fail__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.Pes_Fail_Sound (call)"} Call$$Induction.__default.Pes__Fail__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  // user-defined preconditions
  requires {:id "id21"} Induction.__default.Pes__Fail(st#0, es#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id22"} Induction.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.Pes_Succ_Sound (well-formedness)"} CheckWellFormed$$Induction.__default.Pes__Succ__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.Induction.S())
         && $IsAllocBox(st'#0, Tclass.Induction.S(), $Heap), 
    vs#0: Box
       where $IsBox(vs#0, Tclass.Induction.VS())
         && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.Pes_Succ_Sound (call)"} Call$$Induction.__default.Pes__Succ__Sound(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.Induction.S())
         && $IsAllocBox(st'#0, Tclass.Induction.S(), $Heap), 
    vs#0: Box
       where $IsBox(vs#0, Tclass.Induction.VS())
         && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap));
  // user-defined preconditions
  requires {:id "id25"} Induction.__default.Pes__Succ(st#0, es#0, st'#0, vs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id26"} Induction.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductVar (well-formedness)"} CheckWellFormed$$Induction.__default.InductVar(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.InductVar (call)"} Call$$Induction.__default.InductVar(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id30"} AST.Expr__Raw.Var_q(e#0);
  requires {:id "id31"} !Induction.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id32"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductLiteral (well-formedness)"} CheckWellFormed$$Induction.__default.InductLiteral(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.InductLiteral (call)"} Call$$Induction.__default.InductLiteral(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id36"} AST.Expr__Raw.Literal_q(e#0);
  requires {:id "id37"} !Induction.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id38"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductIf_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductIf__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    cond#0: DatatypeType
       where $Is(cond#0, Tclass.AST.Expr())
         && $IsAlloc(cond#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(cond#0), 
    thn#0: DatatypeType
       where $Is(thn#0, Tclass.AST.Expr())
         && $IsAlloc(thn#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(thn#0), 
    els#0: DatatypeType
       where $Is(els#0, Tclass.AST.Expr())
         && $IsAlloc(els#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(els#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductIf_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductIf__Fail(st#0: Box, 
    e#0: DatatypeType, 
    cond#0: DatatypeType, 
    thn#0: DatatypeType, 
    els#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##e#1: DatatypeType;
  var ##st#2: Box;
  var ##e#2: DatatypeType;


    // AddMethodImpl: InductIf_Fail, CheckWellFormed$$Induction.__default.InductIf__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id39"} AST.Expr__Raw.If_q(e#0);
    assert {:id "id40"} AST.Expr__Raw.If_q(e#0);
    assume {:id "id41"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
    assert {:id "id42"} AST.Expr__Raw.If_q(e#0);
    assume {:id "id43"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
    assert {:id "id44"} AST.Expr__Raw.If_q(e#0);
    assume {:id "id45"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id46"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##e#1 := cond#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st#0, cond#0);
    assume {:id "id47"} Induction.__default.P(st#0, cond#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#2 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##e#2 := cond#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, cond#0);
    assume {:id "id48"} !Induction.__default.P__Fail(st#0, cond#0);
}



procedure {:verboseName "Induction.InductIf_Fail (call)"} Call$$Induction.__default.InductIf__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    cond#0: DatatypeType
       where $Is(cond#0, Tclass.AST.Expr())
         && $IsAlloc(cond#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(cond#0), 
    thn#0: DatatypeType
       where $Is(thn#0, Tclass.AST.Expr())
         && $IsAlloc(thn#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(thn#0), 
    els#0: DatatypeType
       where $Is(els#0, Tclass.AST.Expr())
         && $IsAlloc(els#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(els#0));
  // user-defined preconditions
  requires {:id "id49"} AST.Expr__Raw.If_q(e#0);
  requires {:id "id50"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
  requires {:id "id51"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
  requires {:id "id52"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
  requires {:id "id53"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id54"} Induction.__default.P(st#0, cond#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P__Fail#canCall(st#0, cond#0);
  ensures {:id "id55"} !Induction.__default.P__Fail(st#0, cond#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductIf_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductIf__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    cond#0: DatatypeType
       where $Is(cond#0, Tclass.AST.Expr())
         && $IsAlloc(cond#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(cond#0), 
    thn#0: DatatypeType
       where $Is(thn#0, Tclass.AST.Expr())
         && $IsAlloc(thn#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(thn#0), 
    els#0: DatatypeType
       where $Is(els#0, Tclass.AST.Expr())
         && $IsAlloc(els#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(els#0), 
    st_cond#0: Box
       where $IsBox(st_cond#0, Tclass.Induction.S())
         && $IsAllocBox(st_cond#0, Tclass.Induction.S(), $Heap), 
    condv#0: Box
       where $IsBox(condv#0, Tclass.Induction.V())
         && $IsAllocBox(condv#0, Tclass.Induction.V(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductIf_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductIf__Succ(st#0: Box, 
    e#0: DatatypeType, 
    cond#0: DatatypeType, 
    thn#0: DatatypeType, 
    els#0: DatatypeType, 
    st_cond#0: Box, 
    condv#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##e#1: DatatypeType;
  var ##st'#0: Box;
  var ##v#0: Box;
  var ##st#2: Box;
  var ##e#2: DatatypeType;
  var ##st#3: Box;
  var ##e#3: DatatypeType;
  var ##st#4: Box;
  var ##e#4: DatatypeType;


    // AddMethodImpl: InductIf_Succ, CheckWellFormed$$Induction.__default.InductIf__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id56"} AST.Expr__Raw.If_q(e#0);
    assert {:id "id57"} AST.Expr__Raw.If_q(e#0);
    assume {:id "id58"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
    assert {:id "id59"} AST.Expr__Raw.If_q(e#0);
    assume {:id "id60"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
    assert {:id "id61"} AST.Expr__Raw.If_q(e#0);
    assume {:id "id62"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id63"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##e#1 := cond#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    ##st'#0 := st_cond#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
    ##v#0 := condv#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##v#0, Tclass.Induction.V(), $Heap);
    assume Induction.__default.P__Succ#canCall(st#0, cond#0, st_cond#0, condv#0);
    assume {:id "id64"} Induction.__default.P__Succ(st#0, cond#0, st_cond#0, condv#0);
    ##st#2 := st_cond#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##e#2 := thn#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st_cond#0, thn#0);
    assume {:id "id65"} Induction.__default.P(st_cond#0, thn#0);
    ##st#3 := st_cond#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.Induction.S(), $Heap);
    ##e#3 := els#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#3, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st_cond#0, els#0);
    assume {:id "id66"} Induction.__default.P(st_cond#0, els#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#4, Tclass.Induction.S(), $Heap);
    ##e#4 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#4, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st#0, e#0);
    assume {:id "id67"} Induction.__default.P(st#0, e#0);
}



procedure {:verboseName "Induction.InductIf_Succ (call)"} Call$$Induction.__default.InductIf__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    cond#0: DatatypeType
       where $Is(cond#0, Tclass.AST.Expr())
         && $IsAlloc(cond#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(cond#0), 
    thn#0: DatatypeType
       where $Is(thn#0, Tclass.AST.Expr())
         && $IsAlloc(thn#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(thn#0), 
    els#0: DatatypeType
       where $Is(els#0, Tclass.AST.Expr())
         && $IsAlloc(els#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(els#0), 
    st_cond#0: Box
       where $IsBox(st_cond#0, Tclass.Induction.S())
         && $IsAllocBox(st_cond#0, Tclass.Induction.S(), $Heap), 
    condv#0: Box
       where $IsBox(condv#0, Tclass.Induction.V())
         && $IsAllocBox(condv#0, Tclass.Induction.V(), $Heap));
  // user-defined preconditions
  requires {:id "id68"} AST.Expr__Raw.If_q(e#0);
  requires {:id "id69"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
  requires {:id "id70"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
  requires {:id "id71"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
  requires {:id "id72"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id73"} Induction.__default.P__Succ(st#0, cond#0, st_cond#0, condv#0);
  requires {:id "id74"} Induction.__default.P(st_cond#0, thn#0);
  requires {:id "id75"} Induction.__default.P(st_cond#0, els#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id76"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



function Tclass.AST.BinOp() : Ty
uses {
// Tclass.AST.BinOp Tag
axiom Tag(Tclass.AST.BinOp()) == Tagclass.AST.BinOp
   && TagFamily(Tclass.AST.BinOp()) == tytagFamily$BinOp;
}

const unique Tagclass.AST.BinOp: TyTag;

// Box/unbox axiom for Tclass.AST.BinOp
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AST.BinOp()) } 
  $IsBox(bx, Tclass.AST.BinOp())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.AST.BinOp()));

procedure {:verboseName "Induction.InductOp_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductOp__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    op#0: DatatypeType
       where $Is(op#0, Tclass.AST.BinOp())
         && $IsAlloc(op#0, Tclass.AST.BinOp(), $Heap)
         && $IsA#AST.BinOp(op#0), 
    e1#0: DatatypeType
       where $Is(e1#0, Tclass.AST.Expr())
         && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass.AST.Expr())
         && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e2#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductOp_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductOp__Fail(st#0: Box, 
    e#0: DatatypeType, 
    op#0: DatatypeType, 
    e1#0: DatatypeType, 
    e2#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##e#1: DatatypeType;
  var st1#0: Box;
  var v1#0: Box;
  var ##st#2: Box;
  var ##e#2: DatatypeType;
  var ##st'#0: Box;
  var ##v#0: Box;
  var ##st#3: Box;
  var ##e#3: DatatypeType;


    // AddMethodImpl: InductOp_Fail, CheckWellFormed$$Induction.__default.InductOp__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id77"} AST.Expr__Raw.Op_q(e#0);
    assert {:id "id78"} AST.Expr__Raw.Op_q(e#0);
    assume {:id "id79"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
    assert {:id "id80"} AST.Expr__Raw.Op_q(e#0);
    assume {:id "id81"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
    assert {:id "id82"} AST.Expr__Raw.Op_q(e#0);
    assume {:id "id83"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id84"} !Induction.__default.P__Fail(st#0, e#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##e#1 := e1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e1#0);
    assume {:id "id85"} !Induction.__default.P__Fail(st#0, e1#0);
    havoc st1#0;
    havoc v1#0;
    assume $IsBox(st1#0, Tclass.Induction.S())
       && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap)
       && 
      $IsBox(v1#0, Tclass.Induction.V())
       && $IsAllocBox(v1#0, Tclass.Induction.V(), $Heap);
    if (*)
    {
        ##st#2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
        ##e#2 := e1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
        ##st'#0 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
        ##v#0 := v1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##v#0, Tclass.Induction.V(), $Heap);
        assume Induction.__default.P__Succ#canCall(st#0, e1#0, st1#0, v1#0);
        assume {:id "id86"} Induction.__default.P__Succ(st#0, e1#0, st1#0, v1#0);
        ##st#3 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3, Tclass.Induction.S(), $Heap);
        ##e#3 := e2#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#3, Tclass.AST.Expr(), $Heap);
        assume Induction.__default.P__Fail#canCall(st1#0, e2#0);
        assume {:id "id87"} !Induction.__default.P__Fail(st1#0, e2#0);
    }
    else
    {
        assume {:id "id88"} Induction.__default.P__Succ(st#0, e1#0, st1#0, v1#0)
           ==> !Induction.__default.P__Fail(st1#0, e2#0);
    }

    assume {:id "id89"} (forall st1#1: Box, v1#1: Box :: 
      { Induction.__default.P__Succ(st#0, e1#0, st1#1, v1#1) } 
      $IsBox(st1#1, Tclass.Induction.S())
           && $IsBox(v1#1, Tclass.Induction.V())
           && Induction.__default.P__Succ(st#0, e1#0, st1#1, v1#1)
         ==> !Induction.__default.P__Fail(st1#1, e2#0));
}



procedure {:verboseName "Induction.InductOp_Fail (call)"} Call$$Induction.__default.InductOp__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    op#0: DatatypeType
       where $Is(op#0, Tclass.AST.BinOp())
         && $IsAlloc(op#0, Tclass.AST.BinOp(), $Heap)
         && $IsA#AST.BinOp(op#0), 
    e1#0: DatatypeType
       where $Is(e1#0, Tclass.AST.Expr())
         && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass.AST.Expr())
         && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e2#0));
  // user-defined preconditions
  requires {:id "id90"} AST.Expr__Raw.Op_q(e#0);
  requires {:id "id91"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
  requires {:id "id92"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
  requires {:id "id93"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
  requires {:id "id94"} !Induction.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P__Fail#canCall(st#0, e1#0);
  ensures {:id "id95"} !Induction.__default.P__Fail(st#0, e1#0);
  free ensures (forall st1#1: Box, v1#1: Box :: 
    { Induction.__default.P__Succ(st#0, e1#0, st1#1, v1#1) } 
    $IsBox(st1#1, Tclass.Induction.S()) && $IsBox(v1#1, Tclass.Induction.V())
       ==> Induction.__default.P__Succ#canCall(st#0, e1#0, st1#1, v1#1)
         && (Induction.__default.P__Succ(st#0, e1#0, st1#1, v1#1)
           ==> Induction.__default.P__Fail#canCall(st1#1, e2#0)));
  ensures {:id "id96"} (forall st1#1: Box, v1#1: Box :: 
    { Induction.__default.P__Succ(st#0, e1#0, st1#1, v1#1) } 
    $IsBox(st1#1, Tclass.Induction.S())
         && $IsBox(v1#1, Tclass.Induction.V())
         && Induction.__default.P__Succ(st#0, e1#0, st1#1, v1#1)
       ==> !Induction.__default.P__Fail(st1#1, e2#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductOp_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductOp__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    op#0: DatatypeType
       where $Is(op#0, Tclass.AST.BinOp())
         && $IsAlloc(op#0, Tclass.AST.BinOp(), $Heap)
         && $IsA#AST.BinOp(op#0), 
    e1#0: DatatypeType
       where $Is(e1#0, Tclass.AST.Expr())
         && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass.AST.Expr())
         && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e2#0), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    v1#0: Box
       where $IsBox(v1#0, Tclass.Induction.V())
         && $IsAllocBox(v1#0, Tclass.Induction.V(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductOp_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductOp__Succ(st#0: Box, 
    e#0: DatatypeType, 
    op#0: DatatypeType, 
    e1#0: DatatypeType, 
    e2#0: DatatypeType, 
    st1#0: Box, 
    v1#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##e#1: DatatypeType;
  var ##st'#0: Box;
  var ##v#0: Box;
  var ##st#2: Box;
  var ##e#2: DatatypeType;
  var ##st#3: Box;
  var ##e#3: DatatypeType;


    // AddMethodImpl: InductOp_Succ, CheckWellFormed$$Induction.__default.InductOp__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id97"} AST.Expr__Raw.Op_q(e#0);
    assert {:id "id98"} AST.Expr__Raw.Op_q(e#0);
    assume {:id "id99"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
    assert {:id "id100"} AST.Expr__Raw.Op_q(e#0);
    assume {:id "id101"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
    assert {:id "id102"} AST.Expr__Raw.Op_q(e#0);
    assume {:id "id103"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id104"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##e#1 := e1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    ##st'#0 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
    ##v#0 := v1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##v#0, Tclass.Induction.V(), $Heap);
    assume Induction.__default.P__Succ#canCall(st#0, e1#0, st1#0, v1#0);
    assume {:id "id105"} Induction.__default.P__Succ(st#0, e1#0, st1#0, v1#0);
    ##st#2 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##e#2 := e2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st1#0, e2#0);
    assume {:id "id106"} Induction.__default.P(st1#0, e2#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#3 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.Induction.S(), $Heap);
    ##e#3 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#3, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st#0, e#0);
    assume {:id "id107"} Induction.__default.P(st#0, e#0);
}



procedure {:verboseName "Induction.InductOp_Succ (call)"} Call$$Induction.__default.InductOp__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    op#0: DatatypeType
       where $Is(op#0, Tclass.AST.BinOp())
         && $IsAlloc(op#0, Tclass.AST.BinOp(), $Heap)
         && $IsA#AST.BinOp(op#0), 
    e1#0: DatatypeType
       where $Is(e1#0, Tclass.AST.Expr())
         && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass.AST.Expr())
         && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e2#0), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    v1#0: Box
       where $IsBox(v1#0, Tclass.Induction.V())
         && $IsAllocBox(v1#0, Tclass.Induction.V(), $Heap));
  // user-defined preconditions
  requires {:id "id108"} AST.Expr__Raw.Op_q(e#0);
  requires {:id "id109"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
  requires {:id "id110"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
  requires {:id "id111"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
  requires {:id "id112"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id113"} Induction.__default.P__Succ(st#0, e1#0, st1#0, v1#0);
  requires {:id "id114"} Induction.__default.P(st1#0, e2#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id115"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductSeq_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductSeq__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductSeq_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductSeq__Fail(st#0: Box, e#0: DatatypeType, es#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##es#0: Seq;


    // AddMethodImpl: InductSeq_Fail, CheckWellFormed$$Induction.__default.InductSeq__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id116"} AST.Expr__Raw.Seq_q(e#0);
    assert {:id "id117"} AST.Expr__Raw.Seq_q(e#0);
    assume {:id "id118"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id119"} !Induction.__default.P__Fail(st#0, e#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#0 := es#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes__Fail#canCall(st#0, es#0);
    assume {:id "id120"} !Induction.__default.Pes__Fail(st#0, es#0);
}



procedure {:verboseName "Induction.InductSeq_Fail (call)"} Call$$Induction.__default.InductSeq__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  // user-defined preconditions
  requires {:id "id121"} AST.Expr__Raw.Seq_q(e#0);
  requires {:id "id122"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
  requires {:id "id123"} !Induction.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes__Fail#canCall(st#0, es#0);
  ensures {:id "id124"} !Induction.__default.Pes__Fail(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductSeq_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductSeq__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    vs#0: Box
       where $IsBox(vs#0, Tclass.Induction.VS())
         && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductSeq_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductSeq__Succ(st#0: Box, e#0: DatatypeType, es#0: Seq, st1#0: Box, vs#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##es#0: Seq;
  var ##st'#0: Box;
  var ##vs#0: Box;
  var ##st#2: Box;
  var ##e#1: DatatypeType;


    // AddMethodImpl: InductSeq_Succ, CheckWellFormed$$Induction.__default.InductSeq__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id125"} AST.Expr__Raw.Seq_q(e#0);
    assert {:id "id126"} AST.Expr__Raw.Seq_q(e#0);
    assume {:id "id127"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id128"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#0 := es#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    ##st'#0 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
    ##vs#0 := vs#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##vs#0, Tclass.Induction.VS(), $Heap);
    assume Induction.__default.Pes__Succ#canCall(st#0, es#0, st1#0, vs#0);
    assume {:id "id129"} Induction.__default.Pes__Succ(st#0, es#0, st1#0, vs#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#2 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st#0, e#0);
    assume {:id "id130"} Induction.__default.P(st#0, e#0);
}



procedure {:verboseName "Induction.InductSeq_Succ (call)"} Call$$Induction.__default.InductSeq__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    vs#0: Box
       where $IsBox(vs#0, Tclass.Induction.VS())
         && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap));
  // user-defined preconditions
  requires {:id "id131"} AST.Expr__Raw.Seq_q(e#0);
  requires {:id "id132"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
  requires {:id "id133"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id134"} Induction.__default.Pes__Succ(st#0, es#0, st1#0, vs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id135"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductAssign_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductAssign__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductAssign_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductAssign__Fail(st#0: Box, e#0: DatatypeType, avars#0: Seq, avals#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##es#0: Seq;
  var ##st#2: Box;
  var ##es#1: Seq;
  var st1#0: Box;
  var vs#0: Box;
  var ##st#3: Box;
  var ##es#2: Seq;
  var ##st'#0: Box;
  var ##vs#0: Box;
  var ##st#4: Box;
  var ##vars#0: Seq;
  var ##argvs#0: Box;


    // AddMethodImpl: InductAssign_Fail, CheckWellFormed$$Induction.__default.InductAssign__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id136"} AST.Expr__Raw.Assign_q(e#0);
    assert {:id "id137"} AST.Expr__Raw.Assign_q(e#0);
    assume {:id "id138"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
    assert {:id "id139"} AST.Expr__Raw.Assign_q(e#0);
    assume {:id "id140"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id141"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#0 := avals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes#canCall(st#0, avals#0);
    assume {:id "id142"} Induction.__default.Pes(st#0, avals#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#2 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##es#1 := avals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#1, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes__Fail#canCall(st#0, avals#0);
    assume {:id "id143"} !Induction.__default.Pes__Fail(st#0, avals#0);
    havoc st1#0;
    havoc vs#0;
    assume $IsBox(st1#0, Tclass.Induction.S())
       && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap)
       && 
      $IsBox(vs#0, Tclass.Induction.VS())
       && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap);
    if (*)
    {
        ##st#3 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3, Tclass.Induction.S(), $Heap);
        ##es#2 := avals#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#2, TSeq(Tclass.AST.Expr()), $Heap);
        ##st'#0 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
        ##vs#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##vs#0, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.Pes__Succ#canCall(st#0, avals#0, st1#0, vs#0);
        assume {:id "id144"} Induction.__default.Pes__Succ(st#0, avals#0, st1#0, vs#0);
        ##st#4 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4, Tclass.Induction.S(), $Heap);
        ##vars#0 := avars#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#0, TSeq(TSeq(TChar)), $Heap);
        ##argvs#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##argvs#0, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.UpdateState__Pre#canCall(st1#0, avars#0, vs#0);
        assume {:id "id145"} Induction.__default.UpdateState__Pre(st1#0, avars#0, vs#0);
    }
    else
    {
        assume {:id "id146"} Induction.__default.Pes__Succ(st#0, avals#0, st1#0, vs#0)
           ==> Induction.__default.UpdateState__Pre(st1#0, avars#0, vs#0);
    }

    assume {:id "id147"} (forall st1#1: Box, vs#1: Box :: 
      { Induction.__default.UpdateState__Pre(st1#1, avars#0, vs#1) } 
        { Induction.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1) } 
      $IsBox(st1#1, Tclass.Induction.S())
           && $IsBox(vs#1, Tclass.Induction.VS())
           && Induction.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1)
         ==> Induction.__default.UpdateState__Pre(st1#1, avars#0, vs#1));
}



procedure {:verboseName "Induction.InductAssign_Fail (call)"} Call$$Induction.__default.InductAssign__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap));
  // user-defined preconditions
  requires {:id "id148"} AST.Expr__Raw.Assign_q(e#0);
  requires {:id "id149"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
  requires {:id "id150"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
  requires {:id "id151"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id152"} Induction.__default.Pes(st#0, avals#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes__Fail#canCall(st#0, avals#0);
  ensures {:id "id153"} !Induction.__default.Pes__Fail(st#0, avals#0);
  free ensures (forall st1#1: Box, vs#1: Box :: 
    { Induction.__default.UpdateState__Pre(st1#1, avars#0, vs#1) } 
      { Induction.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1) } 
    $IsBox(st1#1, Tclass.Induction.S()) && $IsBox(vs#1, Tclass.Induction.VS())
       ==> Induction.__default.Pes__Succ#canCall(st#0, avals#0, st1#1, vs#1)
         && (Induction.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1)
           ==> Induction.__default.UpdateState__Pre#canCall(st1#1, avars#0, vs#1)));
  ensures {:id "id154"} (forall st1#1: Box, vs#1: Box :: 
    { Induction.__default.UpdateState__Pre(st1#1, avars#0, vs#1) } 
      { Induction.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1) } 
    $IsBox(st1#1, Tclass.Induction.S())
         && $IsBox(vs#1, Tclass.Induction.VS())
         && Induction.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1)
       ==> Induction.__default.UpdateState__Pre(st1#1, avars#0, vs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductAssign_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductAssign__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    vs#0: Box
       where $IsBox(vs#0, Tclass.Induction.VS())
         && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap), 
    st2#0: Box
       where $IsBox(st2#0, Tclass.Induction.S())
         && $IsAllocBox(st2#0, Tclass.Induction.S(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductAssign_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductAssign__Succ(st#0: Box, 
    e#0: DatatypeType, 
    avars#0: Seq, 
    avals#0: Seq, 
    st1#0: Box, 
    vs#0: Box, 
    st2#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##es#0: Seq;
  var ##st'#0: Box;
  var ##vs#0: Box;
  var ##st#2: Box;
  var ##vars#0: Seq;
  var ##argvs#0: Box;
  var ##st#3: Box;
  var ##vars#1: Seq;
  var ##vals#0: Box;
  var ##st#4: Box;
  var ##e#1: DatatypeType;
  var ##st'#1: Box;
  var ##v#0: Box;
  var ##st#5: Box;
  var ##e#2: DatatypeType;


    // AddMethodImpl: InductAssign_Succ, CheckWellFormed$$Induction.__default.InductAssign__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id155"} AST.Expr__Raw.Assign_q(e#0);
    assert {:id "id156"} AST.Expr__Raw.Assign_q(e#0);
    assume {:id "id157"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
    assert {:id "id158"} AST.Expr__Raw.Assign_q(e#0);
    assume {:id "id159"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id160"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#0 := avals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    ##st'#0 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
    ##vs#0 := vs#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##vs#0, Tclass.Induction.VS(), $Heap);
    assume Induction.__default.Pes__Succ#canCall(st#0, avals#0, st1#0, vs#0);
    assume {:id "id161"} Induction.__default.Pes__Succ(st#0, avals#0, st1#0, vs#0);
    ##st#2 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##vars#0 := avars#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##vars#0, TSeq(TSeq(TChar)), $Heap);
    ##argvs#0 := vs#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##argvs#0, Tclass.Induction.VS(), $Heap);
    assume Induction.__default.UpdateState__Pre#canCall(st1#0, avars#0, vs#0);
    assume {:id "id162"} Induction.__default.UpdateState__Pre(st1#0, avars#0, vs#0);
    ##st#3 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.Induction.S(), $Heap);
    ##vars#1 := avars#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##vars#1, TSeq(TSeq(TChar)), $Heap);
    ##vals#0 := vs#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##vals#0, Tclass.Induction.VS(), $Heap);
    assert {:id "id163"} {:subsumption 0} Induction.__default.UpdateState__Pre(##st#3, ##vars#1, ##vals#0);
    assume Induction.__default.UpdateState__Pre(##st#3, ##vars#1, ##vals#0);
    assume Induction.__default.AssignState#canCall(st1#0, avars#0, vs#0);
    assume {:id "id164"} st2#0 == Induction.__default.AssignState(st1#0, avars#0, vs#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#4, Tclass.Induction.S(), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    ##st'#1 := st2#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#1, Tclass.Induction.S(), $Heap);
    ##v#0 := Induction.__default.Zero();
    // assume allocatedness for argument to function
    assume $IsAllocBox(##v#0, Tclass.Induction.V(), $Heap);
    assume Induction.__default.P__Succ#canCall(st#0, e#0, st2#0, Induction.__default.Zero());
    assume {:id "id165"} Induction.__default.P__Succ(st#0, e#0, st2#0, Induction.__default.Zero());
    ##st#5 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#5, Tclass.Induction.S(), $Heap);
    ##e#2 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P#canCall(st#0, e#0);
    assume {:id "id166"} Induction.__default.P(st#0, e#0);
}



procedure {:verboseName "Induction.InductAssign_Succ (call)"} Call$$Induction.__default.InductAssign__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    vs#0: Box
       where $IsBox(vs#0, Tclass.Induction.VS())
         && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap), 
    st2#0: Box
       where $IsBox(st2#0, Tclass.Induction.S())
         && $IsAllocBox(st2#0, Tclass.Induction.S(), $Heap));
  // user-defined preconditions
  requires {:id "id167"} AST.Expr__Raw.Assign_q(e#0);
  requires {:id "id168"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
  requires {:id "id169"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
  requires {:id "id170"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id171"} Induction.__default.Pes__Succ(st#0, avals#0, st1#0, vs#0);
  requires {:id "id172"} Induction.__default.UpdateState__Pre(st1#0, avars#0, vs#0);
  requires {:id "id173"} st2#0 == Induction.__default.AssignState(st1#0, avars#0, vs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P__Succ#canCall(st#0, e#0, st2#0, Induction.__default.Zero());
  ensures {:id "id174"} Induction.__default.P__Succ(st#0, e#0, st2#0, Induction.__default.Zero());
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id175"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductBind_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductBind__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    bvars#0: Seq
       where $Is(bvars#0, TSeq(TSeq(TChar))) && $IsAlloc(bvars#0, TSeq(TSeq(TChar)), $Heap), 
    bvals#0: Seq
       where $Is(bvals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(bvals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    body#0: DatatypeType
       where $Is(body#0, Tclass.AST.Expr())
         && $IsAlloc(body#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(body#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductBind_Fail (well-formedness)"} CheckWellFormed$$Induction.__default.InductBind__Fail(st#0: Box, e#0: DatatypeType, bvars#0: Seq, bvals#0: Seq, body#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##es#0: Seq;
  var ##st#2: Box;
  var ##es#1: Seq;
  var st1#0: Box;
  var vs#0: Box;
  var ##st#3: Box;
  var ##es#2: Seq;
  var ##st'#0: Box;
  var ##vs#0: Box;
  var ##st#4: Box;
  var ##vars#0: Seq;
  var ##argvs#0: Box;
  var ##st#5: Box;
  var ##st#6: Box;
  var ##vars#1: Seq;
  var ##vals#0: Box;
  var ##e#1: DatatypeType;


    // AddMethodImpl: InductBind_Fail, CheckWellFormed$$Induction.__default.InductBind__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id176"} AST.Expr__Raw.Bind_q(e#0);
    assert {:id "id177"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id178"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
    assert {:id "id179"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id180"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
    assert {:id "id181"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id182"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id183"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#0 := bvals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes#canCall(st#0, bvals#0);
    assume {:id "id184"} Induction.__default.Pes(st#0, bvals#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#2 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##es#1 := bvals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#1, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes__Fail#canCall(st#0, bvals#0);
    assume {:id "id185"} !Induction.__default.Pes__Fail(st#0, bvals#0);
    havoc st1#0;
    havoc vs#0;
    assume $IsBox(st1#0, Tclass.Induction.S())
       && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap)
       && 
      $IsBox(vs#0, Tclass.Induction.VS())
       && $IsAllocBox(vs#0, Tclass.Induction.VS(), $Heap);
    if (*)
    {
        ##st#3 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3, Tclass.Induction.S(), $Heap);
        ##es#2 := bvals#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#2, TSeq(Tclass.AST.Expr()), $Heap);
        ##st'#0 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
        ##vs#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##vs#0, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.Pes__Succ#canCall(st#0, bvals#0, st1#0, vs#0);
        assume {:id "id186"} Induction.__default.Pes__Succ(st#0, bvals#0, st1#0, vs#0);
        ##st#4 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4, Tclass.Induction.S(), $Heap);
        ##vars#0 := bvars#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#0, TSeq(TSeq(TChar)), $Heap);
        ##argvs#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##argvs#0, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.UpdateState__Pre#canCall(st1#0, bvars#0, vs#0);
        assume {:id "id187"} Induction.__default.UpdateState__Pre(st1#0, bvars#0, vs#0);
        ##st#6 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#6, Tclass.Induction.S(), $Heap);
        ##vars#1 := bvars#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#1, TSeq(TSeq(TChar)), $Heap);
        ##vals#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##vals#0, Tclass.Induction.VS(), $Heap);
        assert {:id "id188"} {:subsumption 0} Induction.__default.UpdateState__Pre(##st#6, ##vars#1, ##vals#0);
        assume Induction.__default.UpdateState__Pre(##st#6, ##vars#1, ##vals#0);
        assume Induction.__default.BindStartScope#canCall(st1#0, bvars#0, vs#0);
        ##st#5 := Induction.__default.BindStartScope(st1#0, bvars#0, vs#0);
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#5, Tclass.Induction.S(), $Heap);
        ##e#1 := body#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
        assume Induction.__default.P__Fail#canCall(Induction.__default.BindStartScope(st1#0, bvars#0, vs#0), body#0);
        assume {:id "id189"} !Induction.__default.P__Fail(Induction.__default.BindStartScope(st1#0, bvars#0, vs#0), body#0);
    }
    else
    {
        assume {:id "id190"} Induction.__default.Pes__Succ(st#0, bvals#0, st1#0, vs#0)
           ==> Induction.__default.UpdateState__Pre(st1#0, bvars#0, vs#0)
             && !Induction.__default.P__Fail(Induction.__default.BindStartScope(st1#0, bvars#0, vs#0), body#0);
    }

    assume {:id "id191"} (forall st1#1: Box, vs#1: Box :: 
      { Induction.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
        { Induction.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
        { Induction.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
      $IsBox(st1#1, Tclass.Induction.S())
           && $IsBox(vs#1, Tclass.Induction.VS())
           && Induction.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
         ==> Induction.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
           && !Induction.__default.P__Fail(Induction.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0));
}



procedure {:verboseName "Induction.InductBind_Fail (call)"} Call$$Induction.__default.InductBind__Fail(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    bvars#0: Seq
       where $Is(bvars#0, TSeq(TSeq(TChar))) && $IsAlloc(bvars#0, TSeq(TSeq(TChar)), $Heap), 
    bvals#0: Seq
       where $Is(bvals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(bvals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    body#0: DatatypeType
       where $Is(body#0, Tclass.AST.Expr())
         && $IsAlloc(body#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(body#0));
  // user-defined preconditions
  requires {:id "id192"} AST.Expr__Raw.Bind_q(e#0);
  requires {:id "id193"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
  requires {:id "id194"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
  requires {:id "id195"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
  requires {:id "id196"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id197"} Induction.__default.Pes(st#0, bvals#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes__Fail#canCall(st#0, bvals#0);
  ensures {:id "id198"} !Induction.__default.Pes__Fail(st#0, bvals#0);
  free ensures (forall st1#1: Box, vs#1: Box :: 
    { Induction.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
      { Induction.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
      { Induction.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
    $IsBox(st1#1, Tclass.Induction.S()) && $IsBox(vs#1, Tclass.Induction.VS())
       ==> Induction.__default.Pes__Succ#canCall(st#0, bvals#0, st1#1, vs#1)
         && (Induction.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
           ==> Induction.__default.UpdateState__Pre#canCall(st1#1, bvars#0, vs#1)
             && (Induction.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
               ==> Induction.__default.BindStartScope#canCall(st1#1, bvars#0, vs#1)
                 && Induction.__default.P__Fail#canCall(Induction.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0))));
  ensures {:id "id199"} (forall st1#1: Box, vs#1: Box :: 
    { Induction.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
      { Induction.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
      { Induction.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
    $IsBox(st1#1, Tclass.Induction.S())
         && $IsBox(vs#1, Tclass.Induction.VS())
         && Induction.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
       ==> Induction.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
         && !Induction.__default.P__Fail(Induction.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductBind_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductBind__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    bvars#0: Seq
       where $Is(bvars#0, TSeq(TSeq(TChar))) && $IsAlloc(bvars#0, TSeq(TSeq(TChar)), $Heap), 
    bvals#0: Seq
       where $Is(bvals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(bvals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    body#0: DatatypeType
       where $Is(body#0, Tclass.AST.Expr())
         && $IsAlloc(body#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(body#0), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    bvarvs#0: Box
       where $IsBox(bvarvs#0, Tclass.Induction.VS())
         && $IsAllocBox(bvarvs#0, Tclass.Induction.VS(), $Heap), 
    st2#0: Box
       where $IsBox(st2#0, Tclass.Induction.S())
         && $IsAllocBox(st2#0, Tclass.Induction.S(), $Heap), 
    st3#0: Box
       where $IsBox(st3#0, Tclass.Induction.S())
         && $IsAllocBox(st3#0, Tclass.Induction.S(), $Heap), 
    v#0: Box
       where $IsBox(v#0, Tclass.Induction.V())
         && $IsAllocBox(v#0, Tclass.Induction.V(), $Heap), 
    st4#0: Box
       where $IsBox(st4#0, Tclass.Induction.S())
         && $IsAllocBox(st4#0, Tclass.Induction.S(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.InductBind_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.InductBind__Succ(st#0: Box, 
    e#0: DatatypeType, 
    bvars#0: Seq, 
    bvals#0: Seq, 
    body#0: DatatypeType, 
    st1#0: Box, 
    bvarvs#0: Box, 
    st2#0: Box, 
    st3#0: Box, 
    v#0: Box, 
    st4#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##e#0: DatatypeType;
  var ##st#1: Box;
  var ##es#0: Seq;
  var ##st'#0: Box;
  var ##vs#0: Box;
  var ##st#2: Box;
  var ##vars#0: Seq;
  var ##argvs#0: Box;
  var ##st#3: Box;
  var ##vars#1: Seq;
  var ##vals#0: Box;
  var ##st#4: Box;
  var ##e#1: DatatypeType;
  var ##st'#1: Box;
  var ##v#0: Box;
  var ##st0#0: Box;
  var ##st#5: Box;
  var ##vars#2: Seq;
  var ##st#6: Box;
  var ##e#2: DatatypeType;
  var ##st'#2: Box;
  var ##v#1: Box;


    // AddMethodImpl: InductBind_Succ, CheckWellFormed$$Induction.__default.InductBind__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id200"} AST.Expr__Raw.Bind_q(e#0);
    assert {:id "id201"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id202"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
    assert {:id "id203"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id204"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
    assert {:id "id205"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id206"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.Induction.S(), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id207"} !Induction.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#0 := bvals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    ##st'#0 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.Induction.S(), $Heap);
    ##vs#0 := bvarvs#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##vs#0, Tclass.Induction.VS(), $Heap);
    assume Induction.__default.Pes__Succ#canCall(st#0, bvals#0, st1#0, bvarvs#0);
    assume {:id "id208"} Induction.__default.Pes__Succ(st#0, bvals#0, st1#0, bvarvs#0);
    ##st#2 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.Induction.S(), $Heap);
    ##vars#0 := bvars#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##vars#0, TSeq(TSeq(TChar)), $Heap);
    ##argvs#0 := bvarvs#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##argvs#0, Tclass.Induction.VS(), $Heap);
    assume Induction.__default.UpdateState__Pre#canCall(st1#0, bvars#0, bvarvs#0);
    assume {:id "id209"} Induction.__default.UpdateState__Pre(st1#0, bvars#0, bvarvs#0);
    ##st#3 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.Induction.S(), $Heap);
    ##vars#1 := bvars#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##vars#1, TSeq(TSeq(TChar)), $Heap);
    ##vals#0 := bvarvs#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##vals#0, Tclass.Induction.VS(), $Heap);
    assert {:id "id210"} {:subsumption 0} Induction.__default.UpdateState__Pre(##st#3, ##vars#1, ##vals#0);
    assume Induction.__default.UpdateState__Pre(##st#3, ##vars#1, ##vals#0);
    assume Induction.__default.BindStartScope#canCall(st1#0, bvars#0, bvarvs#0);
    assume {:id "id211"} st2#0 == Induction.__default.BindStartScope(st1#0, bvars#0, bvarvs#0);
    ##st#4 := st2#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#4, Tclass.Induction.S(), $Heap);
    ##e#1 := body#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    ##st'#1 := st3#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#1, Tclass.Induction.S(), $Heap);
    ##v#0 := v#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##v#0, Tclass.Induction.V(), $Heap);
    assume Induction.__default.P__Succ#canCall(st2#0, body#0, st3#0, v#0);
    assume {:id "id212"} Induction.__default.P__Succ(st2#0, body#0, st3#0, v#0);
    ##st0#0 := st1#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st0#0, Tclass.Induction.S(), $Heap);
    ##st#5 := st3#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#5, Tclass.Induction.S(), $Heap);
    ##vars#2 := bvars#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##vars#2, TSeq(TSeq(TChar)), $Heap);
    assume Induction.__default.BindEndScope#canCall(st1#0, st3#0, bvars#0);
    assume {:id "id213"} st4#0 == Induction.__default.BindEndScope(st1#0, st3#0, bvars#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#6 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#6, Tclass.Induction.S(), $Heap);
    ##e#2 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
    ##st'#2 := st4#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#2, Tclass.Induction.S(), $Heap);
    ##v#1 := v#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##v#1, Tclass.Induction.V(), $Heap);
    assume Induction.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0);
    assume {:id "id214"} Induction.__default.P__Succ(st#0, e#0, st4#0, v#0);
}



procedure {:verboseName "Induction.InductBind_Succ (call)"} Call$$Induction.__default.InductBind__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    bvars#0: Seq
       where $Is(bvars#0, TSeq(TSeq(TChar))) && $IsAlloc(bvars#0, TSeq(TSeq(TChar)), $Heap), 
    bvals#0: Seq
       where $Is(bvals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(bvals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    body#0: DatatypeType
       where $Is(body#0, Tclass.AST.Expr())
         && $IsAlloc(body#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(body#0), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.Induction.S())
         && $IsAllocBox(st1#0, Tclass.Induction.S(), $Heap), 
    bvarvs#0: Box
       where $IsBox(bvarvs#0, Tclass.Induction.VS())
         && $IsAllocBox(bvarvs#0, Tclass.Induction.VS(), $Heap), 
    st2#0: Box
       where $IsBox(st2#0, Tclass.Induction.S())
         && $IsAllocBox(st2#0, Tclass.Induction.S(), $Heap), 
    st3#0: Box
       where $IsBox(st3#0, Tclass.Induction.S())
         && $IsAllocBox(st3#0, Tclass.Induction.S(), $Heap), 
    v#0: Box
       where $IsBox(v#0, Tclass.Induction.V())
         && $IsAllocBox(v#0, Tclass.Induction.V(), $Heap), 
    st4#0: Box
       where $IsBox(st4#0, Tclass.Induction.S())
         && $IsAllocBox(st4#0, Tclass.Induction.S(), $Heap));
  // user-defined preconditions
  requires {:id "id215"} AST.Expr__Raw.Bind_q(e#0);
  requires {:id "id216"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
  requires {:id "id217"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
  requires {:id "id218"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
  requires {:id "id219"} !Induction.__default.P__Fail(st#0, e#0);
  requires {:id "id220"} Induction.__default.Pes__Succ(st#0, bvals#0, st1#0, bvarvs#0);
  requires {:id "id221"} Induction.__default.UpdateState__Pre(st1#0, bvars#0, bvarvs#0);
  requires {:id "id222"} st2#0 == Induction.__default.BindStartScope(st1#0, bvars#0, bvarvs#0);
  requires {:id "id223"} Induction.__default.P__Succ(st2#0, body#0, st3#0, v#0);
  requires {:id "id224"} st4#0 == Induction.__default.BindEndScope(st1#0, st3#0, bvars#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0);
  ensures {:id "id225"} Induction.__default.P__Succ(st#0, e#0, st4#0, v#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductExprs_Nil (well-formedness)"} CheckWellFormed$$Induction.__default.InductExprs__Nil(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.InductExprs_Nil (call)"} Call$$Induction.__default.InductExprs__Nil(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes__Fail#canCall(st#0, Lit(Seq#Empty(): Seq))
     && (!Induction.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
       ==> Induction.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, Induction.__default.NilVS()));
  ensures {:id "id229"} !Induction.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
     ==> Induction.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, Induction.__default.NilVS());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.InductExprs_Cons (well-formedness)"} CheckWellFormed$$Induction.__default.InductExprs__Cons(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.InductExprs_Cons (call)"} Call$$Induction.__default.InductExprs__Cons(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P__Fail#canCall(st#0, e#0)
     && (Induction.__default.P__Fail(st#0, e#0)
       ==> Induction.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)));
  ensures {:id "id245"} Induction.__default.P__Fail(st#0, e#0)
     ==> Induction.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0));
  free ensures Induction.__default.P__Fail#canCall(st#0, e#0)
     && (!Induction.__default.P__Fail(st#0, e#0)
       ==> (forall st1#1: Box, v#1: Box :: 
        { Induction.__default.P__Succ(st#0, e#0, st1#1, v#1) } 
        $IsBox(st1#1, Tclass.Induction.S()) && $IsBox(v#1, Tclass.Induction.V())
           ==> Induction.__default.P__Succ#canCall(st#0, e#0, st1#1, v#1)
             && (Induction.__default.P__Succ(st#0, e#0, st1#1, v#1)
               ==> Induction.__default.Pes__Fail#canCall(st1#1, es#0)
                 && (Induction.__default.Pes__Fail(st1#1, es#0)
                   ==> Induction.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))))));
  ensures {:id "id246"} !Induction.__default.P__Fail(st#0, e#0)
     ==> (forall st1#1: Box, v#1: Box :: 
      { Induction.__default.P__Succ(st#0, e#0, st1#1, v#1) } 
      $IsBox(st1#1, Tclass.Induction.S()) && $IsBox(v#1, Tclass.Induction.V())
         ==> 
        Induction.__default.P__Succ(st#0, e#0, st1#1, v#1)
           && Induction.__default.Pes__Fail(st1#1, es#0)
         ==> Induction.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)));
  free ensures (forall st1#3: Box, v#3: Box, st2#1: Box, vs#1: Box :: 
    { Induction.__default.AppendValue(v#3, vs#1), Induction.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1) } 
      { Induction.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1), Induction.__default.P__Succ(st#0, e#0, st1#3, v#3) } 
    $IsBox(st1#3, Tclass.Induction.S())
         && $IsBox(v#3, Tclass.Induction.V())
         && $IsBox(st2#1, Tclass.Induction.S())
         && $IsBox(vs#1, Tclass.Induction.VS())
       ==> Induction.__default.P__Succ#canCall(st#0, e#0, st1#3, v#3)
         && (Induction.__default.P__Succ(st#0, e#0, st1#3, v#3)
           ==> Induction.__default.Pes__Succ#canCall(st1#3, es#0, st2#1, vs#1)
             && (Induction.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1)
               ==> Induction.__default.AppendValue#canCall(v#3, vs#1)
                 && Induction.__default.Pes__Succ#canCall(st#0, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), 
                  st2#1, 
                  Induction.__default.AppendValue(v#3, vs#1)))));
  ensures {:id "id247"} (forall st1#3: Box, v#3: Box, st2#1: Box, vs#1: Box :: 
    { Induction.__default.AppendValue(v#3, vs#1), Induction.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1) } 
      { Induction.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1), Induction.__default.P__Succ(st#0, e#0, st1#3, v#3) } 
    $IsBox(st1#3, Tclass.Induction.S())
         && $IsBox(v#3, Tclass.Induction.V())
         && $IsBox(st2#1, Tclass.Induction.S())
         && $IsBox(vs#1, Tclass.Induction.VS())
       ==> 
      Induction.__default.P__Succ(st#0, e#0, st1#3, v#3)
         && Induction.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1)
       ==> Induction.__default.Pes__Succ(st#0, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), 
        st2#1, 
        Induction.__default.AppendValue(v#3, vs#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.P_Satisfied (well-formedness)"} CheckWellFormed$$Induction.__default.P__Satisfied(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.P_Satisfied (call)"} Call$$Induction.__default.P__Satisfied(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id249"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.P_Satisfied (correctness)"} Impl$$Induction.__default.P__Satisfied(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id250"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.P_Satisfied (correctness)"} Impl$$Induction.__default.P__Satisfied(st#0: Box, e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#1: Box;
  var ##e#1: DatatypeType;
  var st##0_0: Box;
  var e##0_0: DatatypeType;
  var st##1_0: Box;
  var e##1_0: DatatypeType;

    // AddMethodImpl: P_Satisfied, Impl$$Induction.__default.P__Satisfied
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(197,5)
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    assume Induction.__default.P__Fail#canCall(st#0, e#0);
    if (Induction.__default.P__Fail(st#0, e#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(198,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0;
        call {:id "id251"} Call$$Induction.__default.P__Fail__Sound(st##0_0, e##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(201,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_0 := e#0;
        assert {:id "id252"} 0 <= LitInt(3) || DtRank(e##1_0) < DtRank(e#0) || LitInt(2) == LitInt(3);
        assert {:id "id253"} DtRank(e##1_0) < DtRank(e#0)
           || (DtRank(e##1_0) == DtRank(e#0) && LitInt(2) < LitInt(3));
        call {:id "id254"} Call$$Induction.__default.P__Satisfied__Succ(st##1_0, e##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "Induction.P_Satisfied_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.P__Satisfied__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.P_Satisfied_Succ (call)"} Call$$Induction.__default.P__Satisfied__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id257"} !Induction.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id258"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.P_Satisfied_Succ (correctness)"} Impl$$Induction.__default.P__Satisfied__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id259"} !Induction.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.P#canCall(st#0, e#0);
  ensures {:id "id260"} Induction.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



function Tclass.AST.Expr__Raw() : Ty
uses {
// Tclass.AST.Expr__Raw Tag
axiom Tag(Tclass.AST.Expr__Raw()) == Tagclass.AST.Expr__Raw
   && TagFamily(Tclass.AST.Expr__Raw()) == tytagFamily$Expr_Raw;
}

const unique Tagclass.AST.Expr__Raw: TyTag;

// Box/unbox axiom for Tclass.AST.Expr__Raw
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AST.Expr__Raw()) } 
  $IsBox(bx, Tclass.AST.Expr__Raw())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.AST.Expr__Raw()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.P_Satisfied_Succ (correctness)"} Impl$$Induction.__default.P__Satisfied__Succ(st#0: Box, e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#13#0_0: Seq;
  var es#0_0: Seq;
  var let#0_0#0#0: Seq;
  var st##0_0: Box;
  var es##0_0: Seq;
  var st##0_0_0: Box;
  var e##0_0_0: DatatypeType;
  var es##0_0_0: Seq;
  var ##st#0_0: Box;
  var ##es#0_0: Seq;
  var ##st#0_1: Box;
  var ##es#0_1: Seq;
  var st1#0_0: Box;
  var vs#0_0: Box;
  var let#0_1#0#0: DatatypeType;
  var ##st#0_2: Box;
  var ##es#0_2: Seq;
  var st##0_1: Box;
  var e##0_0: DatatypeType;
  var es##0_1: Seq;
  var st1##0_0: Box;
  var vs##0_0: Box;
  var _mcc#10#1_0: DatatypeType;
  var _mcc#11#1_0: DatatypeType;
  var _mcc#12#1_0: DatatypeType;
  var e2#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var e1#1_0: DatatypeType;
  var let#1_1#0#0: DatatypeType;
  var op#1_0: DatatypeType;
  var let#1_2#0#0: DatatypeType;
  var st##1_0: Box;
  var e##1_0: DatatypeType;
  var st##1_0_0: Box;
  var e##1_0_0: DatatypeType;
  var op##1_0_0: DatatypeType;
  var e1##1_0_0: DatatypeType;
  var e2##1_0_0: DatatypeType;
  var ##st#1_0: Box;
  var ##e#1_0: DatatypeType;
  var ##st#1_1: Box;
  var ##e#1_1: DatatypeType;
  var st1#1_0: Box;
  var v1#1_0: Box;
  var let#1_3#0#0: DatatypeType;
  var ##st#1_2: Box;
  var ##e#1_2: DatatypeType;
  var st##1_1: Box;
  var e##1_1: DatatypeType;
  var st##1_1_0: Box;
  var e##1_1_0: DatatypeType;
  var op##1_1_0: DatatypeType;
  var e1##1_1_0: DatatypeType;
  var e2##1_1_0: DatatypeType;
  var ##st#1_3: Box;
  var ##e#1_3: DatatypeType;
  var ##st#1_4: Box;
  var ##e#1_4: DatatypeType;
  var st2#1_0: Box;
  var v2#1_0: Box;
  var let#1_4#0#0: DatatypeType;
  var ##st#1_5: Box;
  var ##e#1_5: DatatypeType;
  var st##1_2: Box;
  var e##1_2: DatatypeType;
  var op##1_0: DatatypeType;
  var e1##1_0: DatatypeType;
  var e2##1_0: DatatypeType;
  var st1##1_0: Box;
  var v1##1_0: Box;
  var _mcc#7#2_0: DatatypeType;
  var _mcc#8#2_0: DatatypeType;
  var _mcc#9#2_0: DatatypeType;
  var els#2_0: DatatypeType;
  var let#2_0#0#0: DatatypeType;
  var thn#2_0: DatatypeType;
  var let#2_1#0#0: DatatypeType;
  var cond#2_0: DatatypeType;
  var let#2_2#0#0: DatatypeType;
  var st##2_0: Box;
  var e##2_0: DatatypeType;
  var st##2_1: Box;
  var e##2_1: DatatypeType;
  var cond##2_0: DatatypeType;
  var thn##2_0: DatatypeType;
  var els##2_0: DatatypeType;
  var ##st#2_0: Box;
  var ##e#2_0: DatatypeType;
  var st_cond#2_0: Box;
  var condv#2_0: Box;
  var let#2_3#0#0: DatatypeType;
  var ##st#2_1: Box;
  var ##e#2_1: DatatypeType;
  var st##2_2: Box;
  var e##2_2: DatatypeType;
  var st##2_3: Box;
  var e##2_3: DatatypeType;
  var st##2_4: Box;
  var e##2_4: DatatypeType;
  var cond##2_1: DatatypeType;
  var thn##2_1: DatatypeType;
  var els##2_1: DatatypeType;
  var st_cond##2_0: Box;
  var condv##2_0: Box;
  var _mcc#5#3_0: Seq;
  var _mcc#6#3_0: Seq;
  var avals#3_0: Seq;
  var let#3_0#0#0: Seq;
  var avars#3_0: Seq;
  var let#3_1#0#0: Seq;
  var st##3_0: Box;
  var es##3_0: Seq;
  var st##3_0_0: Box;
  var e##3_0_0: DatatypeType;
  var avars##3_0_0: Seq;
  var avals##3_0_0: Seq;
  var ##st#3_0: Box;
  var ##es#3_0: Seq;
  var ##st#3_1: Box;
  var ##es#3_1: Seq;
  var st1#3_0: Box;
  var vs#3_0: Box;
  var let#3_2#0#0: DatatypeType;
  var ##st#3_2: Box;
  var ##es#3_2: Seq;
  var st##3_1_0: Box;
  var e##3_1_0: DatatypeType;
  var avars##3_1_0: Seq;
  var avals##3_1_0: Seq;
  var ##st#3_3: Box;
  var ##vars#3_0: Seq;
  var ##argvs#3_0: Box;
  var ##st#3_4: Box;
  var ##vars#3_1: Seq;
  var ##argvs#3_1: Box;
  var defass#st2#3_0: bool;
  var st2#3_0: Box
     where defass#st2#3_0
       ==> $IsBox(st2#3_0, Tclass.Induction.S())
         && $IsAllocBox(st2#3_0, Tclass.Induction.S(), $Heap);
  var ##st#3_5: Box;
  var ##vars#3_2: Seq;
  var ##vals#3_0: Box;
  var st##3_1: Box;
  var e##3_0: DatatypeType;
  var avars##3_0: Seq;
  var avals##3_0: Seq;
  var st1##3_0: Box;
  var vs##3_0: Box;
  var st2##3_0: Box;
  var _mcc#2#4_0: Seq;
  var _mcc#3#4_0: Seq;
  var _mcc#4#4_0: DatatypeType;
  var body#4_0: DatatypeType;
  var let#4_0#0#0: DatatypeType;
  var bvals#4_0: Seq;
  var let#4_1#0#0: Seq;
  var bvars#4_0: Seq;
  var let#4_2#0#0: Seq;
  var st##4_0: Box;
  var es##4_0: Seq;
  var st##4_0_0: Box;
  var e##4_0_0: DatatypeType;
  var bvars##4_0_0: Seq;
  var bvals##4_0_0: Seq;
  var body##4_0_0: DatatypeType;
  var ##st#4_0: Box;
  var ##es#4_0: Seq;
  var ##st#4_1: Box;
  var ##es#4_1: Seq;
  var st1#4_0: Box;
  var bvarvs#4_0: Box;
  var let#4_3#0#0: DatatypeType;
  var ##st#4_2: Box;
  var ##es#4_2: Seq;
  var st##4_1_0: Box;
  var e##4_1_0: DatatypeType;
  var bvars##4_1_0: Seq;
  var bvals##4_1_0: Seq;
  var body##4_1_0: DatatypeType;
  var ##st#4_3: Box;
  var ##vars#4_0: Seq;
  var ##argvs#4_0: Box;
  var ##st#4_4: Box;
  var ##vars#4_1: Seq;
  var ##argvs#4_1: Box;
  var defass#st2#4_0: bool;
  var st2#4_0: Box
     where defass#st2#4_0
       ==> $IsBox(st2#4_0, Tclass.Induction.S())
         && $IsAllocBox(st2#4_0, Tclass.Induction.S(), $Heap);
  var ##st#4_5: Box;
  var ##vars#4_2: Seq;
  var ##vals#4_0: Box;
  var st##4_1: Box;
  var e##4_0: DatatypeType;
  var st##4_2_0: Box;
  var e##4_2_0: DatatypeType;
  var bvars##4_2_0: Seq;
  var bvals##4_2_0: Seq;
  var body##4_2_0: DatatypeType;
  var ##st#4_6: Box;
  var ##e#4_0: DatatypeType;
  var ##st#4_7: Box;
  var ##e#4_1: DatatypeType;
  var st3#4_0: Box;
  var v#4_0: Box;
  var let#4_4#0#0: DatatypeType;
  var ##st#4_8: Box;
  var ##e#4_2: DatatypeType;
  var defass#st4#4_0: bool;
  var st4#4_0: Box
     where defass#st4#4_0
       ==> $IsBox(st4#4_0, Tclass.Induction.S())
         && $IsAllocBox(st4#4_0, Tclass.Induction.S(), $Heap);
  var ##st0#4_0: Box;
  var ##st#4_9: Box;
  var ##vars#4_3: Seq;
  var st##4_2: Box;
  var e##4_1: DatatypeType;
  var bvars##4_0: Seq;
  var bvals##4_0: Seq;
  var body##4_0: DatatypeType;
  var st1##4_0: Box;
  var bvarvs##4_0: Box;
  var st2##4_0: Box;
  var st3##4_0: Box;
  var v##4_0: Box;
  var st4##4_0: Box;
  var st##4_3: Box;
  var e##4_2: DatatypeType;
  var st'##4_0: Box;
  var v##4_1: Box;
  var _mcc#1#5_0: int;
  var st##5_0: Box;
  var e##5_0: DatatypeType;
  var _mcc#0#6_0: Seq;
  var st##6_0: Box;
  var e##6_0: DatatypeType;

    // AddMethodImpl: P_Satisfied_Succ, Impl$$Induction.__default.P__Satisfied__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#13#0_0;
    havoc _mcc#10#1_0, _mcc#11#1_0, _mcc#12#1_0;
    havoc _mcc#7#2_0, _mcc#8#2_0, _mcc#9#2_0;
    havoc _mcc#5#3_0, _mcc#6#3_0;
    havoc _mcc#2#4_0, _mcc#3#4_0, _mcc#4#4_0;
    havoc _mcc#1#5_0;
    havoc _mcc#0#6_0;
    if (e#0 == #AST.Expr_Raw.Var(_mcc#0#6_0))
    {
        assume $Is(_mcc#0#6_0, TSeq(TChar));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(212,18)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##6_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##6_0 := e#0;
        call {:id "id440"} Call$$Induction.__default.InductVar(st##6_0, e##6_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Literal(_mcc#1#5_0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(215,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##5_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##5_0 := e#0;
        call {:id "id439"} Call$$Induction.__default.InductLiteral(st##5_0, e##5_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Bind(_mcc#2#4_0, _mcc#3#4_0, _mcc#4#4_0))
    {
        assume $Is(_mcc#2#4_0, TSeq(TSeq(TChar)));
        assume $Is(_mcc#3#4_0, TSeq(Tclass.AST.Expr__Raw()));
        assume $Is(_mcc#4#4_0, Tclass.AST.Expr__Raw());
        havoc body#4_0;
        assume $Is(body#4_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(body#4_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id382"} let#4_0#0#0 == _mcc#4#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_0#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id383"} body#4_0 == let#4_0#0#0;
        havoc bvals#4_0;
        assume $Is(bvals#4_0, TSeq(Tclass.AST.Expr__Raw()))
           && $IsAlloc(bvals#4_0, TSeq(Tclass.AST.Expr__Raw()), $Heap);
        assume {:id "id384"} let#4_1#0#0 == _mcc#3#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_1#0#0, TSeq(Tclass.AST.Expr__Raw()));
        assume {:id "id385"} bvals#4_0 == let#4_1#0#0;
        havoc bvars#4_0;
        assume $Is(bvars#4_0, TSeq(TSeq(TChar)))
           && $IsAlloc(bvars#4_0, TSeq(TSeq(TChar)), $Heap);
        assume {:id "id386"} let#4_2#0#0 == _mcc#2#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_2#0#0, TSeq(TSeq(TChar)));
        assume {:id "id387"} bvars#4_0 == let#4_2#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(267,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##4_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id388"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        es##4_0 := bvals#4_0;
        assert {:id "id389"} 0 <= LitInt(2) || Seq#Rank(es##4_0) < DtRank(e#0) || LitInt(1) == LitInt(2);
        assert {:id "id390"} Seq#Rank(es##4_0) < DtRank(e#0);
        call {:id "id391"} Call$$Induction.__default.Pes__Satisfied(st##4_0, es##4_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(268,57)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##4_0_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##4_0_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            bvars##4_0_0 := bvars#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id392"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            bvals##4_0_0 := bvals#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id393"} $Is(body#4_0, Tclass.AST.Expr());
            body##4_0_0 := body#4_0;
            call {:id "id394"} Call$$Induction.__default.InductBind__Fail(st##4_0_0, e##4_0_0, bvars##4_0_0, bvals##4_0_0, body##4_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(268,9)
            ##st#4_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#4_0, Tclass.Induction.S(), $Heap);
            assert {:id "id395"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            ##es#4_0 := bvals#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#4_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume Induction.__default.Pes__Fail#canCall(st#0, bvals#4_0);
            assume Induction.__default.Pes__Fail#canCall(st#0, bvals#4_0);
            assert {:id "id396"} !Induction.__default.Pes__Fail(st#0, bvals#4_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(268,9)
        ##st#4_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4_1, Tclass.Induction.S(), $Heap);
        assume {:id "id397"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        ##es#4_1 := bvals#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#4_1, TSeq(Tclass.AST.Expr()), $Heap);
        assume Induction.__default.Pes__Fail#canCall(st#0, bvals#4_0);
        assume Induction.__default.Pes__Fail#canCall(st#0, bvals#4_0);
        assume {:id "id398"} !Induction.__default.Pes__Fail(st#0, bvals#4_0);
        havoc st1#4_0;
        assume $IsBox(st1#4_0, Tclass.Induction.S())
           && $IsAllocBox(st1#4_0, Tclass.Induction.S(), $Heap);
        havoc bvarvs#4_0;
        assume $IsBox(bvarvs#4_0, Tclass.Induction.VS())
           && $IsAllocBox(bvarvs#4_0, Tclass.Induction.VS(), $Heap);
        ##st#4_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4_2, Tclass.Induction.S(), $Heap);
        assert {:id "id399"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        ##es#4_2 := bvals#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#4_2, TSeq(Tclass.AST.Expr()), $Heap);
        assert {:id "id400"} {:subsumption 0} Induction.__default.Pes(##st#4_2, ##es#4_2);
        assert {:id "id401"} {:subsumption 0} !Induction.__default.Pes__Fail(##st#4_2, ##es#4_2);
        assume Induction.__default.Pes__Step#canCall(st#0, bvals#4_0);
        assume _System.Tuple2.___hMake2_q(Induction.__default.Pes__Step(st#0, bvals#4_0));
        assume {:id "id402"} let#4_3#0#0 == Induction.__default.Pes__Step(st#0, bvals#4_0);
        assume Induction.__default.Pes__Step#canCall(st#0, bvals#4_0);
        assume Induction.__default.Pes__Step#canCall(st#0, bvals#4_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_3#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.VS()));
        assume _System.Tuple2.___hMake2_q(let#4_3#0#0);
        assume {:id "id403"} #_System._tuple#2._#Make2(st1#4_0, bvarvs#4_0) == let#4_3#0#0;
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(271,72)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##4_1_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##4_1_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            bvars##4_1_0 := bvars#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id404"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            bvals##4_1_0 := bvals#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id405"} $Is(body#4_0, Tclass.AST.Expr());
            body##4_1_0 := body#4_0;
            call {:id "id406"} Call$$Induction.__default.InductBind__Fail(st##4_1_0, e##4_1_0, bvars##4_1_0, bvals##4_1_0, body##4_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(271,9)
            ##st#4_3 := st1#4_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#4_3, Tclass.Induction.S(), $Heap);
            ##vars#4_0 := bvars#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##vars#4_0, TSeq(TSeq(TChar)), $Heap);
            ##argvs#4_0 := bvarvs#4_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##argvs#4_0, Tclass.Induction.VS(), $Heap);
            assume Induction.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
            assume Induction.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
            assert {:id "id407"} Induction.__default.UpdateState__Pre(st1#4_0, bvars#4_0, bvarvs#4_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(271,9)
        ##st#4_4 := st1#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4_4, Tclass.Induction.S(), $Heap);
        ##vars#4_1 := bvars#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#4_1, TSeq(TSeq(TChar)), $Heap);
        ##argvs#4_1 := bvarvs#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##argvs#4_1, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        assume Induction.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        assume {:id "id408"} Induction.__default.UpdateState__Pre(st1#4_0, bvars#4_0, bvarvs#4_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(272,17)
        assume true;
        ##st#4_5 := st1#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4_5, Tclass.Induction.S(), $Heap);
        ##vars#4_2 := bvars#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#4_2, TSeq(TSeq(TChar)), $Heap);
        ##vals#4_0 := bvarvs#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##vals#4_0, Tclass.Induction.VS(), $Heap);
        assert {:id "id409"} {:subsumption 0} Induction.__default.UpdateState__Pre(##st#4_5, ##vars#4_2, ##vals#4_0);
        assume Induction.__default.UpdateState__Pre(##st#4_5, ##vars#4_2, ##vals#4_0);
        assume Induction.__default.BindStartScope#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        assume Induction.__default.BindStartScope#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        st2#4_0 := Induction.__default.BindStartScope(st1#4_0, bvars#4_0, bvarvs#4_0);
        defass#st2#4_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(273,20)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id411"} defass#st2#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##4_1 := st2#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id412"} $Is(body#4_0, Tclass.AST.Expr());
        e##4_0 := body#4_0;
        assert {:id "id413"} 0 <= LitInt(2) || DtRank(e##4_0) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assert {:id "id414"} DtRank(e##4_0) < DtRank(e#0)
           || (DtRank(e##4_0) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id415"} Call$$Induction.__default.P__Satisfied(st##4_1, e##4_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(274,55)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##4_2_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##4_2_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            bvars##4_2_0 := bvars#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id416"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            bvals##4_2_0 := bvals#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id417"} $Is(body#4_0, Tclass.AST.Expr());
            body##4_2_0 := body#4_0;
            call {:id "id418"} Call$$Induction.__default.InductBind__Fail(st##4_2_0, e##4_2_0, bvars##4_2_0, bvals##4_2_0, body##4_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(274,9)
            assert {:id "id419"} defass#st2#4_0;
            ##st#4_6 := st2#4_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#4_6, Tclass.Induction.S(), $Heap);
            assert {:id "id420"} $Is(body#4_0, Tclass.AST.Expr());
            ##e#4_0 := body#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#4_0, Tclass.AST.Expr(), $Heap);
            assume Induction.__default.P__Fail#canCall(st2#4_0, body#4_0);
            assume Induction.__default.P__Fail#canCall(st2#4_0, body#4_0);
            assert {:id "id421"} !Induction.__default.P__Fail(st2#4_0, body#4_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(274,9)
        assume {:id "id422"} defass#st2#4_0;
        ##st#4_7 := st2#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4_7, Tclass.Induction.S(), $Heap);
        assume {:id "id423"} $Is(body#4_0, Tclass.AST.Expr());
        ##e#4_1 := body#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#4_1, Tclass.AST.Expr(), $Heap);
        assume Induction.__default.P__Fail#canCall(st2#4_0, body#4_0);
        assume Induction.__default.P__Fail#canCall(st2#4_0, body#4_0);
        assume {:id "id424"} !Induction.__default.P__Fail(st2#4_0, body#4_0);
        havoc st3#4_0;
        assume $IsBox(st3#4_0, Tclass.Induction.S())
           && $IsAllocBox(st3#4_0, Tclass.Induction.S(), $Heap);
        havoc v#4_0;
        assume $IsBox(v#4_0, Tclass.Induction.V())
           && $IsAllocBox(v#4_0, Tclass.Induction.V(), $Heap);
        assert {:id "id425"} defass#st2#4_0;
        ##st#4_8 := st2#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4_8, Tclass.Induction.S(), $Heap);
        assert {:id "id426"} $Is(body#4_0, Tclass.AST.Expr());
        ##e#4_2 := body#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#4_2, Tclass.AST.Expr(), $Heap);
        assert {:id "id427"} {:subsumption 0} Induction.__default.P(##st#4_8, ##e#4_2);
        assert {:id "id428"} {:subsumption 0} !Induction.__default.P__Fail(##st#4_8, ##e#4_2);
        assume Induction.__default.P__Step#canCall(st2#4_0, body#4_0);
        assume _System.Tuple2.___hMake2_q(Induction.__default.P__Step(st2#4_0, body#4_0));
        assume {:id "id429"} let#4_4#0#0 == Induction.__default.P__Step(st2#4_0, body#4_0);
        assume Induction.__default.P__Step#canCall(st2#4_0, body#4_0);
        assume Induction.__default.P__Step#canCall(st2#4_0, body#4_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_4#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V()));
        assume _System.Tuple2.___hMake2_q(let#4_4#0#0);
        assume {:id "id430"} #_System._tuple#2._#Make2(st3#4_0, v#4_0) == let#4_4#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(277,17)
        assume true;
        ##st0#4_0 := st1#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st0#4_0, Tclass.Induction.S(), $Heap);
        ##st#4_9 := st3#4_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#4_9, Tclass.Induction.S(), $Heap);
        ##vars#4_3 := bvars#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#4_3, TSeq(TSeq(TChar)), $Heap);
        assume Induction.__default.BindEndScope#canCall(st1#4_0, st3#4_0, bvars#4_0);
        assume Induction.__default.BindEndScope#canCall(st1#4_0, st3#4_0, bvars#4_0);
        st4#4_0 := Induction.__default.BindEndScope(st1#4_0, st3#4_0, bvars#4_0);
        defass#st4#4_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(279,24)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##4_2 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##4_1 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        bvars##4_0 := bvars#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id432"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        bvals##4_0 := bvals#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id433"} $Is(body#4_0, Tclass.AST.Expr());
        body##4_0 := body#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##4_0 := st1#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        bvarvs##4_0 := bvarvs#4_0;
        assert {:id "id434"} defass#st2#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st2##4_0 := st2#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st3##4_0 := st3#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##4_0 := v#4_0;
        assert {:id "id435"} defass#st4#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st4##4_0 := st4#4_0;
        call {:id "id436"} Call$$Induction.__default.InductBind__Succ(st##4_2, e##4_1, bvars##4_0, bvals##4_0, body##4_0, st1##4_0, bvarvs##4_0, st2##4_0, st3##4_0, v##4_0, st4##4_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(280,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##4_3 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##4_2 := e#0;
        assert {:id "id437"} defass#st4#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st'##4_0 := st4#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##4_1 := v#4_0;
        call {:id "id438"} Call$$Induction.__default.P__Succ__Sound(st##4_3, e##4_2, st'##4_0, v##4_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Assign(_mcc#5#3_0, _mcc#6#3_0))
    {
        assume $Is(_mcc#5#3_0, TSeq(TSeq(TChar)));
        assume $Is(_mcc#6#3_0, TSeq(Tclass.AST.Expr__Raw()));
        havoc avals#3_0;
        assume $Is(avals#3_0, TSeq(Tclass.AST.Expr__Raw()))
           && $IsAlloc(avals#3_0, TSeq(Tclass.AST.Expr__Raw()), $Heap);
        assume {:id "id354"} let#3_0#0#0 == _mcc#6#3_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_0#0#0, TSeq(Tclass.AST.Expr__Raw()));
        assume {:id "id355"} avals#3_0 == let#3_0#0#0;
        havoc avars#3_0;
        assume $Is(avars#3_0, TSeq(TSeq(TChar)))
           && $IsAlloc(avars#3_0, TSeq(TSeq(TChar)), $Heap);
        assume {:id "id356"} let#3_1#0#0 == _mcc#5#3_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_1#0#0, TSeq(TSeq(TChar)));
        assume {:id "id357"} avars#3_0 == let#3_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(257,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##3_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id358"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        es##3_0 := avals#3_0;
        assert {:id "id359"} 0 <= LitInt(2) || Seq#Rank(es##3_0) < DtRank(e#0) || LitInt(1) == LitInt(2);
        assert {:id "id360"} Seq#Rank(es##3_0) < DtRank(e#0);
        call {:id "id361"} Call$$Induction.__default.Pes__Satisfied(st##3_0, es##3_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(259,59)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##3_0_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##3_0_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            avars##3_0_0 := avars#3_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id362"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
            avals##3_0_0 := avals#3_0;
            call {:id "id363"} Call$$Induction.__default.InductAssign__Fail(st##3_0_0, e##3_0_0, avars##3_0_0, avals##3_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(259,9)
            ##st#3_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#3_0, Tclass.Induction.S(), $Heap);
            assert {:id "id364"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
            ##es#3_0 := avals#3_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#3_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume Induction.__default.Pes__Fail#canCall(st#0, avals#3_0);
            assume Induction.__default.Pes__Fail#canCall(st#0, avals#3_0);
            assert {:id "id365"} !Induction.__default.Pes__Fail(st#0, avals#3_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(259,9)
        ##st#3_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3_1, Tclass.Induction.S(), $Heap);
        assume {:id "id366"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        ##es#3_1 := avals#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#3_1, TSeq(Tclass.AST.Expr()), $Heap);
        assume Induction.__default.Pes__Fail#canCall(st#0, avals#3_0);
        assume Induction.__default.Pes__Fail#canCall(st#0, avals#3_0);
        assume {:id "id367"} !Induction.__default.Pes__Fail(st#0, avals#3_0);
        havoc st1#3_0;
        assume $IsBox(st1#3_0, Tclass.Induction.S())
           && $IsAllocBox(st1#3_0, Tclass.Induction.S(), $Heap);
        havoc vs#3_0;
        assume $IsBox(vs#3_0, Tclass.Induction.VS())
           && $IsAllocBox(vs#3_0, Tclass.Induction.VS(), $Heap);
        ##st#3_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3_2, Tclass.Induction.S(), $Heap);
        assert {:id "id368"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        ##es#3_2 := avals#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#3_2, TSeq(Tclass.AST.Expr()), $Heap);
        assert {:id "id369"} {:subsumption 0} Induction.__default.Pes(##st#3_2, ##es#3_2);
        assert {:id "id370"} {:subsumption 0} !Induction.__default.Pes__Fail(##st#3_2, ##es#3_2);
        assume Induction.__default.Pes__Step#canCall(st#0, avals#3_0);
        assume _System.Tuple2.___hMake2_q(Induction.__default.Pes__Step(st#0, avals#3_0));
        assume {:id "id371"} let#3_2#0#0 == Induction.__default.Pes__Step(st#0, avals#3_0);
        assume Induction.__default.Pes__Step#canCall(st#0, avals#3_0);
        assume Induction.__default.Pes__Step#canCall(st#0, avals#3_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_2#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.VS()));
        assume _System.Tuple2.___hMake2_q(let#3_2#0#0);
        assume {:id "id372"} #_System._tuple#2._#Make2(st1#3_0, vs#3_0) == let#3_2#0#0;
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(262,70)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##3_1_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##3_1_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            avars##3_1_0 := avars#3_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id373"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
            avals##3_1_0 := avals#3_0;
            call {:id "id374"} Call$$Induction.__default.InductAssign__Fail(st##3_1_0, e##3_1_0, avars##3_1_0, avals##3_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(262,9)
            ##st#3_3 := st1#3_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#3_3, Tclass.Induction.S(), $Heap);
            ##vars#3_0 := avars#3_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##vars#3_0, TSeq(TSeq(TChar)), $Heap);
            ##argvs#3_0 := vs#3_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##argvs#3_0, Tclass.Induction.VS(), $Heap);
            assume Induction.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
            assume Induction.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
            assert {:id "id375"} Induction.__default.UpdateState__Pre(st1#3_0, avars#3_0, vs#3_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(262,9)
        ##st#3_4 := st1#3_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3_4, Tclass.Induction.S(), $Heap);
        ##vars#3_1 := avars#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#3_1, TSeq(TSeq(TChar)), $Heap);
        ##argvs#3_1 := vs#3_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##argvs#3_1, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
        assume Induction.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
        assume {:id "id376"} Induction.__default.UpdateState__Pre(st1#3_0, avars#3_0, vs#3_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(263,17)
        assume true;
        ##st#3_5 := st1#3_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3_5, Tclass.Induction.S(), $Heap);
        ##vars#3_2 := avars#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#3_2, TSeq(TSeq(TChar)), $Heap);
        ##vals#3_0 := vs#3_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##vals#3_0, Tclass.Induction.VS(), $Heap);
        assert {:id "id377"} {:subsumption 0} Induction.__default.UpdateState__Pre(##st#3_5, ##vars#3_2, ##vals#3_0);
        assume Induction.__default.UpdateState__Pre(##st#3_5, ##vars#3_2, ##vals#3_0);
        assume Induction.__default.AssignState#canCall(st1#3_0, avars#3_0, vs#3_0);
        assume Induction.__default.AssignState#canCall(st1#3_0, avars#3_0, vs#3_0);
        st2#3_0 := Induction.__default.AssignState(st1#3_0, avars#3_0, vs#3_0);
        defass#st2#3_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(264,26)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##3_1 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##3_0 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        avars##3_0 := avars#3_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id379"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        avals##3_0 := avals#3_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##3_0 := st1#3_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        vs##3_0 := vs#3_0;
        assert {:id "id380"} defass#st2#3_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st2##3_0 := st2#3_0;
        call {:id "id381"} Call$$Induction.__default.InductAssign__Succ(st##3_1, e##3_0, avars##3_0, avals##3_0, st1##3_0, vs##3_0, st2##3_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.If(_mcc#7#2_0, _mcc#8#2_0, _mcc#9#2_0))
    {
        assume $Is(_mcc#7#2_0, Tclass.AST.Expr__Raw());
        assume $Is(_mcc#8#2_0, Tclass.AST.Expr__Raw());
        assume $Is(_mcc#9#2_0, Tclass.AST.Expr__Raw());
        havoc els#2_0;
        assume $Is(els#2_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(els#2_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id321"} let#2_0#0#0 == _mcc#9#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_0#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id322"} els#2_0 == let#2_0#0#0;
        havoc thn#2_0;
        assume $Is(thn#2_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(thn#2_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id323"} let#2_1#0#0 == _mcc#8#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_1#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id324"} thn#2_0 == let#2_1#0#0;
        havoc cond#2_0;
        assume $Is(cond#2_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(cond#2_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id325"} let#2_2#0#0 == _mcc#7#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_2#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id326"} cond#2_0 == let#2_2#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(243,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id327"} $Is(cond#2_0, Tclass.AST.Expr());
        e##2_0 := cond#2_0;
        assert {:id "id328"} 0 <= LitInt(2) || DtRank(e##2_0) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assert {:id "id329"} DtRank(e##2_0) < DtRank(e#0)
           || (DtRank(e##2_0) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id330"} Call$$Induction.__default.P__Satisfied(st##2_0, e##2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(246,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_1 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##2_1 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id331"} $Is(cond#2_0, Tclass.AST.Expr());
        cond##2_0 := cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id332"} $Is(thn#2_0, Tclass.AST.Expr());
        thn##2_0 := thn#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id333"} $Is(els#2_0, Tclass.AST.Expr());
        els##2_0 := els#2_0;
        call {:id "id334"} Call$$Induction.__default.InductIf__Fail(st##2_1, e##2_1, cond##2_0, thn##2_0, els##2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(247,9)
        ##st#2_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#2_0, Tclass.Induction.S(), $Heap);
        assert {:id "id335"} $Is(cond#2_0, Tclass.AST.Expr());
        ##e#2_0 := cond#2_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2_0, Tclass.AST.Expr(), $Heap);
        assume Induction.__default.P__Fail#canCall(st#0, cond#2_0);
        assume Induction.__default.P__Fail#canCall(st#0, cond#2_0);
        assert {:id "id336"} !Induction.__default.P__Fail(st#0, cond#2_0);
        havoc st_cond#2_0;
        assume $IsBox(st_cond#2_0, Tclass.Induction.S())
           && $IsAllocBox(st_cond#2_0, Tclass.Induction.S(), $Heap);
        havoc condv#2_0;
        assume $IsBox(condv#2_0, Tclass.Induction.V())
           && $IsAllocBox(condv#2_0, Tclass.Induction.V(), $Heap);
        ##st#2_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#2_1, Tclass.Induction.S(), $Heap);
        assert {:id "id337"} $Is(cond#2_0, Tclass.AST.Expr());
        ##e#2_1 := cond#2_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2_1, Tclass.AST.Expr(), $Heap);
        assert {:id "id338"} {:subsumption 0} Induction.__default.P(##st#2_1, ##e#2_1);
        assert {:id "id339"} {:subsumption 0} !Induction.__default.P__Fail(##st#2_1, ##e#2_1);
        assume Induction.__default.P__Step#canCall(st#0, cond#2_0);
        assume _System.Tuple2.___hMake2_q(Induction.__default.P__Step(st#0, cond#2_0));
        assume {:id "id340"} let#2_3#0#0 == Induction.__default.P__Step(st#0, cond#2_0);
        assume Induction.__default.P__Step#canCall(st#0, cond#2_0);
        assume Induction.__default.P__Step#canCall(st#0, cond#2_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_3#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V()));
        assume _System.Tuple2.___hMake2_q(let#2_3#0#0);
        assume {:id "id341"} #_System._tuple#2._#Make2(st_cond#2_0, condv#2_0) == let#2_3#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(250,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_2 := st_cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id342"} $Is(thn#2_0, Tclass.AST.Expr());
        e##2_2 := thn#2_0;
        assert {:id "id343"} 0 <= LitInt(2) || DtRank(e##2_2) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assert {:id "id344"} DtRank(e##2_2) < DtRank(e#0)
           || (DtRank(e##2_2) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id345"} Call$$Induction.__default.P__Satisfied(st##2_2, e##2_2);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(251,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_3 := st_cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id346"} $Is(els#2_0, Tclass.AST.Expr());
        e##2_3 := els#2_0;
        assert {:id "id347"} 0 <= LitInt(2) || DtRank(e##2_3) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assert {:id "id348"} DtRank(e##2_3) < DtRank(e#0)
           || (DtRank(e##2_3) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id349"} Call$$Induction.__default.P__Satisfied(st##2_3, e##2_3);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(253,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_4 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##2_4 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id350"} $Is(cond#2_0, Tclass.AST.Expr());
        cond##2_1 := cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id351"} $Is(thn#2_0, Tclass.AST.Expr());
        thn##2_1 := thn#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id352"} $Is(els#2_0, Tclass.AST.Expr());
        els##2_1 := els#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st_cond##2_0 := st_cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        condv##2_0 := condv#2_0;
        call {:id "id353"} Call$$Induction.__default.InductIf__Succ(st##2_4, e##2_4, cond##2_1, thn##2_1, els##2_1, st_cond##2_0, condv##2_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Op(_mcc#10#1_0, _mcc#11#1_0, _mcc#12#1_0))
    {
        assume $Is(_mcc#10#1_0, Tclass.AST.BinOp());
        assume $Is(_mcc#11#1_0, Tclass.AST.Expr__Raw());
        assume $Is(_mcc#12#1_0, Tclass.AST.Expr__Raw());
        havoc e2#1_0;
        assume $Is(e2#1_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(e2#1_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id280"} let#1_0#0#0 == _mcc#12#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id281"} e2#1_0 == let#1_0#0#0;
        havoc e1#1_0;
        assume $Is(e1#1_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(e1#1_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id282"} let#1_1#0#0 == _mcc#11#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id283"} e1#1_0 == let#1_1#0#0;
        havoc op#1_0;
        assume $Is(op#1_0, Tclass.AST.BinOp()) && $IsAlloc(op#1_0, Tclass.AST.BinOp(), $Heap);
        assume {:id "id284"} let#1_2#0#0 == _mcc#10#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_2#0#0, Tclass.AST.BinOp());
        assume {:id "id285"} op#1_0 == let#1_2#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(219,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id286"} $Is(e1#1_0, Tclass.AST.Expr());
        e##1_0 := e1#1_0;
        assert {:id "id287"} 0 <= LitInt(2) || DtRank(e##1_0) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assert {:id "id288"} DtRank(e##1_0) < DtRank(e#0)
           || (DtRank(e##1_0) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id289"} Call$$Induction.__default.P__Satisfied(st##1_0, e##1_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(221,50)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##1_0_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##1_0_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            op##1_0_0 := op#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id290"} $Is(e1#1_0, Tclass.AST.Expr());
            e1##1_0_0 := e1#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id291"} $Is(e2#1_0, Tclass.AST.Expr());
            e2##1_0_0 := e2#1_0;
            call {:id "id292"} Call$$Induction.__default.InductOp__Fail(st##1_0_0, e##1_0_0, op##1_0_0, e1##1_0_0, e2##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(221,9)
            ##st#1_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#1_0, Tclass.Induction.S(), $Heap);
            assert {:id "id293"} $Is(e1#1_0, Tclass.AST.Expr());
            ##e#1_0 := e1#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_0, Tclass.AST.Expr(), $Heap);
            assume Induction.__default.P__Fail#canCall(st#0, e1#1_0);
            assume Induction.__default.P__Fail#canCall(st#0, e1#1_0);
            assert {:id "id294"} !Induction.__default.P__Fail(st#0, e1#1_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(221,9)
        ##st#1_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1_1, Tclass.Induction.S(), $Heap);
        assume {:id "id295"} $Is(e1#1_0, Tclass.AST.Expr());
        ##e#1_1 := e1#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_1, Tclass.AST.Expr(), $Heap);
        assume Induction.__default.P__Fail#canCall(st#0, e1#1_0);
        assume Induction.__default.P__Fail#canCall(st#0, e1#1_0);
        assume {:id "id296"} !Induction.__default.P__Fail(st#0, e1#1_0);
        havoc st1#1_0;
        assume $IsBox(st1#1_0, Tclass.Induction.S())
           && $IsAllocBox(st1#1_0, Tclass.Induction.S(), $Heap);
        havoc v1#1_0;
        assume $IsBox(v1#1_0, Tclass.Induction.V())
           && $IsAllocBox(v1#1_0, Tclass.Induction.V(), $Heap);
        ##st#1_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1_2, Tclass.Induction.S(), $Heap);
        assert {:id "id297"} $Is(e1#1_0, Tclass.AST.Expr());
        ##e#1_2 := e1#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_2, Tclass.AST.Expr(), $Heap);
        assert {:id "id298"} {:subsumption 0} Induction.__default.P(##st#1_2, ##e#1_2);
        assert {:id "id299"} {:subsumption 0} !Induction.__default.P__Fail(##st#1_2, ##e#1_2);
        assume Induction.__default.P__Step#canCall(st#0, e1#1_0);
        assume _System.Tuple2.___hMake2_q(Induction.__default.P__Step(st#0, e1#1_0));
        assume {:id "id300"} let#1_3#0#0 == Induction.__default.P__Step(st#0, e1#1_0);
        assume Induction.__default.P__Step#canCall(st#0, e1#1_0);
        assume Induction.__default.P__Step#canCall(st#0, e1#1_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_3#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V()));
        assume _System.Tuple2.___hMake2_q(let#1_3#0#0);
        assume {:id "id301"} #_System._tuple#2._#Make2(st1#1_0, v1#1_0) == let#1_3#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(225,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_1 := st1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id302"} $Is(e2#1_0, Tclass.AST.Expr());
        e##1_1 := e2#1_0;
        assert {:id "id303"} 0 <= LitInt(2) || DtRank(e##1_1) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assert {:id "id304"} DtRank(e##1_1) < DtRank(e#0)
           || (DtRank(e##1_1) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id305"} Call$$Induction.__default.P__Satisfied(st##1_1, e##1_1);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(227,51)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##1_1_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##1_1_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            op##1_1_0 := op#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id306"} $Is(e1#1_0, Tclass.AST.Expr());
            e1##1_1_0 := e1#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id307"} $Is(e2#1_0, Tclass.AST.Expr());
            e2##1_1_0 := e2#1_0;
            call {:id "id308"} Call$$Induction.__default.InductOp__Fail(st##1_1_0, e##1_1_0, op##1_1_0, e1##1_1_0, e2##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(227,9)
            ##st#1_3 := st1#1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#1_3, Tclass.Induction.S(), $Heap);
            assert {:id "id309"} $Is(e2#1_0, Tclass.AST.Expr());
            ##e#1_3 := e2#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_3, Tclass.AST.Expr(), $Heap);
            assume Induction.__default.P__Fail#canCall(st1#1_0, e2#1_0);
            assume Induction.__default.P__Fail#canCall(st1#1_0, e2#1_0);
            assert {:id "id310"} !Induction.__default.P__Fail(st1#1_0, e2#1_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(227,9)
        ##st#1_4 := st1#1_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1_4, Tclass.Induction.S(), $Heap);
        assume {:id "id311"} $Is(e2#1_0, Tclass.AST.Expr());
        ##e#1_4 := e2#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_4, Tclass.AST.Expr(), $Heap);
        assume Induction.__default.P__Fail#canCall(st1#1_0, e2#1_0);
        assume Induction.__default.P__Fail#canCall(st1#1_0, e2#1_0);
        assume {:id "id312"} !Induction.__default.P__Fail(st1#1_0, e2#1_0);
        havoc st2#1_0;
        assume $IsBox(st2#1_0, Tclass.Induction.S())
           && $IsAllocBox(st2#1_0, Tclass.Induction.S(), $Heap);
        havoc v2#1_0;
        assume $IsBox(v2#1_0, Tclass.Induction.V())
           && $IsAllocBox(v2#1_0, Tclass.Induction.V(), $Heap);
        ##st#1_5 := st1#1_0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1_5, Tclass.Induction.S(), $Heap);
        assert {:id "id313"} $Is(e2#1_0, Tclass.AST.Expr());
        ##e#1_5 := e2#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_5, Tclass.AST.Expr(), $Heap);
        assert {:id "id314"} {:subsumption 0} Induction.__default.P(##st#1_5, ##e#1_5);
        assert {:id "id315"} {:subsumption 0} !Induction.__default.P__Fail(##st#1_5, ##e#1_5);
        assume Induction.__default.P__Step#canCall(st1#1_0, e2#1_0);
        assume _System.Tuple2.___hMake2_q(Induction.__default.P__Step(st1#1_0, e2#1_0));
        assume {:id "id316"} let#1_4#0#0 == Induction.__default.P__Step(st1#1_0, e2#1_0);
        assume Induction.__default.P__Step#canCall(st1#1_0, e2#1_0);
        assume Induction.__default.P__Step#canCall(st1#1_0, e2#1_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_4#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V()));
        assume _System.Tuple2.___hMake2_q(let#1_4#0#0);
        assume {:id "id317"} #_System._tuple#2._#Make2(st2#1_0, v2#1_0) == let#1_4#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(230,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_2 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_2 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        op##1_0 := op#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id318"} $Is(e1#1_0, Tclass.AST.Expr());
        e1##1_0 := e1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id319"} $Is(e2#1_0, Tclass.AST.Expr());
        e2##1_0 := e2#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##1_0 := st1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v1##1_0 := v1#1_0;
        call {:id "id320"} Call$$Induction.__default.InductOp__Succ(st##1_2, e##1_2, op##1_0, e1##1_0, e2##1_0, st1##1_0, v1##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Seq(_mcc#13#0_0))
    {
        assume $Is(_mcc#13#0_0, TSeq(Tclass.AST.Expr__Raw()));
        havoc es#0_0;
        assume $Is(es#0_0, TSeq(Tclass.AST.Expr__Raw()))
           && $IsAlloc(es#0_0, TSeq(Tclass.AST.Expr__Raw()), $Heap);
        assume {:id "id261"} let#0_0#0#0 == _mcc#13#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, TSeq(Tclass.AST.Expr__Raw()));
        assume {:id "id262"} es#0_0 == let#0_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(234,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id263"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        es##0_0 := es#0_0;
        assert {:id "id264"} 0 <= LitInt(2) || Seq#Rank(es##0_0) < DtRank(e#0) || LitInt(1) == LitInt(2);
        assert {:id "id265"} Seq#Rank(es##0_0) < DtRank(e#0);
        call {:id "id266"} Call$$Induction.__default.Pes__Satisfied(st##0_0, es##0_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(236,53)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##0_0_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##0_0_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id267"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
            es##0_0_0 := es#0_0;
            call {:id "id268"} Call$$Induction.__default.InductSeq__Fail(st##0_0_0, e##0_0_0, es##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(236,9)
            ##st#0_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#0_0, Tclass.Induction.S(), $Heap);
            assert {:id "id269"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
            ##es#0_0 := es#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#0_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume Induction.__default.Pes__Fail#canCall(st#0, es#0_0);
            assume Induction.__default.Pes__Fail#canCall(st#0, es#0_0);
            assert {:id "id270"} !Induction.__default.Pes__Fail(st#0, es#0_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(236,9)
        ##st#0_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#0_1, Tclass.Induction.S(), $Heap);
        assume {:id "id271"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        ##es#0_1 := es#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#0_1, TSeq(Tclass.AST.Expr()), $Heap);
        assume Induction.__default.Pes__Fail#canCall(st#0, es#0_0);
        assume Induction.__default.Pes__Fail#canCall(st#0, es#0_0);
        assume {:id "id272"} !Induction.__default.Pes__Fail(st#0, es#0_0);
        havoc st1#0_0;
        assume $IsBox(st1#0_0, Tclass.Induction.S())
           && $IsAllocBox(st1#0_0, Tclass.Induction.S(), $Heap);
        havoc vs#0_0;
        assume $IsBox(vs#0_0, Tclass.Induction.VS())
           && $IsAllocBox(vs#0_0, Tclass.Induction.VS(), $Heap);
        ##st#0_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#0_2, Tclass.Induction.S(), $Heap);
        assert {:id "id273"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        ##es#0_2 := es#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#0_2, TSeq(Tclass.AST.Expr()), $Heap);
        assert {:id "id274"} {:subsumption 0} Induction.__default.Pes(##st#0_2, ##es#0_2);
        assert {:id "id275"} {:subsumption 0} !Induction.__default.Pes__Fail(##st#0_2, ##es#0_2);
        assume Induction.__default.Pes__Step#canCall(st#0, es#0_0);
        assume _System.Tuple2.___hMake2_q(Induction.__default.Pes__Step(st#0, es#0_0));
        assume {:id "id276"} let#0_1#0#0 == Induction.__default.Pes__Step(st#0, es#0_0);
        assume Induction.__default.Pes__Step#canCall(st#0, es#0_0);
        assume Induction.__default.Pes__Step#canCall(st#0, es#0_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.VS()));
        assume _System.Tuple2.___hMake2_q(let#0_1#0#0);
        assume {:id "id277"} #_System._tuple#2._#Make2(st1#0_0, vs#0_0) == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(239,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_1 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id278"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        es##0_1 := es#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##0_0 := st1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        vs##0_0 := vs#0_0;
        call {:id "id279"} Call$$Induction.__default.InductSeq__Succ(st##0_1, e##0_0, es##0_1, st1##0_0, vs##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Induction.Pes_Satisfied (well-formedness)"} CheckWellFormed$$Induction.__default.Pes__Satisfied(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.Pes_Satisfied (call)"} Call$$Induction.__default.Pes__Satisfied(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id442"} Induction.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.Pes_Satisfied (correctness)"} Impl$$Induction.__default.Pes__Satisfied(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id443"} Induction.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.Pes_Satisfied (correctness)"} Impl$$Induction.__default.Pes__Satisfied(st#0: Box, es#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#1: Box;
  var ##es#1: Seq;
  var st##0_0: Box;
  var es##0_0: Seq;
  var st##1_0: Box;
  var es##1_0: Seq;

    // AddMethodImpl: Pes_Satisfied, Impl$$Induction.__default.Pes__Satisfied
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(288,5)
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.Induction.S(), $Heap);
    ##es#1 := es#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#1, TSeq(Tclass.AST.Expr()), $Heap);
    assume Induction.__default.Pes__Fail#canCall(st#0, es#0);
    assume Induction.__default.Pes__Fail#canCall(st#0, es#0);
    if (Induction.__default.Pes__Fail(st#0, es#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(289,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        es##0_0 := es#0;
        call {:id "id444"} Call$$Induction.__default.Pes__Fail__Sound(st##0_0, es##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(292,25)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        es##1_0 := es#0;
        assert {:id "id445"} 0 <= LitInt(1) || Seq#Rank(es##1_0) < Seq#Rank(es#0) || LitInt(0) == LitInt(1);
        assert {:id "id446"} Seq#Rank(es##1_0) < Seq#Rank(es#0)
           || (Seq#Rank(es##1_0) == Seq#Rank(es#0) && LitInt(0) < LitInt(1));
        call {:id "id447"} Call$$Induction.__default.Pes__Satisfied__Succ(st##1_0, es##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "Induction.Pes_Satisfied_Succ (well-formedness)"} CheckWellFormed$$Induction.__default.Pes__Satisfied__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Induction.Pes_Satisfied_Succ (call)"} Call$$Induction.__default.Pes__Satisfied__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  // user-defined preconditions
  requires {:id "id450"} !Induction.__default.Pes__Fail(st#0, es#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id451"} Induction.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Induction.Pes_Satisfied_Succ (correctness)"} Impl$$Induction.__default.Pes__Satisfied__Succ(st#0: Box
       where $IsBox(st#0, Tclass.Induction.S())
         && $IsAllocBox(st#0, Tclass.Induction.S(), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id452"} !Induction.__default.Pes__Fail(st#0, es#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures Induction.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id453"} Induction.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Induction.Pes_Satisfied_Succ (correctness)"} Impl$$Induction.__default.Pes__Satisfied__Succ(st#0: Box, es#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var st##0_0: Box;
  var ##st#0_0: Box;
  var ##es#0_0: Seq;
  var ##st'#0_0: Box;
  var ##vs#0_0: Box;
  var st##0_1: Box;
  var es##0_0: Seq;
  var st'##0_0: Box;
  var vs##0_0: Box;
  var e#1_0: DatatypeType
     where $Is(e#1_0, Tclass.AST.Expr()) && $IsAlloc(e#1_0, Tclass.AST.Expr(), $Heap);
  var es'#1_0: Seq
     where $Is(es'#1_0, TSeq(Tclass.AST.Expr()))
       && $IsAlloc(es'#1_0, TSeq(Tclass.AST.Expr()), $Heap);
  var st##1_0: Box;
  var e##1_0: DatatypeType;
  var ##st#1_0: Box;
  var ##e#1_0: DatatypeType;
  var st##1_0_0: Box;
  var e##1_0_0: DatatypeType;
  var es##1_0_0: Seq;
  var ##st#1_0_0: Box;
  var ##es#1_0_0: Seq;
  var st##1_0_1: Box;
  var es##1_0_1: Seq;
  var st1#1_1_0: Box;
  var v#1_1_0: Box;
  var let#1_1_0#0#0: DatatypeType;
  var ##st#1_1_0: Box;
  var ##e#1_1_0: DatatypeType;
  var st##1_1_0: Box;
  var es##1_1_0: Seq;
  var ##st#1_1_1: Box;
  var ##es#1_1_0: Seq;
  var st##1_1_0_0: Box;
  var e##1_1_0_0: DatatypeType;
  var es##1_1_0_0: Seq;
  var ##st#1_1_0_0: Box;
  var ##es#1_1_0_0: Seq;
  var st##1_1_0_1: Box;
  var es##1_1_0_1: Seq;
  var st2#1_1_1_0: Box;
  var vs#1_1_1_0: Box;
  var let#1_1_1_0#0#0: DatatypeType;
  var ##st#1_1_1_0: Box;
  var ##es#1_1_1_0: Seq;
  var st##1_1_1_0: Box;
  var e##1_1_1_0: DatatypeType;
  var es##1_1_1_0: Seq;
  var ##st#1_1_1_1: Box;
  var ##es#1_1_1_1: Seq;
  var ##st'#1_1_1_0: Box;
  var ##vs#1_1_1_0: Box;
  var ##v#1_1_1_0: Box;
  var ##vs#1_1_1_1: Box;
  var st##1_1_1_1: Box;
  var es##1_1_1_1: Seq;
  var st'##1_1_1_0: Box;
  var vs##1_1_1_0: Box;
  var ##v#1_1_1_1: Box;
  var ##vs#1_1_1_2: Box;

    // AddMethodImpl: Pes_Satisfied_Succ, Impl$$Induction.__default.Pes__Satisfied__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(301,5)
    assume true;
    if (Seq#Equal(es#0, Seq#Empty(): Seq))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(302,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        call {:id "id454"} Call$$Induction.__default.InductExprs__Nil(st##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(303,7)
        ##st#0_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#0_0, Tclass.Induction.S(), $Heap);
        ##es#0_0 := Lit(Seq#Empty(): Seq);
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#0_0, TSeq(Tclass.AST.Expr()), $Heap);
        ##st'#0_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0_0, Tclass.Induction.S(), $Heap);
        ##vs#0_0 := Induction.__default.NilVS();
        // assume allocatedness for argument to function
        assume $IsAllocBox(##vs#0_0, Tclass.Induction.VS(), $Heap);
        assume Induction.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, Induction.__default.NilVS());
        assume Induction.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, Induction.__default.NilVS());
        assert {:id "id455"} Induction.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, Induction.__default.NilVS());
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(304,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_1 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        es##0_0 := Lit(Seq#Empty(): Seq);
        assume true;
        // ProcessCallStmt: CheckSubrange
        st'##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        vs##0_0 := Induction.__default.NilVS();
        call {:id "id456"} Call$$Induction.__default.Pes__Succ__Sound(st##0_1, es##0_0, st'##0_0, vs##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(307,13)
        assume true;
        assert {:id "id457"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(es#0);
        assume true;
        e#1_0 := $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(308,15)
        assume true;
        assert {:id "id459"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(es#0);
        assume true;
        es'#1_0 := Seq#Drop(es#0, LitInt(1));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(309,7)
        assume true;
        assert {:id "id461"} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), es#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(311,18)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_0 := e#1_0;
        assert {:id "id462"} 0 <= LitInt(0) || DtRank(e##1_0) < Seq#Rank(es#0) || LitInt(3) == LitInt(0);
        assert {:id "id463"} DtRank(e##1_0) < Seq#Rank(es#0);
        call {:id "id464"} Call$$Induction.__default.P__Satisfied(st##1_0, e##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(313,7)
        ##st#1_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1_0, Tclass.Induction.S(), $Heap);
        ##e#1_0 := e#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_0, Tclass.AST.Expr(), $Heap);
        assume Induction.__default.P__Fail#canCall(st#0, e#1_0);
        assume Induction.__default.P__Fail#canCall(st#0, e#1_0);
        if (Induction.__default.P__Fail(st#0, e#1_0))
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(314,25)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##1_0_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##1_0_0 := e#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            es##1_0_0 := es'#1_0;
            call {:id "id465"} Call$$Induction.__default.InductExprs__Cons(st##1_0_0, e##1_0_0, es##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(315,9)
            ##st#1_0_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#1_0_0, Tclass.Induction.S(), $Heap);
            ##es#1_0_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#1_0_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume Induction.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
            assume Induction.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
            assert {:id "id466"} Induction.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(316,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##1_0_1 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            es##1_0_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
            call {:id "id467"} Call$$Induction.__default.Pes__Fail__Sound(st##1_0_1, es##1_0_1);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            havoc st1#1_1_0;
            assume $IsBox(st1#1_1_0, Tclass.Induction.S())
               && $IsAllocBox(st1#1_1_0, Tclass.Induction.S(), $Heap);
            havoc v#1_1_0;
            assume $IsBox(v#1_1_0, Tclass.Induction.V())
               && $IsAllocBox(v#1_1_0, Tclass.Induction.V(), $Heap);
            ##st#1_1_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#1_1_0, Tclass.Induction.S(), $Heap);
            ##e#1_1_0 := e#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_1_0, Tclass.AST.Expr(), $Heap);
            assert {:id "id468"} {:subsumption 0} Induction.__default.P(##st#1_1_0, ##e#1_1_0);
            assert {:id "id469"} {:subsumption 0} !Induction.__default.P__Fail(##st#1_1_0, ##e#1_1_0);
            assume Induction.__default.P__Step#canCall(st#0, e#1_0);
            assume _System.Tuple2.___hMake2_q(Induction.__default.P__Step(st#0, e#1_0));
            assume {:id "id470"} let#1_1_0#0#0 == Induction.__default.P__Step(st#0, e#1_0);
            assume Induction.__default.P__Step#canCall(st#0, e#1_0);
            assume Induction.__default.P__Step#canCall(st#0, e#1_0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_1_0#0#0, Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.V()));
            assume _System.Tuple2.___hMake2_q(let#1_1_0#0#0);
            assume {:id "id471"} #_System._tuple#2._#Make2(st1#1_1_0, v#1_1_0) == let#1_1_0#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(320,22)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##1_1_0 := st1#1_1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            es##1_1_0 := es'#1_0;
            assert {:id "id472"} 0 <= LitInt(0) || Seq#Rank(es##1_1_0) < Seq#Rank(es#0) || LitInt(1) == LitInt(0);
            assert {:id "id473"} Seq#Rank(es##1_1_0) < Seq#Rank(es#0)
               || (Seq#Rank(es##1_1_0) == Seq#Rank(es#0) && LitInt(1) < LitInt(0));
            call {:id "id474"} Call$$Induction.__default.Pes__Satisfied(st##1_1_0, es##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(322,9)
            ##st#1_1_1 := st1#1_1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#1_1_1, Tclass.Induction.S(), $Heap);
            ##es#1_1_0 := es'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#1_1_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume Induction.__default.Pes__Fail#canCall(st1#1_1_0, es'#1_0);
            assume Induction.__default.Pes__Fail#canCall(st1#1_1_0, es'#1_0);
            if (Induction.__default.Pes__Fail(st1#1_1_0, es'#1_0))
            {
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(323,27)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##1_1_0_0 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                e##1_1_0_0 := e#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                es##1_1_0_0 := es'#1_0;
                call {:id "id475"} Call$$Induction.__default.InductExprs__Cons(st##1_1_0_0, e##1_1_0_0, es##1_1_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(324,11)
                ##st#1_1_0_0 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#1_1_0_0, Tclass.Induction.S(), $Heap);
                ##es#1_1_0_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##es#1_1_0_0, TSeq(Tclass.AST.Expr()), $Heap);
                assume Induction.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
                assume Induction.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
                assert {:id "id476"} Induction.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(325,25)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##1_1_0_1 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                es##1_1_0_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
                call {:id "id477"} Call$$Induction.__default.Pes__Fail__Sound(st##1_1_0_1, es##1_1_0_1);
                // TrCallStmt: After ProcessCallStmt
            }
            else
            {
                havoc st2#1_1_1_0;
                assume $IsBox(st2#1_1_1_0, Tclass.Induction.S())
                   && $IsAllocBox(st2#1_1_1_0, Tclass.Induction.S(), $Heap);
                havoc vs#1_1_1_0;
                assume $IsBox(vs#1_1_1_0, Tclass.Induction.VS())
                   && $IsAllocBox(vs#1_1_1_0, Tclass.Induction.VS(), $Heap);
                ##st#1_1_1_0 := st1#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#1_1_1_0, Tclass.Induction.S(), $Heap);
                ##es#1_1_1_0 := es'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##es#1_1_1_0, TSeq(Tclass.AST.Expr()), $Heap);
                assert {:id "id478"} {:subsumption 0} Induction.__default.Pes(##st#1_1_1_0, ##es#1_1_1_0);
                assert {:id "id479"} {:subsumption 0} !Induction.__default.Pes__Fail(##st#1_1_1_0, ##es#1_1_1_0);
                assume Induction.__default.Pes__Step#canCall(st1#1_1_0, es'#1_0);
                assume _System.Tuple2.___hMake2_q(Induction.__default.Pes__Step(st1#1_1_0, es'#1_0));
                assume {:id "id480"} let#1_1_1_0#0#0 == Induction.__default.Pes__Step(st1#1_1_0, es'#1_0);
                assume Induction.__default.Pes__Step#canCall(st1#1_1_0, es'#1_0);
                assume Induction.__default.Pes__Step#canCall(st1#1_1_0, es'#1_0);
                // CheckWellformedWithResult: any expression
                assume $Is(let#1_1_1_0#0#0, 
                  Tclass._System.Tuple2(Tclass.Induction.S(), Tclass.Induction.VS()));
                assume _System.Tuple2.___hMake2_q(let#1_1_1_0#0#0);
                assume {:id "id481"} #_System._tuple#2._#Make2(st2#1_1_1_0, vs#1_1_1_0) == let#1_1_1_0#0#0;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(329,27)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##1_1_1_0 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                e##1_1_1_0 := e#1_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                es##1_1_1_0 := es'#1_0;
                call {:id "id482"} Call$$Induction.__default.InductExprs__Cons(st##1_1_1_0, e##1_1_1_0, es##1_1_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(330,11)
                ##st#1_1_1_1 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#1_1_1_1, Tclass.Induction.S(), $Heap);
                ##es#1_1_1_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##es#1_1_1_1, TSeq(Tclass.AST.Expr()), $Heap);
                ##st'#1_1_1_0 := st2#1_1_1_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st'#1_1_1_0, Tclass.Induction.S(), $Heap);
                ##v#1_1_1_0 := v#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##v#1_1_1_0, Tclass.Induction.V(), $Heap);
                ##vs#1_1_1_1 := vs#1_1_1_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##vs#1_1_1_1, Tclass.Induction.VS(), $Heap);
                assume Induction.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0);
                ##vs#1_1_1_0 := Induction.__default.AppendValue(v#1_1_0, vs#1_1_1_0);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##vs#1_1_1_0, Tclass.Induction.VS(), $Heap);
                assume Induction.__default.Pes__Succ#canCall(st#0, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), 
                  st2#1_1_1_0, 
                  Induction.__default.AppendValue(v#1_1_0, vs#1_1_1_0));
                assume Induction.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0)
                   && Induction.__default.Pes__Succ#canCall(st#0, 
                    Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), 
                    st2#1_1_1_0, 
                    Induction.__default.AppendValue(v#1_1_0, vs#1_1_1_0));
                assert {:id "id483"} Induction.__default.Pes__Succ(st#0, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), 
                  st2#1_1_1_0, 
                  Induction.__default.AppendValue(v#1_1_0, vs#1_1_1_0));
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(331,25)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##1_1_1_1 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                es##1_1_1_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                st'##1_1_1_0 := st2#1_1_1_0;
                ##v#1_1_1_1 := v#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##v#1_1_1_1, Tclass.Induction.V(), $Heap);
                ##vs#1_1_1_2 := vs#1_1_1_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##vs#1_1_1_2, Tclass.Induction.VS(), $Heap);
                assume Induction.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0);
                assume Induction.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0);
                // ProcessCallStmt: CheckSubrange
                vs##1_1_1_0 := Induction.__default.AppendValue(v#1_1_0, vs#1_1_1_0);
                call {:id "id484"} Call$$Induction.__default.Pes__Succ__Sound(st##1_1_1_1, es##1_1_1_1, st'##1_1_1_0, vs##1_1_1_0);
                // TrCallStmt: After ProcessCallStmt
            }
        }
    }
}



const unique class.Induction.S: ClassName;

const unique class.Induction.V: ClassName;

const unique class.Induction.VS: ClassName;

const unique class.Utils.__default: ClassName;

// function declaration for Utils._default.Max
function Utils.__default.Max(x#0: int, y#0: int) : int;

function Utils.__default.Max#canCall(x#0: int, y#0: int) : bool;

function Utils.__default.Max#requires(int, int) : bool;

// #requires axiom for Utils.__default.Max
axiom (forall x#0: int, y#0: int :: 
  { Utils.__default.Max#requires(x#0, y#0) } 
  Utils.__default.Max#requires(x#0, y#0) == true);

// definition axiom for Utils.__default.Max (revealed)
axiom {:id "id485"} (forall x#0: int, y#0: int :: 
  { Utils.__default.Max(x#0, y#0) } 
  Utils.__default.Max(x#0, y#0) == (if x#0 > y#0 then x#0 else y#0));

// definition axiom for Utils.__default.Max for all literals (revealed)
axiom {:id "id486"} (forall x#0: int, y#0: int :: 
  {:weight 3} { Utils.__default.Max(LitInt(x#0), LitInt(y#0)) } 
  Utils.__default.Max(LitInt(x#0), LitInt(y#0))
     == (if x#0 > y#0 then x#0 else y#0));

// function declaration for Utils._default.MaxF
function Utils.__default.MaxF(Utils._default.MaxF$T: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    $heap: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int)
   : int;

function Utils.__default.MaxF#canCall(Utils._default.MaxF$T: Ty, 
    $heap: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int)
   : bool;

// layer synonym axiom
axiom (forall Utils._default.MaxF$T: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    $Heap: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int :: 
  { Utils.__default.MaxF(Utils._default.MaxF$T, $LS($ly), $reveal, $Heap, f#0, ts#0, default#0) } 
  Utils.__default.MaxF(Utils._default.MaxF$T, $LS($ly), $reveal, $Heap, f#0, ts#0, default#0)
     == Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $Heap, f#0, ts#0, default#0));

// fuel synonym axiom
axiom (forall Utils._default.MaxF$T: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    $Heap: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int :: 
  { Utils.__default.MaxF(Utils._default.MaxF$T, AsFuelBottom($ly), $reveal, $Heap, f#0, ts#0, default#0) } 
  Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $Heap, f#0, ts#0, default#0)
     == Utils.__default.MaxF(Utils._default.MaxF$T, $LZ, $reveal, $Heap, f#0, ts#0, default#0));

// frame axiom for Utils.__default.MaxF
axiom (forall Utils._default.MaxF$T: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    $h0: Heap, 
    $h1: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $h1, f#0, ts#0, default#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (Utils.__default.MaxF#canCall(Utils._default.MaxF$T, $h0, f#0, ts#0, default#0)
         || ($Is(f#0, Tclass._System.___hFunc1(Utils._default.MaxF$T, TInt))
           && $Is(ts#0, TSeq(Utils._default.MaxF$T))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (exists x#0: Box, y#0: ref :: 
            { Set#IsMember(Reads1(Utils._default.MaxF$T, TInt, $h0, f#0, x#0), $Box(y#0)) } 
            $IsBox(x#0, Utils._default.MaxF$T)
               && $Is(y#0, Tclass._System.object?())
               && 
              Seq#Contains(ts#0, x#0)
               && Set#IsMember(Reads1(Utils._default.MaxF$T, TInt, $h0, f#0, x#0), $Box(y#0))
               && $Box($o) == $Box(y#0))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $h0, f#0, ts#0, default#0)
       == Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $h1, f#0, ts#0, default#0));

// consequence axiom for Utils.__default.MaxF
axiom (forall Utils._default.MaxF$T: Ty, 
    $ly: LayerType, 
    $reveal: bool, 
    $Heap: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int :: 
  { Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $Heap, f#0, ts#0, default#0) } 
  Utils.__default.MaxF#canCall(Utils._default.MaxF$T, $Heap, f#0, ts#0, default#0)
       || (
        $IsGoodHeap($Heap)
         && 
        $Is(f#0, Tclass._System.___hFunc1(Utils._default.MaxF$T, TInt))
         && $IsAlloc(f#0, Tclass._System.___hFunc1(Utils._default.MaxF$T, TInt), $Heap)
         && 
        $Is(ts#0, TSeq(Utils._default.MaxF$T))
         && $IsAlloc(ts#0, TSeq(Utils._default.MaxF$T), $Heap)
         && 
        (forall t#0: Box :: 
          { Requires1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#0) } 
            { Seq#Contains(ts#0, t#0) } 
          $IsBox(t#0, Utils._default.MaxF$T) && Seq#Contains(ts#0, t#0)
             ==> Requires1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#0))
         && (forall t#1: Box :: 
          { $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#1)): int } 
            { Seq#Contains(ts#0, t#1) } 
          $IsBox(t#1, Utils._default.MaxF$T) && Seq#Contains(ts#0, t#1)
             ==> default#0 <= $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#1)): int))
     ==> (if Seq#Equal(ts#0, Seq#Empty(): Seq)
         then Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $Heap, f#0, ts#0, default#0)
           == default#0
         else (exists t#2: Box :: 
          { $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#2)): int } 
            { Seq#Contains(ts#0, t#2) } 
          $IsBox(t#2, Utils._default.MaxF$T)
             && Seq#Contains(ts#0, t#2)
             && $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#2)): int
               == Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $Heap, f#0, ts#0, default#0)))
       && (forall t#3: Box :: 
        { $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#3)): int } 
          { Seq#Contains(ts#0, t#3) } 
        $IsBox(t#3, Utils._default.MaxF$T) && Seq#Contains(ts#0, t#3)
           ==> $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#3)): int
             <= Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $Heap, f#0, ts#0, default#0))
       && default#0
         <= Utils.__default.MaxF(Utils._default.MaxF$T, $ly, $reveal, $Heap, f#0, ts#0, default#0));

function Utils.__default.MaxF#requires(Ty, LayerType, Heap, HandleType, Seq, int) : bool;

// #requires axiom for Utils.__default.MaxF
axiom (forall Utils._default.MaxF$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int :: 
  { Utils.__default.MaxF#requires(Utils._default.MaxF$T, $ly, $Heap, f#0, ts#0, default#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(f#0, Tclass._System.___hFunc1(Utils._default.MaxF$T, TInt))
       && $Is(ts#0, TSeq(Utils._default.MaxF$T))
     ==> Utils.__default.MaxF#requires(Utils._default.MaxF$T, $ly, $Heap, f#0, ts#0, default#0)
       == ((forall t#4: Box :: 
          { Requires1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#4) } 
            { Seq#Contains(ts#0, t#4) } 
          $IsBox(t#4, Utils._default.MaxF$T) && Seq#Contains(ts#0, t#4)
             ==> Requires1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#4))
         && (forall t#5: Box :: 
          { $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#5)): int } 
            { Seq#Contains(ts#0, t#5) } 
          $IsBox(t#5, Utils._default.MaxF$T) && Seq#Contains(ts#0, t#5)
             ==> default#0 <= $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#5)): int)));

// definition axiom for Utils.__default.MaxF (revealed)
axiom {:id "id487"} (forall Utils._default.MaxF$T: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    f#0: HandleType, 
    ts#0: Seq, 
    default#0: int :: 
  { Utils.__default.MaxF(Utils._default.MaxF$T, $LS($ly), true, $Heap, f#0, ts#0, default#0), $IsGoodHeap($Heap) } 
  Utils.__default.MaxF#canCall(Utils._default.MaxF$T, $Heap, f#0, ts#0, default#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(f#0, Tclass._System.___hFunc1(Utils._default.MaxF$T, TInt))
         && $Is(ts#0, TSeq(Utils._default.MaxF$T))
         && 
        (forall t#4: Box :: 
          { Requires1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#4) } 
            { Seq#Contains(ts#0, t#4) } 
          $IsBox(t#4, Utils._default.MaxF$T) && Seq#Contains(ts#0, t#4)
             ==> Requires1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#4))
         && (forall t#5: Box :: 
          { $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#5)): int } 
            { Seq#Contains(ts#0, t#5) } 
          $IsBox(t#5, Utils._default.MaxF$T) && Seq#Contains(ts#0, t#5)
             ==> default#0 <= $Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, t#5)): int))
     ==> (!Seq#Equal(ts#0, Seq#Empty(): Seq)
         ==> Utils.__default.MaxF#canCall(Utils._default.MaxF$T, $Heap, f#0, Seq#Drop(ts#0, LitInt(1)), default#0)
           && Utils.__default.Max#canCall($Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, Seq#Index(ts#0, LitInt(0)))): int, 
            Utils.__default.MaxF(Utils._default.MaxF$T, 
              $ly, 
              reveal_Utils._default.MaxF, 
              $Heap, 
              f#0, 
              Seq#Drop(ts#0, LitInt(1)), 
              default#0)))
       && Utils.__default.MaxF(Utils._default.MaxF$T, $LS($ly), true, $Heap, f#0, ts#0, default#0)
         == (if Seq#Equal(ts#0, Seq#Empty(): Seq)
           then default#0
           else Utils.__default.Max($Unbox(Apply1(Utils._default.MaxF$T, TInt, $Heap, f#0, Seq#Index(ts#0, LitInt(0)))): int, 
            Utils.__default.MaxF(Utils._default.MaxF$T, 
              $ly, 
              reveal_Utils._default.MaxF, 
              $Heap, 
              f#0, 
              Seq#Drop(ts#0, LitInt(1)), 
              default#0))));

// Constructor function declaration
function #Utils.Result.Success(Box) : DatatypeType;

const unique ##Utils.Result.Success: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #Utils.Result.Success(a#0#0#0) } 
  DatatypeCtorId(#Utils.Result.Success(a#0#0#0)) == ##Utils.Result.Success);
}

function Utils.Result.Success_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Utils.Result.Success_q(d) } 
  Utils.Result.Success_q(d) <==> DatatypeCtorId(d) == ##Utils.Result.Success);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Utils.Result.Success_q(d) } 
  Utils.Result.Success_q(d)
     ==> (exists a#1#0#0: Box :: d == #Utils.Result.Success(a#1#0#0)));

function Tclass.Utils.Result(Ty) : Ty;

const unique Tagclass.Utils.Result: TyTag;

// Tclass.Utils.Result Tag
axiom (forall Utils.Result$T: Ty :: 
  { Tclass.Utils.Result(Utils.Result$T) } 
  Tag(Tclass.Utils.Result(Utils.Result$T)) == Tagclass.Utils.Result
     && TagFamily(Tclass.Utils.Result(Utils.Result$T)) == tytagFamily$Result);

function Tclass.Utils.Result_0(Ty) : Ty;

// Tclass.Utils.Result injectivity 0
axiom (forall Utils.Result$T: Ty :: 
  { Tclass.Utils.Result(Utils.Result$T) } 
  Tclass.Utils.Result_0(Tclass.Utils.Result(Utils.Result$T)) == Utils.Result$T);

// Box/unbox axiom for Tclass.Utils.Result
axiom (forall Utils.Result$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Utils.Result(Utils.Result$T)) } 
  $IsBox(bx, Tclass.Utils.Result(Utils.Result$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Utils.Result(Utils.Result$T)));

// Constructor $Is
axiom (forall Utils.Result$T: Ty, a#2#0#0: Box :: 
  { $Is(#Utils.Result.Success(a#2#0#0), Tclass.Utils.Result(Utils.Result$T)) } 
  $Is(#Utils.Result.Success(a#2#0#0), Tclass.Utils.Result(Utils.Result$T))
     <==> $IsBox(a#2#0#0, Utils.Result$T));

// Constructor $IsAlloc
axiom (forall Utils.Result$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Utils.Result.Success(a#2#0#0), Tclass.Utils.Result(Utils.Result$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Utils.Result.Success(a#2#0#0), Tclass.Utils.Result(Utils.Result$T), $h)
       <==> $IsAllocBox(a#2#0#0, Utils.Result$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Utils.Result$T: Ty, $h: Heap :: 
  { $IsAllocBox(Utils.Result.value(d), Utils.Result$T, $h) } 
  $IsGoodHeap($h)
       && 
      Utils.Result.Success_q(d)
       && $IsAlloc(d, Tclass.Utils.Result(Utils.Result$T), $h)
     ==> $IsAllocBox(Utils.Result.value(d), Utils.Result$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #Utils.Result.Success(Lit(a#3#0#0)) } 
  #Utils.Result.Success(Lit(a#3#0#0)) == Lit(#Utils.Result.Success(a#3#0#0)));

function Utils.Result.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #Utils.Result.Success(a#4#0#0) } 
  Utils.Result.value(#Utils.Result.Success(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #Utils.Result.Success(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#Utils.Result.Success(a#5#0#0)));

// Constructor function declaration
function #Utils.Result.Failure() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Utils.Result.Failure()) == ##Utils.Result.Failure;
// Constructor literal
axiom #Utils.Result.Failure() == Lit(#Utils.Result.Failure());
}

const unique ##Utils.Result.Failure: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Utils.Result.Failure()) == ##Utils.Result.Failure;
}

function Utils.Result.Failure_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Utils.Result.Failure_q(d) } 
  Utils.Result.Failure_q(d) <==> DatatypeCtorId(d) == ##Utils.Result.Failure);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Utils.Result.Failure_q(d) } 
  Utils.Result.Failure_q(d) ==> d == #Utils.Result.Failure());

// Constructor $Is
axiom (forall Utils.Result$T: Ty :: 
  { $Is(#Utils.Result.Failure(), Tclass.Utils.Result(Utils.Result$T)) } 
  $Is(#Utils.Result.Failure(), Tclass.Utils.Result(Utils.Result$T)));

// Constructor $IsAlloc
axiom (forall Utils.Result$T: Ty, $h: Heap :: 
  { $IsAlloc(#Utils.Result.Failure(), Tclass.Utils.Result(Utils.Result$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Utils.Result.Failure(), Tclass.Utils.Result(Utils.Result$T), $h));

// Depth-one case-split function
function $IsA#Utils.Result(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Utils.Result(d) } 
  $IsA#Utils.Result(d) ==> Utils.Result.Success_q(d) || Utils.Result.Failure_q(d));

// Questionmark data type disjunctivity
axiom (forall Utils.Result$T: Ty, d: DatatypeType :: 
  { Utils.Result.Failure_q(d), $Is(d, Tclass.Utils.Result(Utils.Result$T)) } 
    { Utils.Result.Success_q(d), $Is(d, Tclass.Utils.Result(Utils.Result$T)) } 
  $Is(d, Tclass.Utils.Result(Utils.Result$T))
     ==> Utils.Result.Success_q(d) || Utils.Result.Failure_q(d));

// Datatype extensional equality declaration
function Utils.Result#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Utils.Result.Success
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Utils.Result#Equal(a, b), Utils.Result.Success_q(a) } 
    { Utils.Result#Equal(a, b), Utils.Result.Success_q(b) } 
  Utils.Result.Success_q(a) && Utils.Result.Success_q(b)
     ==> (Utils.Result#Equal(a, b) <==> Utils.Result.value(a) == Utils.Result.value(b)));

// Datatype extensional equality definition: #Utils.Result.Failure
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Utils.Result#Equal(a, b), Utils.Result.Failure_q(a) } 
    { Utils.Result#Equal(a, b), Utils.Result.Failure_q(b) } 
  Utils.Result.Failure_q(a) && Utils.Result.Failure_q(b)
     ==> Utils.Result#Equal(a, b));

// Datatype extensionality axiom: Utils.Result
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Utils.Result#Equal(a, b) } 
  Utils.Result#Equal(a, b) <==> a == b);

const unique class.Utils.Result: ClassName;

// function declaration for Utils.Result.IsFailure
function Utils.Result.IsFailure(Utils.Result$T: Ty, this: DatatypeType) : bool;

function Utils.Result.IsFailure#canCall(Utils.Result$T: Ty, this: DatatypeType) : bool;

function Utils.Result.IsFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for Utils.Result.IsFailure
axiom (forall Utils.Result$T: Ty, this: DatatypeType :: 
  { Utils.Result.IsFailure#requires(Utils.Result$T, this) } 
  $Is(this, Tclass.Utils.Result(Utils.Result$T))
     ==> Utils.Result.IsFailure#requires(Utils.Result$T, this) == true);

// definition axiom for Utils.Result.IsFailure (revealed)
axiom {:id "id488"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
  { Utils.Result.IsFailure(Utils.Result$T, this) } 
  Utils.Result.IsFailure#canCall(Utils.Result$T, this)
       || $Is(this, Tclass.Utils.Result(Utils.Result$T))
     ==> Utils.Result.IsFailure(Utils.Result$T, this) == Utils.Result.Failure_q(this));

// definition axiom for Utils.Result.IsFailure for all literals (revealed)
axiom {:id "id489"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
  {:weight 3} { Utils.Result.IsFailure(Utils.Result$T, Lit(this)) } 
  Utils.Result.IsFailure#canCall(Utils.Result$T, Lit(this))
       || $Is(this, Tclass.Utils.Result(Utils.Result$T))
     ==> Utils.Result.IsFailure(Utils.Result$T, Lit(this))
       == Lit(Utils.Result.Failure_q(Lit(this))));

// function declaration for Utils.Result.PropagateFailure
function Utils.Result.PropagateFailure(Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType)
   : DatatypeType;

function Utils.Result.PropagateFailure#canCall(Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType)
   : bool;

// consequence axiom for Utils.Result.PropagateFailure
axiom (forall Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType :: 
  { Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this) } 
  Utils.Result.PropagateFailure#canCall(Utils.Result$T, Utils.Result.PropagateFailure$U, this)
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T)) && Utils.Result.Failure_q(this))
     ==> $Is(Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this), 
      Tclass.Utils.Result(Utils.Result.PropagateFailure$U)));

// alloc consequence axiom for Utils.Result.PropagateFailure
axiom (forall $Heap: Heap, 
    Utils.Result$T: Ty, 
    Utils.Result.PropagateFailure$U: Ty, 
    this: DatatypeType :: 
  { $IsAlloc(Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this), 
      Tclass.Utils.Result(Utils.Result.PropagateFailure$U), 
      $Heap) } 
  (Utils.Result.PropagateFailure#canCall(Utils.Result$T, Utils.Result.PropagateFailure$U, this)
         || ($IsAlloc(this, Tclass.Utils.Result(Utils.Result$T), $Heap)
           && Utils.Result.Failure_q(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this), 
      Tclass.Utils.Result(Utils.Result.PropagateFailure$U), 
      $Heap));

function Utils.Result.PropagateFailure#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for Utils.Result.PropagateFailure
axiom (forall Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType :: 
  { Utils.Result.PropagateFailure#requires(Utils.Result$T, Utils.Result.PropagateFailure$U, this) } 
  $Is(this, Tclass.Utils.Result(Utils.Result$T))
     ==> Utils.Result.PropagateFailure#requires(Utils.Result$T, Utils.Result.PropagateFailure$U, this)
       == Utils.Result.Failure_q(this));

// definition axiom for Utils.Result.PropagateFailure (revealed)
axiom {:id "id490"} (forall Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType :: 
  { Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this) } 
  Utils.Result.PropagateFailure#canCall(Utils.Result$T, Utils.Result.PropagateFailure$U, this)
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T)) && Utils.Result.Failure_q(this))
     ==> Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this)
       == Lit(#Utils.Result.Failure()));

// definition axiom for Utils.Result.PropagateFailure for all literals (revealed)
axiom {:id "id491"} (forall Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType :: 
  {:weight 3} { Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, Lit(this)) } 
  Utils.Result.PropagateFailure#canCall(Utils.Result$T, Utils.Result.PropagateFailure$U, Lit(this))
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T))
         && Lit(Utils.Result.Failure_q(Lit(this))))
     ==> Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, Lit(this))
       == Lit(#Utils.Result.Failure()));

// function declaration for Utils.Result.Extract
function Utils.Result.Extract(Utils.Result$T: Ty, this: DatatypeType) : Box;

function Utils.Result.Extract#canCall(Utils.Result$T: Ty, this: DatatypeType) : bool;

// consequence axiom for Utils.Result.Extract
axiom (forall Utils.Result$T: Ty, this: DatatypeType :: 
  { Utils.Result.Extract(Utils.Result$T, this) } 
  Utils.Result.Extract#canCall(Utils.Result$T, this)
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T)) && Utils.Result.Success_q(this))
     ==> $IsBox(Utils.Result.Extract(Utils.Result$T, this), Utils.Result$T));

// alloc consequence axiom for Utils.Result.Extract
axiom (forall $Heap: Heap, Utils.Result$T: Ty, this: DatatypeType :: 
  { $IsAllocBox(Utils.Result.Extract(Utils.Result$T, this), Utils.Result$T, $Heap) } 
  (Utils.Result.Extract#canCall(Utils.Result$T, this)
         || ($IsAlloc(this, Tclass.Utils.Result(Utils.Result$T), $Heap)
           && Utils.Result.Success_q(this)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(Utils.Result.Extract(Utils.Result$T, this), Utils.Result$T, $Heap));

function Utils.Result.Extract#requires(Ty, DatatypeType) : bool;

// #requires axiom for Utils.Result.Extract
axiom (forall Utils.Result$T: Ty, this: DatatypeType :: 
  { Utils.Result.Extract#requires(Utils.Result$T, this) } 
  $Is(this, Tclass.Utils.Result(Utils.Result$T))
     ==> Utils.Result.Extract#requires(Utils.Result$T, this)
       == Utils.Result.Success_q(this));

// definition axiom for Utils.Result.Extract (revealed)
axiom {:id "id492"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
  { Utils.Result.Extract(Utils.Result$T, this) } 
  Utils.Result.Extract#canCall(Utils.Result$T, this)
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T)) && Utils.Result.Success_q(this))
     ==> Utils.Result.Extract(Utils.Result$T, this) == Utils.Result.value(this));

// definition axiom for Utils.Result.Extract for all literals (revealed)
axiom {:id "id493"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
  {:weight 3} { Utils.Result.Extract(Utils.Result$T, Lit(this)) } 
  Utils.Result.Extract#canCall(Utils.Result$T, Lit(this))
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T))
         && Lit(Utils.Result.Success_q(Lit(this))))
     ==> Utils.Result.Extract(Utils.Result$T, Lit(this))
       == Lit(Utils.Result.value(Lit(this))));

// Constructor function declaration
function #Utils.Option.Some(Box) : DatatypeType;

const unique ##Utils.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #Utils.Option.Some(a#0#0#0) } 
  DatatypeCtorId(#Utils.Option.Some(a#0#0#0)) == ##Utils.Option.Some);
}

function Utils.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Utils.Option.Some_q(d) } 
  Utils.Option.Some_q(d) <==> DatatypeCtorId(d) == ##Utils.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Utils.Option.Some_q(d) } 
  Utils.Option.Some_q(d)
     ==> (exists a#1#0#0: Box :: d == #Utils.Option.Some(a#1#0#0)));

function Tclass.Utils.Option(Ty) : Ty;

const unique Tagclass.Utils.Option: TyTag;

// Tclass.Utils.Option Tag
axiom (forall Utils.Option$T: Ty :: 
  { Tclass.Utils.Option(Utils.Option$T) } 
  Tag(Tclass.Utils.Option(Utils.Option$T)) == Tagclass.Utils.Option
     && TagFamily(Tclass.Utils.Option(Utils.Option$T)) == tytagFamily$Option);

function Tclass.Utils.Option_0(Ty) : Ty;

// Tclass.Utils.Option injectivity 0
axiom (forall Utils.Option$T: Ty :: 
  { Tclass.Utils.Option(Utils.Option$T) } 
  Tclass.Utils.Option_0(Tclass.Utils.Option(Utils.Option$T)) == Utils.Option$T);

// Box/unbox axiom for Tclass.Utils.Option
axiom (forall Utils.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Utils.Option(Utils.Option$T)) } 
  $IsBox(bx, Tclass.Utils.Option(Utils.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Utils.Option(Utils.Option$T)));

// Constructor $Is
axiom (forall Utils.Option$T: Ty, a#2#0#0: Box :: 
  { $Is(#Utils.Option.Some(a#2#0#0), Tclass.Utils.Option(Utils.Option$T)) } 
  $Is(#Utils.Option.Some(a#2#0#0), Tclass.Utils.Option(Utils.Option$T))
     <==> $IsBox(a#2#0#0, Utils.Option$T));

// Constructor $IsAlloc
axiom (forall Utils.Option$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Utils.Option.Some(a#2#0#0), Tclass.Utils.Option(Utils.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Utils.Option.Some(a#2#0#0), Tclass.Utils.Option(Utils.Option$T), $h)
       <==> $IsAllocBox(a#2#0#0, Utils.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Utils.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(Utils.Option.value(d), Utils.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      Utils.Option.Some_q(d)
       && $IsAlloc(d, Tclass.Utils.Option(Utils.Option$T), $h)
     ==> $IsAllocBox(Utils.Option.value(d), Utils.Option$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #Utils.Option.Some(Lit(a#3#0#0)) } 
  #Utils.Option.Some(Lit(a#3#0#0)) == Lit(#Utils.Option.Some(a#3#0#0)));

function Utils.Option.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #Utils.Option.Some(a#4#0#0) } 
  Utils.Option.value(#Utils.Option.Some(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #Utils.Option.Some(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#Utils.Option.Some(a#5#0#0)));

// Constructor function declaration
function #Utils.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Utils.Option.None()) == ##Utils.Option.None;
// Constructor literal
axiom #Utils.Option.None() == Lit(#Utils.Option.None());
}

const unique ##Utils.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Utils.Option.None()) == ##Utils.Option.None;
}

function Utils.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Utils.Option.None_q(d) } 
  Utils.Option.None_q(d) <==> DatatypeCtorId(d) == ##Utils.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Utils.Option.None_q(d) } 
  Utils.Option.None_q(d) ==> d == #Utils.Option.None());

// Constructor $Is
axiom (forall Utils.Option$T: Ty :: 
  { $Is(#Utils.Option.None(), Tclass.Utils.Option(Utils.Option$T)) } 
  $Is(#Utils.Option.None(), Tclass.Utils.Option(Utils.Option$T)));

// Constructor $IsAlloc
axiom (forall Utils.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#Utils.Option.None(), Tclass.Utils.Option(Utils.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Utils.Option.None(), Tclass.Utils.Option(Utils.Option$T), $h));

// Depth-one case-split function
function $IsA#Utils.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Utils.Option(d) } 
  $IsA#Utils.Option(d) ==> Utils.Option.Some_q(d) || Utils.Option.None_q(d));

// Questionmark data type disjunctivity
axiom (forall Utils.Option$T: Ty, d: DatatypeType :: 
  { Utils.Option.None_q(d), $Is(d, Tclass.Utils.Option(Utils.Option$T)) } 
    { Utils.Option.Some_q(d), $Is(d, Tclass.Utils.Option(Utils.Option$T)) } 
  $Is(d, Tclass.Utils.Option(Utils.Option$T))
     ==> Utils.Option.Some_q(d) || Utils.Option.None_q(d));

// Datatype extensional equality declaration
function Utils.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Utils.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Utils.Option#Equal(a, b), Utils.Option.Some_q(a) } 
    { Utils.Option#Equal(a, b), Utils.Option.Some_q(b) } 
  Utils.Option.Some_q(a) && Utils.Option.Some_q(b)
     ==> (Utils.Option#Equal(a, b) <==> Utils.Option.value(a) == Utils.Option.value(b)));

// Datatype extensional equality definition: #Utils.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Utils.Option#Equal(a, b), Utils.Option.None_q(a) } 
    { Utils.Option#Equal(a, b), Utils.Option.None_q(b) } 
  Utils.Option.None_q(a) && Utils.Option.None_q(b) ==> Utils.Option#Equal(a, b));

// Datatype extensionality axiom: Utils.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Utils.Option#Equal(a, b) } 
  Utils.Option#Equal(a, b) <==> a == b);

const unique class.Utils.Option: ClassName;

const unique class.AST.__default: ClassName;

// Constructor function declaration
function #AST.BinOp.Add() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#AST.BinOp.Add()) == ##AST.BinOp.Add;
// Constructor $Is
axiom $Is(#AST.BinOp.Add(), Tclass.AST.BinOp());
// Constructor literal
axiom #AST.BinOp.Add() == Lit(#AST.BinOp.Add());
}

const unique ##AST.BinOp.Add: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#AST.BinOp.Add()) == ##AST.BinOp.Add;
}

function AST.BinOp.Add_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.BinOp.Add_q(d) } 
  AST.BinOp.Add_q(d) <==> DatatypeCtorId(d) == ##AST.BinOp.Add);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.BinOp.Add_q(d) } 
  AST.BinOp.Add_q(d) ==> d == #AST.BinOp.Add());

// Constructor function declaration
function #AST.BinOp.Sub() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#AST.BinOp.Sub()) == ##AST.BinOp.Sub;
// Constructor $Is
axiom $Is(#AST.BinOp.Sub(), Tclass.AST.BinOp());
// Constructor literal
axiom #AST.BinOp.Sub() == Lit(#AST.BinOp.Sub());
}

const unique ##AST.BinOp.Sub: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#AST.BinOp.Sub()) == ##AST.BinOp.Sub;
}

function AST.BinOp.Sub_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.BinOp.Sub_q(d) } 
  AST.BinOp.Sub_q(d) <==> DatatypeCtorId(d) == ##AST.BinOp.Sub);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.BinOp.Sub_q(d) } 
  AST.BinOp.Sub_q(d) ==> d == #AST.BinOp.Sub());

// Constructor function declaration
function #AST.BinOp.Mul() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#AST.BinOp.Mul()) == ##AST.BinOp.Mul;
// Constructor $Is
axiom $Is(#AST.BinOp.Mul(), Tclass.AST.BinOp());
// Constructor literal
axiom #AST.BinOp.Mul() == Lit(#AST.BinOp.Mul());
}

const unique ##AST.BinOp.Mul: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#AST.BinOp.Mul()) == ##AST.BinOp.Mul;
}

function AST.BinOp.Mul_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.BinOp.Mul_q(d) } 
  AST.BinOp.Mul_q(d) <==> DatatypeCtorId(d) == ##AST.BinOp.Mul);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.BinOp.Mul_q(d) } 
  AST.BinOp.Mul_q(d) ==> d == #AST.BinOp.Mul());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.AST.BinOp(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.AST.BinOp())
     ==> $IsAlloc(d, Tclass.AST.BinOp(), $h));

// Depth-one case-split function
function $IsA#AST.BinOp(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#AST.BinOp(d) } 
  $IsA#AST.BinOp(d)
     ==> AST.BinOp.Add_q(d) || AST.BinOp.Sub_q(d) || AST.BinOp.Mul_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { AST.BinOp.Mul_q(d), $Is(d, Tclass.AST.BinOp()) } 
    { AST.BinOp.Sub_q(d), $Is(d, Tclass.AST.BinOp()) } 
    { AST.BinOp.Add_q(d), $Is(d, Tclass.AST.BinOp()) } 
  $Is(d, Tclass.AST.BinOp())
     ==> AST.BinOp.Add_q(d) || AST.BinOp.Sub_q(d) || AST.BinOp.Mul_q(d));

// Datatype extensional equality declaration
function AST.BinOp#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #AST.BinOp.Add
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.BinOp#Equal(a, b), AST.BinOp.Add_q(a) } 
    { AST.BinOp#Equal(a, b), AST.BinOp.Add_q(b) } 
  AST.BinOp.Add_q(a) && AST.BinOp.Add_q(b) ==> AST.BinOp#Equal(a, b));

// Datatype extensional equality definition: #AST.BinOp.Sub
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.BinOp#Equal(a, b), AST.BinOp.Sub_q(a) } 
    { AST.BinOp#Equal(a, b), AST.BinOp.Sub_q(b) } 
  AST.BinOp.Sub_q(a) && AST.BinOp.Sub_q(b) ==> AST.BinOp#Equal(a, b));

// Datatype extensional equality definition: #AST.BinOp.Mul
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.BinOp#Equal(a, b), AST.BinOp.Mul_q(a) } 
    { AST.BinOp#Equal(a, b), AST.BinOp.Mul_q(b) } 
  AST.BinOp.Mul_q(a) && AST.BinOp.Mul_q(b) ==> AST.BinOp#Equal(a, b));

// Datatype extensionality axiom: AST.BinOp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.BinOp#Equal(a, b) } 
  AST.BinOp#Equal(a, b) <==> a == b);

const unique class.AST.BinOp: ClassName;

// Constructor function declaration
function #AST.Expr_Raw.Var(Seq) : DatatypeType;

const unique ##AST.Expr_Raw.Var: DtCtorId
uses {
// Constructor identifier
axiom (forall a#22#0#0: Seq :: 
  { #AST.Expr_Raw.Var(a#22#0#0) } 
  DatatypeCtorId(#AST.Expr_Raw.Var(a#22#0#0)) == ##AST.Expr_Raw.Var);
}

function AST.Expr__Raw.Var_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Var_q(d) } 
  AST.Expr__Raw.Var_q(d) <==> DatatypeCtorId(d) == ##AST.Expr_Raw.Var);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Var_q(d) } 
  AST.Expr__Raw.Var_q(d)
     ==> (exists a#23#0#0: Seq :: d == #AST.Expr_Raw.Var(a#23#0#0)));

// Constructor $Is
axiom (forall a#24#0#0: Seq :: 
  { $Is(#AST.Expr_Raw.Var(a#24#0#0), Tclass.AST.Expr__Raw()) } 
  $Is(#AST.Expr_Raw.Var(a#24#0#0), Tclass.AST.Expr__Raw())
     <==> $Is(a#24#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.name(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Var_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.name(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#25#0#0: Seq :: 
  { #AST.Expr_Raw.Var(Lit(a#25#0#0)) } 
  #AST.Expr_Raw.Var(Lit(a#25#0#0)) == Lit(#AST.Expr_Raw.Var(a#25#0#0)));

function AST.Expr__Raw.name(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#26#0#0: Seq :: 
  { #AST.Expr_Raw.Var(a#26#0#0) } 
  AST.Expr__Raw.name(#AST.Expr_Raw.Var(a#26#0#0)) == a#26#0#0);

// Inductive seq element rank
axiom (forall a#27#0#0: Seq, i: int :: 
  { Seq#Index(a#27#0#0, i), #AST.Expr_Raw.Var(a#27#0#0) } 
  0 <= i && i < Seq#Length(a#27#0#0)
     ==> DtRank($Unbox(Seq#Index(a#27#0#0, i)): DatatypeType)
       < DtRank(#AST.Expr_Raw.Var(a#27#0#0)));

// Inductive seq rank
axiom (forall a#28#0#0: Seq :: 
  { #AST.Expr_Raw.Var(a#28#0#0) } 
  Seq#Rank(a#28#0#0) < DtRank(#AST.Expr_Raw.Var(a#28#0#0)));

// Constructor function declaration
function #AST.Expr_Raw.Literal(int) : DatatypeType;

const unique ##AST.Expr_Raw.Literal: DtCtorId
uses {
// Constructor identifier
axiom (forall a#29#0#0: int :: 
  { #AST.Expr_Raw.Literal(a#29#0#0) } 
  DatatypeCtorId(#AST.Expr_Raw.Literal(a#29#0#0)) == ##AST.Expr_Raw.Literal);
}

function AST.Expr__Raw.Literal_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Literal_q(d) } 
  AST.Expr__Raw.Literal_q(d) <==> DatatypeCtorId(d) == ##AST.Expr_Raw.Literal);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Literal_q(d) } 
  AST.Expr__Raw.Literal_q(d)
     ==> (exists a#30#0#0: int :: d == #AST.Expr_Raw.Literal(a#30#0#0)));

// Constructor $Is
axiom (forall a#31#0#0: int :: 
  { $Is(#AST.Expr_Raw.Literal(a#31#0#0), Tclass.AST.Expr__Raw()) } 
  $Is(#AST.Expr_Raw.Literal(a#31#0#0), Tclass.AST.Expr__Raw())
     <==> $Is(a#31#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.n(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Literal_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.n(d), TInt, $h));

// Constructor literal
axiom (forall a#32#0#0: int :: 
  { #AST.Expr_Raw.Literal(LitInt(a#32#0#0)) } 
  #AST.Expr_Raw.Literal(LitInt(a#32#0#0)) == Lit(#AST.Expr_Raw.Literal(a#32#0#0)));

function AST.Expr__Raw.n(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#33#0#0: int :: 
  { #AST.Expr_Raw.Literal(a#33#0#0) } 
  AST.Expr__Raw.n(#AST.Expr_Raw.Literal(a#33#0#0)) == a#33#0#0);

// Constructor function declaration
function #AST.Expr_Raw.Bind(Seq, Seq, DatatypeType) : DatatypeType;

const unique ##AST.Expr_Raw.Bind: DtCtorId
uses {
// Constructor identifier
axiom (forall a#34#0#0: Seq, a#34#1#0: Seq, a#34#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(a#34#0#0, a#34#1#0, a#34#2#0) } 
  DatatypeCtorId(#AST.Expr_Raw.Bind(a#34#0#0, a#34#1#0, a#34#2#0))
     == ##AST.Expr_Raw.Bind);
}

function AST.Expr__Raw.Bind_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Bind_q(d) } 
  AST.Expr__Raw.Bind_q(d) <==> DatatypeCtorId(d) == ##AST.Expr_Raw.Bind);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Bind_q(d) } 
  AST.Expr__Raw.Bind_q(d)
     ==> (exists a#35#0#0: Seq, a#35#1#0: Seq, a#35#2#0: DatatypeType :: 
      d == #AST.Expr_Raw.Bind(a#35#0#0, a#35#1#0, a#35#2#0)));

// Constructor $Is
axiom (forall a#36#0#0: Seq, a#36#1#0: Seq, a#36#2#0: DatatypeType :: 
  { $Is(#AST.Expr_Raw.Bind(a#36#0#0, a#36#1#0, a#36#2#0), Tclass.AST.Expr__Raw()) } 
  $Is(#AST.Expr_Raw.Bind(a#36#0#0, a#36#1#0, a#36#2#0), Tclass.AST.Expr__Raw())
     <==> $Is(a#36#0#0, TSeq(TSeq(TChar)))
       && $Is(a#36#1#0, TSeq(Tclass.AST.Expr__Raw()))
       && $Is(a#36#2#0, Tclass.AST.Expr__Raw()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.bvars(d), TSeq(TSeq(TChar)), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Bind_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.bvars(d), TSeq(TSeq(TChar)), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.bvals(d), TSeq(Tclass.AST.Expr__Raw()), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Bind_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.bvals(d), TSeq(Tclass.AST.Expr__Raw()), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.body(d), Tclass.AST.Expr__Raw(), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Bind_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.body(d), Tclass.AST.Expr__Raw(), $h));

// Constructor literal
axiom (forall a#37#0#0: Seq, a#37#1#0: Seq, a#37#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(Lit(a#37#0#0), Lit(a#37#1#0), Lit(a#37#2#0)) } 
  #AST.Expr_Raw.Bind(Lit(a#37#0#0), Lit(a#37#1#0), Lit(a#37#2#0))
     == Lit(#AST.Expr_Raw.Bind(a#37#0#0, a#37#1#0, a#37#2#0)));

function AST.Expr__Raw.bvars(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#38#0#0: Seq, a#38#1#0: Seq, a#38#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(a#38#0#0, a#38#1#0, a#38#2#0) } 
  AST.Expr__Raw.bvars(#AST.Expr_Raw.Bind(a#38#0#0, a#38#1#0, a#38#2#0))
     == a#38#0#0);

// Inductive seq element rank
axiom (forall a#39#0#0: Seq, a#39#1#0: Seq, a#39#2#0: DatatypeType, i: int :: 
  { Seq#Index(a#39#0#0, i), #AST.Expr_Raw.Bind(a#39#0#0, a#39#1#0, a#39#2#0) } 
  0 <= i && i < Seq#Length(a#39#0#0)
     ==> DtRank($Unbox(Seq#Index(a#39#0#0, i)): DatatypeType)
       < DtRank(#AST.Expr_Raw.Bind(a#39#0#0, a#39#1#0, a#39#2#0)));

// Inductive seq rank
axiom (forall a#40#0#0: Seq, a#40#1#0: Seq, a#40#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(a#40#0#0, a#40#1#0, a#40#2#0) } 
  Seq#Rank(a#40#0#0) < DtRank(#AST.Expr_Raw.Bind(a#40#0#0, a#40#1#0, a#40#2#0)));

function AST.Expr__Raw.bvals(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#41#0#0: Seq, a#41#1#0: Seq, a#41#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(a#41#0#0, a#41#1#0, a#41#2#0) } 
  AST.Expr__Raw.bvals(#AST.Expr_Raw.Bind(a#41#0#0, a#41#1#0, a#41#2#0))
     == a#41#1#0);

// Inductive seq element rank
axiom (forall a#42#0#0: Seq, a#42#1#0: Seq, a#42#2#0: DatatypeType, i: int :: 
  { Seq#Index(a#42#1#0, i), #AST.Expr_Raw.Bind(a#42#0#0, a#42#1#0, a#42#2#0) } 
  0 <= i && i < Seq#Length(a#42#1#0)
     ==> DtRank($Unbox(Seq#Index(a#42#1#0, i)): DatatypeType)
       < DtRank(#AST.Expr_Raw.Bind(a#42#0#0, a#42#1#0, a#42#2#0)));

// Inductive seq rank
axiom (forall a#43#0#0: Seq, a#43#1#0: Seq, a#43#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(a#43#0#0, a#43#1#0, a#43#2#0) } 
  Seq#Rank(a#43#1#0) < DtRank(#AST.Expr_Raw.Bind(a#43#0#0, a#43#1#0, a#43#2#0)));

function AST.Expr__Raw.body(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#44#0#0: Seq, a#44#1#0: Seq, a#44#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(a#44#0#0, a#44#1#0, a#44#2#0) } 
  AST.Expr__Raw.body(#AST.Expr_Raw.Bind(a#44#0#0, a#44#1#0, a#44#2#0)) == a#44#2#0);

// Inductive rank
axiom (forall a#45#0#0: Seq, a#45#1#0: Seq, a#45#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Bind(a#45#0#0, a#45#1#0, a#45#2#0) } 
  DtRank(a#45#2#0) < DtRank(#AST.Expr_Raw.Bind(a#45#0#0, a#45#1#0, a#45#2#0)));

// Constructor function declaration
function #AST.Expr_Raw.Assign(Seq, Seq) : DatatypeType;

const unique ##AST.Expr_Raw.Assign: DtCtorId
uses {
// Constructor identifier
axiom (forall a#46#0#0: Seq, a#46#1#0: Seq :: 
  { #AST.Expr_Raw.Assign(a#46#0#0, a#46#1#0) } 
  DatatypeCtorId(#AST.Expr_Raw.Assign(a#46#0#0, a#46#1#0))
     == ##AST.Expr_Raw.Assign);
}

function AST.Expr__Raw.Assign_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Assign_q(d) } 
  AST.Expr__Raw.Assign_q(d) <==> DatatypeCtorId(d) == ##AST.Expr_Raw.Assign);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Assign_q(d) } 
  AST.Expr__Raw.Assign_q(d)
     ==> (exists a#47#0#0: Seq, a#47#1#0: Seq :: 
      d == #AST.Expr_Raw.Assign(a#47#0#0, a#47#1#0)));

// Constructor $Is
axiom (forall a#48#0#0: Seq, a#48#1#0: Seq :: 
  { $Is(#AST.Expr_Raw.Assign(a#48#0#0, a#48#1#0), Tclass.AST.Expr__Raw()) } 
  $Is(#AST.Expr_Raw.Assign(a#48#0#0, a#48#1#0), Tclass.AST.Expr__Raw())
     <==> $Is(a#48#0#0, TSeq(TSeq(TChar))) && $Is(a#48#1#0, TSeq(Tclass.AST.Expr__Raw())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.avars(d), TSeq(TSeq(TChar)), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Assign_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.avars(d), TSeq(TSeq(TChar)), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.avals(d), TSeq(Tclass.AST.Expr__Raw()), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Assign_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.avals(d), TSeq(Tclass.AST.Expr__Raw()), $h));

// Constructor literal
axiom (forall a#49#0#0: Seq, a#49#1#0: Seq :: 
  { #AST.Expr_Raw.Assign(Lit(a#49#0#0), Lit(a#49#1#0)) } 
  #AST.Expr_Raw.Assign(Lit(a#49#0#0), Lit(a#49#1#0))
     == Lit(#AST.Expr_Raw.Assign(a#49#0#0, a#49#1#0)));

function AST.Expr__Raw.avars(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#50#0#0: Seq, a#50#1#0: Seq :: 
  { #AST.Expr_Raw.Assign(a#50#0#0, a#50#1#0) } 
  AST.Expr__Raw.avars(#AST.Expr_Raw.Assign(a#50#0#0, a#50#1#0)) == a#50#0#0);

// Inductive seq element rank
axiom (forall a#51#0#0: Seq, a#51#1#0: Seq, i: int :: 
  { Seq#Index(a#51#0#0, i), #AST.Expr_Raw.Assign(a#51#0#0, a#51#1#0) } 
  0 <= i && i < Seq#Length(a#51#0#0)
     ==> DtRank($Unbox(Seq#Index(a#51#0#0, i)): DatatypeType)
       < DtRank(#AST.Expr_Raw.Assign(a#51#0#0, a#51#1#0)));

// Inductive seq rank
axiom (forall a#52#0#0: Seq, a#52#1#0: Seq :: 
  { #AST.Expr_Raw.Assign(a#52#0#0, a#52#1#0) } 
  Seq#Rank(a#52#0#0) < DtRank(#AST.Expr_Raw.Assign(a#52#0#0, a#52#1#0)));

function AST.Expr__Raw.avals(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#53#0#0: Seq, a#53#1#0: Seq :: 
  { #AST.Expr_Raw.Assign(a#53#0#0, a#53#1#0) } 
  AST.Expr__Raw.avals(#AST.Expr_Raw.Assign(a#53#0#0, a#53#1#0)) == a#53#1#0);

// Inductive seq element rank
axiom (forall a#54#0#0: Seq, a#54#1#0: Seq, i: int :: 
  { Seq#Index(a#54#1#0, i), #AST.Expr_Raw.Assign(a#54#0#0, a#54#1#0) } 
  0 <= i && i < Seq#Length(a#54#1#0)
     ==> DtRank($Unbox(Seq#Index(a#54#1#0, i)): DatatypeType)
       < DtRank(#AST.Expr_Raw.Assign(a#54#0#0, a#54#1#0)));

// Inductive seq rank
axiom (forall a#55#0#0: Seq, a#55#1#0: Seq :: 
  { #AST.Expr_Raw.Assign(a#55#0#0, a#55#1#0) } 
  Seq#Rank(a#55#1#0) < DtRank(#AST.Expr_Raw.Assign(a#55#0#0, a#55#1#0)));

// Constructor function declaration
function #AST.Expr_Raw.If(DatatypeType, DatatypeType, DatatypeType) : DatatypeType;

const unique ##AST.Expr_Raw.If: DtCtorId
uses {
// Constructor identifier
axiom (forall a#56#0#0: DatatypeType, a#56#1#0: DatatypeType, a#56#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(a#56#0#0, a#56#1#0, a#56#2#0) } 
  DatatypeCtorId(#AST.Expr_Raw.If(a#56#0#0, a#56#1#0, a#56#2#0))
     == ##AST.Expr_Raw.If);
}

function AST.Expr__Raw.If_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.If_q(d) } 
  AST.Expr__Raw.If_q(d) <==> DatatypeCtorId(d) == ##AST.Expr_Raw.If);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.If_q(d) } 
  AST.Expr__Raw.If_q(d)
     ==> (exists a#57#0#0: DatatypeType, a#57#1#0: DatatypeType, a#57#2#0: DatatypeType :: 
      d == #AST.Expr_Raw.If(a#57#0#0, a#57#1#0, a#57#2#0)));

// Constructor $Is
axiom (forall a#58#0#0: DatatypeType, a#58#1#0: DatatypeType, a#58#2#0: DatatypeType :: 
  { $Is(#AST.Expr_Raw.If(a#58#0#0, a#58#1#0, a#58#2#0), Tclass.AST.Expr__Raw()) } 
  $Is(#AST.Expr_Raw.If(a#58#0#0, a#58#1#0, a#58#2#0), Tclass.AST.Expr__Raw())
     <==> $Is(a#58#0#0, Tclass.AST.Expr__Raw())
       && $Is(a#58#1#0, Tclass.AST.Expr__Raw())
       && $Is(a#58#2#0, Tclass.AST.Expr__Raw()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.cond(d), Tclass.AST.Expr__Raw(), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.If_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.cond(d), Tclass.AST.Expr__Raw(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.thn(d), Tclass.AST.Expr__Raw(), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.If_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.thn(d), Tclass.AST.Expr__Raw(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.els(d), Tclass.AST.Expr__Raw(), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.If_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.els(d), Tclass.AST.Expr__Raw(), $h));

// Constructor literal
axiom (forall a#59#0#0: DatatypeType, a#59#1#0: DatatypeType, a#59#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(Lit(a#59#0#0), Lit(a#59#1#0), Lit(a#59#2#0)) } 
  #AST.Expr_Raw.If(Lit(a#59#0#0), Lit(a#59#1#0), Lit(a#59#2#0))
     == Lit(#AST.Expr_Raw.If(a#59#0#0, a#59#1#0, a#59#2#0)));

function AST.Expr__Raw.cond(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#60#0#0: DatatypeType, a#60#1#0: DatatypeType, a#60#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(a#60#0#0, a#60#1#0, a#60#2#0) } 
  AST.Expr__Raw.cond(#AST.Expr_Raw.If(a#60#0#0, a#60#1#0, a#60#2#0)) == a#60#0#0);

// Inductive rank
axiom (forall a#61#0#0: DatatypeType, a#61#1#0: DatatypeType, a#61#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(a#61#0#0, a#61#1#0, a#61#2#0) } 
  DtRank(a#61#0#0) < DtRank(#AST.Expr_Raw.If(a#61#0#0, a#61#1#0, a#61#2#0)));

function AST.Expr__Raw.thn(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#62#0#0: DatatypeType, a#62#1#0: DatatypeType, a#62#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(a#62#0#0, a#62#1#0, a#62#2#0) } 
  AST.Expr__Raw.thn(#AST.Expr_Raw.If(a#62#0#0, a#62#1#0, a#62#2#0)) == a#62#1#0);

// Inductive rank
axiom (forall a#63#0#0: DatatypeType, a#63#1#0: DatatypeType, a#63#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(a#63#0#0, a#63#1#0, a#63#2#0) } 
  DtRank(a#63#1#0) < DtRank(#AST.Expr_Raw.If(a#63#0#0, a#63#1#0, a#63#2#0)));

function AST.Expr__Raw.els(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#64#0#0: DatatypeType, a#64#1#0: DatatypeType, a#64#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(a#64#0#0, a#64#1#0, a#64#2#0) } 
  AST.Expr__Raw.els(#AST.Expr_Raw.If(a#64#0#0, a#64#1#0, a#64#2#0)) == a#64#2#0);

// Inductive rank
axiom (forall a#65#0#0: DatatypeType, a#65#1#0: DatatypeType, a#65#2#0: DatatypeType :: 
  { #AST.Expr_Raw.If(a#65#0#0, a#65#1#0, a#65#2#0) } 
  DtRank(a#65#2#0) < DtRank(#AST.Expr_Raw.If(a#65#0#0, a#65#1#0, a#65#2#0)));

// Constructor function declaration
function #AST.Expr_Raw.Op(DatatypeType, DatatypeType, DatatypeType) : DatatypeType;

const unique ##AST.Expr_Raw.Op: DtCtorId
uses {
// Constructor identifier
axiom (forall a#66#0#0: DatatypeType, a#66#1#0: DatatypeType, a#66#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(a#66#0#0, a#66#1#0, a#66#2#0) } 
  DatatypeCtorId(#AST.Expr_Raw.Op(a#66#0#0, a#66#1#0, a#66#2#0))
     == ##AST.Expr_Raw.Op);
}

function AST.Expr__Raw.Op_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Op_q(d) } 
  AST.Expr__Raw.Op_q(d) <==> DatatypeCtorId(d) == ##AST.Expr_Raw.Op);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Op_q(d) } 
  AST.Expr__Raw.Op_q(d)
     ==> (exists a#67#0#0: DatatypeType, a#67#1#0: DatatypeType, a#67#2#0: DatatypeType :: 
      d == #AST.Expr_Raw.Op(a#67#0#0, a#67#1#0, a#67#2#0)));

// Constructor $Is
axiom (forall a#68#0#0: DatatypeType, a#68#1#0: DatatypeType, a#68#2#0: DatatypeType :: 
  { $Is(#AST.Expr_Raw.Op(a#68#0#0, a#68#1#0, a#68#2#0), Tclass.AST.Expr__Raw()) } 
  $Is(#AST.Expr_Raw.Op(a#68#0#0, a#68#1#0, a#68#2#0), Tclass.AST.Expr__Raw())
     <==> $Is(a#68#0#0, Tclass.AST.BinOp())
       && $Is(a#68#1#0, Tclass.AST.Expr__Raw())
       && $Is(a#68#2#0, Tclass.AST.Expr__Raw()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.op(d), Tclass.AST.BinOp(), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Op_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.op(d), Tclass.AST.BinOp(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.oe1(d), Tclass.AST.Expr__Raw(), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Op_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.oe1(d), Tclass.AST.Expr__Raw(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.oe2(d), Tclass.AST.Expr__Raw(), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Op_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.oe2(d), Tclass.AST.Expr__Raw(), $h));

// Constructor literal
axiom (forall a#69#0#0: DatatypeType, a#69#1#0: DatatypeType, a#69#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(Lit(a#69#0#0), Lit(a#69#1#0), Lit(a#69#2#0)) } 
  #AST.Expr_Raw.Op(Lit(a#69#0#0), Lit(a#69#1#0), Lit(a#69#2#0))
     == Lit(#AST.Expr_Raw.Op(a#69#0#0, a#69#1#0, a#69#2#0)));

function AST.Expr__Raw.op(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#70#0#0: DatatypeType, a#70#1#0: DatatypeType, a#70#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(a#70#0#0, a#70#1#0, a#70#2#0) } 
  AST.Expr__Raw.op(#AST.Expr_Raw.Op(a#70#0#0, a#70#1#0, a#70#2#0)) == a#70#0#0);

// Inductive rank
axiom (forall a#71#0#0: DatatypeType, a#71#1#0: DatatypeType, a#71#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(a#71#0#0, a#71#1#0, a#71#2#0) } 
  DtRank(a#71#0#0) < DtRank(#AST.Expr_Raw.Op(a#71#0#0, a#71#1#0, a#71#2#0)));

function AST.Expr__Raw.oe1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#72#0#0: DatatypeType, a#72#1#0: DatatypeType, a#72#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(a#72#0#0, a#72#1#0, a#72#2#0) } 
  AST.Expr__Raw.oe1(#AST.Expr_Raw.Op(a#72#0#0, a#72#1#0, a#72#2#0)) == a#72#1#0);

// Inductive rank
axiom (forall a#73#0#0: DatatypeType, a#73#1#0: DatatypeType, a#73#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(a#73#0#0, a#73#1#0, a#73#2#0) } 
  DtRank(a#73#1#0) < DtRank(#AST.Expr_Raw.Op(a#73#0#0, a#73#1#0, a#73#2#0)));

function AST.Expr__Raw.oe2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#74#0#0: DatatypeType, a#74#1#0: DatatypeType, a#74#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(a#74#0#0, a#74#1#0, a#74#2#0) } 
  AST.Expr__Raw.oe2(#AST.Expr_Raw.Op(a#74#0#0, a#74#1#0, a#74#2#0)) == a#74#2#0);

// Inductive rank
axiom (forall a#75#0#0: DatatypeType, a#75#1#0: DatatypeType, a#75#2#0: DatatypeType :: 
  { #AST.Expr_Raw.Op(a#75#0#0, a#75#1#0, a#75#2#0) } 
  DtRank(a#75#2#0) < DtRank(#AST.Expr_Raw.Op(a#75#0#0, a#75#1#0, a#75#2#0)));

// Constructor function declaration
function #AST.Expr_Raw.Seq(Seq) : DatatypeType;

const unique ##AST.Expr_Raw.Seq: DtCtorId
uses {
// Constructor identifier
axiom (forall a#76#0#0: Seq :: 
  { #AST.Expr_Raw.Seq(a#76#0#0) } 
  DatatypeCtorId(#AST.Expr_Raw.Seq(a#76#0#0)) == ##AST.Expr_Raw.Seq);
}

function AST.Expr__Raw.Seq_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Seq_q(d) } 
  AST.Expr__Raw.Seq_q(d) <==> DatatypeCtorId(d) == ##AST.Expr_Raw.Seq);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Seq_q(d) } 
  AST.Expr__Raw.Seq_q(d)
     ==> (exists a#77#0#0: Seq :: d == #AST.Expr_Raw.Seq(a#77#0#0)));

// Constructor $Is
axiom (forall a#78#0#0: Seq :: 
  { $Is(#AST.Expr_Raw.Seq(a#78#0#0), Tclass.AST.Expr__Raw()) } 
  $Is(#AST.Expr_Raw.Seq(a#78#0#0), Tclass.AST.Expr__Raw())
     <==> $Is(a#78#0#0, TSeq(Tclass.AST.Expr__Raw())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(AST.Expr__Raw.es(d), TSeq(Tclass.AST.Expr__Raw()), $h) } 
  $IsGoodHeap($h)
       && 
      AST.Expr__Raw.Seq_q(d)
       && $IsAlloc(d, Tclass.AST.Expr__Raw(), $h)
     ==> $IsAlloc(AST.Expr__Raw.es(d), TSeq(Tclass.AST.Expr__Raw()), $h));

// Constructor literal
axiom (forall a#79#0#0: Seq :: 
  { #AST.Expr_Raw.Seq(Lit(a#79#0#0)) } 
  #AST.Expr_Raw.Seq(Lit(a#79#0#0)) == Lit(#AST.Expr_Raw.Seq(a#79#0#0)));

function AST.Expr__Raw.es(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#80#0#0: Seq :: 
  { #AST.Expr_Raw.Seq(a#80#0#0) } 
  AST.Expr__Raw.es(#AST.Expr_Raw.Seq(a#80#0#0)) == a#80#0#0);

// Inductive seq element rank
axiom (forall a#81#0#0: Seq, i: int :: 
  { Seq#Index(a#81#0#0, i), #AST.Expr_Raw.Seq(a#81#0#0) } 
  0 <= i && i < Seq#Length(a#81#0#0)
     ==> DtRank($Unbox(Seq#Index(a#81#0#0, i)): DatatypeType)
       < DtRank(#AST.Expr_Raw.Seq(a#81#0#0)));

// Inductive seq rank
axiom (forall a#82#0#0: Seq :: 
  { #AST.Expr_Raw.Seq(a#82#0#0) } 
  Seq#Rank(a#82#0#0) < DtRank(#AST.Expr_Raw.Seq(a#82#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.AST.Expr__Raw(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.AST.Expr__Raw())
     ==> $IsAlloc(d, Tclass.AST.Expr__Raw(), $h));

// Depth-one case-split function
function $IsA#AST.Expr__Raw(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#AST.Expr__Raw(d) } 
  $IsA#AST.Expr__Raw(d)
     ==> AST.Expr__Raw.Var_q(d)
       || AST.Expr__Raw.Literal_q(d)
       || AST.Expr__Raw.Bind_q(d)
       || AST.Expr__Raw.Assign_q(d)
       || AST.Expr__Raw.If_q(d)
       || AST.Expr__Raw.Op_q(d)
       || AST.Expr__Raw.Seq_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { AST.Expr__Raw.Seq_q(d), $Is(d, Tclass.AST.Expr__Raw()) } 
    { AST.Expr__Raw.Op_q(d), $Is(d, Tclass.AST.Expr__Raw()) } 
    { AST.Expr__Raw.If_q(d), $Is(d, Tclass.AST.Expr__Raw()) } 
    { AST.Expr__Raw.Assign_q(d), $Is(d, Tclass.AST.Expr__Raw()) } 
    { AST.Expr__Raw.Bind_q(d), $Is(d, Tclass.AST.Expr__Raw()) } 
    { AST.Expr__Raw.Literal_q(d), $Is(d, Tclass.AST.Expr__Raw()) } 
    { AST.Expr__Raw.Var_q(d), $Is(d, Tclass.AST.Expr__Raw()) } 
  $Is(d, Tclass.AST.Expr__Raw())
     ==> AST.Expr__Raw.Var_q(d)
       || AST.Expr__Raw.Literal_q(d)
       || AST.Expr__Raw.Bind_q(d)
       || AST.Expr__Raw.Assign_q(d)
       || AST.Expr__Raw.If_q(d)
       || AST.Expr__Raw.Op_q(d)
       || AST.Expr__Raw.Seq_q(d));

// Datatype extensional equality declaration
function AST.Expr__Raw#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #AST.Expr_Raw.Var
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Var_q(a) } 
    { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Var_q(b) } 
  AST.Expr__Raw.Var_q(a) && AST.Expr__Raw.Var_q(b)
     ==> (AST.Expr__Raw#Equal(a, b)
       <==> Seq#Equal(AST.Expr__Raw.name(a), AST.Expr__Raw.name(b))));

// Datatype extensional equality definition: #AST.Expr_Raw.Literal
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Literal_q(a) } 
    { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Literal_q(b) } 
  AST.Expr__Raw.Literal_q(a) && AST.Expr__Raw.Literal_q(b)
     ==> (AST.Expr__Raw#Equal(a, b) <==> AST.Expr__Raw.n(a) == AST.Expr__Raw.n(b)));

// Datatype extensional equality definition: #AST.Expr_Raw.Bind
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Bind_q(a) } 
    { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Bind_q(b) } 
  AST.Expr__Raw.Bind_q(a) && AST.Expr__Raw.Bind_q(b)
     ==> (AST.Expr__Raw#Equal(a, b)
       <==> Seq#Equal(AST.Expr__Raw.bvars(a), AST.Expr__Raw.bvars(b))
         && Seq#Equal(AST.Expr__Raw.bvals(a), AST.Expr__Raw.bvals(b))
         && AST.Expr__Raw#Equal(AST.Expr__Raw.body(a), AST.Expr__Raw.body(b))));

// Datatype extensional equality definition: #AST.Expr_Raw.Assign
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Assign_q(a) } 
    { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Assign_q(b) } 
  AST.Expr__Raw.Assign_q(a) && AST.Expr__Raw.Assign_q(b)
     ==> (AST.Expr__Raw#Equal(a, b)
       <==> Seq#Equal(AST.Expr__Raw.avars(a), AST.Expr__Raw.avars(b))
         && Seq#Equal(AST.Expr__Raw.avals(a), AST.Expr__Raw.avals(b))));

// Datatype extensional equality definition: #AST.Expr_Raw.If
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.If_q(a) } 
    { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.If_q(b) } 
  AST.Expr__Raw.If_q(a) && AST.Expr__Raw.If_q(b)
     ==> (AST.Expr__Raw#Equal(a, b)
       <==> AST.Expr__Raw#Equal(AST.Expr__Raw.cond(a), AST.Expr__Raw.cond(b))
         && AST.Expr__Raw#Equal(AST.Expr__Raw.thn(a), AST.Expr__Raw.thn(b))
         && AST.Expr__Raw#Equal(AST.Expr__Raw.els(a), AST.Expr__Raw.els(b))));

// Datatype extensional equality definition: #AST.Expr_Raw.Op
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Op_q(a) } 
    { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Op_q(b) } 
  AST.Expr__Raw.Op_q(a) && AST.Expr__Raw.Op_q(b)
     ==> (AST.Expr__Raw#Equal(a, b)
       <==> AST.BinOp#Equal(AST.Expr__Raw.op(a), AST.Expr__Raw.op(b))
         && AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(a), AST.Expr__Raw.oe1(b))
         && AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(a), AST.Expr__Raw.oe2(b))));

// Datatype extensional equality definition: #AST.Expr_Raw.Seq
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Seq_q(a) } 
    { AST.Expr__Raw#Equal(a, b), AST.Expr__Raw.Seq_q(b) } 
  AST.Expr__Raw.Seq_q(a) && AST.Expr__Raw.Seq_q(b)
     ==> (AST.Expr__Raw#Equal(a, b)
       <==> Seq#Equal(AST.Expr__Raw.es(a), AST.Expr__Raw.es(b))));

// Datatype extensionality axiom: AST.Expr_Raw
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { AST.Expr__Raw#Equal(a, b) } 
  AST.Expr__Raw#Equal(a, b) <==> a == b);

const unique class.AST.Expr__Raw: ClassName;

// function declaration for AST.Expr_Raw.Depth
function AST.Expr__Raw.Depth($ly: LayerType, this: DatatypeType) : int;

function AST.Expr__Raw.Depth#canCall(this: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { AST.Expr__Raw.Depth($LS($ly), this) } 
  AST.Expr__Raw.Depth($LS($ly), this) == AST.Expr__Raw.Depth($ly, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { AST.Expr__Raw.Depth(AsFuelBottom($ly), this) } 
  AST.Expr__Raw.Depth($ly, this) == AST.Expr__Raw.Depth($LZ, this));

// consequence axiom for AST.Expr__Raw.Depth
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { AST.Expr__Raw.Depth($ly, this) } 
  AST.Expr__Raw.Depth#canCall(this) || $Is(this, Tclass.AST.Expr__Raw())
     ==> LitInt(0) <= AST.Expr__Raw.Depth($ly, this));

function AST.Expr__Raw.Depth#requires(LayerType, DatatypeType) : bool;

// #requires axiom for AST.Expr__Raw.Depth
axiom (forall $ly: LayerType, $Heap: Heap, this: DatatypeType :: 
  { AST.Expr__Raw.Depth#requires($ly, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.AST.Expr__Raw())
       && $IsAlloc(this, Tclass.AST.Expr__Raw(), $Heap)
     ==> AST.Expr__Raw.Depth#requires($ly, this) == true);

// definition axiom for AST.Expr__Raw.Depth (revealed)
axiom {:id "id494"} (forall $ly: LayerType, $Heap: Heap, this: DatatypeType :: 
  { AST.Expr__Raw.Depth($LS($ly), this), $IsGoodHeap($Heap) } 
  AST.Expr__Raw.Depth#canCall(this)
       || ($IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.AST.Expr__Raw())
         && $IsAlloc(this, Tclass.AST.Expr__Raw(), $Heap))
     ==> (!AST.Expr__Raw.Var_q(this)
         ==> 
        !AST.Expr__Raw.Literal_q(this)
         ==> (AST.Expr__Raw.Bind_q(this)
             ==> (var body#1 := AST.Expr__Raw.body(this); 
              (var bvals#1 := AST.Expr__Raw.bvals(this); 
                (forall $l#3#e#0: DatatypeType :: 
                    $Is($l#3#e#0, Tclass.AST.Expr__Raw())
                       ==> 
                      Seq#Contains(bvals#1, $Box($l#3#e#0))
                       ==> AST.Expr__Raw.Depth#canCall($l#3#e#0))
                   && Utils.__default.MaxF#canCall(Tclass.AST.Expr__Raw(), 
                    $Heap, 
                    (var f#3 := Lit(AtLayer((lambda $l#5#ly#0: LayerType :: 
                              Handle1((lambda $l#5#heap#0: Heap, $l#5#e#0: Box :: 
                                  $Box(AST.Expr__Raw.Depth($l#5#ly#0, $Unbox($l#5#e#0): DatatypeType))), 
                                (lambda $l#5#heap#0: Heap, $l#5#e#0: Box :: 
                                  $IsBox($l#5#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#1, $l#5#e#0)), 
                                (lambda $l#5#heap#0: Heap, $l#5#e#0: Box :: 
                                  SetRef_to_SetBox((lambda $l#5#o#0: ref :: false))))), 
                            $ly)); 
                      f#3), 
                    bvals#1, 
                    LitInt(0))
                   && (var m#1 := Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                        $LS($LZ), 
                        reveal_Utils._default.MaxF, 
                        $Heap, 
                        (var f#3 := Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
                                  Handle1((lambda $l#6#heap#0: Heap, $l#6#e#0: Box :: 
                                      $Box(AST.Expr__Raw.Depth($l#6#ly#0, $Unbox($l#6#e#0): DatatypeType))), 
                                    (lambda $l#6#heap#0: Heap, $l#6#e#0: Box :: 
                                      $IsBox($l#6#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#1, $l#6#e#0)), 
                                    (lambda $l#6#heap#0: Heap, $l#6#e#0: Box :: 
                                      SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
                                $ly)); 
                          f#3), 
                        bvals#1, 
                        LitInt(0)); 
                    AST.Expr__Raw.Depth#canCall(body#1)
                       && Utils.__default.Max#canCall(m#1, AST.Expr__Raw.Depth($ly, body#1))))))
           && (!AST.Expr__Raw.Bind_q(this)
             ==> (AST.Expr__Raw.Assign_q(this)
                 ==> (var avals#1 := AST.Expr__Raw.avals(this); 
                  (forall $l#7#e#0: DatatypeType :: 
                      $Is($l#7#e#0, Tclass.AST.Expr__Raw())
                         ==> 
                        Seq#Contains(avals#1, $Box($l#7#e#0))
                         ==> AST.Expr__Raw.Depth#canCall($l#7#e#0))
                     && Utils.__default.MaxF#canCall(Tclass.AST.Expr__Raw(), 
                      $Heap, 
                      (var f#4 := Lit(AtLayer((lambda $l#9#ly#0: LayerType :: 
                                Handle1((lambda $l#9#heap#0: Heap, $l#9#e#0: Box :: 
                                    $Box(AST.Expr__Raw.Depth($l#9#ly#0, $Unbox($l#9#e#0): DatatypeType))), 
                                  (lambda $l#9#heap#0: Heap, $l#9#e#0: Box :: 
                                    $IsBox($l#9#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(avals#1, $l#9#e#0)), 
                                  (lambda $l#9#heap#0: Heap, $l#9#e#0: Box :: 
                                    SetRef_to_SetBox((lambda $l#9#o#0: ref :: false))))), 
                              $ly)); 
                        f#4), 
                      avals#1, 
                      LitInt(0))))
               && (!AST.Expr__Raw.Assign_q(this)
                 ==> (AST.Expr__Raw.If_q(this)
                     ==> (var els#1 := AST.Expr__Raw.els(this); 
                      (var thn#1 := AST.Expr__Raw.thn(this); 
                        (var cond#1 := AST.Expr__Raw.cond(this); 
                          AST.Expr__Raw.Depth#canCall(cond#1)
                             && 
                            AST.Expr__Raw.Depth#canCall(thn#1)
                             && AST.Expr__Raw.Depth#canCall(els#1)
                             && Utils.__default.Max#canCall(AST.Expr__Raw.Depth($ly, thn#1), AST.Expr__Raw.Depth($ly, els#1))
                             && Utils.__default.Max#canCall(AST.Expr__Raw.Depth($ly, cond#1), 
                              Utils.__default.Max(AST.Expr__Raw.Depth($ly, thn#1), AST.Expr__Raw.Depth($ly, els#1)))))))
                   && (!AST.Expr__Raw.If_q(this)
                     ==> (AST.Expr__Raw.Op_q(this)
                         ==> (var e2#1 := AST.Expr__Raw.oe2(this); 
                          (var e1#1 := AST.Expr__Raw.oe1(this); 
                            AST.Expr__Raw.Depth#canCall(e1#1)
                               && AST.Expr__Raw.Depth#canCall(e2#1)
                               && Utils.__default.Max#canCall(AST.Expr__Raw.Depth($ly, e1#1), AST.Expr__Raw.Depth($ly, e2#1)))))
                       && (!AST.Expr__Raw.Op_q(this)
                         ==> (var es#1 := AST.Expr__Raw.es(this); 
                          (forall $l#10#e#0: DatatypeType :: 
                              $Is($l#10#e#0, Tclass.AST.Expr__Raw())
                                 ==> 
                                Seq#Contains(es#1, $Box($l#10#e#0))
                                 ==> AST.Expr__Raw.Depth#canCall($l#10#e#0))
                             && Utils.__default.MaxF#canCall(Tclass.AST.Expr__Raw(), 
                              $Heap, 
                              (var f#5 := Lit(AtLayer((lambda $l#12#ly#0: LayerType :: 
                                        Handle1((lambda $l#12#heap#0: Heap, $l#12#e#0: Box :: 
                                            $Box(AST.Expr__Raw.Depth($l#12#ly#0, $Unbox($l#12#e#0): DatatypeType))), 
                                          (lambda $l#12#heap#0: Heap, $l#12#e#0: Box :: 
                                            $IsBox($l#12#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(es#1, $l#12#e#0)), 
                                          (lambda $l#12#heap#0: Heap, $l#12#e#0: Box :: 
                                            SetRef_to_SetBox((lambda $l#12#o#0: ref :: false))))), 
                                      $ly)); 
                                f#5), 
                              es#1, 
                              LitInt(0))))))))
       && AST.Expr__Raw.Depth($LS($ly), this)
         == 1
           + (if AST.Expr__Raw.Var_q(this)
             then 0
             else (if AST.Expr__Raw.Literal_q(this)
               then (var lit#0 := AST.Expr__Raw.n(this); LitInt(0))
               else (if AST.Expr__Raw.Bind_q(this)
                 then (var body#0 := AST.Expr__Raw.body(this); 
                  (var bvals#0 := AST.Expr__Raw.bvals(this); 
                    (var bvars#0 := AST.Expr__Raw.bvars(this); 
                      (var m#0 := Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                            $LS($LZ), 
                            reveal_Utils._default.MaxF, 
                            $Heap, 
                            (var f#0 := Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                                      Handle1((lambda $l#0#heap#0: Heap, $l#0#e#0: Box :: 
                                          $Box(AST.Expr__Raw.Depth($l#0#ly#0, $Unbox($l#0#e#0): DatatypeType))), 
                                        (lambda $l#0#heap#0: Heap, $l#0#e#0: Box :: 
                                          $IsBox($l#0#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#0, $l#0#e#0)), 
                                        (lambda $l#0#heap#0: Heap, $l#0#e#0: Box :: 
                                          SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                                    $ly)); 
                              f#0), 
                            bvals#0, 
                            LitInt(0)); 
                        Utils.__default.Max(m#0, AST.Expr__Raw.Depth($ly, body#0))))))
                 else (if AST.Expr__Raw.Assign_q(this)
                   then (var avals#0 := AST.Expr__Raw.avals(this); 
                    (var avars#0 := AST.Expr__Raw.avars(this); 
                      Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                        $LS($LZ), 
                        reveal_Utils._default.MaxF, 
                        $Heap, 
                        (var f#1 := Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
                                  Handle1((lambda $l#1#heap#0: Heap, $l#1#e#0: Box :: 
                                      $Box(AST.Expr__Raw.Depth($l#1#ly#0, $Unbox($l#1#e#0): DatatypeType))), 
                                    (lambda $l#1#heap#0: Heap, $l#1#e#0: Box :: 
                                      $IsBox($l#1#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(avals#0, $l#1#e#0)), 
                                    (lambda $l#1#heap#0: Heap, $l#1#e#0: Box :: 
                                      SetRef_to_SetBox((lambda $l#1#o#0: ref :: false))))), 
                                $ly)); 
                          f#1), 
                        avals#0, 
                        LitInt(0))))
                   else (if AST.Expr__Raw.If_q(this)
                     then (var els#0 := AST.Expr__Raw.els(this); 
                      (var thn#0 := AST.Expr__Raw.thn(this); 
                        (var cond#0 := AST.Expr__Raw.cond(this); 
                          Utils.__default.Max(AST.Expr__Raw.Depth($ly, cond#0), 
                            Utils.__default.Max(AST.Expr__Raw.Depth($ly, thn#0), AST.Expr__Raw.Depth($ly, els#0))))))
                     else (if AST.Expr__Raw.Op_q(this)
                       then (var e2#0 := AST.Expr__Raw.oe2(this); 
                        (var e1#0 := AST.Expr__Raw.oe1(this); 
                          (var op#0 := AST.Expr__Raw.op(this); 
                            Utils.__default.Max(AST.Expr__Raw.Depth($ly, e1#0), AST.Expr__Raw.Depth($ly, e2#0)))))
                       else (var es#0 := AST.Expr__Raw.es(this); 
                        Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                          $LS($LZ), 
                          reveal_Utils._default.MaxF, 
                          $Heap, 
                          (var f#2 := Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
                                    Handle1((lambda $l#2#heap#0: Heap, $l#2#e#0: Box :: 
                                        $Box(AST.Expr__Raw.Depth($l#2#ly#0, $Unbox($l#2#e#0): DatatypeType))), 
                                      (lambda $l#2#heap#0: Heap, $l#2#e#0: Box :: 
                                        $IsBox($l#2#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(es#0, $l#2#e#0)), 
                                      (lambda $l#2#heap#0: Heap, $l#2#e#0: Box :: 
                                        SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
                                  $ly)); 
                            f#2), 
                          es#0, 
                          LitInt(0))))))))));

// definition axiom for AST.Expr__Raw.Depth for all literals (revealed)
axiom {:id "id495"} (forall $ly: LayerType, $Heap: Heap, this: DatatypeType :: 
  {:weight 3} { AST.Expr__Raw.Depth($LS($ly), Lit(this)), $IsGoodHeap($Heap) } 
  AST.Expr__Raw.Depth#canCall(Lit(this))
       || ($IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.AST.Expr__Raw())
         && $IsAlloc(this, Tclass.AST.Expr__Raw(), $Heap))
     ==> (!Lit(AST.Expr__Raw.Var_q(Lit(this)))
         ==> 
        !Lit(AST.Expr__Raw.Literal_q(Lit(this)))
         ==> (Lit(AST.Expr__Raw.Bind_q(Lit(this)))
             ==> (var body#3 := Lit(AST.Expr__Raw.body(Lit(this))); 
              (var bvals#3 := Lit(AST.Expr__Raw.bvals(Lit(this))); 
                (forall $l#16#e#0: DatatypeType :: 
                    $Is($l#16#e#0, Tclass.AST.Expr__Raw())
                       ==> 
                      Seq#Contains(bvals#3, $Box($l#16#e#0))
                       ==> AST.Expr__Raw.Depth#canCall($l#16#e#0))
                   && Utils.__default.MaxF#canCall(Tclass.AST.Expr__Raw(), 
                    $Heap, 
                    (var f#9 := Lit(AtLayer((lambda $l#18#ly#0: LayerType :: 
                              Handle1((lambda $l#18#heap#0: Heap, $l#18#e#0: Box :: 
                                  $Box(AST.Expr__Raw.Depth($l#18#ly#0, $Unbox($l#18#e#0): DatatypeType))), 
                                (lambda $l#18#heap#0: Heap, $l#18#e#0: Box :: 
                                  $IsBox($l#18#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#3, $l#18#e#0)), 
                                (lambda $l#18#heap#0: Heap, $l#18#e#0: Box :: 
                                  SetRef_to_SetBox((lambda $l#18#o#0: ref :: false))))), 
                            $LS($ly))); 
                      f#9), 
                    bvals#3, 
                    LitInt(0))
                   && (var m#3 := Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                        $LS($LZ), 
                        reveal_Utils._default.MaxF, 
                        $Heap, 
                        (var f#9 := Lit(AtLayer((lambda $l#19#ly#0: LayerType :: 
                                  Handle1((lambda $l#19#heap#0: Heap, $l#19#e#0: Box :: 
                                      $Box(AST.Expr__Raw.Depth($l#19#ly#0, $Unbox($l#19#e#0): DatatypeType))), 
                                    (lambda $l#19#heap#0: Heap, $l#19#e#0: Box :: 
                                      $IsBox($l#19#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#3, $l#19#e#0)), 
                                    (lambda $l#19#heap#0: Heap, $l#19#e#0: Box :: 
                                      SetRef_to_SetBox((lambda $l#19#o#0: ref :: false))))), 
                                $LS($ly))); 
                          f#9), 
                        bvals#3, 
                        LitInt(0)); 
                    AST.Expr__Raw.Depth#canCall(body#3)
                       && Utils.__default.Max#canCall(m#3, AST.Expr__Raw.Depth($LS($ly), body#3))))))
           && (!Lit(AST.Expr__Raw.Bind_q(Lit(this)))
             ==> (Lit(AST.Expr__Raw.Assign_q(Lit(this)))
                 ==> (var avals#3 := Lit(AST.Expr__Raw.avals(Lit(this))); 
                  (forall $l#20#e#0: DatatypeType :: 
                      $Is($l#20#e#0, Tclass.AST.Expr__Raw())
                         ==> 
                        Seq#Contains(avals#3, $Box($l#20#e#0))
                         ==> AST.Expr__Raw.Depth#canCall($l#20#e#0))
                     && Utils.__default.MaxF#canCall(Tclass.AST.Expr__Raw(), 
                      $Heap, 
                      (var f#10 := Lit(AtLayer((lambda $l#22#ly#0: LayerType :: 
                                Handle1((lambda $l#22#heap#0: Heap, $l#22#e#0: Box :: 
                                    $Box(AST.Expr__Raw.Depth($l#22#ly#0, $Unbox($l#22#e#0): DatatypeType))), 
                                  (lambda $l#22#heap#0: Heap, $l#22#e#0: Box :: 
                                    $IsBox($l#22#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(avals#3, $l#22#e#0)), 
                                  (lambda $l#22#heap#0: Heap, $l#22#e#0: Box :: 
                                    SetRef_to_SetBox((lambda $l#22#o#0: ref :: false))))), 
                              $LS($ly))); 
                        f#10), 
                      avals#3, 
                      LitInt(0))))
               && (!Lit(AST.Expr__Raw.Assign_q(Lit(this)))
                 ==> (Lit(AST.Expr__Raw.If_q(Lit(this)))
                     ==> (var els#3 := Lit(AST.Expr__Raw.els(Lit(this))); 
                      (var thn#3 := Lit(AST.Expr__Raw.thn(Lit(this))); 
                        (var cond#3 := Lit(AST.Expr__Raw.cond(Lit(this))); 
                          AST.Expr__Raw.Depth#canCall(cond#3)
                             && 
                            AST.Expr__Raw.Depth#canCall(thn#3)
                             && AST.Expr__Raw.Depth#canCall(els#3)
                             && Utils.__default.Max#canCall(AST.Expr__Raw.Depth($LS($ly), thn#3), AST.Expr__Raw.Depth($LS($ly), els#3))
                             && Utils.__default.Max#canCall(AST.Expr__Raw.Depth($LS($ly), cond#3), 
                              Utils.__default.Max(AST.Expr__Raw.Depth($LS($ly), thn#3), AST.Expr__Raw.Depth($LS($ly), els#3)))))))
                   && (!Lit(AST.Expr__Raw.If_q(Lit(this)))
                     ==> (Lit(AST.Expr__Raw.Op_q(Lit(this)))
                         ==> (var e2#3 := Lit(AST.Expr__Raw.oe2(Lit(this))); 
                          (var e1#3 := Lit(AST.Expr__Raw.oe1(Lit(this))); 
                            AST.Expr__Raw.Depth#canCall(e1#3)
                               && AST.Expr__Raw.Depth#canCall(e2#3)
                               && Utils.__default.Max#canCall(AST.Expr__Raw.Depth($LS($ly), e1#3), AST.Expr__Raw.Depth($LS($ly), e2#3)))))
                       && (!Lit(AST.Expr__Raw.Op_q(Lit(this)))
                         ==> (var es#3 := Lit(AST.Expr__Raw.es(Lit(this))); 
                          (forall $l#23#e#0: DatatypeType :: 
                              $Is($l#23#e#0, Tclass.AST.Expr__Raw())
                                 ==> 
                                Seq#Contains(es#3, $Box($l#23#e#0))
                                 ==> AST.Expr__Raw.Depth#canCall($l#23#e#0))
                             && Utils.__default.MaxF#canCall(Tclass.AST.Expr__Raw(), 
                              $Heap, 
                              (var f#11 := Lit(AtLayer((lambda $l#25#ly#0: LayerType :: 
                                        Handle1((lambda $l#25#heap#0: Heap, $l#25#e#0: Box :: 
                                            $Box(AST.Expr__Raw.Depth($l#25#ly#0, $Unbox($l#25#e#0): DatatypeType))), 
                                          (lambda $l#25#heap#0: Heap, $l#25#e#0: Box :: 
                                            $IsBox($l#25#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(es#3, $l#25#e#0)), 
                                          (lambda $l#25#heap#0: Heap, $l#25#e#0: Box :: 
                                            SetRef_to_SetBox((lambda $l#25#o#0: ref :: false))))), 
                                      $LS($ly))); 
                                f#11), 
                              es#3, 
                              LitInt(0))))))))
       && AST.Expr__Raw.Depth($LS($ly), Lit(this))
         == 1
           + (if AST.Expr__Raw.Var_q(Lit(this))
             then 0
             else (if AST.Expr__Raw.Literal_q(Lit(this))
               then (var lit#2 := LitInt(AST.Expr__Raw.n(Lit(this))); LitInt(0))
               else (if AST.Expr__Raw.Bind_q(Lit(this))
                 then (var body#2 := Lit(AST.Expr__Raw.body(Lit(this))); 
                  (var bvals#2 := Lit(AST.Expr__Raw.bvals(Lit(this))); 
                    (var bvars#2 := Lit(AST.Expr__Raw.bvars(Lit(this))); 
                      (var m#2 := Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                            $LS($LZ), 
                            reveal_Utils._default.MaxF, 
                            $Heap, 
                            (var f#6 := Lit(AtLayer((lambda $l#13#ly#0: LayerType :: 
                                      Handle1((lambda $l#13#heap#0: Heap, $l#13#e#0: Box :: 
                                          $Box(AST.Expr__Raw.Depth($l#13#ly#0, $Unbox($l#13#e#0): DatatypeType))), 
                                        (lambda $l#13#heap#0: Heap, $l#13#e#0: Box :: 
                                          $IsBox($l#13#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#2, $l#13#e#0)), 
                                        (lambda $l#13#heap#0: Heap, $l#13#e#0: Box :: 
                                          SetRef_to_SetBox((lambda $l#13#o#0: ref :: false))))), 
                                    $LS($ly))); 
                              f#6), 
                            bvals#2, 
                            LitInt(0)); 
                        Utils.__default.Max(m#2, LitInt(AST.Expr__Raw.Depth($LS($ly), body#2)))))))
                 else (if AST.Expr__Raw.Assign_q(Lit(this))
                   then (var avals#2 := Lit(AST.Expr__Raw.avals(Lit(this))); 
                    (var avars#2 := Lit(AST.Expr__Raw.avars(Lit(this))); 
                      Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                        $LS($LZ), 
                        reveal_Utils._default.MaxF, 
                        $Heap, 
                        (var f#7 := Lit(AtLayer((lambda $l#14#ly#0: LayerType :: 
                                  Handle1((lambda $l#14#heap#0: Heap, $l#14#e#0: Box :: 
                                      $Box(AST.Expr__Raw.Depth($l#14#ly#0, $Unbox($l#14#e#0): DatatypeType))), 
                                    (lambda $l#14#heap#0: Heap, $l#14#e#0: Box :: 
                                      $IsBox($l#14#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(avals#2, $l#14#e#0)), 
                                    (lambda $l#14#heap#0: Heap, $l#14#e#0: Box :: 
                                      SetRef_to_SetBox((lambda $l#14#o#0: ref :: false))))), 
                                $LS($ly))); 
                          f#7), 
                        avals#2, 
                        LitInt(0))))
                   else (if AST.Expr__Raw.If_q(Lit(this))
                     then (var els#2 := Lit(AST.Expr__Raw.els(Lit(this))); 
                      (var thn#2 := Lit(AST.Expr__Raw.thn(Lit(this))); 
                        (var cond#2 := Lit(AST.Expr__Raw.cond(Lit(this))); 
                          LitInt(Utils.__default.Max(LitInt(AST.Expr__Raw.Depth($LS($ly), cond#2)), 
                              LitInt(Utils.__default.Max(LitInt(AST.Expr__Raw.Depth($LS($ly), thn#2)), 
                                  LitInt(AST.Expr__Raw.Depth($LS($ly), els#2)))))))))
                     else (if AST.Expr__Raw.Op_q(Lit(this))
                       then (var e2#2 := Lit(AST.Expr__Raw.oe2(Lit(this))); 
                        (var e1#2 := Lit(AST.Expr__Raw.oe1(Lit(this))); 
                          (var op#2 := Lit(AST.Expr__Raw.op(Lit(this))); 
                            LitInt(Utils.__default.Max(LitInt(AST.Expr__Raw.Depth($LS($ly), e1#2)), 
                                LitInt(AST.Expr__Raw.Depth($LS($ly), e2#2)))))))
                       else (var es#2 := Lit(AST.Expr__Raw.es(Lit(this))); 
                        Utils.__default.MaxF(Tclass.AST.Expr__Raw(), 
                          $LS($LZ), 
                          reveal_Utils._default.MaxF, 
                          $Heap, 
                          (var f#8 := Lit(AtLayer((lambda $l#15#ly#0: LayerType :: 
                                    Handle1((lambda $l#15#heap#0: Heap, $l#15#e#0: Box :: 
                                        $Box(AST.Expr__Raw.Depth($l#15#ly#0, $Unbox($l#15#e#0): DatatypeType))), 
                                      (lambda $l#15#heap#0: Heap, $l#15#e#0: Box :: 
                                        $IsBox($l#15#e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(es#2, $l#15#e#0)), 
                                      (lambda $l#15#heap#0: Heap, $l#15#e#0: Box :: 
                                        SetRef_to_SetBox((lambda $l#15#o#0: ref :: false))))), 
                                  $LS($ly))); 
                            f#8), 
                          es#2, 
                          LitInt(0))))))))));

// function declaration for AST.Expr_Raw.All
function AST.Expr__Raw.All($ly: LayerType, e#0: DatatypeType, p#0: HandleType) : bool;

function AST.Expr__Raw.All#canCall(e#0: DatatypeType, p#0: HandleType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, p#0: HandleType :: 
  { AST.Expr__Raw.All($LS($ly), e#0, p#0) } 
  AST.Expr__Raw.All($LS($ly), e#0, p#0) == AST.Expr__Raw.All($ly, e#0, p#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, p#0: HandleType :: 
  { AST.Expr__Raw.All(AsFuelBottom($ly), e#0, p#0) } 
  AST.Expr__Raw.All($ly, e#0, p#0) == AST.Expr__Raw.All($LZ, e#0, p#0));

function AST.Expr__Raw.All#requires(LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for AST.Expr__Raw.All
axiom (forall $ly: LayerType, $Heap: Heap, e#0: DatatypeType, p#0: HandleType :: 
  { AST.Expr__Raw.All#requires($ly, e#0, p#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(e#0, Tclass.AST.Expr__Raw())
       && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool))
     ==> AST.Expr__Raw.All#requires($ly, e#0, p#0) == true);

// definition axiom for AST.Expr__Raw.All (revealed)
axiom {:id "id496"} (forall $ly: LayerType, $Heap: Heap, e#0: DatatypeType, p#0: HandleType :: 
  { AST.Expr__Raw.All($LS($ly), e#0, p#0), $IsGoodHeap($Heap) } 
  AST.Expr__Raw.All#canCall(e#0, p#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(e#0, Tclass.AST.Expr__Raw())
         && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool)))
     ==> ($Unbox(Apply1(Tclass.AST.Expr__Raw(), TBool, $Heap, p#0, $Box(e#0))): bool
         ==> 
        !AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> (AST.Expr__Raw.Bind_q(e#0)
             ==> (var body#1 := AST.Expr__Raw.body(e#0); 
              (var bvals#1 := AST.Expr__Raw.bvals(e#0); 
                (forall e#4: DatatypeType :: 
                    { AST.Expr__Raw.All($ly, e#4, p#0) } { Seq#Contains(bvals#1, $Box(e#4)) } 
                    $Is(e#4, Tclass.AST.Expr__Raw())
                       ==> 
                      Seq#Contains(bvals#1, $Box(e#4))
                       ==> AST.Expr__Raw.All#canCall(e#4, p#0))
                   && ((forall e#4: DatatypeType :: 
                      { AST.Expr__Raw.All($ly, e#4, p#0) } { Seq#Contains(bvals#1, $Box(e#4)) } 
                      $Is(e#4, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#1, $Box(e#4))
                         ==> AST.Expr__Raw.All($ly, e#4, p#0))
                     ==> AST.Expr__Raw.All#canCall(body#1, p#0)))))
           && (!AST.Expr__Raw.Bind_q(e#0)
             ==> (AST.Expr__Raw.Assign_q(e#0)
                 ==> (var avals#1 := AST.Expr__Raw.avals(e#0); 
                  Lit(true)
                     ==> (forall e#5: DatatypeType :: 
                      { AST.Expr__Raw.All($ly, e#5, p#0) } { Seq#Contains(avals#1, $Box(e#5)) } 
                      $Is(e#5, Tclass.AST.Expr__Raw())
                         ==> 
                        Seq#Contains(avals#1, $Box(e#5))
                         ==> AST.Expr__Raw.All#canCall(e#5, p#0))))
               && (!AST.Expr__Raw.Assign_q(e#0)
                 ==> (AST.Expr__Raw.If_q(e#0)
                     ==> (var els#1 := AST.Expr__Raw.els(e#0); 
                      (var thn#1 := AST.Expr__Raw.thn(e#0); 
                        (var cond#1 := AST.Expr__Raw.cond(e#0); 
                          AST.Expr__Raw.All#canCall(cond#1, p#0)
                             && (AST.Expr__Raw.All($ly, cond#1, p#0)
                               ==> AST.Expr__Raw.All#canCall(thn#1, p#0)
                                 && (AST.Expr__Raw.All($ly, thn#1, p#0) ==> AST.Expr__Raw.All#canCall(els#1, p#0)))))))
                   && (!AST.Expr__Raw.If_q(e#0)
                     ==> (AST.Expr__Raw.Op_q(e#0)
                         ==> (var oe2#1 := AST.Expr__Raw.oe2(e#0); 
                          (var oe1#1 := AST.Expr__Raw.oe1(e#0); 
                            AST.Expr__Raw.All#canCall(oe1#1, p#0)
                               && (AST.Expr__Raw.All($ly, oe1#1, p#0) ==> AST.Expr__Raw.All#canCall(oe2#1, p#0)))))
                       && (!AST.Expr__Raw.Op_q(e#0)
                         ==> (var es#1 := AST.Expr__Raw.es(e#0); 
                          Lit(true)
                             ==> (forall e#6: DatatypeType :: 
                              { AST.Expr__Raw.All($ly, e#6, p#0) } { Seq#Contains(es#1, $Box(e#6)) } 
                              $Is(e#6, Tclass.AST.Expr__Raw())
                                 ==> 
                                Seq#Contains(es#1, $Box(e#6))
                                 ==> AST.Expr__Raw.All#canCall(e#6, p#0))))))))
       && AST.Expr__Raw.All($LS($ly), e#0, p#0)
         == ($Unbox(Apply1(Tclass.AST.Expr__Raw(), TBool, $Heap, p#0, $Box(e#0))): bool
           && (if AST.Expr__Raw.Var_q(e#0)
             then (var name#0 := AST.Expr__Raw.name(e#0); Lit(true))
             else (if AST.Expr__Raw.Literal_q(e#0)
               then (var n#0 := AST.Expr__Raw.n(e#0); Lit(true))
               else (if AST.Expr__Raw.Bind_q(e#0)
                 then (var body#0 := AST.Expr__Raw.body(e#0); 
                  (var bvals#0 := AST.Expr__Raw.bvals(e#0); 
                    (var bvars#0 := AST.Expr__Raw.bvars(e#0); 
                      (forall e#1: DatatypeType :: 
                          { AST.Expr__Raw.All($ly, e#1, p#0) } { Seq#Contains(bvals#0, $Box(e#1)) } 
                          $Is(e#1, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#0, $Box(e#1))
                             ==> AST.Expr__Raw.All($ly, e#1, p#0))
                         && AST.Expr__Raw.All($ly, body#0, p#0))))
                 else (if AST.Expr__Raw.Assign_q(e#0)
                   then (var avals#0 := AST.Expr__Raw.avals(e#0); 
                    (var avars#0 := AST.Expr__Raw.avars(e#0); 
                      true
                         && (forall e#2: DatatypeType :: 
                          { AST.Expr__Raw.All($ly, e#2, p#0) } { Seq#Contains(avals#0, $Box(e#2)) } 
                          $Is(e#2, Tclass.AST.Expr__Raw()) && Seq#Contains(avals#0, $Box(e#2))
                             ==> AST.Expr__Raw.All($ly, e#2, p#0))))
                   else (if AST.Expr__Raw.If_q(e#0)
                     then (var els#0 := AST.Expr__Raw.els(e#0); 
                      (var thn#0 := AST.Expr__Raw.thn(e#0); 
                        (var cond#0 := AST.Expr__Raw.cond(e#0); 
                          AST.Expr__Raw.All($ly, cond#0, p#0)
                             && AST.Expr__Raw.All($ly, thn#0, p#0)
                             && AST.Expr__Raw.All($ly, els#0, p#0))))
                     else (if AST.Expr__Raw.Op_q(e#0)
                       then (var oe2#0 := AST.Expr__Raw.oe2(e#0); 
                        (var oe1#0 := AST.Expr__Raw.oe1(e#0); 
                          (var op#0 := AST.Expr__Raw.op(e#0); 
                            AST.Expr__Raw.All($ly, oe1#0, p#0) && AST.Expr__Raw.All($ly, oe2#0, p#0))))
                       else (var es#0 := AST.Expr__Raw.es(e#0); 
                        true
                           && (forall e#3: DatatypeType :: 
                            { AST.Expr__Raw.All($ly, e#3, p#0) } { Seq#Contains(es#0, $Box(e#3)) } 
                            $Is(e#3, Tclass.AST.Expr__Raw()) && Seq#Contains(es#0, $Box(e#3))
                               ==> AST.Expr__Raw.All($ly, e#3, p#0)))))))))));

// definition axiom for AST.Expr__Raw.All for decreasing-related literals (revealed)
axiom {:id "id497"} (forall $ly: LayerType, $Heap: Heap, e#0: DatatypeType, p#0: HandleType :: 
  {:weight 3} { AST.Expr__Raw.All($LS($ly), Lit(e#0), p#0), $IsGoodHeap($Heap) } 
  AST.Expr__Raw.All#canCall(Lit(e#0), p#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(e#0, Tclass.AST.Expr__Raw())
         && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool)))
     ==> ($Unbox(Apply1(Tclass.AST.Expr__Raw(), TBool, $Heap, p#0, $Box(Lit(e#0)))): bool
         ==> 
        !Lit(AST.Expr__Raw.Var_q(Lit(e#0)))
         ==> 
        !Lit(AST.Expr__Raw.Literal_q(Lit(e#0)))
         ==> (Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (var body#3 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
              (var bvals#3 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                (forall e#10: DatatypeType :: 
                    { AST.Expr__Raw.All($LS($ly), e#10, p#0) } 
                      { Seq#Contains(bvals#3, $Box(e#10)) } 
                    $Is(e#10, Tclass.AST.Expr__Raw())
                       ==> 
                      Seq#Contains(bvals#3, $Box(e#10))
                       ==> AST.Expr__Raw.All#canCall(e#10, p#0))
                   && ((forall e#10: DatatypeType :: 
                      { AST.Expr__Raw.All($LS($ly), e#10, p#0) } 
                        { Seq#Contains(bvals#3, $Box(e#10)) } 
                      $Is(e#10, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#3, $Box(e#10))
                         ==> AST.Expr__Raw.All($LS($ly), e#10, p#0))
                     ==> AST.Expr__Raw.All#canCall(body#3, p#0)))))
           && (!Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (var avals#3 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  Lit(true)
                     ==> (forall e#11: DatatypeType :: 
                      { AST.Expr__Raw.All($LS($ly), e#11, p#0) } 
                        { Seq#Contains(avals#3, $Box(e#11)) } 
                      $Is(e#11, Tclass.AST.Expr__Raw())
                         ==> 
                        Seq#Contains(avals#3, $Box(e#11))
                         ==> AST.Expr__Raw.All#canCall(e#11, p#0))))
               && (!Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (var els#3 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#3 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#3 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          AST.Expr__Raw.All#canCall(cond#3, p#0)
                             && (AST.Expr__Raw.All($LS($ly), cond#3, p#0)
                               ==> AST.Expr__Raw.All#canCall(thn#3, p#0)
                                 && (AST.Expr__Raw.All($LS($ly), thn#3, p#0)
                                   ==> AST.Expr__Raw.All#canCall(els#3, p#0)))))))
                   && (!Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var oe2#3 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                          (var oe1#3 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                            AST.Expr__Raw.All#canCall(oe1#3, p#0)
                               && (AST.Expr__Raw.All($LS($ly), oe1#3, p#0)
                                 ==> AST.Expr__Raw.All#canCall(oe2#3, p#0)))))
                       && (!Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var es#3 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                          Lit(true)
                             ==> (forall e#12: DatatypeType :: 
                              { AST.Expr__Raw.All($LS($ly), e#12, p#0) } { Seq#Contains(es#3, $Box(e#12)) } 
                              $Is(e#12, Tclass.AST.Expr__Raw())
                                 ==> 
                                Seq#Contains(es#3, $Box(e#12))
                                 ==> AST.Expr__Raw.All#canCall(e#12, p#0))))))))
       && AST.Expr__Raw.All($LS($ly), Lit(e#0), p#0)
         == ($Unbox(Apply1(Tclass.AST.Expr__Raw(), TBool, $Heap, p#0, $Box(Lit(e#0)))): bool
           && (if AST.Expr__Raw.Var_q(Lit(e#0))
             then (var name#2 := Lit(AST.Expr__Raw.name(Lit(e#0))); Lit(true))
             else (if AST.Expr__Raw.Literal_q(Lit(e#0))
               then (var n#2 := LitInt(AST.Expr__Raw.n(Lit(e#0))); Lit(true))
               else (if AST.Expr__Raw.Bind_q(Lit(e#0))
                 then (var body#2 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                  (var bvals#2 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                    (var bvars#2 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                      (forall e#7: DatatypeType :: 
                          { AST.Expr__Raw.All($LS($ly), e#7, p#0) } { Seq#Contains(bvals#2, $Box(e#7)) } 
                          $Is(e#7, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#2, $Box(e#7))
                             ==> AST.Expr__Raw.All($LS($ly), e#7, p#0))
                         && AST.Expr__Raw.All($LS($ly), body#2, p#0))))
                 else (if AST.Expr__Raw.Assign_q(Lit(e#0))
                   then (var avals#2 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                    (var avars#2 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                      true
                         && (forall e#8: DatatypeType :: 
                          { AST.Expr__Raw.All($LS($ly), e#8, p#0) } { Seq#Contains(avals#2, $Box(e#8)) } 
                          $Is(e#8, Tclass.AST.Expr__Raw()) && Seq#Contains(avals#2, $Box(e#8))
                             ==> AST.Expr__Raw.All($LS($ly), e#8, p#0))))
                   else (if AST.Expr__Raw.If_q(Lit(e#0))
                     then (var els#2 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#2 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#2 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          AST.Expr__Raw.All($LS($ly), cond#2, p#0)
                             && AST.Expr__Raw.All($LS($ly), thn#2, p#0)
                             && AST.Expr__Raw.All($LS($ly), els#2, p#0))))
                     else (if AST.Expr__Raw.Op_q(Lit(e#0))
                       then (var oe2#2 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                        (var oe1#2 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                          (var op#2 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                            AST.Expr__Raw.All($LS($ly), oe1#2, p#0)
                               && AST.Expr__Raw.All($LS($ly), oe2#2, p#0))))
                       else (var es#2 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                        true
                           && (forall e#9: DatatypeType :: 
                            { AST.Expr__Raw.All($LS($ly), e#9, p#0) } { Seq#Contains(es#2, $Box(e#9)) } 
                            $Is(e#9, Tclass.AST.Expr__Raw()) && Seq#Contains(es#2, $Box(e#9))
                               ==> AST.Expr__Raw.All($LS($ly), e#9, p#0)))))))))));

// definition axiom for AST.Expr__Raw.All for all literals (revealed)
axiom {:id "id498"} (forall $ly: LayerType, $Heap: Heap, e#0: DatatypeType, p#0: HandleType :: 
  {:weight 3} { AST.Expr__Raw.All($LS($ly), Lit(e#0), Lit(p#0)), $IsGoodHeap($Heap) } 
  AST.Expr__Raw.All#canCall(Lit(e#0), Lit(p#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(e#0, Tclass.AST.Expr__Raw())
         && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool)))
     ==> ($Unbox(Apply1(Tclass.AST.Expr__Raw(), TBool, $Heap, Lit(p#0), $Box(Lit(e#0)))): bool
         ==> 
        !Lit(AST.Expr__Raw.Var_q(Lit(e#0)))
         ==> 
        !Lit(AST.Expr__Raw.Literal_q(Lit(e#0)))
         ==> (Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (var body#5 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
              (var bvals#5 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                (forall e#16: DatatypeType :: 
                    { AST.Expr__Raw.All($LS($ly), e#16, p#0) } 
                      { Seq#Contains(bvals#5, $Box(e#16)) } 
                    $Is(e#16, Tclass.AST.Expr__Raw())
                       ==> 
                      Seq#Contains(bvals#5, $Box(e#16))
                       ==> AST.Expr__Raw.All#canCall(e#16, Lit(p#0)))
                   && ((forall e#16: DatatypeType :: 
                      { AST.Expr__Raw.All($LS($ly), e#16, p#0) } 
                        { Seq#Contains(bvals#5, $Box(e#16)) } 
                      $Is(e#16, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#5, $Box(e#16))
                         ==> AST.Expr__Raw.All($LS($ly), e#16, Lit(p#0)))
                     ==> AST.Expr__Raw.All#canCall(body#5, Lit(p#0))))))
           && (!Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (var avals#5 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  Lit(true)
                     ==> (forall e#17: DatatypeType :: 
                      { AST.Expr__Raw.All($LS($ly), e#17, p#0) } 
                        { Seq#Contains(avals#5, $Box(e#17)) } 
                      $Is(e#17, Tclass.AST.Expr__Raw())
                         ==> 
                        Seq#Contains(avals#5, $Box(e#17))
                         ==> AST.Expr__Raw.All#canCall(e#17, Lit(p#0)))))
               && (!Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (var els#5 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#5 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#5 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          AST.Expr__Raw.All#canCall(cond#5, Lit(p#0))
                             && (AST.Expr__Raw.All($LS($ly), cond#5, Lit(p#0))
                               ==> AST.Expr__Raw.All#canCall(thn#5, Lit(p#0))
                                 && (AST.Expr__Raw.All($LS($ly), thn#5, Lit(p#0))
                                   ==> AST.Expr__Raw.All#canCall(els#5, Lit(p#0))))))))
                   && (!Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var oe2#5 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                          (var oe1#5 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                            AST.Expr__Raw.All#canCall(oe1#5, Lit(p#0))
                               && (AST.Expr__Raw.All($LS($ly), oe1#5, Lit(p#0))
                                 ==> AST.Expr__Raw.All#canCall(oe2#5, Lit(p#0))))))
                       && (!Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var es#5 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                          Lit(true)
                             ==> (forall e#18: DatatypeType :: 
                              { AST.Expr__Raw.All($LS($ly), e#18, p#0) } { Seq#Contains(es#5, $Box(e#18)) } 
                              $Is(e#18, Tclass.AST.Expr__Raw())
                                 ==> 
                                Seq#Contains(es#5, $Box(e#18))
                                 ==> AST.Expr__Raw.All#canCall(e#18, Lit(p#0)))))))))
       && AST.Expr__Raw.All($LS($ly), Lit(e#0), Lit(p#0))
         == ($Unbox(Apply1(Tclass.AST.Expr__Raw(), TBool, $Heap, Lit(p#0), $Box(Lit(e#0)))): bool
           && (if AST.Expr__Raw.Var_q(Lit(e#0))
             then (var name#4 := Lit(AST.Expr__Raw.name(Lit(e#0))); Lit(true))
             else (if AST.Expr__Raw.Literal_q(Lit(e#0))
               then (var n#4 := LitInt(AST.Expr__Raw.n(Lit(e#0))); Lit(true))
               else (if AST.Expr__Raw.Bind_q(Lit(e#0))
                 then (var body#4 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                  (var bvals#4 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                    (var bvars#4 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                      (forall e#13: DatatypeType :: 
                          { AST.Expr__Raw.All($LS($ly), e#13, p#0) } 
                            { Seq#Contains(bvals#4, $Box(e#13)) } 
                          $Is(e#13, Tclass.AST.Expr__Raw()) && Seq#Contains(bvals#4, $Box(e#13))
                             ==> AST.Expr__Raw.All($LS($ly), e#13, Lit(p#0)))
                         && AST.Expr__Raw.All($LS($ly), body#4, Lit(p#0)))))
                 else (if AST.Expr__Raw.Assign_q(Lit(e#0))
                   then (var avals#4 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                    (var avars#4 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                      true
                         && (forall e#14: DatatypeType :: 
                          { AST.Expr__Raw.All($LS($ly), e#14, p#0) } 
                            { Seq#Contains(avals#4, $Box(e#14)) } 
                          $Is(e#14, Tclass.AST.Expr__Raw()) && Seq#Contains(avals#4, $Box(e#14))
                             ==> AST.Expr__Raw.All($LS($ly), e#14, Lit(p#0)))))
                   else (if AST.Expr__Raw.If_q(Lit(e#0))
                     then (var els#4 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#4 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#4 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          Lit(AST.Expr__Raw.All($LS($ly), cond#4, Lit(p#0))
                               && AST.Expr__Raw.All($LS($ly), thn#4, Lit(p#0))
                               && AST.Expr__Raw.All($LS($ly), els#4, Lit(p#0))))))
                     else (if AST.Expr__Raw.Op_q(Lit(e#0))
                       then (var oe2#4 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                        (var oe1#4 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                          (var op#4 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                            Lit(AST.Expr__Raw.All($LS($ly), oe1#4, Lit(p#0))
                                 && AST.Expr__Raw.All($LS($ly), oe2#4, Lit(p#0))))))
                       else (var es#4 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                        true
                           && (forall e#15: DatatypeType :: 
                            { AST.Expr__Raw.All($LS($ly), e#15, p#0) } { Seq#Contains(es#4, $Box(e#15)) } 
                            $Is(e#15, Tclass.AST.Expr__Raw()) && Seq#Contains(es#4, $Box(e#15))
                               ==> AST.Expr__Raw.All($LS($ly), e#15, Lit(p#0))))))))))));

// function declaration for AST.Expr_Raw.All_Es
function AST.Expr__Raw.All__Es(es#0: Seq, p#0: HandleType) : bool;

function AST.Expr__Raw.All__Es#canCall(es#0: Seq, p#0: HandleType) : bool;

function AST.Expr__Raw.All__Es#requires(Seq, HandleType) : bool;

// #requires axiom for AST.Expr__Raw.All__Es
axiom (forall es#0: Seq, p#0: HandleType :: 
  { AST.Expr__Raw.All__Es#requires(es#0, p#0) } 
  $Is(es#0, TSeq(Tclass.AST.Expr__Raw()))
       && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool))
     ==> AST.Expr__Raw.All__Es#requires(es#0, p#0) == true);

// definition axiom for AST.Expr__Raw.All__Es (revealed)
axiom {:id "id499"} (forall es#0: Seq, p#0: HandleType :: 
  { AST.Expr__Raw.All__Es(es#0, p#0) } 
  AST.Expr__Raw.All__Es#canCall(es#0, p#0)
       || ($Is(es#0, TSeq(Tclass.AST.Expr__Raw()))
         && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool)))
     ==> (forall e#0: DatatypeType :: 
        { AST.Expr__Raw.All($LS($LZ), e#0, p#0) } { Seq#Contains(es#0, $Box(e#0)) } 
        $Is(e#0, Tclass.AST.Expr__Raw())
           ==> 
          Seq#Contains(es#0, $Box(e#0))
           ==> AST.Expr__Raw.All#canCall(e#0, p#0))
       && AST.Expr__Raw.All__Es(es#0, p#0)
         == (forall e#0: DatatypeType :: 
          { AST.Expr__Raw.All($LS($LZ), e#0, p#0) } { Seq#Contains(es#0, $Box(e#0)) } 
          $Is(e#0, Tclass.AST.Expr__Raw()) && Seq#Contains(es#0, $Box(e#0))
             ==> AST.Expr__Raw.All($LS($LZ), e#0, p#0)));

// definition axiom for AST.Expr__Raw.All__Es for decreasing-related literals (revealed)
axiom {:id "id500"} (forall es#0: Seq, p#0: HandleType :: 
  {:weight 3} { AST.Expr__Raw.All__Es(Lit(es#0), p#0) } 
  AST.Expr__Raw.All__Es#canCall(Lit(es#0), p#0)
       || ($Is(es#0, TSeq(Tclass.AST.Expr__Raw()))
         && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool)))
     ==> (forall e#1: DatatypeType :: 
        { AST.Expr__Raw.All($LS($LZ), e#1, p#0) } { Seq#Contains(es#0, $Box(e#1)) } 
        $Is(e#1, Tclass.AST.Expr__Raw())
           ==> 
          Seq#Contains(es#0, $Box(e#1))
           ==> AST.Expr__Raw.All#canCall(e#1, p#0))
       && AST.Expr__Raw.All__Es(Lit(es#0), p#0)
         == (forall e#1: DatatypeType :: 
          { AST.Expr__Raw.All($LS($LZ), e#1, p#0) } { Seq#Contains(es#0, $Box(e#1)) } 
          $Is(e#1, Tclass.AST.Expr__Raw()) && Seq#Contains(es#0, $Box(e#1))
             ==> AST.Expr__Raw.All($LS($LZ), e#1, p#0)));

// definition axiom for AST.Expr__Raw.All__Es for all literals (revealed)
axiom {:id "id501"} (forall es#0: Seq, p#0: HandleType :: 
  {:weight 3} { AST.Expr__Raw.All__Es(Lit(es#0), Lit(p#0)) } 
  AST.Expr__Raw.All__Es#canCall(Lit(es#0), Lit(p#0))
       || ($Is(es#0, TSeq(Tclass.AST.Expr__Raw()))
         && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass.AST.Expr__Raw(), TBool)))
     ==> (forall e#2: DatatypeType :: 
        { AST.Expr__Raw.All($LS($LZ), e#2, p#0) } { Seq#Contains(es#0, $Box(e#2)) } 
        $Is(e#2, Tclass.AST.Expr__Raw())
           ==> 
          Seq#Contains(es#0, $Box(e#2))
           ==> AST.Expr__Raw.All#canCall(e#2, Lit(p#0)))
       && AST.Expr__Raw.All__Es(Lit(es#0), Lit(p#0))
         == (forall e#2: DatatypeType :: 
          { AST.Expr__Raw.All($LS($LZ), e#2, p#0) } { Seq#Contains(es#0, $Box(e#2)) } 
          $Is(e#2, Tclass.AST.Expr__Raw()) && Seq#Contains(es#0, $Box(e#2))
             ==> AST.Expr__Raw.All($LS($LZ), e#2, Lit(p#0))));

// function declaration for AST.Expr_Raw.WellFormed_Single
function AST.Expr__Raw.WellFormed__Single(e#0: DatatypeType) : bool;

function AST.Expr__Raw.WellFormed__Single#canCall(e#0: DatatypeType) : bool;

function AST.Expr__Raw.WellFormed__Single#requires(DatatypeType) : bool;

// #requires axiom for AST.Expr__Raw.WellFormed__Single
axiom (forall e#0: DatatypeType :: 
  { AST.Expr__Raw.WellFormed__Single#requires(e#0) } 
  $Is(e#0, Tclass.AST.Expr__Raw())
     ==> AST.Expr__Raw.WellFormed__Single#requires(e#0) == true);

// definition axiom for AST.Expr__Raw.WellFormed__Single (revealed)
axiom {:id "id502"} (forall e#0: DatatypeType :: 
  { AST.Expr__Raw.WellFormed__Single(e#0) } 
  AST.Expr__Raw.WellFormed__Single#canCall(e#0)
       || $Is(e#0, Tclass.AST.Expr__Raw())
     ==> AST.Expr__Raw.WellFormed__Single(e#0)
       == (if AST.Expr__Raw.Var_q(e#0)
         then (var name#0 := AST.Expr__Raw.name(e#0); Lit(true))
         else (if AST.Expr__Raw.Literal_q(e#0)
           then (var n#0 := AST.Expr__Raw.n(e#0); Lit(true))
           else (if AST.Expr__Raw.Bind_q(e#0)
             then (var body#0 := AST.Expr__Raw.body(e#0); 
              (var bvals#0 := AST.Expr__Raw.bvals(e#0); 
                (var bvars#0 := AST.Expr__Raw.bvars(e#0); 
                  Seq#Length(bvars#0) == Seq#Length(bvals#0))))
             else (if AST.Expr__Raw.Assign_q(e#0)
               then (var avals#0 := AST.Expr__Raw.avals(e#0); 
                (var avars#0 := AST.Expr__Raw.avars(e#0); 
                  Seq#Length(avars#0) == Seq#Length(avals#0)))
               else (if AST.Expr__Raw.If_q(e#0)
                 then (var els#0 := AST.Expr__Raw.els(e#0); 
                  (var thn#0 := AST.Expr__Raw.thn(e#0); 
                    (var cond#0 := AST.Expr__Raw.cond(e#0); Lit(true))))
                 else (if AST.Expr__Raw.Op_q(e#0)
                   then (var oe2#0 := AST.Expr__Raw.oe2(e#0); 
                    (var oe1#0 := AST.Expr__Raw.oe1(e#0); 
                      (var op#0 := AST.Expr__Raw.op(e#0); Lit(true))))
                   else (var es#0 := AST.Expr__Raw.es(e#0); Lit(true)))))))));

// definition axiom for AST.Expr__Raw.WellFormed__Single for all literals (revealed)
axiom {:id "id503"} (forall e#0: DatatypeType :: 
  {:weight 3} { AST.Expr__Raw.WellFormed__Single(Lit(e#0)) } 
  AST.Expr__Raw.WellFormed__Single#canCall(Lit(e#0))
       || $Is(e#0, Tclass.AST.Expr__Raw())
     ==> AST.Expr__Raw.WellFormed__Single(Lit(e#0))
       == (if AST.Expr__Raw.Var_q(Lit(e#0))
         then (var name#2 := Lit(AST.Expr__Raw.name(Lit(e#0))); Lit(true))
         else (if AST.Expr__Raw.Literal_q(Lit(e#0))
           then (var n#2 := LitInt(AST.Expr__Raw.n(Lit(e#0))); Lit(true))
           else (if AST.Expr__Raw.Bind_q(Lit(e#0))
             then (var body#2 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
              (var bvals#2 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                (var bvars#2 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                  Seq#Length(bvars#2) == Seq#Length(bvals#2))))
             else (if AST.Expr__Raw.Assign_q(Lit(e#0))
               then (var avals#2 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                (var avars#2 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                  Seq#Length(avars#2) == Seq#Length(avals#2)))
               else (if AST.Expr__Raw.If_q(Lit(e#0))
                 then (var els#2 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                  (var thn#2 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                    (var cond#2 := Lit(AST.Expr__Raw.cond(Lit(e#0))); Lit(true))))
                 else (if AST.Expr__Raw.Op_q(Lit(e#0))
                   then (var oe2#2 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                    (var oe1#2 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                      (var op#2 := Lit(AST.Expr__Raw.op(Lit(e#0))); Lit(true))))
                   else (var es#2 := Lit(AST.Expr__Raw.es(Lit(e#0))); Lit(true)))))))));

// function declaration for AST.Expr_Raw.WellFormed
function AST.Expr__Raw.WellFormed(this: DatatypeType) : bool;

function AST.Expr__Raw.WellFormed#canCall(this: DatatypeType) : bool;

function AST.Expr__Raw.WellFormed#requires(DatatypeType) : bool;

// #requires axiom for AST.Expr__Raw.WellFormed
axiom (forall $Heap: Heap, this: DatatypeType :: 
  { AST.Expr__Raw.WellFormed#requires(this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      $Is(this, Tclass.AST.Expr__Raw())
       && $IsAlloc(this, Tclass.AST.Expr__Raw(), $Heap)
     ==> AST.Expr__Raw.WellFormed#requires(this) == true);

function AST.Expr__Raw.WellFormed__Single#Handle() : HandleType;

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(Tclass.AST.Expr__Raw(), 
      TBool, 
      $heap, 
      AST.Expr__Raw.WellFormed__Single#Handle(), 
      $fh$0x#0) } 
  Apply1(Tclass.AST.Expr__Raw(), 
      TBool, 
      $heap, 
      AST.Expr__Raw.WellFormed__Single#Handle(), 
      $fh$0x#0)
     == $Box(AST.Expr__Raw.WellFormed__Single($Unbox($fh$0x#0): DatatypeType)));

axiom (forall $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(Tclass.AST.Expr__Raw(), 
      TBool, 
      $heap, 
      AST.Expr__Raw.WellFormed__Single#Handle(), 
      $fh$0x#0) } 
  Requires1(Tclass.AST.Expr__Raw(), 
      TBool, 
      $heap, 
      AST.Expr__Raw.WellFormed__Single#Handle(), 
      $fh$0x#0)
     == AST.Expr__Raw.WellFormed__Single#requires($Unbox($fh$0x#0): DatatypeType));

axiom (forall $bx: Box, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(Tclass.AST.Expr__Raw(), 
        TBool, 
        $heap, 
        AST.Expr__Raw.WellFormed__Single#Handle(), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(Tclass.AST.Expr__Raw(), 
        TBool, 
        $heap, 
        AST.Expr__Raw.WellFormed__Single#Handle(), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall $heap: Heap, $fh$0x#0: DatatypeType :: 
  { AST.Expr__Raw.WellFormed__Single($fh$0x#0), $IsGoodHeap($heap) } 
  AST.Expr__Raw.WellFormed__Single($fh$0x#0)
     == $Unbox(Apply1(Tclass.AST.Expr__Raw(), 
        TBool, 
        $heap, 
        AST.Expr__Raw.WellFormed__Single#Handle(), 
        $Box($fh$0x#0))): bool);

// definition axiom for AST.Expr__Raw.WellFormed (revealed)
axiom {:id "id504"} (forall $Heap: Heap, this: DatatypeType :: 
  { AST.Expr__Raw.WellFormed(this), $IsGoodHeap($Heap) } 
  AST.Expr__Raw.WellFormed#canCall(this)
       || ($IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.AST.Expr__Raw())
         && $IsAlloc(this, Tclass.AST.Expr__Raw(), $Heap))
     ==> AST.Expr__Raw.All#canCall(this, AST.Expr__Raw.WellFormed__Single#Handle())
       && AST.Expr__Raw.WellFormed(this)
         == AST.Expr__Raw.All($LS($LZ), this, AST.Expr__Raw.WellFormed__Single#Handle()));

// definition axiom for AST.Expr__Raw.WellFormed for all literals (revealed)
axiom {:id "id505"} (forall $Heap: Heap, this: DatatypeType :: 
  {:weight 3} { AST.Expr__Raw.WellFormed(Lit(this)), $IsGoodHeap($Heap) } 
  AST.Expr__Raw.WellFormed#canCall(Lit(this))
       || ($IsGoodHeap($Heap)
         && 
        $Is(this, Tclass.AST.Expr__Raw())
         && $IsAlloc(this, Tclass.AST.Expr__Raw(), $Heap))
     ==> AST.Expr__Raw.All#canCall(Lit(this), AST.Expr__Raw.WellFormed__Single#Handle())
       && AST.Expr__Raw.WellFormed(Lit(this))
         == AST.Expr__Raw.All($LS($LZ), Lit(this), AST.Expr__Raw.WellFormed__Single#Handle()));

// $Is axiom for subset type AST.Expr
axiom (forall e#0: DatatypeType :: 
  { $Is(e#0, Tclass.AST.Expr()) } 
  $Is(e#0, Tclass.AST.Expr())
     <==> $Is(e#0, Tclass.AST.Expr__Raw()) && AST.Expr__Raw.WellFormed(e#0));

// $IsAlloc axiom for subset type AST.Expr
axiom (forall e#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(e#0, Tclass.AST.Expr(), $h) } 
  $IsAlloc(e#0, Tclass.AST.Expr(), $h)
     <==> $IsAlloc(e#0, Tclass.AST.Expr__Raw(), $h));

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

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$Expr: TyTagFamily;

const unique tytagFamily$BinOp: TyTagFamily;

const unique tytagFamily$Expr_Raw: TyTagFamily;

const unique tytagFamily$Result: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

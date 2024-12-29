// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.dfy

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

const reveal_Utils._default.MaxF: bool;

const unique class.EliminateMulZero.__default: ClassName;

function EliminateMulZero.__default.ZeroExpr() : DatatypeType
uses {
axiom EliminateMulZero.__default.ZeroExpr(): DatatypeType
   == Lit(#AST.Expr_Raw.Literal(LitInt(0)));
// _default.ZeroExpr: Type axiom
axiom 0 < $FunctionContextHeight
   ==> $Is(EliminateMulZero.__default.ZeroExpr(), Tclass.AST.Expr());
}

procedure {:verboseName "EliminateMulZero.ZeroExpr (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.ZeroExpr();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.ZeroExpr (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.ZeroExpr()
{
  var $_ReadsFrame: [ref,Field]bool;

    // AddWellformednessCheck for const field ZeroExpr
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume true;
    assert {:id "id0"} $Is(Lit(#AST.Expr_Raw.Literal(LitInt(0))), Tclass.AST.Expr());
}



// _default.ZeroExpr: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(EliminateMulZero.__default.ZeroExpr(), Tclass.AST.Expr(), $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(EliminateMulZero.__default.ZeroExpr(), Tclass.AST.Expr(), $h));

// function declaration for EliminateMulZero._default.IsZeroMulPure
function EliminateMulZero.__default.IsZeroMulPure(e1#0: DatatypeType, e2#0: DatatypeType) : bool
uses {
// definition axiom for EliminateMulZero.__default.IsZeroMulPure (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall e1#0: DatatypeType, e2#0: DatatypeType :: 
    { EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0) } 
    EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(e1#0, Tclass.AST.Expr())
           && $Is(e2#0, Tclass.AST.Expr()))
       ==> $IsA#AST.Expr__Raw(e1#0)
         && $IsA#AST.Expr__Raw(EliminateMulZero.__default.ZeroExpr())
         && (AST.Expr__Raw#Equal(e1#0, EliminateMulZero.__default.ZeroExpr())
           ==> Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set)))
         && EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
           == (AST.Expr__Raw#Equal(e1#0, EliminateMulZero.__default.ZeroExpr())
             && Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))));
// definition axiom for EliminateMulZero.__default.IsZeroMulPure for all literals (revealed)
axiom {:id "id2"} 1 <= $FunctionContextHeight
   ==> (forall e1#0: DatatypeType, e2#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.IsZeroMulPure(Lit(e1#0), Lit(e2#0)) } 
    EliminateMulZero.__default.IsZeroMulPure#canCall(Lit(e1#0), Lit(e2#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(e1#0, Tclass.AST.Expr())
           && $Is(e2#0, Tclass.AST.Expr()))
       ==> $IsA#AST.Expr__Raw(Lit(e1#0))
         && $IsA#AST.Expr__Raw(EliminateMulZero.__default.ZeroExpr())
         && (AST.Expr__Raw#Equal(e1#0, EliminateMulZero.__default.ZeroExpr())
           ==> Pure.__default.IsPure#canCall(Lit(e2#0), Lit(Set#Empty(): Set)))
         && EliminateMulZero.__default.IsZeroMulPure(Lit(e1#0), Lit(e2#0))
           == (AST.Expr__Raw#Equal(e1#0, EliminateMulZero.__default.ZeroExpr())
             && Pure.__default.IsPure($LS($LZ), Lit(e2#0), Lit(Set#Empty(): Set))));
}

function EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0: DatatypeType, e2#0: DatatypeType) : bool;

function EliminateMulZero.__default.IsZeroMulPure#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for EliminateMulZero.__default.IsZeroMulPure
axiom (forall e1#0: DatatypeType, e2#0: DatatypeType :: 
  { EliminateMulZero.__default.IsZeroMulPure#requires(e1#0, e2#0) } 
  $Is(e1#0, Tclass.AST.Expr()) && $Is(e2#0, Tclass.AST.Expr())
     ==> EliminateMulZero.__default.IsZeroMulPure#requires(e1#0, e2#0) == true);

procedure {:verboseName "EliminateMulZero.IsZeroMulPure (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.IsZeroMulPure(e1#0: DatatypeType where $Is(e1#0, Tclass.AST.Expr()), 
    e2#0: DatatypeType where $Is(e2#0, Tclass.AST.Expr()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.Eliminate
function EliminateMulZero.__default.Eliminate($ly: LayerType, e#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for EliminateMulZero.__default.Eliminate
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType :: 
    { EliminateMulZero.__default.Eliminate($ly, e#0) } 
    EliminateMulZero.__default.Eliminate#canCall(e#0)
         || (2 < $FunctionContextHeight && $Is(e#0, Tclass.AST.Expr()))
       ==> $Is(EliminateMulZero.__default.Eliminate($ly, e#0), Tclass.AST.Expr()));
// definition axiom for EliminateMulZero.__default.Eliminate (revealed)
axiom {:id "id4"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType :: 
    { EliminateMulZero.__default.Eliminate($LS($ly), e#0) } 
    EliminateMulZero.__default.Eliminate#canCall(e#0)
         || (2 < $FunctionContextHeight && $Is(e#0, Tclass.AST.Expr()))
       ==> (!AST.Expr__Raw.Var_q(e#0)
           ==> 
          !AST.Expr__Raw.Literal_q(e#0)
           ==> (AST.Expr__Raw.Bind_q(e#0)
               ==> (var body#1 := AST.Expr__Raw.body(e#0); 
                (var bvals#1 := AST.Expr__Raw.bvals(e#0); 
                  EliminateMulZero.__default.Eliminate__Es#canCall(bvals#1)
                     && EliminateMulZero.__default.Eliminate#canCall(body#1))))
             && (!AST.Expr__Raw.Bind_q(e#0)
               ==> (AST.Expr__Raw.Assign_q(e#0)
                   ==> (var avals#1 := AST.Expr__Raw.avals(e#0); 
                    EliminateMulZero.__default.Eliminate__Es#canCall(avals#1)))
                 && (!AST.Expr__Raw.Assign_q(e#0)
                   ==> (AST.Expr__Raw.If_q(e#0)
                       ==> (var els#1 := AST.Expr__Raw.els(e#0); 
                        (var thn#1 := AST.Expr__Raw.thn(e#0); 
                          (var cond#1 := AST.Expr__Raw.cond(e#0); 
                            EliminateMulZero.__default.Eliminate#canCall(cond#1)
                               && 
                              EliminateMulZero.__default.Eliminate#canCall(thn#1)
                               && EliminateMulZero.__default.Eliminate#canCall(els#1)))))
                     && (!AST.Expr__Raw.If_q(e#0)
                       ==> (AST.Expr__Raw.Op_q(e#0)
                           ==> (var oe2#1 := AST.Expr__Raw.oe2(e#0); 
                            (var oe1#1 := AST.Expr__Raw.oe1(e#0); 
                              (var op#1 := AST.Expr__Raw.op(e#0); 
                                EliminateMulZero.__default.Eliminate#canCall(oe1#1)
                                   && (var oe1'#1 := EliminateMulZero.__default.Eliminate($ly, oe1#1); 
                                    EliminateMulZero.__default.Eliminate#canCall(oe2#1)
                                       && (var oe2'#1 := EliminateMulZero.__default.Eliminate($ly, oe2#1); 
                                        AST.BinOp.Mul_q(op#1)
                                           ==> EliminateMulZero.__default.IsZeroMulPure#canCall(oe1'#1, oe2'#1)
                                             && (!EliminateMulZero.__default.IsZeroMulPure(oe1'#1, oe2'#1)
                                               ==> EliminateMulZero.__default.IsZeroMulPure#canCall(oe2'#1, oe1'#1))))))))
                         && (!AST.Expr__Raw.Op_q(e#0)
                           ==> (var es#1 := AST.Expr__Raw.es(e#0); 
                            EliminateMulZero.__default.Eliminate__Es#canCall(es#1)))))))
         && EliminateMulZero.__default.Eliminate($LS($ly), e#0)
           == (if AST.Expr__Raw.Var_q(e#0)
             then (var name#0 := AST.Expr__Raw.name(e#0); e#0)
             else (if AST.Expr__Raw.Literal_q(e#0)
               then (var n#0 := AST.Expr__Raw.n(e#0); e#0)
               else (if AST.Expr__Raw.Bind_q(e#0)
                 then (var body#0 := AST.Expr__Raw.body(e#0); 
                  (var bvals#0 := AST.Expr__Raw.bvals(e#0); 
                    (var bvars#0 := AST.Expr__Raw.bvars(e#0); 
                      (var bvals'#0 := EliminateMulZero.__default.Eliminate__Es($ly, bvals#0); 
                        (var body'#0 := EliminateMulZero.__default.Eliminate($ly, body#0); 
                          #AST.Expr_Raw.Bind(bvars#0, bvals'#0, body'#0))))))
                 else (if AST.Expr__Raw.Assign_q(e#0)
                   then (var avals#0 := AST.Expr__Raw.avals(e#0); 
                    (var avars#0 := AST.Expr__Raw.avars(e#0); 
                      (var avals'#0 := EliminateMulZero.__default.Eliminate__Es($ly, avals#0); 
                        #AST.Expr_Raw.Assign(avars#0, avals'#0))))
                   else (if AST.Expr__Raw.If_q(e#0)
                     then (var els#0 := AST.Expr__Raw.els(e#0); 
                      (var thn#0 := AST.Expr__Raw.thn(e#0); 
                        (var cond#0 := AST.Expr__Raw.cond(e#0); 
                          (var cond'#0 := EliminateMulZero.__default.Eliminate($ly, cond#0); 
                            (var thn'#0 := EliminateMulZero.__default.Eliminate($ly, thn#0); 
                              (var els'#0 := EliminateMulZero.__default.Eliminate($ly, els#0); 
                                #AST.Expr_Raw.If(cond'#0, thn'#0, els'#0)))))))
                     else (if AST.Expr__Raw.Op_q(e#0)
                       then (var oe2#0 := AST.Expr__Raw.oe2(e#0); 
                        (var oe1#0 := AST.Expr__Raw.oe1(e#0); 
                          (var op#0 := AST.Expr__Raw.op(e#0); 
                            (var oe1'#0 := EliminateMulZero.__default.Eliminate($ly, oe1#0); 
                              (var oe2'#0 := EliminateMulZero.__default.Eliminate($ly, oe2#0); 
                                (if AST.BinOp.Mul_q(op#0)
                                     && (EliminateMulZero.__default.IsZeroMulPure(oe1'#0, oe2'#0)
                                       || EliminateMulZero.__default.IsZeroMulPure(oe2'#0, oe1'#0))
                                   then EliminateMulZero.__default.ZeroExpr()
                                   else #AST.Expr_Raw.Op(op#0, oe1'#0, oe2'#0)))))))
                       else (var es#0 := AST.Expr__Raw.es(e#0); 
                        (var es'#0 := EliminateMulZero.__default.Eliminate__Es($ly, es#0); 
                          #AST.Expr_Raw.Seq(es'#0))))))))));
// definition axiom for EliminateMulZero.__default.Eliminate for all literals (revealed)
axiom {:id "id5"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.Eliminate($LS($ly), Lit(e#0)) } 
    EliminateMulZero.__default.Eliminate#canCall(Lit(e#0))
         || (2 < $FunctionContextHeight && $Is(e#0, Tclass.AST.Expr()))
       ==> (!Lit(AST.Expr__Raw.Var_q(Lit(e#0)))
           ==> 
          !Lit(AST.Expr__Raw.Literal_q(Lit(e#0)))
           ==> (Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
               ==> (var body#3 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                (var bvals#3 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                  EliminateMulZero.__default.Eliminate__Es#canCall(bvals#3)
                     && EliminateMulZero.__default.Eliminate#canCall(body#3))))
             && (!Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
               ==> (Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                   ==> (var avals#3 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                    EliminateMulZero.__default.Eliminate__Es#canCall(avals#3)))
                 && (!Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                   ==> (Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                       ==> (var els#3 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                        (var thn#3 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                          (var cond#3 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                            EliminateMulZero.__default.Eliminate#canCall(cond#3)
                               && 
                              EliminateMulZero.__default.Eliminate#canCall(thn#3)
                               && EliminateMulZero.__default.Eliminate#canCall(els#3)))))
                     && (!Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                       ==> (Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                           ==> (var oe2#3 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                            (var oe1#3 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                              (var op#3 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                                EliminateMulZero.__default.Eliminate#canCall(oe1#3)
                                   && (var oe1'#3 := EliminateMulZero.__default.Eliminate($LS($ly), oe1#3); 
                                    EliminateMulZero.__default.Eliminate#canCall(oe2#3)
                                       && (var oe2'#3 := EliminateMulZero.__default.Eliminate($LS($ly), oe2#3); 
                                        AST.BinOp.Mul_q(op#3)
                                           ==> EliminateMulZero.__default.IsZeroMulPure#canCall(oe1'#3, oe2'#3)
                                             && (!EliminateMulZero.__default.IsZeroMulPure(oe1'#3, oe2'#3)
                                               ==> EliminateMulZero.__default.IsZeroMulPure#canCall(oe2'#3, oe1'#3))))))))
                         && (!Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                           ==> (var es#3 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                            EliminateMulZero.__default.Eliminate__Es#canCall(es#3)))))))
         && EliminateMulZero.__default.Eliminate($LS($ly), Lit(e#0))
           == (if AST.Expr__Raw.Var_q(Lit(e#0))
             then (var name#2 := Lit(AST.Expr__Raw.name(Lit(e#0))); Lit(e#0))
             else (if AST.Expr__Raw.Literal_q(Lit(e#0))
               then (var n#2 := LitInt(AST.Expr__Raw.n(Lit(e#0))); Lit(e#0))
               else (if AST.Expr__Raw.Bind_q(Lit(e#0))
                 then (var body#2 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                  (var bvals#2 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                    (var bvars#2 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                      (var bvals'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($ly), bvals#2)); 
                        (var body'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($ly), body#2)); 
                          Lit(#AST.Expr_Raw.Bind(bvars#2, bvals'#2, body'#2)))))))
                 else (if AST.Expr__Raw.Assign_q(Lit(e#0))
                   then (var avals#2 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                    (var avars#2 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                      (var avals'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($ly), avals#2)); 
                        Lit(#AST.Expr_Raw.Assign(avars#2, avals'#2)))))
                   else (if AST.Expr__Raw.If_q(Lit(e#0))
                     then (var els#2 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#2 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#2 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          (var cond'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($ly), cond#2)); 
                            (var thn'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($ly), thn#2)); 
                              (var els'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($ly), els#2)); 
                                Lit(#AST.Expr_Raw.If(cond'#2, thn'#2, els'#2))))))))
                     else (if AST.Expr__Raw.Op_q(Lit(e#0))
                       then (var oe2#2 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                        (var oe1#2 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                          (var op#2 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                            (var oe1'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($ly), oe1#2)); 
                              (var oe2'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($ly), oe2#2)); 
                                (if AST.BinOp.Mul_q(op#2)
                                     && (EliminateMulZero.__default.IsZeroMulPure(oe1'#2, oe2'#2)
                                       || EliminateMulZero.__default.IsZeroMulPure(oe2'#2, oe1'#2))
                                   then EliminateMulZero.__default.ZeroExpr()
                                   else #AST.Expr_Raw.Op(op#2, oe1'#2, oe2'#2)))))))
                       else (var es#2 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                        (var es'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($ly), es#2)); 
                          Lit(#AST.Expr_Raw.Seq(es'#2)))))))))));
}

function EliminateMulZero.__default.Eliminate#canCall(e#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType :: 
  { EliminateMulZero.__default.Eliminate($LS($ly), e#0) } 
  EliminateMulZero.__default.Eliminate($LS($ly), e#0)
     == EliminateMulZero.__default.Eliminate($ly, e#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType :: 
  { EliminateMulZero.__default.Eliminate(AsFuelBottom($ly), e#0) } 
  EliminateMulZero.__default.Eliminate($ly, e#0)
     == EliminateMulZero.__default.Eliminate($LZ, e#0));

function EliminateMulZero.__default.Eliminate#requires(LayerType, DatatypeType) : bool;

// #requires axiom for EliminateMulZero.__default.Eliminate
axiom (forall $ly: LayerType, e#0: DatatypeType :: 
  { EliminateMulZero.__default.Eliminate#requires($ly, e#0) } 
  $Is(e#0, Tclass.AST.Expr())
     ==> EliminateMulZero.__default.Eliminate#requires($ly, e#0) == true);

procedure {:verboseName "EliminateMulZero.Eliminate (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Eliminate(e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.Eliminate (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Eliminate(e#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#13#0: Seq;
  var es#Z#0: Seq;
  var let#0#0#0: Seq;
  var es'#Z#0: Seq;
  var let#1#0#0: Seq;
  var ##es#0: Seq;
  var _mcc#10#0: DatatypeType;
  var _mcc#11#0: DatatypeType;
  var _mcc#12#0: DatatypeType;
  var oe2#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var oe1#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var op#Z#0: DatatypeType;
  var let#4#0#0: DatatypeType;
  var oe1'#Z#0: DatatypeType;
  var let#5#0#0: DatatypeType;
  var ##e#0: DatatypeType;
  var oe2'#Z#0: DatatypeType;
  var let#6#0#0: DatatypeType;
  var ##e#1: DatatypeType;
  var ##e1#0: DatatypeType;
  var ##e2#0: DatatypeType;
  var ##e1#1: DatatypeType;
  var ##e2#1: DatatypeType;
  var _mcc#7#0: DatatypeType;
  var _mcc#8#0: DatatypeType;
  var _mcc#9#0: DatatypeType;
  var els#Z#0: DatatypeType;
  var let#7#0#0: DatatypeType;
  var thn#Z#0: DatatypeType;
  var let#8#0#0: DatatypeType;
  var cond#Z#0: DatatypeType;
  var let#9#0#0: DatatypeType;
  var cond'#Z#0: DatatypeType;
  var let#10#0#0: DatatypeType;
  var ##e#2: DatatypeType;
  var thn'#Z#0: DatatypeType;
  var let#11#0#0: DatatypeType;
  var ##e#3: DatatypeType;
  var els'#Z#0: DatatypeType;
  var let#12#0#0: DatatypeType;
  var ##e#4: DatatypeType;
  var _mcc#5#0: Seq;
  var _mcc#6#0: Seq;
  var avals#Z#0: Seq;
  var let#13#0#0: Seq;
  var avars#Z#0: Seq;
  var let#14#0#0: Seq;
  var avals'#Z#0: Seq;
  var let#15#0#0: Seq;
  var ##es#1: Seq;
  var _mcc#2#0: Seq;
  var _mcc#3#0: Seq;
  var _mcc#4#0: DatatypeType;
  var body#Z#0: DatatypeType;
  var let#16#0#0: DatatypeType;
  var bvals#Z#0: Seq;
  var let#17#0#0: Seq;
  var bvars#Z#0: Seq;
  var let#18#0#0: Seq;
  var bvals'#Z#0: Seq;
  var let#19#0#0: Seq;
  var ##es#2: Seq;
  var body'#Z#0: DatatypeType;
  var let#20#0#0: DatatypeType;
  var ##e#5: DatatypeType;
  var _mcc#1#0: int;
  var n#Z#0: int;
  var let#21#0#0: int;
  var _mcc#0#0: Seq;
  var name#Z#0: Seq;
  var let#22#0#0: Seq;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (e#0 == #AST.Expr_Raw.Var(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, TSeq(TChar));
            havoc name#Z#0;
            assume {:id "id89"} let#22#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#22#0#0, TSeq(TChar));
            assume {:id "id90"} name#Z#0 == let#22#0#0;
            assume {:id "id91"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0) == e#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
            return;
        }
        else if (e#0 == #AST.Expr_Raw.Literal(_mcc#1#0))
        {
            havoc n#Z#0;
            assume {:id "id86"} let#21#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#21#0#0, TInt);
            assume {:id "id87"} n#Z#0 == let#21#0#0;
            assume {:id "id88"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0) == e#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
            return;
        }
        else if (e#0 == #AST.Expr_Raw.Bind(_mcc#2#0, _mcc#3#0, _mcc#4#0))
        {
            assume $Is(_mcc#2#0, TSeq(TSeq(TChar)));
            assume $Is(_mcc#3#0, TSeq(Tclass.AST.Expr__Raw()));
            assume $Is(_mcc#4#0, Tclass.AST.Expr__Raw());
            havoc body#Z#0;
            assume {:id "id68"} let#16#0#0 == _mcc#4#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#16#0#0, Tclass.AST.Expr__Raw());
            assume {:id "id69"} body#Z#0 == let#16#0#0;
            havoc bvals#Z#0;
            assume {:id "id70"} let#17#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#17#0#0, TSeq(Tclass.AST.Expr__Raw()));
            assume {:id "id71"} bvals#Z#0 == let#17#0#0;
            havoc bvars#Z#0;
            assume {:id "id72"} let#18#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#18#0#0, TSeq(TSeq(TChar)));
            assume {:id "id73"} bvars#Z#0 == let#18#0#0;
            havoc bvals'#Z#0;
            assert {:id "id74"} $Is(bvals#Z#0, TSeq(Tclass.AST.Expr()));
            ##es#2 := bvals#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#2, TSeq(Tclass.AST.Expr()), $Heap);
            assert {:id "id75"} 0 <= LitInt(1) || Seq#Rank(##es#2) < DtRank(e#0) || LitInt(0) == LitInt(1);
            assert {:id "id76"} Seq#Rank(##es#2) < DtRank(e#0);
            assume EliminateMulZero.__default.Eliminate__Es#canCall(bvals#Z#0);
            assume {:id "id77"} let#19#0#0 == EliminateMulZero.__default.Eliminate__Es($LS($LZ), bvals#Z#0);
            assume EliminateMulZero.__default.Eliminate__Es#canCall(bvals#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#19#0#0, TSeq(Tclass.AST.Expr()));
            assume {:id "id78"} bvals'#Z#0 == let#19#0#0;
            havoc body'#Z#0;
            assert {:id "id79"} $Is(body#Z#0, Tclass.AST.Expr());
            ##e#5 := body#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#5, Tclass.AST.Expr(), $Heap);
            assert {:id "id80"} 0 <= LitInt(1) || DtRank(##e#5) < DtRank(e#0) || LitInt(1) == LitInt(1);
            assert {:id "id81"} DtRank(##e#5) < DtRank(e#0)
               || (DtRank(##e#5) == DtRank(e#0) && LitInt(1) < LitInt(1));
            assume EliminateMulZero.__default.Eliminate#canCall(body#Z#0);
            assume {:id "id82"} let#20#0#0 == EliminateMulZero.__default.Eliminate($LS($LZ), body#Z#0);
            assume EliminateMulZero.__default.Eliminate#canCall(body#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#20#0#0, Tclass.AST.Expr());
            assume {:id "id83"} body'#Z#0 == let#20#0#0;
            assert {:id "id84"} $Is(#AST.Expr_Raw.Bind(bvars#Z#0, bvals'#Z#0, body'#Z#0), Tclass.AST.Expr());
            assume {:id "id85"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0)
               == #AST.Expr_Raw.Bind(bvars#Z#0, bvals'#Z#0, body'#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
            return;
        }
        else if (e#0 == #AST.Expr_Raw.Assign(_mcc#5#0, _mcc#6#0))
        {
            assume $Is(_mcc#5#0, TSeq(TSeq(TChar)));
            assume $Is(_mcc#6#0, TSeq(Tclass.AST.Expr__Raw()));
            havoc avals#Z#0;
            assume {:id "id57"} let#13#0#0 == _mcc#6#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#13#0#0, TSeq(Tclass.AST.Expr__Raw()));
            assume {:id "id58"} avals#Z#0 == let#13#0#0;
            havoc avars#Z#0;
            assume {:id "id59"} let#14#0#0 == _mcc#5#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#14#0#0, TSeq(TSeq(TChar)));
            assume {:id "id60"} avars#Z#0 == let#14#0#0;
            havoc avals'#Z#0;
            assert {:id "id61"} $Is(avals#Z#0, TSeq(Tclass.AST.Expr()));
            ##es#1 := avals#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#1, TSeq(Tclass.AST.Expr()), $Heap);
            assert {:id "id62"} 0 <= LitInt(1) || Seq#Rank(##es#1) < DtRank(e#0) || LitInt(0) == LitInt(1);
            assert {:id "id63"} Seq#Rank(##es#1) < DtRank(e#0);
            assume EliminateMulZero.__default.Eliminate__Es#canCall(avals#Z#0);
            assume {:id "id64"} let#15#0#0 == EliminateMulZero.__default.Eliminate__Es($LS($LZ), avals#Z#0);
            assume EliminateMulZero.__default.Eliminate__Es#canCall(avals#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#15#0#0, TSeq(Tclass.AST.Expr()));
            assume {:id "id65"} avals'#Z#0 == let#15#0#0;
            assert {:id "id66"} $Is(#AST.Expr_Raw.Assign(avars#Z#0, avals'#Z#0), Tclass.AST.Expr());
            assume {:id "id67"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0)
               == #AST.Expr_Raw.Assign(avars#Z#0, avals'#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
            return;
        }
        else if (e#0 == #AST.Expr_Raw.If(_mcc#7#0, _mcc#8#0, _mcc#9#0))
        {
            assume $Is(_mcc#7#0, Tclass.AST.Expr__Raw());
            assume $Is(_mcc#8#0, Tclass.AST.Expr__Raw());
            assume $Is(_mcc#9#0, Tclass.AST.Expr__Raw());
            havoc els#Z#0;
            assume {:id "id34"} let#7#0#0 == _mcc#9#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#7#0#0, Tclass.AST.Expr__Raw());
            assume {:id "id35"} els#Z#0 == let#7#0#0;
            havoc thn#Z#0;
            assume {:id "id36"} let#8#0#0 == _mcc#8#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#8#0#0, Tclass.AST.Expr__Raw());
            assume {:id "id37"} thn#Z#0 == let#8#0#0;
            havoc cond#Z#0;
            assume {:id "id38"} let#9#0#0 == _mcc#7#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#9#0#0, Tclass.AST.Expr__Raw());
            assume {:id "id39"} cond#Z#0 == let#9#0#0;
            havoc cond'#Z#0;
            assert {:id "id40"} $Is(cond#Z#0, Tclass.AST.Expr());
            ##e#2 := cond#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
            assert {:id "id41"} 0 <= LitInt(1) || DtRank(##e#2) < DtRank(e#0) || LitInt(1) == LitInt(1);
            assert {:id "id42"} DtRank(##e#2) < DtRank(e#0)
               || (DtRank(##e#2) == DtRank(e#0) && LitInt(1) < LitInt(1));
            assume EliminateMulZero.__default.Eliminate#canCall(cond#Z#0);
            assume {:id "id43"} let#10#0#0 == EliminateMulZero.__default.Eliminate($LS($LZ), cond#Z#0);
            assume EliminateMulZero.__default.Eliminate#canCall(cond#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#10#0#0, Tclass.AST.Expr());
            assume {:id "id44"} cond'#Z#0 == let#10#0#0;
            havoc thn'#Z#0;
            assert {:id "id45"} $Is(thn#Z#0, Tclass.AST.Expr());
            ##e#3 := thn#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#3, Tclass.AST.Expr(), $Heap);
            assert {:id "id46"} 0 <= LitInt(1) || DtRank(##e#3) < DtRank(e#0) || LitInt(1) == LitInt(1);
            assert {:id "id47"} DtRank(##e#3) < DtRank(e#0)
               || (DtRank(##e#3) == DtRank(e#0) && LitInt(1) < LitInt(1));
            assume EliminateMulZero.__default.Eliminate#canCall(thn#Z#0);
            assume {:id "id48"} let#11#0#0 == EliminateMulZero.__default.Eliminate($LS($LZ), thn#Z#0);
            assume EliminateMulZero.__default.Eliminate#canCall(thn#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#11#0#0, Tclass.AST.Expr());
            assume {:id "id49"} thn'#Z#0 == let#11#0#0;
            havoc els'#Z#0;
            assert {:id "id50"} $Is(els#Z#0, Tclass.AST.Expr());
            ##e#4 := els#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#4, Tclass.AST.Expr(), $Heap);
            assert {:id "id51"} 0 <= LitInt(1) || DtRank(##e#4) < DtRank(e#0) || LitInt(1) == LitInt(1);
            assert {:id "id52"} DtRank(##e#4) < DtRank(e#0)
               || (DtRank(##e#4) == DtRank(e#0) && LitInt(1) < LitInt(1));
            assume EliminateMulZero.__default.Eliminate#canCall(els#Z#0);
            assume {:id "id53"} let#12#0#0 == EliminateMulZero.__default.Eliminate($LS($LZ), els#Z#0);
            assume EliminateMulZero.__default.Eliminate#canCall(els#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#12#0#0, Tclass.AST.Expr());
            assume {:id "id54"} els'#Z#0 == let#12#0#0;
            assert {:id "id55"} $Is(#AST.Expr_Raw.If(cond'#Z#0, thn'#Z#0, els'#Z#0), Tclass.AST.Expr());
            assume {:id "id56"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0)
               == #AST.Expr_Raw.If(cond'#Z#0, thn'#Z#0, els'#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
            return;
        }
        else if (e#0 == #AST.Expr_Raw.Op(_mcc#10#0, _mcc#11#0, _mcc#12#0))
        {
            assume $Is(_mcc#10#0, Tclass.AST.BinOp());
            assume $Is(_mcc#11#0, Tclass.AST.Expr__Raw());
            assume $Is(_mcc#12#0, Tclass.AST.Expr__Raw());
            havoc oe2#Z#0;
            assume {:id "id15"} let#2#0#0 == _mcc#12#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass.AST.Expr__Raw());
            assume {:id "id16"} oe2#Z#0 == let#2#0#0;
            havoc oe1#Z#0;
            assume {:id "id17"} let#3#0#0 == _mcc#11#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, Tclass.AST.Expr__Raw());
            assume {:id "id18"} oe1#Z#0 == let#3#0#0;
            havoc op#Z#0;
            assume {:id "id19"} let#4#0#0 == _mcc#10#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, Tclass.AST.BinOp());
            assume {:id "id20"} op#Z#0 == let#4#0#0;
            havoc oe1'#Z#0;
            assert {:id "id21"} $Is(oe1#Z#0, Tclass.AST.Expr());
            ##e#0 := oe1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
            assert {:id "id22"} 0 <= LitInt(1) || DtRank(##e#0) < DtRank(e#0) || LitInt(1) == LitInt(1);
            assert {:id "id23"} DtRank(##e#0) < DtRank(e#0)
               || (DtRank(##e#0) == DtRank(e#0) && LitInt(1) < LitInt(1));
            assume EliminateMulZero.__default.Eliminate#canCall(oe1#Z#0);
            assume {:id "id24"} let#5#0#0 == EliminateMulZero.__default.Eliminate($LS($LZ), oe1#Z#0);
            assume EliminateMulZero.__default.Eliminate#canCall(oe1#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#5#0#0, Tclass.AST.Expr());
            assume {:id "id25"} oe1'#Z#0 == let#5#0#0;
            havoc oe2'#Z#0;
            assert {:id "id26"} $Is(oe2#Z#0, Tclass.AST.Expr());
            ##e#1 := oe2#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
            assert {:id "id27"} 0 <= LitInt(1) || DtRank(##e#1) < DtRank(e#0) || LitInt(1) == LitInt(1);
            assert {:id "id28"} DtRank(##e#1) < DtRank(e#0)
               || (DtRank(##e#1) == DtRank(e#0) && LitInt(1) < LitInt(1));
            assume EliminateMulZero.__default.Eliminate#canCall(oe2#Z#0);
            assume {:id "id29"} let#6#0#0 == EliminateMulZero.__default.Eliminate($LS($LZ), oe2#Z#0);
            assume EliminateMulZero.__default.Eliminate#canCall(oe2#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#6#0#0, Tclass.AST.Expr());
            assume {:id "id30"} oe2'#Z#0 == let#6#0#0;
            if (AST.BinOp.Mul_q(op#Z#0))
            {
                ##e1#0 := oe1'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e1#0, Tclass.AST.Expr(), $Heap);
                ##e2#0 := oe2'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e2#0, Tclass.AST.Expr(), $Heap);
                assume EliminateMulZero.__default.IsZeroMulPure#canCall(oe1'#Z#0, oe2'#Z#0);
                if (!EliminateMulZero.__default.IsZeroMulPure(oe1'#Z#0, oe2'#Z#0))
                {
                    ##e1#1 := oe2'#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##e1#1, Tclass.AST.Expr(), $Heap);
                    ##e2#1 := oe1'#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##e2#1, Tclass.AST.Expr(), $Heap);
                    assume EliminateMulZero.__default.IsZeroMulPure#canCall(oe2'#Z#0, oe1'#Z#0);
                }
            }

            if (AST.BinOp.Mul_q(op#Z#0)
               && (EliminateMulZero.__default.IsZeroMulPure(oe1'#Z#0, oe2'#Z#0)
                 || EliminateMulZero.__default.IsZeroMulPure(oe2'#Z#0, oe1'#Z#0)))
            {
                assume {:id "id31"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0)
                   == EliminateMulZero.__default.ZeroExpr();
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
                return;
            }
            else
            {
                assert {:id "id32"} $Is(#AST.Expr_Raw.Op(op#Z#0, oe1'#Z#0, oe2'#Z#0), Tclass.AST.Expr());
                assume {:id "id33"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0)
                   == #AST.Expr_Raw.Op(op#Z#0, oe1'#Z#0, oe2'#Z#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
                return;
            }
        }
        else if (e#0 == #AST.Expr_Raw.Seq(_mcc#13#0))
        {
            assume $Is(_mcc#13#0, TSeq(Tclass.AST.Expr__Raw()));
            havoc es#Z#0;
            assume {:id "id6"} let#0#0#0 == _mcc#13#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TSeq(Tclass.AST.Expr__Raw()));
            assume {:id "id7"} es#Z#0 == let#0#0#0;
            havoc es'#Z#0;
            assert {:id "id8"} $Is(es#Z#0, TSeq(Tclass.AST.Expr()));
            ##es#0 := es#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
            assert {:id "id9"} 0 <= LitInt(1) || Seq#Rank(##es#0) < DtRank(e#0) || LitInt(0) == LitInt(1);
            assert {:id "id10"} Seq#Rank(##es#0) < DtRank(e#0);
            assume EliminateMulZero.__default.Eliminate__Es#canCall(es#Z#0);
            assume {:id "id11"} let#1#0#0 == EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#Z#0);
            assume EliminateMulZero.__default.Eliminate__Es#canCall(es#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TSeq(Tclass.AST.Expr()));
            assume {:id "id12"} es'#Z#0 == let#1#0#0;
            assert {:id "id13"} $Is(#AST.Expr_Raw.Seq(es'#Z#0), Tclass.AST.Expr());
            assume {:id "id14"} EliminateMulZero.__default.Eliminate($LS($LZ), e#0)
               == #AST.Expr_Raw.Seq(es'#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate($LS($LZ), e#0), Tclass.AST.Expr());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for EliminateMulZero._default.Eliminate_Es
function EliminateMulZero.__default.Eliminate__Es($ly: LayerType, es#0: Seq) : Seq
uses {
// consequence axiom for EliminateMulZero.__default.Eliminate__Es
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, es#0: Seq :: 
    { EliminateMulZero.__default.Eliminate__Es($ly, es#0) } 
    EliminateMulZero.__default.Eliminate__Es#canCall(es#0)
         || (2 < $FunctionContextHeight && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> Seq#Length(EliminateMulZero.__default.Eliminate__Es($ly, es#0))
           == Seq#Length(es#0)
         && $Is(EliminateMulZero.__default.Eliminate__Es($ly, es#0), TSeq(Tclass.AST.Expr())));
// definition axiom for EliminateMulZero.__default.Eliminate__Es (revealed)
axiom {:id "id92"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, es#0: Seq :: 
    { EliminateMulZero.__default.Eliminate__Es($LS($ly), es#0) } 
    EliminateMulZero.__default.Eliminate__Es#canCall(es#0)
         || (2 < $FunctionContextHeight && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
           ==> EliminateMulZero.__default.Eliminate#canCall($Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType)
             && EliminateMulZero.__default.Eliminate__Es#canCall(Seq#Drop(es#0, LitInt(1))))
         && EliminateMulZero.__default.Eliminate__Es($LS($ly), es#0)
           == (if Seq#Equal(es#0, Seq#Empty(): Seq)
             then Seq#Empty(): Seq
             else (var e'#0 := EliminateMulZero.__default.Eliminate($ly, $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType); 
              (var es'#0 := EliminateMulZero.__default.Eliminate__Es($ly, Seq#Drop(es#0, LitInt(1))); 
                Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e'#0)), es'#0)))));
// definition axiom for EliminateMulZero.__default.Eliminate__Es for all literals (revealed)
axiom {:id "id93"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, es#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.Eliminate__Es($LS($ly), Lit(es#0)) } 
    EliminateMulZero.__default.Eliminate__Es#canCall(Lit(es#0))
         || (2 < $FunctionContextHeight && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
           ==> EliminateMulZero.__default.Eliminate#canCall($Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType)
             && EliminateMulZero.__default.Eliminate__Es#canCall(Lit(Seq#Drop(Lit(es#0), LitInt(1)))))
         && EliminateMulZero.__default.Eliminate__Es($LS($ly), Lit(es#0))
           == (if Seq#Equal(es#0, Seq#Empty(): Seq)
             then Seq#Empty(): Seq
             else (var e'#1 := EliminateMulZero.__default.Eliminate($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType); 
              (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($ly), Lit(Seq#Drop(Lit(es#0), LitInt(1))))); 
                Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e'#1)), es'#1)))));
}

function EliminateMulZero.__default.Eliminate__Es#canCall(es#0: Seq) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, es#0: Seq :: 
  { EliminateMulZero.__default.Eliminate__Es($LS($ly), es#0) } 
  EliminateMulZero.__default.Eliminate__Es($LS($ly), es#0)
     == EliminateMulZero.__default.Eliminate__Es($ly, es#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, es#0: Seq :: 
  { EliminateMulZero.__default.Eliminate__Es(AsFuelBottom($ly), es#0) } 
  EliminateMulZero.__default.Eliminate__Es($ly, es#0)
     == EliminateMulZero.__default.Eliminate__Es($LZ, es#0));

function EliminateMulZero.__default.Eliminate__Es#requires(LayerType, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.Eliminate__Es
axiom (forall $ly: LayerType, es#0: Seq :: 
  { EliminateMulZero.__default.Eliminate__Es#requires($ly, es#0) } 
  $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> EliminateMulZero.__default.Eliminate__Es#requires($ly, es#0) == true);

procedure {:verboseName "EliminateMulZero.Eliminate_Es (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Eliminate__Es(es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr()))) returns (es'#2: Seq);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id94"} Seq#Length(es'#2) == Seq#Length(es#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.Eliminate_Es (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Eliminate__Es(es#0: Seq) returns (es'#2: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var e'#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##e#0: DatatypeType;
  var es'#Z#0: Seq;
  var let#1#0#0: Seq;
  var ##es#0: Seq;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0), 
          TSeq(Tclass.AST.Expr()));
        assume $Is(es'#2, TSeq(Tclass.AST.Expr()));
        assume {:id "id95"} Seq#Length(es'#2) == Seq#Length(es#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Seq#Equal(es#0, Seq#Empty(): Seq))
        {
            assume {:id "id96"} EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0)
               == Lit(Seq#Empty(): Seq);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0), 
              TSeq(Tclass.AST.Expr()));
            assume {:id "id97"} EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0) == es'#2;
            return;
        }
        else
        {
            havoc e'#Z#0;
            assert {:id "id98"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(es#0);
            ##e#0 := $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
            assert {:id "id99"} 0 <= LitInt(0) || DtRank(##e#0) < Seq#Rank(es#0) || LitInt(1) == LitInt(0);
            assert {:id "id100"} DtRank(##e#0) < Seq#Rank(es#0);
            assume EliminateMulZero.__default.Eliminate#canCall($Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType);
            assume {:id "id101"} let#0#0#0
               == EliminateMulZero.__default.Eliminate($LS($LZ), $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType);
            assume EliminateMulZero.__default.Eliminate#canCall($Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType);
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.AST.Expr());
            assume {:id "id102"} e'#Z#0 == let#0#0#0;
            havoc es'#Z#0;
            assert {:id "id103"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(es#0);
            ##es#0 := Seq#Drop(es#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
            assert {:id "id104"} 0 <= LitInt(0) || Seq#Rank(##es#0) < Seq#Rank(es#0) || LitInt(0) == LitInt(0);
            assert {:id "id105"} Seq#Rank(##es#0) < Seq#Rank(es#0)
               || (Seq#Rank(##es#0) == Seq#Rank(es#0) && LitInt(0) < LitInt(0));
            assume EliminateMulZero.__default.Eliminate__Es#canCall(Seq#Drop(es#0, LitInt(1)));
            assume {:id "id106"} let#1#0#0
               == EliminateMulZero.__default.Eliminate__Es($LS($LZ), Seq#Drop(es#0, LitInt(1)));
            assume EliminateMulZero.__default.Eliminate__Es#canCall(Seq#Drop(es#0, LitInt(1)));
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TSeq(Tclass.AST.Expr()));
            assume {:id "id107"} es'#Z#0 == let#1#0#0;
            assume {:id "id108"} EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0)
               == Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e'#Z#0)), es'#Z#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0), 
              TSeq(Tclass.AST.Expr()));
            assume {:id "id109"} EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0) == es'#2;
            return;
        }

        assume false;
    }
}



// function declaration for EliminateMulZero._default.EqResult
function EliminateMulZero.__default.EqResult(EliminateMulZero._default.EqResult$V: Ty, 
    res#0: DatatypeType, 
    res'#0: DatatypeType)
   : bool
uses {
// definition axiom for EliminateMulZero.__default.EqResult (revealed)
axiom {:id "id110"} 0 <= $FunctionContextHeight
   ==> (forall EliminateMulZero._default.EqResult$V: Ty, 
      res#0: DatatypeType, 
      res'#0: DatatypeType :: 
    { EliminateMulZero.__default.EqResult(EliminateMulZero._default.EqResult$V, res#0, res'#0) } 
    EliminateMulZero.__default.EqResult#canCall(EliminateMulZero._default.EqResult$V, res#0, res'#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(res#0, 
            Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt))))
           && $Is(res'#0, 
            Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt)))))
       ==> _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))
         && (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
           ==> _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))
             && (Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))
                 && _System.Tuple2.___hMake2_q($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)
                 && 
                _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))
                 && _System.Tuple2.___hMake2_q($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)
                 && 
                _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))
                 && _System.Tuple2.___hMake2_q($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)
                 && 
                _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))
                 && _System.Tuple2.___hMake2_q($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)))
         && EliminateMulZero.__default.EqResult(EliminateMulZero._default.EqResult$V, res#0, res'#0)
           == (if Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
             then (if Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               then (var ctx1'#0 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                (var v'#0 := _System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType); 
                  (var ctx1#0 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                    (var v#0 := _System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType); 
                      v#0 == v'#0 && Map#Equal(ctx1'#0, ctx1#0)))))
               else false)
             else true));
// definition axiom for EliminateMulZero.__default.EqResult for all literals (revealed)
axiom {:id "id111"} 0 <= $FunctionContextHeight
   ==> (forall EliminateMulZero._default.EqResult$V: Ty, 
      res#0: DatatypeType, 
      res'#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.EqResult(EliminateMulZero._default.EqResult$V, Lit(res#0), Lit(res'#0)) } 
    EliminateMulZero.__default.EqResult#canCall(EliminateMulZero._default.EqResult$V, Lit(res#0), Lit(res'#0))
         || (0 < $FunctionContextHeight
           && 
          $Is(res#0, 
            Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt))))
           && $Is(res'#0, 
            Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt)))))
       ==> _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))
         && (Lit(Utils.Result.Success_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType)))
           ==> _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))
             && (Lit(Utils.Result.Success_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType)))
               ==> _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))
                 && _System.Tuple2.___hMake2_q(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))
                 && 
                _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))
                 && _System.Tuple2.___hMake2_q(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))
                 && 
                _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))
                 && _System.Tuple2.___hMake2_q(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))
                 && 
                _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))
                 && _System.Tuple2.___hMake2_q(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))))
         && EliminateMulZero.__default.EqResult(EliminateMulZero._default.EqResult$V, Lit(res#0), Lit(res'#0))
           == (if Utils.Result.Success_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))
             then (if Utils.Result.Success_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))
               then (var ctx1'#2 := Lit($Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))): Map); 
                (var v'#2 := Lit(_System.Tuple2._0(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))); 
                  (var ctx1#2 := Lit($Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))): Map); 
                    (var v#2 := Lit(_System.Tuple2._0(Lit($Unbox(Utils.Result.value(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(res#0)), $Box(Lit(res'#0)))))): DatatypeType))): DatatypeType))); 
                      v#2 == v'#2 && Map#Equal(ctx1'#2, ctx1#2)))))
               else false)
             else true));
}

function EliminateMulZero.__default.EqResult#canCall(EliminateMulZero._default.EqResult$V: Ty, 
    res#0: DatatypeType, 
    res'#0: DatatypeType)
   : bool;

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

function EliminateMulZero.__default.EqResult#requires(Ty, DatatypeType, DatatypeType) : bool;

// #requires axiom for EliminateMulZero.__default.EqResult
axiom (forall EliminateMulZero._default.EqResult$V: Ty, 
    res#0: DatatypeType, 
    res'#0: DatatypeType :: 
  { EliminateMulZero.__default.EqResult#requires(EliminateMulZero._default.EqResult$V, res#0, res'#0) } 
  $Is(res#0, 
        Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt))))
       && $Is(res'#0, 
        Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt))))
     ==> EliminateMulZero.__default.EqResult#requires(EliminateMulZero._default.EqResult$V, res#0, res'#0)
       == true);

procedure {:verboseName "EliminateMulZero.EqResult (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.EqResult(EliminateMulZero._default.EqResult$V: Ty, 
    res#0: DatatypeType
       where $Is(res#0, 
        Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt)))), 
    res'#0: DatatypeType
       where $Is(res'#0, 
        Tclass.Utils.Result(Tclass._System.Tuple2(EliminateMulZero._default.EqResult$V, TMap(TSeq(TChar), TInt)))));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function EliminateMulZero.__default.Zero() : int
uses {
axiom EliminateMulZero.__default.Zero(): int == LitInt(0);
// _default.Zero: Type axiom
axiom 1 < $FunctionContextHeight ==> $Is(EliminateMulZero.__default.Zero(), TInt);
}

procedure {:verboseName "EliminateMulZero.Zero (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.Zero();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// _default.Zero: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(EliminateMulZero.__default.Zero(), TInt, $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(EliminateMulZero.__default.Zero(), TInt, $h));

// function declaration for EliminateMulZero._default.AppendValue
function EliminateMulZero.__default.AppendValue(v#0: int, vs#0: Seq) : Seq
uses {
// consequence axiom for EliminateMulZero.__default.AppendValue
axiom 1 <= $FunctionContextHeight
   ==> (forall v#0: int, vs#0: Seq :: 
    { EliminateMulZero.__default.AppendValue(v#0, vs#0) } 
    EliminateMulZero.__default.AppendValue#canCall(v#0, vs#0)
         || (1 < $FunctionContextHeight && $Is(vs#0, TSeq(TInt)))
       ==> $Is(EliminateMulZero.__default.AppendValue(v#0, vs#0), TSeq(TInt)));
// definition axiom for EliminateMulZero.__default.AppendValue (revealed)
axiom {:id "id123"} 1 <= $FunctionContextHeight
   ==> (forall v#0: int, vs#0: Seq :: 
    { EliminateMulZero.__default.AppendValue(v#0, vs#0) } 
    EliminateMulZero.__default.AppendValue#canCall(v#0, vs#0)
         || (1 < $FunctionContextHeight && $Is(vs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.AppendValue(v#0, vs#0)
         == Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(v#0)), vs#0));
// definition axiom for EliminateMulZero.__default.AppendValue for all literals (revealed)
axiom {:id "id124"} 1 <= $FunctionContextHeight
   ==> (forall v#0: int, vs#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.AppendValue(LitInt(v#0), Lit(vs#0)) } 
    EliminateMulZero.__default.AppendValue#canCall(LitInt(v#0), Lit(vs#0))
         || (1 < $FunctionContextHeight && $Is(vs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.AppendValue(LitInt(v#0), Lit(vs#0))
         == Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(v#0))), vs#0));
}

function EliminateMulZero.__default.AppendValue#canCall(v#0: int, vs#0: Seq) : bool;

function EliminateMulZero.__default.AppendValue#requires(int, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.AppendValue
axiom (forall v#0: int, vs#0: Seq :: 
  { EliminateMulZero.__default.AppendValue#requires(v#0, vs#0) } 
  $Is(vs#0, TSeq(TInt))
     ==> EliminateMulZero.__default.AppendValue#requires(v#0, vs#0) == true);

procedure {:verboseName "EliminateMulZero.AppendValue (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.AppendValue(v#0: int, vs#0: Seq where $Is(vs#0, TSeq(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function EliminateMulZero.__default.NilVS() : Seq
uses {
axiom EliminateMulZero.__default.NilVS(): Seq == Lit(Seq#Empty(): Seq);
// _default.NilVS: Type axiom
axiom 1 < $FunctionContextHeight
   ==> $Is(EliminateMulZero.__default.NilVS(), TSeq(TInt));
}

procedure {:verboseName "EliminateMulZero.NilVS (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.NilVS();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// _default.NilVS: Allocation axiom
axiom 1 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(EliminateMulZero.__default.NilVS(), TSeq(TInt), $h) } 
    $IsGoodHeap($h) ==> $IsAlloc(EliminateMulZero.__default.NilVS(), TSeq(TInt), $h));

// function declaration for EliminateMulZero._default.VS_Last
function EliminateMulZero.__default.VS__Last(vs#0: Seq) : int
uses {
// definition axiom for EliminateMulZero.__default.VS__Last (revealed)
axiom {:id "id126"} 2 <= $FunctionContextHeight
   ==> (forall vs#0: Seq :: 
    { EliminateMulZero.__default.VS__Last(vs#0) } 
    EliminateMulZero.__default.VS__Last#canCall(vs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(vs#0, TSeq(TInt))
           && !Seq#Equal(vs#0, EliminateMulZero.__default.NilVS()))
       ==> EliminateMulZero.__default.VS__Last(vs#0)
         == $Unbox(Seq#Index(vs#0, Seq#Length(vs#0) - 1)): int);
// definition axiom for EliminateMulZero.__default.VS__Last for all literals (revealed)
axiom {:id "id127"} 2 <= $FunctionContextHeight
   ==> (forall vs#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.VS__Last(Lit(vs#0)) } 
    EliminateMulZero.__default.VS__Last#canCall(Lit(vs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(vs#0, TSeq(TInt))
           && !Seq#Equal(vs#0, EliminateMulZero.__default.NilVS()))
       ==> EliminateMulZero.__default.VS__Last(Lit(vs#0))
         == $Unbox(Seq#Index(Lit(vs#0), Seq#Length(Lit(vs#0)) - 1)): int);
}

function EliminateMulZero.__default.VS__Last#canCall(vs#0: Seq) : bool;

function EliminateMulZero.__default.VS__Last#requires(Seq) : bool;

// #requires axiom for EliminateMulZero.__default.VS__Last
axiom (forall vs#0: Seq :: 
  { EliminateMulZero.__default.VS__Last#requires(vs#0) } 
  $Is(vs#0, TSeq(TInt))
     ==> EliminateMulZero.__default.VS__Last#requires(vs#0)
       == !Seq#Equal(vs#0, EliminateMulZero.__default.NilVS()));

procedure {:verboseName "EliminateMulZero.VS_Last (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.VS__Last(vs#0: Seq where $Is(vs#0, TSeq(TInt)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.VS_Last (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.VS__Last(vs#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id128"} !Seq#Equal(vs#0, EliminateMulZero.__default.NilVS());
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
        assert {:id "id129"} 0 <= Seq#Length(vs#0) - 1 && Seq#Length(vs#0) - 1 < Seq#Length(vs#0);
        assume {:id "id130"} EliminateMulZero.__default.VS__Last(vs#0)
           == $Unbox(Seq#Index(vs#0, Seq#Length(vs#0) - 1)): int;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(EliminateMulZero.__default.VS__Last(vs#0), TInt);
        return;

        assume false;
    }
}



// function declaration for EliminateMulZero._default.P
function EliminateMulZero.__default.P(st#0: Map, e#0: DatatypeType) : bool
uses {
// definition axiom for EliminateMulZero.__default.P (revealed)
axiom {:id "id131"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    { EliminateMulZero.__default.P(st#0, e#0) } 
    EliminateMulZero.__default.P#canCall(st#0, e#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr()))
       ==> EliminateMulZero.__default.Eliminate#canCall(e#0)
         && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
          Interp.__default.InterpExpr#canCall(e#0, st#0)
             && (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
              Interp.__default.InterpExpr#canCall(e'#0, st#0)
                 && (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0))))
         && EliminateMulZero.__default.P(st#0, e#0)
           == (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
            (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
              (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
                EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)))));
// definition axiom for EliminateMulZero.__default.P for decreasing-related literals (revealed)
axiom {:id "id132"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.P(st#0, Lit(e#0)) } 
    EliminateMulZero.__default.P#canCall(st#0, Lit(e#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr()))
       ==> EliminateMulZero.__default.Eliminate#canCall(Lit(e#0))
         && (var e'#1 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
          Interp.__default.InterpExpr#canCall(Lit(e#0), st#0)
             && (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0); 
              Interp.__default.InterpExpr#canCall(e'#1, st#0)
                 && (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1))))
         && EliminateMulZero.__default.P(st#0, Lit(e#0))
           == (var e'#1 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
            (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0); 
              (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, st#0); 
                EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)))));
// definition axiom for EliminateMulZero.__default.P for all literals (revealed)
axiom {:id "id133"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.P(Lit(st#0), Lit(e#0)) } 
    EliminateMulZero.__default.P#canCall(Lit(st#0), Lit(e#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr()))
       ==> EliminateMulZero.__default.Eliminate#canCall(Lit(e#0))
         && (var e'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
          Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(st#0))
             && (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))); 
              Interp.__default.InterpExpr#canCall(e'#2, Lit(st#0))
                 && (var res'#2 := Interp.__default.InterpExpr($LS($LZ), e'#2, Lit(st#0)); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#2, res'#2))))
         && EliminateMulZero.__default.P(Lit(st#0), Lit(e#0))
           == (var e'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
            (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))); 
              (var res'#2 := Lit(Interp.__default.InterpExpr($LS($LZ), e'#2, Lit(st#0))); 
                Lit(EliminateMulZero.__default.EqResult(TInt, res#2, res'#2))))));
}

function EliminateMulZero.__default.P#canCall(st#0: Map, e#0: DatatypeType) : bool;

function EliminateMulZero.__default.P#requires(Map, DatatypeType) : bool;

// #requires axiom for EliminateMulZero.__default.P
axiom (forall st#0: Map, e#0: DatatypeType :: 
  { EliminateMulZero.__default.P#requires(st#0, e#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt)) && $Is(e#0, Tclass.AST.Expr())
     ==> EliminateMulZero.__default.P#requires(st#0, e#0) == true);

procedure {:verboseName "EliminateMulZero.P (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.P(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.P_Succ
function EliminateMulZero.__default.P__Succ(st#0: Map, e#0: DatatypeType, st'#0: Map, v#0: int) : bool
uses {
// definition axiom for EliminateMulZero.__default.P__Succ (revealed)
axiom {:id "id141"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType, st'#0: Map, v#0: int :: 
    { EliminateMulZero.__default.P__Succ(st#0, e#0, st'#0, v#0) } 
    EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st'#0, v#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr())
           && $Is(st'#0, TMap(TSeq(TChar), TInt)))
       ==> EliminateMulZero.__default.Eliminate#canCall(e#0)
         && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
          Interp.__default.InterpExpr#canCall(e#0, st#0)
             && (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
              Interp.__default.InterpExpr#canCall(e'#0, st#0)
                 && (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0)
                     && (EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
                       ==> $IsA#Utils.Result(res#0)))))
         && EliminateMulZero.__default.P__Succ(st#0, e#0, st'#0, v#0)
           == (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
            (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
              (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
                EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
                   && Utils.Result#Equal(res#0, 
                    #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(st'#0)))))))));
// definition axiom for EliminateMulZero.__default.P__Succ for decreasing-related literals (revealed)
axiom {:id "id142"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType, st'#0: Map, v#0: int :: 
    {:weight 3} { EliminateMulZero.__default.P__Succ(st#0, Lit(e#0), st'#0, v#0) } 
    EliminateMulZero.__default.P__Succ#canCall(st#0, Lit(e#0), st'#0, v#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr())
           && $Is(st'#0, TMap(TSeq(TChar), TInt)))
       ==> EliminateMulZero.__default.Eliminate#canCall(Lit(e#0))
         && (var e'#1 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
          Interp.__default.InterpExpr#canCall(Lit(e#0), st#0)
             && (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0); 
              Interp.__default.InterpExpr#canCall(e'#1, st#0)
                 && (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
                     && (EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                       ==> $IsA#Utils.Result(res#1)))))
         && EliminateMulZero.__default.P__Succ(st#0, Lit(e#0), st'#0, v#0)
           == (var e'#1 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
            (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0); 
              (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, st#0); 
                EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                   && Utils.Result#Equal(res#1, 
                    #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(st'#0)))))))));
// definition axiom for EliminateMulZero.__default.P__Succ for all literals (revealed)
axiom {:id "id143"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType, st'#0: Map, v#0: int :: 
    {:weight 3} { EliminateMulZero.__default.P__Succ(Lit(st#0), Lit(e#0), Lit(st'#0), LitInt(v#0)) } 
    EliminateMulZero.__default.P__Succ#canCall(Lit(st#0), Lit(e#0), Lit(st'#0), LitInt(v#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr())
           && $Is(st'#0, TMap(TSeq(TChar), TInt)))
       ==> EliminateMulZero.__default.Eliminate#canCall(Lit(e#0))
         && (var e'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
          Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(st#0))
             && (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))); 
              Interp.__default.InterpExpr#canCall(e'#2, Lit(st#0))
                 && (var res'#2 := Interp.__default.InterpExpr($LS($LZ), e'#2, Lit(st#0)); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#2, res'#2)
                     && (EliminateMulZero.__default.EqResult(TInt, res#2, res'#2)
                       ==> $IsA#Utils.Result(res#2)))))
         && EliminateMulZero.__default.P__Succ(Lit(st#0), Lit(e#0), Lit(st'#0), LitInt(v#0))
           == (var e'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
            (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))); 
              (var res'#2 := Lit(Interp.__default.InterpExpr($LS($LZ), e'#2, Lit(st#0))); 
                EliminateMulZero.__default.EqResult(TInt, res#2, res'#2)
                   && Utils.Result#Equal(res#2, 
                    #Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(LitInt(v#0)), $Box(Lit(st'#0)))))))))));
}

function EliminateMulZero.__default.P__Succ#canCall(st#0: Map, e#0: DatatypeType, st'#0: Map, v#0: int) : bool;

function EliminateMulZero.__default.P__Succ#requires(Map, DatatypeType, Map, int) : bool;

// #requires axiom for EliminateMulZero.__default.P__Succ
axiom (forall st#0: Map, e#0: DatatypeType, st'#0: Map, v#0: int :: 
  { EliminateMulZero.__default.P__Succ#requires(st#0, e#0, st'#0, v#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt))
       && $Is(e#0, Tclass.AST.Expr())
       && $Is(st'#0, TMap(TSeq(TChar), TInt))
     ==> EliminateMulZero.__default.P__Succ#requires(st#0, e#0, st'#0, v#0) == true);

procedure {:verboseName "EliminateMulZero.P_Succ (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.P__Succ(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()), 
    st'#0: Map where $Is(st'#0, TMap(TSeq(TChar), TInt)), 
    v#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.P_Fail
function EliminateMulZero.__default.P__Fail(st#0: Map, e#0: DatatypeType) : bool
uses {
// definition axiom for EliminateMulZero.__default.P__Fail (revealed)
axiom {:id "id151"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    { EliminateMulZero.__default.P__Fail(st#0, e#0) } 
    EliminateMulZero.__default.P__Fail#canCall(st#0, e#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr()))
       ==> EliminateMulZero.__default.Eliminate#canCall(e#0)
         && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
          Interp.__default.InterpExpr#canCall(e#0, st#0)
             && (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
              Interp.__default.InterpExpr#canCall(e'#0, st#0)
                 && (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0))))
         && EliminateMulZero.__default.P__Fail(st#0, e#0)
           == (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
            (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
              (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
                EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
                   && Utils.Result.Failure_q(res#0)))));
// definition axiom for EliminateMulZero.__default.P__Fail for decreasing-related literals (revealed)
axiom {:id "id152"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.P__Fail(st#0, Lit(e#0)) } 
    EliminateMulZero.__default.P__Fail#canCall(st#0, Lit(e#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr()))
       ==> EliminateMulZero.__default.Eliminate#canCall(Lit(e#0))
         && (var e'#1 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
          Interp.__default.InterpExpr#canCall(Lit(e#0), st#0)
             && (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0); 
              Interp.__default.InterpExpr#canCall(e'#1, st#0)
                 && (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1))))
         && EliminateMulZero.__default.P__Fail(st#0, Lit(e#0))
           == (var e'#1 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
            (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0); 
              (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, st#0); 
                EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                   && Utils.Result.Failure_q(res#1)))));
// definition axiom for EliminateMulZero.__default.P__Fail for all literals (revealed)
axiom {:id "id153"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.P__Fail(Lit(st#0), Lit(e#0)) } 
    EliminateMulZero.__default.P__Fail#canCall(Lit(st#0), Lit(e#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr()))
       ==> EliminateMulZero.__default.Eliminate#canCall(Lit(e#0))
         && (var e'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
          Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(st#0))
             && (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))); 
              Interp.__default.InterpExpr#canCall(e'#2, Lit(st#0))
                 && (var res'#2 := Interp.__default.InterpExpr($LS($LZ), e'#2, Lit(st#0)); 
                  EliminateMulZero.__default.EqResult#canCall(TInt, res#2, res'#2))))
         && EliminateMulZero.__default.P__Fail(Lit(st#0), Lit(e#0))
           == (var e'#2 := Lit(EliminateMulZero.__default.Eliminate($LS($LZ), Lit(e#0))); 
            (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))); 
              (var res'#2 := Lit(Interp.__default.InterpExpr($LS($LZ), e'#2, Lit(st#0))); 
                Lit(EliminateMulZero.__default.EqResult(TInt, res#2, res'#2)
                     && Utils.Result.Failure_q(res#2))))));
}

function EliminateMulZero.__default.P__Fail#canCall(st#0: Map, e#0: DatatypeType) : bool;

function EliminateMulZero.__default.P__Fail#requires(Map, DatatypeType) : bool;

// #requires axiom for EliminateMulZero.__default.P__Fail
axiom (forall st#0: Map, e#0: DatatypeType :: 
  { EliminateMulZero.__default.P__Fail#requires(st#0, e#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt)) && $Is(e#0, Tclass.AST.Expr())
     ==> EliminateMulZero.__default.P__Fail#requires(st#0, e#0) == true);

procedure {:verboseName "EliminateMulZero.P_Fail (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.P__Fail(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.Pes
function EliminateMulZero.__default.Pes(st#0: Map, es#0: Seq) : bool
uses {
// definition axiom for EliminateMulZero.__default.Pes (revealed)
axiom {:id "id161"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq :: 
    { EliminateMulZero.__default.Pes(st#0, es#0) } 
    EliminateMulZero.__default.Pes#canCall(st#0, es#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(es#0)
         && (var es'#0 := EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0); 
          Interp.__default.InterpExprs#canCall(es#0, st#0)
             && (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, st#0); 
              Interp.__default.InterpExprs#canCall(es'#0, st#0)
                 && (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#0, res'#0))))
         && EliminateMulZero.__default.Pes(st#0, es#0)
           == (var es'#0 := EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0); 
            (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, st#0); 
              (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
                EliminateMulZero.__default.EqResult(TSeq(TInt), res#0, res'#0)))));
// definition axiom for EliminateMulZero.__default.Pes for decreasing-related literals (revealed)
axiom {:id "id162"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.Pes(st#0, Lit(es#0)) } 
    EliminateMulZero.__default.Pes#canCall(st#0, Lit(es#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(Lit(es#0))
         && (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
          Interp.__default.InterpExprs#canCall(Lit(es#0), st#0)
             && (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), st#0); 
              Interp.__default.InterpExprs#canCall(es'#1, st#0)
                 && (var res'#1 := Interp.__default.InterpExprs($LS($LZ), es'#1, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1))))
         && EliminateMulZero.__default.Pes(st#0, Lit(es#0))
           == (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
            (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), st#0); 
              (var res'#1 := Interp.__default.InterpExprs($LS($LZ), es'#1, st#0); 
                EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)))));
// definition axiom for EliminateMulZero.__default.Pes for all literals (revealed)
axiom {:id "id163"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.Pes(Lit(st#0), Lit(es#0)) } 
    EliminateMulZero.__default.Pes#canCall(Lit(st#0), Lit(es#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(Lit(es#0))
         && (var es'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
          Interp.__default.InterpExprs#canCall(Lit(es#0), Lit(st#0))
             && (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(st#0))); 
              Interp.__default.InterpExprs#canCall(es'#2, Lit(st#0))
                 && (var res'#2 := Interp.__default.InterpExprs($LS($LZ), es'#2, Lit(st#0)); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#2, res'#2))))
         && EliminateMulZero.__default.Pes(Lit(st#0), Lit(es#0))
           == (var es'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
            (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(st#0))); 
              (var res'#2 := Lit(Interp.__default.InterpExprs($LS($LZ), es'#2, Lit(st#0))); 
                Lit(EliminateMulZero.__default.EqResult(TSeq(TInt), res#2, res'#2))))));
}

function EliminateMulZero.__default.Pes#canCall(st#0: Map, es#0: Seq) : bool;

function EliminateMulZero.__default.Pes#requires(Map, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.Pes
axiom (forall st#0: Map, es#0: Seq :: 
  { EliminateMulZero.__default.Pes#requires(st#0, es#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt)) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> EliminateMulZero.__default.Pes#requires(st#0, es#0) == true);

procedure {:verboseName "EliminateMulZero.Pes (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Pes(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.Pes_Succ
function EliminateMulZero.__default.Pes__Succ(st#0: Map, es#0: Seq, st'#0: Map, vs#0: Seq) : bool
uses {
// definition axiom for EliminateMulZero.__default.Pes__Succ (revealed)
axiom {:id "id171"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq, st'#0: Map, vs#0: Seq :: 
    { EliminateMulZero.__default.Pes__Succ(st#0, es#0, st'#0, vs#0) } 
    EliminateMulZero.__default.Pes__Succ#canCall(st#0, es#0, st'#0, vs#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr()))
           && $Is(st'#0, TMap(TSeq(TChar), TInt))
           && $Is(vs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(es#0)
         && (var es'#0 := EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0); 
          Interp.__default.InterpExprs#canCall(es#0, st#0)
             && (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, st#0); 
              Interp.__default.InterpExprs#canCall(es'#0, st#0)
                 && (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#0, res'#0)
                     && (EliminateMulZero.__default.EqResult(TSeq(TInt), res#0, res'#0)
                       ==> $IsA#Utils.Result(res#0)))))
         && EliminateMulZero.__default.Pes__Succ(st#0, es#0, st'#0, vs#0)
           == (var es'#0 := EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0); 
            (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, st#0); 
              (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
                EliminateMulZero.__default.EqResult(TSeq(TInt), res#0, res'#0)
                   && Utils.Result#Equal(res#0, 
                    #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(vs#0), $Box(st'#0)))))))));
// definition axiom for EliminateMulZero.__default.Pes__Succ for decreasing-related literals (revealed)
axiom {:id "id172"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq, st'#0: Map, vs#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.Pes__Succ(st#0, Lit(es#0), st'#0, vs#0) } 
    EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(es#0), st'#0, vs#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr()))
           && $Is(st'#0, TMap(TSeq(TChar), TInt))
           && $Is(vs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(Lit(es#0))
         && (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
          Interp.__default.InterpExprs#canCall(Lit(es#0), st#0)
             && (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), st#0); 
              Interp.__default.InterpExprs#canCall(es'#1, st#0)
                 && (var res'#1 := Interp.__default.InterpExprs($LS($LZ), es'#1, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
                     && (EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                       ==> $IsA#Utils.Result(res#1)))))
         && EliminateMulZero.__default.Pes__Succ(st#0, Lit(es#0), st'#0, vs#0)
           == (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
            (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), st#0); 
              (var res'#1 := Interp.__default.InterpExprs($LS($LZ), es'#1, st#0); 
                EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                   && Utils.Result#Equal(res#1, 
                    #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(vs#0), $Box(st'#0)))))))));
// definition axiom for EliminateMulZero.__default.Pes__Succ for all literals (revealed)
axiom {:id "id173"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq, st'#0: Map, vs#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.Pes__Succ(Lit(st#0), Lit(es#0), Lit(st'#0), Lit(vs#0)) } 
    EliminateMulZero.__default.Pes__Succ#canCall(Lit(st#0), Lit(es#0), Lit(st'#0), Lit(vs#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr()))
           && $Is(st'#0, TMap(TSeq(TChar), TInt))
           && $Is(vs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(Lit(es#0))
         && (var es'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
          Interp.__default.InterpExprs#canCall(Lit(es#0), Lit(st#0))
             && (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(st#0))); 
              Interp.__default.InterpExprs#canCall(es'#2, Lit(st#0))
                 && (var res'#2 := Interp.__default.InterpExprs($LS($LZ), es'#2, Lit(st#0)); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#2, res'#2)
                     && (EliminateMulZero.__default.EqResult(TSeq(TInt), res#2, res'#2)
                       ==> $IsA#Utils.Result(res#2)))))
         && EliminateMulZero.__default.Pes__Succ(Lit(st#0), Lit(es#0), Lit(st'#0), Lit(vs#0))
           == (var es'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
            (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(st#0))); 
              (var res'#2 := Lit(Interp.__default.InterpExprs($LS($LZ), es'#2, Lit(st#0))); 
                EliminateMulZero.__default.EqResult(TSeq(TInt), res#2, res'#2)
                   && Utils.Result#Equal(res#2, 
                    #Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(Lit(vs#0)), $Box(Lit(st'#0)))))))))));
}

function EliminateMulZero.__default.Pes__Succ#canCall(st#0: Map, es#0: Seq, st'#0: Map, vs#0: Seq) : bool;

function EliminateMulZero.__default.Pes__Succ#requires(Map, Seq, Map, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.Pes__Succ
axiom (forall st#0: Map, es#0: Seq, st'#0: Map, vs#0: Seq :: 
  { EliminateMulZero.__default.Pes__Succ#requires(st#0, es#0, st'#0, vs#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt))
       && $Is(es#0, TSeq(Tclass.AST.Expr()))
       && $Is(st'#0, TMap(TSeq(TChar), TInt))
       && $Is(vs#0, TSeq(TInt))
     ==> EliminateMulZero.__default.Pes__Succ#requires(st#0, es#0, st'#0, vs#0) == true);

procedure {:verboseName "EliminateMulZero.Pes_Succ (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Pes__Succ(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())), 
    st'#0: Map where $Is(st'#0, TMap(TSeq(TChar), TInt)), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.Pes_Fail
function EliminateMulZero.__default.Pes__Fail(st#0: Map, es#0: Seq) : bool
uses {
// definition axiom for EliminateMulZero.__default.Pes__Fail (revealed)
axiom {:id "id181"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq :: 
    { EliminateMulZero.__default.Pes__Fail(st#0, es#0) } 
    EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(es#0)
         && (var es'#0 := EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0); 
          Interp.__default.InterpExprs#canCall(es#0, st#0)
             && (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, st#0); 
              Interp.__default.InterpExprs#canCall(es'#0, st#0)
                 && (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#0, res'#0))))
         && EliminateMulZero.__default.Pes__Fail(st#0, es#0)
           == (var es'#0 := EliminateMulZero.__default.Eliminate__Es($LS($LZ), es#0); 
            (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, st#0); 
              (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
                EliminateMulZero.__default.EqResult(TSeq(TInt), res#0, res'#0)
                   && Utils.Result.Failure_q(res#0)))));
// definition axiom for EliminateMulZero.__default.Pes__Fail for decreasing-related literals (revealed)
axiom {:id "id182"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.Pes__Fail(st#0, Lit(es#0)) } 
    EliminateMulZero.__default.Pes__Fail#canCall(st#0, Lit(es#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(Lit(es#0))
         && (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
          Interp.__default.InterpExprs#canCall(Lit(es#0), st#0)
             && (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), st#0); 
              Interp.__default.InterpExprs#canCall(es'#1, st#0)
                 && (var res'#1 := Interp.__default.InterpExprs($LS($LZ), es'#1, st#0); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1))))
         && EliminateMulZero.__default.Pes__Fail(st#0, Lit(es#0))
           == (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
            (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), st#0); 
              (var res'#1 := Interp.__default.InterpExprs($LS($LZ), es'#1, st#0); 
                EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                   && Utils.Result.Failure_q(res#1)))));
// definition axiom for EliminateMulZero.__default.Pes__Fail for all literals (revealed)
axiom {:id "id183"} 3 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.Pes__Fail(Lit(st#0), Lit(es#0)) } 
    EliminateMulZero.__default.Pes__Fail#canCall(Lit(st#0), Lit(es#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr())))
       ==> EliminateMulZero.__default.Eliminate__Es#canCall(Lit(es#0))
         && (var es'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
          Interp.__default.InterpExprs#canCall(Lit(es#0), Lit(st#0))
             && (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(st#0))); 
              Interp.__default.InterpExprs#canCall(es'#2, Lit(st#0))
                 && (var res'#2 := Interp.__default.InterpExprs($LS($LZ), es'#2, Lit(st#0)); 
                  EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#2, res'#2))))
         && EliminateMulZero.__default.Pes__Fail(Lit(st#0), Lit(es#0))
           == (var es'#2 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(es#0))); 
            (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(st#0))); 
              (var res'#2 := Lit(Interp.__default.InterpExprs($LS($LZ), es'#2, Lit(st#0))); 
                Lit(EliminateMulZero.__default.EqResult(TSeq(TInt), res#2, res'#2)
                     && Utils.Result.Failure_q(res#2))))));
}

function EliminateMulZero.__default.Pes__Fail#canCall(st#0: Map, es#0: Seq) : bool;

function EliminateMulZero.__default.Pes__Fail#requires(Map, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.Pes__Fail
axiom (forall st#0: Map, es#0: Seq :: 
  { EliminateMulZero.__default.Pes__Fail#requires(st#0, es#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt)) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> EliminateMulZero.__default.Pes__Fail#requires(st#0, es#0) == true);

procedure {:verboseName "EliminateMulZero.Pes_Fail (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Pes__Fail(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.UpdateState_Pre
function EliminateMulZero.__default.UpdateState__Pre(st#0: Map, vars#0: Seq, argvs#0: Seq) : bool
uses {
// definition axiom for EliminateMulZero.__default.UpdateState__Pre (revealed)
axiom {:id "id191"} 1 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, argvs#0: Seq :: 
    { EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, argvs#0) } 
    EliminateMulZero.__default.UpdateState__Pre#canCall(st#0, vars#0, argvs#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(argvs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, argvs#0)
         == (true && Seq#Length(vars#0) == Seq#Length(argvs#0)));
// definition axiom for EliminateMulZero.__default.UpdateState__Pre for decreasing-related literals (revealed)
axiom {:id "id192"} 1 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, argvs#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.UpdateState__Pre(st#0, Lit(vars#0), argvs#0) } 
    EliminateMulZero.__default.UpdateState__Pre#canCall(st#0, Lit(vars#0), argvs#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(argvs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.UpdateState__Pre(st#0, Lit(vars#0), argvs#0)
         == (true && Seq#Length(Lit(vars#0)) == Seq#Length(argvs#0)));
// definition axiom for EliminateMulZero.__default.UpdateState__Pre for all literals (revealed)
axiom {:id "id193"} 1 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, argvs#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(argvs#0)) } 
    EliminateMulZero.__default.UpdateState__Pre#canCall(Lit(st#0), Lit(vars#0), Lit(argvs#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(argvs#0, TSeq(TInt)))
       ==> EliminateMulZero.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(argvs#0))
         == (true && Seq#Length(Lit(vars#0)) == Seq#Length(Lit(argvs#0))));
}

function EliminateMulZero.__default.UpdateState__Pre#canCall(st#0: Map, vars#0: Seq, argvs#0: Seq) : bool;

function EliminateMulZero.__default.UpdateState__Pre#requires(Map, Seq, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.UpdateState__Pre
axiom (forall st#0: Map, vars#0: Seq, argvs#0: Seq :: 
  { EliminateMulZero.__default.UpdateState__Pre#requires(st#0, vars#0, argvs#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt))
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $Is(argvs#0, TSeq(TInt))
     ==> EliminateMulZero.__default.UpdateState__Pre#requires(st#0, vars#0, argvs#0)
       == true);

procedure {:verboseName "EliminateMulZero.UpdateState_Pre (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.UpdateState__Pre(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))), 
    argvs#0: Seq where $Is(argvs#0, TSeq(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.AssignState
function EliminateMulZero.__default.AssignState(st#0: Map, vars#0: Seq, vals#0: Seq) : Map
uses {
// consequence axiom for EliminateMulZero.__default.AssignState
axiom 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    { EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0) } 
    EliminateMulZero.__default.AssignState#canCall(st#0, vars#0, vals#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0))
       ==> $Is(EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0), 
        TMap(TSeq(TChar), TInt)));
// definition axiom for EliminateMulZero.__default.AssignState (revealed)
axiom {:id "id195"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    { EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0) } 
    EliminateMulZero.__default.AssignState#canCall(st#0, vars#0, vals#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0))
       ==> Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0)
         && EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0)
           == (var ctx#0 := st#0; 
            (var bindings#0 := Interp.__default.VarsAndValuesToContext($LS($LZ), vars#0, vals#0); 
              (var ctx1#0 := Map#Merge(ctx#0, bindings#0); (var st'#0 := ctx1#0; st'#0)))));
// definition axiom for EliminateMulZero.__default.AssignState for decreasing-related literals (revealed)
axiom {:id "id196"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.AssignState(st#0, Lit(vars#0), vals#0) } 
    EliminateMulZero.__default.AssignState#canCall(st#0, Lit(vars#0), vals#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && EliminateMulZero.__default.UpdateState__Pre(st#0, Lit(vars#0), vals#0))
       ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), vals#0)
         && EliminateMulZero.__default.AssignState(st#0, Lit(vars#0), vals#0)
           == (var ctx#1 := st#0; 
            (var bindings#1 := Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), vals#0); 
              (var ctx1#1 := Map#Merge(ctx#1, bindings#1); (var st'#1 := ctx1#1; st'#1)))));
// definition axiom for EliminateMulZero.__default.AssignState for all literals (revealed)
axiom {:id "id197"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.AssignState(Lit(st#0), Lit(vars#0), Lit(vals#0)) } 
    EliminateMulZero.__default.AssignState#canCall(Lit(st#0), Lit(vars#0), Lit(vals#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && Lit(EliminateMulZero.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(vals#0))))
       ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), Lit(vals#0))
         && EliminateMulZero.__default.AssignState(Lit(st#0), Lit(vars#0), Lit(vals#0))
           == (var ctx#2 := Lit(st#0); 
            (var bindings#2 := Lit(Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), Lit(vals#0))); 
              (var ctx1#2 := Map#Merge(ctx#2, bindings#2); (var st'#2 := ctx1#2; st'#2)))));
}

function EliminateMulZero.__default.AssignState#canCall(st#0: Map, vars#0: Seq, vals#0: Seq) : bool;

function EliminateMulZero.__default.AssignState#requires(Map, Seq, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.AssignState
axiom (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
  { EliminateMulZero.__default.AssignState#requires(st#0, vars#0, vals#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt))
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $Is(vals#0, TSeq(TInt))
     ==> EliminateMulZero.__default.AssignState#requires(st#0, vars#0, vals#0)
       == EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0));

procedure {:verboseName "EliminateMulZero.AssignState (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.AssignState(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))), 
    vals#0: Seq where $Is(vals#0, TSeq(TInt)))
   returns (st'#3: Map);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.AssignState (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.AssignState(st#0: Map, vars#0: Seq, vals#0: Seq) returns (st'#3: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##st#0: Map;
  var ##vars#0: Seq;
  var ##argvs#0: Seq;
  var ctx#Z#0: Map;
  var let#0#0#0: Map;
  var bindings#Z#0: Map;
  var let#1#0#0: Map;
  var ##vars#1: Seq;
  var ##values#0: Seq;
  var ctx1#Z#0: Map;
  var let#2#0#0: Map;
  var st'#Z#0: Map;
  var let#3#0#0: Map;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#0, TMap(TSeq(TChar), TInt), $Heap);
    ##vars#0 := vars#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##vars#0, TSeq(TSeq(TChar)), $Heap);
    ##argvs#0 := vals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##argvs#0, TSeq(TInt), $Heap);
    assume EliminateMulZero.__default.UpdateState__Pre#canCall(st#0, vars#0, vals#0);
    assume {:id "id198"} EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0), 
          TMap(TSeq(TChar), TInt));
        assume $Is(st'#3, TMap(TSeq(TChar), TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc ctx#Z#0;
        assume {:id "id199"} let#0#0#0 == st#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id200"} ctx#Z#0 == let#0#0#0;
        havoc bindings#Z#0;
        ##vars#1 := vars#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#1, TSeq(TSeq(TChar)), $Heap);
        ##values#0 := vals#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##values#0, TSeq(TInt), $Heap);
        assert {:id "id201"} {:subsumption 0} Seq#Length(##vars#1) == Seq#Length(##values#0);
        assume Seq#Length(##vars#1) == Seq#Length(##values#0);
        assume Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0);
        assume {:id "id202"} let#1#0#0 == Interp.__default.VarsAndValuesToContext($LS($LZ), vars#0, vals#0);
        assume Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id203"} bindings#Z#0 == let#1#0#0;
        havoc ctx1#Z#0;
        assume {:id "id204"} let#2#0#0 == Map#Merge(ctx#Z#0, bindings#Z#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id205"} ctx1#Z#0 == let#2#0#0;
        havoc st'#Z#0;
        assume {:id "id206"} let#3#0#0 == ctx1#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id207"} st'#Z#0 == let#3#0#0;
        assume {:id "id208"} EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0) == st'#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0), 
          TMap(TSeq(TChar), TInt));
        assume {:id "id209"} EliminateMulZero.__default.AssignState(st#0, vars#0, vals#0) == st'#3;
        return;

        assume false;
    }
}



// function declaration for EliminateMulZero._default.BindStartScope
function EliminateMulZero.__default.BindStartScope(st#0: Map, vars#0: Seq, vals#0: Seq) : Map
uses {
// consequence axiom for EliminateMulZero.__default.BindStartScope
axiom 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    { EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0) } 
    EliminateMulZero.__default.BindStartScope#canCall(st#0, vars#0, vals#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0))
       ==> $Is(EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0), 
        TMap(TSeq(TChar), TInt)));
// definition axiom for EliminateMulZero.__default.BindStartScope (revealed)
axiom {:id "id210"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    { EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0) } 
    EliminateMulZero.__default.BindStartScope#canCall(st#0, vars#0, vals#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0))
       ==> Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0)
         && EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0)
           == (var ctx#0 := st#0; 
            (var bindings#0 := Interp.__default.VarsAndValuesToContext($LS($LZ), vars#0, vals#0); 
              (var ctx1#0 := Map#Merge(ctx#0, bindings#0); (var st'#0 := ctx1#0; st'#0)))));
// definition axiom for EliminateMulZero.__default.BindStartScope for decreasing-related literals (revealed)
axiom {:id "id211"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.BindStartScope(st#0, Lit(vars#0), vals#0) } 
    EliminateMulZero.__default.BindStartScope#canCall(st#0, Lit(vars#0), vals#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && EliminateMulZero.__default.UpdateState__Pre(st#0, Lit(vars#0), vals#0))
       ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), vals#0)
         && EliminateMulZero.__default.BindStartScope(st#0, Lit(vars#0), vals#0)
           == (var ctx#1 := st#0; 
            (var bindings#1 := Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), vals#0); 
              (var ctx1#1 := Map#Merge(ctx#1, bindings#1); (var st'#1 := ctx1#1; st'#1)))));
// definition axiom for EliminateMulZero.__default.BindStartScope for all literals (revealed)
axiom {:id "id212"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.BindStartScope(Lit(st#0), Lit(vars#0), Lit(vals#0)) } 
    EliminateMulZero.__default.BindStartScope#canCall(Lit(st#0), Lit(vars#0), Lit(vals#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar)))
           && $Is(vals#0, TSeq(TInt))
           && Lit(EliminateMulZero.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(vals#0))))
       ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), Lit(vals#0))
         && EliminateMulZero.__default.BindStartScope(Lit(st#0), Lit(vars#0), Lit(vals#0))
           == (var ctx#2 := Lit(st#0); 
            (var bindings#2 := Lit(Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), Lit(vals#0))); 
              (var ctx1#2 := Map#Merge(ctx#2, bindings#2); (var st'#2 := ctx1#2; st'#2)))));
}

function EliminateMulZero.__default.BindStartScope#canCall(st#0: Map, vars#0: Seq, vals#0: Seq) : bool;

function EliminateMulZero.__default.BindStartScope#requires(Map, Seq, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.BindStartScope
axiom (forall st#0: Map, vars#0: Seq, vals#0: Seq :: 
  { EliminateMulZero.__default.BindStartScope#requires(st#0, vars#0, vals#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt))
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $Is(vals#0, TSeq(TInt))
     ==> EliminateMulZero.__default.BindStartScope#requires(st#0, vars#0, vals#0)
       == EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0));

procedure {:verboseName "EliminateMulZero.BindStartScope (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.BindStartScope(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))), 
    vals#0: Seq where $Is(vals#0, TSeq(TInt)))
   returns (st'#3: Map);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.BindStartScope (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.BindStartScope(st#0: Map, vars#0: Seq, vals#0: Seq) returns (st'#3: Map)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##st#0: Map;
  var ##vars#0: Seq;
  var ##argvs#0: Seq;
  var ctx#Z#0: Map;
  var let#0#0#0: Map;
  var bindings#Z#0: Map;
  var let#1#0#0: Map;
  var ##vars#1: Seq;
  var ##values#0: Seq;
  var ctx1#Z#0: Map;
  var let#2#0#0: Map;
  var st'#Z#0: Map;
  var let#3#0#0: Map;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#0, TMap(TSeq(TChar), TInt), $Heap);
    ##vars#0 := vars#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##vars#0, TSeq(TSeq(TChar)), $Heap);
    ##argvs#0 := vals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##argvs#0, TSeq(TInt), $Heap);
    assume EliminateMulZero.__default.UpdateState__Pre#canCall(st#0, vars#0, vals#0);
    assume {:id "id213"} EliminateMulZero.__default.UpdateState__Pre(st#0, vars#0, vals#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0), 
          TMap(TSeq(TChar), TInt));
        assume $Is(st'#3, TMap(TSeq(TChar), TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc ctx#Z#0;
        assume {:id "id214"} let#0#0#0 == st#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id215"} ctx#Z#0 == let#0#0#0;
        havoc bindings#Z#0;
        ##vars#1 := vars#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#1, TSeq(TSeq(TChar)), $Heap);
        ##values#0 := vals#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##values#0, TSeq(TInt), $Heap);
        assert {:id "id216"} {:subsumption 0} Seq#Length(##vars#1) == Seq#Length(##values#0);
        assume Seq#Length(##vars#1) == Seq#Length(##values#0);
        assume Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0);
        assume {:id "id217"} let#1#0#0 == Interp.__default.VarsAndValuesToContext($LS($LZ), vars#0, vals#0);
        assume Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id218"} bindings#Z#0 == let#1#0#0;
        havoc ctx1#Z#0;
        assume {:id "id219"} let#2#0#0 == Map#Merge(ctx#Z#0, bindings#Z#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id220"} ctx1#Z#0 == let#2#0#0;
        havoc st'#Z#0;
        assume {:id "id221"} let#3#0#0 == ctx1#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id222"} st'#Z#0 == let#3#0#0;
        assume {:id "id223"} EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0) == st'#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0), 
          TMap(TSeq(TChar), TInt));
        assume {:id "id224"} EliminateMulZero.__default.BindStartScope(st#0, vars#0, vals#0) == st'#3;
        return;

        assume false;
    }
}



// function declaration for EliminateMulZero._default.BindEndScope
function EliminateMulZero.__default.BindEndScope(st0#0: Map, st#0: Map, vars#0: Seq) : Map
uses {
// consequence axiom for EliminateMulZero.__default.BindEndScope
axiom 1 <= $FunctionContextHeight
   ==> (forall st0#0: Map, st#0: Map, vars#0: Seq :: 
    { EliminateMulZero.__default.BindEndScope(st0#0, st#0, vars#0) } 
    EliminateMulZero.__default.BindEndScope#canCall(st0#0, st#0, vars#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(st0#0, TMap(TSeq(TChar), TInt))
           && $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar))))
       ==> $Is(EliminateMulZero.__default.BindEndScope(st0#0, st#0, vars#0), 
        TMap(TSeq(TChar), TInt)));
// definition axiom for EliminateMulZero.__default.BindEndScope (revealed)
axiom {:id "id225"} 1 <= $FunctionContextHeight
   ==> (forall st0#0: Map, st#0: Map, vars#0: Seq :: 
    { EliminateMulZero.__default.BindEndScope(st0#0, st#0, vars#0) } 
    EliminateMulZero.__default.BindEndScope#canCall(st0#0, st#0, vars#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(st0#0, TMap(TSeq(TChar), TInt))
           && $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar))))
       ==> EliminateMulZero.__default.BindEndScope(st0#0, st#0, vars#0)
         == (var ctx0#0 := st0#0; 
          (var ctx#0 := st#0; 
            (var ctx1#0 := Map#Merge(ctx0#0, 
                  Map#Subtract(ctx#0, 
                    Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(vars#0, $y#0))))); 
              (var st'#0 := ctx1#0; st'#0)))));
// definition axiom for EliminateMulZero.__default.BindEndScope for decreasing-related literals (revealed)
axiom {:id "id226"} 1 <= $FunctionContextHeight
   ==> (forall st0#0: Map, st#0: Map, vars#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.BindEndScope(st0#0, st#0, Lit(vars#0)) } 
    EliminateMulZero.__default.BindEndScope#canCall(st0#0, st#0, Lit(vars#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(st0#0, TMap(TSeq(TChar), TInt))
           && $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar))))
       ==> EliminateMulZero.__default.BindEndScope(st0#0, st#0, Lit(vars#0))
         == (var ctx0#1 := st0#0; 
          (var ctx#1 := st#0; 
            (var ctx1#1 := Map#Merge(ctx0#1, 
                  Map#Subtract(ctx#1, 
                    Set#FromBoogieMap((lambda $y#2: Box :: $IsBox($y#2, TSeq(TChar)) && Seq#Contains(vars#0, $y#2))))); 
              (var st'#1 := ctx1#1; st'#1)))));
// definition axiom for EliminateMulZero.__default.BindEndScope for all literals (revealed)
axiom {:id "id227"} 1 <= $FunctionContextHeight
   ==> (forall st0#0: Map, st#0: Map, vars#0: Seq :: 
    {:weight 3} { EliminateMulZero.__default.BindEndScope(Lit(st0#0), Lit(st#0), Lit(vars#0)) } 
    EliminateMulZero.__default.BindEndScope#canCall(Lit(st0#0), Lit(st#0), Lit(vars#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(st0#0, TMap(TSeq(TChar), TInt))
           && $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(vars#0, TSeq(TSeq(TChar))))
       ==> EliminateMulZero.__default.BindEndScope(Lit(st0#0), Lit(st#0), Lit(vars#0))
         == (var ctx0#2 := Lit(st0#0); 
          (var ctx#2 := Lit(st#0); 
            (var ctx1#2 := Map#Merge(ctx0#2, 
                  Map#Subtract(ctx#2, 
                    Set#FromBoogieMap((lambda $y#4: Box :: $IsBox($y#4, TSeq(TChar)) && Seq#Contains(vars#0, $y#4))))); 
              (var st'#2 := ctx1#2; st'#2)))));
}

function EliminateMulZero.__default.BindEndScope#canCall(st0#0: Map, st#0: Map, vars#0: Seq) : bool;

function EliminateMulZero.__default.BindEndScope#requires(Map, Map, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.BindEndScope
axiom (forall st0#0: Map, st#0: Map, vars#0: Seq :: 
  { EliminateMulZero.__default.BindEndScope#requires(st0#0, st#0, vars#0) } 
  $Is(st0#0, TMap(TSeq(TChar), TInt))
       && $Is(st#0, TMap(TSeq(TChar), TInt))
       && $Is(vars#0, TSeq(TSeq(TChar)))
     ==> EliminateMulZero.__default.BindEndScope#requires(st0#0, st#0, vars#0) == true);

procedure {:verboseName "EliminateMulZero.BindEndScope (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.BindEndScope(st0#0: Map where $Is(st0#0, TMap(TSeq(TChar), TInt)), 
    st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    vars#0: Seq where $Is(vars#0, TSeq(TSeq(TChar))))
   returns (st'#3: Map);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for EliminateMulZero._default.P_Step
function EliminateMulZero.__default.P__Step(st#0: Map, e#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for EliminateMulZero.__default.P__Step
axiom 4 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    { EliminateMulZero.__default.P__Step(st#0, e#0) } 
    EliminateMulZero.__default.P__Step#canCall(st#0, e#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr())
           && 
          EliminateMulZero.__default.P(st#0, e#0)
           && !EliminateMulZero.__default.P__Fail(st#0, e#0))
       ==> EliminateMulZero.__default.P__Succ(st#0, 
          e#0, 
          $Unbox(_System.Tuple2._0(EliminateMulZero.__default.P__Step(st#0, e#0))): Map, 
          $Unbox(_System.Tuple2._1(EliminateMulZero.__default.P__Step(st#0, e#0))): int)
         && $Is(EliminateMulZero.__default.P__Step(st#0, e#0), 
          Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt)));
// definition axiom for EliminateMulZero.__default.P__Step (revealed)
axiom {:id "id238"} 4 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    { EliminateMulZero.__default.P__Step(st#0, e#0) } 
    EliminateMulZero.__default.P__Step#canCall(st#0, e#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr())
           && 
          EliminateMulZero.__default.P(st#0, e#0)
           && !EliminateMulZero.__default.P__Fail(st#0, e#0))
       ==> Interp.__default.InterpExpr#canCall(e#0, st#0)
         && EliminateMulZero.__default.P__Step(st#0, e#0)
           == (var v#0, ctx1#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), e#0, st#0))): DatatypeType)): int, 
              $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), e#0, st#0))): DatatypeType)): Map; 
            #_System._tuple#2._#Make2($Box(ctx1#0), $Box(v#0))));
// definition axiom for EliminateMulZero.__default.P__Step for decreasing-related literals (revealed)
axiom {:id "id239"} 4 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.P__Step(st#0, Lit(e#0)) } 
    EliminateMulZero.__default.P__Step#canCall(st#0, Lit(e#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr())
           && 
          EliminateMulZero.__default.P(st#0, Lit(e#0))
           && !EliminateMulZero.__default.P__Fail(st#0, Lit(e#0)))
       ==> Interp.__default.InterpExpr#canCall(Lit(e#0), st#0)
         && EliminateMulZero.__default.P__Step(st#0, Lit(e#0))
           == (var v#1, ctx1#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0))): DatatypeType)): int, 
              $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), st#0))): DatatypeType)): Map; 
            #_System._tuple#2._#Make2($Box(ctx1#1), $Box(v#1))));
// definition axiom for EliminateMulZero.__default.P__Step for all literals (revealed)
axiom {:id "id240"} 4 <= $FunctionContextHeight
   ==> (forall st#0: Map, e#0: DatatypeType :: 
    {:weight 3} { EliminateMulZero.__default.P__Step(Lit(st#0), Lit(e#0)) } 
    EliminateMulZero.__default.P__Step#canCall(Lit(st#0), Lit(e#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(e#0, Tclass.AST.Expr())
           && 
          Lit(EliminateMulZero.__default.P(Lit(st#0), Lit(e#0)))
           && !Lit(EliminateMulZero.__default.P__Fail(Lit(st#0), Lit(e#0))))
       ==> Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(st#0))
         && EliminateMulZero.__default.P__Step(Lit(st#0), Lit(e#0))
           == (var v#2, ctx1#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value(Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))))): DatatypeType)): int, 
              $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(st#0))))): DatatypeType)): Map; 
            #_System._tuple#2._#Make2($Box(ctx1#2), $Box(v#2))));
}

function EliminateMulZero.__default.P__Step#canCall(st#0: Map, e#0: DatatypeType) : bool;

function EliminateMulZero.__default.P__Step#requires(Map, DatatypeType) : bool;

// #requires axiom for EliminateMulZero.__default.P__Step
axiom (forall st#0: Map, e#0: DatatypeType :: 
  { EliminateMulZero.__default.P__Step#requires(st#0, e#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt)) && $Is(e#0, Tclass.AST.Expr())
     ==> EliminateMulZero.__default.P__Step#requires(st#0, e#0)
       == (EliminateMulZero.__default.P(st#0, e#0)
         && !EliminateMulZero.__default.P__Fail(st#0, e#0)));

procedure {:verboseName "EliminateMulZero.P_Step (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.P__Step(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    e#0: DatatypeType where $Is(e#0, Tclass.AST.Expr()))
   returns (res#0: DatatypeType);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id241"} EliminateMulZero.__default.P__Succ#canCall(st#0, 
      e#0, 
      $Unbox(_System.Tuple2._0(res#0)): Map, 
      $Unbox(_System.Tuple2._1(res#0)): int)
     ==> EliminateMulZero.__default.P__Succ(st#0, 
        e#0, 
        $Unbox(_System.Tuple2._0(res#0)): Map, 
        $Unbox(_System.Tuple2._1(res#0)): int)
       || (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#0)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#0)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)
                   ==> (var ctx1'#0 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#3 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                          v#3 == v'#0))))))));
  ensures {:id "id242"} EliminateMulZero.__default.P__Succ#canCall(st#0, 
      e#0, 
      $Unbox(_System.Tuple2._0(res#0)): Map, 
      $Unbox(_System.Tuple2._1(res#0)): int)
     ==> EliminateMulZero.__default.P__Succ(st#0, 
        e#0, 
        $Unbox(_System.Tuple2._0(res#0)): Map, 
        $Unbox(_System.Tuple2._1(res#0)): int)
       || (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#0)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#0)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)
                   ==> (var ctx1'#0 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#3 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#0, ctx1#3)))))))));
  ensures {:id "id243"} EliminateMulZero.__default.P__Succ#canCall(st#0, 
      e#0, 
      $Unbox(_System.Tuple2._0(res#0)): Map, 
      $Unbox(_System.Tuple2._1(res#0)): int)
     ==> EliminateMulZero.__default.P__Succ(st#0, 
        e#0, 
        $Unbox(_System.Tuple2._0(res#0)): Map, 
        $Unbox(_System.Tuple2._1(res#0)): int)
       || (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#0)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#0)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id244"} EliminateMulZero.__default.P__Succ#canCall(st#0, 
      e#0, 
      $Unbox(_System.Tuple2._0(res#0)): Map, 
      $Unbox(_System.Tuple2._1(res#0)): int)
     ==> EliminateMulZero.__default.P__Succ(st#0, 
        e#0, 
        $Unbox(_System.Tuple2._0(res#0)): Map, 
        $Unbox(_System.Tuple2._1(res#0)): int)
       || (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#0)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#0)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#0)))): DatatypeType)
                   ==> Lit(true)))));
  ensures {:id "id245"} EliminateMulZero.__default.P__Succ#canCall(st#0, 
      e#0, 
      $Unbox(_System.Tuple2._0(res#0)): Map, 
      $Unbox(_System.Tuple2._1(res#0)): int)
     ==> EliminateMulZero.__default.P__Succ(st#0, 
        e#0, 
        $Unbox(_System.Tuple2._0(res#0)): Map, 
        $Unbox(_System.Tuple2._1(res#0)): int)
       || (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, st#0); 
            Utils.Result#Equal(res#1, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2(_System.Tuple2._1(res#0), _System.Tuple2._0(res#0))))))));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.P_Step (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.P__Step(st#0: Map, e#0: DatatypeType) returns (res#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##st#0: Map;
  var ##e#0: DatatypeType;
  var ##st#1: Map;
  var ##e#1: DatatypeType;
  var ##st#2: Map;
  var ##e#2: DatatypeType;
  var ##st'#0: Map;
  var ##v#0: int;
  var v#Z#0: int;
  var ctx1#Z#0: Map;
  var let#0#0#0: DatatypeType;
  var ##e#3: DatatypeType;
  var ##ctx#0: Map;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#0, TMap(TSeq(TChar), TInt), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume EliminateMulZero.__default.P#canCall(st#0, e#0);
    assume {:id "id246"} EliminateMulZero.__default.P(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#1, TMap(TSeq(TChar), TInt), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    assume EliminateMulZero.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id247"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(EliminateMulZero.__default.P__Step(st#0, e#0), 
          Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
        assume $Is(res#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
        ##st#2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#2, TMap(TSeq(TChar), TInt), $Heap);
        ##e#2 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2, Tclass.AST.Expr(), $Heap);
        assume _System.Tuple2.___hMake2_q(res#0);
        ##st'#0 := $Unbox(_System.Tuple2._0(res#0)): Map;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st'#0, TMap(TSeq(TChar), TInt), $Heap);
        assume _System.Tuple2.___hMake2_q(res#0);
        ##v#0 := $Unbox(_System.Tuple2._1(res#0)): int;
        // assume allocatedness for argument to function
        assume $IsAlloc(##v#0, TInt, $Heap);
        assume EliminateMulZero.__default.P__Succ#canCall(st#0, 
          e#0, 
          $Unbox(_System.Tuple2._0(res#0)): Map, 
          $Unbox(_System.Tuple2._1(res#0)): int);
        assume {:id "id248"} EliminateMulZero.__default.P__Succ(st#0, 
          e#0, 
          $Unbox(_System.Tuple2._0(res#0)): Map, 
          $Unbox(_System.Tuple2._1(res#0)): int);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc v#Z#0;
        havoc ctx1#Z#0;
        ##e#3 := e#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#3, Tclass.AST.Expr(), $Heap);
        ##ctx#0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##ctx#0, TMap(TSeq(TChar), TInt), $Heap);
        assume Interp.__default.InterpExpr#canCall(e#0, st#0);
        assume {:id "id249"} let#0#0#0 == Interp.__default.InterpExpr($LS($LZ), e#0, st#0);
        assume Interp.__default.InterpExpr#canCall(e#0, st#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, 
          Tclass.Utils.Result(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt))));
        assert {:id "id250"} Utils.Result.Success_q(let#0#0#0);
        assume _System.Tuple2.___hMake2_q($Unbox(Utils.Result.value(let#0#0#0)): DatatypeType);
        assume {:id "id251"} #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#Z#0), $Box(ctx1#Z#0))))
           == let#0#0#0;
        assume {:id "id252"} EliminateMulZero.__default.P__Step(st#0, e#0)
           == #_System._tuple#2._#Make2($Box(ctx1#Z#0), $Box(v#Z#0));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(EliminateMulZero.__default.P__Step(st#0, e#0), 
          Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
        assume {:id "id253"} EliminateMulZero.__default.P__Step(st#0, e#0) == res#0;
        return;

        assume false;
    }
}



procedure {:verboseName "EliminateMulZero.P_Fail_Sound (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.P__Fail__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.P_Fail_Sound (call)"} Call$$EliminateMulZero.__default.P__Fail__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id256"} EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id257"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.P_Fail_Sound (correctness)"} Impl$$EliminateMulZero.__default.P__Fail__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id258"} EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id259"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#2 == v'#2))))))));
  ensures {:id "id260"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id261"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id262"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.P_Fail_Sound (correctness)"} Impl$$EliminateMulZero.__default.P__Fail__Sound(st#0: Map, e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P_Fail_Sound, Impl$$EliminateMulZero.__default.P__Fail__Sound
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.P_Succ_Sound (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.P__Succ__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    st'#0: Map
       where $Is(st'#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st'#0, TMap(TSeq(TChar), TInt), $Heap), 
    v#0: int);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.P_Succ_Sound (call)"} Call$$EliminateMulZero.__default.P__Succ__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    st'#0: Map
       where $Is(st'#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st'#0, TMap(TSeq(TChar), TInt), $Heap), 
    v#0: int);
  // user-defined preconditions
  requires {:id "id265"} EliminateMulZero.__default.P__Succ(st#0, e#0, st'#0, v#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id266"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.P_Succ_Sound (correctness)"} Impl$$EliminateMulZero.__default.P__Succ__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    st'#0: Map
       where $Is(st'#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st'#0, TMap(TSeq(TChar), TInt), $Heap), 
    v#0: int)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id267"} EliminateMulZero.__default.P__Succ(st#0, e#0, st'#0, v#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id268"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#3 == v'#2))))))));
  ensures {:id "id269"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id270"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id271"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.P_Succ_Sound (correctness)"} Impl$$EliminateMulZero.__default.P__Succ__Sound(st#0: Map, e#0: DatatypeType, st'#0: Map, v#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P_Succ_Sound, Impl$$EliminateMulZero.__default.P__Succ__Sound
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductVar (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductVar(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductVar (call)"} Call$$EliminateMulZero.__default.InductVar(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id275"} AST.Expr__Raw.Var_q(e#0);
  requires {:id "id276"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id277"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductVar (correctness)"} Impl$$EliminateMulZero.__default.InductVar(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id278"} AST.Expr__Raw.Var_q(e#0);
  requires {:id "id279"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id280"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#2 == v'#2))))))));
  ensures {:id "id281"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id282"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id283"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductVar (correctness)"} Impl$$EliminateMulZero.__default.InductVar(st#0: Map, e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductVar, Impl$$EliminateMulZero.__default.InductVar
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductLiteral (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductLiteral(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductLiteral (call)"} Call$$EliminateMulZero.__default.InductLiteral(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id287"} AST.Expr__Raw.Literal_q(e#0);
  requires {:id "id288"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id289"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductLiteral (correctness)"} Impl$$EliminateMulZero.__default.InductLiteral(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id290"} AST.Expr__Raw.Literal_q(e#0);
  requires {:id "id291"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id292"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#2 == v'#2))))))));
  ensures {:id "id293"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id294"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id295"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductLiteral (correctness)"} Impl$$EliminateMulZero.__default.InductLiteral(st#0: Map, e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductLiteral, Impl$$EliminateMulZero.__default.InductLiteral
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductIf_Fail (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductIf__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductIf_Fail (call)"} Call$$EliminateMulZero.__default.InductIf__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
  requires {:id "id306"} AST.Expr__Raw.If_q(e#0);
  requires {:id "id307"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
  requires {:id "id308"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
  requires {:id "id309"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
  requires {:id "id310"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id311"} EliminateMulZero.__default.P(st#0, cond#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, cond#0);
  ensures {:id "id312"} !EliminateMulZero.__default.P__Fail(st#0, cond#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductIf_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductIf__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
         && $IsA#AST.Expr__Raw(els#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id313"} AST.Expr__Raw.If_q(e#0);
  requires {:id "id314"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
  requires {:id "id315"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
  requires {:id "id316"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
  requires {:id "id317"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id318"} EliminateMulZero.__default.P(st#0, cond#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, cond#0);
  ensures {:id "id319"} !EliminateMulZero.__default.P__Fail(st#0, cond#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductIf_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductIf__Fail(st#0: Map, 
    e#0: DatatypeType, 
    cond#0: DatatypeType, 
    thn#0: DatatypeType, 
    els#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductIf_Fail, Impl$$EliminateMulZero.__default.InductIf__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductIf_Succ (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductIf__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st_cond#0: Map
       where $Is(st_cond#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st_cond#0, TMap(TSeq(TChar), TInt), $Heap), 
    condv#0: int);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductIf_Succ (call)"} Call$$EliminateMulZero.__default.InductIf__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st_cond#0: Map
       where $Is(st_cond#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st_cond#0, TMap(TSeq(TChar), TInt), $Heap), 
    condv#0: int);
  // user-defined preconditions
  requires {:id "id332"} AST.Expr__Raw.If_q(e#0);
  requires {:id "id333"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
  requires {:id "id334"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
  requires {:id "id335"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
  requires {:id "id336"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id337"} EliminateMulZero.__default.P__Succ(st#0, cond#0, st_cond#0, condv#0);
  requires {:id "id338"} EliminateMulZero.__default.P(st_cond#0, thn#0);
  requires {:id "id339"} EliminateMulZero.__default.P(st_cond#0, els#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id340"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductIf_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductIf__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st_cond#0: Map
       where $Is(st_cond#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st_cond#0, TMap(TSeq(TChar), TInt), $Heap), 
    condv#0: int)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id341"} AST.Expr__Raw.If_q(e#0);
  requires {:id "id342"} AST.Expr__Raw#Equal(AST.Expr__Raw.cond(e#0), cond#0);
  requires {:id "id343"} AST.Expr__Raw#Equal(AST.Expr__Raw.thn(e#0), thn#0);
  requires {:id "id344"} AST.Expr__Raw#Equal(AST.Expr__Raw.els(e#0), els#0);
  requires {:id "id345"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id346"} EliminateMulZero.__default.P__Succ(st#0, cond#0, st_cond#0, condv#0);
  requires {:id "id347"} EliminateMulZero.__default.P(st_cond#0, thn#0);
  requires {:id "id348"} EliminateMulZero.__default.P(st_cond#0, els#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id349"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#2 == v'#2))))))));
  ensures {:id "id350"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id351"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id352"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductIf_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductIf__Succ(st#0: Map, 
    e#0: DatatypeType, 
    cond#0: DatatypeType, 
    thn#0: DatatypeType, 
    els#0: DatatypeType, 
    st_cond#0: Map, 
    condv#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductIf_Succ, Impl$$EliminateMulZero.__default.InductIf__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero(e1#0: DatatypeType
       where $Is(e1#0, Tclass.AST.Expr())
         && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass.AST.Expr())
         && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e2#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero(e1#0: DatatypeType, e2#0: DatatypeType, ctx#0: Map)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##e1#0: DatatypeType;
  var ##e2#0: DatatypeType;
  var res#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##e#0: DatatypeType;
  var ##ctx#0: Map;


    // AddMethodImpl: IsZeroMulPure_Implies_EvalsToZero, CheckWellFormed$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##e1#0 := e1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e1#0, Tclass.AST.Expr(), $Heap);
    ##e2#0 := e2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e2#0, Tclass.AST.Expr(), $Heap);
    assume EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0);
    assume {:id "id353"} EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc res#Z#0;
    assert {:id "id354"} $Is(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), Tclass.AST.Expr());
    ##e#0 := #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    ##ctx#0 := ctx#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ctx#0, TMap(TSeq(TChar), TInt), $Heap);
    assume Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0);
    assume {:id "id355"} let#0#0#0
       == Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0);
    assume Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, 
      Tclass.Utils.Result(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt))));
    assume {:id "id356"} res#Z#0 == let#0#0#0;
    if (Utils.Result.Success_q(res#Z#0))
    {
        assert {:id "id357"} Utils.Result.Success_q(res#Z#0);
    }

    assume {:id "id358"} (var res#0 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0); 
      Utils.Result.Success_q(res#0)
         ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0)): DatatypeType, 
          #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0))));
}



procedure {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero (call)"} Call$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero(e1#0: DatatypeType
       where $Is(e1#0, Tclass.AST.Expr())
         && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass.AST.Expr())
         && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e2#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap));
  // user-defined preconditions
  requires {:id "id359"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || AST.Expr__Raw#Equal(e1#0, EliminateMulZero.__default.ZeroExpr());
  requires {:id "id360"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (AST.Expr__Raw.Var_q(e2#0)
             ==> (var name#0 := AST.Expr__Raw.name(e2#0); Lit(true))));
  requires {:id "id361"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            AST.Expr__Raw.Literal_q(e2#0)
             ==> (var n#0 := AST.Expr__Raw.n(e2#0); Lit(true))));
  requires {:id "id362"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            AST.Expr__Raw.Bind_q(e2#0)
             ==> (var body#0 := AST.Expr__Raw.body(e2#0); 
              (var bvals#0 := AST.Expr__Raw.bvals(e2#0); 
                (var bvars#0 := AST.Expr__Raw.bvars(e2#0); 
                  Pure.__default.IsPure__Es($LS($LS($LZ)), bvals#0, Lit(Set#Empty(): Set)))))));
  requires {:id "id363"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            AST.Expr__Raw.Bind_q(e2#0)
             ==> (var body#0 := AST.Expr__Raw.body(e2#0); 
              (var bvals#0 := AST.Expr__Raw.bvals(e2#0); 
                (var bvars#0 := AST.Expr__Raw.bvars(e2#0); 
                  Pure.__default.IsPure($LS($LS($LZ)), 
                    body#0, 
                    Set#Union(Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(bvars#0, $y#0))), 
                      Set#Empty(): Set)))))));
  requires {:id "id364"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            AST.Expr__Raw.Assign_q(e2#0)
             ==> (var avals#0 := AST.Expr__Raw.avals(e2#0); 
              (var avars#0 := AST.Expr__Raw.avars(e2#0); 
                (forall x#0: Seq :: 
                  { Set#IsMember(Set#Empty(): Set, $Box(x#0)) } 
                    { Seq#Contains(avars#0, $Box(x#0)) } 
                  $Is(x#0, TSeq(TChar)) && Seq#Contains(avars#0, $Box(x#0))
                     ==> Set#IsMember(Lit(Set#Empty(): Set), $Box(x#0)))))));
  requires {:id "id365"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            AST.Expr__Raw.Assign_q(e2#0)
             ==> (var avals#0 := AST.Expr__Raw.avals(e2#0); 
              (var avars#0 := AST.Expr__Raw.avars(e2#0); 
                Pure.__default.IsPure__Es($LS($LS($LZ)), avals#0, Lit(Set#Empty(): Set))))));
  requires {:id "id366"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            !AST.Expr__Raw.Assign_q(e2#0)
             ==> 
            AST.Expr__Raw.If_q(e2#0)
             ==> (var els#0 := AST.Expr__Raw.els(e2#0); 
              (var thn#0 := AST.Expr__Raw.thn(e2#0); 
                (var cond#0 := AST.Expr__Raw.cond(e2#0); 
                  Pure.__default.IsPure($LS($LS($LZ)), cond#0, Lit(Set#Empty(): Set)))))));
  requires {:id "id367"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            !AST.Expr__Raw.Assign_q(e2#0)
             ==> 
            AST.Expr__Raw.If_q(e2#0)
             ==> (var els#0 := AST.Expr__Raw.els(e2#0); 
              (var thn#0 := AST.Expr__Raw.thn(e2#0); 
                (var cond#0 := AST.Expr__Raw.cond(e2#0); 
                  Pure.__default.IsPure($LS($LS($LZ)), thn#0, Lit(Set#Empty(): Set)))))));
  requires {:id "id368"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            !AST.Expr__Raw.Assign_q(e2#0)
             ==> 
            AST.Expr__Raw.If_q(e2#0)
             ==> (var els#0 := AST.Expr__Raw.els(e2#0); 
              (var thn#0 := AST.Expr__Raw.thn(e2#0); 
                (var cond#0 := AST.Expr__Raw.cond(e2#0); 
                  Pure.__default.IsPure($LS($LS($LZ)), els#0, Lit(Set#Empty(): Set)))))));
  requires {:id "id369"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            !AST.Expr__Raw.Assign_q(e2#0)
             ==> 
            !AST.Expr__Raw.If_q(e2#0)
             ==> 
            AST.Expr__Raw.Op_q(e2#0)
             ==> (var oe2#0 := AST.Expr__Raw.oe2(e2#0); 
              (var oe1#0 := AST.Expr__Raw.oe1(e2#0); 
                (var op#0 := AST.Expr__Raw.op(e2#0); 
                  Pure.__default.IsPure($LS($LS($LZ)), oe1#0, Lit(Set#Empty(): Set)))))));
  requires {:id "id370"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            !AST.Expr__Raw.Assign_q(e2#0)
             ==> 
            !AST.Expr__Raw.If_q(e2#0)
             ==> 
            AST.Expr__Raw.Op_q(e2#0)
             ==> (var oe2#0 := AST.Expr__Raw.oe2(e2#0); 
              (var oe1#0 := AST.Expr__Raw.oe1(e2#0); 
                (var op#0 := AST.Expr__Raw.op(e2#0); 
                  Pure.__default.IsPure($LS($LS($LZ)), oe2#0, Lit(Set#Empty(): Set)))))));
  requires {:id "id371"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     ==> EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
       || (Pure.__default.IsPure#canCall(e2#0, Lit(Set#Empty(): Set))
         ==> Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set))
           || (!AST.Expr__Raw.Var_q(e2#0)
             ==> 
            !AST.Expr__Raw.Literal_q(e2#0)
             ==> 
            !AST.Expr__Raw.Bind_q(e2#0)
             ==> 
            !AST.Expr__Raw.Assign_q(e2#0)
             ==> 
            !AST.Expr__Raw.If_q(e2#0)
             ==> 
            !AST.Expr__Raw.Op_q(e2#0)
             ==> (var es#0 := AST.Expr__Raw.es(e2#0); 
              Pure.__default.IsPure__Es($LS($LS($LZ)), es#0, Lit(Set#Empty(): Set)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0)
     && (var res#0 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0); 
      Utils.Result.Success_q(res#0)
         ==> $IsA#_System.Tuple2($Unbox(Utils.Result.value(res#0)): DatatypeType));
  ensures {:id "id372"} (var res#0 := Interp.__default.InterpExpr($LS($LS($LZ)), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0); 
    Utils.Result.Success_q(res#0)
       ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0)): DatatypeType, 
        #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero (correctness)"} Impl$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero(e1#0: DatatypeType
       where $Is(e1#0, Tclass.AST.Expr())
         && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e1#0), 
    e2#0: DatatypeType
       where $Is(e2#0, Tclass.AST.Expr())
         && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e2#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id373"} EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0)
     && 
    EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
     && 
    AST.Expr__Raw#Equal(e1#0, EliminateMulZero.__default.ZeroExpr())
     && Pure.__default.IsPure($LS($LZ), e2#0, Lit(Set#Empty(): Set));
  modifies $Heap;
  // user-defined postconditions
  free ensures Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0)
     && (var res#0 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0); 
      Utils.Result.Success_q(res#0)
         ==> $IsA#_System.Tuple2($Unbox(Utils.Result.value(res#0)): DatatypeType));
  ensures {:id "id374"} (var res#0 := Interp.__default.InterpExpr($LS($LS($LZ)), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0); 
    Utils.Result.Success_q(res#0)
       ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0)): DatatypeType, 
        #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero (correctness)"} Impl$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero(e1#0: DatatypeType, e2#0: DatatypeType, ctx#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var e##0: DatatypeType;
  var ctx##0: Map;

    // AddMethodImpl: IsZeroMulPure_Implies_EvalsToZero, Impl$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#AST.Expr__Raw(e1#0);
    assume $IsA#AST.Expr__Raw(e2#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#e10#0: DatatypeType, $ih#e20#0: DatatypeType, $ih#ctx0#0: Map :: 
      { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box($ih#ctx0#0)), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), $ih#e10#0, $ih#e20#0) } 
        { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box($ih#ctx0#0)), EliminateMulZero.__default.IsZeroMulPure($ih#e10#0, $ih#e20#0) } 
      $Is($ih#e10#0, Tclass.AST.Expr())
           && $Is($ih#e20#0, Tclass.AST.Expr())
           && $Is($ih#ctx0#0, TMap(TSeq(TChar), TInt))
           && EliminateMulZero.__default.IsZeroMulPure($ih#e10#0, $ih#e20#0)
           && (DtRank($ih#e10#0) < DtRank(e1#0)
             || (DtRank($ih#e10#0) == DtRank(e1#0)
               && (DtRank($ih#e20#0) < DtRank(e2#0)
                 || (DtRank($ih#e20#0) == DtRank(e2#0)
                   && 
                  Set#Subset(Map#Domain($ih#ctx0#0), Map#Domain(ctx#0))
                   && !Set#Subset(Map#Domain(ctx#0), Map#Domain($ih#ctx0#0))))))
         ==> (var res#1 := Interp.__default.InterpExpr($LS($LZ), 
              #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), $ih#e10#0, $ih#e20#0), 
              $ih#ctx0#0); 
          Utils.Result.Success_q(res#1)
             ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#1)): DatatypeType, 
              #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box($ih#ctx0#0)))));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.dfy(223,25)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##0 := e2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    ctx##0 := ctx#0;
    call {:id "id375"} Call$$Pure.__default.InterpExpr__Pure(e##0, ctx##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero_Forall (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero_Forall (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall()
{
  var $_ModifiesFrame: [ref,Field]bool;
  var e1#0: DatatypeType;
  var e2#0: DatatypeType;
  var ctx#0: Map;
  var ##e1#0: DatatypeType;
  var ##e2#0: DatatypeType;
  var res#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##e#0: DatatypeType;
  var ##ctx#0: Map;


    // AddMethodImpl: IsZeroMulPure_Implies_EvalsToZero_Forall, CheckWellFormed$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc e1#0;
    havoc e2#0;
    havoc ctx#0;
    assume $Is(e1#0, Tclass.AST.Expr())
       && $IsAlloc(e1#0, Tclass.AST.Expr(), $Heap)
       && 
      $Is(e2#0, Tclass.AST.Expr())
       && $IsAlloc(e2#0, Tclass.AST.Expr(), $Heap)
       && 
      $Is(ctx#0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap);
    if (*)
    {
        ##e1#0 := e1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e1#0, Tclass.AST.Expr(), $Heap);
        ##e2#0 := e2#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e2#0, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0, e2#0);
        assume {:id "id376"} EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0);
        havoc res#Z#0;
        assert {:id "id377"} $Is(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), Tclass.AST.Expr());
        ##e#0 := #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
        ##ctx#0 := ctx#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##ctx#0, TMap(TSeq(TChar), TInt), $Heap);
        assume Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0);
        assume {:id "id378"} let#0#0#0
           == Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0);
        assume Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, 
          Tclass.Utils.Result(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt))));
        assume {:id "id379"} res#Z#0 == let#0#0#0;
        if (Utils.Result.Success_q(res#Z#0))
        {
            assert {:id "id380"} Utils.Result.Success_q(res#Z#0);
        }

        assume {:id "id381"} (var res#0 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0); 
          Utils.Result.Success_q(res#0)
             ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0)): DatatypeType, 
              #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0))));
    }
    else
    {
        assume {:id "id382"} EliminateMulZero.__default.IsZeroMulPure(e1#0, e2#0)
           ==> (var res#0 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0, e2#0), ctx#0); 
            Utils.Result.Success_q(res#0)
               ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0)): DatatypeType, 
                #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0))));
    }

    assume {:id "id383"} (forall e1#1: DatatypeType, e2#1: DatatypeType, ctx#1: Map :: 
      { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), #AST.Expr_Raw.Op(#AST.BinOp.Mul(), e1#1, e2#1) } 
        { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1) } 
      $Is(e1#1, Tclass.AST.Expr())
           && $Is(e2#1, Tclass.AST.Expr())
           && $Is(ctx#1, TMap(TSeq(TChar), TInt))
           && EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1)
         ==> (var res#1 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#1, e2#1), ctx#1); 
          Utils.Result.Success_q(res#1)
             ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#1)): DatatypeType, 
              #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)))));
}



procedure {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero_Forall (call)"} Call$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall e1#1: DatatypeType, e2#1: DatatypeType, ctx#1: Map :: 
    { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), #AST.Expr_Raw.Op(#AST.BinOp.Mul(), e1#1, e2#1) } 
      { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1) } 
    $Is(e1#1, Tclass.AST.Expr())
         && $Is(e2#1, Tclass.AST.Expr())
         && $Is(ctx#1, TMap(TSeq(TChar), TInt))
       ==> EliminateMulZero.__default.IsZeroMulPure#canCall(e1#1, e2#1)
         && (EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1)
           ==> Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#1, e2#1), ctx#1)
             && (var res#1 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#1, e2#1), ctx#1); 
              Utils.Result.Success_q(res#1)
                 ==> $IsA#_System.Tuple2($Unbox(Utils.Result.value(res#1)): DatatypeType))));
  free ensures {:id "id384"} (forall e1#1: DatatypeType, e2#1: DatatypeType, ctx#1: Map :: 
    { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), #AST.Expr_Raw.Op(#AST.BinOp.Mul(), e1#1, e2#1) } 
      { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1) } 
    $Is(e1#1, Tclass.AST.Expr())
         && $Is(e2#1, Tclass.AST.Expr())
         && $Is(ctx#1, TMap(TSeq(TChar), TInt))
         && EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1)
       ==> (var res#1 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#1, e2#1), ctx#1); 
        Utils.Result.Success_q(res#1)
           ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#1)): DatatypeType, 
            #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero_Forall (correctness)"} Impl$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall e1#1: DatatypeType, e2#1: DatatypeType, ctx#1: Map :: 
    { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), #AST.Expr_Raw.Op(#AST.BinOp.Mul(), e1#1, e2#1) } 
      { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1) } 
    $Is(e1#1, Tclass.AST.Expr())
         && $Is(e2#1, Tclass.AST.Expr())
         && $Is(ctx#1, TMap(TSeq(TChar), TInt))
       ==> EliminateMulZero.__default.IsZeroMulPure#canCall(e1#1, e2#1)
         && (EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1)
           ==> Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#1, e2#1), ctx#1)
             && (var res#1 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#1, e2#1), ctx#1); 
              Utils.Result.Success_q(res#1)
                 ==> $IsA#_System.Tuple2($Unbox(Utils.Result.value(res#1)): DatatypeType))));
  ensures {:id "id385"} (forall e1#1: DatatypeType, e2#1: DatatypeType, ctx#1: Map :: 
    { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), #AST.Expr_Raw.Op(#AST.BinOp.Mul(), e1#1, e2#1) } 
      { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)), EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1) } 
    $Is(e1#1, Tclass.AST.Expr())
         && $Is(e2#1, Tclass.AST.Expr())
         && $Is(ctx#1, TMap(TSeq(TChar), TInt))
         && EliminateMulZero.__default.IsZeroMulPure(e1#1, e2#1)
       ==> (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#1, e2#1), ctx#1); 
        Utils.Result.Success_q(res#1)
           ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#1)): DatatypeType, 
            #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#1)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.IsZeroMulPure_Implies_EvalsToZero_Forall (correctness)"} Impl$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var e1#0_0: DatatypeType;
  var e2#0_0: DatatypeType;
  var ctx#0_0: Map;
  var ##e1#0_0: DatatypeType;
  var ##e2#0_0: DatatypeType;
  var res#Z#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var ##e#0_0: DatatypeType;
  var ##ctx#0_0: Map;
  var e1##0_0: DatatypeType;
  var e2##0_0: DatatypeType;
  var ctx##0_0: Map;

    // AddMethodImpl: IsZeroMulPure_Implies_EvalsToZero_Forall, Impl$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.dfy(232,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc e1#0_0, e2#0_0, ctx#0_0;
        assume $Is(e1#0_0, Tclass.AST.Expr())
           && $Is(e2#0_0, Tclass.AST.Expr())
           && $Is(ctx#0_0, TMap(TSeq(TChar), TInt));
        ##e1#0_0 := e1#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e1#0_0, Tclass.AST.Expr(), $Heap);
        ##e2#0_0 := e2#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e2#0_0, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0_0, e2#0_0);
        assume EliminateMulZero.__default.IsZeroMulPure#canCall(e1#0_0, e2#0_0);
        assume {:id "id386"} EliminateMulZero.__default.IsZeroMulPure(e1#0_0, e2#0_0);
        if (*)
        {
            havoc res#Z#0_0;
            assert {:id "id387"} $Is(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), Tclass.AST.Expr());
            ##e#0_0 := #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0_0, Tclass.AST.Expr(), $Heap);
            ##ctx#0_0 := ctx#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ctx#0_0, TMap(TSeq(TChar), TInt), $Heap);
            assume Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), ctx#0_0);
            assume {:id "id388"} let#0_0#0#0
               == Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), ctx#0_0);
            assume Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), ctx#0_0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0#0#0, 
              Tclass.Utils.Result(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt))));
            assume {:id "id389"} res#Z#0_0 == let#0_0#0#0;
            if (Utils.Result.Success_q(res#Z#0_0))
            {
                assert {:id "id390"} Utils.Result.Success_q(res#Z#0_0);
            }

            assume Interp.__default.InterpExpr#canCall(#AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), ctx#0_0)
               && (var res#0_0 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), ctx#0_0); 
                Utils.Result.Success_q(res#0_0)
                   ==> $IsA#_System.Tuple2($Unbox(Utils.Result.value(res#0_0)): DatatypeType));
            assume {:id "id391"} (var res#0_0 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), ctx#0_0); 
              Utils.Result.Success_q(res#0_0)
                 ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0_0)): DatatypeType, 
                  #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0_0))));
            assume false;
        }

        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.dfy(237,40)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        e1##0_0 := e1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e2##0_0 := e2#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        ctx##0_0 := ctx#0_0;
        call {:id "id392"} Call$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero(e1##0_0, e2##0_0, ctx##0_0);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id393"} (var res#0_0 := Interp.__default.InterpExpr($LS($LS($LZ)), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_0, e2#0_0), ctx#0_0); 
          Utils.Result.Success_q(res#0_0)
             ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0_0)): DatatypeType, 
              #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0_0))));
        assume false;
    }
    else
    {
        assume (forall e1#0_1: DatatypeType, e2#0_1: DatatypeType, ctx#0_1: Map :: 
          { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0_1)), #AST.Expr_Raw.Op(#AST.BinOp.Mul(), e1#0_1, e2#0_1) } 
            { #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0_1)), EliminateMulZero.__default.IsZeroMulPure(e1#0_1, e2#0_1) } 
          $Is(e1#0_1, Tclass.AST.Expr())
               && $Is(e2#0_1, Tclass.AST.Expr())
               && $Is(ctx#0_1, TMap(TSeq(TChar), TInt))
               && EliminateMulZero.__default.IsZeroMulPure(e1#0_1, e2#0_1)
             ==> (var res#0_1 := Interp.__default.InterpExpr($LS($LZ), #AST.Expr_Raw.Op(Lit(#AST.BinOp.Mul()), e1#0_1, e2#0_1), ctx#0_1); 
              Utils.Result.Success_q(res#0_1)
                 ==> _System.Tuple2#Equal($Unbox(Utils.Result.value(res#0_1)): DatatypeType, 
                  #_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(ctx#0_1)))));
    }
}



procedure {:verboseName "EliminateMulZero.InductOp_Fail (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductOp__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductOp_Fail (call)"} Call$$EliminateMulZero.__default.InductOp__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
  requires {:id "id407"} AST.Expr__Raw.Op_q(e#0);
  requires {:id "id408"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
  requires {:id "id409"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
  requires {:id "id410"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
  requires {:id "id411"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, e1#0);
  ensures {:id "id412"} !EliminateMulZero.__default.P__Fail(st#0, e1#0);
  free ensures (forall st1#1: Map, v1#1: int :: 
    { EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
       ==> EliminateMulZero.__default.P__Succ#canCall(st#0, e1#0, st1#1, v1#1)
         && (EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1)
           ==> EliminateMulZero.__default.P__Fail#canCall(st1#1, e2#0)));
  ensures {:id "id413"} (forall st1#1: Map, v1#1: int :: 
    { EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
         && EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1)
       ==> !EliminateMulZero.__default.P__Fail(st1#1, e2#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductOp_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductOp__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
         && $IsA#AST.Expr__Raw(e2#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id414"} AST.Expr__Raw.Op_q(e#0);
  requires {:id "id415"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
  requires {:id "id416"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
  requires {:id "id417"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
  requires {:id "id418"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, e1#0);
  ensures {:id "id419"} !EliminateMulZero.__default.P__Fail(st#0, e1#0);
  free ensures (forall st1#1: Map, v1#1: int :: 
    { EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
       ==> EliminateMulZero.__default.P__Succ#canCall(st#0, e1#0, st1#1, v1#1)
         && (EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1)
           ==> EliminateMulZero.__default.P__Fail#canCall(st1#1, e2#0)));
  ensures {:id "id420"} (forall st1#1: Map, v1#1: int :: 
    { EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
         && EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#1, v1#1)
       ==> !EliminateMulZero.__default.P__Fail(st1#1, e2#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductOp_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductOp__Fail(st#0: Map, 
    e#0: DatatypeType, 
    op#0: DatatypeType, 
    e1#0: DatatypeType, 
    e2#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductOp_Fail, Impl$$EliminateMulZero.__default.InductOp__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.dfy(241,69)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id421"} Call$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "EliminateMulZero.InductOp_Succ (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductOp__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    v1#0: int);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductOp_Succ (call)"} Call$$EliminateMulZero.__default.InductOp__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    v1#0: int);
  // user-defined preconditions
  requires {:id "id433"} AST.Expr__Raw.Op_q(e#0);
  requires {:id "id434"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
  requires {:id "id435"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
  requires {:id "id436"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
  requires {:id "id437"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id438"} EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#0, v1#0);
  requires {:id "id439"} EliminateMulZero.__default.P(st1#0, e2#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id440"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductOp_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductOp__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    v1#0: int)
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id441"} AST.Expr__Raw.Op_q(e#0);
  requires {:id "id442"} AST.BinOp#Equal(AST.Expr__Raw.op(e#0), op#0);
  requires {:id "id443"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe1(e#0), e1#0);
  requires {:id "id444"} AST.Expr__Raw#Equal(AST.Expr__Raw.oe2(e#0), e2#0);
  requires {:id "id445"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id446"} EliminateMulZero.__default.P__Succ(st#0, e1#0, st1#0, v1#0);
  requires {:id "id447"} EliminateMulZero.__default.P(st1#0, e2#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id448"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#2 == v'#2))))))));
  ensures {:id "id449"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id450"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id451"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductOp_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductOp__Succ(st#0: Map, 
    e#0: DatatypeType, 
    op#0: DatatypeType, 
    e1#0: DatatypeType, 
    e2#0: DatatypeType, 
    st1#0: Map, 
    v1#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductOp_Succ, Impl$$EliminateMulZero.__default.InductOp__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.dfy(243,69)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id452"} Call$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero__Forall();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "EliminateMulZero.InductSeq_Fail (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductSeq__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductSeq_Fail (call)"} Call$$EliminateMulZero.__default.InductSeq__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  // user-defined preconditions
  requires {:id "id458"} AST.Expr__Raw.Seq_q(e#0);
  requires {:id "id459"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
  requires {:id "id460"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0);
  ensures {:id "id461"} !EliminateMulZero.__default.Pes__Fail(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductSeq_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductSeq__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id462"} AST.Expr__Raw.Seq_q(e#0);
  requires {:id "id463"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
  requires {:id "id464"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0);
  ensures {:id "id465"} !EliminateMulZero.__default.Pes__Fail(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductSeq_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductSeq__Fail(st#0: Map, e#0: DatatypeType, es#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductSeq_Fail, Impl$$EliminateMulZero.__default.InductSeq__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductSeq_Succ (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductSeq__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductSeq_Succ (call)"} Call$$EliminateMulZero.__default.InductSeq__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id472"} AST.Expr__Raw.Seq_q(e#0);
  requires {:id "id473"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
  requires {:id "id474"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id475"} EliminateMulZero.__default.Pes__Succ(st#0, es#0, st1#0, vs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id476"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductSeq_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductSeq__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id477"} AST.Expr__Raw.Seq_q(e#0);
  requires {:id "id478"} Seq#Equal(AST.Expr__Raw.es(e#0), es#0);
  requires {:id "id479"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id480"} EliminateMulZero.__default.Pes__Succ(st#0, es#0, st1#0, vs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id481"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#2 == v'#2))))))));
  ensures {:id "id482"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id483"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id484"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductSeq_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductSeq__Succ(st#0: Map, e#0: DatatypeType, es#0: Seq, st1#0: Map, vs#0: Seq)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductSeq_Succ, Impl$$EliminateMulZero.__default.InductSeq__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductAssign_Fail (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductAssign__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductAssign_Fail (call)"} Call$$EliminateMulZero.__default.InductAssign__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
  requires {:id "id497"} AST.Expr__Raw.Assign_q(e#0);
  requires {:id "id498"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
  requires {:id "id499"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
  requires {:id "id500"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id501"} EliminateMulZero.__default.Pes(st#0, avals#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, avals#0);
  ensures {:id "id502"} !EliminateMulZero.__default.Pes__Fail(st#0, avals#0);
  free ensures (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.UpdateState__Pre(st1#1, avars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt)) && $Is(vs#1, TSeq(TInt))
       ==> EliminateMulZero.__default.Pes__Succ#canCall(st#0, avals#0, st1#1, vs#1)
         && (EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1)
           ==> EliminateMulZero.__default.UpdateState__Pre#canCall(st1#1, avars#0, vs#1)));
  ensures {:id "id503"} (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.UpdateState__Pre(st1#1, avars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
         && EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1)
       ==> EliminateMulZero.__default.UpdateState__Pre(st1#1, avars#0, vs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductAssign_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductAssign__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id504"} AST.Expr__Raw.Assign_q(e#0);
  requires {:id "id505"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
  requires {:id "id506"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
  requires {:id "id507"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id508"} EliminateMulZero.__default.Pes(st#0, avals#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, avals#0);
  ensures {:id "id509"} !EliminateMulZero.__default.Pes__Fail(st#0, avals#0);
  free ensures (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.UpdateState__Pre(st1#1, avars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt)) && $Is(vs#1, TSeq(TInt))
       ==> EliminateMulZero.__default.Pes__Succ#canCall(st#0, avals#0, st1#1, vs#1)
         && (EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1)
           ==> EliminateMulZero.__default.UpdateState__Pre#canCall(st1#1, avars#0, vs#1)));
  ensures {:id "id510"} (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.UpdateState__Pre(st1#1, avars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
         && EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#1, vs#1)
       ==> EliminateMulZero.__default.UpdateState__Pre(st1#1, avars#0, vs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductAssign_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductAssign__Fail(st#0: Map, e#0: DatatypeType, avars#0: Seq, avals#0: Seq)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductAssign_Fail, Impl$$EliminateMulZero.__default.InductAssign__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductAssign_Succ (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductAssign__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap), 
    st2#0: Map
       where $Is(st2#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st2#0, TMap(TSeq(TChar), TInt), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductAssign_Succ (call)"} Call$$EliminateMulZero.__default.InductAssign__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap), 
    st2#0: Map
       where $Is(st2#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st2#0, TMap(TSeq(TChar), TInt), $Heap));
  // user-defined preconditions
  requires {:id "id522"} AST.Expr__Raw.Assign_q(e#0);
  requires {:id "id523"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
  requires {:id "id524"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
  requires {:id "id525"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id526"} EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#0, vs#0);
  requires {:id "id527"} EliminateMulZero.__default.UpdateState__Pre(st1#0, avars#0, vs#0);
  requires {:id "id528"} Map#Equal(st2#0, EliminateMulZero.__default.AssignState(st1#0, avars#0, vs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero());
  free ensures {:id "id529"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
     && 
    EliminateMulZero.__default.P__Succ(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
             && Utils.Result#Equal(res#0, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(st2#0))))))));
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  free ensures {:id "id530"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     && 
    EliminateMulZero.__default.P(st#0, e#0)
     && (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#1 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#1, res'#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductAssign_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductAssign__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    avars#0: Seq
       where $Is(avars#0, TSeq(TSeq(TChar))) && $IsAlloc(avars#0, TSeq(TSeq(TChar)), $Heap), 
    avals#0: Seq
       where $Is(avals#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(avals#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap), 
    st2#0: Map
       where $Is(st2#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st2#0, TMap(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id531"} AST.Expr__Raw.Assign_q(e#0);
  requires {:id "id532"} Seq#Equal(AST.Expr__Raw.avars(e#0), avars#0);
  requires {:id "id533"} Seq#Equal(AST.Expr__Raw.avals(e#0), avals#0);
  requires {:id "id534"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id535"} EliminateMulZero.__default.Pes__Succ(st#0, avals#0, st1#0, vs#0);
  requires {:id "id536"} EliminateMulZero.__default.UpdateState__Pre(st1#0, avars#0, vs#0);
  requires {:id "id537"} Map#Equal(st2#0, EliminateMulZero.__default.AssignState(st1#0, avars#0, vs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero());
  ensures {:id "id538"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
       || (var e'#2 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#2, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#2, res'#2)
               ==> EliminateMulZero.__default.EqResult(TInt, res#2, res'#2)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)
                   ==> (var ctx1'#4 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#4 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#4 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#4 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): int; 
                          v#4 == v'#4))))))));
  ensures {:id "id539"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
       || (var e'#2 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#2, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#2, res'#2)
               ==> EliminateMulZero.__default.EqResult(TInt, res#2, res'#2)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)
                   ==> (var ctx1'#4 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#4 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#4 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#4 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#4, ctx1#4)))))))));
  ensures {:id "id540"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
       || (var e'#2 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#2, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#2, res'#2)
               ==> EliminateMulZero.__default.EqResult(TInt, res#2, res'#2)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id541"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
       || (var e'#2 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#2, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#2, res'#2)
               ==> EliminateMulZero.__default.EqResult(TInt, res#2, res'#2)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#2), $Box(res'#2)))): DatatypeType)
                   ==> Lit(true)))));
  ensures {:id "id542"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st2#0, EliminateMulZero.__default.Zero())
       || (var e'#2 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#2 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#2, st#0); 
            Utils.Result#Equal(res#2, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(EliminateMulZero.__default.Zero()), $Box(st2#0))))))));
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id543"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#3 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#3, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#3, res'#3)
               ==> EliminateMulZero.__default.EqResult(TInt, res#3, res'#3)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)
                   ==> (var ctx1'#6 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#6 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#6 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#6 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): int; 
                          v#6 == v'#6))))))));
  ensures {:id "id544"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#3 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#3, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#3, res'#3)
               ==> EliminateMulZero.__default.EqResult(TInt, res#3, res'#3)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)
                   ==> (var ctx1'#6 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#6 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#6 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#6 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#6, ctx1#6)))))))));
  ensures {:id "id545"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#3 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#3, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#3, res'#3)
               ==> EliminateMulZero.__default.EqResult(TInt, res#3, res'#3)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id546"} EliminateMulZero.__default.P#canCall(st#0, e#0)
     ==> EliminateMulZero.__default.P(st#0, e#0)
       || (var e'#3 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#3 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#3, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#3, res'#3)
               ==> EliminateMulZero.__default.EqResult(TInt, res#3, res'#3)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#3), $Box(res'#3)))): DatatypeType)
                   ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductAssign_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductAssign__Succ(st#0: Map, 
    e#0: DatatypeType, 
    avars#0: Seq, 
    avals#0: Seq, 
    st1#0: Map, 
    vs#0: Seq, 
    st2#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductAssign_Succ, Impl$$EliminateMulZero.__default.InductAssign__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductBind_Fail (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductBind__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductBind_Fail (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductBind__Fail(st#0: Map, e#0: DatatypeType, bvars#0: Seq, bvals#0: Seq, body#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Map;
  var ##e#0: DatatypeType;
  var ##st#1: Map;
  var ##es#0: Seq;
  var ##st#2: Map;
  var ##es#1: Seq;
  var st1#0: Map;
  var vs#0: Seq;
  var ##st#3: Map;
  var ##es#2: Seq;
  var ##st'#0: Map;
  var ##vs#0: Seq;
  var ##st#4: Map;
  var ##vars#0: Seq;
  var ##argvs#0: Seq;
  var ##st#5: Map;
  var ##st#6: Map;
  var ##vars#1: Seq;
  var ##vals#0: Seq;
  var ##e#1: DatatypeType;


    // AddMethodImpl: InductBind_Fail, CheckWellFormed$$EliminateMulZero.__default.InductBind__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id547"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id548"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id549"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
    assume {:id "id550"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id551"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
    assume {:id "id552"} AST.Expr__Raw.Bind_q(e#0);
    assume {:id "id553"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#0, TMap(TSeq(TChar), TInt), $Heap);
    ##e#0 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#0, Tclass.AST.Expr(), $Heap);
    assume EliminateMulZero.__default.P__Fail#canCall(st#0, e#0);
    assume {:id "id554"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#1, TMap(TSeq(TChar), TInt), $Heap);
    ##es#0 := bvals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#0, TSeq(Tclass.AST.Expr()), $Heap);
    assume EliminateMulZero.__default.Pes#canCall(st#0, bvals#0);
    assume {:id "id555"} EliminateMulZero.__default.Pes(st#0, bvals#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##st#2 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#2, TMap(TSeq(TChar), TInt), $Heap);
    ##es#1 := bvals#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#1, TSeq(Tclass.AST.Expr()), $Heap);
    assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, bvals#0);
    assume {:id "id556"} !EliminateMulZero.__default.Pes__Fail(st#0, bvals#0);
    havoc st1#0;
    havoc vs#0;
    assume $Is(st1#0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap)
       && 
      $Is(vs#0, TSeq(TInt))
       && $IsAlloc(vs#0, TSeq(TInt), $Heap);
    if (*)
    {
        ##st#3 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#3, TMap(TSeq(TChar), TInt), $Heap);
        ##es#2 := bvals#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#2, TSeq(Tclass.AST.Expr()), $Heap);
        ##st'#0 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st'#0, TMap(TSeq(TChar), TInt), $Heap);
        ##vs#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vs#0, TSeq(TInt), $Heap);
        assume EliminateMulZero.__default.Pes__Succ#canCall(st#0, bvals#0, st1#0, vs#0);
        assume {:id "id557"} EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#0, vs#0);
        ##st#4 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4, TMap(TSeq(TChar), TInt), $Heap);
        ##vars#0 := bvars#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#0, TSeq(TSeq(TChar)), $Heap);
        ##argvs#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##argvs#0, TSeq(TInt), $Heap);
        assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#0, bvars#0, vs#0);
        assume {:id "id558"} EliminateMulZero.__default.UpdateState__Pre(st1#0, bvars#0, vs#0);
        ##st#6 := st1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#6, TMap(TSeq(TChar), TInt), $Heap);
        ##vars#1 := bvars#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#1, TSeq(TSeq(TChar)), $Heap);
        ##vals#0 := vs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vals#0, TSeq(TInt), $Heap);
        assert {:id "id559"} {:subsumption 0} EliminateMulZero.__default.UpdateState__Pre(##st#6, ##vars#1, ##vals#0);
        assume EliminateMulZero.__default.UpdateState__Pre(##st#6, ##vars#1, ##vals#0);
        assume EliminateMulZero.__default.BindStartScope#canCall(st1#0, bvars#0, vs#0);
        ##st#5 := EliminateMulZero.__default.BindStartScope(st1#0, bvars#0, vs#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#5, TMap(TSeq(TChar), TInt), $Heap);
        ##e#1 := body#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.P__Fail#canCall(EliminateMulZero.__default.BindStartScope(st1#0, bvars#0, vs#0), body#0);
        assume {:id "id560"} !EliminateMulZero.__default.P__Fail(EliminateMulZero.__default.BindStartScope(st1#0, bvars#0, vs#0), body#0);
    }
    else
    {
        assume {:id "id561"} EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#0, vs#0)
           ==> EliminateMulZero.__default.UpdateState__Pre(st1#0, bvars#0, vs#0)
             && !EliminateMulZero.__default.P__Fail(EliminateMulZero.__default.BindStartScope(st1#0, bvars#0, vs#0), body#0);
    }

    assume {:id "id562"} (forall st1#1: Map, vs#1: Seq :: 
      { EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
        { EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
        { EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
      $Is(st1#1, TMap(TSeq(TChar), TInt))
           && $Is(vs#1, TSeq(TInt))
           && EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
         ==> EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
           && !EliminateMulZero.__default.P__Fail(EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0));
}



procedure {:verboseName "EliminateMulZero.InductBind_Fail (call)"} Call$$EliminateMulZero.__default.InductBind__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
  requires {:id "id563"} AST.Expr__Raw.Bind_q(e#0);
  requires {:id "id564"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
  requires {:id "id565"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
  requires {:id "id566"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
  requires {:id "id567"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id568"} EliminateMulZero.__default.Pes(st#0, bvals#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, bvals#0);
  ensures {:id "id569"} !EliminateMulZero.__default.Pes__Fail(st#0, bvals#0);
  free ensures (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt)) && $Is(vs#1, TSeq(TInt))
       ==> EliminateMulZero.__default.Pes__Succ#canCall(st#0, bvals#0, st1#1, vs#1)
         && (EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
           ==> EliminateMulZero.__default.UpdateState__Pre#canCall(st1#1, bvars#0, vs#1)
             && (EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
               ==> EliminateMulZero.__default.BindStartScope#canCall(st1#1, bvars#0, vs#1)
                 && EliminateMulZero.__default.P__Fail#canCall(EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0))));
  ensures {:id "id570"} (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
         && EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
       ==> EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
         && !EliminateMulZero.__default.P__Fail(EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductBind_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductBind__Fail(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
         && $IsA#AST.Expr__Raw(body#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id571"} AST.Expr__Raw.Bind_q(e#0);
  requires {:id "id572"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
  requires {:id "id573"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
  requires {:id "id574"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
  requires {:id "id575"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id576"} EliminateMulZero.__default.Pes(st#0, bvals#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, bvals#0);
  ensures {:id "id577"} !EliminateMulZero.__default.Pes__Fail(st#0, bvals#0);
  free ensures (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt)) && $Is(vs#1, TSeq(TInt))
       ==> EliminateMulZero.__default.Pes__Succ#canCall(st#0, bvals#0, st1#1, vs#1)
         && (EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
           ==> EliminateMulZero.__default.UpdateState__Pre#canCall(st1#1, bvars#0, vs#1)
             && (EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
               ==> EliminateMulZero.__default.BindStartScope#canCall(st1#1, bvars#0, vs#1)
                 && EliminateMulZero.__default.P__Fail#canCall(EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0))));
  ensures {:id "id578"} (forall st1#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1) } 
    $Is(st1#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
         && EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#1, vs#1)
       ==> EliminateMulZero.__default.UpdateState__Pre(st1#1, bvars#0, vs#1)
         && !EliminateMulZero.__default.P__Fail(EliminateMulZero.__default.BindStartScope(st1#1, bvars#0, vs#1), body#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductBind_Fail (correctness)"} Impl$$EliminateMulZero.__default.InductBind__Fail(st#0: Map, e#0: DatatypeType, bvars#0: Seq, bvals#0: Seq, body#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductBind_Fail, Impl$$EliminateMulZero.__default.InductBind__Fail
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductBind_Succ (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductBind__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    bvarvs#0: Seq
       where $Is(bvarvs#0, TSeq(TInt)) && $IsAlloc(bvarvs#0, TSeq(TInt), $Heap), 
    st2#0: Map
       where $Is(st2#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st2#0, TMap(TSeq(TChar), TInt), $Heap), 
    st3#0: Map
       where $Is(st3#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st3#0, TMap(TSeq(TChar), TInt), $Heap), 
    v#0: int, 
    st4#0: Map
       where $Is(st4#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st4#0, TMap(TSeq(TChar), TInt), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductBind_Succ (call)"} Call$$EliminateMulZero.__default.InductBind__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    bvarvs#0: Seq
       where $Is(bvarvs#0, TSeq(TInt)) && $IsAlloc(bvarvs#0, TSeq(TInt), $Heap), 
    st2#0: Map
       where $Is(st2#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st2#0, TMap(TSeq(TChar), TInt), $Heap), 
    st3#0: Map
       where $Is(st3#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st3#0, TMap(TSeq(TChar), TInt), $Heap), 
    v#0: int, 
    st4#0: Map
       where $Is(st4#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st4#0, TMap(TSeq(TChar), TInt), $Heap));
  // user-defined preconditions
  requires {:id "id593"} AST.Expr__Raw.Bind_q(e#0);
  requires {:id "id594"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
  requires {:id "id595"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
  requires {:id "id596"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
  requires {:id "id597"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id598"} EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#0, bvarvs#0);
  requires {:id "id599"} EliminateMulZero.__default.UpdateState__Pre(st1#0, bvars#0, bvarvs#0);
  requires {:id "id600"} Map#Equal(st2#0, EliminateMulZero.__default.BindStartScope(st1#0, bvars#0, bvarvs#0));
  requires {:id "id601"} EliminateMulZero.__default.P__Succ(st2#0, body#0, st3#0, v#0);
  requires {:id "id602"} Map#Equal(st4#0, EliminateMulZero.__default.BindEndScope(st1#0, st3#0, bvars#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0);
  free ensures {:id "id603"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0)
     && 
    EliminateMulZero.__default.P__Succ(st#0, e#0, st4#0, v#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, st#0); 
        (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, st#0); 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
             && Utils.Result#Equal(res#0, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(st4#0))))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductBind_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductBind__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
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
    st1#0: Map
       where $Is(st1#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st1#0, TMap(TSeq(TChar), TInt), $Heap), 
    bvarvs#0: Seq
       where $Is(bvarvs#0, TSeq(TInt)) && $IsAlloc(bvarvs#0, TSeq(TInt), $Heap), 
    st2#0: Map
       where $Is(st2#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st2#0, TMap(TSeq(TChar), TInt), $Heap), 
    st3#0: Map
       where $Is(st3#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st3#0, TMap(TSeq(TChar), TInt), $Heap), 
    v#0: int, 
    st4#0: Map
       where $Is(st4#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st4#0, TMap(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id604"} AST.Expr__Raw.Bind_q(e#0);
  requires {:id "id605"} Seq#Equal(AST.Expr__Raw.bvars(e#0), bvars#0);
  requires {:id "id606"} Seq#Equal(AST.Expr__Raw.bvals(e#0), bvals#0);
  requires {:id "id607"} AST.Expr__Raw#Equal(AST.Expr__Raw.body(e#0), body#0);
  requires {:id "id608"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  requires {:id "id609"} EliminateMulZero.__default.Pes__Succ(st#0, bvals#0, st1#0, bvarvs#0);
  requires {:id "id610"} EliminateMulZero.__default.UpdateState__Pre(st1#0, bvars#0, bvarvs#0);
  requires {:id "id611"} Map#Equal(st2#0, EliminateMulZero.__default.BindStartScope(st1#0, bvars#0, bvarvs#0));
  requires {:id "id612"} EliminateMulZero.__default.P__Succ(st2#0, body#0, st3#0, v#0);
  requires {:id "id613"} Map#Equal(st4#0, EliminateMulZero.__default.BindEndScope(st1#0, st3#0, bvars#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0);
  ensures {:id "id614"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0)
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st4#0, v#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          v#3 == v'#2))))))));
  ensures {:id "id615"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0)
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st4#0, v#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): int; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id616"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0)
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st4#0, v#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id617"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0)
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st4#0, v#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TInt, res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  ensures {:id "id618"} EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st4#0, v#0)
     ==> EliminateMulZero.__default.P__Succ(st#0, e#0, st4#0, v#0)
       || (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
        (var res#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, st#0); 
          (var res'#1 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#1, st#0); 
            Utils.Result#Equal(res#1, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(st4#0))))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductBind_Succ (correctness)"} Impl$$EliminateMulZero.__default.InductBind__Succ(st#0: Map, 
    e#0: DatatypeType, 
    bvars#0: Seq, 
    bvals#0: Seq, 
    body#0: DatatypeType, 
    st1#0: Map, 
    bvarvs#0: Seq, 
    st2#0: Map, 
    st3#0: Map, 
    v#0: int, 
    st4#0: Map)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductBind_Succ, Impl$$EliminateMulZero.__default.InductBind__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductExprs_Nil (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductExprs__Nil(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductExprs_Nil (call)"} Call$$EliminateMulZero.__default.InductExprs__Nil(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, Lit(Seq#Empty(): Seq))
     && (!EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
       ==> EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS()));
  free ensures {:id "id622"} !EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
     ==> EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
       && 
      EliminateMulZero.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
       && (var es'#0 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LZ), Lit(Seq#Empty(): Seq))); 
        (var res#0 := Interp.__default.InterpExprs($LS($LZ), Lit(Seq#Empty(): Seq), st#0); 
          (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
            EliminateMulZero.__default.EqResult(TSeq(TInt), res#0, res'#0)
               && Utils.Result#Equal(res#0, 
                #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(EliminateMulZero.__default.NilVS()), $Box(st#0))))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductExprs_Nil (correctness)"} Impl$$EliminateMulZero.__default.InductExprs__Nil(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes__Fail#canCall(st#0, Lit(Seq#Empty(): Seq))
     && (!EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
       ==> EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS()));
  ensures {:id "id623"} !EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
     ==> 
    EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
     ==> EliminateMulZero.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
       || (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Lit(Seq#Empty(): Seq))); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Lit(Seq#Empty(): Seq), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                          v#2 == v'#2))))))));
  ensures {:id "id624"} !EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
     ==> 
    EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
     ==> EliminateMulZero.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
       || (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Lit(Seq#Empty(): Seq))); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Lit(Seq#Empty(): Seq), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id625"} !EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
     ==> 
    EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
     ==> EliminateMulZero.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
       || (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Lit(Seq#Empty(): Seq))); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Lit(Seq#Empty(): Seq), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id626"} !EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
     ==> 
    EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
     ==> EliminateMulZero.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
       || (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Lit(Seq#Empty(): Seq))); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Lit(Seq#Empty(): Seq), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  ensures {:id "id627"} !EliminateMulZero.__default.Pes__Fail(st#0, Lit(Seq#Empty(): Seq))
     ==> 
    EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
     ==> EliminateMulZero.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS())
       || (var es'#1 := Lit(EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Lit(Seq#Empty(): Seq))); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Lit(Seq#Empty(): Seq), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            Utils.Result#Equal(res#1, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(EliminateMulZero.__default.NilVS()), $Box(st#0))))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductExprs_Nil (correctness)"} Impl$$EliminateMulZero.__default.InductExprs__Nil(st#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductExprs_Nil, Impl$$EliminateMulZero.__default.InductExprs__Nil
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.InductExprs_Cons (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.InductExprs__Cons(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.InductExprs_Cons (call)"} Call$$EliminateMulZero.__default.InductExprs__Cons(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, e#0)
     && (EliminateMulZero.__default.P__Fail(st#0, e#0)
       ==> EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)));
  free ensures {:id "id643"} EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
       && 
      EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
       && (var es'#0 := EliminateMulZero.__default.Eliminate__Es($LS($LZ), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)); 
        (var res#0 := Interp.__default.InterpExprs($LS($LZ), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), st#0); 
          (var res'#0 := Interp.__default.InterpExprs($LS($LZ), es'#0, st#0); 
            EliminateMulZero.__default.EqResult(TSeq(TInt), res#0, res'#0)
               && Utils.Result.Failure_q(res#0))));
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, e#0)
     && (!EliminateMulZero.__default.P__Fail(st#0, e#0)
       ==> (forall st1#1: Map, v#1: int :: 
        { EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1) } 
        $Is(st1#1, TMap(TSeq(TChar), TInt))
           ==> EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st1#1, v#1)
             && (EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1)
               ==> EliminateMulZero.__default.Pes__Fail#canCall(st1#1, es#0)
                 && (EliminateMulZero.__default.Pes__Fail(st1#1, es#0)
                   ==> EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))))));
  ensures {:id "id644"} !EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> (forall st1#1: Map, v#1: int :: 
      { EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1) } 
      $Is(st1#1, TMap(TSeq(TChar), TInt))
         ==> 
        EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1)
           && EliminateMulZero.__default.Pes__Fail(st1#1, es#0)
         ==> EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)));
  free ensures (forall st1#3: Map, v#3: int, st2#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.AppendValue(v#3, vs#1), EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1), EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3) } 
    $Is(st1#3, TMap(TSeq(TChar), TInt))
         && $Is(st2#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
       ==> EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st1#3, v#3)
         && (EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3)
           ==> EliminateMulZero.__default.Pes__Succ#canCall(st1#3, es#0, st2#1, vs#1)
             && (EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1)
               ==> EliminateMulZero.__default.AppendValue#canCall(v#3, vs#1)
                 && EliminateMulZero.__default.Pes__Succ#canCall(st#0, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), 
                  st2#1, 
                  EliminateMulZero.__default.AppendValue(v#3, vs#1)))));
  ensures {:id "id645"} (forall st1#3: Map, v#3: int, st2#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.AppendValue(v#3, vs#1), EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1), EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3) } 
    $Is(st1#3, TMap(TSeq(TChar), TInt))
         && $Is(st2#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
       ==> 
      EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3)
         && EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1)
       ==> EliminateMulZero.__default.Pes__Succ(st#0, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), 
        st2#1, 
        EliminateMulZero.__default.AppendValue(v#3, vs#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.InductExprs_Cons (correctness)"} Impl$$EliminateMulZero.__default.InductExprs__Cons(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, e#0)
     && (EliminateMulZero.__default.P__Fail(st#0, e#0)
       ==> EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)));
  ensures {:id "id646"} EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> 
    EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
     ==> EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
       || (var es'#1 := EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#6 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                          v#6 == v'#2))))))));
  ensures {:id "id647"} EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> 
    EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
     ==> EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
       || (var es'#1 := EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                    (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                      (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Map; 
                        (var v#6 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)): DatatypeType)): Seq; 
                          Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id648"} EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> 
    EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
     ==> EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
       || (var es'#1 := EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> 
                  !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(false)))));
  ensures {:id "id649"} EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> 
    EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
     ==> EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
       || (var es'#1 := EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            EliminateMulZero.__default.EqResult#canCall(TSeq(TInt), res#1, res'#1)
               ==> EliminateMulZero.__default.EqResult(TSeq(TInt), res#1, res'#1)
                 || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#1), $Box(res'#1)))): DatatypeType)
                   ==> Lit(true)))));
  ensures {:id "id650"} EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> 
    EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
     ==> EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))
       || (var es'#1 := EliminateMulZero.__default.Eliminate__Es($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)); 
        (var res#1 := Interp.__default.InterpExprs($LS($LS($LZ)), Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), st#0); 
          (var res'#1 := Interp.__default.InterpExprs($LS($LS($LZ)), es'#1, st#0); 
            Utils.Result.Failure_q(res#1))));
  free ensures EliminateMulZero.__default.P__Fail#canCall(st#0, e#0)
     && (!EliminateMulZero.__default.P__Fail(st#0, e#0)
       ==> (forall st1#1: Map, v#1: int :: 
        { EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1) } 
        $Is(st1#1, TMap(TSeq(TChar), TInt))
           ==> EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st1#1, v#1)
             && (EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1)
               ==> EliminateMulZero.__default.Pes__Fail#canCall(st1#1, es#0)
                 && (EliminateMulZero.__default.Pes__Fail(st1#1, es#0)
                   ==> EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0))))));
  ensures {:id "id651"} !EliminateMulZero.__default.P__Fail(st#0, e#0)
     ==> (forall st1#1: Map, v#1: int :: 
      { EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1) } 
      $Is(st1#1, TMap(TSeq(TChar), TInt))
         ==> 
        EliminateMulZero.__default.P__Succ(st#0, e#0, st1#1, v#1)
           && EliminateMulZero.__default.Pes__Fail(st1#1, es#0)
         ==> EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0)));
  free ensures (forall st1#3: Map, v#3: int, st2#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.AppendValue(v#3, vs#1), EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1), EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3) } 
    $Is(st1#3, TMap(TSeq(TChar), TInt))
         && $Is(st2#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
       ==> EliminateMulZero.__default.P__Succ#canCall(st#0, e#0, st1#3, v#3)
         && (EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3)
           ==> EliminateMulZero.__default.Pes__Succ#canCall(st1#3, es#0, st2#1, vs#1)
             && (EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1)
               ==> EliminateMulZero.__default.AppendValue#canCall(v#3, vs#1)
                 && EliminateMulZero.__default.Pes__Succ#canCall(st#0, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), 
                  st2#1, 
                  EliminateMulZero.__default.AppendValue(v#3, vs#1)))));
  ensures {:id "id652"} (forall st1#3: Map, v#3: int, st2#1: Map, vs#1: Seq :: 
    { EliminateMulZero.__default.AppendValue(v#3, vs#1), EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1) } 
      { EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1), EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3) } 
    $Is(st1#3, TMap(TSeq(TChar), TInt))
         && $Is(st2#1, TMap(TSeq(TChar), TInt))
         && $Is(vs#1, TSeq(TInt))
       ==> 
      EliminateMulZero.__default.P__Succ(st#0, e#0, st1#3, v#3)
         && EliminateMulZero.__default.Pes__Succ(st1#3, es#0, st2#1, vs#1)
       ==> EliminateMulZero.__default.Pes__Succ(st#0, 
        Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#0)), es#0), 
        st2#1, 
        EliminateMulZero.__default.AppendValue(v#3, vs#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.InductExprs_Cons (correctness)"} Impl$$EliminateMulZero.__default.InductExprs__Cons(st#0: Map, e#0: DatatypeType, es#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InductExprs_Cons, Impl$$EliminateMulZero.__default.InductExprs__Cons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "EliminateMulZero.Eliminate_Eq (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.Eliminate__Eq(e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.Eliminate_Eq (call)"} Call$$EliminateMulZero.__default.Eliminate__Eq(e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Eliminate#canCall(e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      Interp.__default.InterpExpr#canCall(e#0, ctx#0)
         && (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, ctx#0); 
          Interp.__default.InterpExpr#canCall(e'#0, ctx#0)
             && (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, ctx#0); 
              EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0))));
  free ensures {:id "id660"} (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
    (var res#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, ctx#0); 
      (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, ctx#0); 
        EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0)
           && 
          EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
           && (if Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
             then (if Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               then (var ctx1'#1 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                (var v'#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                  (var ctx1#1 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                    (var v#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                      v#1 == v'#1 && Map#Equal(ctx1'#1, ctx1#1)))))
               else false)
             else true))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.Eliminate_Eq (correctness)"} Impl$$EliminateMulZero.__default.Eliminate__Eq(e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Eliminate#canCall(e#0)
     && (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LZ), e#0); 
      Interp.__default.InterpExpr#canCall(e#0, ctx#0)
         && (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, ctx#0); 
          Interp.__default.InterpExpr#canCall(e'#0, ctx#0)
             && (var res'#0 := Interp.__default.InterpExpr($LS($LZ), e'#0, ctx#0); 
              EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0))));
  ensures {:id "id661"} (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
    (var res#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, ctx#0); 
      (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, ctx#0); 
        EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0)
           ==> EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
             || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> 
              Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                  (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                    (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                      v#2 == v'#2))))))));
  ensures {:id "id662"} (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
    (var res#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, ctx#0); 
      (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, ctx#0); 
        EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0)
           ==> EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
             || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> 
              Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> (var ctx1'#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                (var v'#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                  (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): Map; 
                    (var v#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)): DatatypeType)): int; 
                      Map#Equal(ctx1'#2, ctx1#2)))))))));
  ensures {:id "id663"} (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
    (var res#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, ctx#0); 
      (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, ctx#0); 
        EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0)
           ==> EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
             || (Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> 
              !Utils.Result.Success_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> Lit(false)))));
  ensures {:id "id664"} (var e'#0 := EliminateMulZero.__default.Eliminate($LS($LS($LZ)), e#0); 
    (var res#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e#0, ctx#0); 
      (var res'#0 := Interp.__default.InterpExpr($LS($LS($LZ)), e'#0, ctx#0); 
        EliminateMulZero.__default.EqResult#canCall(TInt, res#0, res'#0)
           ==> EliminateMulZero.__default.EqResult(TInt, res#0, res'#0)
             || (!Utils.Result.Success_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(res#0), $Box(res'#0)))): DatatypeType)
               ==> Lit(true)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.Eliminate_Eq (correctness)"} Impl$$EliminateMulZero.__default.Eliminate__Eq(e#0: DatatypeType, ctx#0: Map) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var st##0: Map;
  var e##0: DatatypeType;

    // AddMethodImpl: Eliminate_Eq, Impl$$EliminateMulZero.__default.Eliminate__Eq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#AST.Expr__Raw(e#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#e0#0: DatatypeType, $ih#ctx0#0: Map :: 
      { Interp.__default.InterpExpr($LS($LZ), EliminateMulZero.__default.Eliminate($LS($LZ), $ih#e0#0), $ih#ctx0#0) } 
      $Is($ih#e0#0, Tclass.AST.Expr())
           && $Is($ih#ctx0#0, TMap(TSeq(TChar), TInt))
           && Lit(true)
           && (DtRank($ih#e0#0) < DtRank(e#0)
             || (DtRank($ih#e0#0) == DtRank(e#0)
               && 
              Set#Subset(Map#Domain($ih#ctx0#0), Map#Domain(ctx#0))
               && !Set#Subset(Map#Domain(ctx#0), Map#Domain($ih#ctx0#0))))
         ==> (var e'#1 := EliminateMulZero.__default.Eliminate($LS($LZ), $ih#e0#0); 
          (var res#1 := Interp.__default.InterpExpr($LS($LZ), $ih#e0#0, $ih#ctx0#0); 
            (var res'#1 := Interp.__default.InterpExpr($LS($LZ), e'#1, $ih#ctx0#0); 
              EliminateMulZero.__default.EqResult(TInt, res#1, res'#1)))));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/EliminateMulZero.dfy(264,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    st##0 := ctx#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    e##0 := e#0;
    call {:id "id665"} Call$$EliminateMulZero.__default.P__Satisfied(st##0, e##0);
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for EliminateMulZero._default.Pes_Step
function EliminateMulZero.__default.Pes__Step(st#0: Map, es#0: Seq) : DatatypeType
uses {
// consequence axiom for EliminateMulZero.__default.Pes__Step
axiom 4 <= $FunctionContextHeight
   ==> (forall st#0: Map, es#0: Seq :: 
    { EliminateMulZero.__default.Pes__Step(st#0, es#0) } 
    EliminateMulZero.__default.Pes__Step#canCall(st#0, es#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(st#0, TMap(TSeq(TChar), TInt))
           && $Is(es#0, TSeq(Tclass.AST.Expr()))
           && 
          EliminateMulZero.__default.Pes(st#0, es#0)
           && !EliminateMulZero.__default.Pes__Fail(st#0, es#0))
       ==> EliminateMulZero.__default.Pes__Succ(st#0, 
          es#0, 
          $Unbox(_System.Tuple2._0(EliminateMulZero.__default.Pes__Step(st#0, es#0))): Map, 
          $Unbox(_System.Tuple2._1(EliminateMulZero.__default.Pes__Step(st#0, es#0))): Seq)
         && $Is(EliminateMulZero.__default.Pes__Step(st#0, es#0), 
          Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TSeq(TInt))));
}

function EliminateMulZero.__default.Pes__Step#canCall(st#0: Map, es#0: Seq) : bool;

function EliminateMulZero.__default.Pes__Step#requires(Map, Seq) : bool;

// #requires axiom for EliminateMulZero.__default.Pes__Step
axiom (forall st#0: Map, es#0: Seq :: 
  { EliminateMulZero.__default.Pes__Step#requires(st#0, es#0) } 
  $Is(st#0, TMap(TSeq(TChar), TInt)) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> EliminateMulZero.__default.Pes__Step#requires(st#0, es#0)
       == (EliminateMulZero.__default.Pes(st#0, es#0)
         && !EliminateMulZero.__default.Pes__Fail(st#0, es#0)));

procedure {:verboseName "EliminateMulZero.Pes_Step (well-formedness)"} CheckWellformed$$EliminateMulZero.__default.Pes__Step(st#0: Map where $Is(st#0, TMap(TSeq(TChar), TInt)), 
    es#0: Seq where $Is(es#0, TSeq(Tclass.AST.Expr())))
   returns (res#0: DatatypeType);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Fail_Sound (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.Pes__Fail__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Fail_Sound (call)"} Call$$EliminateMulZero.__default.Pes__Fail__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  // user-defined preconditions
  requires {:id "id671"} EliminateMulZero.__default.Pes__Fail(st#0, es#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id672"} EliminateMulZero.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Succ_Sound (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.Pes__Succ__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st'#0: Map
       where $Is(st'#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st'#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Succ_Sound (call)"} Call$$EliminateMulZero.__default.Pes__Succ__Sound(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap), 
    st'#0: Map
       where $Is(st'#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st'#0, TMap(TSeq(TChar), TInt), $Heap), 
    vs#0: Seq where $Is(vs#0, TSeq(TInt)) && $IsAlloc(vs#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id675"} EliminateMulZero.__default.Pes__Succ(st#0, es#0, st'#0, vs#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id676"} EliminateMulZero.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.P_Satisfied (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.P__Satisfied(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.P_Satisfied (call)"} Call$$EliminateMulZero.__default.P__Satisfied(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id678"} EliminateMulZero.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.P_Satisfied (correctness)"} Impl$$EliminateMulZero.__default.P__Satisfied(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id679"} $_reverifyPost ==> EliminateMulZero.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.P_Satisfied (correctness)"} Impl$$EliminateMulZero.__default.P__Satisfied(st#0: Map, e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#1: Map;
  var ##e#1: DatatypeType;
  var st##0_0: Map;
  var e##0_0: DatatypeType;
  var st##1_0: Map;
  var e##1_0: DatatypeType;

    // AddMethodImpl: P_Satisfied, Impl$$EliminateMulZero.__default.P__Satisfied
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](197,5)
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#1, TMap(TSeq(TChar), TInt), $Heap);
    ##e#1 := e#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##e#1, Tclass.AST.Expr(), $Heap);
    assume EliminateMulZero.__default.P__Fail#canCall(st#0, e#0);
    assume EliminateMulZero.__default.P__Fail#canCall(st#0, e#0);
    if (EliminateMulZero.__default.P__Fail(st#0, e#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](198,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0;
        call {:id "id680"} Call$$EliminateMulZero.__default.P__Fail__Sound(st##0_0, e##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](201,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_0 := e#0;
        assume {:id "id681"} 0 <= LitInt(3) || DtRank(e##1_0) < DtRank(e#0) || LitInt(2) == LitInt(3);
        assume {:id "id682"} DtRank(e##1_0) < DtRank(e#0)
           || (DtRank(e##1_0) == DtRank(e#0) && LitInt(2) < LitInt(3));
        call {:id "id683"} Call$$EliminateMulZero.__default.P__Satisfied__Succ(st##1_0, e##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "EliminateMulZero.P_Satisfied_Succ (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.P__Satisfied__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.P_Satisfied_Succ (call)"} Call$$EliminateMulZero.__default.P__Satisfied__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0));
  // user-defined preconditions
  requires {:id "id686"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id687"} EliminateMulZero.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.P_Satisfied_Succ (correctness)"} Impl$$EliminateMulZero.__default.P__Satisfied__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id688"} !EliminateMulZero.__default.P__Fail(st#0, e#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.P#canCall(st#0, e#0);
  ensures {:id "id689"} $_reverifyPost ==> EliminateMulZero.__default.P(st#0, e#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.P_Satisfied_Succ (correctness)"} Impl$$EliminateMulZero.__default.P__Satisfied__Succ(st#0: Map, e#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#13#0_0: Seq;
  var es#0_0: Seq;
  var let#0_0#0#0: Seq;
  var st##0_0: Map;
  var es##0_0: Seq;
  var st##0_0_0: Map;
  var e##0_0_0: DatatypeType;
  var es##0_0_0: Seq;
  var ##st#0_0: Map;
  var ##es#0_0: Seq;
  var ##st#0_1: Map;
  var ##es#0_1: Seq;
  var st1#0_0: Map;
  var vs#0_0: Seq;
  var let#0_1#0#0: DatatypeType;
  var ##st#0_2: Map;
  var ##es#0_2: Seq;
  var st##0_1: Map;
  var e##0_0: DatatypeType;
  var es##0_1: Seq;
  var st1##0_0: Map;
  var vs##0_0: Seq;
  var _mcc#10#1_0: DatatypeType;
  var _mcc#11#1_0: DatatypeType;
  var _mcc#12#1_0: DatatypeType;
  var e2#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var e1#1_0: DatatypeType;
  var let#1_1#0#0: DatatypeType;
  var op#1_0: DatatypeType;
  var let#1_2#0#0: DatatypeType;
  var st##1_0: Map;
  var e##1_0: DatatypeType;
  var st##1_0_0: Map;
  var e##1_0_0: DatatypeType;
  var op##1_0_0: DatatypeType;
  var e1##1_0_0: DatatypeType;
  var e2##1_0_0: DatatypeType;
  var ##st#1_0: Map;
  var ##e#1_0: DatatypeType;
  var ##st#1_1: Map;
  var ##e#1_1: DatatypeType;
  var st1#1_0: Map;
  var v1#1_0: int;
  var let#1_3#0#0: DatatypeType;
  var ##st#1_2: Map;
  var ##e#1_2: DatatypeType;
  var st##1_1: Map;
  var e##1_1: DatatypeType;
  var st##1_1_0: Map;
  var e##1_1_0: DatatypeType;
  var op##1_1_0: DatatypeType;
  var e1##1_1_0: DatatypeType;
  var e2##1_1_0: DatatypeType;
  var ##st#1_3: Map;
  var ##e#1_3: DatatypeType;
  var ##st#1_4: Map;
  var ##e#1_4: DatatypeType;
  var st2#1_0: Map;
  var v2#1_0: int;
  var let#1_4#0#0: DatatypeType;
  var ##st#1_5: Map;
  var ##e#1_5: DatatypeType;
  var st##1_2: Map;
  var e##1_2: DatatypeType;
  var op##1_0: DatatypeType;
  var e1##1_0: DatatypeType;
  var e2##1_0: DatatypeType;
  var st1##1_0: Map;
  var v1##1_0: int;
  var _mcc#7#2_0: DatatypeType;
  var _mcc#8#2_0: DatatypeType;
  var _mcc#9#2_0: DatatypeType;
  var els#2_0: DatatypeType;
  var let#2_0#0#0: DatatypeType;
  var thn#2_0: DatatypeType;
  var let#2_1#0#0: DatatypeType;
  var cond#2_0: DatatypeType;
  var let#2_2#0#0: DatatypeType;
  var st##2_0: Map;
  var e##2_0: DatatypeType;
  var st##2_1: Map;
  var e##2_1: DatatypeType;
  var cond##2_0: DatatypeType;
  var thn##2_0: DatatypeType;
  var els##2_0: DatatypeType;
  var ##st#2_0: Map;
  var ##e#2_0: DatatypeType;
  var st_cond#2_0: Map;
  var condv#2_0: int;
  var let#2_3#0#0: DatatypeType;
  var ##st#2_1: Map;
  var ##e#2_1: DatatypeType;
  var st##2_2: Map;
  var e##2_2: DatatypeType;
  var st##2_3: Map;
  var e##2_3: DatatypeType;
  var st##2_4: Map;
  var e##2_4: DatatypeType;
  var cond##2_1: DatatypeType;
  var thn##2_1: DatatypeType;
  var els##2_1: DatatypeType;
  var st_cond##2_0: Map;
  var condv##2_0: int;
  var _mcc#5#3_0: Seq;
  var _mcc#6#3_0: Seq;
  var avals#3_0: Seq;
  var let#3_0#0#0: Seq;
  var avars#3_0: Seq;
  var let#3_1#0#0: Seq;
  var st##3_0: Map;
  var es##3_0: Seq;
  var st##3_0_0: Map;
  var e##3_0_0: DatatypeType;
  var avars##3_0_0: Seq;
  var avals##3_0_0: Seq;
  var ##st#3_0: Map;
  var ##es#3_0: Seq;
  var ##st#3_1: Map;
  var ##es#3_1: Seq;
  var st1#3_0: Map;
  var vs#3_0: Seq;
  var let#3_2#0#0: DatatypeType;
  var ##st#3_2: Map;
  var ##es#3_2: Seq;
  var st##3_1_0: Map;
  var e##3_1_0: DatatypeType;
  var avars##3_1_0: Seq;
  var avals##3_1_0: Seq;
  var ##st#3_3: Map;
  var ##vars#3_0: Seq;
  var ##argvs#3_0: Seq;
  var ##st#3_4: Map;
  var ##vars#3_1: Seq;
  var ##argvs#3_1: Seq;
  var st2#3_0: Map
     where $Is(st2#3_0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(st2#3_0, TMap(TSeq(TChar), TInt), $Heap);
  var ##st#3_5: Map;
  var ##vars#3_2: Seq;
  var ##vals#3_0: Seq;
  var st##3_1: Map;
  var e##3_0: DatatypeType;
  var avars##3_0: Seq;
  var avals##3_0: Seq;
  var st1##3_0: Map;
  var vs##3_0: Seq;
  var st2##3_0: Map;
  var _mcc#2#4_0: Seq;
  var _mcc#3#4_0: Seq;
  var _mcc#4#4_0: DatatypeType;
  var body#4_0: DatatypeType;
  var let#4_0#0#0: DatatypeType;
  var bvals#4_0: Seq;
  var let#4_1#0#0: Seq;
  var bvars#4_0: Seq;
  var let#4_2#0#0: Seq;
  var st##4_0: Map;
  var es##4_0: Seq;
  var st##4_0_0: Map;
  var e##4_0_0: DatatypeType;
  var bvars##4_0_0: Seq;
  var bvals##4_0_0: Seq;
  var body##4_0_0: DatatypeType;
  var ##st#4_0: Map;
  var ##es#4_0: Seq;
  var ##st#4_1: Map;
  var ##es#4_1: Seq;
  var st1#4_0: Map;
  var bvarvs#4_0: Seq;
  var let#4_3#0#0: DatatypeType;
  var ##st#4_2: Map;
  var ##es#4_2: Seq;
  var st##4_1_0: Map;
  var e##4_1_0: DatatypeType;
  var bvars##4_1_0: Seq;
  var bvals##4_1_0: Seq;
  var body##4_1_0: DatatypeType;
  var ##st#4_3: Map;
  var ##vars#4_0: Seq;
  var ##argvs#4_0: Seq;
  var ##st#4_4: Map;
  var ##vars#4_1: Seq;
  var ##argvs#4_1: Seq;
  var st2#4_0: Map
     where $Is(st2#4_0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(st2#4_0, TMap(TSeq(TChar), TInt), $Heap);
  var ##st#4_5: Map;
  var ##vars#4_2: Seq;
  var ##vals#4_0: Seq;
  var st##4_1: Map;
  var e##4_0: DatatypeType;
  var st##4_2_0: Map;
  var e##4_2_0: DatatypeType;
  var bvars##4_2_0: Seq;
  var bvals##4_2_0: Seq;
  var body##4_2_0: DatatypeType;
  var ##st#4_6: Map;
  var ##e#4_0: DatatypeType;
  var ##st#4_7: Map;
  var ##e#4_1: DatatypeType;
  var st3#4_0: Map;
  var v#4_0: int;
  var let#4_4#0#0: DatatypeType;
  var ##st#4_8: Map;
  var ##e#4_2: DatatypeType;
  var st4#4_0: Map
     where $Is(st4#4_0, TMap(TSeq(TChar), TInt))
       && $IsAlloc(st4#4_0, TMap(TSeq(TChar), TInt), $Heap);
  var ##st0#4_0: Map;
  var ##st#4_9: Map;
  var ##vars#4_3: Seq;
  var st##4_2: Map;
  var e##4_1: DatatypeType;
  var bvars##4_0: Seq;
  var bvals##4_0: Seq;
  var body##4_0: DatatypeType;
  var st1##4_0: Map;
  var bvarvs##4_0: Seq;
  var st2##4_0: Map;
  var st3##4_0: Map;
  var v##4_0: int;
  var st4##4_0: Map;
  var st##4_3: Map;
  var e##4_2: DatatypeType;
  var st'##4_0: Map;
  var v##4_1: int;
  var _mcc#1#5_0: int;
  var st##5_0: Map;
  var e##5_0: DatatypeType;
  var _mcc#0#6_0: Seq;
  var st##6_0: Map;
  var e##6_0: DatatypeType;

    // AddMethodImpl: P_Satisfied_Succ, Impl$$EliminateMulZero.__default.P__Satisfied__Succ
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
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](212,18)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##6_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##6_0 := e#0;
        call {:id "id859"} Call$$EliminateMulZero.__default.InductVar(st##6_0, e##6_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Literal(_mcc#1#5_0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](215,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##5_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##5_0 := e#0;
        call {:id "id858"} Call$$EliminateMulZero.__default.InductLiteral(st##5_0, e##5_0);
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
        assume {:id "id809"} let#4_0#0#0 == _mcc#4#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_0#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id810"} body#4_0 == let#4_0#0#0;
        havoc bvals#4_0;
        assume $Is(bvals#4_0, TSeq(Tclass.AST.Expr__Raw()))
           && $IsAlloc(bvals#4_0, TSeq(Tclass.AST.Expr__Raw()), $Heap);
        assume {:id "id811"} let#4_1#0#0 == _mcc#3#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_1#0#0, TSeq(Tclass.AST.Expr__Raw()));
        assume {:id "id812"} bvals#4_0 == let#4_1#0#0;
        havoc bvars#4_0;
        assume $Is(bvars#4_0, TSeq(TSeq(TChar)))
           && $IsAlloc(bvars#4_0, TSeq(TSeq(TChar)), $Heap);
        assume {:id "id813"} let#4_2#0#0 == _mcc#2#4_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_2#0#0, TSeq(TSeq(TChar)));
        assume {:id "id814"} bvars#4_0 == let#4_2#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](267,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##4_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id815"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        es##4_0 := bvals#4_0;
        assume {:id "id816"} 0 <= LitInt(2) || Seq#Rank(es##4_0) < DtRank(e#0) || LitInt(1) == LitInt(2);
        assume {:id "id817"} Seq#Rank(es##4_0) < DtRank(e#0);
        call {:id "id818"} Call$$EliminateMulZero.__default.Pes__Satisfied(st##4_0, es##4_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](268,57)
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
            assume {:id "id819"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            bvals##4_0_0 := bvals#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assume {:id "id820"} $Is(body#4_0, Tclass.AST.Expr());
            body##4_0_0 := body#4_0;
            call {:id "id821"} Call$$EliminateMulZero.__default.InductBind__Fail(st##4_0_0, e##4_0_0, bvars##4_0_0, bvals##4_0_0, body##4_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](268,9)
            ##st#4_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#4_0, TMap(TSeq(TChar), TInt), $Heap);
            assume {:id "id822"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            ##es#4_0 := bvals#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#4_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, bvals#4_0);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, bvals#4_0);
            assume {:id "id823"} !EliminateMulZero.__default.Pes__Fail(st#0, bvals#4_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](268,9)
        ##st#4_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4_1, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id824"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        ##es#4_1 := bvals#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#4_1, TSeq(Tclass.AST.Expr()), $Heap);
        assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, bvals#4_0);
        assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, bvals#4_0);
        assume {:id "id825"} !EliminateMulZero.__default.Pes__Fail(st#0, bvals#4_0);
        havoc st1#4_0;
        assume $Is(st1#4_0, TMap(TSeq(TChar), TInt))
           && $IsAlloc(st1#4_0, TMap(TSeq(TChar), TInt), $Heap);
        havoc bvarvs#4_0;
        assume $Is(bvarvs#4_0, TSeq(TInt)) && $IsAlloc(bvarvs#4_0, TSeq(TInt), $Heap);
        ##st#4_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4_2, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id826"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        ##es#4_2 := bvals#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#4_2, TSeq(Tclass.AST.Expr()), $Heap);
        assume {:id "id827"} {:subsumption 0} EliminateMulZero.__default.Pes(##st#4_2, ##es#4_2);
        assume {:id "id828"} {:subsumption 0} !EliminateMulZero.__default.Pes__Fail(##st#4_2, ##es#4_2);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, bvals#4_0);
        assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.Pes__Step(st#0, bvals#4_0));
        assume {:id "id829"} let#4_3#0#0 == EliminateMulZero.__default.Pes__Step(st#0, bvals#4_0);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, bvals#4_0);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, bvals#4_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_3#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TSeq(TInt)));
        assume _System.Tuple2.___hMake2_q(let#4_3#0#0);
        assume {:id "id830"} #_System._tuple#2._#Make2($Box(st1#4_0), $Box(bvarvs#4_0)) == let#4_3#0#0;
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](271,72)
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
            assume {:id "id831"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            bvals##4_1_0 := bvals#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assume {:id "id832"} $Is(body#4_0, Tclass.AST.Expr());
            body##4_1_0 := body#4_0;
            call {:id "id833"} Call$$EliminateMulZero.__default.InductBind__Fail(st##4_1_0, e##4_1_0, bvars##4_1_0, bvals##4_1_0, body##4_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](271,9)
            ##st#4_3 := st1#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#4_3, TMap(TSeq(TChar), TInt), $Heap);
            ##vars#4_0 := bvars#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##vars#4_0, TSeq(TSeq(TChar)), $Heap);
            ##argvs#4_0 := bvarvs#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argvs#4_0, TSeq(TInt), $Heap);
            assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
            assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
            assume {:id "id834"} EliminateMulZero.__default.UpdateState__Pre(st1#4_0, bvars#4_0, bvarvs#4_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](271,9)
        ##st#4_4 := st1#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4_4, TMap(TSeq(TChar), TInt), $Heap);
        ##vars#4_1 := bvars#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#4_1, TSeq(TSeq(TChar)), $Heap);
        ##argvs#4_1 := bvarvs#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##argvs#4_1, TSeq(TInt), $Heap);
        assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        assume {:id "id835"} EliminateMulZero.__default.UpdateState__Pre(st1#4_0, bvars#4_0, bvarvs#4_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(272,17)
        assume true;
        ##st#4_5 := st1#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4_5, TMap(TSeq(TChar), TInt), $Heap);
        ##vars#4_2 := bvars#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#4_2, TSeq(TSeq(TChar)), $Heap);
        ##vals#4_0 := bvarvs#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vals#4_0, TSeq(TInt), $Heap);
        assume true;
        assume EliminateMulZero.__default.UpdateState__Pre(##st#4_5, ##vars#4_2, ##vals#4_0);
        assume EliminateMulZero.__default.BindStartScope#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        assume EliminateMulZero.__default.BindStartScope#canCall(st1#4_0, bvars#4_0, bvarvs#4_0);
        st2#4_0 := EliminateMulZero.__default.BindStartScope(st1#4_0, bvars#4_0, bvarvs#4_0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](273,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##4_1 := st2#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id837"} $Is(body#4_0, Tclass.AST.Expr());
        e##4_0 := body#4_0;
        assume {:id "id838"} 0 <= LitInt(2) || DtRank(e##4_0) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assume {:id "id839"} DtRank(e##4_0) < DtRank(e#0)
           || (DtRank(e##4_0) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id840"} Call$$EliminateMulZero.__default.P__Satisfied(st##4_1, e##4_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](274,55)
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
            assume {:id "id841"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
            bvals##4_2_0 := bvals#4_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assume {:id "id842"} $Is(body#4_0, Tclass.AST.Expr());
            body##4_2_0 := body#4_0;
            call {:id "id843"} Call$$EliminateMulZero.__default.InductBind__Fail(st##4_2_0, e##4_2_0, bvars##4_2_0, bvals##4_2_0, body##4_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](274,9)
            ##st#4_6 := st2#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#4_6, TMap(TSeq(TChar), TInt), $Heap);
            assume {:id "id844"} $Is(body#4_0, Tclass.AST.Expr());
            ##e#4_0 := body#4_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#4_0, Tclass.AST.Expr(), $Heap);
            assume EliminateMulZero.__default.P__Fail#canCall(st2#4_0, body#4_0);
            assume EliminateMulZero.__default.P__Fail#canCall(st2#4_0, body#4_0);
            assume {:id "id845"} !EliminateMulZero.__default.P__Fail(st2#4_0, body#4_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](274,9)
        ##st#4_7 := st2#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4_7, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id846"} $Is(body#4_0, Tclass.AST.Expr());
        ##e#4_1 := body#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#4_1, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.P__Fail#canCall(st2#4_0, body#4_0);
        assume EliminateMulZero.__default.P__Fail#canCall(st2#4_0, body#4_0);
        assume {:id "id847"} !EliminateMulZero.__default.P__Fail(st2#4_0, body#4_0);
        havoc st3#4_0;
        assume $Is(st3#4_0, TMap(TSeq(TChar), TInt))
           && $IsAlloc(st3#4_0, TMap(TSeq(TChar), TInt), $Heap);
        havoc v#4_0;
        ##st#4_8 := st2#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4_8, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id848"} $Is(body#4_0, Tclass.AST.Expr());
        ##e#4_2 := body#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#4_2, Tclass.AST.Expr(), $Heap);
        assume {:id "id849"} {:subsumption 0} EliminateMulZero.__default.P(##st#4_8, ##e#4_2);
        assume {:id "id850"} {:subsumption 0} !EliminateMulZero.__default.P__Fail(##st#4_8, ##e#4_2);
        assume EliminateMulZero.__default.P__Step#canCall(st2#4_0, body#4_0);
        assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.P__Step(st2#4_0, body#4_0));
        assume {:id "id851"} let#4_4#0#0 == EliminateMulZero.__default.P__Step(st2#4_0, body#4_0);
        assume EliminateMulZero.__default.P__Step#canCall(st2#4_0, body#4_0);
        assume EliminateMulZero.__default.P__Step#canCall(st2#4_0, body#4_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#4_4#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
        assume _System.Tuple2.___hMake2_q(let#4_4#0#0);
        assume {:id "id852"} #_System._tuple#2._#Make2($Box(st3#4_0), $Box(v#4_0)) == let#4_4#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(277,17)
        assume true;
        ##st0#4_0 := st1#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st0#4_0, TMap(TSeq(TChar), TInt), $Heap);
        ##st#4_9 := st3#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#4_9, TMap(TSeq(TChar), TInt), $Heap);
        ##vars#4_3 := bvars#4_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#4_3, TSeq(TSeq(TChar)), $Heap);
        assume EliminateMulZero.__default.BindEndScope#canCall(st1#4_0, st3#4_0, bvars#4_0);
        assume EliminateMulZero.__default.BindEndScope#canCall(st1#4_0, st3#4_0, bvars#4_0);
        st4#4_0 := EliminateMulZero.__default.BindEndScope(st1#4_0, st3#4_0, bvars#4_0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](279,24)
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
        assume {:id "id854"} $Is(bvals#4_0, TSeq(Tclass.AST.Expr()));
        bvals##4_0 := bvals#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id855"} $Is(body#4_0, Tclass.AST.Expr());
        body##4_0 := body#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##4_0 := st1#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        bvarvs##4_0 := bvarvs#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st2##4_0 := st2#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st3##4_0 := st3#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##4_0 := v#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st4##4_0 := st4#4_0;
        call {:id "id856"} Call$$EliminateMulZero.__default.InductBind__Succ(st##4_2, e##4_1, bvars##4_0, bvals##4_0, body##4_0, st1##4_0, bvarvs##4_0, st2##4_0, st3##4_0, v##4_0, st4##4_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](280,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##4_3 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##4_2 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st'##4_0 := st4#4_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v##4_1 := v#4_0;
        call {:id "id857"} Call$$EliminateMulZero.__default.P__Succ__Sound(st##4_3, e##4_2, st'##4_0, v##4_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Assign(_mcc#5#3_0, _mcc#6#3_0))
    {
        assume $Is(_mcc#5#3_0, TSeq(TSeq(TChar)));
        assume $Is(_mcc#6#3_0, TSeq(Tclass.AST.Expr__Raw()));
        havoc avals#3_0;
        assume $Is(avals#3_0, TSeq(Tclass.AST.Expr__Raw()))
           && $IsAlloc(avals#3_0, TSeq(Tclass.AST.Expr__Raw()), $Heap);
        assume {:id "id783"} let#3_0#0#0 == _mcc#6#3_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_0#0#0, TSeq(Tclass.AST.Expr__Raw()));
        assume {:id "id784"} avals#3_0 == let#3_0#0#0;
        havoc avars#3_0;
        assume $Is(avars#3_0, TSeq(TSeq(TChar)))
           && $IsAlloc(avars#3_0, TSeq(TSeq(TChar)), $Heap);
        assume {:id "id785"} let#3_1#0#0 == _mcc#5#3_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_1#0#0, TSeq(TSeq(TChar)));
        assume {:id "id786"} avars#3_0 == let#3_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](257,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##3_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id787"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        es##3_0 := avals#3_0;
        assume {:id "id788"} 0 <= LitInt(2) || Seq#Rank(es##3_0) < DtRank(e#0) || LitInt(1) == LitInt(2);
        assume {:id "id789"} Seq#Rank(es##3_0) < DtRank(e#0);
        call {:id "id790"} Call$$EliminateMulZero.__default.Pes__Satisfied(st##3_0, es##3_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](259,59)
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
            assume {:id "id791"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
            avals##3_0_0 := avals#3_0;
            call {:id "id792"} Call$$EliminateMulZero.__default.InductAssign__Fail(st##3_0_0, e##3_0_0, avars##3_0_0, avals##3_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](259,9)
            ##st#3_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#3_0, TMap(TSeq(TChar), TInt), $Heap);
            assume {:id "id793"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
            ##es#3_0 := avals#3_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#3_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, avals#3_0);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, avals#3_0);
            assume {:id "id794"} !EliminateMulZero.__default.Pes__Fail(st#0, avals#3_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](259,9)
        ##st#3_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#3_1, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id795"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        ##es#3_1 := avals#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#3_1, TSeq(Tclass.AST.Expr()), $Heap);
        assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, avals#3_0);
        assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, avals#3_0);
        assume {:id "id796"} !EliminateMulZero.__default.Pes__Fail(st#0, avals#3_0);
        havoc st1#3_0;
        assume $Is(st1#3_0, TMap(TSeq(TChar), TInt))
           && $IsAlloc(st1#3_0, TMap(TSeq(TChar), TInt), $Heap);
        havoc vs#3_0;
        assume $Is(vs#3_0, TSeq(TInt)) && $IsAlloc(vs#3_0, TSeq(TInt), $Heap);
        ##st#3_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#3_2, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id797"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        ##es#3_2 := avals#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#3_2, TSeq(Tclass.AST.Expr()), $Heap);
        assume {:id "id798"} {:subsumption 0} EliminateMulZero.__default.Pes(##st#3_2, ##es#3_2);
        assume {:id "id799"} {:subsumption 0} !EliminateMulZero.__default.Pes__Fail(##st#3_2, ##es#3_2);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, avals#3_0);
        assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.Pes__Step(st#0, avals#3_0));
        assume {:id "id800"} let#3_2#0#0 == EliminateMulZero.__default.Pes__Step(st#0, avals#3_0);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, avals#3_0);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, avals#3_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#3_2#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TSeq(TInt)));
        assume _System.Tuple2.___hMake2_q(let#3_2#0#0);
        assume {:id "id801"} #_System._tuple#2._#Make2($Box(st1#3_0), $Box(vs#3_0)) == let#3_2#0#0;
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](262,70)
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
            assume {:id "id802"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
            avals##3_1_0 := avals#3_0;
            call {:id "id803"} Call$$EliminateMulZero.__default.InductAssign__Fail(st##3_1_0, e##3_1_0, avars##3_1_0, avals##3_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](262,9)
            ##st#3_3 := st1#3_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#3_3, TMap(TSeq(TChar), TInt), $Heap);
            ##vars#3_0 := avars#3_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##vars#3_0, TSeq(TSeq(TChar)), $Heap);
            ##argvs#3_0 := vs#3_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##argvs#3_0, TSeq(TInt), $Heap);
            assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
            assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
            assume {:id "id804"} EliminateMulZero.__default.UpdateState__Pre(st1#3_0, avars#3_0, vs#3_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](262,9)
        ##st#3_4 := st1#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#3_4, TMap(TSeq(TChar), TInt), $Heap);
        ##vars#3_1 := avars#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#3_1, TSeq(TSeq(TChar)), $Heap);
        ##argvs#3_1 := vs#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##argvs#3_1, TSeq(TInt), $Heap);
        assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
        assume EliminateMulZero.__default.UpdateState__Pre#canCall(st1#3_0, avars#3_0, vs#3_0);
        assume {:id "id805"} EliminateMulZero.__default.UpdateState__Pre(st1#3_0, avars#3_0, vs#3_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(263,17)
        assume true;
        ##st#3_5 := st1#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#3_5, TMap(TSeq(TChar), TInt), $Heap);
        ##vars#3_2 := avars#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vars#3_2, TSeq(TSeq(TChar)), $Heap);
        ##vals#3_0 := vs#3_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##vals#3_0, TSeq(TInt), $Heap);
        assume true;
        assume EliminateMulZero.__default.UpdateState__Pre(##st#3_5, ##vars#3_2, ##vals#3_0);
        assume EliminateMulZero.__default.AssignState#canCall(st1#3_0, avars#3_0, vs#3_0);
        assume EliminateMulZero.__default.AssignState#canCall(st1#3_0, avars#3_0, vs#3_0);
        st2#3_0 := EliminateMulZero.__default.AssignState(st1#3_0, avars#3_0, vs#3_0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](264,26)
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
        assume {:id "id807"} $Is(avals#3_0, TSeq(Tclass.AST.Expr()));
        avals##3_0 := avals#3_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##3_0 := st1#3_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        vs##3_0 := vs#3_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st2##3_0 := st2#3_0;
        call {:id "id808"} Call$$EliminateMulZero.__default.InductAssign__Succ(st##3_1, e##3_0, avars##3_0, avals##3_0, st1##3_0, vs##3_0, st2##3_0);
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
        assume {:id "id750"} let#2_0#0#0 == _mcc#9#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_0#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id751"} els#2_0 == let#2_0#0#0;
        havoc thn#2_0;
        assume $Is(thn#2_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(thn#2_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id752"} let#2_1#0#0 == _mcc#8#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_1#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id753"} thn#2_0 == let#2_1#0#0;
        havoc cond#2_0;
        assume $Is(cond#2_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(cond#2_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id754"} let#2_2#0#0 == _mcc#7#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_2#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id755"} cond#2_0 == let#2_2#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](243,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id756"} $Is(cond#2_0, Tclass.AST.Expr());
        e##2_0 := cond#2_0;
        assume {:id "id757"} 0 <= LitInt(2) || DtRank(e##2_0) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assume {:id "id758"} DtRank(e##2_0) < DtRank(e#0)
           || (DtRank(e##2_0) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id759"} Call$$EliminateMulZero.__default.P__Satisfied(st##2_0, e##2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](246,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_1 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##2_1 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id760"} $Is(cond#2_0, Tclass.AST.Expr());
        cond##2_0 := cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id761"} $Is(thn#2_0, Tclass.AST.Expr());
        thn##2_0 := thn#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id762"} $Is(els#2_0, Tclass.AST.Expr());
        els##2_0 := els#2_0;
        call {:id "id763"} Call$$EliminateMulZero.__default.InductIf__Fail(st##2_1, e##2_1, cond##2_0, thn##2_0, els##2_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](247,9)
        ##st#2_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#2_0, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id764"} $Is(cond#2_0, Tclass.AST.Expr());
        ##e#2_0 := cond#2_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2_0, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.P__Fail#canCall(st#0, cond#2_0);
        assume EliminateMulZero.__default.P__Fail#canCall(st#0, cond#2_0);
        assume {:id "id765"} !EliminateMulZero.__default.P__Fail(st#0, cond#2_0);
        havoc st_cond#2_0;
        assume $Is(st_cond#2_0, TMap(TSeq(TChar), TInt))
           && $IsAlloc(st_cond#2_0, TMap(TSeq(TChar), TInt), $Heap);
        havoc condv#2_0;
        ##st#2_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#2_1, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id766"} $Is(cond#2_0, Tclass.AST.Expr());
        ##e#2_1 := cond#2_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#2_1, Tclass.AST.Expr(), $Heap);
        assume {:id "id767"} {:subsumption 0} EliminateMulZero.__default.P(##st#2_1, ##e#2_1);
        assume {:id "id768"} {:subsumption 0} !EliminateMulZero.__default.P__Fail(##st#2_1, ##e#2_1);
        assume EliminateMulZero.__default.P__Step#canCall(st#0, cond#2_0);
        assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.P__Step(st#0, cond#2_0));
        assume {:id "id769"} let#2_3#0#0 == EliminateMulZero.__default.P__Step(st#0, cond#2_0);
        assume EliminateMulZero.__default.P__Step#canCall(st#0, cond#2_0);
        assume EliminateMulZero.__default.P__Step#canCall(st#0, cond#2_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_3#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
        assume _System.Tuple2.___hMake2_q(let#2_3#0#0);
        assume {:id "id770"} #_System._tuple#2._#Make2($Box(st_cond#2_0), $Box(condv#2_0)) == let#2_3#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](250,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_2 := st_cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id771"} $Is(thn#2_0, Tclass.AST.Expr());
        e##2_2 := thn#2_0;
        assume {:id "id772"} 0 <= LitInt(2) || DtRank(e##2_2) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assume {:id "id773"} DtRank(e##2_2) < DtRank(e#0)
           || (DtRank(e##2_2) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id774"} Call$$EliminateMulZero.__default.P__Satisfied(st##2_2, e##2_2);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](251,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_3 := st_cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id775"} $Is(els#2_0, Tclass.AST.Expr());
        e##2_3 := els#2_0;
        assume {:id "id776"} 0 <= LitInt(2) || DtRank(e##2_3) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assume {:id "id777"} DtRank(e##2_3) < DtRank(e#0)
           || (DtRank(e##2_3) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id778"} Call$$EliminateMulZero.__default.P__Satisfied(st##2_3, e##2_3);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](253,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_4 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##2_4 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id779"} $Is(cond#2_0, Tclass.AST.Expr());
        cond##2_1 := cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id780"} $Is(thn#2_0, Tclass.AST.Expr());
        thn##2_1 := thn#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id781"} $Is(els#2_0, Tclass.AST.Expr());
        els##2_1 := els#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st_cond##2_0 := st_cond#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        condv##2_0 := condv#2_0;
        call {:id "id782"} Call$$EliminateMulZero.__default.InductIf__Succ(st##2_4, e##2_4, cond##2_1, thn##2_1, els##2_1, st_cond##2_0, condv##2_0);
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
        assume {:id "id709"} let#1_0#0#0 == _mcc#12#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id710"} e2#1_0 == let#1_0#0#0;
        havoc e1#1_0;
        assume $Is(e1#1_0, Tclass.AST.Expr__Raw())
           && $IsAlloc(e1#1_0, Tclass.AST.Expr__Raw(), $Heap);
        assume {:id "id711"} let#1_1#0#0 == _mcc#11#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, Tclass.AST.Expr__Raw());
        assume {:id "id712"} e1#1_0 == let#1_1#0#0;
        havoc op#1_0;
        assume $Is(op#1_0, Tclass.AST.BinOp()) && $IsAlloc(op#1_0, Tclass.AST.BinOp(), $Heap);
        assume {:id "id713"} let#1_2#0#0 == _mcc#10#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_2#0#0, Tclass.AST.BinOp());
        assume {:id "id714"} op#1_0 == let#1_2#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](219,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id715"} $Is(e1#1_0, Tclass.AST.Expr());
        e##1_0 := e1#1_0;
        assume {:id "id716"} 0 <= LitInt(2) || DtRank(e##1_0) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assume {:id "id717"} DtRank(e##1_0) < DtRank(e#0)
           || (DtRank(e##1_0) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id718"} Call$$EliminateMulZero.__default.P__Satisfied(st##1_0, e##1_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](221,50)
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
            assume {:id "id719"} $Is(e1#1_0, Tclass.AST.Expr());
            e1##1_0_0 := e1#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assume {:id "id720"} $Is(e2#1_0, Tclass.AST.Expr());
            e2##1_0_0 := e2#1_0;
            call {:id "id721"} Call$$EliminateMulZero.__default.InductOp__Fail(st##1_0_0, e##1_0_0, op##1_0_0, e1##1_0_0, e2##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](221,9)
            ##st#1_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#1_0, TMap(TSeq(TChar), TInt), $Heap);
            assume {:id "id722"} $Is(e1#1_0, Tclass.AST.Expr());
            ##e#1_0 := e1#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_0, Tclass.AST.Expr(), $Heap);
            assume EliminateMulZero.__default.P__Fail#canCall(st#0, e1#1_0);
            assume EliminateMulZero.__default.P__Fail#canCall(st#0, e1#1_0);
            assume {:id "id723"} !EliminateMulZero.__default.P__Fail(st#0, e1#1_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](221,9)
        ##st#1_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#1_1, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id724"} $Is(e1#1_0, Tclass.AST.Expr());
        ##e#1_1 := e1#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_1, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.P__Fail#canCall(st#0, e1#1_0);
        assume EliminateMulZero.__default.P__Fail#canCall(st#0, e1#1_0);
        assume {:id "id725"} !EliminateMulZero.__default.P__Fail(st#0, e1#1_0);
        havoc st1#1_0;
        assume $Is(st1#1_0, TMap(TSeq(TChar), TInt))
           && $IsAlloc(st1#1_0, TMap(TSeq(TChar), TInt), $Heap);
        havoc v1#1_0;
        ##st#1_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#1_2, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id726"} $Is(e1#1_0, Tclass.AST.Expr());
        ##e#1_2 := e1#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_2, Tclass.AST.Expr(), $Heap);
        assume {:id "id727"} {:subsumption 0} EliminateMulZero.__default.P(##st#1_2, ##e#1_2);
        assume {:id "id728"} {:subsumption 0} !EliminateMulZero.__default.P__Fail(##st#1_2, ##e#1_2);
        assume EliminateMulZero.__default.P__Step#canCall(st#0, e1#1_0);
        assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.P__Step(st#0, e1#1_0));
        assume {:id "id729"} let#1_3#0#0 == EliminateMulZero.__default.P__Step(st#0, e1#1_0);
        assume EliminateMulZero.__default.P__Step#canCall(st#0, e1#1_0);
        assume EliminateMulZero.__default.P__Step#canCall(st#0, e1#1_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_3#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
        assume _System.Tuple2.___hMake2_q(let#1_3#0#0);
        assume {:id "id730"} #_System._tuple#2._#Make2($Box(st1#1_0), $Box(v1#1_0)) == let#1_3#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](225,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_1 := st1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id731"} $Is(e2#1_0, Tclass.AST.Expr());
        e##1_1 := e2#1_0;
        assume {:id "id732"} 0 <= LitInt(2) || DtRank(e##1_1) < DtRank(e#0) || LitInt(3) == LitInt(2);
        assume {:id "id733"} DtRank(e##1_1) < DtRank(e#0)
           || (DtRank(e##1_1) == DtRank(e#0) && LitInt(3) < LitInt(2));
        call {:id "id734"} Call$$EliminateMulZero.__default.P__Satisfied(st##1_1, e##1_1);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](227,51)
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
            assume {:id "id735"} $Is(e1#1_0, Tclass.AST.Expr());
            e1##1_1_0 := e1#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assume {:id "id736"} $Is(e2#1_0, Tclass.AST.Expr());
            e2##1_1_0 := e2#1_0;
            call {:id "id737"} Call$$EliminateMulZero.__default.InductOp__Fail(st##1_1_0, e##1_1_0, op##1_1_0, e1##1_1_0, e2##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](227,9)
            ##st#1_3 := st1#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#1_3, TMap(TSeq(TChar), TInt), $Heap);
            assume {:id "id738"} $Is(e2#1_0, Tclass.AST.Expr());
            ##e#1_3 := e2#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_3, Tclass.AST.Expr(), $Heap);
            assume EliminateMulZero.__default.P__Fail#canCall(st1#1_0, e2#1_0);
            assume EliminateMulZero.__default.P__Fail#canCall(st1#1_0, e2#1_0);
            assume {:id "id739"} !EliminateMulZero.__default.P__Fail(st1#1_0, e2#1_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](227,9)
        ##st#1_4 := st1#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#1_4, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id740"} $Is(e2#1_0, Tclass.AST.Expr());
        ##e#1_4 := e2#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_4, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.P__Fail#canCall(st1#1_0, e2#1_0);
        assume EliminateMulZero.__default.P__Fail#canCall(st1#1_0, e2#1_0);
        assume {:id "id741"} !EliminateMulZero.__default.P__Fail(st1#1_0, e2#1_0);
        havoc st2#1_0;
        assume $Is(st2#1_0, TMap(TSeq(TChar), TInt))
           && $IsAlloc(st2#1_0, TMap(TSeq(TChar), TInt), $Heap);
        havoc v2#1_0;
        ##st#1_5 := st1#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#1_5, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id742"} $Is(e2#1_0, Tclass.AST.Expr());
        ##e#1_5 := e2#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_5, Tclass.AST.Expr(), $Heap);
        assume {:id "id743"} {:subsumption 0} EliminateMulZero.__default.P(##st#1_5, ##e#1_5);
        assume {:id "id744"} {:subsumption 0} !EliminateMulZero.__default.P__Fail(##st#1_5, ##e#1_5);
        assume EliminateMulZero.__default.P__Step#canCall(st1#1_0, e2#1_0);
        assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.P__Step(st1#1_0, e2#1_0));
        assume {:id "id745"} let#1_4#0#0 == EliminateMulZero.__default.P__Step(st1#1_0, e2#1_0);
        assume EliminateMulZero.__default.P__Step#canCall(st1#1_0, e2#1_0);
        assume EliminateMulZero.__default.P__Step#canCall(st1#1_0, e2#1_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_4#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
        assume _System.Tuple2.___hMake2_q(let#1_4#0#0);
        assume {:id "id746"} #_System._tuple#2._#Make2($Box(st2#1_0), $Box(v2#1_0)) == let#1_4#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](230,22)
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
        assume {:id "id747"} $Is(e1#1_0, Tclass.AST.Expr());
        e1##1_0 := e1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id748"} $Is(e2#1_0, Tclass.AST.Expr());
        e2##1_0 := e2#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##1_0 := st1#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        v1##1_0 := v1#1_0;
        call {:id "id749"} Call$$EliminateMulZero.__default.InductOp__Succ(st##1_2, e##1_2, op##1_0, e1##1_0, e2##1_0, st1##1_0, v1##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (e#0 == #AST.Expr_Raw.Seq(_mcc#13#0_0))
    {
        assume $Is(_mcc#13#0_0, TSeq(Tclass.AST.Expr__Raw()));
        havoc es#0_0;
        assume $Is(es#0_0, TSeq(Tclass.AST.Expr__Raw()))
           && $IsAlloc(es#0_0, TSeq(Tclass.AST.Expr__Raw()), $Heap);
        assume {:id "id690"} let#0_0#0#0 == _mcc#13#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, TSeq(Tclass.AST.Expr__Raw()));
        assume {:id "id691"} es#0_0 == let#0_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](234,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id692"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        es##0_0 := es#0_0;
        assume {:id "id693"} 0 <= LitInt(2) || Seq#Rank(es##0_0) < DtRank(e#0) || LitInt(1) == LitInt(2);
        assume {:id "id694"} Seq#Rank(es##0_0) < DtRank(e#0);
        call {:id "id695"} Call$$EliminateMulZero.__default.Pes__Satisfied(st##0_0, es##0_0);
        // TrCallStmt: After ProcessCallStmt
        if (*)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](236,53)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##0_0_0 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            e##0_0_0 := e#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assume {:id "id696"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
            es##0_0_0 := es#0_0;
            call {:id "id697"} Call$$EliminateMulZero.__default.InductSeq__Fail(st##0_0_0, e##0_0_0, es##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](236,9)
            ##st#0_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#0_0, TMap(TSeq(TChar), TInt), $Heap);
            assume {:id "id698"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
            ##es#0_0 := es#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#0_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0_0);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0_0);
            assume {:id "id699"} !EliminateMulZero.__default.Pes__Fail(st#0, es#0_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](236,9)
        ##st#0_1 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#0_1, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id700"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        ##es#0_1 := es#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#0_1, TSeq(Tclass.AST.Expr()), $Heap);
        assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0_0);
        assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0_0);
        assume {:id "id701"} !EliminateMulZero.__default.Pes__Fail(st#0, es#0_0);
        havoc st1#0_0;
        assume $Is(st1#0_0, TMap(TSeq(TChar), TInt))
           && $IsAlloc(st1#0_0, TMap(TSeq(TChar), TInt), $Heap);
        havoc vs#0_0;
        assume $Is(vs#0_0, TSeq(TInt)) && $IsAlloc(vs#0_0, TSeq(TInt), $Heap);
        ##st#0_2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#0_2, TMap(TSeq(TChar), TInt), $Heap);
        assume {:id "id702"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        ##es#0_2 := es#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#0_2, TSeq(Tclass.AST.Expr()), $Heap);
        assume {:id "id703"} {:subsumption 0} EliminateMulZero.__default.Pes(##st#0_2, ##es#0_2);
        assume {:id "id704"} {:subsumption 0} !EliminateMulZero.__default.Pes__Fail(##st#0_2, ##es#0_2);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, es#0_0);
        assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.Pes__Step(st#0, es#0_0));
        assume {:id "id705"} let#0_1#0#0 == EliminateMulZero.__default.Pes__Step(st#0, es#0_0);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, es#0_0);
        assume EliminateMulZero.__default.Pes__Step#canCall(st#0, es#0_0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TSeq(TInt)));
        assume _System.Tuple2.___hMake2_q(let#0_1#0#0);
        assume {:id "id706"} #_System._tuple#2._#Make2($Box(st1#0_0), $Box(vs#0_0)) == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](239,23)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_1 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assume {:id "id707"} $Is(es#0_0, TSeq(Tclass.AST.Expr()));
        es##0_1 := es#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##0_0 := st1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        vs##0_0 := vs#0_0;
        call {:id "id708"} Call$$EliminateMulZero.__default.InductSeq__Succ(st##0_1, e##0_0, es##0_1, st1##0_0, vs##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "EliminateMulZero.Pes_Satisfied (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.Pes__Satisfied(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Satisfied (call)"} Call$$EliminateMulZero.__default.Pes__Satisfied(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id861"} EliminateMulZero.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Satisfied (correctness)"} Impl$$EliminateMulZero.__default.Pes__Satisfied(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id862"} $_reverifyPost ==> EliminateMulZero.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.Pes_Satisfied (correctness)"} Impl$$EliminateMulZero.__default.Pes__Satisfied(st#0: Map, es#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#1: Map;
  var ##es#1: Seq;
  var st##0_0: Map;
  var es##0_0: Seq;
  var st##1_0: Map;
  var es##1_0: Seq;

    // AddMethodImpl: Pes_Satisfied, Impl$$EliminateMulZero.__default.Pes__Satisfied
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](288,5)
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#1, TMap(TSeq(TChar), TInt), $Heap);
    ##es#1 := es#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##es#1, TSeq(Tclass.AST.Expr()), $Heap);
    assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0);
    assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, es#0);
    if (EliminateMulZero.__default.Pes__Fail(st#0, es#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](289,21)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        es##0_0 := es#0;
        call {:id "id863"} Call$$EliminateMulZero.__default.Pes__Fail__Sound(st##0_0, es##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](292,25)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        es##1_0 := es#0;
        assume {:id "id864"} 0 <= LitInt(1) || Seq#Rank(es##1_0) < Seq#Rank(es#0) || LitInt(0) == LitInt(1);
        assume {:id "id865"} Seq#Rank(es##1_0) < Seq#Rank(es#0)
           || (Seq#Rank(es##1_0) == Seq#Rank(es#0) && LitInt(0) < LitInt(1));
        call {:id "id866"} Call$$EliminateMulZero.__default.Pes__Satisfied__Succ(st##1_0, es##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "EliminateMulZero.Pes_Satisfied_Succ (well-formedness)"} CheckWellFormed$$EliminateMulZero.__default.Pes__Satisfied__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Satisfied_Succ (call)"} Call$$EliminateMulZero.__default.Pes__Satisfied__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap));
  // user-defined preconditions
  requires {:id "id869"} !EliminateMulZero.__default.Pes__Fail(st#0, es#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id870"} EliminateMulZero.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EliminateMulZero.Pes_Satisfied_Succ (correctness)"} Impl$$EliminateMulZero.__default.Pes__Satisfied__Succ(st#0: Map
       where $Is(st#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(st#0, TMap(TSeq(TChar), TInt), $Heap), 
    es#0: Seq
       where $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $IsAlloc(es#0, TSeq(Tclass.AST.Expr()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id871"} !EliminateMulZero.__default.Pes__Fail(st#0, es#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures EliminateMulZero.__default.Pes#canCall(st#0, es#0);
  ensures {:id "id872"} $_reverifyPost ==> EliminateMulZero.__default.Pes(st#0, es#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EliminateMulZero.Pes_Satisfied_Succ (correctness)"} Impl$$EliminateMulZero.__default.Pes__Satisfied__Succ(st#0: Map, es#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var st##0_0: Map;
  var ##st#0_0: Map;
  var ##es#0_0: Seq;
  var ##st'#0_0: Map;
  var ##vs#0_0: Seq;
  var st##0_1: Map;
  var es##0_0: Seq;
  var st'##0_0: Map;
  var vs##0_0: Seq;
  var e#1_0: DatatypeType
     where $Is(e#1_0, Tclass.AST.Expr()) && $IsAlloc(e#1_0, Tclass.AST.Expr(), $Heap);
  var es'#1_0: Seq
     where $Is(es'#1_0, TSeq(Tclass.AST.Expr()))
       && $IsAlloc(es'#1_0, TSeq(Tclass.AST.Expr()), $Heap);
  var st##1_0: Map;
  var e##1_0: DatatypeType;
  var ##st#1_0: Map;
  var ##e#1_0: DatatypeType;
  var st##1_0_0: Map;
  var e##1_0_0: DatatypeType;
  var es##1_0_0: Seq;
  var ##st#1_0_0: Map;
  var ##es#1_0_0: Seq;
  var st##1_0_1: Map;
  var es##1_0_1: Seq;
  var st1#1_1_0: Map;
  var v#1_1_0: int;
  var let#1_1_0#0#0: DatatypeType;
  var ##st#1_1_0: Map;
  var ##e#1_1_0: DatatypeType;
  var st##1_1_0: Map;
  var es##1_1_0: Seq;
  var ##st#1_1_1: Map;
  var ##es#1_1_0: Seq;
  var st##1_1_0_0: Map;
  var e##1_1_0_0: DatatypeType;
  var es##1_1_0_0: Seq;
  var ##st#1_1_0_0: Map;
  var ##es#1_1_0_0: Seq;
  var st##1_1_0_1: Map;
  var es##1_1_0_1: Seq;
  var st2#1_1_1_0: Map;
  var vs#1_1_1_0: Seq;
  var let#1_1_1_0#0#0: DatatypeType;
  var ##st#1_1_1_0: Map;
  var ##es#1_1_1_0: Seq;
  var st##1_1_1_0: Map;
  var e##1_1_1_0: DatatypeType;
  var es##1_1_1_0: Seq;
  var ##st#1_1_1_1: Map;
  var ##es#1_1_1_1: Seq;
  var ##st'#1_1_1_0: Map;
  var ##vs#1_1_1_0: Seq;
  var ##v#1_1_1_0: int;
  var ##vs#1_1_1_1: Seq;
  var st##1_1_1_1: Map;
  var es##1_1_1_1: Seq;
  var st'##1_1_1_0: Map;
  var vs##1_1_1_0: Seq;
  var ##v#1_1_1_1: int;
  var ##vs#1_1_1_2: Seq;

    // AddMethodImpl: Pes_Satisfied_Succ, Impl$$EliminateMulZero.__default.Pes__Satisfied__Succ
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](301,5)
    assume true;
    if (Seq#Equal(es#0, Seq#Empty(): Seq))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](302,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        call {:id "id873"} Call$$EliminateMulZero.__default.InductExprs__Nil(st##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](303,7)
        ##st#0_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#0_0, TMap(TSeq(TChar), TInt), $Heap);
        ##es#0_0 := Lit(Seq#Empty(): Seq);
        // assume allocatedness for argument to function
        assume $IsAlloc(##es#0_0, TSeq(Tclass.AST.Expr()), $Heap);
        ##st'#0_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st'#0_0, TMap(TSeq(TChar), TInt), $Heap);
        ##vs#0_0 := EliminateMulZero.__default.NilVS();
        // assume allocatedness for argument to function
        assume $IsAlloc(##vs#0_0, TSeq(TInt), $Heap);
        assume EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS());
        assume EliminateMulZero.__default.Pes__Succ#canCall(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS());
        assume {:id "id874"} EliminateMulZero.__default.Pes__Succ(st#0, Lit(Seq#Empty(): Seq), st#0, EliminateMulZero.__default.NilVS());
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](304,21)
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
        vs##0_0 := EliminateMulZero.__default.NilVS();
        call {:id "id875"} Call$$EliminateMulZero.__default.Pes__Succ__Sound(st##0_1, es##0_0, st'##0_0, vs##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(307,13)
        assume true;
        assume {:id "id876"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(es#0);
        assume true;
        e#1_0 := $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy(308,15)
        assume true;
        assume {:id "id878"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(es#0);
        assume true;
        es'#1_0 := Seq#Drop(es#0, LitInt(1));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](309,7)
        assume true;
        assume {:id "id880"} Seq#Equal(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), es#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](311,18)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_0 := e#1_0;
        assume {:id "id881"} 0 <= LitInt(0) || DtRank(e##1_0) < Seq#Rank(es#0) || LitInt(3) == LitInt(0);
        assume {:id "id882"} DtRank(e##1_0) < Seq#Rank(es#0);
        call {:id "id883"} Call$$EliminateMulZero.__default.P__Satisfied(st##1_0, e##1_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](313,7)
        ##st#1_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#1_0, TMap(TSeq(TChar), TInt), $Heap);
        ##e#1_0 := e#1_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#1_0, Tclass.AST.Expr(), $Heap);
        assume EliminateMulZero.__default.P__Fail#canCall(st#0, e#1_0);
        assume EliminateMulZero.__default.P__Fail#canCall(st#0, e#1_0);
        if (EliminateMulZero.__default.P__Fail(st#0, e#1_0))
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](314,25)
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
            call {:id "id884"} Call$$EliminateMulZero.__default.InductExprs__Cons(st##1_0_0, e##1_0_0, es##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](315,9)
            ##st#1_0_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#1_0_0, TMap(TSeq(TChar), TInt), $Heap);
            ##es#1_0_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#1_0_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
            assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
            assume {:id "id885"} EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](316,23)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##1_0_1 := st#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            es##1_0_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
            call {:id "id886"} Call$$EliminateMulZero.__default.Pes__Fail__Sound(st##1_0_1, es##1_0_1);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            havoc st1#1_1_0;
            assume $Is(st1#1_1_0, TMap(TSeq(TChar), TInt))
               && $IsAlloc(st1#1_1_0, TMap(TSeq(TChar), TInt), $Heap);
            havoc v#1_1_0;
            ##st#1_1_0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#1_1_0, TMap(TSeq(TChar), TInt), $Heap);
            ##e#1_1_0 := e#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1_1_0, Tclass.AST.Expr(), $Heap);
            assume {:id "id887"} {:subsumption 0} EliminateMulZero.__default.P(##st#1_1_0, ##e#1_1_0);
            assume {:id "id888"} {:subsumption 0} !EliminateMulZero.__default.P__Fail(##st#1_1_0, ##e#1_1_0);
            assume EliminateMulZero.__default.P__Step#canCall(st#0, e#1_0);
            assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.P__Step(st#0, e#1_0));
            assume {:id "id889"} let#1_1_0#0#0 == EliminateMulZero.__default.P__Step(st#0, e#1_0);
            assume EliminateMulZero.__default.P__Step#canCall(st#0, e#1_0);
            assume EliminateMulZero.__default.P__Step#canCall(st#0, e#1_0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_1_0#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TInt));
            assume _System.Tuple2.___hMake2_q(let#1_1_0#0#0);
            assume {:id "id890"} #_System._tuple#2._#Make2($Box(st1#1_1_0), $Box(v#1_1_0)) == let#1_1_0#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](320,22)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            st##1_1_0 := st1#1_1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            es##1_1_0 := es'#1_0;
            assume {:id "id891"} 0 <= LitInt(0) || Seq#Rank(es##1_1_0) < Seq#Rank(es#0) || LitInt(1) == LitInt(0);
            assume {:id "id892"} Seq#Rank(es##1_1_0) < Seq#Rank(es#0)
               || (Seq#Rank(es##1_1_0) == Seq#Rank(es#0) && LitInt(1) < LitInt(0));
            call {:id "id893"} Call$$EliminateMulZero.__default.Pes__Satisfied(st##1_1_0, es##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](322,9)
            ##st#1_1_1 := st1#1_1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#1_1_1, TMap(TSeq(TChar), TInt), $Heap);
            ##es#1_1_0 := es'#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##es#1_1_0, TSeq(Tclass.AST.Expr()), $Heap);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st1#1_1_0, es'#1_0);
            assume EliminateMulZero.__default.Pes__Fail#canCall(st1#1_1_0, es'#1_0);
            if (EliminateMulZero.__default.Pes__Fail(st1#1_1_0, es'#1_0))
            {
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](323,27)
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
                call {:id "id894"} Call$$EliminateMulZero.__default.InductExprs__Cons(st##1_1_0_0, e##1_1_0_0, es##1_1_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](324,11)
                ##st#1_1_0_0 := st#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##st#1_1_0_0, TMap(TSeq(TChar), TInt), $Heap);
                ##es#1_1_0_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##es#1_1_0_0, TSeq(Tclass.AST.Expr()), $Heap);
                assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
                assume EliminateMulZero.__default.Pes__Fail#canCall(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
                assume {:id "id895"} EliminateMulZero.__default.Pes__Fail(st#0, Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0));
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](325,25)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##1_1_0_1 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                es##1_1_0_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
                call {:id "id896"} Call$$EliminateMulZero.__default.Pes__Fail__Sound(st##1_1_0_1, es##1_1_0_1);
                // TrCallStmt: After ProcessCallStmt
            }
            else
            {
                havoc st2#1_1_1_0;
                assume $Is(st2#1_1_1_0, TMap(TSeq(TChar), TInt))
                   && $IsAlloc(st2#1_1_1_0, TMap(TSeq(TChar), TInt), $Heap);
                havoc vs#1_1_1_0;
                assume $Is(vs#1_1_1_0, TSeq(TInt)) && $IsAlloc(vs#1_1_1_0, TSeq(TInt), $Heap);
                ##st#1_1_1_0 := st1#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##st#1_1_1_0, TMap(TSeq(TChar), TInt), $Heap);
                ##es#1_1_1_0 := es'#1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##es#1_1_1_0, TSeq(Tclass.AST.Expr()), $Heap);
                assume {:id "id897"} {:subsumption 0} EliminateMulZero.__default.Pes(##st#1_1_1_0, ##es#1_1_1_0);
                assume {:id "id898"} {:subsumption 0} !EliminateMulZero.__default.Pes__Fail(##st#1_1_1_0, ##es#1_1_1_0);
                assume EliminateMulZero.__default.Pes__Step#canCall(st1#1_1_0, es'#1_0);
                assume _System.Tuple2.___hMake2_q(EliminateMulZero.__default.Pes__Step(st1#1_1_0, es'#1_0));
                assume {:id "id899"} let#1_1_1_0#0#0 == EliminateMulZero.__default.Pes__Step(st1#1_1_0, es'#1_0);
                assume EliminateMulZero.__default.Pes__Step#canCall(st1#1_1_0, es'#1_0);
                assume EliminateMulZero.__default.Pes__Step#canCall(st1#1_1_0, es'#1_0);
                // CheckWellformedWithResult: any expression
                assume $Is(let#1_1_1_0#0#0, Tclass._System.Tuple2(TMap(TSeq(TChar), TInt), TSeq(TInt)));
                assume _System.Tuple2.___hMake2_q(let#1_1_1_0#0#0);
                assume {:id "id900"} #_System._tuple#2._#Make2($Box(st2#1_1_1_0), $Box(vs#1_1_1_0))
                   == let#1_1_1_0#0#0;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](329,27)
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
                call {:id "id901"} Call$$EliminateMulZero.__default.InductExprs__Cons(st##1_1_1_0, e##1_1_1_0, es##1_1_1_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](330,11)
                ##st#1_1_1_1 := st#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##st#1_1_1_1, TMap(TSeq(TChar), TInt), $Heap);
                ##es#1_1_1_1 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##es#1_1_1_1, TSeq(Tclass.AST.Expr()), $Heap);
                ##st'#1_1_1_0 := st2#1_1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##st'#1_1_1_0, TMap(TSeq(TChar), TInt), $Heap);
                ##v#1_1_1_0 := v#1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##v#1_1_1_0, TInt, $Heap);
                ##vs#1_1_1_1 := vs#1_1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##vs#1_1_1_1, TSeq(TInt), $Heap);
                assume EliminateMulZero.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0);
                ##vs#1_1_1_0 := EliminateMulZero.__default.AppendValue(v#1_1_0, vs#1_1_1_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##vs#1_1_1_0, TSeq(TInt), $Heap);
                assume EliminateMulZero.__default.Pes__Succ#canCall(st#0, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), 
                  st2#1_1_1_0, 
                  EliminateMulZero.__default.AppendValue(v#1_1_0, vs#1_1_1_0));
                assume EliminateMulZero.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0)
                   && EliminateMulZero.__default.Pes__Succ#canCall(st#0, 
                    Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), 
                    st2#1_1_1_0, 
                    EliminateMulZero.__default.AppendValue(v#1_1_0, vs#1_1_1_0));
                assume {:id "id902"} EliminateMulZero.__default.Pes__Succ(st#0, 
                  Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(e#1_0)), es'#1_0), 
                  st2#1_1_1_0, 
                  EliminateMulZero.__default.AppendValue(v#1_1_0, vs#1_1_1_0));
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/induction-principle-code/Induction.dfy[EliminateMulZero](331,25)
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
                assume $IsAlloc(##v#1_1_1_1, TInt, $Heap);
                ##vs#1_1_1_2 := vs#1_1_1_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##vs#1_1_1_2, TSeq(TInt), $Heap);
                assume EliminateMulZero.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0);
                assume EliminateMulZero.__default.AppendValue#canCall(v#1_1_0, vs#1_1_1_0);
                // ProcessCallStmt: CheckSubrange
                vs##1_1_1_0 := EliminateMulZero.__default.AppendValue(v#1_1_0, vs#1_1_1_0);
                call {:id "id903"} Call$$EliminateMulZero.__default.Pes__Succ__Sound(st##1_1_1_1, es##1_1_1_1, st'##1_1_1_0, vs##1_1_1_0);
                // TrCallStmt: After ProcessCallStmt
            }
        }
    }
}



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
axiom {:id "id904"} (forall x#0: int, y#0: int :: 
  { Utils.__default.Max(x#0, y#0) } 
  Utils.__default.Max(x#0, y#0) == (if x#0 > y#0 then x#0 else y#0));

// definition axiom for Utils.__default.Max for all literals (revealed)
axiom {:id "id905"} (forall x#0: int, y#0: int :: 
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
axiom {:id "id906"} (forall Utils._default.MaxF$T: Ty, 
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
axiom {:id "id907"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
  { Utils.Result.IsFailure(Utils.Result$T, this) } 
  Utils.Result.IsFailure#canCall(Utils.Result$T, this)
       || $Is(this, Tclass.Utils.Result(Utils.Result$T))
     ==> Utils.Result.IsFailure(Utils.Result$T, this) == Utils.Result.Failure_q(this));

// definition axiom for Utils.Result.IsFailure for all literals (revealed)
axiom {:id "id908"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
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
axiom {:id "id909"} (forall Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType :: 
  { Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this) } 
  Utils.Result.PropagateFailure#canCall(Utils.Result$T, Utils.Result.PropagateFailure$U, this)
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T)) && Utils.Result.Failure_q(this))
     ==> Utils.Result.PropagateFailure(Utils.Result$T, Utils.Result.PropagateFailure$U, this)
       == Lit(#Utils.Result.Failure()));

// definition axiom for Utils.Result.PropagateFailure for all literals (revealed)
axiom {:id "id910"} (forall Utils.Result$T: Ty, Utils.Result.PropagateFailure$U: Ty, this: DatatypeType :: 
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
axiom {:id "id911"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
  { Utils.Result.Extract(Utils.Result$T, this) } 
  Utils.Result.Extract#canCall(Utils.Result$T, this)
       || ($Is(this, Tclass.Utils.Result(Utils.Result$T)) && Utils.Result.Success_q(this))
     ==> Utils.Result.Extract(Utils.Result$T, this) == Utils.Result.value(this));

// definition axiom for Utils.Result.Extract for all literals (revealed)
axiom {:id "id912"} (forall Utils.Result$T: Ty, this: DatatypeType :: 
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
axiom {:id "id913"} (forall $ly: LayerType, $Heap: Heap, this: DatatypeType :: 
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
axiom {:id "id914"} (forall $ly: LayerType, $Heap: Heap, this: DatatypeType :: 
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
axiom {:id "id915"} (forall $ly: LayerType, $Heap: Heap, e#0: DatatypeType, p#0: HandleType :: 
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
axiom {:id "id916"} (forall $ly: LayerType, $Heap: Heap, e#0: DatatypeType, p#0: HandleType :: 
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
axiom {:id "id917"} (forall $ly: LayerType, $Heap: Heap, e#0: DatatypeType, p#0: HandleType :: 
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
axiom {:id "id918"} (forall es#0: Seq, p#0: HandleType :: 
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
axiom {:id "id919"} (forall es#0: Seq, p#0: HandleType :: 
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
axiom {:id "id920"} (forall es#0: Seq, p#0: HandleType :: 
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
axiom {:id "id921"} (forall e#0: DatatypeType :: 
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
axiom {:id "id922"} (forall e#0: DatatypeType :: 
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
axiom {:id "id923"} (forall $Heap: Heap, this: DatatypeType :: 
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
axiom {:id "id924"} (forall $Heap: Heap, this: DatatypeType :: 
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

const unique class.Interp.__default: ClassName;

// function declaration for Interp._default.InterpBinOp
function Interp.__default.InterpBinOp(op#0: DatatypeType, x#0: int, y#0: int) : int;

function Interp.__default.InterpBinOp#canCall(op#0: DatatypeType, x#0: int, y#0: int) : bool;

function Interp.__default.InterpBinOp#requires(DatatypeType, int, int) : bool;

// #requires axiom for Interp.__default.InterpBinOp
axiom (forall op#0: DatatypeType, x#0: int, y#0: int :: 
  { Interp.__default.InterpBinOp#requires(op#0, x#0, y#0) } 
  $Is(op#0, Tclass.AST.BinOp())
     ==> Interp.__default.InterpBinOp#requires(op#0, x#0, y#0) == true);

// definition axiom for Interp.__default.InterpBinOp (revealed)
axiom {:id "id925"} (forall op#0: DatatypeType, x#0: int, y#0: int :: 
  { Interp.__default.InterpBinOp(op#0, x#0, y#0) } 
  Interp.__default.InterpBinOp#canCall(op#0, x#0, y#0)
       || $Is(op#0, Tclass.AST.BinOp())
     ==> Interp.__default.InterpBinOp(op#0, x#0, y#0)
       == (if AST.BinOp.Add_q(op#0)
         then x#0 + y#0
         else (if AST.BinOp.Sub_q(op#0) then x#0 - y#0 else Mul(x#0, y#0))));

// definition axiom for Interp.__default.InterpBinOp for all literals (revealed)
axiom {:id "id926"} (forall op#0: DatatypeType, x#0: int, y#0: int :: 
  {:weight 3} { Interp.__default.InterpBinOp(Lit(op#0), LitInt(x#0), LitInt(y#0)) } 
  Interp.__default.InterpBinOp#canCall(Lit(op#0), LitInt(x#0), LitInt(y#0))
       || $Is(op#0, Tclass.AST.BinOp())
     ==> Interp.__default.InterpBinOp(Lit(op#0), LitInt(x#0), LitInt(y#0))
       == (if AST.BinOp.Add_q(Lit(op#0))
         then x#0 + y#0
         else (if AST.BinOp.Sub_q(Lit(op#0))
           then x#0 - y#0
           else Mul(LitInt(x#0), LitInt(y#0)))));

// function declaration for Interp._default.InterpExpr
function Interp.__default.InterpExpr($ly: LayerType, e#0: DatatypeType, ctx#0: Map) : DatatypeType;

function Interp.__default.InterpExpr#canCall(e#0: DatatypeType, ctx#0: Map) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { Interp.__default.InterpExpr($LS($ly), e#0, ctx#0) } 
  Interp.__default.InterpExpr($LS($ly), e#0, ctx#0)
     == Interp.__default.InterpExpr($ly, e#0, ctx#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { Interp.__default.InterpExpr(AsFuelBottom($ly), e#0, ctx#0) } 
  Interp.__default.InterpExpr($ly, e#0, ctx#0)
     == Interp.__default.InterpExpr($LZ, e#0, ctx#0));

// consequence axiom for Interp.__default.InterpExpr
axiom (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { Interp.__default.InterpExpr($ly, e#0, ctx#0) } 
  Interp.__default.InterpExpr#canCall(e#0, ctx#0)
       || ($Is(e#0, Tclass.AST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> $Is(Interp.__default.InterpExpr($ly, e#0, ctx#0), 
      Tclass.Utils.Result(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)))));

function Interp.__default.InterpExpr#requires(LayerType, DatatypeType, Map) : bool;

// #requires axiom for Interp.__default.InterpExpr
axiom (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { Interp.__default.InterpExpr#requires($ly, e#0, ctx#0) } 
  $Is(e#0, Tclass.AST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt))
     ==> Interp.__default.InterpExpr#requires($ly, e#0, ctx#0) == true);

// definition axiom for Interp.__default.InterpExpr (revealed)
axiom {:id "id927"} (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { Interp.__default.InterpExpr($LS($ly), e#0, ctx#0) } 
  Interp.__default.InterpExpr#canCall(e#0, ctx#0)
       || ($Is(e#0, Tclass.AST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> (AST.Expr__Raw.Bind_q(e#0)
             ==> (var body#1 := AST.Expr__Raw.body(e#0); 
              (var bvals#1 := AST.Expr__Raw.bvals(e#0); 
                (var bvars#1 := AST.Expr__Raw.bvars(e#0); 
                  Interp.__default.InterpExprs#canCall(bvals#1, ctx#0)
                     && (var valueOrError0#1 := Interp.__default.InterpExprs($ly, bvals#1, ctx#0); 
                      Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#1)
                         && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#1)
                           ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                            Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                            valueOrError0#1))
                         && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#1)
                           ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#1)
                             && (var vs#3, ctx1#4 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#1)): DatatypeType)): Seq, 
                                $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#1)): DatatypeType)): Map; 
                              Interp.__default.VarsAndValuesToContext#canCall(bvars#1, vs#3)
                                 && (var bindings#2 := Interp.__default.VarsAndValuesToContext($LS($LZ), bvars#1, vs#3); 
                                  (var ctx2#2 := Map#Merge(ctx1#4, bindings#2); 
                                    Interp.__default.InterpExpr#canCall(body#1, ctx2#2)
                                       && (var valueOrError1#1 := Interp.__default.InterpExpr($ly, body#1, ctx2#2); 
                                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#1)
                                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#1)
                                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                              valueOrError1#1))
                                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#1)
                                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#1))))))))))))
           && (!AST.Expr__Raw.Bind_q(e#0)
             ==> (AST.Expr__Raw.Assign_q(e#0)
                 ==> (var avals#1 := AST.Expr__Raw.avals(e#0); 
                  (var avars#1 := AST.Expr__Raw.avars(e#0); 
                    Interp.__default.InterpExprs#canCall(avals#1, ctx#0)
                       && (var valueOrError2#1 := Interp.__default.InterpExprs($ly, avals#1, ctx#0); 
                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#1)
                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#1)
                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              valueOrError2#1))
                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#1)
                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#1)
                               && (var vs#4 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#1)): DatatypeType)): Seq; 
                                Interp.__default.VarsAndValuesToContext#canCall(avars#1, vs#4)))))))
               && (!AST.Expr__Raw.Assign_q(e#0)
                 ==> (AST.Expr__Raw.If_q(e#0)
                     ==> (var els#1 := AST.Expr__Raw.els(e#0); 
                      (var thn#1 := AST.Expr__Raw.thn(e#0); 
                        (var cond#1 := AST.Expr__Raw.cond(e#0); 
                          Interp.__default.InterpExpr#canCall(cond#1, ctx#0)
                             && (var valueOrError3#1 := Interp.__default.InterpExpr($ly, cond#1, ctx#0); 
                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#1)
                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#1)
                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError3#1))
                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#1)
                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#1)
                                     && (var condv#1, ctx_cond#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#1)): DatatypeType)): int, 
                                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#1)): DatatypeType)): Map; 
                                      (condv#1 != 0 ==> Interp.__default.InterpExpr#canCall(thn#1, ctx_cond#1))
                                         && (condv#1 == 0 ==> Interp.__default.InterpExpr#canCall(els#1, ctx_cond#1)))))))))
                   && (!AST.Expr__Raw.If_q(e#0)
                     ==> (AST.Expr__Raw.Op_q(e#0)
                         ==> (var e2#1 := AST.Expr__Raw.oe2(e#0); 
                          (var e1#1 := AST.Expr__Raw.oe1(e#0); 
                            (var op#1 := AST.Expr__Raw.op(e#0); 
                              Interp.__default.InterpExpr#canCall(e1#1, ctx#0)
                                 && (var valueOrError4#1 := Interp.__default.InterpExpr($ly, e1#1, ctx#0); 
                                  Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#1)
                                     && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#1)
                                       ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                        Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                        valueOrError4#1))
                                     && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#1)
                                       ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#1)
                                         && (var v1#1, ctx1#6 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#1)): DatatypeType)): int, 
                                            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#1)): DatatypeType)): Map; 
                                          Interp.__default.InterpExpr#canCall(e2#1, ctx1#6)
                                             && (var valueOrError5#1 := Interp.__default.InterpExpr($ly, e2#1, ctx1#6); 
                                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#1)
                                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#1)
                                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                                    valueOrError5#1))
                                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#1)
                                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#1)
                                                     && (var v2#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#1)): DatatypeType)): int; 
                                                      Interp.__default.InterpBinOp#canCall(op#1, v1#1, v2#1)))))))))))
                       && (!AST.Expr__Raw.Op_q(e#0)
                         ==> (var es#1 := AST.Expr__Raw.es(e#0); 
                          Interp.__default.InterpExprs#canCall(es#1, ctx#0)
                             && (var valueOrError6#1 := Interp.__default.InterpExprs($ly, es#1, ctx#0); 
                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#1)
                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#1)
                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError6#1))
                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#1)
                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#1)))))))))
       && Interp.__default.InterpExpr($LS($ly), e#0, ctx#0)
         == (if AST.Expr__Raw.Var_q(e#0)
           then (var name#0 := AST.Expr__Raw.name(e#0); 
            (if Set#IsMember(Map#Domain(ctx#0), $Box(name#0))
               then #Utils.Result.Success($Box(#_System._tuple#2._#Make2(Map#Elements(ctx#0)[$Box(name#0)], $Box(ctx#0))))
               else #Utils.Result.Failure()))
           else (if AST.Expr__Raw.Literal_q(e#0)
             then (var n#0 := AST.Expr__Raw.n(e#0); 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(n#0), $Box(ctx#0)))))
             else (if AST.Expr__Raw.Bind_q(e#0)
               then (var body#0 := AST.Expr__Raw.body(e#0); 
                (var bvals#0 := AST.Expr__Raw.bvals(e#0); 
                  (var bvars#0 := AST.Expr__Raw.bvars(e#0); 
                    (var valueOrError0#0 := Interp.__default.InterpExprs($ly, bvals#0, ctx#0); 
                      (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#0)
                         then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                          Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                          valueOrError0#0)
                         else (var vs#0, ctx1#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#0)): DatatypeType)): Seq, 
                            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#0)): DatatypeType)): Map; 
                          (var bindings#0 := Interp.__default.VarsAndValuesToContext($LS($LZ), bvars#0, vs#0); 
                            (var ctx2#0 := Map#Merge(ctx1#0, bindings#0); 
                              (var valueOrError1#0 := Interp.__default.InterpExpr($ly, body#0, ctx2#0); 
                                (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#0)
                                   then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError1#0)
                                   else (var bodyv#0, ctx3#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#0)): DatatypeType)): int, 
                                      $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#0)): DatatypeType)): Map; 
                                    (var ctx4#0 := Map#Merge(ctx1#0, 
                                          Map#Subtract(ctx3#0, 
                                            Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(bvars#0, $y#0))))); 
                                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(bodyv#0), $Box(ctx4#0))))))))))))))))
               else (if AST.Expr__Raw.Assign_q(e#0)
                 then (var avals#0 := AST.Expr__Raw.avals(e#0); 
                  (var avars#0 := AST.Expr__Raw.avars(e#0); 
                    (var valueOrError2#0 := Interp.__default.InterpExprs($ly, avals#0, ctx#0); 
                      (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#0)
                         then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                          Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                          valueOrError2#0)
                         else (var vs#1, ctx1#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#0)): DatatypeType)): Seq, 
                            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#0)): DatatypeType)): Map; 
                          (var bindings#1 := Interp.__default.VarsAndValuesToContext($LS($LZ), avars#0, vs#1); 
                            #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(LitInt(0)), $Box(Map#Merge(ctx1#1, bindings#1)))))))))))
                 else (if AST.Expr__Raw.If_q(e#0)
                   then (var els#0 := AST.Expr__Raw.els(e#0); 
                    (var thn#0 := AST.Expr__Raw.thn(e#0); 
                      (var cond#0 := AST.Expr__Raw.cond(e#0); 
                        (var valueOrError3#0 := Interp.__default.InterpExpr($ly, cond#0, ctx#0); 
                          (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#0)
                             then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              valueOrError3#0)
                             else (var condv#0, ctx_cond#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#0)): DatatypeType)): int, 
                                $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#0)): DatatypeType)): Map; 
                              (if condv#0 != 0
                                 then Interp.__default.InterpExpr($ly, thn#0, ctx_cond#0)
                                 else Interp.__default.InterpExpr($ly, els#0, ctx_cond#0))))))))
                   else (if AST.Expr__Raw.Op_q(e#0)
                     then (var e2#0 := AST.Expr__Raw.oe2(e#0); 
                      (var e1#0 := AST.Expr__Raw.oe1(e#0); 
                        (var op#0 := AST.Expr__Raw.op(e#0); 
                          (var valueOrError4#0 := Interp.__default.InterpExpr($ly, e1#0, ctx#0); 
                            (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#0)
                               then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                valueOrError4#0)
                               else (var v1#0, ctx1#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#0)): DatatypeType)): int, 
                                  $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#0)): DatatypeType)): Map; 
                                (var valueOrError5#0 := Interp.__default.InterpExpr($ly, e2#0, ctx1#2); 
                                  (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#0)
                                     then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                      Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                      valueOrError5#0)
                                     else (var v2#0, ctx2#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#0)): DatatypeType)): int, 
                                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#0)): DatatypeType)): Map; 
                                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Interp.__default.InterpBinOp(op#0, v1#0, v2#0)), $Box(ctx2#1)))))))))))))
                     else (var es#0 := AST.Expr__Raw.es(e#0); 
                      (var valueOrError6#0 := Interp.__default.InterpExprs($ly, es#0, ctx#0); 
                        (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#0)
                           then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                            Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                            valueOrError6#0)
                           else (var vs#2, ctx1#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#0)): DatatypeType)): Seq, 
                              $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#0)): DatatypeType)): Map; 
                            (if Seq#Equal(vs#2, Seq#Empty(): Seq)
                               then #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(LitInt(0)), $Box(ctx1#3))))
                               else #Utils.Result.Success($Box(#_System._tuple#2._#Make2(Seq#Index(vs#2, Seq#Length(vs#2) - 1), $Box(ctx1#3))))))))))))))));

// definition axiom for Interp.__default.InterpExpr for decreasing-related literals (revealed)
axiom {:id "id928"} (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  {:weight 3} { Interp.__default.InterpExpr($LS($ly), Lit(e#0), ctx#0) } 
  Interp.__default.InterpExpr#canCall(Lit(e#0), ctx#0)
       || ($Is(e#0, Tclass.AST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!Lit(AST.Expr__Raw.Var_q(Lit(e#0)))
         ==> 
        !Lit(AST.Expr__Raw.Literal_q(Lit(e#0)))
         ==> (Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (var body#3 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
              (var bvals#3 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                (var bvars#3 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                  Interp.__default.InterpExprs#canCall(bvals#3, ctx#0)
                     && (var valueOrError0#3 := Interp.__default.InterpExprs($LS($ly), bvals#3, ctx#0); 
                      Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#3)
                         && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#3)
                           ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                            Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                            valueOrError0#3))
                         && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#3)
                           ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#3)
                             && (var vs#9, ctx1#12 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#3)): DatatypeType)): Seq, 
                                $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#3)): DatatypeType)): Map; 
                              Interp.__default.VarsAndValuesToContext#canCall(bvars#3, vs#9)
                                 && (var bindings#6 := Interp.__default.VarsAndValuesToContext($LS($LZ), bvars#3, vs#9); 
                                  (var ctx2#6 := Map#Merge(ctx1#12, bindings#6); 
                                    Interp.__default.InterpExpr#canCall(body#3, ctx2#6)
                                       && (var valueOrError1#3 := Interp.__default.InterpExpr($LS($ly), body#3, ctx2#6); 
                                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#3)
                                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#3)
                                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                              valueOrError1#3))
                                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#3)
                                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#3))))))))))))
           && (!Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (var avals#3 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#3 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    Interp.__default.InterpExprs#canCall(avals#3, ctx#0)
                       && (var valueOrError2#3 := Interp.__default.InterpExprs($LS($ly), avals#3, ctx#0); 
                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#3)
                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#3)
                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              valueOrError2#3))
                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#3)
                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#3)
                               && (var vs#10 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#3)): DatatypeType)): Seq; 
                                Interp.__default.VarsAndValuesToContext#canCall(avars#3, vs#10)))))))
               && (!Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (var els#3 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#3 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#3 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          Interp.__default.InterpExpr#canCall(cond#3, ctx#0)
                             && (var valueOrError3#3 := Interp.__default.InterpExpr($LS($ly), cond#3, ctx#0); 
                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#3)
                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#3)
                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError3#3))
                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#3)
                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#3)
                                     && (var condv#3, ctx_cond#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#3)): DatatypeType)): int, 
                                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#3)): DatatypeType)): Map; 
                                      (condv#3 != 0 ==> Interp.__default.InterpExpr#canCall(thn#3, ctx_cond#3))
                                         && (condv#3 == 0 ==> Interp.__default.InterpExpr#canCall(els#3, ctx_cond#3)))))))))
                   && (!Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var e2#3 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                          (var e1#3 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                            (var op#3 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                              Interp.__default.InterpExpr#canCall(e1#3, ctx#0)
                                 && (var valueOrError4#3 := Interp.__default.InterpExpr($LS($ly), e1#3, ctx#0); 
                                  Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#3)
                                     && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#3)
                                       ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                        Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                        valueOrError4#3))
                                     && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#3)
                                       ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#3)
                                         && (var v1#3, ctx1#14 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#3)): DatatypeType)): int, 
                                            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#3)): DatatypeType)): Map; 
                                          Interp.__default.InterpExpr#canCall(e2#3, ctx1#14)
                                             && (var valueOrError5#3 := Interp.__default.InterpExpr($LS($ly), e2#3, ctx1#14); 
                                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#3)
                                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#3)
                                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                                    valueOrError5#3))
                                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#3)
                                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#3)
                                                     && (var v2#3 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#3)): DatatypeType)): int; 
                                                      Interp.__default.InterpBinOp#canCall(op#3, v1#3, v2#3)))))))))))
                       && (!Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var es#3 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                          Interp.__default.InterpExprs#canCall(es#3, ctx#0)
                             && (var valueOrError6#3 := Interp.__default.InterpExprs($LS($ly), es#3, ctx#0); 
                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#3)
                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#3)
                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError6#3))
                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#3)
                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#3)))))))))
       && Interp.__default.InterpExpr($LS($ly), Lit(e#0), ctx#0)
         == (if AST.Expr__Raw.Var_q(Lit(e#0))
           then (var name#2 := Lit(AST.Expr__Raw.name(Lit(e#0))); 
            (if Set#IsMember(Map#Domain(ctx#0), $Box(name#2))
               then #Utils.Result.Success($Box(#_System._tuple#2._#Make2(Map#Elements(ctx#0)[$Box(name#2)], $Box(ctx#0))))
               else #Utils.Result.Failure()))
           else (if AST.Expr__Raw.Literal_q(Lit(e#0))
             then (var n#2 := LitInt(AST.Expr__Raw.n(Lit(e#0))); 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(n#2), $Box(ctx#0)))))
             else (if AST.Expr__Raw.Bind_q(Lit(e#0))
               then (var body#2 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                (var bvals#2 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                  (var bvars#2 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                    (var valueOrError0#2 := Interp.__default.InterpExprs($LS($ly), bvals#2, ctx#0); 
                      (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#2)
                         then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                          Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                          valueOrError0#2)
                         else (var vs#6, ctx1#8 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#2)): DatatypeType)): Seq, 
                            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#2)): DatatypeType)): Map; 
                          (var bindings#4 := Interp.__default.VarsAndValuesToContext($LS($LZ), bvars#2, vs#6); 
                            (var ctx2#4 := Map#Merge(ctx1#8, bindings#4); 
                              (var valueOrError1#2 := Interp.__default.InterpExpr($LS($ly), body#2, ctx2#4); 
                                (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#2)
                                   then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError1#2)
                                   else (var bodyv#2, ctx3#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#2)): DatatypeType)): int, 
                                      $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#2)): DatatypeType)): Map; 
                                    (var ctx4#2 := Map#Merge(ctx1#8, 
                                          Map#Subtract(ctx3#2, 
                                            Set#FromBoogieMap((lambda $y#2: Box :: $IsBox($y#2, TSeq(TChar)) && Seq#Contains(bvars#2, $y#2))))); 
                                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(bodyv#2), $Box(ctx4#2))))))))))))))))
               else (if AST.Expr__Raw.Assign_q(Lit(e#0))
                 then (var avals#2 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#2 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    (var valueOrError2#2 := Interp.__default.InterpExprs($LS($ly), avals#2, ctx#0); 
                      (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#2)
                         then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                          Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                          valueOrError2#2)
                         else (var vs#7, ctx1#9 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#2)): DatatypeType)): Seq, 
                            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#2)): DatatypeType)): Map; 
                          (var bindings#5 := Interp.__default.VarsAndValuesToContext($LS($LZ), avars#2, vs#7); 
                            #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(LitInt(0)), $Box(Map#Merge(ctx1#9, bindings#5)))))))))))
                 else (if AST.Expr__Raw.If_q(Lit(e#0))
                   then (var els#2 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                    (var thn#2 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                      (var cond#2 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                        (var valueOrError3#2 := Interp.__default.InterpExpr($LS($ly), cond#2, ctx#0); 
                          (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#2)
                             then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              valueOrError3#2)
                             else (var condv#2, ctx_cond#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#2)): DatatypeType)): int, 
                                $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#2)): DatatypeType)): Map; 
                              (if condv#2 != 0
                                 then Interp.__default.InterpExpr($LS($ly), thn#2, ctx_cond#2)
                                 else Interp.__default.InterpExpr($LS($ly), els#2, ctx_cond#2))))))))
                   else (if AST.Expr__Raw.Op_q(Lit(e#0))
                     then (var e2#2 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                      (var e1#2 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                        (var op#2 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                          (var valueOrError4#2 := Interp.__default.InterpExpr($LS($ly), e1#2, ctx#0); 
                            (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#2)
                               then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                valueOrError4#2)
                               else (var v1#2, ctx1#10 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#2)): DatatypeType)): int, 
                                  $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#2)): DatatypeType)): Map; 
                                (var valueOrError5#2 := Interp.__default.InterpExpr($LS($ly), e2#2, ctx1#10); 
                                  (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#2)
                                     then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                      Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                      valueOrError5#2)
                                     else (var v2#2, ctx2#5 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#2)): DatatypeType)): int, 
                                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#2)): DatatypeType)): Map; 
                                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Interp.__default.InterpBinOp(op#2, v1#2, v2#2)), $Box(ctx2#5)))))))))))))
                     else (var es#2 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                      (var valueOrError6#2 := Interp.__default.InterpExprs($LS($ly), es#2, ctx#0); 
                        (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#2)
                           then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                            Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                            valueOrError6#2)
                           else (var vs#8, ctx1#11 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#2)): DatatypeType)): Seq, 
                              $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#2)): DatatypeType)): Map; 
                            (if Seq#Equal(vs#8, Seq#Empty(): Seq)
                               then #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(LitInt(0)), $Box(ctx1#11))))
                               else #Utils.Result.Success($Box(#_System._tuple#2._#Make2(Seq#Index(vs#8, Seq#Length(vs#8) - 1), $Box(ctx1#11))))))))))))))));

// definition axiom for Interp.__default.InterpExpr for all literals (revealed)
axiom {:id "id929"} (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  {:weight 3} { Interp.__default.InterpExpr($LS($ly), Lit(e#0), Lit(ctx#0)) } 
  Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(ctx#0))
       || ($Is(e#0, Tclass.AST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!Lit(AST.Expr__Raw.Var_q(Lit(e#0)))
         ==> 
        !Lit(AST.Expr__Raw.Literal_q(Lit(e#0)))
         ==> (Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (var body#5 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
              (var bvals#5 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                (var bvars#5 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                  Interp.__default.InterpExprs#canCall(bvals#5, Lit(ctx#0))
                     && (var valueOrError0#5 := Interp.__default.InterpExprs($LS($ly), bvals#5, Lit(ctx#0)); 
                      Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#5)
                         && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#5)
                           ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                            Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                            valueOrError0#5))
                         && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#5)
                           ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#5)
                             && (var vs#15, ctx1#20 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#5)): DatatypeType)): Seq, 
                                $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#5)): DatatypeType)): Map; 
                              Interp.__default.VarsAndValuesToContext#canCall(bvars#5, vs#15)
                                 && (var bindings#10 := Interp.__default.VarsAndValuesToContext($LS($LZ), bvars#5, vs#15); 
                                  (var ctx2#10 := Map#Merge(ctx1#20, bindings#10); 
                                    Interp.__default.InterpExpr#canCall(body#5, ctx2#10)
                                       && (var valueOrError1#5 := Interp.__default.InterpExpr($LS($ly), body#5, ctx2#10); 
                                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#5)
                                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#5)
                                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                              valueOrError1#5))
                                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#5)
                                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#5))))))))))))
           && (!Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (var avals#5 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#5 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    Interp.__default.InterpExprs#canCall(avals#5, Lit(ctx#0))
                       && (var valueOrError2#5 := Interp.__default.InterpExprs($LS($ly), avals#5, Lit(ctx#0)); 
                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#5)
                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#5)
                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              valueOrError2#5))
                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#5)
                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#5)
                               && (var vs#16 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#5)): DatatypeType)): Seq; 
                                Interp.__default.VarsAndValuesToContext#canCall(avars#5, vs#16)))))))
               && (!Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (var els#5 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#5 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#5 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          Interp.__default.InterpExpr#canCall(cond#5, Lit(ctx#0))
                             && (var valueOrError3#5 := Interp.__default.InterpExpr($LS($ly), cond#5, Lit(ctx#0)); 
                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#5)
                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#5)
                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError3#5))
                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#5)
                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#5)
                                     && (var condv#5, ctx_cond#5 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#5)): DatatypeType)): int, 
                                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#5)): DatatypeType)): Map; 
                                      (condv#5 != 0 ==> Interp.__default.InterpExpr#canCall(thn#5, ctx_cond#5))
                                         && (condv#5 == 0 ==> Interp.__default.InterpExpr#canCall(els#5, ctx_cond#5)))))))))
                   && (!Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var e2#5 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                          (var e1#5 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                            (var op#5 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                              Interp.__default.InterpExpr#canCall(e1#5, Lit(ctx#0))
                                 && (var valueOrError4#5 := Interp.__default.InterpExpr($LS($ly), e1#5, Lit(ctx#0)); 
                                  Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#5)
                                     && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#5)
                                       ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                        Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                        valueOrError4#5))
                                     && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#5)
                                       ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#5)
                                         && (var v1#5, ctx1#22 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#5)): DatatypeType)): int, 
                                            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#5)): DatatypeType)): Map; 
                                          Interp.__default.InterpExpr#canCall(e2#5, ctx1#22)
                                             && (var valueOrError5#5 := Interp.__default.InterpExpr($LS($ly), e2#5, ctx1#22); 
                                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#5)
                                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#5)
                                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                                    valueOrError5#5))
                                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#5)
                                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#5)
                                                     && (var v2#5 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#5)): DatatypeType)): int; 
                                                      Interp.__default.InterpBinOp#canCall(op#5, v1#5, v2#5)))))))))))
                       && (!Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var es#5 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                          Interp.__default.InterpExprs#canCall(es#5, Lit(ctx#0))
                             && (var valueOrError6#5 := Interp.__default.InterpExprs($LS($ly), es#5, Lit(ctx#0)); 
                              Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#5)
                                 && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#5)
                                   ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError6#5))
                                 && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#5)
                                   ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#5)))))))))
       && Interp.__default.InterpExpr($LS($ly), Lit(e#0), Lit(ctx#0))
         == (if AST.Expr__Raw.Var_q(Lit(e#0))
           then (var name#4 := Lit(AST.Expr__Raw.name(Lit(e#0))); 
            (if Set#IsMember(Lit(Map#Domain(Lit(ctx#0))), $Box(name#4))
               then #Utils.Result.Success($Box(#_System._tuple#2._#Make2(Map#Elements(Lit(ctx#0))[$Box(name#4)], $Box(Lit(ctx#0)))))
               else #Utils.Result.Failure()))
           else (if AST.Expr__Raw.Literal_q(Lit(e#0))
             then (var n#4 := LitInt(AST.Expr__Raw.n(Lit(e#0))); 
              Lit(#Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(n#4), $Box(Lit(ctx#0))))))))
             else (if AST.Expr__Raw.Bind_q(Lit(e#0))
               then (var body#4 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                (var bvals#4 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                  (var bvars#4 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                    (var valueOrError0#4 := Lit(Interp.__default.InterpExprs($LS($ly), bvals#4, Lit(ctx#0))); 
                      (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#4)
                         then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                          Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                          valueOrError0#4)
                         else (var vs#12, ctx1#16 := $Unbox(_System.Tuple2._0(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#4)): DatatypeType))): Seq, 
                            $Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError0#4)): DatatypeType))): Map; 
                          (var bindings#8 := Interp.__default.VarsAndValuesToContext($LS($LZ), bvars#4, vs#12); 
                            (var ctx2#8 := Map#Merge(ctx1#16, bindings#8); 
                              (var valueOrError1#4 := Interp.__default.InterpExpr($LS($ly), body#4, ctx2#8); 
                                (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#4)
                                   then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                    valueOrError1#4)
                                   else (var bodyv#4, ctx3#4 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#4)): DatatypeType)): int, 
                                      $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError1#4)): DatatypeType)): Map; 
                                    (var ctx4#4 := Map#Merge(ctx1#16, 
                                          Map#Subtract(ctx3#4, 
                                            Set#FromBoogieMap((lambda $y#4: Box :: $IsBox($y#4, TSeq(TChar)) && Seq#Contains(bvars#4, $y#4))))); 
                                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(bodyv#4), $Box(ctx4#4))))))))))))))))
               else (if AST.Expr__Raw.Assign_q(Lit(e#0))
                 then (var avals#4 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#4 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    (var valueOrError2#4 := Lit(Interp.__default.InterpExprs($LS($ly), avals#4, Lit(ctx#0))); 
                      (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#4)
                         then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                          Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                          valueOrError2#4)
                         else (var vs#13, ctx1#17 := $Unbox(_System.Tuple2._0(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#4)): DatatypeType))): Seq, 
                            $Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError2#4)): DatatypeType))): Map; 
                          (var bindings#9 := Interp.__default.VarsAndValuesToContext($LS($LZ), avars#4, vs#13); 
                            #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(LitInt(0)), $Box(Map#Merge(ctx1#17, bindings#9)))))))))))
                 else (if AST.Expr__Raw.If_q(Lit(e#0))
                   then (var els#4 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                    (var thn#4 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                      (var cond#4 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                        (var valueOrError3#4 := Lit(Interp.__default.InterpExpr($LS($ly), cond#4, Lit(ctx#0))); 
                          (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#4)
                             then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                              valueOrError3#4)
                             else (var condv#4, ctx_cond#4 := $Unbox(_System.Tuple2._0(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#4)): DatatypeType))): int, 
                                $Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError3#4)): DatatypeType))): Map; 
                              (if condv#4 != 0
                                 then Interp.__default.InterpExpr($LS($ly), thn#4, ctx_cond#4)
                                 else Interp.__default.InterpExpr($LS($ly), els#4, ctx_cond#4))))))))
                   else (if AST.Expr__Raw.Op_q(Lit(e#0))
                     then (var e2#4 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                      (var e1#4 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                        (var op#4 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                          (var valueOrError4#4 := Lit(Interp.__default.InterpExpr($LS($ly), e1#4, Lit(ctx#0))); 
                            (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#4)
                               then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                valueOrError4#4)
                               else (var v1#4, ctx1#18 := $Unbox(_System.Tuple2._0(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#4)): DatatypeType))): int, 
                                  $Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError4#4)): DatatypeType))): Map; 
                                (var valueOrError5#4 := Interp.__default.InterpExpr($LS($ly), e2#4, ctx1#18); 
                                  (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#4)
                                     then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                      Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                                      valueOrError5#4)
                                     else (var v2#4, ctx2#9 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#4)): DatatypeType)): int, 
                                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError5#4)): DatatypeType)): Map; 
                                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Interp.__default.InterpBinOp(op#4, v1#4, v2#4)), $Box(ctx2#9)))))))))))))
                     else (var es#4 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                      (var valueOrError6#4 := Lit(Interp.__default.InterpExprs($LS($ly), es#4, Lit(ctx#0))); 
                        (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#4)
                           then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                            Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                            valueOrError6#4)
                           else (var vs#14, ctx1#19 := $Unbox(_System.Tuple2._0(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#4)): DatatypeType))): Seq, 
                              $Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError6#4)): DatatypeType))): Map; 
                            (if Seq#Equal(vs#14, Seq#Empty(): Seq)
                               then #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(LitInt(0)), $Box(ctx1#19))))
                               else #Utils.Result.Success($Box(#_System._tuple#2._#Make2(Seq#Index(vs#14, Seq#Length(vs#14) - 1), $Box(ctx1#19))))))))))))))));

// function declaration for Interp._default.InterpExprs
function Interp.__default.InterpExprs($ly: LayerType, es#0: Seq, ctx#0: Map) : DatatypeType;

function Interp.__default.InterpExprs#canCall(es#0: Seq, ctx#0: Map) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, es#0: Seq, ctx#0: Map :: 
  { Interp.__default.InterpExprs($LS($ly), es#0, ctx#0) } 
  Interp.__default.InterpExprs($LS($ly), es#0, ctx#0)
     == Interp.__default.InterpExprs($ly, es#0, ctx#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, es#0: Seq, ctx#0: Map :: 
  { Interp.__default.InterpExprs(AsFuelBottom($ly), es#0, ctx#0) } 
  Interp.__default.InterpExprs($ly, es#0, ctx#0)
     == Interp.__default.InterpExprs($LZ, es#0, ctx#0));

// consequence axiom for Interp.__default.InterpExprs
axiom (forall $ly: LayerType, es#0: Seq, ctx#0: Map :: 
  { Interp.__default.InterpExprs($ly, es#0, ctx#0) } 
  Interp.__default.InterpExprs#canCall(es#0, ctx#0)
       || ($Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (Utils.Result.Success_q(Interp.__default.InterpExprs($ly, es#0, ctx#0))
         ==> Seq#Length($Unbox(_System.Tuple2._0($Unbox(Utils.Result.value(Interp.__default.InterpExprs($ly, es#0, ctx#0))): DatatypeType)): Seq)
           == Seq#Length(es#0))
       && $Is(Interp.__default.InterpExprs($ly, es#0, ctx#0), 
        Tclass.Utils.Result(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)))));

function Interp.__default.InterpExprs#requires(LayerType, Seq, Map) : bool;

// #requires axiom for Interp.__default.InterpExprs
axiom (forall $ly: LayerType, es#0: Seq, ctx#0: Map :: 
  { Interp.__default.InterpExprs#requires($ly, es#0, ctx#0) } 
  $Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(ctx#0, TMap(TSeq(TChar), TInt))
     ==> Interp.__default.InterpExprs#requires($ly, es#0, ctx#0) == true);

// definition axiom for Interp.__default.InterpExprs (revealed)
axiom {:id "id930"} (forall $ly: LayerType, es#0: Seq, ctx#0: Map :: 
  { Interp.__default.InterpExprs($LS($ly), es#0, ctx#0) } 
  Interp.__default.InterpExprs#canCall(es#0, ctx#0)
       || ($Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
         ==> Interp.__default.InterpExpr#canCall($Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType, ctx#0)
           && (var valueOrError0#0 := Interp.__default.InterpExpr($ly, $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType, ctx#0); 
            Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)
               && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)
                 ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                  Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                  valueOrError0#0))
               && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)
                 ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)
                   && (var ctx1#0 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)): DatatypeType)): Map; 
                    Interp.__default.InterpExprs#canCall(Seq#Drop(es#0, LitInt(1)), ctx1#0)
                       && (var valueOrError1#0 := Interp.__default.InterpExprs($ly, Seq#Drop(es#0, LitInt(1)), ctx1#0); 
                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#0)
                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#0)
                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              valueOrError1#0))
                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#0)
                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#0)))))))
       && Interp.__default.InterpExprs($LS($ly), es#0, ctx#0)
         == (if Seq#Equal(es#0, Seq#Empty(): Seq)
           then #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(ctx#0))))
           else (var valueOrError0#0 := Interp.__default.InterpExpr($ly, $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType, ctx#0); 
            (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)
               then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                valueOrError0#0)
               else (var v#0, ctx1#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)): DatatypeType)): int, 
                  $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#0)): DatatypeType)): Map; 
                (var valueOrError1#0 := Interp.__default.InterpExprs($ly, Seq#Drop(es#0, LitInt(1)), ctx1#0); 
                  (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#0)
                     then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                      Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                      valueOrError1#0)
                     else (var vs#0, ctx2#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#0)): DatatypeType)): Seq, 
                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#0)): DatatypeType)): Map; 
                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(v#0)), vs#0)), $Box(ctx2#0))))))))))));

// definition axiom for Interp.__default.InterpExprs for decreasing-related literals (revealed)
axiom {:id "id931"} (forall $ly: LayerType, es#0: Seq, ctx#0: Map :: 
  {:weight 3} { Interp.__default.InterpExprs($LS($ly), Lit(es#0), ctx#0) } 
  Interp.__default.InterpExprs#canCall(Lit(es#0), ctx#0)
       || ($Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
         ==> Interp.__default.InterpExpr#canCall($Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, ctx#0)
           && (var valueOrError0#1 := Interp.__default.InterpExpr($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, ctx#0); 
            Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)
               && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)
                 ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                  Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                  valueOrError0#1))
               && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)
                 ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)
                   && (var ctx1#1 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)): DatatypeType)): Map; 
                    Interp.__default.InterpExprs#canCall(Lit(Seq#Drop(Lit(es#0), LitInt(1))), ctx1#1)
                       && (var valueOrError1#1 := Interp.__default.InterpExprs($LS($ly), Lit(Seq#Drop(Lit(es#0), LitInt(1))), ctx1#1); 
                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#1)
                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#1)
                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              valueOrError1#1))
                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#1)
                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#1)))))))
       && Interp.__default.InterpExprs($LS($ly), Lit(es#0), ctx#0)
         == (if Seq#Equal(es#0, Seq#Empty(): Seq)
           then #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(ctx#0))))
           else (var valueOrError0#1 := Interp.__default.InterpExpr($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, ctx#0); 
            (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)
               then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                valueOrError0#1)
               else (var v#1, ctx1#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)): DatatypeType)): int, 
                  $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#1)): DatatypeType)): Map; 
                (var valueOrError1#1 := Interp.__default.InterpExprs($LS($ly), Lit(Seq#Drop(Lit(es#0), LitInt(1))), ctx1#1); 
                  (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#1)
                     then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                      Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                      valueOrError1#1)
                     else (var vs#1, ctx2#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#1)): DatatypeType)): Seq, 
                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#1)): DatatypeType)): Map; 
                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(v#1)), vs#1)), $Box(ctx2#1))))))))))));

// definition axiom for Interp.__default.InterpExprs for all literals (revealed)
axiom {:id "id932"} (forall $ly: LayerType, es#0: Seq, ctx#0: Map :: 
  {:weight 3} { Interp.__default.InterpExprs($LS($ly), Lit(es#0), Lit(ctx#0)) } 
  Interp.__default.InterpExprs#canCall(Lit(es#0), Lit(ctx#0))
       || ($Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
         ==> Interp.__default.InterpExpr#canCall($Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, Lit(ctx#0))
           && (var valueOrError0#2 := Interp.__default.InterpExpr($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, Lit(ctx#0)); 
            Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)
               && (Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)
                 ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                  Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                  valueOrError0#2))
               && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)
                 ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)
                   && (var ctx1#2 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)): DatatypeType)): Map; 
                    Interp.__default.InterpExprs#canCall(Lit(Seq#Drop(Lit(es#0), LitInt(1))), ctx1#2)
                       && (var valueOrError1#2 := Interp.__default.InterpExprs($LS($ly), Lit(Seq#Drop(Lit(es#0), LitInt(1))), ctx1#2); 
                        Utils.Result.IsFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#2)
                           && (Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#2)
                             ==> Utils.Result.PropagateFailure#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                              valueOrError1#2))
                           && (!Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#2)
                             ==> Utils.Result.Extract#canCall(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#2)))))))
       && Interp.__default.InterpExprs($LS($ly), Lit(es#0), Lit(ctx#0))
         == (if Seq#Equal(es#0, Seq#Empty(): Seq)
           then #Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(ctx#0))))))
           else (var valueOrError0#2 := Interp.__default.InterpExpr($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, Lit(ctx#0)); 
            (if Utils.Result.IsFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)
               then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), 
                Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                valueOrError0#2)
               else (var v#2, ctx1#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)): DatatypeType)): int, 
                  $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TInt, TMap(TSeq(TChar), TInt)), valueOrError0#2)): DatatypeType)): Map; 
                (var valueOrError1#2 := Interp.__default.InterpExprs($LS($ly), Lit(Seq#Drop(Lit(es#0), LitInt(1))), ctx1#2); 
                  (if Utils.Result.IsFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#2)
                     then Utils.Result.PropagateFailure(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                      Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), 
                      valueOrError1#2)
                     else (var vs#2, ctx2#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#2)): DatatypeType)): Seq, 
                        $Unbox(_System.Tuple2._1($Unbox(Utils.Result.Extract(Tclass._System.Tuple2(TSeq(TInt), TMap(TSeq(TChar), TInt)), valueOrError1#2)): DatatypeType)): Map; 
                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(v#2)), vs#2)), $Box(ctx2#2))))))))))));

// function declaration for Interp._default.VarsAndValuesToContext
function Interp.__default.VarsAndValuesToContext($ly: LayerType, vars#0: Seq, values#0: Seq) : Map;

function Interp.__default.VarsAndValuesToContext#canCall(vars#0: Seq, values#0: Seq) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, vars#0: Seq, values#0: Seq :: 
  { Interp.__default.VarsAndValuesToContext($LS($ly), vars#0, values#0) } 
  Interp.__default.VarsAndValuesToContext($LS($ly), vars#0, values#0)
     == Interp.__default.VarsAndValuesToContext($ly, vars#0, values#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, vars#0: Seq, values#0: Seq :: 
  { Interp.__default.VarsAndValuesToContext(AsFuelBottom($ly), vars#0, values#0) } 
  Interp.__default.VarsAndValuesToContext($ly, vars#0, values#0)
     == Interp.__default.VarsAndValuesToContext($LZ, vars#0, values#0));

// consequence axiom for Interp.__default.VarsAndValuesToContext
axiom (forall $ly: LayerType, vars#0: Seq, values#0: Seq :: 
  { Interp.__default.VarsAndValuesToContext($ly, vars#0, values#0) } 
  Interp.__default.VarsAndValuesToContext#canCall(vars#0, values#0)
       || (
        $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(values#0, TSeq(TInt))
         && Seq#Length(vars#0) == Seq#Length(values#0))
     ==> Set#Equal(Map#Domain(Interp.__default.VarsAndValuesToContext($ly, vars#0, values#0)), 
        Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(vars#0, $y#0))))
       && $Is(Interp.__default.VarsAndValuesToContext($ly, vars#0, values#0), 
        TMap(TSeq(TChar), TInt)));

function Interp.__default.VarsAndValuesToContext#requires(LayerType, Seq, Seq) : bool;

// #requires axiom for Interp.__default.VarsAndValuesToContext
axiom (forall $ly: LayerType, vars#0: Seq, values#0: Seq :: 
  { Interp.__default.VarsAndValuesToContext#requires($ly, vars#0, values#0) } 
  $Is(vars#0, TSeq(TSeq(TChar))) && $Is(values#0, TSeq(TInt))
     ==> Interp.__default.VarsAndValuesToContext#requires($ly, vars#0, values#0)
       == 
      (Seq#Length(vars#0)
       == Seq#Length(values#0)));

// definition axiom for Interp.__default.VarsAndValuesToContext (revealed)
axiom {:id "id933"} (forall $ly: LayerType, vars#0: Seq, values#0: Seq :: 
  { Interp.__default.VarsAndValuesToContext($LS($ly), vars#0, values#0) } 
  Interp.__default.VarsAndValuesToContext#canCall(vars#0, values#0)
       || (
        $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(values#0, TSeq(TInt))
         && Seq#Length(vars#0) == Seq#Length(values#0))
     ==> (!Seq#Equal(vars#0, Seq#Empty(): Seq)
         ==> Interp.__default.VarsAndValuesToContext#canCall(Seq#Drop(vars#0, LitInt(1)), Seq#Drop(values#0, LitInt(1))))
       && Interp.__default.VarsAndValuesToContext($LS($ly), vars#0, values#0)
         == (if Seq#Equal(vars#0, Seq#Empty(): Seq)
           then Map#Empty(): Map
           else Map#Merge(Map#Build(Map#Empty(): Map, Seq#Index(vars#0, LitInt(0)), Seq#Index(values#0, LitInt(0))), 
            Interp.__default.VarsAndValuesToContext($ly, Seq#Drop(vars#0, LitInt(1)), Seq#Drop(values#0, LitInt(1))))));

// definition axiom for Interp.__default.VarsAndValuesToContext for all literals (revealed)
axiom {:id "id934"} (forall $ly: LayerType, vars#0: Seq, values#0: Seq :: 
  {:weight 3} { Interp.__default.VarsAndValuesToContext($LS($ly), Lit(vars#0), Lit(values#0)) } 
  Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), Lit(values#0))
       || (
        $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(values#0, TSeq(TInt))
         && Seq#Length(Lit(vars#0)) == Seq#Length(Lit(values#0)))
     ==> (!Seq#Equal(vars#0, Seq#Empty(): Seq)
         ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(Seq#Drop(Lit(vars#0), LitInt(1))), Lit(Seq#Drop(Lit(values#0), LitInt(1)))))
       && Interp.__default.VarsAndValuesToContext($LS($ly), Lit(vars#0), Lit(values#0))
         == (if Seq#Equal(vars#0, Seq#Empty(): Seq)
           then Map#Empty(): Map
           else Map#Merge(Map#Build(Map#Empty(): Map, 
              Seq#Index(Lit(vars#0), LitInt(0)), 
              Seq#Index(Lit(values#0), LitInt(0))), 
            Interp.__default.VarsAndValuesToContext($LS($ly), 
              Lit(Seq#Drop(Lit(vars#0), LitInt(1))), 
              Lit(Seq#Drop(Lit(values#0), LitInt(1)))))));

const unique class.Pure.__default: ClassName;

// function declaration for Pure._default.IsPure
function Pure.__default.IsPure($ly: LayerType, e#0: DatatypeType, locals#0: Set) : bool;

function Pure.__default.IsPure#canCall(e#0: DatatypeType, locals#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, locals#0: Set :: 
  { Pure.__default.IsPure($LS($ly), e#0, locals#0) } 
  Pure.__default.IsPure($LS($ly), e#0, locals#0)
     == Pure.__default.IsPure($ly, e#0, locals#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, locals#0: Set :: 
  { Pure.__default.IsPure(AsFuelBottom($ly), e#0, locals#0) } 
  Pure.__default.IsPure($ly, e#0, locals#0)
     == Pure.__default.IsPure($LZ, e#0, locals#0));

function Pure.__default.IsPure#requires(LayerType, DatatypeType, Set) : bool;

// #requires axiom for Pure.__default.IsPure
axiom (forall $ly: LayerType, e#0: DatatypeType, locals#0: Set :: 
  { Pure.__default.IsPure#requires($ly, e#0, locals#0) } 
  $Is(e#0, Tclass.AST.Expr()) && $Is(locals#0, TSet(TSeq(TChar)))
     ==> Pure.__default.IsPure#requires($ly, e#0, locals#0) == true);

// definition axiom for Pure.__default.IsPure (revealed)
axiom {:id "id935"} (forall $ly: LayerType, e#0: DatatypeType, locals#0: Set :: 
  { Pure.__default.IsPure($LS($ly), e#0, locals#0) } 
  Pure.__default.IsPure#canCall(e#0, locals#0)
       || ($Is(e#0, Tclass.AST.Expr()) && $Is(locals#0, TSet(TSeq(TChar))))
     ==> (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> (AST.Expr__Raw.Bind_q(e#0)
             ==> (var body#1 := AST.Expr__Raw.body(e#0); 
              (var bvals#1 := AST.Expr__Raw.bvals(e#0); 
                (var bvars#1 := AST.Expr__Raw.bvars(e#0); 
                  Pure.__default.IsPure__Es#canCall(bvals#1, locals#0)
                     && (Pure.__default.IsPure__Es($ly, bvals#1, locals#0)
                       ==> Pure.__default.IsPure#canCall(body#1, 
                        Set#Union(Set#FromBoogieMap((lambda $y#1: Box :: $IsBox($y#1, TSeq(TChar)) && Seq#Contains(bvars#1, $y#1))), 
                          locals#0)))))))
           && (!AST.Expr__Raw.Bind_q(e#0)
             ==> (AST.Expr__Raw.Assign_q(e#0)
                 ==> (var avals#1 := AST.Expr__Raw.avals(e#0); 
                  (var avars#1 := AST.Expr__Raw.avars(e#0); 
                    (forall x#2: Seq :: 
                        { Set#IsMember(locals#0, $Box(x#2)) } { Seq#Contains(avars#1, $Box(x#2)) } 
                        $Is(x#2, TSeq(TChar)) && Seq#Contains(avars#1, $Box(x#2))
                           ==> Set#IsMember(locals#0, $Box(x#2)))
                       ==> Pure.__default.IsPure__Es#canCall(avals#1, locals#0))))
               && (!AST.Expr__Raw.Assign_q(e#0)
                 ==> (AST.Expr__Raw.If_q(e#0)
                     ==> (var els#1 := AST.Expr__Raw.els(e#0); 
                      (var thn#1 := AST.Expr__Raw.thn(e#0); 
                        (var cond#1 := AST.Expr__Raw.cond(e#0); 
                          Pure.__default.IsPure#canCall(cond#1, locals#0)
                             && (Pure.__default.IsPure($ly, cond#1, locals#0)
                               ==> Pure.__default.IsPure#canCall(thn#1, locals#0)
                                 && (Pure.__default.IsPure($ly, thn#1, locals#0)
                                   ==> Pure.__default.IsPure#canCall(els#1, locals#0)))))))
                   && (!AST.Expr__Raw.If_q(e#0)
                     ==> (AST.Expr__Raw.Op_q(e#0)
                         ==> (var oe2#1 := AST.Expr__Raw.oe2(e#0); 
                          (var oe1#1 := AST.Expr__Raw.oe1(e#0); 
                            Pure.__default.IsPure#canCall(oe1#1, locals#0)
                               && (Pure.__default.IsPure($ly, oe1#1, locals#0)
                                 ==> Pure.__default.IsPure#canCall(oe2#1, locals#0)))))
                       && (!AST.Expr__Raw.Op_q(e#0)
                         ==> (var es#1 := AST.Expr__Raw.es(e#0); 
                          Pure.__default.IsPure__Es#canCall(es#1, locals#0)))))))
       && Pure.__default.IsPure($LS($ly), e#0, locals#0)
         == (if AST.Expr__Raw.Var_q(e#0)
           then (var name#0 := AST.Expr__Raw.name(e#0); Lit(true))
           else (if AST.Expr__Raw.Literal_q(e#0)
             then (var n#0 := AST.Expr__Raw.n(e#0); Lit(true))
             else (if AST.Expr__Raw.Bind_q(e#0)
               then (var body#0 := AST.Expr__Raw.body(e#0); 
                (var bvals#0 := AST.Expr__Raw.bvals(e#0); 
                  (var bvars#0 := AST.Expr__Raw.bvars(e#0); 
                    Pure.__default.IsPure__Es($ly, bvals#0, locals#0)
                       && Pure.__default.IsPure($ly, 
                        body#0, 
                        Set#Union(Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(bvars#0, $y#0))), 
                          locals#0)))))
               else (if AST.Expr__Raw.Assign_q(e#0)
                 then (var avals#0 := AST.Expr__Raw.avals(e#0); 
                  (var avars#0 := AST.Expr__Raw.avars(e#0); 
                    (forall x#0: Seq :: 
                        { Set#IsMember(locals#0, $Box(x#0)) } { Seq#Contains(avars#0, $Box(x#0)) } 
                        $Is(x#0, TSeq(TChar)) && Seq#Contains(avars#0, $Box(x#0))
                           ==> Set#IsMember(locals#0, $Box(x#0)))
                       && Pure.__default.IsPure__Es($ly, avals#0, locals#0)))
                 else (if AST.Expr__Raw.If_q(e#0)
                   then (var els#0 := AST.Expr__Raw.els(e#0); 
                    (var thn#0 := AST.Expr__Raw.thn(e#0); 
                      (var cond#0 := AST.Expr__Raw.cond(e#0); 
                        Pure.__default.IsPure($ly, cond#0, locals#0)
                           && Pure.__default.IsPure($ly, thn#0, locals#0)
                           && Pure.__default.IsPure($ly, els#0, locals#0))))
                   else (if AST.Expr__Raw.Op_q(e#0)
                     then (var oe2#0 := AST.Expr__Raw.oe2(e#0); 
                      (var oe1#0 := AST.Expr__Raw.oe1(e#0); 
                        (var op#0 := AST.Expr__Raw.op(e#0); 
                          Pure.__default.IsPure($ly, oe1#0, locals#0)
                             && Pure.__default.IsPure($ly, oe2#0, locals#0))))
                     else (var es#0 := AST.Expr__Raw.es(e#0); 
                      Pure.__default.IsPure__Es($ly, es#0, locals#0)))))))));

// definition axiom for Pure.__default.IsPure for decreasing-related literals (revealed)
axiom {:id "id936"} (forall $ly: LayerType, e#0: DatatypeType, locals#0: Set :: 
  {:weight 3} { Pure.__default.IsPure($LS($ly), Lit(e#0), locals#0) } 
  Pure.__default.IsPure#canCall(Lit(e#0), locals#0)
       || ($Is(e#0, Tclass.AST.Expr()) && $Is(locals#0, TSet(TSeq(TChar))))
     ==> (!Lit(AST.Expr__Raw.Var_q(Lit(e#0)))
         ==> 
        !Lit(AST.Expr__Raw.Literal_q(Lit(e#0)))
         ==> (Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (var body#3 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
              (var bvals#3 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                (var bvars#3 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                  Pure.__default.IsPure__Es#canCall(bvals#3, locals#0)
                     && (Pure.__default.IsPure__Es($LS($ly), bvals#3, locals#0)
                       ==> Pure.__default.IsPure#canCall(body#3, 
                        Set#Union(Set#FromBoogieMap((lambda $y#3: Box :: $IsBox($y#3, TSeq(TChar)) && Seq#Contains(bvars#3, $y#3))), 
                          locals#0)))))))
           && (!Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (var avals#3 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#3 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    (forall x#5: Seq :: 
                        { Set#IsMember(locals#0, $Box(x#5)) } { Seq#Contains(avars#3, $Box(x#5)) } 
                        $Is(x#5, TSeq(TChar)) && Seq#Contains(avars#3, $Box(x#5))
                           ==> Set#IsMember(locals#0, $Box(x#5)))
                       ==> Pure.__default.IsPure__Es#canCall(avals#3, locals#0))))
               && (!Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (var els#3 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#3 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#3 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          Pure.__default.IsPure#canCall(cond#3, locals#0)
                             && (Pure.__default.IsPure($LS($ly), cond#3, locals#0)
                               ==> Pure.__default.IsPure#canCall(thn#3, locals#0)
                                 && (Pure.__default.IsPure($LS($ly), thn#3, locals#0)
                                   ==> Pure.__default.IsPure#canCall(els#3, locals#0)))))))
                   && (!Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var oe2#3 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                          (var oe1#3 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                            Pure.__default.IsPure#canCall(oe1#3, locals#0)
                               && (Pure.__default.IsPure($LS($ly), oe1#3, locals#0)
                                 ==> Pure.__default.IsPure#canCall(oe2#3, locals#0)))))
                       && (!Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var es#3 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                          Pure.__default.IsPure__Es#canCall(es#3, locals#0)))))))
       && Pure.__default.IsPure($LS($ly), Lit(e#0), locals#0)
         == (if AST.Expr__Raw.Var_q(Lit(e#0))
           then (var name#2 := Lit(AST.Expr__Raw.name(Lit(e#0))); Lit(true))
           else (if AST.Expr__Raw.Literal_q(Lit(e#0))
             then (var n#2 := LitInt(AST.Expr__Raw.n(Lit(e#0))); Lit(true))
             else (if AST.Expr__Raw.Bind_q(Lit(e#0))
               then (var body#2 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                (var bvals#2 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                  (var bvars#2 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                    Pure.__default.IsPure__Es($LS($ly), bvals#2, locals#0)
                       && Pure.__default.IsPure($LS($ly), 
                        body#2, 
                        Set#Union(Set#FromBoogieMap((lambda $y#2: Box :: $IsBox($y#2, TSeq(TChar)) && Seq#Contains(bvars#2, $y#2))), 
                          locals#0)))))
               else (if AST.Expr__Raw.Assign_q(Lit(e#0))
                 then (var avals#2 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#2 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    (forall x#3: Seq :: 
                        { Set#IsMember(locals#0, $Box(x#3)) } { Seq#Contains(avars#2, $Box(x#3)) } 
                        $Is(x#3, TSeq(TChar)) && Seq#Contains(avars#2, $Box(x#3))
                           ==> Set#IsMember(locals#0, $Box(x#3)))
                       && Pure.__default.IsPure__Es($LS($ly), avals#2, locals#0)))
                 else (if AST.Expr__Raw.If_q(Lit(e#0))
                   then (var els#2 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                    (var thn#2 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                      (var cond#2 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                        Pure.__default.IsPure($LS($ly), cond#2, locals#0)
                           && Pure.__default.IsPure($LS($ly), thn#2, locals#0)
                           && Pure.__default.IsPure($LS($ly), els#2, locals#0))))
                   else (if AST.Expr__Raw.Op_q(Lit(e#0))
                     then (var oe2#2 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                      (var oe1#2 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                        (var op#2 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                          Pure.__default.IsPure($LS($ly), oe1#2, locals#0)
                             && Pure.__default.IsPure($LS($ly), oe2#2, locals#0))))
                     else (var es#2 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                      Pure.__default.IsPure__Es($LS($ly), es#2, locals#0)))))))));

// definition axiom for Pure.__default.IsPure for all literals (revealed)
axiom {:id "id937"} (forall $ly: LayerType, e#0: DatatypeType, locals#0: Set :: 
  {:weight 3} { Pure.__default.IsPure($LS($ly), Lit(e#0), Lit(locals#0)) } 
  Pure.__default.IsPure#canCall(Lit(e#0), Lit(locals#0))
       || ($Is(e#0, Tclass.AST.Expr()) && $Is(locals#0, TSet(TSeq(TChar))))
     ==> (!Lit(AST.Expr__Raw.Var_q(Lit(e#0)))
         ==> 
        !Lit(AST.Expr__Raw.Literal_q(Lit(e#0)))
         ==> (Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (var body#5 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
              (var bvals#5 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                (var bvars#5 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                  Pure.__default.IsPure__Es#canCall(bvals#5, Lit(locals#0))
                     && (Pure.__default.IsPure__Es($LS($ly), bvals#5, Lit(locals#0))
                       ==> Pure.__default.IsPure#canCall(body#5, 
                        Set#Union(Set#FromBoogieMap((lambda $y#5: Box :: $IsBox($y#5, TSeq(TChar)) && Seq#Contains(bvars#5, $y#5))), 
                          locals#0)))))))
           && (!Lit(AST.Expr__Raw.Bind_q(Lit(e#0)))
             ==> (Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (var avals#5 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#5 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    (forall x#8: Seq :: 
                        { Set#IsMember(locals#0, $Box(x#8)) } { Seq#Contains(avars#5, $Box(x#8)) } 
                        $Is(x#8, TSeq(TChar)) && Seq#Contains(avars#5, $Box(x#8))
                           ==> Set#IsMember(Lit(locals#0), $Box(x#8)))
                       ==> Pure.__default.IsPure__Es#canCall(avals#5, Lit(locals#0)))))
               && (!Lit(AST.Expr__Raw.Assign_q(Lit(e#0)))
                 ==> (Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (var els#5 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                      (var thn#5 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                        (var cond#5 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                          Pure.__default.IsPure#canCall(cond#5, Lit(locals#0))
                             && (Pure.__default.IsPure($LS($ly), cond#5, Lit(locals#0))
                               ==> Pure.__default.IsPure#canCall(thn#5, Lit(locals#0))
                                 && (Pure.__default.IsPure($LS($ly), thn#5, Lit(locals#0))
                                   ==> Pure.__default.IsPure#canCall(els#5, Lit(locals#0))))))))
                   && (!Lit(AST.Expr__Raw.If_q(Lit(e#0)))
                     ==> (Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var oe2#5 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                          (var oe1#5 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                            Pure.__default.IsPure#canCall(oe1#5, Lit(locals#0))
                               && (Pure.__default.IsPure($LS($ly), oe1#5, Lit(locals#0))
                                 ==> Pure.__default.IsPure#canCall(oe2#5, Lit(locals#0))))))
                       && (!Lit(AST.Expr__Raw.Op_q(Lit(e#0)))
                         ==> (var es#5 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                          Pure.__default.IsPure__Es#canCall(es#5, Lit(locals#0))))))))
       && Pure.__default.IsPure($LS($ly), Lit(e#0), Lit(locals#0))
         == (if AST.Expr__Raw.Var_q(Lit(e#0))
           then (var name#4 := Lit(AST.Expr__Raw.name(Lit(e#0))); Lit(true))
           else (if AST.Expr__Raw.Literal_q(Lit(e#0))
             then (var n#4 := LitInt(AST.Expr__Raw.n(Lit(e#0))); Lit(true))
             else (if AST.Expr__Raw.Bind_q(Lit(e#0))
               then (var body#4 := Lit(AST.Expr__Raw.body(Lit(e#0))); 
                (var bvals#4 := Lit(AST.Expr__Raw.bvals(Lit(e#0))); 
                  (var bvars#4 := Lit(AST.Expr__Raw.bvars(Lit(e#0))); 
                    Pure.__default.IsPure__Es($LS($ly), bvals#4, Lit(locals#0))
                       && Pure.__default.IsPure($LS($ly), 
                        body#4, 
                        Set#Union(Set#FromBoogieMap((lambda $y#4: Box :: $IsBox($y#4, TSeq(TChar)) && Seq#Contains(bvars#4, $y#4))), 
                          locals#0)))))
               else (if AST.Expr__Raw.Assign_q(Lit(e#0))
                 then (var avals#4 := Lit(AST.Expr__Raw.avals(Lit(e#0))); 
                  (var avars#4 := Lit(AST.Expr__Raw.avars(Lit(e#0))); 
                    (forall x#6: Seq :: 
                        { Set#IsMember(locals#0, $Box(x#6)) } { Seq#Contains(avars#4, $Box(x#6)) } 
                        $Is(x#6, TSeq(TChar)) && Seq#Contains(avars#4, $Box(x#6))
                           ==> Set#IsMember(Lit(locals#0), $Box(x#6)))
                       && Pure.__default.IsPure__Es($LS($ly), avals#4, Lit(locals#0))))
                 else (if AST.Expr__Raw.If_q(Lit(e#0))
                   then (var els#4 := Lit(AST.Expr__Raw.els(Lit(e#0))); 
                    (var thn#4 := Lit(AST.Expr__Raw.thn(Lit(e#0))); 
                      (var cond#4 := Lit(AST.Expr__Raw.cond(Lit(e#0))); 
                        Lit(Pure.__default.IsPure($LS($ly), cond#4, Lit(locals#0))
                             && Pure.__default.IsPure($LS($ly), thn#4, Lit(locals#0))
                             && Pure.__default.IsPure($LS($ly), els#4, Lit(locals#0))))))
                   else (if AST.Expr__Raw.Op_q(Lit(e#0))
                     then (var oe2#4 := Lit(AST.Expr__Raw.oe2(Lit(e#0))); 
                      (var oe1#4 := Lit(AST.Expr__Raw.oe1(Lit(e#0))); 
                        (var op#4 := Lit(AST.Expr__Raw.op(Lit(e#0))); 
                          Lit(Pure.__default.IsPure($LS($ly), oe1#4, Lit(locals#0))
                               && Pure.__default.IsPure($LS($ly), oe2#4, Lit(locals#0))))))
                     else (var es#4 := Lit(AST.Expr__Raw.es(Lit(e#0))); 
                      Lit(Pure.__default.IsPure__Es($LS($ly), es#4, Lit(locals#0)))))))))));

// function declaration for Pure._default.IsPure_Es
function Pure.__default.IsPure__Es($ly: LayerType, es#0: Seq, locals#0: Set) : bool;

function Pure.__default.IsPure__Es#canCall(es#0: Seq, locals#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, es#0: Seq, locals#0: Set :: 
  { Pure.__default.IsPure__Es($LS($ly), es#0, locals#0) } 
  Pure.__default.IsPure__Es($LS($ly), es#0, locals#0)
     == Pure.__default.IsPure__Es($ly, es#0, locals#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, es#0: Seq, locals#0: Set :: 
  { Pure.__default.IsPure__Es(AsFuelBottom($ly), es#0, locals#0) } 
  Pure.__default.IsPure__Es($ly, es#0, locals#0)
     == Pure.__default.IsPure__Es($LZ, es#0, locals#0));

function Pure.__default.IsPure__Es#requires(LayerType, Seq, Set) : bool;

// #requires axiom for Pure.__default.IsPure__Es
axiom (forall $ly: LayerType, es#0: Seq, locals#0: Set :: 
  { Pure.__default.IsPure__Es#requires($ly, es#0, locals#0) } 
  $Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(locals#0, TSet(TSeq(TChar)))
     ==> Pure.__default.IsPure__Es#requires($ly, es#0, locals#0) == true);

// definition axiom for Pure.__default.IsPure__Es (revealed)
axiom {:id "id938"} (forall $ly: LayerType, es#0: Seq, locals#0: Set :: 
  { Pure.__default.IsPure__Es($LS($ly), es#0, locals#0) } 
  Pure.__default.IsPure__Es#canCall(es#0, locals#0)
       || ($Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(locals#0, TSet(TSeq(TChar))))
     ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
         ==> Pure.__default.IsPure#canCall($Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType, locals#0)
           && (Pure.__default.IsPure($ly, $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType, locals#0)
             ==> Pure.__default.IsPure__Es#canCall(Seq#Drop(es#0, LitInt(1)), locals#0)))
       && Pure.__default.IsPure__Es($LS($ly), es#0, locals#0)
         == (if Seq#Equal(es#0, Seq#Empty(): Seq)
           then true
           else Pure.__default.IsPure($ly, $Unbox(Seq#Index(es#0, LitInt(0))): DatatypeType, locals#0)
             && Pure.__default.IsPure__Es($ly, Seq#Drop(es#0, LitInt(1)), locals#0)));

// definition axiom for Pure.__default.IsPure__Es for decreasing-related literals (revealed)
axiom {:id "id939"} (forall $ly: LayerType, es#0: Seq, locals#0: Set :: 
  {:weight 3} { Pure.__default.IsPure__Es($LS($ly), Lit(es#0), locals#0) } 
  Pure.__default.IsPure__Es#canCall(Lit(es#0), locals#0)
       || ($Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(locals#0, TSet(TSeq(TChar))))
     ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
         ==> Pure.__default.IsPure#canCall($Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, locals#0)
           && (Pure.__default.IsPure($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, locals#0)
             ==> Pure.__default.IsPure__Es#canCall(Lit(Seq#Drop(Lit(es#0), LitInt(1))), locals#0)))
       && Pure.__default.IsPure__Es($LS($ly), Lit(es#0), locals#0)
         == (if Seq#Equal(es#0, Seq#Empty(): Seq)
           then true
           else Pure.__default.IsPure($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, locals#0)
             && Pure.__default.IsPure__Es($LS($ly), Lit(Seq#Drop(Lit(es#0), LitInt(1))), locals#0)));

// definition axiom for Pure.__default.IsPure__Es for all literals (revealed)
axiom {:id "id940"} (forall $ly: LayerType, es#0: Seq, locals#0: Set :: 
  {:weight 3} { Pure.__default.IsPure__Es($LS($ly), Lit(es#0), Lit(locals#0)) } 
  Pure.__default.IsPure__Es#canCall(Lit(es#0), Lit(locals#0))
       || ($Is(es#0, TSeq(Tclass.AST.Expr())) && $Is(locals#0, TSet(TSeq(TChar))))
     ==> (!Seq#Equal(es#0, Seq#Empty(): Seq)
         ==> Pure.__default.IsPure#canCall($Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, Lit(locals#0))
           && (Pure.__default.IsPure($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, Lit(locals#0))
             ==> Pure.__default.IsPure__Es#canCall(Lit(Seq#Drop(Lit(es#0), LitInt(1))), Lit(locals#0))))
       && Pure.__default.IsPure__Es($LS($ly), Lit(es#0), Lit(locals#0))
         == (if Seq#Equal(es#0, Seq#Empty(): Seq)
           then true
           else Pure.__default.IsPure($LS($ly), $Unbox(Seq#Index(Lit(es#0), LitInt(0))): DatatypeType, Lit(locals#0))
             && Pure.__default.IsPure__Es($LS($ly), Lit(Seq#Drop(Lit(es#0), LitInt(1))), Lit(locals#0))));

// function declaration for Pure._default.ResultSameCtx
function Pure.__default.ResultSameCtx(Pure._default.ResultSameCtx$V: Ty, 
    locals#0: Set, 
    ctx#0: Map, 
    res#0: DatatypeType)
   : bool;

function Pure.__default.ResultSameCtx#canCall(Pure._default.ResultSameCtx$V: Ty, 
    locals#0: Set, 
    ctx#0: Map, 
    res#0: DatatypeType)
   : bool;

function Pure.__default.ResultSameCtx#requires(Ty, Set, Map, DatatypeType) : bool;

// #requires axiom for Pure.__default.ResultSameCtx
axiom (forall Pure._default.ResultSameCtx$V: Ty, 
    locals#0: Set, 
    ctx#0: Map, 
    res#0: DatatypeType :: 
  { Pure.__default.ResultSameCtx#requires(Pure._default.ResultSameCtx$V, locals#0, ctx#0, res#0) } 
  $Is(locals#0, TSet(TSeq(TChar)))
       && $Is(ctx#0, TMap(TSeq(TChar), TInt))
       && $Is(res#0, 
        Tclass.Utils.Result(Tclass._System.Tuple2(Pure._default.ResultSameCtx$V, TMap(TSeq(TChar), TInt))))
     ==> Pure.__default.ResultSameCtx#requires(Pure._default.ResultSameCtx$V, locals#0, ctx#0, res#0)
       == true);

// definition axiom for Pure.__default.ResultSameCtx (revealed)
axiom {:id "id941"} (forall Pure._default.ResultSameCtx$V: Ty, 
    locals#0: Set, 
    ctx#0: Map, 
    res#0: DatatypeType :: 
  { Pure.__default.ResultSameCtx(Pure._default.ResultSameCtx$V, locals#0, ctx#0, res#0) } 
  Pure.__default.ResultSameCtx#canCall(Pure._default.ResultSameCtx$V, locals#0, ctx#0, res#0)
       || (
        $Is(locals#0, TSet(TSeq(TChar)))
         && $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $Is(res#0, 
          Tclass.Utils.Result(Tclass._System.Tuple2(Pure._default.ResultSameCtx$V, TMap(TSeq(TChar), TInt)))))
     ==> (Utils.Result.Success_q(res#0)
         ==> _System.Tuple2.___hMake2_q($Unbox(Utils.Result.value(res#0)): DatatypeType))
       && Pure.__default.ResultSameCtx(Pure._default.ResultSameCtx$V, locals#0, ctx#0, res#0)
         == (if Utils.Result.Success_q(res#0)
           then (var ctx'#0 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(res#0)): DatatypeType)): Map; 
            Set#Equal(Map#Domain(ctx'#0), Map#Domain(ctx#0))
               && (forall x#0: Seq :: 
                { $Unbox(Map#Elements(ctx#0)[$Box(x#0)]): int } 
                  { $Unbox(Map#Elements(ctx'#0)[$Box(x#0)]): int } 
                  { Set#IsMember(locals#0, $Box(x#0)) } 
                  { Set#IsMember(Map#Domain(ctx#0), $Box(x#0)) } 
                $Is(x#0, TSeq(TChar))
                     && 
                    Set#IsMember(Map#Domain(ctx#0), $Box(x#0))
                     && !Set#IsMember(locals#0, $Box(x#0))
                   ==> $Unbox(Map#Elements(ctx'#0)[$Box(x#0)]): int
                     == $Unbox(Map#Elements(ctx#0)[$Box(x#0)]): int))
           else true));

// definition axiom for Pure.__default.ResultSameCtx for all literals (revealed)
axiom {:id "id942"} (forall Pure._default.ResultSameCtx$V: Ty, 
    locals#0: Set, 
    ctx#0: Map, 
    res#0: DatatypeType :: 
  {:weight 3} { Pure.__default.ResultSameCtx(Pure._default.ResultSameCtx$V, Lit(locals#0), Lit(ctx#0), Lit(res#0)) } 
  Pure.__default.ResultSameCtx#canCall(Pure._default.ResultSameCtx$V, Lit(locals#0), Lit(ctx#0), Lit(res#0))
       || (
        $Is(locals#0, TSet(TSeq(TChar)))
         && $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $Is(res#0, 
          Tclass.Utils.Result(Tclass._System.Tuple2(Pure._default.ResultSameCtx$V, TMap(TSeq(TChar), TInt)))))
     ==> (Lit(Utils.Result.Success_q(Lit(res#0)))
         ==> _System.Tuple2.___hMake2_q(Lit($Unbox(Utils.Result.value(Lit(res#0))): DatatypeType)))
       && Pure.__default.ResultSameCtx(Pure._default.ResultSameCtx$V, Lit(locals#0), Lit(ctx#0), Lit(res#0))
         == (if Utils.Result.Success_q(Lit(res#0))
           then (var ctx'#2 := Lit($Unbox(_System.Tuple2._1(Lit($Unbox(Utils.Result.value(Lit(res#0))): DatatypeType))): Map); 
            Set#Equal(Map#Domain(ctx'#2), Map#Domain(Lit(ctx#0)))
               && (forall x#2: Seq :: 
                { $Unbox(Map#Elements(ctx#0)[$Box(x#2)]): int } 
                  { $Unbox(Map#Elements(ctx'#2)[$Box(x#2)]): int } 
                  { Set#IsMember(locals#0, $Box(x#2)) } 
                  { Set#IsMember(Map#Domain(ctx#0), $Box(x#2)) } 
                $Is(x#2, TSeq(TChar))
                     && 
                    Set#IsMember(Lit(Map#Domain(Lit(ctx#0))), $Box(x#2))
                     && !Set#IsMember(Lit(locals#0), $Box(x#2))
                   ==> $Unbox(Map#Elements(ctx'#2)[$Box(x#2)]): int
                     == $Unbox(Map#Elements(Lit(ctx#0))[$Box(x#2)]): int))
           else true));

// function declaration for Pure._default.ResultSameState
function Pure.__default.ResultSameState(Pure._default.ResultSameState$V: Ty, st#0: DatatypeType, res#0: DatatypeType)
   : bool;

function Pure.__default.ResultSameState#canCall(Pure._default.ResultSameState$V: Ty, st#0: DatatypeType, res#0: DatatypeType)
   : bool;

function Tclass.Pure.MState() : Ty
uses {
// Tclass.Pure.MState Tag
axiom Tag(Tclass.Pure.MState()) == Tagclass.Pure.MState
   && TagFamily(Tclass.Pure.MState()) == tytagFamily$MState;
}

const unique Tagclass.Pure.MState: TyTag;

// Box/unbox axiom for Tclass.Pure.MState
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Pure.MState()) } 
  $IsBox(bx, Tclass.Pure.MState())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Pure.MState()));

function Pure.__default.ResultSameState#requires(Ty, DatatypeType, DatatypeType) : bool;

// #requires axiom for Pure.__default.ResultSameState
axiom (forall Pure._default.ResultSameState$V: Ty, st#0: DatatypeType, res#0: DatatypeType :: 
  { Pure.__default.ResultSameState#requires(Pure._default.ResultSameState$V, st#0, res#0) } 
  $Is(st#0, Tclass.Pure.MState())
       && $Is(res#0, 
        Tclass.Utils.Result(Tclass._System.Tuple2(Pure._default.ResultSameState$V, TMap(TSeq(TChar), TInt))))
     ==> Pure.__default.ResultSameState#requires(Pure._default.ResultSameState$V, st#0, res#0)
       == true);

// definition axiom for Pure.__default.ResultSameState (revealed)
axiom {:id "id943"} (forall Pure._default.ResultSameState$V: Ty, st#0: DatatypeType, res#0: DatatypeType :: 
  { Pure.__default.ResultSameState(Pure._default.ResultSameState$V, st#0, res#0) } 
  Pure.__default.ResultSameState#canCall(Pure._default.ResultSameState$V, st#0, res#0)
       || ($Is(st#0, Tclass.Pure.MState())
         && $Is(res#0, 
          Tclass.Utils.Result(Tclass._System.Tuple2(Pure._default.ResultSameState$V, TMap(TSeq(TChar), TInt)))))
     ==> Pure.MState.MState_q(st#0)
       && Pure.MState.MState_q(st#0)
       && Pure.__default.ResultSameCtx#canCall(Pure._default.ResultSameState$V, 
        Pure.MState.locals(st#0), 
        Pure.MState.ctx(st#0), 
        res#0)
       && Pure.__default.ResultSameState(Pure._default.ResultSameState$V, st#0, res#0)
         == Pure.__default.ResultSameCtx(Pure._default.ResultSameState$V, 
          Pure.MState.locals(st#0), 
          Pure.MState.ctx(st#0), 
          res#0));

// definition axiom for Pure.__default.ResultSameState for all literals (revealed)
axiom {:id "id944"} (forall Pure._default.ResultSameState$V: Ty, st#0: DatatypeType, res#0: DatatypeType :: 
  {:weight 3} { Pure.__default.ResultSameState(Pure._default.ResultSameState$V, Lit(st#0), Lit(res#0)) } 
  Pure.__default.ResultSameState#canCall(Pure._default.ResultSameState$V, Lit(st#0), Lit(res#0))
       || ($Is(st#0, Tclass.Pure.MState())
         && $Is(res#0, 
          Tclass.Utils.Result(Tclass._System.Tuple2(Pure._default.ResultSameState$V, TMap(TSeq(TChar), TInt)))))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Pure.MState.MState_q(Lit(st#0))
       && Pure.__default.ResultSameCtx#canCall(Pure._default.ResultSameState$V, 
        Lit(Pure.MState.locals(Lit(st#0))), 
        Lit(Pure.MState.ctx(Lit(st#0))), 
        Lit(res#0))
       && Pure.__default.ResultSameState(Pure._default.ResultSameState$V, Lit(st#0), Lit(res#0))
         == Lit(Pure.__default.ResultSameCtx(Pure._default.ResultSameState$V, 
            Lit(Pure.MState.locals(Lit(st#0))), 
            Lit(Pure.MState.ctx(Lit(st#0))), 
            Lit(res#0))));

function Pure.__default.Zero() : int
uses {
axiom Pure.__default.Zero(): int == LitInt(0);
// _default.Zero: Type axiom
axiom $Is(Pure.__default.Zero(), TInt);
}

// _default.Zero: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(Pure.__default.Zero(), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(Pure.__default.Zero(), TInt, $h));

// function declaration for Pure._default.Pre
function Pure.__default.Pre(st#0: DatatypeType, e#0: DatatypeType) : bool;

function Pure.__default.Pre#canCall(st#0: DatatypeType, e#0: DatatypeType) : bool;

function Pure.__default.Pre#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for Pure.__default.Pre
axiom (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.Pre#requires(st#0, e#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr())
     ==> Pure.__default.Pre#requires(st#0, e#0) == true);

// definition axiom for Pure.__default.Pre (revealed)
axiom {:id "id945"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.Pre(st#0, e#0) } 
  Pure.__default.Pre#canCall(st#0, e#0)
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(st#0)
       && Pure.__default.IsPure#canCall(e#0, Pure.MState.locals(st#0))
       && (Pure.__default.IsPure($LS($LZ), e#0, Pure.MState.locals(st#0))
         ==> Pure.MState.MState_q(st#0) && Pure.MState.MState_q(st#0))
       && Pure.__default.Pre(st#0, e#0)
         == (Pure.__default.IsPure($LS($LZ), e#0, Pure.MState.locals(st#0))
           && Set#Subset(Pure.MState.locals(st#0), Map#Domain(Pure.MState.ctx(st#0)))));

// definition axiom for Pure.__default.Pre for all literals (revealed)
axiom {:id "id946"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  {:weight 3} { Pure.__default.Pre(Lit(st#0), Lit(e#0)) } 
  Pure.__default.Pre#canCall(Lit(st#0), Lit(e#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Pure.__default.IsPure#canCall(Lit(e#0), Lit(Pure.MState.locals(Lit(st#0))))
       && (Lit(Pure.__default.IsPure($LS($LZ), Lit(e#0), Lit(Pure.MState.locals(Lit(st#0)))))
         ==> Pure.MState.MState_q(Lit(st#0)) && Pure.MState.MState_q(Lit(st#0)))
       && Pure.__default.Pre(Lit(st#0), Lit(e#0))
         == (Pure.__default.IsPure($LS($LZ), Lit(e#0), Lit(Pure.MState.locals(Lit(st#0))))
           && Set#Subset(Pure.MState.locals(Lit(st#0)), Map#Domain(Lit(Pure.MState.ctx(Lit(st#0)))))));

// function declaration for Pure._default.PreEs
function Pure.__default.PreEs(st#0: DatatypeType, es#0: Seq) : bool;

function Pure.__default.PreEs#canCall(st#0: DatatypeType, es#0: Seq) : bool;

function Pure.__default.PreEs#requires(DatatypeType, Seq) : bool;

// #requires axiom for Pure.__default.PreEs
axiom (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.PreEs#requires(st#0, es#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> Pure.__default.PreEs#requires(st#0, es#0) == true);

// definition axiom for Pure.__default.PreEs (revealed)
axiom {:id "id947"} (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.PreEs(st#0, es#0) } 
  Pure.__default.PreEs#canCall(st#0, es#0)
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(st#0)
       && Pure.__default.IsPure__Es#canCall(es#0, Pure.MState.locals(st#0))
       && (Pure.__default.IsPure__Es($LS($LZ), es#0, Pure.MState.locals(st#0))
         ==> Pure.MState.MState_q(st#0) && Pure.MState.MState_q(st#0))
       && Pure.__default.PreEs(st#0, es#0)
         == (Pure.__default.IsPure__Es($LS($LZ), es#0, Pure.MState.locals(st#0))
           && Set#Subset(Pure.MState.locals(st#0), Map#Domain(Pure.MState.ctx(st#0)))));

// definition axiom for Pure.__default.PreEs for all literals (revealed)
axiom {:id "id948"} (forall st#0: DatatypeType, es#0: Seq :: 
  {:weight 3} { Pure.__default.PreEs(Lit(st#0), Lit(es#0)) } 
  Pure.__default.PreEs#canCall(Lit(st#0), Lit(es#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Pure.__default.IsPure__Es#canCall(Lit(es#0), Lit(Pure.MState.locals(Lit(st#0))))
       && (Lit(Pure.__default.IsPure__Es($LS($LZ), Lit(es#0), Lit(Pure.MState.locals(Lit(st#0)))))
         ==> Pure.MState.MState_q(Lit(st#0)) && Pure.MState.MState_q(Lit(st#0)))
       && Pure.__default.PreEs(Lit(st#0), Lit(es#0))
         == (Pure.__default.IsPure__Es($LS($LZ), Lit(es#0), Lit(Pure.MState.locals(Lit(st#0))))
           && Set#Subset(Pure.MState.locals(Lit(st#0)), Map#Domain(Lit(Pure.MState.ctx(Lit(st#0)))))));

// function declaration for Pure._default.P
function Pure.__default.P(st#0: DatatypeType, e#0: DatatypeType) : bool;

function Pure.__default.P#canCall(st#0: DatatypeType, e#0: DatatypeType) : bool;

function Pure.__default.P#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for Pure.__default.P
axiom (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.P#requires(st#0, e#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr())
     ==> Pure.__default.P#requires(st#0, e#0) == true);

// definition axiom for Pure.__default.P (revealed)
axiom {:id "id949"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.P(st#0, e#0) } 
  Pure.__default.P#canCall(st#0, e#0)
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(e#0, Pure.MState.ctx(st#0))
       && (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, Pure.MState.ctx(st#0)); 
        Pure.__default.Pre#canCall(st#0, e#0)
           && (Pure.__default.Pre(st#0, e#0)
             ==> Pure.__default.ResultSameState#canCall(TInt, st#0, res#0)))
       && Pure.__default.P(st#0, e#0)
         == (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, Pure.MState.ctx(st#0)); 
          Pure.__default.Pre(st#0, e#0)
             ==> Pure.__default.ResultSameState(TInt, st#0, res#0)));

// definition axiom for Pure.__default.P for decreasing-related literals (revealed)
axiom {:id "id950"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  {:weight 3} { Pure.__default.P(st#0, Lit(e#0)) } 
  Pure.__default.P#canCall(st#0, Lit(e#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Pure.MState.ctx(st#0))
       && (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Pure.MState.ctx(st#0)); 
        Pure.__default.Pre#canCall(st#0, Lit(e#0))
           && (Pure.__default.Pre(st#0, Lit(e#0))
             ==> Pure.__default.ResultSameState#canCall(TInt, st#0, res#1)))
       && Pure.__default.P(st#0, Lit(e#0))
         == (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Pure.MState.ctx(st#0)); 
          Pure.__default.Pre(st#0, Lit(e#0))
             ==> Pure.__default.ResultSameState(TInt, st#0, res#1)));

// definition axiom for Pure.__default.P for all literals (revealed)
axiom {:id "id951"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  {:weight 3} { Pure.__default.P(Lit(st#0), Lit(e#0)) } 
  Pure.__default.P#canCall(Lit(st#0), Lit(e#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))
       && (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
        Pure.__default.Pre#canCall(Lit(st#0), Lit(e#0))
           && (Lit(Pure.__default.Pre(Lit(st#0), Lit(e#0)))
             ==> Pure.__default.ResultSameState#canCall(TInt, Lit(st#0), res#2)))
       && Pure.__default.P(Lit(st#0), Lit(e#0))
         == (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
          Lit(Pure.__default.Pre(Lit(st#0), Lit(e#0))
               ==> Pure.__default.ResultSameState(TInt, Lit(st#0), res#2))));

// function declaration for Pure._default.P_Succ
function Pure.__default.P__Succ(st#0: DatatypeType, e#0: DatatypeType, st'#0: DatatypeType, v#0: int) : bool;

function Pure.__default.P__Succ#canCall(st#0: DatatypeType, e#0: DatatypeType, st'#0: DatatypeType, v#0: int) : bool;

function Pure.__default.P__Succ#requires(DatatypeType, DatatypeType, DatatypeType, int) : bool;

// #requires axiom for Pure.__default.P__Succ
axiom (forall st#0: DatatypeType, e#0: DatatypeType, st'#0: DatatypeType, v#0: int :: 
  { Pure.__default.P__Succ#requires(st#0, e#0, st'#0, v#0) } 
  $Is(st#0, Tclass.Pure.MState())
       && $Is(e#0, Tclass.AST.Expr())
       && $Is(st'#0, Tclass.Pure.MState())
     ==> Pure.__default.P__Succ#requires(st#0, e#0, st'#0, v#0) == true);

// definition axiom for Pure.__default.P__Succ (revealed)
axiom {:id "id952"} (forall st#0: DatatypeType, e#0: DatatypeType, st'#0: DatatypeType, v#0: int :: 
  { Pure.__default.P__Succ(st#0, e#0, st'#0, v#0) } 
  Pure.__default.P__Succ#canCall(st#0, e#0, st'#0, v#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(e#0, Tclass.AST.Expr())
         && $Is(st'#0, Tclass.Pure.MState()))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(e#0, Pure.MState.ctx(st#0))
       && (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, Pure.MState.ctx(st#0)); 
        Pure.__default.Pre#canCall(st#0, e#0)
           && (Pure.__default.Pre(st#0, e#0)
             ==> Pure.__default.ResultSameState#canCall(TInt, st#0, res#0)
               && (Pure.__default.ResultSameState(TInt, st#0, res#0)
                 ==> $IsA#Utils.Result(res#0)
                   && Pure.MState.MState_q(st'#0)
                   && (Utils.Result#Equal(res#0, 
                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(Pure.MState.ctx(st'#0))))))
                     ==> Pure.MState.MState_q(st'#0) && Pure.MState.MState_q(st#0)))))
       && Pure.__default.P__Succ(st#0, e#0, st'#0, v#0)
         == (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, Pure.MState.ctx(st#0)); 
          Pure.__default.Pre(st#0, e#0)
             && Pure.__default.ResultSameState(TInt, st#0, res#0)
             && Utils.Result#Equal(res#0, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(Pure.MState.ctx(st'#0))))))
             && Set#Equal(Pure.MState.locals(st'#0), Pure.MState.locals(st#0))));

// definition axiom for Pure.__default.P__Succ for decreasing-related literals (revealed)
axiom {:id "id953"} (forall st#0: DatatypeType, e#0: DatatypeType, st'#0: DatatypeType, v#0: int :: 
  {:weight 3} { Pure.__default.P__Succ(st#0, Lit(e#0), st'#0, v#0) } 
  Pure.__default.P__Succ#canCall(st#0, Lit(e#0), st'#0, v#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(e#0, Tclass.AST.Expr())
         && $Is(st'#0, Tclass.Pure.MState()))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Pure.MState.ctx(st#0))
       && (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Pure.MState.ctx(st#0)); 
        Pure.__default.Pre#canCall(st#0, Lit(e#0))
           && (Pure.__default.Pre(st#0, Lit(e#0))
             ==> Pure.__default.ResultSameState#canCall(TInt, st#0, res#1)
               && (Pure.__default.ResultSameState(TInt, st#0, res#1)
                 ==> $IsA#Utils.Result(res#1)
                   && Pure.MState.MState_q(st'#0)
                   && (Utils.Result#Equal(res#1, 
                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(Pure.MState.ctx(st'#0))))))
                     ==> Pure.MState.MState_q(st'#0) && Pure.MState.MState_q(st#0)))))
       && Pure.__default.P__Succ(st#0, Lit(e#0), st'#0, v#0)
         == (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Pure.MState.ctx(st#0)); 
          Pure.__default.Pre(st#0, Lit(e#0))
             && Pure.__default.ResultSameState(TInt, st#0, res#1)
             && Utils.Result#Equal(res#1, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(v#0), $Box(Pure.MState.ctx(st'#0))))))
             && Set#Equal(Pure.MState.locals(st'#0), Pure.MState.locals(st#0))));

// definition axiom for Pure.__default.P__Succ for all literals (revealed)
axiom {:id "id954"} (forall st#0: DatatypeType, e#0: DatatypeType, st'#0: DatatypeType, v#0: int :: 
  {:weight 3} { Pure.__default.P__Succ(Lit(st#0), Lit(e#0), Lit(st'#0), LitInt(v#0)) } 
  Pure.__default.P__Succ#canCall(Lit(st#0), Lit(e#0), Lit(st'#0), LitInt(v#0))
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(e#0, Tclass.AST.Expr())
         && $Is(st'#0, Tclass.Pure.MState()))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))
       && (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
        Pure.__default.Pre#canCall(Lit(st#0), Lit(e#0))
           && (Lit(Pure.__default.Pre(Lit(st#0), Lit(e#0)))
             ==> Pure.__default.ResultSameState#canCall(TInt, Lit(st#0), res#2)
               && (Pure.__default.ResultSameState(TInt, Lit(st#0), res#2)
                 ==> $IsA#Utils.Result(res#2)
                   && Pure.MState.MState_q(Lit(st'#0))
                   && (Utils.Result#Equal(res#2, 
                      #Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(LitInt(v#0)), $Box(Lit(Pure.MState.ctx(Lit(st'#0)))))))))
                     ==> Pure.MState.MState_q(Lit(st'#0)) && Pure.MState.MState_q(Lit(st#0))))))
       && Pure.__default.P__Succ(Lit(st#0), Lit(e#0), Lit(st'#0), LitInt(v#0))
         == (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
          Pure.__default.Pre(Lit(st#0), Lit(e#0))
             && Pure.__default.ResultSameState(TInt, Lit(st#0), res#2)
             && Utils.Result#Equal(res#2, 
              #Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(LitInt(v#0)), $Box(Lit(Pure.MState.ctx(Lit(st'#0)))))))))
             && Set#Equal(Pure.MState.locals(Lit(st'#0)), Pure.MState.locals(Lit(st#0)))));

// function declaration for Pure._default.P_Fail
function Pure.__default.P__Fail(st#0: DatatypeType, e#0: DatatypeType) : bool;

function Pure.__default.P__Fail#canCall(st#0: DatatypeType, e#0: DatatypeType) : bool;

function Pure.__default.P__Fail#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for Pure.__default.P__Fail
axiom (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.P__Fail#requires(st#0, e#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr())
     ==> Pure.__default.P__Fail#requires(st#0, e#0) == true);

// definition axiom for Pure.__default.P__Fail (revealed)
axiom {:id "id955"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.P__Fail(st#0, e#0) } 
  Pure.__default.P__Fail#canCall(st#0, e#0)
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(e#0, Pure.MState.ctx(st#0))
       && Pure.__default.Pre#canCall(st#0, e#0)
       && Pure.__default.P__Fail(st#0, e#0)
         == (var res#0 := Interp.__default.InterpExpr($LS($LZ), e#0, Pure.MState.ctx(st#0)); 
          Pure.__default.Pre(st#0, e#0) ==> Utils.Result.Failure_q(res#0)));

// definition axiom for Pure.__default.P__Fail for decreasing-related literals (revealed)
axiom {:id "id956"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  {:weight 3} { Pure.__default.P__Fail(st#0, Lit(e#0)) } 
  Pure.__default.P__Fail#canCall(st#0, Lit(e#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Pure.MState.ctx(st#0))
       && Pure.__default.Pre#canCall(st#0, Lit(e#0))
       && Pure.__default.P__Fail(st#0, Lit(e#0))
         == (var res#1 := Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Pure.MState.ctx(st#0)); 
          Pure.__default.Pre(st#0, Lit(e#0)) ==> Utils.Result.Failure_q(res#1)));

// definition axiom for Pure.__default.P__Fail for all literals (revealed)
axiom {:id "id957"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  {:weight 3} { Pure.__default.P__Fail(Lit(st#0), Lit(e#0)) } 
  Pure.__default.P__Fail#canCall(Lit(st#0), Lit(e#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr()))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))
       && Pure.__default.Pre#canCall(Lit(st#0), Lit(e#0))
       && Pure.__default.P__Fail(Lit(st#0), Lit(e#0))
         == (var res#2 := Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
          Lit(Pure.__default.Pre(Lit(st#0), Lit(e#0)) ==> Utils.Result.Failure_q(res#2))));

// function declaration for Pure._default.Pes
function Pure.__default.Pes(st#0: DatatypeType, es#0: Seq) : bool;

function Pure.__default.Pes#canCall(st#0: DatatypeType, es#0: Seq) : bool;

function Pure.__default.Pes#requires(DatatypeType, Seq) : bool;

// #requires axiom for Pure.__default.Pes
axiom (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.Pes#requires(st#0, es#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> Pure.__default.Pes#requires(st#0, es#0) == true);

// definition axiom for Pure.__default.Pes (revealed)
axiom {:id "id958"} (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.Pes(st#0, es#0) } 
  Pure.__default.Pes#canCall(st#0, es#0)
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExprs#canCall(es#0, Pure.MState.ctx(st#0))
       && (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, Pure.MState.ctx(st#0)); 
        Pure.__default.PreEs#canCall(st#0, es#0)
           && (Pure.__default.PreEs(st#0, es#0)
             ==> Pure.__default.ResultSameState#canCall(TSeq(TInt), st#0, res#0)))
       && Pure.__default.Pes(st#0, es#0)
         == (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, Pure.MState.ctx(st#0)); 
          Pure.__default.PreEs(st#0, es#0)
             ==> Pure.__default.ResultSameState(TSeq(TInt), st#0, res#0)));

// definition axiom for Pure.__default.Pes for decreasing-related literals (revealed)
axiom {:id "id959"} (forall st#0: DatatypeType, es#0: Seq :: 
  {:weight 3} { Pure.__default.Pes(st#0, Lit(es#0)) } 
  Pure.__default.Pes#canCall(st#0, Lit(es#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExprs#canCall(Lit(es#0), Pure.MState.ctx(st#0))
       && (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Pure.MState.ctx(st#0)); 
        Pure.__default.PreEs#canCall(st#0, Lit(es#0))
           && (Pure.__default.PreEs(st#0, Lit(es#0))
             ==> Pure.__default.ResultSameState#canCall(TSeq(TInt), st#0, res#1)))
       && Pure.__default.Pes(st#0, Lit(es#0))
         == (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Pure.MState.ctx(st#0)); 
          Pure.__default.PreEs(st#0, Lit(es#0))
             ==> Pure.__default.ResultSameState(TSeq(TInt), st#0, res#1)));

// definition axiom for Pure.__default.Pes for all literals (revealed)
axiom {:id "id960"} (forall st#0: DatatypeType, es#0: Seq :: 
  {:weight 3} { Pure.__default.Pes(Lit(st#0), Lit(es#0)) } 
  Pure.__default.Pes#canCall(Lit(st#0), Lit(es#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Interp.__default.InterpExprs#canCall(Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))
       && (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
        Pure.__default.PreEs#canCall(Lit(st#0), Lit(es#0))
           && (Lit(Pure.__default.PreEs(Lit(st#0), Lit(es#0)))
             ==> Pure.__default.ResultSameState#canCall(TSeq(TInt), Lit(st#0), res#2)))
       && Pure.__default.Pes(Lit(st#0), Lit(es#0))
         == (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
          Lit(Pure.__default.PreEs(Lit(st#0), Lit(es#0))
               ==> Pure.__default.ResultSameState(TSeq(TInt), Lit(st#0), res#2))));

// function declaration for Pure._default.Pes_Succ
function Pure.__default.Pes__Succ(st#0: DatatypeType, es#0: Seq, st'#0: DatatypeType, vs#0: Seq) : bool;

function Pure.__default.Pes__Succ#canCall(st#0: DatatypeType, es#0: Seq, st'#0: DatatypeType, vs#0: Seq) : bool;

function Pure.__default.Pes__Succ#requires(DatatypeType, Seq, DatatypeType, Seq) : bool;

// #requires axiom for Pure.__default.Pes__Succ
axiom (forall st#0: DatatypeType, es#0: Seq, st'#0: DatatypeType, vs#0: Seq :: 
  { Pure.__default.Pes__Succ#requires(st#0, es#0, st'#0, vs#0) } 
  $Is(st#0, Tclass.Pure.MState())
       && $Is(es#0, TSeq(Tclass.AST.Expr()))
       && $Is(st'#0, Tclass.Pure.MState())
       && $Is(vs#0, TSeq(TInt))
     ==> Pure.__default.Pes__Succ#requires(st#0, es#0, st'#0, vs#0) == true);

// definition axiom for Pure.__default.Pes__Succ (revealed)
axiom {:id "id961"} (forall st#0: DatatypeType, es#0: Seq, st'#0: DatatypeType, vs#0: Seq :: 
  { Pure.__default.Pes__Succ(st#0, es#0, st'#0, vs#0) } 
  Pure.__default.Pes__Succ#canCall(st#0, es#0, st'#0, vs#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $Is(st'#0, Tclass.Pure.MState())
         && $Is(vs#0, TSeq(TInt)))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExprs#canCall(es#0, Pure.MState.ctx(st#0))
       && (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, Pure.MState.ctx(st#0)); 
        Pure.__default.PreEs#canCall(st#0, es#0)
           && (Pure.__default.PreEs(st#0, es#0)
             ==> Pure.__default.ResultSameState#canCall(TSeq(TInt), st#0, res#0)
               && (Pure.__default.ResultSameState(TSeq(TInt), st#0, res#0)
                 ==> $IsA#Utils.Result(res#0)
                   && Pure.MState.MState_q(st'#0)
                   && (Utils.Result#Equal(res#0, 
                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(vs#0), $Box(Pure.MState.ctx(st'#0))))))
                     ==> Pure.MState.MState_q(st'#0) && Pure.MState.MState_q(st#0)))))
       && Pure.__default.Pes__Succ(st#0, es#0, st'#0, vs#0)
         == (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, Pure.MState.ctx(st#0)); 
          Pure.__default.PreEs(st#0, es#0)
             && Pure.__default.ResultSameState(TSeq(TInt), st#0, res#0)
             && Utils.Result#Equal(res#0, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(vs#0), $Box(Pure.MState.ctx(st'#0))))))
             && Set#Equal(Pure.MState.locals(st'#0), Pure.MState.locals(st#0))));

// definition axiom for Pure.__default.Pes__Succ for decreasing-related literals (revealed)
axiom {:id "id962"} (forall st#0: DatatypeType, es#0: Seq, st'#0: DatatypeType, vs#0: Seq :: 
  {:weight 3} { Pure.__default.Pes__Succ(st#0, Lit(es#0), st'#0, vs#0) } 
  Pure.__default.Pes__Succ#canCall(st#0, Lit(es#0), st'#0, vs#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $Is(st'#0, Tclass.Pure.MState())
         && $Is(vs#0, TSeq(TInt)))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExprs#canCall(Lit(es#0), Pure.MState.ctx(st#0))
       && (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Pure.MState.ctx(st#0)); 
        Pure.__default.PreEs#canCall(st#0, Lit(es#0))
           && (Pure.__default.PreEs(st#0, Lit(es#0))
             ==> Pure.__default.ResultSameState#canCall(TSeq(TInt), st#0, res#1)
               && (Pure.__default.ResultSameState(TSeq(TInt), st#0, res#1)
                 ==> $IsA#Utils.Result(res#1)
                   && Pure.MState.MState_q(st'#0)
                   && (Utils.Result#Equal(res#1, 
                      #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(vs#0), $Box(Pure.MState.ctx(st'#0))))))
                     ==> Pure.MState.MState_q(st'#0) && Pure.MState.MState_q(st#0)))))
       && Pure.__default.Pes__Succ(st#0, Lit(es#0), st'#0, vs#0)
         == (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Pure.MState.ctx(st#0)); 
          Pure.__default.PreEs(st#0, Lit(es#0))
             && Pure.__default.ResultSameState(TSeq(TInt), st#0, res#1)
             && Utils.Result#Equal(res#1, 
              #Utils.Result.Success($Box(#_System._tuple#2._#Make2($Box(vs#0), $Box(Pure.MState.ctx(st'#0))))))
             && Set#Equal(Pure.MState.locals(st'#0), Pure.MState.locals(st#0))));

// definition axiom for Pure.__default.Pes__Succ for all literals (revealed)
axiom {:id "id963"} (forall st#0: DatatypeType, es#0: Seq, st'#0: DatatypeType, vs#0: Seq :: 
  {:weight 3} { Pure.__default.Pes__Succ(Lit(st#0), Lit(es#0), Lit(st'#0), Lit(vs#0)) } 
  Pure.__default.Pes__Succ#canCall(Lit(st#0), Lit(es#0), Lit(st'#0), Lit(vs#0))
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(es#0, TSeq(Tclass.AST.Expr()))
         && $Is(st'#0, Tclass.Pure.MState())
         && $Is(vs#0, TSeq(TInt)))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Interp.__default.InterpExprs#canCall(Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))
       && (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
        Pure.__default.PreEs#canCall(Lit(st#0), Lit(es#0))
           && (Lit(Pure.__default.PreEs(Lit(st#0), Lit(es#0)))
             ==> Pure.__default.ResultSameState#canCall(TSeq(TInt), Lit(st#0), res#2)
               && (Pure.__default.ResultSameState(TSeq(TInt), Lit(st#0), res#2)
                 ==> $IsA#Utils.Result(res#2)
                   && Pure.MState.MState_q(Lit(st'#0))
                   && (Utils.Result#Equal(res#2, 
                      #Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(Lit(vs#0)), $Box(Lit(Pure.MState.ctx(Lit(st'#0)))))))))
                     ==> Pure.MState.MState_q(Lit(st'#0)) && Pure.MState.MState_q(Lit(st#0))))))
       && Pure.__default.Pes__Succ(Lit(st#0), Lit(es#0), Lit(st'#0), Lit(vs#0))
         == (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
          Pure.__default.PreEs(Lit(st#0), Lit(es#0))
             && Pure.__default.ResultSameState(TSeq(TInt), Lit(st#0), res#2)
             && Utils.Result#Equal(res#2, 
              #Utils.Result.Success($Box(Lit(#_System._tuple#2._#Make2($Box(Lit(vs#0)), $Box(Lit(Pure.MState.ctx(Lit(st'#0)))))))))
             && Set#Equal(Pure.MState.locals(Lit(st'#0)), Pure.MState.locals(Lit(st#0)))));

// function declaration for Pure._default.Pes_Fail
function Pure.__default.Pes__Fail(st#0: DatatypeType, es#0: Seq) : bool;

function Pure.__default.Pes__Fail#canCall(st#0: DatatypeType, es#0: Seq) : bool;

function Pure.__default.Pes__Fail#requires(DatatypeType, Seq) : bool;

// #requires axiom for Pure.__default.Pes__Fail
axiom (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.Pes__Fail#requires(st#0, es#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> Pure.__default.Pes__Fail#requires(st#0, es#0) == true);

// definition axiom for Pure.__default.Pes__Fail (revealed)
axiom {:id "id964"} (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.Pes__Fail(st#0, es#0) } 
  Pure.__default.Pes__Fail#canCall(st#0, es#0)
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExprs#canCall(es#0, Pure.MState.ctx(st#0))
       && Pure.__default.PreEs#canCall(st#0, es#0)
       && Pure.__default.Pes__Fail(st#0, es#0)
         == (var res#0 := Interp.__default.InterpExprs($LS($LZ), es#0, Pure.MState.ctx(st#0)); 
          Pure.__default.PreEs(st#0, es#0) ==> Utils.Result.Failure_q(res#0)));

// definition axiom for Pure.__default.Pes__Fail for decreasing-related literals (revealed)
axiom {:id "id965"} (forall st#0: DatatypeType, es#0: Seq :: 
  {:weight 3} { Pure.__default.Pes__Fail(st#0, Lit(es#0)) } 
  Pure.__default.Pes__Fail#canCall(st#0, Lit(es#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExprs#canCall(Lit(es#0), Pure.MState.ctx(st#0))
       && Pure.__default.PreEs#canCall(st#0, Lit(es#0))
       && Pure.__default.Pes__Fail(st#0, Lit(es#0))
         == (var res#1 := Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Pure.MState.ctx(st#0)); 
          Pure.__default.PreEs(st#0, Lit(es#0)) ==> Utils.Result.Failure_q(res#1)));

// definition axiom for Pure.__default.Pes__Fail for all literals (revealed)
axiom {:id "id966"} (forall st#0: DatatypeType, es#0: Seq :: 
  {:weight 3} { Pure.__default.Pes__Fail(Lit(st#0), Lit(es#0)) } 
  Pure.__default.Pes__Fail#canCall(Lit(st#0), Lit(es#0))
       || ($Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr())))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Interp.__default.InterpExprs#canCall(Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))
       && Pure.__default.PreEs#canCall(Lit(st#0), Lit(es#0))
       && Pure.__default.Pes__Fail(Lit(st#0), Lit(es#0))
         == (var res#2 := Lit(Interp.__default.InterpExprs($LS($LZ), Lit(es#0), Lit(Pure.MState.ctx(Lit(st#0))))); 
          Lit(Pure.__default.PreEs(Lit(st#0), Lit(es#0)) ==> Utils.Result.Failure_q(res#2))));

// function declaration for Pure._default.AppendValue
function Pure.__default.AppendValue(v#0: int, vs#0: Seq) : Seq;

function Pure.__default.AppendValue#canCall(v#0: int, vs#0: Seq) : bool;

// consequence axiom for Pure.__default.AppendValue
axiom (forall v#0: int, vs#0: Seq :: 
  { Pure.__default.AppendValue(v#0, vs#0) } 
  Pure.__default.AppendValue#canCall(v#0, vs#0) || $Is(vs#0, TSeq(TInt))
     ==> $Is(Pure.__default.AppendValue(v#0, vs#0), TSeq(TInt)));

function Pure.__default.AppendValue#requires(int, Seq) : bool;

// #requires axiom for Pure.__default.AppendValue
axiom (forall v#0: int, vs#0: Seq :: 
  { Pure.__default.AppendValue#requires(v#0, vs#0) } 
  $Is(vs#0, TSeq(TInt)) ==> Pure.__default.AppendValue#requires(v#0, vs#0) == true);

// definition axiom for Pure.__default.AppendValue (revealed)
axiom {:id "id967"} (forall v#0: int, vs#0: Seq :: 
  { Pure.__default.AppendValue(v#0, vs#0) } 
  Pure.__default.AppendValue#canCall(v#0, vs#0) || $Is(vs#0, TSeq(TInt))
     ==> Pure.__default.AppendValue(v#0, vs#0)
       == Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(v#0)), vs#0));

// definition axiom for Pure.__default.AppendValue for all literals (revealed)
axiom {:id "id968"} (forall v#0: int, vs#0: Seq :: 
  {:weight 3} { Pure.__default.AppendValue(LitInt(v#0), Lit(vs#0)) } 
  Pure.__default.AppendValue#canCall(LitInt(v#0), Lit(vs#0))
       || $Is(vs#0, TSeq(TInt))
     ==> Pure.__default.AppendValue(LitInt(v#0), Lit(vs#0))
       == Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(v#0))), vs#0));

function Pure.__default.NilVS() : Seq
uses {
axiom Pure.__default.NilVS(): Seq == Lit(Seq#Empty(): Seq);
// _default.NilVS: Type axiom
axiom $Is(Pure.__default.NilVS(), TSeq(TInt));
}

// _default.NilVS: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(Pure.__default.NilVS(), TSeq(TInt), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(Pure.__default.NilVS(), TSeq(TInt), $h));

// function declaration for Pure._default.VS_Last
function Pure.__default.VS__Last(vs#0: Seq) : int;

function Pure.__default.VS__Last#canCall(vs#0: Seq) : bool;

function Pure.__default.VS__Last#requires(Seq) : bool;

// #requires axiom for Pure.__default.VS__Last
axiom (forall vs#0: Seq :: 
  { Pure.__default.VS__Last#requires(vs#0) } 
  $Is(vs#0, TSeq(TInt))
     ==> Pure.__default.VS__Last#requires(vs#0)
       == !Seq#Equal(vs#0, Pure.__default.NilVS()));

// definition axiom for Pure.__default.VS__Last (revealed)
axiom {:id "id969"} (forall vs#0: Seq :: 
  { Pure.__default.VS__Last(vs#0) } 
  Pure.__default.VS__Last#canCall(vs#0)
       || ($Is(vs#0, TSeq(TInt)) && !Seq#Equal(vs#0, Pure.__default.NilVS()))
     ==> Pure.__default.VS__Last(vs#0)
       == $Unbox(Seq#Index(vs#0, Seq#Length(vs#0) - 1)): int);

// definition axiom for Pure.__default.VS__Last for all literals (revealed)
axiom {:id "id970"} (forall vs#0: Seq :: 
  {:weight 3} { Pure.__default.VS__Last(Lit(vs#0)) } 
  Pure.__default.VS__Last#canCall(Lit(vs#0))
       || ($Is(vs#0, TSeq(TInt)) && !Seq#Equal(vs#0, Pure.__default.NilVS()))
     ==> Pure.__default.VS__Last(Lit(vs#0))
       == $Unbox(Seq#Index(Lit(vs#0), Seq#Length(Lit(vs#0)) - 1)): int);

// function declaration for Pure._default.UpdateState_Pre
function Pure.__default.UpdateState__Pre(st#0: DatatypeType, vars#0: Seq, argvs#0: Seq) : bool;

function Pure.__default.UpdateState__Pre#canCall(st#0: DatatypeType, vars#0: Seq, argvs#0: Seq) : bool;

function Pure.__default.UpdateState__Pre#requires(DatatypeType, Seq, Seq) : bool;

// #requires axiom for Pure.__default.UpdateState__Pre
axiom (forall st#0: DatatypeType, vars#0: Seq, argvs#0: Seq :: 
  { Pure.__default.UpdateState__Pre#requires(st#0, vars#0, argvs#0) } 
  $Is(st#0, Tclass.Pure.MState())
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $Is(argvs#0, TSeq(TInt))
     ==> Pure.__default.UpdateState__Pre#requires(st#0, vars#0, argvs#0) == true);

// definition axiom for Pure.__default.UpdateState__Pre (revealed)
axiom {:id "id971"} (forall st#0: DatatypeType, vars#0: Seq, argvs#0: Seq :: 
  { Pure.__default.UpdateState__Pre(st#0, vars#0, argvs#0) } 
  Pure.__default.UpdateState__Pre#canCall(st#0, vars#0, argvs#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(argvs#0, TSeq(TInt)))
     ==> Pure.__default.UpdateState__Pre(st#0, vars#0, argvs#0)
       == (true && Seq#Length(vars#0) == Seq#Length(argvs#0)));

// definition axiom for Pure.__default.UpdateState__Pre for decreasing-related literals (revealed)
axiom {:id "id972"} (forall st#0: DatatypeType, vars#0: Seq, argvs#0: Seq :: 
  {:weight 3} { Pure.__default.UpdateState__Pre(st#0, Lit(vars#0), argvs#0) } 
  Pure.__default.UpdateState__Pre#canCall(st#0, Lit(vars#0), argvs#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(argvs#0, TSeq(TInt)))
     ==> Pure.__default.UpdateState__Pre(st#0, Lit(vars#0), argvs#0)
       == (true && Seq#Length(Lit(vars#0)) == Seq#Length(argvs#0)));

// definition axiom for Pure.__default.UpdateState__Pre for all literals (revealed)
axiom {:id "id973"} (forall st#0: DatatypeType, vars#0: Seq, argvs#0: Seq :: 
  {:weight 3} { Pure.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(argvs#0)) } 
  Pure.__default.UpdateState__Pre#canCall(Lit(st#0), Lit(vars#0), Lit(argvs#0))
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(argvs#0, TSeq(TInt)))
     ==> Pure.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(argvs#0))
       == (true && Seq#Length(Lit(vars#0)) == Seq#Length(Lit(argvs#0))));

// function declaration for Pure._default.AssignState
function Pure.__default.AssignState(st#0: DatatypeType, vars#0: Seq, vals#0: Seq) : DatatypeType;

function Pure.__default.AssignState#canCall(st#0: DatatypeType, vars#0: Seq, vals#0: Seq) : bool;

// consequence axiom for Pure.__default.AssignState
axiom (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  { Pure.__default.AssignState(st#0, vars#0, vals#0) } 
  Pure.__default.AssignState#canCall(st#0, vars#0, vals#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Pure.__default.UpdateState__Pre(st#0, vars#0, vals#0))
     ==> $Is(Pure.__default.AssignState(st#0, vars#0, vals#0), Tclass.Pure.MState()));

function Pure.__default.AssignState#requires(DatatypeType, Seq, Seq) : bool;

// #requires axiom for Pure.__default.AssignState
axiom (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  { Pure.__default.AssignState#requires(st#0, vars#0, vals#0) } 
  $Is(st#0, Tclass.Pure.MState())
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $Is(vals#0, TSeq(TInt))
     ==> Pure.__default.AssignState#requires(st#0, vars#0, vals#0)
       == Pure.__default.UpdateState__Pre(st#0, vars#0, vals#0));

// definition axiom for Pure.__default.AssignState (revealed)
axiom {:id "id974"} (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  { Pure.__default.AssignState(st#0, vars#0, vals#0) } 
  Pure.__default.AssignState#canCall(st#0, vars#0, vals#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Pure.__default.UpdateState__Pre(st#0, vars#0, vals#0))
     ==> Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0)
       && Pure.__default.AssignState(st#0, vars#0, vals#0)
         == (var x#0, ctx#0 := Pure.MState.locals(st#0), Pure.MState.ctx(st#0); 
          (var bindings#0 := Interp.__default.VarsAndValuesToContext($LS($LZ), vars#0, vals#0); 
            (var ctx1#0 := Map#Merge(ctx#0, bindings#0); 
              (var st'#0 := #Pure.MState.MState(x#0, ctx1#0); st'#0)))));

// definition axiom for Pure.__default.AssignState for decreasing-related literals (revealed)
axiom {:id "id975"} (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  {:weight 3} { Pure.__default.AssignState(st#0, Lit(vars#0), vals#0) } 
  Pure.__default.AssignState#canCall(st#0, Lit(vars#0), vals#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Pure.__default.UpdateState__Pre(st#0, Lit(vars#0), vals#0))
     ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), vals#0)
       && Pure.__default.AssignState(st#0, Lit(vars#0), vals#0)
         == (var x#1, ctx#1 := Pure.MState.locals(st#0), Pure.MState.ctx(st#0); 
          (var bindings#1 := Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), vals#0); 
            (var ctx1#1 := Map#Merge(ctx#1, bindings#1); 
              (var st'#1 := #Pure.MState.MState(x#1, ctx1#1); st'#1)))));

// definition axiom for Pure.__default.AssignState for all literals (revealed)
axiom {:id "id976"} (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  {:weight 3} { Pure.__default.AssignState(Lit(st#0), Lit(vars#0), Lit(vals#0)) } 
  Pure.__default.AssignState#canCall(Lit(st#0), Lit(vars#0), Lit(vals#0))
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Lit(Pure.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(vals#0))))
     ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), Lit(vals#0))
       && Pure.__default.AssignState(Lit(st#0), Lit(vars#0), Lit(vals#0))
         == (var x#2, ctx#2 := Pure.MState.locals(Lit(st#0)), Pure.MState.ctx(Lit(st#0)); 
          (var bindings#2 := Lit(Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), Lit(vals#0))); 
            (var ctx1#2 := Map#Merge(ctx#2, bindings#2); 
              (var st'#2 := #Pure.MState.MState(x#2, ctx1#2); st'#2)))));

// function declaration for Pure._default.BindStartScope
function Pure.__default.BindStartScope(st#0: DatatypeType, vars#0: Seq, vals#0: Seq) : DatatypeType;

function Pure.__default.BindStartScope#canCall(st#0: DatatypeType, vars#0: Seq, vals#0: Seq) : bool;

// consequence axiom for Pure.__default.BindStartScope
axiom (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  { Pure.__default.BindStartScope(st#0, vars#0, vals#0) } 
  Pure.__default.BindStartScope#canCall(st#0, vars#0, vals#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Pure.__default.UpdateState__Pre(st#0, vars#0, vals#0))
     ==> $Is(Pure.__default.BindStartScope(st#0, vars#0, vals#0), Tclass.Pure.MState()));

function Pure.__default.BindStartScope#requires(DatatypeType, Seq, Seq) : bool;

// #requires axiom for Pure.__default.BindStartScope
axiom (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  { Pure.__default.BindStartScope#requires(st#0, vars#0, vals#0) } 
  $Is(st#0, Tclass.Pure.MState())
       && $Is(vars#0, TSeq(TSeq(TChar)))
       && $Is(vals#0, TSeq(TInt))
     ==> Pure.__default.BindStartScope#requires(st#0, vars#0, vals#0)
       == Pure.__default.UpdateState__Pre(st#0, vars#0, vals#0));

// definition axiom for Pure.__default.BindStartScope (revealed)
axiom {:id "id977"} (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  { Pure.__default.BindStartScope(st#0, vars#0, vals#0) } 
  Pure.__default.BindStartScope#canCall(st#0, vars#0, vals#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Pure.__default.UpdateState__Pre(st#0, vars#0, vals#0))
     ==> Interp.__default.VarsAndValuesToContext#canCall(vars#0, vals#0)
       && Pure.__default.BindStartScope(st#0, vars#0, vals#0)
         == (var locals#0, ctx#0 := Pure.MState.locals(st#0), Pure.MState.ctx(st#0); 
          (var locals'#0 := Set#Union(Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(vars#0, $y#0))), 
                locals#0); 
            (var bindings#0 := Interp.__default.VarsAndValuesToContext($LS($LZ), vars#0, vals#0); 
              (var ctx1#0 := Map#Merge(ctx#0, bindings#0); 
                (var st'#0 := #Pure.MState.MState(locals'#0, ctx1#0); st'#0))))));

// definition axiom for Pure.__default.BindStartScope for decreasing-related literals (revealed)
axiom {:id "id978"} (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  {:weight 3} { Pure.__default.BindStartScope(st#0, Lit(vars#0), vals#0) } 
  Pure.__default.BindStartScope#canCall(st#0, Lit(vars#0), vals#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Pure.__default.UpdateState__Pre(st#0, Lit(vars#0), vals#0))
     ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), vals#0)
       && Pure.__default.BindStartScope(st#0, Lit(vars#0), vals#0)
         == (var locals#1, ctx#1 := Pure.MState.locals(st#0), Pure.MState.ctx(st#0); 
          (var locals'#1 := Set#Union(Set#FromBoogieMap((lambda $y#2: Box :: $IsBox($y#2, TSeq(TChar)) && Seq#Contains(vars#0, $y#2))), 
                locals#1); 
            (var bindings#1 := Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), vals#0); 
              (var ctx1#1 := Map#Merge(ctx#1, bindings#1); 
                (var st'#1 := #Pure.MState.MState(locals'#1, ctx1#1); st'#1))))));

// definition axiom for Pure.__default.BindStartScope for all literals (revealed)
axiom {:id "id979"} (forall st#0: DatatypeType, vars#0: Seq, vals#0: Seq :: 
  {:weight 3} { Pure.__default.BindStartScope(Lit(st#0), Lit(vars#0), Lit(vals#0)) } 
  Pure.__default.BindStartScope#canCall(Lit(st#0), Lit(vars#0), Lit(vals#0))
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar)))
         && $Is(vals#0, TSeq(TInt))
         && Lit(Pure.__default.UpdateState__Pre(Lit(st#0), Lit(vars#0), Lit(vals#0))))
     ==> Interp.__default.VarsAndValuesToContext#canCall(Lit(vars#0), Lit(vals#0))
       && Pure.__default.BindStartScope(Lit(st#0), Lit(vars#0), Lit(vals#0))
         == (var locals#2, ctx#2 := Pure.MState.locals(Lit(st#0)), Pure.MState.ctx(Lit(st#0)); 
          (var locals'#2 := Set#Union(Set#FromBoogieMap((lambda $y#4: Box :: $IsBox($y#4, TSeq(TChar)) && Seq#Contains(vars#0, $y#4))), 
                locals#2); 
            (var bindings#2 := Lit(Interp.__default.VarsAndValuesToContext($LS($LZ), Lit(vars#0), Lit(vals#0))); 
              (var ctx1#2 := Map#Merge(ctx#2, bindings#2); 
                (var st'#2 := #Pure.MState.MState(locals'#2, ctx1#2); st'#2))))));

// function declaration for Pure._default.BindEndScope
function Pure.__default.BindEndScope(st0#0: DatatypeType, st#0: DatatypeType, vars#0: Seq) : DatatypeType;

function Pure.__default.BindEndScope#canCall(st0#0: DatatypeType, st#0: DatatypeType, vars#0: Seq) : bool;

// consequence axiom for Pure.__default.BindEndScope
axiom (forall st0#0: DatatypeType, st#0: DatatypeType, vars#0: Seq :: 
  { Pure.__default.BindEndScope(st0#0, st#0, vars#0) } 
  Pure.__default.BindEndScope#canCall(st0#0, st#0, vars#0)
       || (
        $Is(st0#0, Tclass.Pure.MState())
         && $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar))))
     ==> $Is(Pure.__default.BindEndScope(st0#0, st#0, vars#0), Tclass.Pure.MState()));

function Pure.__default.BindEndScope#requires(DatatypeType, DatatypeType, Seq) : bool;

// #requires axiom for Pure.__default.BindEndScope
axiom (forall st0#0: DatatypeType, st#0: DatatypeType, vars#0: Seq :: 
  { Pure.__default.BindEndScope#requires(st0#0, st#0, vars#0) } 
  $Is(st0#0, Tclass.Pure.MState())
       && $Is(st#0, Tclass.Pure.MState())
       && $Is(vars#0, TSeq(TSeq(TChar)))
     ==> Pure.__default.BindEndScope#requires(st0#0, st#0, vars#0) == true);

// definition axiom for Pure.__default.BindEndScope (revealed)
axiom {:id "id980"} (forall st0#0: DatatypeType, st#0: DatatypeType, vars#0: Seq :: 
  { Pure.__default.BindEndScope(st0#0, st#0, vars#0) } 
  Pure.__default.BindEndScope#canCall(st0#0, st#0, vars#0)
       || (
        $Is(st0#0, Tclass.Pure.MState())
         && $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar))))
     ==> Pure.__default.BindEndScope(st0#0, st#0, vars#0)
       == (var x0#0, ctx0#0 := Pure.MState.locals(st0#0), Pure.MState.ctx(st0#0); 
        (var x#0, ctx#0 := Pure.MState.locals(st#0), Pure.MState.ctx(st#0); 
          (var ctx1#0 := Map#Merge(ctx0#0, 
                Map#Subtract(ctx#0, 
                  Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(vars#0, $y#0))))); 
            (var st'#0 := #Pure.MState.MState(x0#0, ctx1#0); st'#0)))));

// definition axiom for Pure.__default.BindEndScope for decreasing-related literals (revealed)
axiom {:id "id981"} (forall st0#0: DatatypeType, st#0: DatatypeType, vars#0: Seq :: 
  {:weight 3} { Pure.__default.BindEndScope(st0#0, st#0, Lit(vars#0)) } 
  Pure.__default.BindEndScope#canCall(st0#0, st#0, Lit(vars#0))
       || (
        $Is(st0#0, Tclass.Pure.MState())
         && $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar))))
     ==> Pure.__default.BindEndScope(st0#0, st#0, Lit(vars#0))
       == (var x0#1, ctx0#1 := Pure.MState.locals(st0#0), Pure.MState.ctx(st0#0); 
        (var x#2, ctx#1 := Pure.MState.locals(st#0), Pure.MState.ctx(st#0); 
          (var ctx1#1 := Map#Merge(ctx0#1, 
                Map#Subtract(ctx#1, 
                  Set#FromBoogieMap((lambda $y#2: Box :: $IsBox($y#2, TSeq(TChar)) && Seq#Contains(vars#0, $y#2))))); 
            (var st'#1 := #Pure.MState.MState(x0#1, ctx1#1); st'#1)))));

// definition axiom for Pure.__default.BindEndScope for all literals (revealed)
axiom {:id "id982"} (forall st0#0: DatatypeType, st#0: DatatypeType, vars#0: Seq :: 
  {:weight 3} { Pure.__default.BindEndScope(Lit(st0#0), Lit(st#0), Lit(vars#0)) } 
  Pure.__default.BindEndScope#canCall(Lit(st0#0), Lit(st#0), Lit(vars#0))
       || (
        $Is(st0#0, Tclass.Pure.MState())
         && $Is(st#0, Tclass.Pure.MState())
         && $Is(vars#0, TSeq(TSeq(TChar))))
     ==> Pure.__default.BindEndScope(Lit(st0#0), Lit(st#0), Lit(vars#0))
       == (var x0#2, ctx0#2 := Pure.MState.locals(Lit(st0#0)), Pure.MState.ctx(Lit(st0#0)); 
        (var x#4, ctx#2 := Pure.MState.locals(Lit(st#0)), Pure.MState.ctx(Lit(st#0)); 
          (var ctx1#2 := Map#Merge(ctx0#2, 
                Map#Subtract(ctx#2, 
                  Set#FromBoogieMap((lambda $y#4: Box :: $IsBox($y#4, TSeq(TChar)) && Seq#Contains(vars#0, $y#4))))); 
            (var st'#2 := #Pure.MState.MState(x0#2, ctx1#2); st'#2)))));

// function declaration for Pure._default.P_Step
function Pure.__default.P__Step(st#0: DatatypeType, e#0: DatatypeType) : DatatypeType;

function Pure.__default.P__Step#canCall(st#0: DatatypeType, e#0: DatatypeType) : bool;

// consequence axiom for Pure.__default.P__Step
axiom (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.P__Step(st#0, e#0) } 
  Pure.__default.P__Step#canCall(st#0, e#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(e#0, Tclass.AST.Expr())
         && 
        Pure.__default.P(st#0, e#0)
         && !Pure.__default.P__Fail(st#0, e#0))
     ==> Pure.__default.P__Succ(st#0, 
        e#0, 
        $Unbox(_System.Tuple2._0(Pure.__default.P__Step(st#0, e#0))): DatatypeType, 
        $Unbox(_System.Tuple2._1(Pure.__default.P__Step(st#0, e#0))): int)
       && $Is(Pure.__default.P__Step(st#0, e#0), 
        Tclass._System.Tuple2(Tclass.Pure.MState(), TInt)));

function Pure.__default.P__Step#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for Pure.__default.P__Step
axiom (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.P__Step#requires(st#0, e#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(e#0, Tclass.AST.Expr())
     ==> Pure.__default.P__Step#requires(st#0, e#0)
       == (Pure.__default.P(st#0, e#0) && !Pure.__default.P__Fail(st#0, e#0)));

// definition axiom for Pure.__default.P__Step (revealed)
axiom {:id "id983"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  { Pure.__default.P__Step(st#0, e#0) } 
  Pure.__default.P__Step#canCall(st#0, e#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(e#0, Tclass.AST.Expr())
         && 
        Pure.__default.P(st#0, e#0)
         && !Pure.__default.P__Fail(st#0, e#0))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(e#0, Pure.MState.ctx(st#0))
       && Pure.MState.MState_q(st#0)
       && Pure.__default.P__Step(st#0, e#0)
         == (var v#0, ctx1#0 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), e#0, Pure.MState.ctx(st#0)))): DatatypeType)): int, 
            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), e#0, Pure.MState.ctx(st#0)))): DatatypeType)): Map; 
          #_System._tuple#2._#Make2($Box(#Pure.MState.MState(Pure.MState.locals(st#0), ctx1#0)), $Box(v#0))));

// definition axiom for Pure.__default.P__Step for decreasing-related literals (revealed)
axiom {:id "id984"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  {:weight 3} { Pure.__default.P__Step(st#0, Lit(e#0)) } 
  Pure.__default.P__Step#canCall(st#0, Lit(e#0))
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(e#0, Tclass.AST.Expr())
         && 
        Pure.__default.P(st#0, Lit(e#0))
         && !Pure.__default.P__Fail(st#0, Lit(e#0)))
     ==> Pure.MState.MState_q(st#0)
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Pure.MState.ctx(st#0))
       && Pure.MState.MState_q(st#0)
       && Pure.__default.P__Step(st#0, Lit(e#0))
         == (var v#1, ctx1#1 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Pure.MState.ctx(st#0)))): DatatypeType)): int, 
            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Pure.MState.ctx(st#0)))): DatatypeType)): Map; 
          #_System._tuple#2._#Make2($Box(#Pure.MState.MState(Pure.MState.locals(st#0), ctx1#1)), $Box(v#1))));

// definition axiom for Pure.__default.P__Step for all literals (revealed)
axiom {:id "id985"} (forall st#0: DatatypeType, e#0: DatatypeType :: 
  {:weight 3} { Pure.__default.P__Step(Lit(st#0), Lit(e#0)) } 
  Pure.__default.P__Step#canCall(Lit(st#0), Lit(e#0))
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(e#0, Tclass.AST.Expr())
         && 
        Lit(Pure.__default.P(Lit(st#0), Lit(e#0)))
         && !Lit(Pure.__default.P__Fail(Lit(st#0), Lit(e#0))))
     ==> Pure.MState.MState_q(Lit(st#0))
       && Interp.__default.InterpExpr#canCall(Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))
       && Pure.MState.MState_q(Lit(st#0))
       && Pure.__default.P__Step(Lit(st#0), Lit(e#0))
         == (var v#2, ctx1#2 := $Unbox(_System.Tuple2._0($Unbox(Utils.Result.value(Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))))): DatatypeType)): int, 
            $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(Lit(Interp.__default.InterpExpr($LS($LZ), Lit(e#0), Lit(Pure.MState.ctx(Lit(st#0))))))): DatatypeType)): Map; 
          #_System._tuple#2._#Make2($Box(#Pure.MState.MState(Lit(Pure.MState.locals(Lit(st#0))), ctx1#2)), $Box(v#2))));

procedure {:verboseName "Pure.InterpExpr_Pure (well-formedness)"} CheckWellFormed$$Pure.__default.InterpExpr__Pure(e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Pure.InterpExpr_Pure (call)"} Call$$Pure.__default.InterpExpr__Pure(e#0: DatatypeType
       where $Is(e#0, Tclass.AST.Expr())
         && $IsAlloc(e#0, Tclass.AST.Expr(), $Heap)
         && $IsA#AST.Expr__Raw(e#0), 
    ctx#0: Map
       where $Is(ctx#0, TMap(TSeq(TChar), TInt))
         && $IsAlloc(ctx#0, TMap(TSeq(TChar), TInt), $Heap));
  // user-defined preconditions
  requires {:id "id986"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (AST.Expr__Raw.Var_q(e#0)
         ==> (var name#0 := AST.Expr__Raw.name(e#0); Lit(true)));
  requires {:id "id987"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        AST.Expr__Raw.Literal_q(e#0)
         ==> (var n#0 := AST.Expr__Raw.n(e#0); Lit(true)));
  requires {:id "id988"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        AST.Expr__Raw.Bind_q(e#0)
         ==> (var body#0 := AST.Expr__Raw.body(e#0); 
          (var bvals#0 := AST.Expr__Raw.bvals(e#0); 
            (var bvars#0 := AST.Expr__Raw.bvars(e#0); 
              Pure.__default.IsPure__Es($LS($LS($LZ)), bvals#0, Lit(Set#Empty(): Set))))));
  requires {:id "id989"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        AST.Expr__Raw.Bind_q(e#0)
         ==> (var body#0 := AST.Expr__Raw.body(e#0); 
          (var bvals#0 := AST.Expr__Raw.bvals(e#0); 
            (var bvars#0 := AST.Expr__Raw.bvars(e#0); 
              Pure.__default.IsPure($LS($LS($LZ)), 
                body#0, 
                Set#Union(Set#FromBoogieMap((lambda $y#0: Box :: $IsBox($y#0, TSeq(TChar)) && Seq#Contains(bvars#0, $y#0))), 
                  Set#Empty(): Set))))));
  requires {:id "id990"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        AST.Expr__Raw.Assign_q(e#0)
         ==> (var avals#0 := AST.Expr__Raw.avals(e#0); 
          (var avars#0 := AST.Expr__Raw.avars(e#0); 
            (forall x#0: Seq :: 
              { Set#IsMember(Set#Empty(): Set, $Box(x#0)) } 
                { Seq#Contains(avars#0, $Box(x#0)) } 
              $Is(x#0, TSeq(TChar)) && Seq#Contains(avars#0, $Box(x#0))
                 ==> Set#IsMember(Lit(Set#Empty(): Set), $Box(x#0))))));
  requires {:id "id991"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        AST.Expr__Raw.Assign_q(e#0)
         ==> (var avals#0 := AST.Expr__Raw.avals(e#0); 
          (var avars#0 := AST.Expr__Raw.avars(e#0); 
            Pure.__default.IsPure__Es($LS($LS($LZ)), avals#0, Lit(Set#Empty(): Set)))));
  requires {:id "id992"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        !AST.Expr__Raw.Assign_q(e#0)
         ==> 
        AST.Expr__Raw.If_q(e#0)
         ==> (var els#0 := AST.Expr__Raw.els(e#0); 
          (var thn#0 := AST.Expr__Raw.thn(e#0); 
            (var cond#0 := AST.Expr__Raw.cond(e#0); 
              Pure.__default.IsPure($LS($LS($LZ)), cond#0, Lit(Set#Empty(): Set))))));
  requires {:id "id993"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        !AST.Expr__Raw.Assign_q(e#0)
         ==> 
        AST.Expr__Raw.If_q(e#0)
         ==> (var els#0 := AST.Expr__Raw.els(e#0); 
          (var thn#0 := AST.Expr__Raw.thn(e#0); 
            (var cond#0 := AST.Expr__Raw.cond(e#0); 
              Pure.__default.IsPure($LS($LS($LZ)), thn#0, Lit(Set#Empty(): Set))))));
  requires {:id "id994"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        !AST.Expr__Raw.Assign_q(e#0)
         ==> 
        AST.Expr__Raw.If_q(e#0)
         ==> (var els#0 := AST.Expr__Raw.els(e#0); 
          (var thn#0 := AST.Expr__Raw.thn(e#0); 
            (var cond#0 := AST.Expr__Raw.cond(e#0); 
              Pure.__default.IsPure($LS($LS($LZ)), els#0, Lit(Set#Empty(): Set))))));
  requires {:id "id995"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        !AST.Expr__Raw.Assign_q(e#0)
         ==> 
        !AST.Expr__Raw.If_q(e#0)
         ==> 
        AST.Expr__Raw.Op_q(e#0)
         ==> (var oe2#0 := AST.Expr__Raw.oe2(e#0); 
          (var oe1#0 := AST.Expr__Raw.oe1(e#0); 
            (var op#0 := AST.Expr__Raw.op(e#0); 
              Pure.__default.IsPure($LS($LS($LZ)), oe1#0, Lit(Set#Empty(): Set))))));
  requires {:id "id996"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        !AST.Expr__Raw.Assign_q(e#0)
         ==> 
        !AST.Expr__Raw.If_q(e#0)
         ==> 
        AST.Expr__Raw.Op_q(e#0)
         ==> (var oe2#0 := AST.Expr__Raw.oe2(e#0); 
          (var oe1#0 := AST.Expr__Raw.oe1(e#0); 
            (var op#0 := AST.Expr__Raw.op(e#0); 
              Pure.__default.IsPure($LS($LS($LZ)), oe2#0, Lit(Set#Empty(): Set))))));
  requires {:id "id997"} Pure.__default.IsPure#canCall(e#0, Lit(Set#Empty(): Set))
     ==> Pure.__default.IsPure($LS($LZ), e#0, Lit(Set#Empty(): Set))
       || (!AST.Expr__Raw.Var_q(e#0)
         ==> 
        !AST.Expr__Raw.Literal_q(e#0)
         ==> 
        !AST.Expr__Raw.Bind_q(e#0)
         ==> 
        !AST.Expr__Raw.Assign_q(e#0)
         ==> 
        !AST.Expr__Raw.If_q(e#0)
         ==> 
        !AST.Expr__Raw.Op_q(e#0)
         ==> (var es#0 := AST.Expr__Raw.es(e#0); 
          Pure.__default.IsPure__Es($LS($LS($LZ)), es#0, Lit(Set#Empty(): Set))));
  modifies $Heap;
  // user-defined postconditions
  free ensures Interp.__default.InterpExpr#canCall(e#0, ctx#0)
     && (Utils.Result.Success_q(Interp.__default.InterpExpr($LS($LZ), e#0, ctx#0))
       ==> Interp.__default.InterpExpr#canCall(e#0, ctx#0)
         && _System.Tuple2.___hMake2_q($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LZ), e#0, ctx#0))): DatatypeType));
  ensures {:id "id998"} Utils.Result.Success_q(Interp.__default.InterpExpr($LS($LZ), e#0, ctx#0))
     ==> (var ctx'#1 := $Unbox(_System.Tuple2._1($Unbox(Utils.Result.value(Interp.__default.InterpExpr($LS($LS($LZ)), e#0, ctx#0))): DatatypeType)): Map; 
      Map#Equal(ctx'#1, ctx#0));
  ensures {:id "id999"} !Utils.Result.Success_q(Interp.__default.InterpExpr($LS($LZ), e#0, ctx#0))
     ==> Lit(true);
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for Pure._default.Pes_Step
function Pure.__default.Pes__Step(st#0: DatatypeType, es#0: Seq) : DatatypeType;

function Pure.__default.Pes__Step#canCall(st#0: DatatypeType, es#0: Seq) : bool;

// consequence axiom for Pure.__default.Pes__Step
axiom (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.Pes__Step(st#0, es#0) } 
  Pure.__default.Pes__Step#canCall(st#0, es#0)
       || (
        $Is(st#0, Tclass.Pure.MState())
         && $Is(es#0, TSeq(Tclass.AST.Expr()))
         && 
        Pure.__default.Pes(st#0, es#0)
         && !Pure.__default.Pes__Fail(st#0, es#0))
     ==> Pure.__default.Pes__Succ(st#0, 
        es#0, 
        $Unbox(_System.Tuple2._0(Pure.__default.Pes__Step(st#0, es#0))): DatatypeType, 
        $Unbox(_System.Tuple2._1(Pure.__default.Pes__Step(st#0, es#0))): Seq)
       && $Is(Pure.__default.Pes__Step(st#0, es#0), 
        Tclass._System.Tuple2(Tclass.Pure.MState(), TSeq(TInt))));

function Pure.__default.Pes__Step#requires(DatatypeType, Seq) : bool;

// #requires axiom for Pure.__default.Pes__Step
axiom (forall st#0: DatatypeType, es#0: Seq :: 
  { Pure.__default.Pes__Step#requires(st#0, es#0) } 
  $Is(st#0, Tclass.Pure.MState()) && $Is(es#0, TSeq(Tclass.AST.Expr()))
     ==> Pure.__default.Pes__Step#requires(st#0, es#0)
       == (Pure.__default.Pes(st#0, es#0) && !Pure.__default.Pes__Fail(st#0, es#0)));

// Constructor function declaration
function #Pure.MState.MState(Set, Map) : DatatypeType;

const unique ##Pure.MState.MState: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Set, a#0#1#0: Map :: 
  { #Pure.MState.MState(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#Pure.MState.MState(a#0#0#0, a#0#1#0)) == ##Pure.MState.MState);
}

function Pure.MState.MState_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Pure.MState.MState_q(d) } 
  Pure.MState.MState_q(d) <==> DatatypeCtorId(d) == ##Pure.MState.MState);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Pure.MState.MState_q(d) } 
  Pure.MState.MState_q(d)
     ==> (exists a#1#0#0: Set, a#1#1#0: Map :: 
      d == #Pure.MState.MState(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall a#2#0#0: Set, a#2#1#0: Map :: 
  { $Is(#Pure.MState.MState(a#2#0#0, a#2#1#0), Tclass.Pure.MState()) } 
  $Is(#Pure.MState.MState(a#2#0#0, a#2#1#0), Tclass.Pure.MState())
     <==> $Is(a#2#0#0, TSet(TSeq(TChar))) && $Is(a#2#1#0, TMap(TSeq(TChar), TInt)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Pure.MState.locals(d), TSet(TSeq(TChar)), $h) } 
  $IsGoodHeap($h)
       && 
      Pure.MState.MState_q(d)
       && $IsAlloc(d, Tclass.Pure.MState(), $h)
     ==> $IsAlloc(Pure.MState.locals(d), TSet(TSeq(TChar)), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Pure.MState.ctx(d), TMap(TSeq(TChar), TInt), $h) } 
  $IsGoodHeap($h)
       && 
      Pure.MState.MState_q(d)
       && $IsAlloc(d, Tclass.Pure.MState(), $h)
     ==> $IsAlloc(Pure.MState.ctx(d), TMap(TSeq(TChar), TInt), $h));

// Constructor literal
axiom (forall a#3#0#0: Set, a#3#1#0: Map :: 
  { #Pure.MState.MState(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #Pure.MState.MState(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#Pure.MState.MState(a#3#0#0, a#3#1#0)));

function Pure.MState.locals(DatatypeType) : Set;

// Constructor injectivity
axiom (forall a#4#0#0: Set, a#4#1#0: Map :: 
  { #Pure.MState.MState(a#4#0#0, a#4#1#0) } 
  Pure.MState.locals(#Pure.MState.MState(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive set element rank
axiom (forall a#5#0#0: Set, a#5#1#0: Map, d: DatatypeType :: 
  { Set#IsMember(a#5#0#0, $Box(d)), #Pure.MState.MState(a#5#0#0, a#5#1#0) } 
  Set#IsMember(a#5#0#0, $Box(d))
     ==> DtRank(d) < DtRank(#Pure.MState.MState(a#5#0#0, a#5#1#0)));

function Pure.MState.ctx(DatatypeType) : Map;

// Constructor injectivity
axiom (forall a#6#0#0: Set, a#6#1#0: Map :: 
  { #Pure.MState.MState(a#6#0#0, a#6#1#0) } 
  Pure.MState.ctx(#Pure.MState.MState(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive map key rank
axiom (forall a#7#0#0: Set, a#7#1#0: Map, d: DatatypeType :: 
  { Set#IsMember(Map#Domain(a#7#1#0), $Box(d)), #Pure.MState.MState(a#7#0#0, a#7#1#0) } 
  Set#IsMember(Map#Domain(a#7#1#0), $Box(d))
     ==> DtRank(d) < DtRank(#Pure.MState.MState(a#7#0#0, a#7#1#0)));

// Inductive map value rank
axiom (forall a#8#0#0: Set, a#8#1#0: Map, bx: Box :: 
  { Set#IsMember(Map#Domain(a#8#1#0), bx), #Pure.MState.MState(a#8#0#0, a#8#1#0) } 
  Set#IsMember(Map#Domain(a#8#1#0), bx)
     ==> DtRank($Unbox(Map#Elements(a#8#1#0)[bx]): DatatypeType)
       < DtRank(#Pure.MState.MState(a#8#0#0, a#8#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Pure.MState(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Pure.MState())
     ==> $IsAlloc(d, Tclass.Pure.MState(), $h));

// Depth-one case-split function
function $IsA#Pure.MState(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Pure.MState(d) } 
  $IsA#Pure.MState(d) ==> Pure.MState.MState_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Pure.MState.MState_q(d), $Is(d, Tclass.Pure.MState()) } 
  $Is(d, Tclass.Pure.MState()) ==> Pure.MState.MState_q(d));

// Datatype extensional equality declaration
function Pure.MState#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Pure.MState.MState
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Pure.MState#Equal(a, b) } 
  Pure.MState#Equal(a, b)
     <==> Set#Equal(Pure.MState.locals(a), Pure.MState.locals(b))
       && Map#Equal(Pure.MState.ctx(a), Pure.MState.ctx(b)));

// Datatype extensionality axiom: Pure.MState
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Pure.MState#Equal(a, b) } 
  Pure.MState#Equal(a, b) <==> a == b);

const unique class.Pure.MState: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$Expr: TyTagFamily;

const unique tytagFamily$Expr_Raw: TyTagFamily;

const unique tytagFamily$BinOp: TyTagFamily;

const unique tytagFamily$Result: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$MState: TyTagFamily;

// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Color() : Ty
uses {
// Tclass._module.Color Tag
axiom Tag(Tclass._module.Color()) == Tagclass._module.Color
   && TagFamily(Tclass._module.Color()) == tytagFamily$Color;
}

const unique Tagclass._module.Color: TyTag;

// Box/unbox axiom for Tclass._module.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Color()) } 
  $IsBox(bx, Tclass._module.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Color()));

function Tclass._module.Lang(Ty) : Ty;

const unique Tagclass._module.Lang: TyTag;

// Tclass._module.Lang Tag
axiom (forall _module.Lang$S: Ty :: 
  { Tclass._module.Lang(_module.Lang$S) } 
  Tag(Tclass._module.Lang(_module.Lang$S)) == Tagclass._module.Lang
     && TagFamily(Tclass._module.Lang(_module.Lang$S)) == tytagFamily$Lang);

function Tclass._module.Lang_0(Ty) : Ty;

// Tclass._module.Lang injectivity 0
axiom (forall _module.Lang$S: Ty :: 
  { Tclass._module.Lang(_module.Lang$S) } 
  Tclass._module.Lang_0(Tclass._module.Lang(_module.Lang$S)) == _module.Lang$S);

// Box/unbox axiom for Tclass._module.Lang
axiom (forall _module.Lang$S: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Lang(_module.Lang$S)) } 
  $IsBox(bx, Tclass._module.Lang(_module.Lang$S))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Lang(_module.Lang$S)));

function Tclass._module.MLang(Ty) : Ty;

const unique Tagclass._module.MLang: TyTag;

// Tclass._module.MLang Tag
axiom (forall _module.MLang$S: Ty :: 
  { Tclass._module.MLang(_module.MLang$S) } 
  Tag(Tclass._module.MLang(_module.MLang$S)) == Tagclass._module.MLang
     && TagFamily(Tclass._module.MLang(_module.MLang$S)) == tytagFamily$MLang);

function Tclass._module.MLang_0(Ty) : Ty;

// Tclass._module.MLang injectivity 0
axiom (forall _module.MLang$S: Ty :: 
  { Tclass._module.MLang(_module.MLang$S) } 
  Tclass._module.MLang_0(Tclass._module.MLang(_module.MLang$S)) == _module.MLang$S);

// Box/unbox axiom for Tclass._module.MLang
axiom (forall _module.MLang$S: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MLang(_module.MLang$S)) } 
  $IsBox(bx, Tclass._module.MLang(_module.MLang$S))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.MLang(_module.MLang$S)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var tag##0: Seq;
  var s##0: DatatypeType;
  var ##n#0: int;
  var tag##1: Seq;
  var s##1: DatatypeType;
  var ##n#1: int;
  var tag##2: Seq;
  var s##2: DatatypeType;
  var ##n#2: int;
  var tag##3: Seq;
  var s##3: DatatypeType;
  var ##n#3: int;
  var ##c#0: DatatypeType;
  var tag##4: Seq;
  var s##4: DatatypeType;
  var ##n#4: int;
  var tag##5: Seq;
  var s##5: DatatypeType;
  var ##n#5: int;
  var l#0: DatatypeType
     where $Is(l#0, Tclass._module.Lang(TChar))
       && $IsAlloc(l#0, Tclass._module.Lang(TChar), $Heap);
  var s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var ch#0_0: char where $Is(ch#0_0, TChar);
  var ml#0: DatatypeType
     where $Is(ml#0, Tclass._module.MLang(TChar))
       && $IsAlloc(ml#0, Tclass._module.MLang(TChar), $Heap);
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var $decr$loop#10: int;
  var ch#1_0: char where $Is(ch#1_0, TChar);

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(5,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    tag##0 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))));
    ##n#0 := LitInt(19);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    assume _module.__default.Up#canCall(LitInt(19));
    assume _module.Stream.ICons_q(Lit(_module.__default.Up($LS($LZ), LitInt(19))));
    assume _module.__default.Up#canCall(LitInt(19));
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(_module.__default.Up($LS($LZ), LitInt(19)));
    call {:id "id0"} Call$$_module.__default.PrintStream(tag##0, s##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(6,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    tag##1 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
        $Box(char#FromInt(50))));
    ##n#1 := LitInt(19);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, TInt, $Heap);
    assume _module.__default.Up2#canCall(LitInt(19));
    assume _module.Stream.ICons_q(Lit(_module.__default.Up2($LS($LZ), LitInt(19))));
    assume _module.__default.Up2#canCall(LitInt(19));
    // ProcessCallStmt: CheckSubrange
    s##1 := Lit(_module.__default.Up2($LS($LZ), LitInt(19)));
    call {:id "id1"} Call$$_module.__default.PrintStream(tag##1, s##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(7,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    tag##2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
          $Box(char#FromInt(73))), 
        $Box(char#FromInt(102))));
    ##n#2 := LitInt(19);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, TInt, $Heap);
    assume _module.__default.UpIf#canCall(LitInt(19));
    assume _module.Stream.ICons_q(Lit(_module.__default.UpIf($LS($LZ), LitInt(19))));
    assume _module.__default.UpIf#canCall(LitInt(19));
    // ProcessCallStmt: CheckSubrange
    s##2 := Lit(_module.__default.UpIf($LS($LZ), LitInt(19)));
    call {:id "id2"} Call$$_module.__default.PrintStream(tag##2, s##2);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(8,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    tag##3 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(67))), $Box(char#FromInt(85))), 
          $Box(char#FromInt(112))), 
        $Box(char#FromInt(49))));
    ##n#3 := LitInt(19);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, TInt, $Heap);
    ##c#0 := Lit(#_module.Color.Blue());
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, Tclass._module.Color(), $Heap);
    assume _module.__default.CUp1#canCall(LitInt(19), Lit(#_module.Color.Blue()));
    assume _module.Stream.ICons_q(Lit(_module.__default.CUp1($LS($LZ), LitInt(19), Lit(#_module.Color.Blue()))));
    assume _module.__default.CUp1#canCall(LitInt(19), Lit(#_module.Color.Blue()));
    // ProcessCallStmt: CheckSubrange
    s##3 := Lit(_module.__default.CUp1($LS($LZ), LitInt(19), Lit(#_module.Color.Blue())));
    call {:id "id3"} Call$$_module.__default.PrintStream(tag##3, s##3);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(9,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    tag##4 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
              $Box(char#FromInt(76))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(48))));
    ##n#4 := LitInt(19);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, TInt, $Heap);
    assume _module.__default.UpLet0#canCall(LitInt(19));
    assume _module.Stream.ICons_q(Lit(_module.__default.UpLet0($LS($LZ), LitInt(19))));
    assume _module.__default.UpLet0#canCall(LitInt(19));
    // ProcessCallStmt: CheckSubrange
    s##4 := Lit(_module.__default.UpLet0($LS($LZ), LitInt(19)));
    call {:id "id4"} Call$$_module.__default.PrintStream(tag##4, s##4);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(10,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    tag##5 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(85))), $Box(char#FromInt(112))), 
              $Box(char#FromInt(76))), 
            $Box(char#FromInt(101))), 
          $Box(char#FromInt(116))), 
        $Box(char#FromInt(49))));
    ##n#5 := LitInt(19);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#5, TInt, $Heap);
    assume _module.__default.UpLet1#canCall(LitInt(19));
    assume _module.Stream.ICons_q(Lit(_module.__default.UpLet1($LS($LZ), LitInt(19))));
    assume _module.__default.UpLet1#canCall(LitInt(19));
    // ProcessCallStmt: CheckSubrange
    s##5 := Lit(_module.__default.UpLet1($LS($LZ), LitInt(19)));
    call {:id "id5"} Call$$_module.__default.PrintStream(tag##5, s##5);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(12,9)
    assume true;
    assume _module.__default.OnlyDs#canCall();
    assume _module.Lang.L_q(Lit(_module.__default.OnlyDs($LS($LZ))));
    assume _module.__default.OnlyDs#canCall();
    l#0 := Lit(_module.__default.OnlyDs($LS($LZ)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(13,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(14,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 6 - Seq#Length(s#0);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0
         ==> $IsA#_module.Lang(l#0)
           && $IsA#_module.Lang(Lit(_module.__default.OnlyDs($LS($LZ))))
           && _module.__default.OnlyDs#canCall()
           && (!$Eq#_module.Lang(TChar, TChar, $LS($LS($LZ)), l#0, _module.__default.OnlyDs($LS($LZ)))
             ==> $IsA#_module.Lang(l#0)
               && $IsA#_module.Lang(Lit(_module.__default.Nothing(TChar, $LS($LZ))))
               && _module.__default.Nothing#canCall(TChar));
      invariant {:id "id9"} $w$loop#0
         ==> $Eq#_module.Lang(TChar, TChar, $LS($LS($LZ)), l#0, _module.__default.OnlyDs($LS($LS($LZ))))
           || $Eq#_module.Lang(TChar, 
            TChar, 
            $LS($LS($LZ)), 
            l#0, 
            _module.__default.Nothing(TChar, $LS($LS($LZ))));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 6 - Seq#Length(s#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume _module.__default.OnlyDs#canCall();
            assume _module.Lang.L_q(Lit(_module.__default.OnlyDs($LS($LZ))));
            if (!$Eq#_module.Lang(TChar, TChar, $LS($LS($LZ)), l#0, _module.__default.OnlyDs($LS($LZ))))
            {
                assume _module.__default.Nothing#canCall(TChar);
                assume _module.Lang.L_q(Lit(_module.__default.Nothing(TChar, $LS($LZ))));
            }

            assume $IsA#_module.Lang(l#0)
               && $IsA#_module.Lang(Lit(_module.__default.OnlyDs($LS($LZ))))
               && _module.__default.OnlyDs#canCall()
               && (!$Eq#_module.Lang(TChar, TChar, $LS($LS($LZ)), l#0, _module.__default.OnlyDs($LS($LZ)))
                 ==> $IsA#_module.Lang(l#0)
                   && $IsA#_module.Lang(Lit(_module.__default.Nothing(TChar, $LS($LZ))))
                   && _module.__default.Nothing#canCall(TChar));
            assume {:id "id8"} $Eq#_module.Lang(TChar, TChar, $LS($LS($LZ)), l#0, _module.__default.OnlyDs($LS($LZ)))
               || $Eq#_module.Lang(TChar, TChar, $LS($LS($LZ)), l#0, _module.__default.Nothing(TChar, $LS($LZ)));
            assume true;
            assume false;
        }

        assume true;
        if (6 <= Seq#Length(s#0))
        {
            break;
        }

        $decr$loop#00 := 6 - Seq#Length(s#0);
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(17,5)
        assume true;
        assume _module.Lang.L_q(l#0);
        if (_module.Lang.nullable(l#0))
        {
        }
        else
        {
        }

        assume _module.Lang.L_q(l#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(18,12)
        assume true;
        if (Seq#Length(s#0) < 3)
        {
        }
        else
        {
        }

        assume true;
        ch#0_0 := (if Seq#Length(s#0) < 3 then char#FromInt(68) else char#FromInt(118));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(19,7)
        assume true;
        assume _module.Lang.L_q(l#0);
        assert {:id "id11"} Requires1(TChar, Tclass._module.Lang(TChar), $Heap, _module.Lang.deriv(l#0), $Box(ch#0_0));
        assume _module.Lang.L_q(l#0);
        l#0 := $Unbox(Apply1(TChar, Tclass._module.Lang(TChar), $Heap, _module.Lang.deriv(l#0), $Box(ch#0_0))): DatatypeType;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(20,7)
        assume true;
        assume true;
        s#0 := Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, $Box(ch#0_0)));
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(14,3)
        assert {:id "id14"} 0 <= $decr$loop#00 || 6 - Seq#Length(s#0) == $decr$loop#00;
        assert {:id "id15"} 6 - Seq#Length(s#0) < $decr$loop#00;
        assume $IsA#_module.Lang(l#0)
           && $IsA#_module.Lang(Lit(_module.__default.OnlyDs($LS($LZ))))
           && _module.__default.OnlyDs#canCall()
           && (!$Eq#_module.Lang(TChar, TChar, $LS($LS($LZ)), l#0, _module.__default.OnlyDs($LS($LZ)))
             ==> $IsA#_module.Lang(l#0)
               && $IsA#_module.Lang(Lit(_module.__default.Nothing(TChar, $LS($LZ))))
               && _module.__default.Nothing#canCall(TChar));
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(22,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id16"} Call$$_module.__default.GhostMain();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(24,10)
    assume true;
    assume _module.__default.MOnlyDs#canCall();
    assume _module.MLang.ML_q(Lit(_module.__default.MOnlyDs($LS($LZ))));
    assume _module.__default.MOnlyDs#canCall();
    ml#0 := Lit(_module.__default.MOnlyDs($LS($LZ)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(25,5)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(26,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := 6 - Seq#Length(s#0);
    havoc $w$loop#1;
    while (true)
      free invariant $w$loop#1
         ==> $IsA#_module.MLang(ml#0)
           && $IsA#_module.MLang(Lit(_module.__default.MOnlyDs($LS($LZ))))
           && _module.__default.MOnlyDs#canCall()
           && (!$Eq#_module.MLang(TChar, TChar, $LS($LS($LZ)), ml#0, _module.__default.MOnlyDs($LS($LZ)))
             ==> $IsA#_module.MLang(ml#0)
               && $IsA#_module.MLang(Lit(_module.__default.MNothing(TChar, $LS($LZ))))
               && _module.__default.MNothing#canCall(TChar));
      invariant {:id "id20"} $w$loop#1
         ==> $Eq#_module.MLang(TChar, TChar, $LS($LS($LZ)), ml#0, _module.__default.MOnlyDs($LS($LS($LZ))))
           || $Eq#_module.MLang(TChar, 
            TChar, 
            $LS($LS($LZ)), 
            ml#0, 
            _module.__default.MNothing(TChar, $LS($LS($LZ))));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 6 - Seq#Length(s#0) <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            assume _module.__default.MOnlyDs#canCall();
            assume _module.MLang.ML_q(Lit(_module.__default.MOnlyDs($LS($LZ))));
            if (!$Eq#_module.MLang(TChar, TChar, $LS($LS($LZ)), ml#0, _module.__default.MOnlyDs($LS($LZ))))
            {
                assume _module.__default.MNothing#canCall(TChar);
                assume _module.MLang.ML_q(Lit(_module.__default.MNothing(TChar, $LS($LZ))));
            }

            assume $IsA#_module.MLang(ml#0)
               && $IsA#_module.MLang(Lit(_module.__default.MOnlyDs($LS($LZ))))
               && _module.__default.MOnlyDs#canCall()
               && (!$Eq#_module.MLang(TChar, TChar, $LS($LS($LZ)), ml#0, _module.__default.MOnlyDs($LS($LZ)))
                 ==> $IsA#_module.MLang(ml#0)
                   && $IsA#_module.MLang(Lit(_module.__default.MNothing(TChar, $LS($LZ))))
                   && _module.__default.MNothing#canCall(TChar));
            assume {:id "id19"} $Eq#_module.MLang(TChar, TChar, $LS($LS($LZ)), ml#0, _module.__default.MOnlyDs($LS($LZ)))
               || $Eq#_module.MLang(TChar, TChar, $LS($LS($LZ)), ml#0, _module.__default.MNothing(TChar, $LS($LZ)));
            assume true;
            assume false;
        }

        assume true;
        if (6 <= Seq#Length(s#0))
        {
            break;
        }

        $decr$loop#10 := 6 - Seq#Length(s#0);
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(29,5)
        assume true;
        assume _module.MLang.ML_q(ml#0);
        if (_module.MLang.nullable(ml#0))
        {
        }
        else
        {
        }

        assume _module.MLang.ML_q(ml#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(30,12)
        assume true;
        if (Seq#Length(s#0) < 3)
        {
        }
        else
        {
        }

        assume true;
        ch#1_0 := (if Seq#Length(s#0) < 3 then char#FromInt(68) else char#FromInt(118));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(31,8)
        assume true;
        assume _module.MLang.ML_q(ml#0);
        if (Set#IsMember(Map#Domain(_module.MLang.deriv(ml#0)), $Box(ch#1_0)))
        {
            assume _module.MLang.ML_q(ml#0);
            assert {:id "id22"} Set#IsMember(Map#Domain(_module.MLang.deriv(ml#0)), $Box(ch#1_0));
        }
        else
        {
            assume _module.__default.MNothing#canCall(TChar);
            assume _module.MLang.ML_q(Lit(_module.__default.MNothing(TChar, $LS($LZ))));
        }

        assume _module.MLang.ML_q(ml#0)
           && (Set#IsMember(Map#Domain(_module.MLang.deriv(ml#0)), $Box(ch#1_0))
             ==> _module.MLang.ML_q(ml#0))
           && (!Set#IsMember(Map#Domain(_module.MLang.deriv(ml#0)), $Box(ch#1_0))
             ==> _module.__default.MNothing#canCall(TChar));
        ml#0 := (if Set#IsMember(Map#Domain(_module.MLang.deriv(ml#0)), $Box(ch#1_0))
           then $Unbox(Map#Elements(_module.MLang.deriv(ml#0))[$Box(ch#1_0)]): DatatypeType
           else _module.__default.MNothing(TChar, $LS($LZ)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(32,7)
        assume true;
        assume true;
        s#0 := Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, $Box(ch#1_0)));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(26,3)
        assert {:id "id25"} 0 <= $decr$loop#10 || 6 - Seq#Length(s#0) == $decr$loop#10;
        assert {:id "id26"} 6 - Seq#Length(s#0) < $decr$loop#10;
        assume $IsA#_module.MLang(ml#0)
           && $IsA#_module.MLang(Lit(_module.__default.MOnlyDs($LS($LZ))))
           && _module.__default.MOnlyDs#canCall()
           && (!$Eq#_module.MLang(TChar, TChar, $LS($LS($LZ)), ml#0, _module.__default.MOnlyDs($LS($LZ)))
             ==> $IsA#_module.MLang(ml#0)
               && $IsA#_module.MLang(Lit(_module.__default.MNothing(TChar, $LS($LZ))))
               && _module.__default.MNothing#canCall(TChar));
    }
}



function Tclass._module.Stream(Ty) : Ty;

const unique Tagclass._module.Stream: TyTag;

// Tclass._module.Stream Tag
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tag(Tclass._module.Stream(_module.Stream$T)) == Tagclass._module.Stream
     && TagFamily(Tclass._module.Stream(_module.Stream$T)) == tytagFamily$Stream);

function Tclass._module.Stream_0(Ty) : Ty;

// Tclass._module.Stream injectivity 0
axiom (forall _module.Stream$T: Ty :: 
  { Tclass._module.Stream(_module.Stream$T) } 
  Tclass._module.Stream_0(Tclass._module.Stream(_module.Stream$T))
     == _module.Stream$T);

// Box/unbox axiom for Tclass._module.Stream
axiom (forall _module.Stream$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream(_module.Stream$T)) } 
  $IsBox(bx, Tclass._module.Stream(_module.Stream$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream(_module.Stream$T)));

procedure {:verboseName "PrintStream (well-formedness)"} CheckWellFormed$$_module.__default.PrintStream(tag#0: Seq where $Is(tag#0, TSeq(TChar)) && $IsAlloc(tag#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(TInt))
         && $IsAlloc(s#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(s#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintStream (call)"} Call$$_module.__default.PrintStream(tag#0: Seq where $Is(tag#0, TSeq(TChar)) && $IsAlloc(tag#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(TInt))
         && $IsAlloc(s#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(s#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintStream (correctness)"} Impl$$_module.__default.PrintStream(tag#0: Seq where $Is(tag#0, TSeq(TChar)) && $IsAlloc(tag#0, TSeq(TChar), $Heap), 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(TInt))
         && $IsAlloc(s#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(s#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintStream (correctness)"} Impl$$_module.__default.PrintStream(tag#0: Seq, s#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var s#1: DatatypeType
     where $Is(s#1, Tclass._module.Stream(TInt))
       && $IsAlloc(s#1, Tclass._module.Stream(TInt), $Heap);
  var $rhs#0: int;
  var $rhs#1: DatatypeType;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: DatatypeType;
  var $rhs#0_1: int;

    // AddMethodImpl: PrintStream, Impl$$_module.__default.PrintStream
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(38,3)
    assume true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(39,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := s#0;
    n#0 := $rhs#0;
    s#1 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(40,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 5 - n#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 5 - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (5 <= n#0)
        {
            break;
        }

        $decr$loop#00 := 5 - n#0;
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(42,5)
        assume true;
        assume _module.Stream.ICons_q(s#1);
        assume _module.Stream.ICons_q(s#1);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(43,10)
        assume true;
        assume true;
        assume _module.Stream.ICons_q(s#1);
        assume _module.Stream.ICons_q(s#1);
        $rhs#0_0 := _module.Stream.tail(s#1);
        assume true;
        $rhs#0_1 := n#0 + 1;
        s#1 := $rhs#0_0;
        n#0 := $rhs#0_1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(40,3)
        assert {:id "id35"} 0 <= $decr$loop#00 || 5 - n#0 == $decr$loop#00;
        assert {:id "id36"} 5 - n#0 < $decr$loop#00;
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(45,3)
    assume true;
}



procedure {:verboseName "GhostMain (well-formedness)"} CheckWellFormed$$_module.__default.GhostMain();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GhostMain (call)"} Call$$_module.__default.GhostMain();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "GhostMain (correctness)"} Impl$$_module.__default.GhostMain() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



function Tclass._module.IMLang(Ty) : Ty;

const unique Tagclass._module.IMLang: TyTag;

// Tclass._module.IMLang Tag
axiom (forall _module.IMLang$S: Ty :: 
  { Tclass._module.IMLang(_module.IMLang$S) } 
  Tag(Tclass._module.IMLang(_module.IMLang$S)) == Tagclass._module.IMLang
     && TagFamily(Tclass._module.IMLang(_module.IMLang$S)) == tytagFamily$IMLang);

function Tclass._module.IMLang_0(Ty) : Ty;

// Tclass._module.IMLang injectivity 0
axiom (forall _module.IMLang$S: Ty :: 
  { Tclass._module.IMLang(_module.IMLang$S) } 
  Tclass._module.IMLang_0(Tclass._module.IMLang(_module.IMLang$S))
     == _module.IMLang$S);

// Box/unbox axiom for Tclass._module.IMLang
axiom (forall _module.IMLang$S: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.IMLang(_module.IMLang$S)) } 
  $IsBox(bx, Tclass._module.IMLang(_module.IMLang$S))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.IMLang(_module.IMLang$S)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GhostMain (correctness)"} Impl$$_module.__default.GhostMain() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var l#0: DatatypeType
     where $Is(l#0, Tclass._module.IMLang(TChar))
       && $IsAlloc(l#0, Tclass._module.IMLang(TChar), $Heap);
  var s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var ch#0_0: char where $Is(ch#0_0, TChar);

    // AddMethodImpl: GhostMain, Impl$$_module.__default.GhostMain
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(50,9)
    assume true;
    assume _module.__default.IMOnlyDs#canCall();
    assume _module.IMLang.IML_q(Lit(_module.__default.IMOnlyDs($LS($LZ))));
    assume _module.__default.IMOnlyDs#canCall();
    l#0 := Lit(_module.__default.IMOnlyDs($LS($LZ)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(51,9)
    assume true;
    assume true;
    s#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(52,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 6 - Seq#Length(s#0);
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSuccGhost($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 6 - Seq#Length(s#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (6 <= Seq#Length(s#0))
        {
            break;
        }

        $decr$loop#00 := 6 - Seq#Length(s#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(54,12)
        assume true;
        if (Seq#Length(s#0) < 3)
        {
        }
        else
        {
        }

        assume true;
        ch#0_0 := (if Seq#Length(s#0) < 3 then char#FromInt(68) else char#FromInt(118));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(55,7)
        assume true;
        assume _module.IMLang.IML_q(l#0);
        if (IMap#Domain(_module.IMLang.deriv(l#0))[$Box(ch#0_0)])
        {
            assume _module.IMLang.IML_q(l#0);
            assert {:id "id40"} IMap#Domain(_module.IMLang.deriv(l#0))[$Box(ch#0_0)];
        }
        else
        {
            assume _module.IMLang.IML_q(l#0);
        }

        assume _module.IMLang.IML_q(l#0)
           && (IMap#Domain(_module.IMLang.deriv(l#0))[$Box(ch#0_0)]
             ==> _module.IMLang.IML_q(l#0))
           && (!IMap#Domain(_module.IMLang.deriv(l#0))[$Box(ch#0_0)]
             ==> _module.IMLang.IML_q(l#0));
        l#0 := (if IMap#Domain(_module.IMLang.deriv(l#0))[$Box(ch#0_0)]
           then $Unbox(IMap#Elements(_module.IMLang.deriv(l#0))[$Box(ch#0_0)]): DatatypeType
           else #_module.IMLang.IML(Lit(false), _module.IMLang.deriv(l#0)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(56,7)
        assume true;
        assume true;
        s#0 := Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, $Box(ch#0_0)));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(52,3)
        assert {:id "id43"} 0 <= $decr$loop#00 || 6 - Seq#Length(s#0) == $decr$loop#00;
        assert {:id "id44"} 6 - Seq#Length(s#0) < $decr$loop#00;
    }
}



// function declaration for _module._default.Up
function _module.__default.Up($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Up
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Up($ly, n#0) } 
    _module.__default.Up#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Up($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Up (revealed)
axiom {:id "id45"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Up($LS($ly), n#0) } 
    _module.__default.Up#canCall(n#0) || 1 < $FunctionContextHeight
       ==> _module.__default.Up#canCall(n#0 + 1)
         && _module.__default.Up($LS($ly), n#0)
           == #_module.Stream.ICons($Box(n#0), _module.__default.Up($ly, n#0 + 1)));
}

function _module.__default.Up#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up($LS($ly), n#0) } 
  _module.__default.Up($LS($ly), n#0) == _module.__default.Up($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up(AsFuelBottom($ly), n#0) } 
  _module.__default.Up($ly, n#0) == _module.__default.Up($LZ, n#0));

function _module.__default.Up#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Up
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up#requires($ly, n#0) } 
  _module.__default.Up#requires($ly, n#0) == true);

procedure {:verboseName "Up (well-formedness)"} CheckWellformed$$_module.__default.Up(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Up2
function _module.__default.Up2($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Up2
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Up2($ly, n#0) } 
    _module.__default.Up2#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Up2($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.Up2 (revealed)
axiom {:id "id47"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Up2($LS($ly), n#0) } 
    _module.__default.Up2#canCall(n#0) || 1 < $FunctionContextHeight
       ==> _module.__default.Up2#canCall(n#0 + 2)
         && _module.__default.Up2($LS($ly), n#0)
           == #_module.Stream.ICons($Box(n#0), 
            #_module.Stream.ICons($Box(n#0 + 1), _module.__default.Up2($ly, n#0 + 2))));
}

function _module.__default.Up2#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up2($LS($ly), n#0) } 
  _module.__default.Up2($LS($ly), n#0) == _module.__default.Up2($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up2(AsFuelBottom($ly), n#0) } 
  _module.__default.Up2($ly, n#0) == _module.__default.Up2($LZ, n#0));

function _module.__default.Up2#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Up2
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Up2#requires($ly, n#0) } 
  _module.__default.Up2#requires($ly, n#0) == true);

procedure {:verboseName "Up2 (well-formedness)"} CheckWellformed$$_module.__default.Up2(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.UpIf
function _module.__default.UpIf($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.UpIf
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpIf($ly, n#0) } 
    _module.__default.UpIf#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.UpIf($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.UpIf (revealed)
axiom {:id "id49"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpIf($LS($ly), n#0) } 
    _module.__default.UpIf#canCall(n#0) || 1 < $FunctionContextHeight
       ==> (Mod(n#0, LitInt(2)) == LitInt(1) ==> _module.__default.UpIf#canCall(n#0 + 1))
         && (Mod(n#0, LitInt(2)) != LitInt(1) ==> _module.__default.UpIf#canCall(n#0 + 2))
         && _module.__default.UpIf($LS($ly), n#0)
           == (if Mod(n#0, LitInt(2)) == LitInt(1)
             then #_module.Stream.ICons($Box(n#0), _module.__default.UpIf($ly, n#0 + 1))
             else #_module.Stream.ICons($Box(n#0), _module.__default.UpIf($ly, n#0 + 2))));
}

function _module.__default.UpIf#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpIf($LS($ly), n#0) } 
  _module.__default.UpIf($LS($ly), n#0) == _module.__default.UpIf($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpIf(AsFuelBottom($ly), n#0) } 
  _module.__default.UpIf($ly, n#0) == _module.__default.UpIf($LZ, n#0));

function _module.__default.UpIf#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.UpIf
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpIf#requires($ly, n#0) } 
  _module.__default.UpIf#requires($ly, n#0) == true);

procedure {:verboseName "UpIf (well-formedness)"} CheckWellformed$$_module.__default.UpIf(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpIf (well-formedness)"} CheckWellformed$$_module.__default.UpIf(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.UpIf($LS($LZ), n#0), Tclass._module.Stream(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id50"} LitInt(2) != 0;
        if (Mod(n#0, LitInt(2)) == LitInt(1))
        {
            ##n#0 := n#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assume _module.__default.UpIf#canCall(n#0 + 1);
            assume _module.Stream.ICons_q(_module.__default.UpIf($LS($LZ), n#0 + 1));
            assume {:id "id51"} _module.__default.UpIf($LS($LZ), n#0)
               == #_module.Stream.ICons($Box(n#0), _module.__default.UpIf($LS($LZ), n#0 + 1));
            assume _module.__default.UpIf#canCall(n#0 + 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.UpIf($LS($LZ), n#0), Tclass._module.Stream(TInt));
            return;
        }
        else
        {
            ##n#1 := n#0 + 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assume _module.__default.UpIf#canCall(n#0 + 2);
            assume _module.Stream.ICons_q(_module.__default.UpIf($LS($LZ), n#0 + 2));
            assume {:id "id52"} _module.__default.UpIf($LS($LZ), n#0)
               == #_module.Stream.ICons($Box(n#0), _module.__default.UpIf($LS($LZ), n#0 + 2));
            assume _module.__default.UpIf#canCall(n#0 + 2);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.UpIf($LS($LZ), n#0), Tclass._module.Stream(TInt));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.UpIf'
function _module.__default.UpIf_k($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.UpIf_k
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpIf_k($ly, n#0) } 
    _module.__default.UpIf_k#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.UpIf_k($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.UpIf_k (revealed)
axiom {:id "id53"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpIf_k($LS($ly), n#0) } 
    _module.__default.UpIf_k#canCall(n#0) || 1 < $FunctionContextHeight
       ==> (Mod(n#0, LitInt(2)) == LitInt(1) ==> _module.__default.UpIf_k#canCall(n#0 + 1))
         && (Mod(n#0, LitInt(2)) != LitInt(1) ==> _module.__default.UpIf_k#canCall(n#0 + 2))
         && _module.__default.UpIf_k($LS($ly), n#0)
           == #_module.Stream.ICons($Box(n#0), 
            (if Mod(n#0, LitInt(2)) == LitInt(1)
               then _module.__default.UpIf_k($ly, n#0 + 1)
               else _module.__default.UpIf_k($ly, n#0 + 2))));
}

function _module.__default.UpIf_k#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpIf_k($LS($ly), n#0) } 
  _module.__default.UpIf_k($LS($ly), n#0) == _module.__default.UpIf_k($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpIf_k(AsFuelBottom($ly), n#0) } 
  _module.__default.UpIf_k($ly, n#0) == _module.__default.UpIf_k($LZ, n#0));

function _module.__default.UpIf_k#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.UpIf_k
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpIf_k#requires($ly, n#0) } 
  _module.__default.UpIf_k#requires($ly, n#0) == true);

procedure {:verboseName "UpIf' (well-formedness)"} CheckWellformed$$_module.__default.UpIf_k(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpIf' (well-formedness)"} CheckWellformed$$_module.__default.UpIf_k(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.UpIf_k($LS($LZ), n#0), Tclass._module.Stream(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id54"} LitInt(2) != 0;
        if (Mod(n#0, LitInt(2)) == LitInt(1))
        {
            ##n#0 := n#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assume _module.__default.UpIf_k#canCall(n#0 + 1);
            assume _module.Stream.ICons_q(_module.__default.UpIf_k($LS($LZ), n#0 + 1));
        }
        else
        {
            ##n#1 := n#0 + 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assume _module.__default.UpIf_k#canCall(n#0 + 2);
            assume _module.Stream.ICons_q(_module.__default.UpIf_k($LS($LZ), n#0 + 2));
        }

        assume {:id "id55"} _module.__default.UpIf_k($LS($LZ), n#0)
           == #_module.Stream.ICons($Box(n#0), 
            (if Mod(n#0, LitInt(2)) == LitInt(1)
               then _module.__default.UpIf_k($LS($LZ), n#0 + 1)
               else _module.__default.UpIf_k($LS($LZ), n#0 + 2)));
        assume (Mod(n#0, LitInt(2)) == LitInt(1) ==> _module.__default.UpIf_k#canCall(n#0 + 1))
           && (Mod(n#0, LitInt(2)) != LitInt(1) ==> _module.__default.UpIf_k#canCall(n#0 + 2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.UpIf_k($LS($LZ), n#0), Tclass._module.Stream(TInt));
        return;

        assume false;
    }
}



// function declaration for _module._default.CUp0
function _module.__default.CUp0($ly: LayerType, n#0: int, c#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.CUp0
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp0($ly, n#0, c#0) } 
    _module.__default.CUp0#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> $Is(_module.__default.CUp0($ly, n#0, c#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.CUp0 (revealed)
axiom {:id "id56"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp0($LS($ly), n#0, c#0) } 
    _module.__default.CUp0#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> (_module.Color.Red_q(c#0) ==> _module.__default.CUp0#canCall(n#0 + 1, c#0))
         && (!_module.Color.Red_q(c#0) ==> _module.__default.CUp0#canCall(n#0 + 2, c#0))
         && _module.__default.CUp0($LS($ly), n#0, c#0)
           == (if _module.Color.Red_q(c#0)
             then #_module.Stream.ICons($Box(n#0), _module.__default.CUp0($ly, n#0 + 1, c#0))
             else #_module.Stream.ICons($Box(n#0), _module.__default.CUp0($ly, n#0 + 2, c#0))));
}

function _module.__default.CUp0#canCall(n#0: int, c#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp0($LS($ly), n#0, c#0) } 
  _module.__default.CUp0($LS($ly), n#0, c#0)
     == _module.__default.CUp0($ly, n#0, c#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp0(AsFuelBottom($ly), n#0, c#0) } 
  _module.__default.CUp0($ly, n#0, c#0) == _module.__default.CUp0($LZ, n#0, c#0));

function _module.__default.CUp0#requires(LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.CUp0
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp0#requires($ly, n#0, c#0) } 
  $Is(c#0, Tclass._module.Color())
     ==> _module.__default.CUp0#requires($ly, n#0, c#0) == true);

procedure {:verboseName "CUp0 (well-formedness)"} CheckWellformed$$_module.__default.CUp0(n#0: int, c#0: DatatypeType where $Is(c#0, Tclass._module.Color()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.CUp1
function _module.__default.CUp1($ly: LayerType, n#0: int, c#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.CUp1
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp1($ly, n#0, c#0) } 
    _module.__default.CUp1#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> $Is(_module.__default.CUp1($ly, n#0, c#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.CUp1 (revealed)
axiom {:id "id59"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp1($LS($ly), n#0, c#0) } 
    _module.__default.CUp1#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> (_module.Color.Red_q(c#0) ==> _module.__default.CUp1#canCall(n#0 + 1, c#0))
         && (!_module.Color.Red_q(c#0) ==> _module.__default.CUp1#canCall(n#0 + 2, c#0))
         && _module.__default.CUp1($LS($ly), n#0, c#0)
           == #_module.Stream.ICons($Box(n#0), 
            (if _module.Color.Red_q(c#0)
               then _module.__default.CUp1($ly, n#0 + 1, c#0)
               else _module.__default.CUp1($ly, n#0 + 2, c#0))));
}

function _module.__default.CUp1#canCall(n#0: int, c#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp1($LS($ly), n#0, c#0) } 
  _module.__default.CUp1($LS($ly), n#0, c#0)
     == _module.__default.CUp1($ly, n#0, c#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp1(AsFuelBottom($ly), n#0, c#0) } 
  _module.__default.CUp1($ly, n#0, c#0) == _module.__default.CUp1($LZ, n#0, c#0));

function _module.__default.CUp1#requires(LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.CUp1
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp1#requires($ly, n#0, c#0) } 
  $Is(c#0, Tclass._module.Color())
     ==> _module.__default.CUp1#requires($ly, n#0, c#0) == true);

procedure {:verboseName "CUp1 (well-formedness)"} CheckWellformed$$_module.__default.CUp1(n#0: int, c#0: DatatypeType where $Is(c#0, Tclass._module.Color()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.CUp2
function _module.__default.CUp2($ly: LayerType, n#0: int, c#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.CUp2
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp2($ly, n#0, c#0) } 
    _module.__default.CUp2#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> $Is(_module.__default.CUp2($ly, n#0, c#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.CUp2 (revealed)
axiom {:id "id61"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp2($LS($ly), n#0, c#0) } 
    _module.__default.CUp2#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> $IsA#_module.Color(c#0)
         && (_module.Color#Equal(c#0, #_module.Color.Red())
           ==> _module.__default.CUp2#canCall(n#0 + 1, c#0))
         && (!_module.Color#Equal(c#0, #_module.Color.Red())
           ==> _module.__default.CUp2#canCall(n#0 + 2, c#0))
         && _module.__default.CUp2($LS($ly), n#0, c#0)
           == (if _module.Color#Equal(c#0, #_module.Color.Red())
             then #_module.Stream.ICons($Box(n#0), _module.__default.CUp2($ly, n#0 + 1, c#0))
             else #_module.Stream.ICons($Box(n#0), _module.__default.CUp2($ly, n#0 + 2, c#0))));
}

function _module.__default.CUp2#canCall(n#0: int, c#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp2($LS($ly), n#0, c#0) } 
  _module.__default.CUp2($LS($ly), n#0, c#0)
     == _module.__default.CUp2($ly, n#0, c#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp2(AsFuelBottom($ly), n#0, c#0) } 
  _module.__default.CUp2($ly, n#0, c#0) == _module.__default.CUp2($LZ, n#0, c#0));

function _module.__default.CUp2#requires(LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.CUp2
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp2#requires($ly, n#0, c#0) } 
  $Is(c#0, Tclass._module.Color())
     ==> _module.__default.CUp2#requires($ly, n#0, c#0) == true);

procedure {:verboseName "CUp2 (well-formedness)"} CheckWellformed$$_module.__default.CUp2(n#0: int, c#0: DatatypeType where $Is(c#0, Tclass._module.Color()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.CUp3
function _module.__default.CUp3($ly: LayerType, n#0: int, c#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.CUp3
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp3($ly, n#0, c#0) } 
    _module.__default.CUp3#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> $Is(_module.__default.CUp3($ly, n#0, c#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.CUp3 (revealed)
axiom {:id "id64"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
    { _module.__default.CUp3($LS($ly), n#0, c#0) } 
    _module.__default.CUp3#canCall(n#0, c#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.Color()))
       ==> $IsA#_module.Color(c#0)
         && (_module.Color#Equal(c#0, #_module.Color.Red())
           ==> _module.__default.CUp3#canCall(n#0 + 1, c#0))
         && (!_module.Color#Equal(c#0, #_module.Color.Red())
           ==> _module.__default.CUp3#canCall(n#0 + 2, c#0))
         && _module.__default.CUp3($LS($ly), n#0, c#0)
           == #_module.Stream.ICons($Box(n#0), 
            (if _module.Color#Equal(c#0, #_module.Color.Red())
               then _module.__default.CUp3($ly, n#0 + 1, c#0)
               else _module.__default.CUp3($ly, n#0 + 2, c#0))));
}

function _module.__default.CUp3#canCall(n#0: int, c#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp3($LS($ly), n#0, c#0) } 
  _module.__default.CUp3($LS($ly), n#0, c#0)
     == _module.__default.CUp3($ly, n#0, c#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp3(AsFuelBottom($ly), n#0, c#0) } 
  _module.__default.CUp3($ly, n#0, c#0) == _module.__default.CUp3($LZ, n#0, c#0));

function _module.__default.CUp3#requires(LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.CUp3
axiom (forall $ly: LayerType, n#0: int, c#0: DatatypeType :: 
  { _module.__default.CUp3#requires($ly, n#0, c#0) } 
  $Is(c#0, Tclass._module.Color())
     ==> _module.__default.CUp3#requires($ly, n#0, c#0) == true);

procedure {:verboseName "CUp3 (well-formedness)"} CheckWellformed$$_module.__default.CUp3(n#0: int, c#0: DatatypeType where $Is(c#0, Tclass._module.Color()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CUps (well-formedness)"} CheckWellFormed$$_module.__default.CUps(n#0: int, 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Color())
         && $IsAlloc(c#0, Tclass._module.Color(), $Heap)
         && $IsA#_module.Color(c#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CUps (call)"} Call$$_module.__default.CUps(n#0: int, 
    c#0: DatatypeType
       where $Is(c#0, Tclass._module.Color())
         && $IsAlloc(c#0, Tclass._module.Color(), $Heap)
         && $IsA#_module.Color(c#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.__default.CUp0($LS($LZ), n#0, c#0))
     && $IsA#_module.Stream(_module.__default.CUp1($LS($LZ), n#0, c#0))
     && 
    _module.__default.CUp0#canCall(n#0, c#0)
     && _module.__default.CUp1#canCall(n#0, c#0)
     && ($Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        _module.__default.CUp0($LS($LZ), n#0, c#0), 
        _module.__default.CUp1($LS($LZ), n#0, c#0))
       ==> $IsA#_module.Stream(_module.__default.CUp1($LS($LZ), n#0, c#0))
         && $IsA#_module.Stream(_module.__default.CUp2($LS($LZ), n#0, c#0))
         && 
        _module.__default.CUp1#canCall(n#0, c#0)
         && _module.__default.CUp2#canCall(n#0, c#0)
         && ($Eq#_module.Stream(TInt, 
            TInt, 
            $LS($LS($LZ)), 
            _module.__default.CUp1($LS($LZ), n#0, c#0), 
            _module.__default.CUp2($LS($LZ), n#0, c#0))
           ==> $IsA#_module.Stream(_module.__default.CUp2($LS($LZ), n#0, c#0))
             && $IsA#_module.Stream(_module.__default.CUp3($LS($LZ), n#0, c#0))
             && 
            _module.__default.CUp2#canCall(n#0, c#0)
             && _module.__default.CUp3#canCall(n#0, c#0)));
  ensures {:id "id67"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.CUp0($LS($LS($LZ)), n#0, c#0), 
    _module.__default.CUp1($LS($LS($LZ)), n#0, c#0));
  ensures {:id "id68"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.CUp1($LS($LS($LZ)), n#0, c#0), 
    _module.__default.CUp2($LS($LS($LZ)), n#0, c#0));
  ensures {:id "id69"} $Eq#_module.Stream(TInt, 
    TInt, 
    $LS($LS($LZ)), 
    _module.__default.CUp2($LS($LS($LZ)), n#0, c#0), 
    _module.__default.CUp3($LS($LS($LZ)), n#0, c#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CUps# (co-call)"} CoCall$$_module.__default.CUps_h(_k#0: Box, 
    n#1: int, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.Color())
         && $IsAlloc(c#1, Tclass._module.Color(), $Heap)
         && $IsA#_module.Color(c#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.CUp0#canCall(n#1, c#1)
     && _module.__default.CUp1#canCall(n#1, c#1)
     && ($PrefixEq#_module.Stream(TInt, 
        TInt, 
        _k#0, 
        $LS($LS($LZ)), 
        _module.__default.CUp0($LS($LZ), n#1, c#1), 
        _module.__default.CUp1($LS($LZ), n#1, c#1))
       ==> _module.__default.CUp1#canCall(n#1, c#1)
         && _module.__default.CUp2#canCall(n#1, c#1)
         && ($PrefixEq#_module.Stream(TInt, 
            TInt, 
            _k#0, 
            $LS($LS($LZ)), 
            _module.__default.CUp1($LS($LZ), n#1, c#1), 
            _module.__default.CUp2($LS($LZ), n#1, c#1))
           ==> _module.__default.CUp2#canCall(n#1, c#1)
             && _module.__default.CUp3#canCall(n#1, c#1)));
  free ensures {:id "id70"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.CUp0($LS($LZ), n#1, c#1), 
    _module.__default.CUp1($LS($LZ), n#1, c#1));
  free ensures {:id "id71"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.CUp1($LS($LZ), n#1, c#1), 
    _module.__default.CUp2($LS($LZ), n#1, c#1));
  free ensures {:id "id72"} $PrefixEq#_module.Stream(TInt, 
    TInt, 
    _k#0, 
    $LS($LS($LZ)), 
    _module.__default.CUp2($LS($LZ), n#1, c#1), 
    _module.__default.CUp3($LS($LZ), n#1, c#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "CUps# (correctness)"} Impl$$_module.__default.CUps_h(_k#0: Box, 
    n#1: int, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.Color())
         && $IsAlloc(c#1, Tclass._module.Color(), $Heap)
         && $IsA#_module.Color(c#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.CUp0#canCall(n#1, c#1)
     && _module.__default.CUp1#canCall(n#1, c#1)
     && ($PrefixEq#_module.Stream(TInt, 
        TInt, 
        _k#0, 
        $LS($LS($LZ)), 
        _module.__default.CUp0($LS($LZ), n#1, c#1), 
        _module.__default.CUp1($LS($LZ), n#1, c#1))
       ==> _module.__default.CUp1#canCall(n#1, c#1)
         && _module.__default.CUp2#canCall(n#1, c#1)
         && ($PrefixEq#_module.Stream(TInt, 
            TInt, 
            _k#0, 
            $LS($LS($LZ)), 
            _module.__default.CUp1($LS($LZ), n#1, c#1), 
            _module.__default.CUp2($LS($LZ), n#1, c#1))
           ==> _module.__default.CUp2#canCall(n#1, c#1)
             && _module.__default.CUp3#canCall(n#1, c#1)));
  ensures {:id "id73"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.CUp0($LS($LZ), n#1, c#1), 
      _module.__default.CUp1($LS($LZ), n#1, c#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.ICons_q(_module.__default.CUp0($LS($LS($LZ)), n#1, c#1))
       ==> _module.Stream.ICons_q(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.CUp0($LS($LS($LZ)), n#1, c#1))): int
           == $Unbox(_module.Stream.head(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.CUp0($LS($LS($LZ)), n#1, c#1)), 
          _module.Stream.tail(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))));
  ensures {:id "id74"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.CUp0($LS($LZ), n#1, c#1), 
      _module.__default.CUp1($LS($LZ), n#1, c#1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.ICons_q(_module.__default.CUp0($LS($LS($LZ)), n#1, c#1))
       ==> _module.Stream.ICons_q(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.CUp0($LS($LS($LZ)), n#1, c#1))): int
           == $Unbox(_module.Stream.head(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.CUp0($LS($LS($LZ)), n#1, c#1)), 
          _module.Stream.tail(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        _module.__default.CUp0($LS($LZ), n#1, c#1), 
        _module.__default.CUp1($LS($LZ), n#1, c#1)));
  ensures {:id "id75"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.CUp1($LS($LZ), n#1, c#1), 
      _module.__default.CUp2($LS($LZ), n#1, c#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.ICons_q(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))
       ==> _module.Stream.ICons_q(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))): int
           == $Unbox(_module.Stream.head(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1)), 
          _module.Stream.tail(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))));
  ensures {:id "id76"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.CUp1($LS($LZ), n#1, c#1), 
      _module.__default.CUp2($LS($LZ), n#1, c#1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.ICons_q(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))
       ==> _module.Stream.ICons_q(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1))): int
           == $Unbox(_module.Stream.head(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.CUp1($LS($LS($LZ)), n#1, c#1)), 
          _module.Stream.tail(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        _module.__default.CUp1($LS($LZ), n#1, c#1), 
        _module.__default.CUp2($LS($LZ), n#1, c#1)));
  ensures {:id "id77"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.CUp2($LS($LZ), n#1, c#1), 
      _module.__default.CUp3($LS($LZ), n#1, c#1))
     || (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.ICons_q(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))
       ==> _module.Stream.ICons_q(_module.__default.CUp3($LS($LS($LZ)), n#1, c#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))): int
           == $Unbox(_module.Stream.head(_module.__default.CUp3($LS($LS($LZ)), n#1, c#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1)), 
          _module.Stream.tail(_module.__default.CUp3($LS($LS($LZ)), n#1, c#1))));
  ensures {:id "id78"} $PrefixEq#_module.Stream(TInt, 
      TInt, 
      _k#0, 
      $LS($LS($LZ)), 
      _module.__default.CUp2($LS($LZ), n#1, c#1), 
      _module.__default.CUp3($LS($LZ), n#1, c#1))
     || 
    (0 < ORD#Offset(_k#0)
       ==> 
      _module.Stream.ICons_q(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))
       ==> _module.Stream.ICons_q(_module.__default.CUp3($LS($LS($LZ)), n#1, c#1))
         && 
        $Unbox(_module.Stream.head(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1))): int
           == $Unbox(_module.Stream.head(_module.__default.CUp3($LS($LS($LZ)), n#1, c#1))): int
         && $PrefixEq#_module.Stream(TInt, 
          TInt, 
          ORD#Minus(_k#0, ORD#FromNat(1)), 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.CUp2($LS($LS($LZ)), n#1, c#1)), 
          _module.Stream.tail(_module.__default.CUp3($LS($LS($LZ)), n#1, c#1))))
     || (_k#0 != ORD#FromNat(0) && ORD#IsLimit(_k#0)
       ==> $Eq#_module.Stream(TInt, 
        TInt, 
        $LS($LS($LZ)), 
        _module.__default.CUp2($LS($LZ), n#1, c#1), 
        _module.__default.CUp3($LS($LZ), n#1, c#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CUps# (correctness)"} Impl$$_module.__default.CUps_h(_k#0: Box, n#1: int, c#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: CUps#, Impl$$_module.__default.CUps_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Color(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#n0#0: int, $ih#c0#0: DatatypeType :: 
      { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.CUp2($LS($LZ), $ih#n0#0, $ih#c0#0), 
          _module.__default.CUp3($LS($LZ), $ih#n0#0, $ih#c0#0)) } 
        { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.CUp1($LS($LZ), $ih#n0#0, $ih#c0#0), 
          _module.__default.CUp2($LS($LZ), $ih#n0#0, $ih#c0#0)) } 
        { $PrefixEq#_module.Stream(TInt, 
          TInt, 
          $ih#_k0#0, 
          $LS($LS($LZ)), 
          _module.__default.CUp0($LS($LZ), $ih#n0#0, $ih#c0#0), 
          _module.__default.CUp1($LS($LZ), $ih#n0#0, $ih#c0#0)) } 
      $Is($ih#c0#0, Tclass._module.Color())
           && Lit(true)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && ((0 <= $ih#n0#0 && $ih#n0#0 < n#1)
                 || ($ih#n0#0 == n#1 && DtRank($ih#c0#0) < DtRank(c#1)))))
         ==> $PrefixEq#_module.Stream(TInt, 
            TInt, 
            $ih#_k0#0, 
            $LS($LS($LZ)), 
            _module.__default.CUp0($LS($LZ), $ih#n0#0, $ih#c0#0), 
            _module.__default.CUp1($LS($LZ), $ih#n0#0, $ih#c0#0))
           && $PrefixEq#_module.Stream(TInt, 
            TInt, 
            $ih#_k0#0, 
            $LS($LS($LZ)), 
            _module.__default.CUp1($LS($LZ), $ih#n0#0, $ih#c0#0), 
            _module.__default.CUp2($LS($LZ), $ih#n0#0, $ih#c0#0))
           && $PrefixEq#_module.Stream(TInt, 
            TInt, 
            $ih#_k0#0, 
            $LS($LS($LZ)), 
            _module.__default.CUp2($LS($LZ), $ih#n0#0, $ih#c0#0), 
            _module.__default.CUp3($LS($LZ), $ih#n0#0, $ih#c0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(113,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(113,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#0: Box, n#2: int, c#2: DatatypeType :: 
          { _module.__default.CUp3($LS($LZ), n#2, c#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.CUp2($LS($LZ), n#2, c#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.CUp1($LS($LZ), n#2, c#2), ORD#Less(_k'#0, _k#0) } 
            { _module.__default.CUp0($LS($LZ), n#2, c#2), ORD#Less(_k'#0, _k#0) } 
          $Is(c#2, Tclass._module.Color()) && ORD#Less(_k'#0, _k#0)
             ==> $PrefixEq#_module.Stream(TInt, 
                TInt, 
                _k'#0, 
                $LS($LS($LZ)), 
                _module.__default.CUp0($LS($LZ), n#2, c#2), 
                _module.__default.CUp1($LS($LZ), n#2, c#2))
               && $PrefixEq#_module.Stream(TInt, 
                TInt, 
                _k'#0, 
                $LS($LS($LZ)), 
                _module.__default.CUp1($LS($LZ), n#2, c#2), 
                _module.__default.CUp2($LS($LZ), n#2, c#2))
               && $PrefixEq#_module.Stream(TInt, 
                TInt, 
                _k'#0, 
                $LS($LS($LZ)), 
                _module.__default.CUp2($LS($LZ), n#2, c#2), 
                _module.__default.CUp3($LS($LZ), n#2, c#2)));
    }
}



// function declaration for _module._default.UpLet0
function _module.__default.UpLet0($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.UpLet0
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpLet0($ly, n#0) } 
    _module.__default.UpLet0#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.UpLet0($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.UpLet0 (revealed)
axiom {:id "id79"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpLet0($LS($ly), n#0) } 
    _module.__default.UpLet0#canCall(n#0) || 1 < $FunctionContextHeight
       ==> (var n'#0 := n#0 + 1; _module.__default.UpLet0#canCall(n'#0))
         && _module.__default.UpLet0($LS($ly), n#0)
           == (var n'#0 := n#0 + 1; 
            #_module.Stream.ICons($Box(n'#0 - 1), _module.__default.UpLet0($ly, n'#0))));
}

function _module.__default.UpLet0#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpLet0($LS($ly), n#0) } 
  _module.__default.UpLet0($LS($ly), n#0) == _module.__default.UpLet0($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpLet0(AsFuelBottom($ly), n#0) } 
  _module.__default.UpLet0($ly, n#0) == _module.__default.UpLet0($LZ, n#0));

function _module.__default.UpLet0#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.UpLet0
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpLet0#requires($ly, n#0) } 
  _module.__default.UpLet0#requires($ly, n#0) == true);

procedure {:verboseName "UpLet0 (well-formedness)"} CheckWellformed$$_module.__default.UpLet0(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.UpLet1
function _module.__default.UpLet1($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.UpLet1
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpLet1($ly, n#0) } 
    _module.__default.UpLet1#canCall(n#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.UpLet1($ly, n#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.UpLet1 (revealed)
axiom {:id "id83"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpLet1($LS($ly), n#0) } 
    _module.__default.UpLet1#canCall(n#0) || 1 < $FunctionContextHeight
       ==> (var n'#0 := n#0 + 1; _module.__default.UpLet1#canCall(n'#0))
         && _module.__default.UpLet1($LS($ly), n#0)
           == #_module.Stream.ICons($Box(n#0), (var n'#0 := n#0 + 1; _module.__default.UpLet1($ly, n'#0))));
}

function _module.__default.UpLet1#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpLet1($LS($ly), n#0) } 
  _module.__default.UpLet1($LS($ly), n#0) == _module.__default.UpLet1($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpLet1(AsFuelBottom($ly), n#0) } 
  _module.__default.UpLet1($ly, n#0) == _module.__default.UpLet1($LZ, n#0));

function _module.__default.UpLet1#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.UpLet1
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpLet1#requires($ly, n#0) } 
  _module.__default.UpLet1#requires($ly, n#0) == true);

procedure {:verboseName "UpLet1 (well-formedness)"} CheckWellformed$$_module.__default.UpLet1(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Nothing
function _module.__default.Nothing(_module._default.Nothing$_T0: Ty, $ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.Nothing
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Nothing$_T0: Ty, $ly: LayerType :: 
    { _module.__default.Nothing(_module._default.Nothing$_T0, $ly) } 
    _module.__default.Nothing#canCall(_module._default.Nothing$_T0)
         || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Nothing(_module._default.Nothing$_T0, $ly), 
        Tclass._module.Lang(_module._default.Nothing$_T0)));
// alloc consequence axiom for _module.__default.Nothing
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.Nothing$_T0: Ty, $ly: LayerType :: 
    { $IsAlloc(_module.__default.Nothing(_module._default.Nothing$_T0, $ly), 
        Tclass._module.Lang(_module._default.Nothing$_T0), 
        $Heap) } 
    (_module.__default.Nothing#canCall(_module._default.Nothing$_T0)
           || 1 < $FunctionContextHeight)
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Nothing(_module._default.Nothing$_T0, $ly), 
        Tclass._module.Lang(_module._default.Nothing$_T0), 
        $Heap));
// definition axiom for _module.__default.Nothing (revealed)
axiom {:id "id87"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Nothing$_T0: Ty, $ly: LayerType :: 
    { _module.__default.Nothing(_module._default.Nothing$_T0, $LS($ly)) } 
    _module.__default.Nothing#canCall(_module._default.Nothing$_T0)
         || 1 < $FunctionContextHeight
       ==> _module.__default.Nothing#canCall(_module._default.Nothing$_T0)
         && _module.__default.Nothing(_module._default.Nothing$_T0, $LS($ly))
           == Lit(#_module.Lang.L(Lit(false), 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle1((lambda $l#0#heap#0: Heap, $l#0#s#0: Box :: 
                        $Box(Lit(_module.__default.Nothing(_module._default.Nothing$_T0, $l#0#ly#0)))), 
                      (lambda $l#0#heap#0: Heap, $l#0#s#0: Box :: 
                        $IsBox($l#0#s#0, _module._default.Nothing$_T0)), 
                      (lambda $l#0#heap#0: Heap, $l#0#s#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $ly)))));
}

function _module.__default.Nothing#canCall(_module._default.Nothing$_T0: Ty) : bool;

// layer synonym axiom
axiom (forall _module._default.Nothing$_T0: Ty, $ly: LayerType :: 
  { _module.__default.Nothing(_module._default.Nothing$_T0, $LS($ly)) } 
  _module.__default.Nothing(_module._default.Nothing$_T0, $LS($ly))
     == _module.__default.Nothing(_module._default.Nothing$_T0, $ly));

// fuel synonym axiom
axiom (forall _module._default.Nothing$_T0: Ty, $ly: LayerType :: 
  { _module.__default.Nothing(_module._default.Nothing$_T0, AsFuelBottom($ly)) } 
  _module.__default.Nothing(_module._default.Nothing$_T0, $ly)
     == _module.__default.Nothing(_module._default.Nothing$_T0, $LZ));

function _module.__default.Nothing#requires(Ty, LayerType) : bool;

// #requires axiom for _module.__default.Nothing
axiom (forall _module._default.Nothing$_T0: Ty, $ly: LayerType :: 
  { _module.__default.Nothing#requires(_module._default.Nothing$_T0, $ly) } 
  _module.__default.Nothing#requires(_module._default.Nothing$_T0, $ly) == true);

procedure {:verboseName "Nothing (well-formedness)"} CheckWellformed$$_module.__default.Nothing(_module._default.Nothing$_T0: Ty);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.OnlyDs
function _module.__default.OnlyDs($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.OnlyDs
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.OnlyDs($ly) } 
    _module.__default.OnlyDs#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.OnlyDs($ly), Tclass._module.Lang(TChar)));
// definition axiom for _module.__default.OnlyDs (revealed)
axiom {:id "id90"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.OnlyDs($LS($ly)) } 
    _module.__default.OnlyDs#canCall() || 2 < $FunctionContextHeight
       ==> (forall $l#1#ch#0: char :: 
          $Is($l#1#ch#0, TChar)
             ==> ($l#1#ch#0 == Lit(char#FromInt(100)) || $l#1#ch#0 == Lit(char#FromInt(68))
                 ==> _module.__default.OnlyDs#canCall())
               && (!($l#1#ch#0 == Lit(char#FromInt(100)) || $l#1#ch#0 == Lit(char#FromInt(68)))
                 ==> _module.__default.Nothing#canCall(TChar)))
         && _module.__default.OnlyDs($LS($ly))
           == Lit(#_module.Lang.L(Lit(true), 
              Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
                    Handle1((lambda $l#0#heap#0: Heap, $l#0#ch#0: Box :: 
                        $Box((if $Unbox($l#0#ch#0): char == Lit(char#FromInt(100))
                               || $Unbox($l#0#ch#0): char == Lit(char#FromInt(68))
                             then _module.__default.OnlyDs($l#0#ly#0)
                             else _module.__default.Nothing(TChar, $l#0#ly#0)))), 
                      (lambda $l#0#heap#0: Heap, $l#0#ch#0: Box :: $IsBox($l#0#ch#0, TChar)), 
                      (lambda $l#0#heap#0: Heap, $l#0#ch#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
                  $ly)))));
}

function _module.__default.OnlyDs#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.OnlyDs($LS($ly)) } 
  _module.__default.OnlyDs($LS($ly)) == _module.__default.OnlyDs($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.OnlyDs(AsFuelBottom($ly)) } 
  _module.__default.OnlyDs($ly) == _module.__default.OnlyDs($LZ));

function _module.__default.OnlyDs#requires(LayerType) : bool;

// #requires axiom for _module.__default.OnlyDs
axiom (forall $ly: LayerType :: 
  { _module.__default.OnlyDs#requires($ly) } 
  _module.__default.OnlyDs#requires($ly) == true);

procedure {:verboseName "OnlyDs (well-formedness)"} CheckWellformed$$_module.__default.OnlyDs();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.TotalLang
function _module.__default.TotalLang(_module._default.TotalLang$S: Ty, $ly: LayerType, $heap: Heap, l#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.TotalLang (revealed)
axiom {:id "id94"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang$S: Ty, $ly: LayerType, $Heap: Heap, l#0: DatatypeType :: 
    { _module.__default.TotalLang(_module._default.TotalLang$S, $LS($ly), $Heap, l#0), $IsGoodHeap($Heap) } 
    _module.__default.TotalLang#canCall(_module._default.TotalLang$S, $Heap, l#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang$S)))
       ==> (forall s#0: Box :: 
          { $Unbox(Apply1(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0)): DatatypeType } 
            { Reads1(_module._default.TotalLang$S, 
              Tclass._module.Lang(_module._default.TotalLang$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#0) } 
            { Requires1(_module._default.TotalLang$S, 
              Tclass._module.Lang(_module._default.TotalLang$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#0) } 
          $IsBox(s#0, _module._default.TotalLang$S)
             ==> _module.Lang.L_q(l#0)
               && Requires1#canCall(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0)
               && (Requires1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#0)
                 ==> _module.Lang.L_q(l#0)
                   && Reads1#canCall(_module._default.TotalLang$S, 
                    Tclass._module.Lang(_module._default.TotalLang$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#0)
                   && (Set#Equal(Reads1(_module._default.TotalLang$S, 
                        Tclass._module.Lang(_module._default.TotalLang$S), 
                        $Heap, 
                        _module.Lang.deriv(l#0), 
                        s#0), 
                      Set#Empty(): Set)
                     ==> _module.Lang.L_q(l#0)
                       && _module.__default.TotalLang#canCall(_module._default.TotalLang$S, 
                        $Heap, 
                        $Unbox(Apply1(_module._default.TotalLang$S, 
                            Tclass._module.Lang(_module._default.TotalLang$S), 
                            $Heap, 
                            _module.Lang.deriv(l#0), 
                            s#0)): DatatypeType))))
         && _module.__default.TotalLang(_module._default.TotalLang$S, $LS($ly), $Heap, l#0)
           == (forall s#0: Box :: 
            { $Unbox(Apply1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#0)): DatatypeType } 
              { Reads1(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0) } 
              { Requires1(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0) } 
            $IsBox(s#0, _module._default.TotalLang$S)
               ==> Requires1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#0)
                 && Set#Equal(Reads1(_module._default.TotalLang$S, 
                    Tclass._module.Lang(_module._default.TotalLang$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#0), 
                  Set#Empty(): Set)
                 && _module.__default.TotalLang(_module._default.TotalLang$S, 
                  $ly, 
                  $Heap, 
                  $Unbox(Apply1(_module._default.TotalLang$S, 
                      Tclass._module.Lang(_module._default.TotalLang$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#0)): DatatypeType)));
}

function _module.__default.TotalLang#canCall(_module._default.TotalLang$S: Ty, $heap: Heap, l#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.TotalLang$S: Ty, $ly: LayerType, $Heap: Heap, l#0: DatatypeType :: 
  { _module.__default.TotalLang(_module._default.TotalLang$S, $LS($ly), $Heap, l#0) } 
  _module.__default.TotalLang(_module._default.TotalLang$S, $LS($ly), $Heap, l#0)
     == _module.__default.TotalLang(_module._default.TotalLang$S, $ly, $Heap, l#0));

// fuel synonym axiom
axiom (forall _module._default.TotalLang$S: Ty, $ly: LayerType, $Heap: Heap, l#0: DatatypeType :: 
  { _module.__default.TotalLang(_module._default.TotalLang$S, AsFuelBottom($ly), $Heap, l#0) } 
  _module.__default.TotalLang(_module._default.TotalLang$S, $ly, $Heap, l#0)
     == _module.__default.TotalLang(_module._default.TotalLang$S, $LZ, $Heap, l#0));

// frame axiom for _module.__default.TotalLang
axiom (forall _module._default.TotalLang$S: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    l#0: DatatypeType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.TotalLang(_module._default.TotalLang$S, $ly, $h1, l#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.TotalLang#canCall(_module._default.TotalLang$S, $h0, l#0)
         || ($Is(l#0, Tclass._module.Lang(_module._default.TotalLang$S))
           && $IsAlloc(l#0, Tclass._module.Lang(_module._default.TotalLang$S), $h0)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.TotalLang(_module._default.TotalLang$S, $ly, $h0, l#0)
       == _module.__default.TotalLang(_module._default.TotalLang$S, $ly, $h1, l#0));

function _module.__default.TotalLang#requires(Ty, LayerType, Heap, DatatypeType) : bool;

// #requires axiom for _module.__default.TotalLang
axiom (forall _module._default.TotalLang$S: Ty, $ly: LayerType, $Heap: Heap, l#0: DatatypeType :: 
  { _module.__default.TotalLang#requires(_module._default.TotalLang$S, $ly, $Heap, l#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang$S))
     ==> _module.__default.TotalLang#requires(_module._default.TotalLang$S, $ly, $Heap, l#0)
       == true);

// 1st prefix predicate axiom for _module.__default.TotalLang_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      l#0: DatatypeType :: 
    { _module.__default.TotalLang(_module._default.TotalLang#$S, $LS($ly), $Heap, l#0) } 
    $IsGoodHeap($Heap)
         && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang#$S))
         && _module.__default.TotalLang(_module._default.TotalLang#$S, $LS($ly), $Heap, l#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0) } 
        _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      l#0: DatatypeType :: 
    { _module.__default.TotalLang(_module._default.TotalLang#$S, $LS($ly), $Heap, l#0) } 
    $IsGoodHeap($Heap)
         && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang#$S))
         && (forall _k#0: Box :: 
          { _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0) } 
          _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0))
       ==> _module.__default.TotalLang(_module._default.TotalLang#$S, $LS($ly), $Heap, l#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      l#0: DatatypeType, 
      _k#0: Box :: 
    { _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $Heap, _k#0, l#0) } 
    $IsGoodHeap($Heap)
         && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang#$S))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $Heap, _k#0, l#0));

procedure {:verboseName "TotalLang (well-formedness)"} CheckWellformed$$_module.__default.TotalLang(_module._default.TotalLang$S: Ty
       where $AlwaysAllocated(_module._default.TotalLang$S), 
    l#0: DatatypeType
       where $Is(l#0, Tclass._module.Lang(_module._default.TotalLang$S)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TotalLang (well-formedness)"} CheckWellformed$$_module.__default.TotalLang(_module._default.TotalLang$S: Ty, l#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var s#1: Box;
  var ##x0#0: Box;
  var ##x0#1: Box;
  var ##l#0: DatatypeType;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
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
        havoc s#1;
        if ($IsBox(s#1, _module._default.TotalLang$S)
           && $IsAllocBox(s#1, _module._default.TotalLang$S, $Heap))
        {
            assume _module.Lang.L_q(l#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.Lang.deriv(l#0)), 
              Tclass._System.___hFunc1(_module._default.TotalLang$S, Tclass._module.Lang(_module._default.TotalLang$S)), 
              $Heap);
            ##x0#0 := s#1;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x0#0, _module._default.TotalLang$S, $Heap);
            b$reqreads#0 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(_module._default.TotalLang$S, 
                      Tclass._module.Lang(_module._default.TotalLang$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      ##x0#0), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assume Requires1#canCall(_module._default.TotalLang$S, 
              Tclass._module.Lang(_module._default.TotalLang$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#1);
            if (Requires1(_module._default.TotalLang$S, 
              Tclass._module.Lang(_module._default.TotalLang$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#1))
            {
                assume _module.Lang.L_q(l#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(_module.Lang.deriv(l#0)), 
                  Tclass._System.___hFunc1(_module._default.TotalLang$S, Tclass._module.Lang(_module._default.TotalLang$S)), 
                  $Heap);
                ##x0#1 := s#1;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x0#1, _module._default.TotalLang$S, $Heap);
                assert {:id "id95"} Requires1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1);
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(Reads1(_module._default.TotalLang$S, 
                          Tclass._module.Lang(_module._default.TotalLang$S), 
                          $Heap, 
                          _module.Lang.deriv(l#0), 
                          s#1), 
                        $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assume Reads1#canCall(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1);
            }

            if (Requires1(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#1)
               && Set#Equal(Reads1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1), 
                Set#Empty(): Set))
            {
                assume _module.Lang.L_q(l#0);
                assert {:id "id96"} Requires1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1);
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(Reads1(_module._default.TotalLang$S, 
                          Tclass._module.Lang(_module._default.TotalLang$S), 
                          $Heap, 
                          _module.Lang.deriv(l#0), 
                          s#1), 
                        $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                ##l#0 := $Unbox(Apply1(_module._default.TotalLang$S, 
                    Tclass._module.Lang(_module._default.TotalLang$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#1)): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##l#0, Tclass._module.Lang(_module._default.TotalLang$S), $Heap);
                b$reqreads#3 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && $Unbox(read($Heap, $o, alloc)): bool
                     ==> $_ReadsFrame[$o, $f]);
                assume _module.__default.TotalLang#canCall(_module._default.TotalLang$S, 
                  $Heap, 
                  $Unbox(Apply1(_module._default.TotalLang$S, 
                      Tclass._module.Lang(_module._default.TotalLang$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#1)): DatatypeType);
            }
        }

        // End Comprehension WF check
        assume {:id "id97"} _module.__default.TotalLang(_module._default.TotalLang$S, $LS($LZ), $Heap, l#0)
           == (forall s#2: Box :: 
            { $Unbox(Apply1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#2)): DatatypeType } 
              { Reads1(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2) } 
              { Requires1(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2) } 
            $IsBox(s#2, _module._default.TotalLang$S)
               ==> Requires1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#2)
                 && Set#Equal(Reads1(_module._default.TotalLang$S, 
                    Tclass._module.Lang(_module._default.TotalLang$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#2), 
                  Set#Empty(): Set)
                 && _module.__default.TotalLang(_module._default.TotalLang$S, 
                  $LS($LZ), 
                  $Heap, 
                  $Unbox(Apply1(_module._default.TotalLang$S, 
                      Tclass._module.Lang(_module._default.TotalLang$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#2)): DatatypeType));
        assume (forall s#2: Box :: 
          { $Unbox(Apply1(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2)): DatatypeType } 
            { Reads1(_module._default.TotalLang$S, 
              Tclass._module.Lang(_module._default.TotalLang$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#2) } 
            { Requires1(_module._default.TotalLang$S, 
              Tclass._module.Lang(_module._default.TotalLang$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#2) } 
          $IsBox(s#2, _module._default.TotalLang$S)
             ==> _module.Lang.L_q(l#0)
               && Requires1#canCall(_module._default.TotalLang$S, 
                Tclass._module.Lang(_module._default.TotalLang$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2)
               && (Requires1(_module._default.TotalLang$S, 
                  Tclass._module.Lang(_module._default.TotalLang$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#2)
                 ==> _module.Lang.L_q(l#0)
                   && Reads1#canCall(_module._default.TotalLang$S, 
                    Tclass._module.Lang(_module._default.TotalLang$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#2)
                   && (Set#Equal(Reads1(_module._default.TotalLang$S, 
                        Tclass._module.Lang(_module._default.TotalLang$S), 
                        $Heap, 
                        _module.Lang.deriv(l#0), 
                        s#2), 
                      Set#Empty(): Set)
                     ==> _module.Lang.L_q(l#0)
                       && _module.__default.TotalLang#canCall(_module._default.TotalLang$S, 
                        $Heap, 
                        $Unbox(Apply1(_module._default.TotalLang$S, 
                            Tclass._module.Lang(_module._default.TotalLang$S), 
                            $Heap, 
                            _module.Lang.deriv(l#0), 
                            s#2)): DatatypeType))));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.TotalLang(_module._default.TotalLang$S, $LS($LZ), $Heap, l#0), 
          TBool);
        assert {:id "id98"} b$reqreads#0;
        assert {:id "id99"} b$reqreads#1;
        assert {:id "id100"} b$reqreads#2;
        assert {:id "id101"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module._default.TotalLang#
function _module.__default.TotalLang_h(_module._default.TotalLang#$S: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    _k#0: Box, 
    l#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.TotalLang_h (revealed)
axiom {:id "id102"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: Box, 
      l#0: DatatypeType :: 
    { _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0), $IsGoodHeap($Heap) } 
    _module.__default.TotalLang_h#canCall(_module._default.TotalLang#$S, $Heap, _k#0, l#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang#$S)))
       ==> (0 < ORD#Offset(_k#0)
           ==> (forall s#3: Box :: 
            { $Unbox(Apply1(_module._default.TotalLang#$S, 
                  Tclass._module.Lang(_module._default.TotalLang#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3)): DatatypeType } 
              { Reads1(_module._default.TotalLang#$S, 
                Tclass._module.Lang(_module._default.TotalLang#$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#3) } 
              { Requires1(_module._default.TotalLang#$S, 
                Tclass._module.Lang(_module._default.TotalLang#$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#3) } 
            $IsBox(s#3, _module._default.TotalLang#$S)
               ==> _module.Lang.L_q(l#0)
                 && Requires1#canCall(_module._default.TotalLang#$S, 
                  Tclass._module.Lang(_module._default.TotalLang#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3)
                 && (Requires1(_module._default.TotalLang#$S, 
                    Tclass._module.Lang(_module._default.TotalLang#$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#3)
                   ==> _module.Lang.L_q(l#0)
                     && Reads1#canCall(_module._default.TotalLang#$S, 
                      Tclass._module.Lang(_module._default.TotalLang#$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#3)
                     && (Set#Equal(Reads1(_module._default.TotalLang#$S, 
                          Tclass._module.Lang(_module._default.TotalLang#$S), 
                          $Heap, 
                          _module.Lang.deriv(l#0), 
                          s#3), 
                        Set#Empty(): Set)
                       ==> _module.Lang.L_q(l#0)
                         && _module.__default.TotalLang_h#canCall(_module._default.TotalLang#$S, 
                          $Heap, 
                          ORD#Minus(_k#0, ORD#FromNat(1)), 
                          $Unbox(Apply1(_module._default.TotalLang#$S, 
                              Tclass._module.Lang(_module._default.TotalLang#$S), 
                              $Heap, 
                              _module.Lang.deriv(l#0), 
                              s#3)): DatatypeType)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (forall s#3: Box :: 
            { $Unbox(Apply1(_module._default.TotalLang#$S, 
                  Tclass._module.Lang(_module._default.TotalLang#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3)): DatatypeType } 
              { Reads1(_module._default.TotalLang#$S, 
                Tclass._module.Lang(_module._default.TotalLang#$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#3) } 
              { Requires1(_module._default.TotalLang#$S, 
                Tclass._module.Lang(_module._default.TotalLang#$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#3) } 
            $IsBox(s#3, _module._default.TotalLang#$S)
               ==> Requires1(_module._default.TotalLang#$S, 
                  Tclass._module.Lang(_module._default.TotalLang#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3)
                 && Set#Equal(Reads1(_module._default.TotalLang#$S, 
                    Tclass._module.Lang(_module._default.TotalLang#$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#3), 
                  Set#Empty(): Set)
                 && _module.__default.TotalLang_h(_module._default.TotalLang#$S, 
                  $ly, 
                  $Heap, 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  $Unbox(Apply1(_module._default.TotalLang#$S, 
                      Tclass._module.Lang(_module._default.TotalLang#$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#3)): DatatypeType)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $Heap, _k'#0, l#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.TotalLang_h#canCall(_module._default.TotalLang#$S, $Heap, _k'#0, l#0)))
         && _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (forall s#3: Box :: 
                { $Unbox(Apply1(_module._default.TotalLang#$S, 
                      Tclass._module.Lang(_module._default.TotalLang#$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#3)): DatatypeType } 
                  { Reads1(_module._default.TotalLang#$S, 
                    Tclass._module.Lang(_module._default.TotalLang#$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#3) } 
                  { Requires1(_module._default.TotalLang#$S, 
                    Tclass._module.Lang(_module._default.TotalLang#$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#3) } 
                $IsBox(s#3, _module._default.TotalLang#$S)
                   ==> Requires1(_module._default.TotalLang#$S, 
                      Tclass._module.Lang(_module._default.TotalLang#$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#3)
                     && Set#Equal(Reads1(_module._default.TotalLang#$S, 
                        Tclass._module.Lang(_module._default.TotalLang#$S), 
                        $Heap, 
                        _module.Lang.deriv(l#0), 
                        s#3), 
                      Set#Empty(): Set)
                     && _module.__default.TotalLang_h(_module._default.TotalLang#$S, 
                      $ly, 
                      $Heap, 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(Apply1(_module._default.TotalLang#$S, 
                          Tclass._module.Lang(_module._default.TotalLang#$S), 
                          $Heap, 
                          _module.Lang.deriv(l#0), 
                          s#3)): DatatypeType)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $Heap, _k'#0, l#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $Heap, _k'#0, l#0)))));
}

function _module.__default.TotalLang_h#canCall(_module._default.TotalLang#$S: Ty, $heap: Heap, _k#0: Box, l#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.TotalLang#$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: Box, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0) } 
  _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LS($ly), $Heap, _k#0, l#0)
     == _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $Heap, _k#0, l#0));

// fuel synonym axiom
axiom (forall _module._default.TotalLang#$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: Box, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang_h(_module._default.TotalLang#$S, AsFuelBottom($ly), $Heap, _k#0, l#0) } 
  _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $Heap, _k#0, l#0)
     == _module.__default.TotalLang_h(_module._default.TotalLang#$S, $LZ, $Heap, _k#0, l#0));

// frame axiom for _module.__default.TotalLang_h
axiom (forall _module._default.TotalLang#$S: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    _k#0: Box, 
    l#0: DatatypeType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $h1, _k#0, l#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.TotalLang_h#canCall(_module._default.TotalLang#$S, $h0, _k#0, l#0)
         || ($Is(l#0, Tclass._module.Lang(_module._default.TotalLang#$S))
           && $IsAlloc(l#0, Tclass._module.Lang(_module._default.TotalLang#$S), $h0)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $h0, _k#0, l#0)
       == _module.__default.TotalLang_h(_module._default.TotalLang#$S, $ly, $h1, _k#0, l#0));

function _module.__default.TotalLang_h#requires(Ty, LayerType, Heap, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.TotalLang_h
axiom (forall _module._default.TotalLang#$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: Box, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang_h#requires(_module._default.TotalLang#$S, $ly, $Heap, _k#0, l#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang#$S))
     ==> _module.__default.TotalLang_h#requires(_module._default.TotalLang#$S, $ly, $Heap, _k#0, l#0)
       == true);

procedure {:verboseName "NothingTotal (well-formedness)"} CheckWellFormed$$_module.__default.NothingTotal(_module._default.NothingTotal$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal$S));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NothingTotal (call)"} Call$$_module.__default.NothingTotal(_module._default.NothingTotal$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal$S));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Nothing#canCall(_module._default.NothingTotal$S)
     && _module.__default.TotalLang#canCall(_module._default.NothingTotal$S, 
      $Heap, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))));
  free ensures {:id "id104"} _module.__default.TotalLang#canCall(_module._default.NothingTotal$S, 
      $Heap, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))))
     && 
    _module.__default.TotalLang(_module._default.NothingTotal$S, 
      $LS($LZ), 
      $Heap, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))))
     && (forall s#0: Box :: 
      { $Unbox(Apply1(_module._default.NothingTotal$S, 
            Tclass._module.Lang(_module._default.NothingTotal$S), 
            $Heap, 
            _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))), 
            s#0)): DatatypeType } 
        { Reads1(_module._default.NothingTotal$S, 
          Tclass._module.Lang(_module._default.NothingTotal$S), 
          $Heap, 
          _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))), 
          s#0) } 
        { Requires1(_module._default.NothingTotal$S, 
          Tclass._module.Lang(_module._default.NothingTotal$S), 
          $Heap, 
          _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))), 
          s#0) } 
      $IsBox(s#0, _module._default.NothingTotal$S)
         ==> Requires1(_module._default.NothingTotal$S, 
            Tclass._module.Lang(_module._default.NothingTotal$S), 
            $Heap, 
            Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))))), 
            s#0)
           && Set#Equal(Reads1(_module._default.NothingTotal$S, 
              Tclass._module.Lang(_module._default.NothingTotal$S), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))))), 
              s#0), 
            Set#Empty(): Set)
           && _module.__default.TotalLang(_module._default.NothingTotal$S, 
            $LS($LZ), 
            $Heap, 
            $Unbox(Apply1(_module._default.NothingTotal$S, 
                Tclass._module.Lang(_module._default.NothingTotal$S), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal$S, $LS($LZ))))), 
                s#0)): DatatypeType));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NothingTotal# (co-call)"} CoCall$$_module.__default.NothingTotal_h(_module._default.NothingTotal#$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal#$S), 
    _k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Nothing#canCall(_module._default.NothingTotal#$S)
     && _module.__default.TotalLang_h#canCall(_module._default.NothingTotal#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))));
  free ensures {:id "id105"} _module.__default.TotalLang_h#canCall(_module._default.NothingTotal#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))
     && 
    _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
      $LS($LZ), 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (forall s#1: Box :: 
        { $Unbox(Apply1(_module._default.NothingTotal#$S, 
              Tclass._module.Lang(_module._default.NothingTotal#$S), 
              $Heap, 
              _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))), 
              s#1)): DatatypeType } 
          { Reads1(_module._default.NothingTotal#$S, 
            Tclass._module.Lang(_module._default.NothingTotal#$S), 
            $Heap, 
            _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))), 
            s#1) } 
          { Requires1(_module._default.NothingTotal#$S, 
            Tclass._module.Lang(_module._default.NothingTotal#$S), 
            $Heap, 
            _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))), 
            s#1) } 
        $IsBox(s#1, _module._default.NothingTotal#$S)
           ==> Requires1(_module._default.NothingTotal#$S, 
              Tclass._module.Lang(_module._default.NothingTotal#$S), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))), 
              s#1)
             && Set#Equal(Reads1(_module._default.NothingTotal#$S, 
                Tclass._module.Lang(_module._default.NothingTotal#$S), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))), 
                s#1), 
              Set#Empty(): Set)
             && _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
              $LS($LZ), 
              $Heap, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $Unbox(Apply1(_module._default.NothingTotal#$S, 
                  Tclass._module.Lang(_module._default.NothingTotal#$S), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))), 
                  s#1)): DatatypeType)))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
            $LS($LZ), 
            $Heap, 
            _k'#0, 
            _module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
            $LS($LZ), 
            $Heap, 
            _k'#0, 
            Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NothingTotal# (correctness)"} Impl$$_module.__default.NothingTotal_h(_module._default.NothingTotal#$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal#$S), 
    _k#0: Box)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Nothing#canCall(_module._default.NothingTotal#$S)
     && _module.__default.TotalLang_h#canCall(_module._default.NothingTotal#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))));
  ensures {:id "id106"} _module.__default.TotalLang_h#canCall(_module._default.NothingTotal#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))
     ==> _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
        $LS($LZ), 
        $Heap, 
        _k#0, 
        Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> (forall s#2: Box :: 
          { $Unbox(Apply1(_module._default.NothingTotal#$S, 
                Tclass._module.Lang(_module._default.NothingTotal#$S), 
                $Heap, 
                _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))), 
                s#2)): DatatypeType } 
            { Reads1(_module._default.NothingTotal#$S, 
              Tclass._module.Lang(_module._default.NothingTotal#$S), 
              $Heap, 
              _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))), 
              s#2) } 
            { Requires1(_module._default.NothingTotal#$S, 
              Tclass._module.Lang(_module._default.NothingTotal#$S), 
              $Heap, 
              _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))), 
              s#2) } 
          $IsBox(s#2, _module._default.NothingTotal#$S)
             ==> Requires1(_module._default.NothingTotal#$S, 
                Tclass._module.Lang(_module._default.NothingTotal#$S), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))))), 
                s#2)
               && Set#Equal(Reads1(_module._default.NothingTotal#$S, 
                  Tclass._module.Lang(_module._default.NothingTotal#$S), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))))), 
                  s#2), 
                Set#Empty(): Set)
               && _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
                $LS($LS($LZ)), 
                $Heap, 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                $Unbox(Apply1(_module._default.NothingTotal#$S, 
                    Tclass._module.Lang(_module._default.NothingTotal#$S), 
                    $Heap, 
                    Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))))), 
                    s#2)): DatatypeType)));
  ensures {:id "id107"} _module.__default.TotalLang_h#canCall(_module._default.NothingTotal#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))
     ==> _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
        $LS($LZ), 
        $Heap, 
        _k#0, 
        Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
              $LS($LS($LZ)), 
              $Heap, 
              _k'#1, 
              _module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
              $LS($LS($LZ)), 
              $Heap, 
              _k'#1, 
              Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LS($LZ)))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NothingTotal# (correctness)"} Impl$$_module.__default.NothingTotal_h(_module._default.NothingTotal#$S: Ty, _k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: NothingTotal#, Impl$$_module.__default.NothingTotal_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box :: 
      { _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
          $LS($LZ), 
          $Heap, 
          $ih#_k0#0, 
          Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
          $LS($LZ), 
          $Heap, 
          $ih#_k0#0, 
          Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(149,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(149,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box :: 
          { _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
              $LS($LZ), 
              $Heap, 
              _k'#2, 
              _module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ))) } 
            { ORD#Less(_k'#2, _k#0) } 
          ORD#Less(_k'#2, _k#0)
             ==> _module.__default.TotalLang_h(_module._default.NothingTotal#$S, 
              $LS($LZ), 
              $Heap, 
              _k'#2, 
              Lit(_module.__default.Nothing(_module._default.NothingTotal#$S, $LS($LZ)))));
    }
}



procedure {:verboseName "OnlyDsTotal (well-formedness)"} CheckWellFormed$$_module.__default.OnlyDsTotal();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OnlyDsTotal (call)"} Call$$_module.__default.OnlyDsTotal();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OnlyDs#canCall()
     && _module.__default.TotalLang#canCall(TChar, $Heap, Lit(_module.__default.OnlyDs($LS($LZ))));
  free ensures {:id "id109"} _module.__default.TotalLang#canCall(TChar, $Heap, Lit(_module.__default.OnlyDs($LS($LZ))))
     && 
    _module.__default.TotalLang(TChar, $LS($LZ), $Heap, Lit(_module.__default.OnlyDs($LS($LZ))))
     && (forall s#0: char :: 
      { $Unbox(Apply1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
            $Box(s#0))): DatatypeType } 
        { Reads1(TChar, 
          Tclass._module.Lang(TChar), 
          $Heap, 
          _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
          $Box(s#0)) } 
        { Requires1(TChar, 
          Tclass._module.Lang(TChar), 
          $Heap, 
          _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
          $Box(s#0)) } 
      $Is(s#0, TChar)
         ==> Requires1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
            $Box(s#0))
           && Set#Equal(Reads1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
              $Box(s#0)), 
            Set#Empty(): Set)
           && _module.__default.TotalLang(TChar, 
            $LS($LZ), 
            $Heap, 
            $Unbox(Apply1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
                $Box(s#0))): DatatypeType));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OnlyDsTotal# (co-call)"} CoCall$$_module.__default.OnlyDsTotal_h(_k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OnlyDs#canCall()
     && _module.__default.TotalLang_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))));
  free ensures {:id "id110"} _module.__default.TotalLang_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
     && 
    _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (forall s#1: char :: 
        { $Unbox(Apply1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
              $Box(s#1))): DatatypeType } 
          { Reads1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
            $Box(s#1)) } 
          { Requires1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
            $Box(s#1)) } 
        $Is(s#1, TChar)
           ==> Requires1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
              $Box(s#1))
             && Set#Equal(Reads1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
                $Box(s#1)), 
              Set#Empty(): Set)
             && _module.__default.TotalLang_h(TChar, 
              $LS($LZ), 
              $Heap, 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $Unbox(Apply1(TChar, 
                  Tclass._module.Lang(TChar), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
                  $Box(s#1))): DatatypeType)))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, _k'#0, _module.__default.OnlyDs($LS($LZ))) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, _k'#0, Lit(_module.__default.OnlyDs($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OnlyDsTotal# (correctness)"} Impl$$_module.__default.OnlyDsTotal_h(_k#0: Box) returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OnlyDs#canCall()
     && _module.__default.TotalLang_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))));
  ensures {:id "id111"} _module.__default.TotalLang_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
     ==> _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> (forall s#2: char :: 
          { $Unbox(Apply1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                _module.Lang.deriv(_module.__default.OnlyDs($LS($LS($LZ)))), 
                $Box(s#2))): DatatypeType } 
            { Reads1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              _module.Lang.deriv(_module.__default.OnlyDs($LS($LS($LZ)))), 
              $Box(s#2)) } 
            { Requires1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              _module.Lang.deriv(_module.__default.OnlyDs($LS($LS($LZ)))), 
              $Box(s#2)) } 
          $Is(s#2, TChar)
             ==> Requires1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LS($LZ)))))), 
                $Box(s#2))
               && Set#Equal(Reads1(TChar, 
                  Tclass._module.Lang(TChar), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LS($LZ)))))), 
                  $Box(s#2)), 
                Set#Empty(): Set)
               && _module.__default.TotalLang_h(TChar, 
                $LS($LS($LZ)), 
                $Heap, 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                $Unbox(Apply1(TChar, 
                    Tclass._module.Lang(TChar), 
                    $Heap, 
                    Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LS($LZ)))))), 
                    $Box(s#2))): DatatypeType)));
  ensures {:id "id112"} _module.__default.TotalLang_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
     ==> _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.TotalLang_h(TChar, $LS($LS($LZ)), $Heap, _k'#1, _module.__default.OnlyDs($LS($LS($LZ)))) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.TotalLang_h(TChar, $LS($LS($LZ)), $Heap, _k'#1, Lit(_module.__default.OnlyDs($LS($LS($LZ)))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OnlyDsTotal# (correctness)"} Impl$$_module.__default.OnlyDsTotal_h(_k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: OnlyDsTotal#, Impl$$_module.__default.OnlyDsTotal_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box :: 
      { _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, $ih#_k0#0, Lit(_module.__default.OnlyDs($LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, $ih#_k0#0, Lit(_module.__default.OnlyDs($LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(154,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(155,21)
        // TrCallStmt: Before ProcessCallStmt
        call {:id "id113"} Call$$_module.__default.NothingTotal(TChar);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(156,14)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id114"} ORD#IsNat(Lit(ORD#FromNat(1)));
        assert {:id "id115"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
        call {:id "id116"} CoCall$$_module.__default.OnlyDsTotal_h(_k##0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(154,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box :: 
          { _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, _k'#2, _module.__default.OnlyDs($LS($LZ))) } 
            { ORD#Less(_k'#2, _k#0) } 
          ORD#Less(_k'#2, _k#0)
             ==> _module.__default.TotalLang_h(TChar, $LS($LZ), $Heap, _k'#2, Lit(_module.__default.OnlyDs($LS($LZ)))));
    }
}



// function declaration for _module._default.TotalLang_Nat
function _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    l#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.TotalLang__Nat (revealed)
axiom {:id "id117"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang_Nat$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      l#0: DatatypeType :: 
    { _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $LS($ly), $Heap, l#0), $IsGoodHeap($Heap) } 
    _module.__default.TotalLang__Nat#canCall(_module._default.TotalLang_Nat$S, $Heap, l#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat$S)))
       ==> (forall s#0: Box :: 
          { $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0)): DatatypeType } 
            { Reads1(_module._default.TotalLang_Nat$S, 
              Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#0) } 
            { Requires1(_module._default.TotalLang_Nat$S, 
              Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#0) } 
          $IsBox(s#0, _module._default.TotalLang_Nat$S)
             ==> _module.Lang.L_q(l#0)
               && Requires1#canCall(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0)
               && (Requires1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#0)
                 ==> _module.Lang.L_q(l#0)
                   && Reads1#canCall(_module._default.TotalLang_Nat$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#0)
                   && (Set#Equal(Reads1(_module._default.TotalLang_Nat$S, 
                        Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                        $Heap, 
                        _module.Lang.deriv(l#0), 
                        s#0), 
                      Set#Empty(): Set)
                     ==> _module.Lang.L_q(l#0)
                       && _module.__default.TotalLang__Nat#canCall(_module._default.TotalLang_Nat$S, 
                        $Heap, 
                        $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                            Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                            $Heap, 
                            _module.Lang.deriv(l#0), 
                            s#0)): DatatypeType))))
         && _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $LS($ly), $Heap, l#0)
           == (forall s#0: Box :: 
            { $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#0)): DatatypeType } 
              { Reads1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0) } 
              { Requires1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#0) } 
            $IsBox(s#0, _module._default.TotalLang_Nat$S)
               ==> Requires1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#0)
                 && Set#Equal(Reads1(_module._default.TotalLang_Nat$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#0), 
                  Set#Empty(): Set)
                 && _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, 
                  $ly, 
                  $Heap, 
                  $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                      Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#0)): DatatypeType)));
}

function _module.__default.TotalLang__Nat#canCall(_module._default.TotalLang_Nat$S: Ty, $heap: Heap, l#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.TotalLang_Nat$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $LS($ly), $Heap, l#0) } 
  _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $LS($ly), $Heap, l#0)
     == _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $ly, $Heap, l#0));

// fuel synonym axiom
axiom (forall _module._default.TotalLang_Nat$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, AsFuelBottom($ly), $Heap, l#0) } 
  _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $ly, $Heap, l#0)
     == _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $LZ, $Heap, l#0));

// frame axiom for _module.__default.TotalLang__Nat
axiom (forall _module._default.TotalLang_Nat$S: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    l#0: DatatypeType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $ly, $h1, l#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.TotalLang__Nat#canCall(_module._default.TotalLang_Nat$S, $h0, l#0)
         || ($Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat$S))
           && $IsAlloc(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat$S), $h0)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $ly, $h0, l#0)
       == _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $ly, $h1, l#0));

function _module.__default.TotalLang__Nat#requires(Ty, LayerType, Heap, DatatypeType) : bool;

// #requires axiom for _module.__default.TotalLang__Nat
axiom (forall _module._default.TotalLang_Nat$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang__Nat#requires(_module._default.TotalLang_Nat$S, $ly, $Heap, l#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat$S))
     ==> _module.__default.TotalLang__Nat#requires(_module._default.TotalLang_Nat$S, $ly, $Heap, l#0)
       == true);

// 1st prefix predicate axiom for _module.__default.TotalLang__Nat_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang_Nat#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      l#0: DatatypeType :: 
    { _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, l#0) } 
    $IsGoodHeap($Heap)
         && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat#$S))
         && _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, l#0)
       ==> (forall _k#0: int :: 
        { _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0) } 
        LitInt(0) <= _k#0
           ==> _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang_Nat#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      l#0: DatatypeType :: 
    { _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, l#0) } 
    $IsGoodHeap($Heap)
         && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat#$S))
         && (forall _k#0: int :: 
          { _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0) } 
          LitInt(0) <= _k#0
             ==> _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0))
       ==> _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, l#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang_Nat#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      l#0: DatatypeType, 
      _k#0: int :: 
    { _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $ly, $Heap, _k#0, l#0) } 
    $IsGoodHeap($Heap)
         && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat#$S))
         && _k#0 == 0
       ==> _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $ly, $Heap, _k#0, l#0));

procedure {:verboseName "TotalLang_Nat (well-formedness)"} CheckWellformed$$_module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S: Ty
       where $AlwaysAllocated(_module._default.TotalLang_Nat$S), 
    l#0: DatatypeType
       where $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat$S)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TotalLang_Nat (well-formedness)"} CheckWellformed$$_module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S: Ty, l#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var s#1: Box;
  var ##x0#0: Box;
  var ##x0#1: Box;
  var ##l#0: DatatypeType;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
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
        havoc s#1;
        if ($IsBox(s#1, _module._default.TotalLang_Nat$S)
           && $IsAllocBox(s#1, _module._default.TotalLang_Nat$S, $Heap))
        {
            assume _module.Lang.L_q(l#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(_module.Lang.deriv(l#0)), 
              Tclass._System.___hFunc1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S)), 
              $Heap);
            ##x0#0 := s#1;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x0#0, _module._default.TotalLang_Nat$S, $Heap);
            b$reqreads#0 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(Reads1(_module._default.TotalLang_Nat$S, 
                      Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      ##x0#0), 
                    $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
            assume Requires1#canCall(_module._default.TotalLang_Nat$S, 
              Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#1);
            if (Requires1(_module._default.TotalLang_Nat$S, 
              Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#1))
            {
                assume _module.Lang.L_q(l#0);
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(_module.Lang.deriv(l#0)), 
                  Tclass._System.___hFunc1(_module._default.TotalLang_Nat$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat$S)), 
                  $Heap);
                ##x0#1 := s#1;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##x0#1, _module._default.TotalLang_Nat$S, $Heap);
                assert {:id "id118"} Requires1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1);
                b$reqreads#1 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(Reads1(_module._default.TotalLang_Nat$S, 
                          Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                          $Heap, 
                          _module.Lang.deriv(l#0), 
                          s#1), 
                        $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                assume Reads1#canCall(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1);
            }

            if (Requires1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#1)
               && Set#Equal(Reads1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1), 
                Set#Empty(): Set))
            {
                assume _module.Lang.L_q(l#0);
                assert {:id "id119"} Requires1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#1);
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(Reads1(_module._default.TotalLang_Nat$S, 
                          Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                          $Heap, 
                          _module.Lang.deriv(l#0), 
                          s#1), 
                        $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
                ##l#0 := $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#1)): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##l#0, Tclass._module.Lang(_module._default.TotalLang_Nat$S), $Heap);
                b$reqreads#3 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && $Unbox(read($Heap, $o, alloc)): bool
                     ==> $_ReadsFrame[$o, $f]);
                assume _module.__default.TotalLang__Nat#canCall(_module._default.TotalLang_Nat$S, 
                  $Heap, 
                  $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                      Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#1)): DatatypeType);
            }
        }

        // End Comprehension WF check
        assume {:id "id120"} _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $LS($LZ), $Heap, l#0)
           == (forall s#2: Box :: 
            { $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#2)): DatatypeType } 
              { Reads1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2) } 
              { Requires1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2) } 
            $IsBox(s#2, _module._default.TotalLang_Nat$S)
               ==> Requires1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#2)
                 && Set#Equal(Reads1(_module._default.TotalLang_Nat$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#2), 
                  Set#Empty(): Set)
                 && _module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, 
                  $LS($LZ), 
                  $Heap, 
                  $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                      Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#2)): DatatypeType));
        assume (forall s#2: Box :: 
          { $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2)): DatatypeType } 
            { Reads1(_module._default.TotalLang_Nat$S, 
              Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#2) } 
            { Requires1(_module._default.TotalLang_Nat$S, 
              Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
              $Heap, 
              _module.Lang.deriv(l#0), 
              s#2) } 
          $IsBox(s#2, _module._default.TotalLang_Nat$S)
             ==> _module.Lang.L_q(l#0)
               && Requires1#canCall(_module._default.TotalLang_Nat$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#2)
               && (Requires1(_module._default.TotalLang_Nat$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#2)
                 ==> _module.Lang.L_q(l#0)
                   && Reads1#canCall(_module._default.TotalLang_Nat$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#2)
                   && (Set#Equal(Reads1(_module._default.TotalLang_Nat$S, 
                        Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                        $Heap, 
                        _module.Lang.deriv(l#0), 
                        s#2), 
                      Set#Empty(): Set)
                     ==> _module.Lang.L_q(l#0)
                       && _module.__default.TotalLang__Nat#canCall(_module._default.TotalLang_Nat$S, 
                        $Heap, 
                        $Unbox(Apply1(_module._default.TotalLang_Nat$S, 
                            Tclass._module.Lang(_module._default.TotalLang_Nat$S), 
                            $Heap, 
                            _module.Lang.deriv(l#0), 
                            s#2)): DatatypeType))));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.TotalLang__Nat(_module._default.TotalLang_Nat$S, $LS($LZ), $Heap, l#0), 
          TBool);
        assert {:id "id121"} b$reqreads#0;
        assert {:id "id122"} b$reqreads#1;
        assert {:id "id123"} b$reqreads#2;
        assert {:id "id124"} b$reqreads#3;
        return;

        assume false;
    }
}



// function declaration for _module._default.TotalLang_Nat#
function _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S: Ty, 
    $ly: LayerType, 
    $heap: Heap, 
    _k#0: int, 
    l#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.TotalLang__Nat_h (revealed)
axiom {:id "id125"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.TotalLang_Nat#$S: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      _k#0: int, 
      l#0: DatatypeType :: 
    { _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0), $IsGoodHeap($Heap) } 
    _module.__default.TotalLang__Nat_h#canCall(_module._default.TotalLang_Nat#$S, $Heap, _k#0, l#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && LitInt(0) <= _k#0
           && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat#$S)))
       ==> (0 < _k#0
           ==> (forall s#3: Box :: 
            { $Unbox(Apply1(_module._default.TotalLang_Nat#$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3)): DatatypeType } 
              { Reads1(_module._default.TotalLang_Nat#$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#3) } 
              { Requires1(_module._default.TotalLang_Nat#$S, 
                Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                $Heap, 
                _module.Lang.deriv(l#0), 
                s#3) } 
            $IsBox(s#3, _module._default.TotalLang_Nat#$S)
               ==> _module.Lang.L_q(l#0)
                 && Requires1#canCall(_module._default.TotalLang_Nat#$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3)
                 && (Requires1(_module._default.TotalLang_Nat#$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#3)
                   ==> _module.Lang.L_q(l#0)
                     && Reads1#canCall(_module._default.TotalLang_Nat#$S, 
                      Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#3)
                     && (Set#Equal(Reads1(_module._default.TotalLang_Nat#$S, 
                          Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                          $Heap, 
                          _module.Lang.deriv(l#0), 
                          s#3), 
                        Set#Empty(): Set)
                       ==> _module.Lang.L_q(l#0)
                         && _module.__default.TotalLang__Nat_h#canCall(_module._default.TotalLang_Nat#$S, 
                          $Heap, 
                          _k#0 - 1, 
                          $Unbox(Apply1(_module._default.TotalLang_Nat#$S, 
                              Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                              $Heap, 
                              _module.Lang.deriv(l#0), 
                              s#3)): DatatypeType)))))
         && _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0)
           == (0 < _k#0
             ==> (forall s#3: Box :: 
              { $Unbox(Apply1(_module._default.TotalLang_Nat#$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#3)): DatatypeType } 
                { Reads1(_module._default.TotalLang_Nat#$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3) } 
                { Requires1(_module._default.TotalLang_Nat#$S, 
                  Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                  $Heap, 
                  _module.Lang.deriv(l#0), 
                  s#3) } 
              $IsBox(s#3, _module._default.TotalLang_Nat#$S)
                 ==> Requires1(_module._default.TotalLang_Nat#$S, 
                    Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                    $Heap, 
                    _module.Lang.deriv(l#0), 
                    s#3)
                   && Set#Equal(Reads1(_module._default.TotalLang_Nat#$S, 
                      Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                      $Heap, 
                      _module.Lang.deriv(l#0), 
                      s#3), 
                    Set#Empty(): Set)
                   && _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, 
                    $ly, 
                    $Heap, 
                    _k#0 - 1, 
                    $Unbox(Apply1(_module._default.TotalLang_Nat#$S, 
                        Tclass._module.Lang(_module._default.TotalLang_Nat#$S), 
                        $Heap, 
                        _module.Lang.deriv(l#0), 
                        s#3)): DatatypeType))));
}

function _module.__default.TotalLang__Nat_h#canCall(_module._default.TotalLang_Nat#$S: Ty, $heap: Heap, _k#0: int, l#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.TotalLang_Nat#$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: int, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0) } 
  _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LS($ly), $Heap, _k#0, l#0)
     == _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $ly, $Heap, _k#0, l#0));

// fuel synonym axiom
axiom (forall _module._default.TotalLang_Nat#$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: int, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, AsFuelBottom($ly), $Heap, _k#0, l#0) } 
  _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $ly, $Heap, _k#0, l#0)
     == _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $LZ, $Heap, _k#0, l#0));

// frame axiom for _module.__default.TotalLang__Nat_h
axiom (forall _module._default.TotalLang_Nat#$S: Ty, 
    $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    _k#0: int, 
    l#0: DatatypeType :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $ly, $h1, _k#0, l#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.TotalLang__Nat_h#canCall(_module._default.TotalLang_Nat#$S, $h0, _k#0, l#0)
         || (LitInt(0) <= _k#0
           && 
          $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat#$S))
           && $IsAlloc(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat#$S), $h0)))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $ly, $h0, _k#0, l#0)
       == _module.__default.TotalLang__Nat_h(_module._default.TotalLang_Nat#$S, $ly, $h1, _k#0, l#0));

function _module.__default.TotalLang__Nat_h#requires(Ty, LayerType, Heap, int, DatatypeType) : bool;

// #requires axiom for _module.__default.TotalLang__Nat_h
axiom (forall _module._default.TotalLang_Nat#$S: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    _k#0: int, 
    l#0: DatatypeType :: 
  { _module.__default.TotalLang__Nat_h#requires(_module._default.TotalLang_Nat#$S, $ly, $Heap, _k#0, l#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && LitInt(0) <= _k#0
       && $Is(l#0, Tclass._module.Lang(_module._default.TotalLang_Nat#$S))
     ==> _module.__default.TotalLang__Nat_h#requires(_module._default.TotalLang_Nat#$S, $ly, $Heap, _k#0, l#0)
       == true);

procedure {:verboseName "NothingTotal_Nat (well-formedness)"} CheckWellFormed$$_module.__default.NothingTotal__Nat(_module._default.NothingTotal_Nat$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal_Nat$S));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NothingTotal_Nat (call)"} Call$$_module.__default.NothingTotal__Nat(_module._default.NothingTotal_Nat$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal_Nat$S));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Nothing#canCall(_module._default.NothingTotal_Nat$S)
     && _module.__default.TotalLang__Nat#canCall(_module._default.NothingTotal_Nat$S, 
      $Heap, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))));
  free ensures {:id "id127"} _module.__default.TotalLang__Nat#canCall(_module._default.NothingTotal_Nat$S, 
      $Heap, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))))
     && 
    _module.__default.TotalLang__Nat(_module._default.NothingTotal_Nat$S, 
      $LS($LZ), 
      $Heap, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))))
     && (forall s#0: Box :: 
      { $Unbox(Apply1(_module._default.NothingTotal_Nat$S, 
            Tclass._module.Lang(_module._default.NothingTotal_Nat$S), 
            $Heap, 
            _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))), 
            s#0)): DatatypeType } 
        { Reads1(_module._default.NothingTotal_Nat$S, 
          Tclass._module.Lang(_module._default.NothingTotal_Nat$S), 
          $Heap, 
          _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))), 
          s#0) } 
        { Requires1(_module._default.NothingTotal_Nat$S, 
          Tclass._module.Lang(_module._default.NothingTotal_Nat$S), 
          $Heap, 
          _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))), 
          s#0) } 
      $IsBox(s#0, _module._default.NothingTotal_Nat$S)
         ==> Requires1(_module._default.NothingTotal_Nat$S, 
            Tclass._module.Lang(_module._default.NothingTotal_Nat$S), 
            $Heap, 
            Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))))), 
            s#0)
           && Set#Equal(Reads1(_module._default.NothingTotal_Nat$S, 
              Tclass._module.Lang(_module._default.NothingTotal_Nat$S), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))))), 
              s#0), 
            Set#Empty(): Set)
           && _module.__default.TotalLang__Nat(_module._default.NothingTotal_Nat$S, 
            $LS($LZ), 
            $Heap, 
            $Unbox(Apply1(_module._default.NothingTotal_Nat$S, 
                Tclass._module.Lang(_module._default.NothingTotal_Nat$S), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat$S, $LS($LZ))))), 
                s#0)): DatatypeType));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NothingTotal_Nat# (co-call)"} CoCall$$_module.__default.NothingTotal__Nat_h(_module._default.NothingTotal_Nat#$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal_Nat#$S), 
    _k#0: int where LitInt(0) <= _k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Nothing#canCall(_module._default.NothingTotal_Nat#$S)
     && _module.__default.TotalLang__Nat_h#canCall(_module._default.NothingTotal_Nat#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))));
  free ensures {:id "id128"} _module.__default.TotalLang__Nat_h#canCall(_module._default.NothingTotal_Nat#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))))
     && 
    _module.__default.TotalLang__Nat_h(_module._default.NothingTotal_Nat#$S, 
      $LS($LZ), 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))))
     && (0 < _k#0
       ==> (forall s#1: Box :: 
        { $Unbox(Apply1(_module._default.NothingTotal_Nat#$S, 
              Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
              $Heap, 
              _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))), 
              s#1)): DatatypeType } 
          { Reads1(_module._default.NothingTotal_Nat#$S, 
            Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
            $Heap, 
            _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))), 
            s#1) } 
          { Requires1(_module._default.NothingTotal_Nat#$S, 
            Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
            $Heap, 
            _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))), 
            s#1) } 
        $IsBox(s#1, _module._default.NothingTotal_Nat#$S)
           ==> Requires1(_module._default.NothingTotal_Nat#$S, 
              Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))))), 
              s#1)
             && Set#Equal(Reads1(_module._default.NothingTotal_Nat#$S, 
                Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))))), 
                s#1), 
              Set#Empty(): Set)
             && _module.__default.TotalLang__Nat_h(_module._default.NothingTotal_Nat#$S, 
              $LS($LZ), 
              $Heap, 
              _k#0 - 1, 
              $Unbox(Apply1(_module._default.NothingTotal_Nat#$S, 
                  Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))))), 
                  s#1)): DatatypeType)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "NothingTotal_Nat# (correctness)"} Impl$$_module.__default.NothingTotal__Nat_h(_module._default.NothingTotal_Nat#$S: Ty
       where $AlwaysAllocated(_module._default.NothingTotal_Nat#$S), 
    _k#0: int where LitInt(0) <= _k#0)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Nothing#canCall(_module._default.NothingTotal_Nat#$S)
     && _module.__default.TotalLang__Nat_h#canCall(_module._default.NothingTotal_Nat#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))));
  ensures {:id "id129"} _module.__default.TotalLang__Nat_h#canCall(_module._default.NothingTotal_Nat#$S, 
      $Heap, 
      _k#0, 
      Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))))
     ==> _module.__default.TotalLang__Nat_h(_module._default.NothingTotal_Nat#$S, 
        $LS($LZ), 
        $Heap, 
        _k#0, 
        Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ))))
       || (0 < _k#0
         ==> (forall s#2: Box :: 
          { $Unbox(Apply1(_module._default.NothingTotal_Nat#$S, 
                Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
                $Heap, 
                _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LS($LZ)))), 
                s#2)): DatatypeType } 
            { Reads1(_module._default.NothingTotal_Nat#$S, 
              Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
              $Heap, 
              _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LS($LZ)))), 
              s#2) } 
            { Requires1(_module._default.NothingTotal_Nat#$S, 
              Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
              $Heap, 
              _module.Lang.deriv(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LS($LZ)))), 
              s#2) } 
          $IsBox(s#2, _module._default.NothingTotal_Nat#$S)
             ==> Requires1(_module._default.NothingTotal_Nat#$S, 
                Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LS($LZ)))))), 
                s#2)
               && Set#Equal(Reads1(_module._default.NothingTotal_Nat#$S, 
                  Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LS($LZ)))))), 
                  s#2), 
                Set#Empty(): Set)
               && _module.__default.TotalLang__Nat_h(_module._default.NothingTotal_Nat#$S, 
                $LS($LS($LZ)), 
                $Heap, 
                _k#0 - 1, 
                $Unbox(Apply1(_module._default.NothingTotal_Nat#$S, 
                    Tclass._module.Lang(_module._default.NothingTotal_Nat#$S), 
                    $Heap, 
                    Lit(_module.Lang.deriv(Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LS($LZ)))))), 
                    s#2)): DatatypeType)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NothingTotal_Nat# (correctness)"} Impl$$_module.__default.NothingTotal__Nat_h(_module._default.NothingTotal_Nat#$S: Ty, _k#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: NothingTotal_Nat#, Impl$$_module.__default.NothingTotal__Nat_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int :: 
      { _module.__default.TotalLang__Nat_h(_module._default.NothingTotal_Nat#$S, 
          $LS($LZ), 
          $Heap, 
          $ih#_k0#0, 
          Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ)))) } 
      LitInt(0) <= $ih#_k0#0 && Lit(true) && 0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0
         ==> _module.__default.TotalLang__Nat_h(_module._default.NothingTotal_Nat#$S, 
          $LS($LZ), 
          $Heap, 
          $ih#_k0#0, 
          Lit(_module.__default.Nothing(_module._default.NothingTotal_Nat#$S, $LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(167,1)
    assume true;
    if (0 < _k#0)
    {
    }
    else
    {
    }
}



procedure {:verboseName "OnlyDsTotal_Nat (well-formedness)"} CheckWellFormed$$_module.__default.OnlyDsTotal__Nat();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OnlyDsTotal_Nat (call)"} Call$$_module.__default.OnlyDsTotal__Nat();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OnlyDs#canCall()
     && _module.__default.TotalLang__Nat#canCall(TChar, $Heap, Lit(_module.__default.OnlyDs($LS($LZ))));
  free ensures {:id "id131"} _module.__default.TotalLang__Nat#canCall(TChar, $Heap, Lit(_module.__default.OnlyDs($LS($LZ))))
     && 
    _module.__default.TotalLang__Nat(TChar, $LS($LZ), $Heap, Lit(_module.__default.OnlyDs($LS($LZ))))
     && (forall s#0: char :: 
      { $Unbox(Apply1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
            $Box(s#0))): DatatypeType } 
        { Reads1(TChar, 
          Tclass._module.Lang(TChar), 
          $Heap, 
          _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
          $Box(s#0)) } 
        { Requires1(TChar, 
          Tclass._module.Lang(TChar), 
          $Heap, 
          _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
          $Box(s#0)) } 
      $Is(s#0, TChar)
         ==> Requires1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
            $Box(s#0))
           && Set#Equal(Reads1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
              $Box(s#0)), 
            Set#Empty(): Set)
           && _module.__default.TotalLang__Nat(TChar, 
            $LS($LZ), 
            $Heap, 
            $Unbox(Apply1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
                $Box(s#0))): DatatypeType));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OnlyDsTotal_Nat# (co-call)"} CoCall$$_module.__default.OnlyDsTotal__Nat_h(_k#0: int where LitInt(0) <= _k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OnlyDs#canCall()
     && _module.__default.TotalLang__Nat_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))));
  free ensures {:id "id132"} _module.__default.TotalLang__Nat_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
     && 
    _module.__default.TotalLang__Nat_h(TChar, $LS($LZ), $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
     && (0 < _k#0
       ==> (forall s#1: char :: 
        { $Unbox(Apply1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
              $Box(s#1))): DatatypeType } 
          { Reads1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
            $Box(s#1)) } 
          { Requires1(TChar, 
            Tclass._module.Lang(TChar), 
            $Heap, 
            _module.Lang.deriv(_module.__default.OnlyDs($LS($LZ))), 
            $Box(s#1)) } 
        $Is(s#1, TChar)
           ==> Requires1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
              $Box(s#1))
             && Set#Equal(Reads1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
                $Box(s#1)), 
              Set#Empty(): Set)
             && _module.__default.TotalLang__Nat_h(TChar, 
              $LS($LZ), 
              $Heap, 
              _k#0 - 1, 
              $Unbox(Apply1(TChar, 
                  Tclass._module.Lang(TChar), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LZ))))), 
                  $Box(s#1))): DatatypeType)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OnlyDsTotal_Nat# (correctness)"} Impl$$_module.__default.OnlyDsTotal__Nat_h(_k#0: int where LitInt(0) <= _k#0) returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.OnlyDs#canCall()
     && _module.__default.TotalLang__Nat_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))));
  ensures {:id "id133"} _module.__default.TotalLang__Nat_h#canCall(TChar, $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
     ==> _module.__default.TotalLang__Nat_h(TChar, $LS($LZ), $Heap, _k#0, Lit(_module.__default.OnlyDs($LS($LZ))))
       || (0 < _k#0
         ==> (forall s#2: char :: 
          { $Unbox(Apply1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                _module.Lang.deriv(_module.__default.OnlyDs($LS($LS($LZ)))), 
                $Box(s#2))): DatatypeType } 
            { Reads1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              _module.Lang.deriv(_module.__default.OnlyDs($LS($LS($LZ)))), 
              $Box(s#2)) } 
            { Requires1(TChar, 
              Tclass._module.Lang(TChar), 
              $Heap, 
              _module.Lang.deriv(_module.__default.OnlyDs($LS($LS($LZ)))), 
              $Box(s#2)) } 
          $Is(s#2, TChar)
             ==> Requires1(TChar, 
                Tclass._module.Lang(TChar), 
                $Heap, 
                Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LS($LZ)))))), 
                $Box(s#2))
               && Set#Equal(Reads1(TChar, 
                  Tclass._module.Lang(TChar), 
                  $Heap, 
                  Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LS($LZ)))))), 
                  $Box(s#2)), 
                Set#Empty(): Set)
               && _module.__default.TotalLang__Nat_h(TChar, 
                $LS($LS($LZ)), 
                $Heap, 
                _k#0 - 1, 
                $Unbox(Apply1(TChar, 
                    Tclass._module.Lang(TChar), 
                    $Heap, 
                    Lit(_module.Lang.deriv(Lit(_module.__default.OnlyDs($LS($LS($LZ)))))), 
                    $Box(s#2))): DatatypeType)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OnlyDsTotal_Nat# (correctness)"} Impl$$_module.__default.OnlyDsTotal__Nat_h(_k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: int;

    // AddMethodImpl: OnlyDsTotal_Nat#, Impl$$_module.__default.OnlyDsTotal__Nat_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: int :: 
      { _module.__default.TotalLang__Nat_h(TChar, $LS($LZ), $Heap, $ih#_k0#0, Lit(_module.__default.OnlyDs($LS($LZ)))) } 
      LitInt(0) <= $ih#_k0#0 && Lit(true) && 0 <= $ih#_k0#0 && $ih#_k0#0 < _k#0
         ==> _module.__default.TotalLang__Nat_h(TChar, $LS($LZ), $Heap, $ih#_k0#0, Lit(_module.__default.OnlyDs($LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(172,1)
    assume true;
    if (0 < _k#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny4/ExpandedGuardedness.dfy(181,18)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id134"} $Is(_k#0 - 1, Tclass._System.nat());
        _k##0 := _k#0 - 1;
        call {:id "id135"} CoCall$$_module.__default.OnlyDsTotal__Nat_h(_k##0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



// function declaration for _module._default.IMNothing
function _module.__default.IMNothing(_module._default.IMNothing$S: Ty, $ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.IMNothing
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.IMNothing$S: Ty, $ly: LayerType :: 
    { _module.__default.IMNothing(_module._default.IMNothing$S, $ly) } 
    _module.__default.IMNothing#canCall(_module._default.IMNothing$S)
         || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.IMNothing(_module._default.IMNothing$S, $ly), 
        Tclass._module.IMLang(_module._default.IMNothing$S)));
// definition axiom for _module.__default.IMNothing (revealed)
axiom {:id "id136"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.IMNothing$S: Ty, $ly: LayerType :: 
    { _module.__default.IMNothing(_module._default.IMNothing$S, $LS($ly)) } 
    _module.__default.IMNothing#canCall(_module._default.IMNothing$S)
         || 1 < $FunctionContextHeight
       ==> (Lit(true)
           ==> _module.__default.IMNothing#canCall(_module._default.IMNothing$S))
         && _module.__default.IMNothing(_module._default.IMNothing$S, $LS($ly))
           == #_module.IMLang.IML(Lit(false), 
            IMap#Glue((lambda $w#0: Box :: $IsBox($w#0, _module._default.IMNothing$S) && Lit(true)), 
              (lambda $w#0: Box :: 
                $Box(Lit(_module.__default.IMNothing(_module._default.IMNothing$S, $ly)))), 
              TIMap(_module._default.IMNothing$S, 
                Tclass._module.IMLang(_module._default.IMNothing$S)))));
}

function _module.__default.IMNothing#canCall(_module._default.IMNothing$S: Ty) : bool;

// layer synonym axiom
axiom (forall _module._default.IMNothing$S: Ty, $ly: LayerType :: 
  { _module.__default.IMNothing(_module._default.IMNothing$S, $LS($ly)) } 
  _module.__default.IMNothing(_module._default.IMNothing$S, $LS($ly))
     == _module.__default.IMNothing(_module._default.IMNothing$S, $ly));

// fuel synonym axiom
axiom (forall _module._default.IMNothing$S: Ty, $ly: LayerType :: 
  { _module.__default.IMNothing(_module._default.IMNothing$S, AsFuelBottom($ly)) } 
  _module.__default.IMNothing(_module._default.IMNothing$S, $ly)
     == _module.__default.IMNothing(_module._default.IMNothing$S, $LZ));

function _module.__default.IMNothing#requires(Ty, LayerType) : bool;

// #requires axiom for _module.__default.IMNothing
axiom (forall _module._default.IMNothing$S: Ty, $ly: LayerType :: 
  { _module.__default.IMNothing#requires(_module._default.IMNothing$S, $ly) } 
  _module.__default.IMNothing#requires(_module._default.IMNothing$S, $ly) == true);

procedure {:verboseName "IMNothing (well-formedness)"} CheckWellformed$$_module.__default.IMNothing(_module._default.IMNothing$S: Ty
       where $AlwaysAllocated(_module._default.IMNothing$S));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IMOnlyDs
function _module.__default.IMOnlyDs($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.IMOnlyDs
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.IMOnlyDs($ly) } 
    _module.__default.IMOnlyDs#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.IMOnlyDs($ly), Tclass._module.IMLang(TChar)));
// definition axiom for _module.__default.IMOnlyDs (revealed)
axiom {:id "id138"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.IMOnlyDs($LS($ly)) } 
    _module.__default.IMOnlyDs#canCall() || 2 < $FunctionContextHeight
       ==> (forall ch#0: char :: 
          $Is(ch#0, TChar)
             ==> 
            Lit(true)
             ==> (ch#0 == Lit(char#FromInt(100)) || ch#0 == Lit(char#FromInt(68))
                 ==> _module.__default.IMOnlyDs#canCall())
               && (!(ch#0 == Lit(char#FromInt(100)) || ch#0 == Lit(char#FromInt(68)))
                 ==> _module.__default.IMNothing#canCall(TChar)))
         && _module.__default.IMOnlyDs($LS($ly))
           == #_module.IMLang.IML(Lit(true), 
            IMap#Glue((lambda $w#0: Box :: $IsBox($w#0, TChar) && Lit(true)), 
              (lambda $w#0: Box :: 
                $Box((if $Unbox($w#0): char == Lit(char#FromInt(100))
                       || $Unbox($w#0): char == Lit(char#FromInt(68))
                     then _module.__default.IMOnlyDs($ly)
                     else _module.__default.IMNothing(TChar, $LS($LZ))))), 
              TIMap(TChar, Tclass._module.IMLang(TChar)))));
}

function _module.__default.IMOnlyDs#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.IMOnlyDs($LS($ly)) } 
  _module.__default.IMOnlyDs($LS($ly)) == _module.__default.IMOnlyDs($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.IMOnlyDs(AsFuelBottom($ly)) } 
  _module.__default.IMOnlyDs($ly) == _module.__default.IMOnlyDs($LZ));

function _module.__default.IMOnlyDs#requires(LayerType) : bool;

// #requires axiom for _module.__default.IMOnlyDs
axiom (forall $ly: LayerType :: 
  { _module.__default.IMOnlyDs#requires($ly) } 
  _module.__default.IMOnlyDs#requires($ly) == true);

procedure {:verboseName "IMOnlyDs (well-formedness)"} CheckWellformed$$_module.__default.IMOnlyDs();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MNothing
function _module.__default.MNothing(_module._default.MNothing$_T0: Ty, $ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.MNothing
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.MNothing$_T0: Ty, $ly: LayerType :: 
    { _module.__default.MNothing(_module._default.MNothing$_T0, $ly) } 
    _module.__default.MNothing#canCall(_module._default.MNothing$_T0)
         || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.MNothing(_module._default.MNothing$_T0, $ly), 
        Tclass._module.MLang(_module._default.MNothing$_T0)));
// alloc consequence axiom for _module.__default.MNothing
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.MNothing$_T0: Ty, $ly: LayerType :: 
    { $IsAlloc(_module.__default.MNothing(_module._default.MNothing$_T0, $ly), 
        Tclass._module.MLang(_module._default.MNothing$_T0), 
        $Heap) } 
    (_module.__default.MNothing#canCall(_module._default.MNothing$_T0)
           || 1 < $FunctionContextHeight)
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.MNothing(_module._default.MNothing$_T0, $ly), 
        Tclass._module.MLang(_module._default.MNothing$_T0), 
        $Heap));
// definition axiom for _module.__default.MNothing (revealed)
axiom {:id "id140"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.MNothing$_T0: Ty, $ly: LayerType :: 
    { _module.__default.MNothing(_module._default.MNothing$_T0, $LS($ly)) } 
    _module.__default.MNothing#canCall(_module._default.MNothing$_T0)
         || 1 < $FunctionContextHeight
       ==> _module.__default.MNothing(_module._default.MNothing$_T0, $LS($ly))
         == #_module.MLang.ML(Lit(false), 
          Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: false)), 
            (lambda $w#0: Box :: 
              $Box(Lit(_module.__default.MNothing(_module._default.MNothing$_T0, $ly)))), 
            TMap(_module._default.MNothing$_T0, 
              Tclass._module.MLang(_module._default.MNothing$_T0)))));
}

function _module.__default.MNothing#canCall(_module._default.MNothing$_T0: Ty) : bool;

// layer synonym axiom
axiom (forall _module._default.MNothing$_T0: Ty, $ly: LayerType :: 
  { _module.__default.MNothing(_module._default.MNothing$_T0, $LS($ly)) } 
  _module.__default.MNothing(_module._default.MNothing$_T0, $LS($ly))
     == _module.__default.MNothing(_module._default.MNothing$_T0, $ly));

// fuel synonym axiom
axiom (forall _module._default.MNothing$_T0: Ty, $ly: LayerType :: 
  { _module.__default.MNothing(_module._default.MNothing$_T0, AsFuelBottom($ly)) } 
  _module.__default.MNothing(_module._default.MNothing$_T0, $ly)
     == _module.__default.MNothing(_module._default.MNothing$_T0, $LZ));

function _module.__default.MNothing#requires(Ty, LayerType) : bool;

// #requires axiom for _module.__default.MNothing
axiom (forall _module._default.MNothing$_T0: Ty, $ly: LayerType :: 
  { _module.__default.MNothing#requires(_module._default.MNothing$_T0, $ly) } 
  _module.__default.MNothing#requires(_module._default.MNothing$_T0, $ly) == true);

procedure {:verboseName "MNothing (well-formedness)"} CheckWellformed$$_module.__default.MNothing(_module._default.MNothing$_T0: Ty);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MOnlyDs
function _module.__default.MOnlyDs($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.MOnlyDs
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.MOnlyDs($ly) } 
    _module.__default.MOnlyDs#canCall() || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.MOnlyDs($ly), Tclass._module.MLang(TChar)));
// definition axiom for _module.__default.MOnlyDs (revealed)
axiom {:id "id142"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.MOnlyDs($LS($ly)) } 
    _module.__default.MOnlyDs#canCall() || 1 < $FunctionContextHeight
       ==> (forall ch#0: char :: 
          $Is(ch#0, TChar)
             ==> 
            ch#0 == Lit(char#FromInt(100)) || ch#0 == Lit(char#FromInt(68))
             ==> _module.__default.MOnlyDs#canCall())
         && _module.__default.MOnlyDs($LS($ly))
           == #_module.MLang.ML(Lit(true), 
            Map#Glue(Set#FromBoogieMap((lambda $w#0: Box :: 
                  $IsBox($w#0, TChar)
                     && ($Unbox($w#0): char == Lit(char#FromInt(100))
                       || $Unbox($w#0): char == Lit(char#FromInt(68))))), 
              (lambda $w#0: Box :: $Box(Lit(_module.__default.MOnlyDs($ly)))), 
              TMap(TChar, Tclass._module.MLang(TChar)))));
}

function _module.__default.MOnlyDs#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.MOnlyDs($LS($ly)) } 
  _module.__default.MOnlyDs($LS($ly)) == _module.__default.MOnlyDs($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.MOnlyDs(AsFuelBottom($ly)) } 
  _module.__default.MOnlyDs($ly) == _module.__default.MOnlyDs($LZ));

function _module.__default.MOnlyDs#requires(LayerType) : bool;

// #requires axiom for _module.__default.MOnlyDs
axiom (forall $ly: LayerType :: 
  { _module.__default.MOnlyDs#requires($ly) } 
  _module.__default.MOnlyDs#requires($ly) == true);

procedure {:verboseName "MOnlyDs (well-formedness)"} CheckWellformed$$_module.__default.MOnlyDs();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// Constructor function declaration
function #_module.Stream.ICons(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.ICons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #_module.Stream.ICons(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_module.Stream.ICons(a#0#0#0, a#0#1#0))
     == ##_module.Stream.ICons);
}

function _module.Stream.ICons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.ICons_q(d) } 
  _module.Stream.ICons_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.ICons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.ICons_q(d) } 
  _module.Stream.ICons_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #_module.Stream.ICons(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall _module.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#_module.Stream.ICons(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.ICons(a#2#0#0, a#2#1#0), Tclass._module.Stream(_module.Stream$T))
     <==> $IsBox(a#2#0#0, _module.Stream$T)
       && $Is(a#2#1#0, Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.ICons(a#2#0#0, a#2#1#0), 
      Tclass._module.Stream(_module.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.ICons(a#2#0#0, a#2#1#0), 
        Tclass._module.Stream(_module.Stream$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.Stream$T, $h)
         && $IsAlloc(a#2#1#0, Tclass._module.Stream(_module.Stream$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.ICons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.ICons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h));

function _module.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.Stream.ICons(a#3#0#0, a#3#1#0) } 
  _module.Stream.head(#_module.Stream.ICons(a#3#0#0, a#3#1#0)) == a#3#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.Stream.ICons(a#4#0#0, a#4#1#0) } 
  _module.Stream.tail(#_module.Stream.ICons(a#4#0#0, a#4#1#0)) == a#4#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.ICons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$T: Ty, d: DatatypeType :: 
  { _module.Stream.ICons_q(d), $Is(d, Tclass._module.Stream(_module.Stream$T)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$T)) ==> _module.Stream.ICons_q(d));

function $Eq#_module.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
       <==> _module.Stream.ICons_q(d0)
         && _module.Stream.ICons_q(d1)
         && (_module.Stream.ICons_q(d0) && _module.Stream.ICons_q(d1)
           ==> _module.Stream.head(d0) == _module.Stream.head(d1)
             && $Eq#_module.Stream(_module.Stream$T#l, 
              _module.Stream$T#r, 
              ly, 
              _module.Stream.tail(d0), 
              _module.Stream.tail(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream(_module.Stream$T#l))
       && $Is(d1, Tclass._module.Stream(_module.Stream$T#r))
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.ICons_q(d0)
             && _module.Stream.ICons_q(d1)
             && (_module.Stream.ICons_q(d0) && _module.Stream.ICons_q(d1)
               ==> _module.Stream.head(d0) == _module.Stream.head(d1)
                 && $PrefixEq#_module.Stream(_module.Stream$T#l, 
                  _module.Stream$T#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream.tail(d0), 
                  _module.Stream.tail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Stream$T#l: Ty, 
    _module.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Stream(_module.Stream$T#l, _module.Stream$T#r, k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

// Constructor function declaration
function #_module.Color.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
// Constructor $Is
axiom $Is(#_module.Color.Red(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Red() == Lit(#_module.Color.Red());
}

const unique ##_module.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Red()) == ##_module.Color.Red;
}

function _module.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Red_q(d) } 
  _module.Color.Red_q(d) ==> d == #_module.Color.Red());

// Constructor function declaration
function #_module.Color.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
// Constructor $Is
axiom $Is(#_module.Color.Blue(), Tclass._module.Color());
// Constructor literal
axiom #_module.Color.Blue() == Lit(#_module.Color.Blue());
}

const unique ##_module.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Color.Blue()) == ##_module.Color.Blue;
}

function _module.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) <==> DatatypeCtorId(d) == ##_module.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d) } 
  _module.Color.Blue_q(d) ==> d == #_module.Color.Blue());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Color())
     ==> $IsAlloc(d, Tclass._module.Color(), $h));

// Depth-one case-split function
function $IsA#_module.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Color(d) } 
  $IsA#_module.Color(d) ==> _module.Color.Red_q(d) || _module.Color.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Color.Blue_q(d), $Is(d, Tclass._module.Color()) } 
    { _module.Color.Red_q(d), $Is(d, Tclass._module.Color()) } 
  $Is(d, Tclass._module.Color())
     ==> _module.Color.Red_q(d) || _module.Color.Blue_q(d));

// Datatype extensional equality declaration
function _module.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Red_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Red_q(b) } 
  _module.Color.Red_q(a) && _module.Color.Red_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensional equality definition: #_module.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b), _module.Color.Blue_q(a) } 
    { _module.Color#Equal(a, b), _module.Color.Blue_q(b) } 
  _module.Color.Blue_q(a) && _module.Color.Blue_q(b) ==> _module.Color#Equal(a, b));

// Datatype extensionality axiom: _module.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Color#Equal(a, b) } 
  _module.Color#Equal(a, b) <==> a == b);

const unique class._module.Color: ClassName;

// Constructor function declaration
function #_module.Lang.L(bool, HandleType) : DatatypeType;

const unique ##_module.Lang.L: DtCtorId
uses {
// Constructor identifier
axiom (forall a#13#0#0: bool, a#13#1#0: HandleType :: 
  { #_module.Lang.L(a#13#0#0, a#13#1#0) } 
  DatatypeCtorId(#_module.Lang.L(a#13#0#0, a#13#1#0)) == ##_module.Lang.L);
}

function _module.Lang.L_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Lang.L_q(d) } 
  _module.Lang.L_q(d) <==> DatatypeCtorId(d) == ##_module.Lang.L);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Lang.L_q(d) } 
  _module.Lang.L_q(d)
     ==> (exists a#14#0#0: bool, a#14#1#0: HandleType :: 
      d == #_module.Lang.L(a#14#0#0, a#14#1#0)));

// Constructor $Is
axiom (forall _module.Lang$S: Ty, a#15#0#0: bool, a#15#1#0: HandleType :: 
  { $Is(#_module.Lang.L(a#15#0#0, a#15#1#0), Tclass._module.Lang(_module.Lang$S)) } 
  $Is(#_module.Lang.L(a#15#0#0, a#15#1#0), Tclass._module.Lang(_module.Lang$S))
     <==> $Is(a#15#0#0, TBool)
       && $Is(a#15#1#0, 
        Tclass._System.___hFunc1(_module.Lang$S, Tclass._module.Lang(_module.Lang$S))));

// Constructor $IsAlloc
axiom (forall _module.Lang$S: Ty, a#15#0#0: bool, a#15#1#0: HandleType, $h: Heap :: 
  { $IsAlloc(#_module.Lang.L(a#15#0#0, a#15#1#0), Tclass._module.Lang(_module.Lang$S), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Lang.L(a#15#0#0, a#15#1#0), Tclass._module.Lang(_module.Lang$S), $h)
       <==> $IsAlloc(a#15#0#0, TBool, $h)
         && $IsAlloc(a#15#1#0, 
          Tclass._System.___hFunc1(_module.Lang$S, Tclass._module.Lang(_module.Lang$S)), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Lang.nullable(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Lang.L_q(d)
       && (exists _module.Lang$S: Ty :: 
        { $IsAlloc(d, Tclass._module.Lang(_module.Lang$S), $h) } 
        $IsAlloc(d, Tclass._module.Lang(_module.Lang$S), $h))
     ==> $IsAlloc(_module.Lang.nullable(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Lang$S: Ty, $h: Heap :: 
  { $IsAlloc(_module.Lang.deriv(d), 
      Tclass._System.___hFunc1(_module.Lang$S, Tclass._module.Lang(_module.Lang$S)), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.Lang.L_q(d)
       && $IsAlloc(d, Tclass._module.Lang(_module.Lang$S), $h)
     ==> $IsAlloc(_module.Lang.deriv(d), 
      Tclass._System.___hFunc1(_module.Lang$S, Tclass._module.Lang(_module.Lang$S)), 
      $h));

function _module.Lang.nullable(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#16#0#0: bool, a#16#1#0: HandleType :: 
  { #_module.Lang.L(a#16#0#0, a#16#1#0) } 
  _module.Lang.nullable(#_module.Lang.L(a#16#0#0, a#16#1#0)) == a#16#0#0);

function _module.Lang.deriv(DatatypeType) : HandleType;

// Constructor injectivity
axiom (forall a#17#0#0: bool, a#17#1#0: HandleType :: 
  { #_module.Lang.L(a#17#0#0, a#17#1#0) } 
  _module.Lang.deriv(#_module.Lang.L(a#17#0#0, a#17#1#0)) == a#17#1#0);

// Depth-one case-split function
function $IsA#_module.Lang(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Lang(d) } 
  $IsA#_module.Lang(d) ==> _module.Lang.L_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Lang$S: Ty, d: DatatypeType :: 
  { _module.Lang.L_q(d), $Is(d, Tclass._module.Lang(_module.Lang$S)) } 
  $Is(d, Tclass._module.Lang(_module.Lang$S)) ==> _module.Lang.L_q(d));

function $Eq#_module.Lang(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Lang(_module.Lang$S#l))
       && $Is(d1, Tclass._module.Lang(_module.Lang$S#r))
     ==> ($Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1)
       <==> _module.Lang.L_q(d0)
         && _module.Lang.L_q(d1)
         && (_module.Lang.L_q(d0) && _module.Lang.L_q(d1)
           ==> _module.Lang.nullable(d0) == _module.Lang.nullable(d1)
             && _module.Lang.deriv(d0) == _module.Lang.deriv(d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1)
     <==> $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.Lang(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Lang(_module.Lang$S#l))
       && $Is(d1, Tclass._module.Lang(_module.Lang$S#r))
     ==> ($PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Lang.L_q(d0)
             && _module.Lang.L_q(d1)
             && (_module.Lang.L_q(d0) && _module.Lang.L_q(d1)
               ==> _module.Lang.nullable(d0) == _module.Lang.nullable(d1)
                 && _module.Lang.deriv(d0) == _module.Lang.deriv(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1), $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.Lang$S#l: Ty, 
    _module.Lang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.Lang(_module.Lang$S#l, _module.Lang$S#r, k, $LS(ly), d0, d1));

const unique class._module.Lang: ClassName;

// Constructor function declaration
function #_module.IMLang.IML(bool, IMap) : DatatypeType;

const unique ##_module.IMLang.IML: DtCtorId
uses {
// Constructor identifier
axiom (forall a#18#0#0: bool, a#18#1#0: IMap :: 
  { #_module.IMLang.IML(a#18#0#0, a#18#1#0) } 
  DatatypeCtorId(#_module.IMLang.IML(a#18#0#0, a#18#1#0)) == ##_module.IMLang.IML);
}

function _module.IMLang.IML_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.IMLang.IML_q(d) } 
  _module.IMLang.IML_q(d) <==> DatatypeCtorId(d) == ##_module.IMLang.IML);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.IMLang.IML_q(d) } 
  _module.IMLang.IML_q(d)
     ==> (exists a#19#0#0: bool, a#19#1#0: IMap :: 
      d == #_module.IMLang.IML(a#19#0#0, a#19#1#0)));

// Constructor $Is
axiom (forall _module.IMLang$S: Ty, a#20#0#0: bool, a#20#1#0: IMap :: 
  { $Is(#_module.IMLang.IML(a#20#0#0, a#20#1#0), Tclass._module.IMLang(_module.IMLang$S)) } 
  $Is(#_module.IMLang.IML(a#20#0#0, a#20#1#0), Tclass._module.IMLang(_module.IMLang$S))
     <==> $Is(a#20#0#0, TBool)
       && $Is(a#20#1#0, TIMap(_module.IMLang$S, Tclass._module.IMLang(_module.IMLang$S))));

// Constructor $IsAlloc
axiom (forall _module.IMLang$S: Ty, a#20#0#0: bool, a#20#1#0: IMap, $h: Heap :: 
  { $IsAlloc(#_module.IMLang.IML(a#20#0#0, a#20#1#0), 
      Tclass._module.IMLang(_module.IMLang$S), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.IMLang.IML(a#20#0#0, a#20#1#0), 
        Tclass._module.IMLang(_module.IMLang$S), 
        $h)
       <==> $IsAlloc(a#20#0#0, TBool, $h)
         && $IsAlloc(a#20#1#0, TIMap(_module.IMLang$S, Tclass._module.IMLang(_module.IMLang$S)), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.IMLang.nullable(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.IMLang.IML_q(d)
       && (exists _module.IMLang$S: Ty :: 
        { $IsAlloc(d, Tclass._module.IMLang(_module.IMLang$S), $h) } 
        $IsAlloc(d, Tclass._module.IMLang(_module.IMLang$S), $h))
     ==> $IsAlloc(_module.IMLang.nullable(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.IMLang$S: Ty, $h: Heap :: 
  { $IsAlloc(_module.IMLang.deriv(d), 
      TIMap(_module.IMLang$S, Tclass._module.IMLang(_module.IMLang$S)), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.IMLang.IML_q(d)
       && $IsAlloc(d, Tclass._module.IMLang(_module.IMLang$S), $h)
     ==> $IsAlloc(_module.IMLang.deriv(d), 
      TIMap(_module.IMLang$S, Tclass._module.IMLang(_module.IMLang$S)), 
      $h));

function _module.IMLang.nullable(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#21#0#0: bool, a#21#1#0: IMap :: 
  { #_module.IMLang.IML(a#21#0#0, a#21#1#0) } 
  _module.IMLang.nullable(#_module.IMLang.IML(a#21#0#0, a#21#1#0)) == a#21#0#0);

function _module.IMLang.deriv(DatatypeType) : IMap;

// Constructor injectivity
axiom (forall a#22#0#0: bool, a#22#1#0: IMap :: 
  { #_module.IMLang.IML(a#22#0#0, a#22#1#0) } 
  _module.IMLang.deriv(#_module.IMLang.IML(a#22#0#0, a#22#1#0)) == a#22#1#0);

// Depth-one case-split function
function $IsA#_module.IMLang(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.IMLang(d) } 
  $IsA#_module.IMLang(d) ==> _module.IMLang.IML_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.IMLang$S: Ty, d: DatatypeType :: 
  { _module.IMLang.IML_q(d), $Is(d, Tclass._module.IMLang(_module.IMLang$S)) } 
  $Is(d, Tclass._module.IMLang(_module.IMLang$S)) ==> _module.IMLang.IML_q(d));

function $Eq#_module.IMLang(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.IMLang(_module.IMLang$S#l))
       && $Is(d1, Tclass._module.IMLang(_module.IMLang$S#r))
     ==> ($Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1)
       <==> _module.IMLang.IML_q(d0)
         && _module.IMLang.IML_q(d1)
         && (_module.IMLang.IML_q(d0) && _module.IMLang.IML_q(d1)
           ==> _module.IMLang.nullable(d0) == _module.IMLang.nullable(d1)
             && IMap#Equal(_module.IMLang.deriv(d0), _module.IMLang.deriv(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1)
     <==> $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.IMLang(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.IMLang(_module.IMLang$S#l))
       && $Is(d1, Tclass._module.IMLang(_module.IMLang$S#r))
     ==> ($PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.IMLang.IML_q(d0)
             && _module.IMLang.IML_q(d1)
             && (_module.IMLang.IML_q(d0) && _module.IMLang.IML_q(d1)
               ==> _module.IMLang.nullable(d0) == _module.IMLang.nullable(d1)
                 && IMap#Equal(_module.IMLang.deriv(d0), _module.IMLang.deriv(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1), $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.IMLang$S#l: Ty, 
    _module.IMLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.IMLang(_module.IMLang$S#l, _module.IMLang$S#r, k, $LS(ly), d0, d1));

const unique class._module.IMLang: ClassName;

// Constructor function declaration
function #_module.MLang.ML(bool, Map) : DatatypeType;

const unique ##_module.MLang.ML: DtCtorId
uses {
// Constructor identifier
axiom (forall a#23#0#0: bool, a#23#1#0: Map :: 
  { #_module.MLang.ML(a#23#0#0, a#23#1#0) } 
  DatatypeCtorId(#_module.MLang.ML(a#23#0#0, a#23#1#0)) == ##_module.MLang.ML);
}

function _module.MLang.ML_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.MLang.ML_q(d) } 
  _module.MLang.ML_q(d) <==> DatatypeCtorId(d) == ##_module.MLang.ML);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.MLang.ML_q(d) } 
  _module.MLang.ML_q(d)
     ==> (exists a#24#0#0: bool, a#24#1#0: Map :: 
      d == #_module.MLang.ML(a#24#0#0, a#24#1#0)));

// Constructor $Is
axiom (forall _module.MLang$S: Ty, a#25#0#0: bool, a#25#1#0: Map :: 
  { $Is(#_module.MLang.ML(a#25#0#0, a#25#1#0), Tclass._module.MLang(_module.MLang$S)) } 
  $Is(#_module.MLang.ML(a#25#0#0, a#25#1#0), Tclass._module.MLang(_module.MLang$S))
     <==> $Is(a#25#0#0, TBool)
       && $Is(a#25#1#0, TMap(_module.MLang$S, Tclass._module.MLang(_module.MLang$S))));

// Constructor $IsAlloc
axiom (forall _module.MLang$S: Ty, a#25#0#0: bool, a#25#1#0: Map, $h: Heap :: 
  { $IsAlloc(#_module.MLang.ML(a#25#0#0, a#25#1#0), Tclass._module.MLang(_module.MLang$S), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.MLang.ML(a#25#0#0, a#25#1#0), Tclass._module.MLang(_module.MLang$S), $h)
       <==> $IsAlloc(a#25#0#0, TBool, $h)
         && $IsAlloc(a#25#1#0, TMap(_module.MLang$S, Tclass._module.MLang(_module.MLang$S)), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.MLang.nullable(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.MLang.ML_q(d)
       && (exists _module.MLang$S: Ty :: 
        { $IsAlloc(d, Tclass._module.MLang(_module.MLang$S), $h) } 
        $IsAlloc(d, Tclass._module.MLang(_module.MLang$S), $h))
     ==> $IsAlloc(_module.MLang.nullable(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.MLang$S: Ty, $h: Heap :: 
  { $IsAlloc(_module.MLang.deriv(d), 
      TMap(_module.MLang$S, Tclass._module.MLang(_module.MLang$S)), 
      $h) } 
  $IsGoodHeap($h)
       && 
      _module.MLang.ML_q(d)
       && $IsAlloc(d, Tclass._module.MLang(_module.MLang$S), $h)
     ==> $IsAlloc(_module.MLang.deriv(d), 
      TMap(_module.MLang$S, Tclass._module.MLang(_module.MLang$S)), 
      $h));

function _module.MLang.nullable(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#26#0#0: bool, a#26#1#0: Map :: 
  { #_module.MLang.ML(a#26#0#0, a#26#1#0) } 
  _module.MLang.nullable(#_module.MLang.ML(a#26#0#0, a#26#1#0)) == a#26#0#0);

function _module.MLang.deriv(DatatypeType) : Map;

// Constructor injectivity
axiom (forall a#27#0#0: bool, a#27#1#0: Map :: 
  { #_module.MLang.ML(a#27#0#0, a#27#1#0) } 
  _module.MLang.deriv(#_module.MLang.ML(a#27#0#0, a#27#1#0)) == a#27#1#0);

// Depth-one case-split function
function $IsA#_module.MLang(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.MLang(d) } 
  $IsA#_module.MLang(d) ==> _module.MLang.ML_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.MLang$S: Ty, d: DatatypeType :: 
  { _module.MLang.ML_q(d), $Is(d, Tclass._module.MLang(_module.MLang$S)) } 
  $Is(d, Tclass._module.MLang(_module.MLang$S)) ==> _module.MLang.ML_q(d));

function $Eq#_module.MLang(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.MLang(_module.MLang$S#l))
       && $Is(d1, Tclass._module.MLang(_module.MLang$S#r))
     ==> ($Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1)
       <==> _module.MLang.ML_q(d0)
         && _module.MLang.ML_q(d1)
         && (_module.MLang.ML_q(d0) && _module.MLang.ML_q(d1)
           ==> _module.MLang.nullable(d0) == _module.MLang.nullable(d1)
             && Map#Equal(_module.MLang.deriv(d0), _module.MLang.deriv(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1)
     <==> $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.MLang(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.MLang(_module.MLang$S#l))
       && $Is(d1, Tclass._module.MLang(_module.MLang$S#r))
     ==> ($PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.MLang.ML_q(d0)
             && _module.MLang.ML_q(d1)
             && (_module.MLang.ML_q(d0) && _module.MLang.ML_q(d1)
               ==> _module.MLang.nullable(d0) == _module.MLang.nullable(d1)
                 && Map#Equal(_module.MLang.deriv(d0), _module.MLang.deriv(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1) } 
  $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1), $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.MLang$S#l: Ty, 
    _module.MLang$S#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.MLang(_module.MLang$S#l, _module.MLang$S#r, k, $LS(ly), d0, d1));

const unique class._module.MLang: ClassName;

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

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$Lang: TyTagFamily;

const unique tytagFamily$MLang: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$IMLang: TyTagFamily;

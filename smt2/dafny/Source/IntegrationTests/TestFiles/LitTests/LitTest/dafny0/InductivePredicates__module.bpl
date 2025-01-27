// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.Even
function _module.__default.Even($ly: LayerType, x#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.Even (revealed)
axiom {:id "id168"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType :: 
    { _module.__default.Even($LS($ly), x#0) } 
    _module.__default.Even#canCall(x#0)
         || (1 < $FunctionContextHeight && $Is(x#0, Tclass._module.natinf()))
       ==> (!(_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
           ==> 
          _module.natinf.N_q(x#0)
           ==> 
          LitInt(2) <= _module.natinf.n(x#0)
           ==> _module.__default.Even#canCall(#_module.natinf.N(_module.natinf.n(x#0) - 2)))
         && _module.__default.Even($LS($ly), x#0)
           == ((_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
             || (
              _module.natinf.N_q(x#0)
               && LitInt(2) <= _module.natinf.n(x#0)
               && _module.__default.Even($ly, #_module.natinf.N(_module.natinf.n(x#0) - 2)))));
}

function _module.__default.Even#canCall(x#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { _module.__default.Even($LS($ly), x#0) } 
  _module.__default.Even($LS($ly), x#0) == _module.__default.Even($ly, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { _module.__default.Even(AsFuelBottom($ly), x#0) } 
  _module.__default.Even($ly, x#0) == _module.__default.Even($LZ, x#0));

function Tclass._module.natinf() : Ty
uses {
// Tclass._module.natinf Tag
axiom Tag(Tclass._module.natinf()) == Tagclass._module.natinf
   && TagFamily(Tclass._module.natinf()) == tytagFamily$natinf;
}

const unique Tagclass._module.natinf: TyTag;

// Box/unbox axiom for Tclass._module.natinf
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.natinf()) } 
  $IsBox(bx, Tclass._module.natinf())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.natinf()));

function _module.__default.Even#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.Even
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { _module.__default.Even#requires($ly, x#0) } 
  $Is(x#0, Tclass._module.natinf())
     ==> _module.__default.Even#requires($ly, x#0) == true);

// 1st prefix predicate axiom for _module.__default.Even_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType :: 
    { _module.__default.Even($LS($ly), x#0) } 
    $Is(x#0, Tclass._module.natinf()) && _module.__default.Even($LS($ly), x#0)
       ==> (exists _k#0: Box :: 
        { _module.__default.Even_h($LS($ly), _k#0, x#0) } 
        _module.__default.Even_h($LS($ly), _k#0, x#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType :: 
    { _module.__default.Even($LS($ly), x#0) } 
    $Is(x#0, Tclass._module.natinf())
         && (exists _k#0: Box :: 
          { _module.__default.Even_h($LS($ly), _k#0, x#0) } 
          _module.__default.Even_h($LS($ly), _k#0, x#0))
       ==> _module.__default.Even($LS($ly), x#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, _k#0: Box :: 
    { _module.__default.Even_h($ly, _k#0, x#0) } 
    $Is(x#0, Tclass._module.natinf()) && _k#0 == ORD#FromNat(0)
       ==> !_module.__default.Even_h($ly, _k#0, x#0));

// targeted prefix predicate monotonicity axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, _k#0: Box, _m: Box, _limit: Box :: 
    { _module.__default.Even_h($ly, _k#0, x#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.__default.Even_h($ly, _k#0, x#0)
       ==> _module.__default.Even_h($ly, _m, x#0));

procedure {:verboseName "Even (well-formedness)"} CheckWellformed$$_module.__default.Even(x#0: DatatypeType where $Is(x#0, Tclass._module.natinf()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even (well-formedness)"} CheckWellformed$$_module.__default.Even(x#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;


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
        if (_module.natinf.N_q(x#0))
        {
            assert {:id "id169"} _module.natinf.N_q(x#0);
        }

        if (!(_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0)))
        {
            if (_module.natinf.N_q(x#0))
            {
                assert {:id "id170"} _module.natinf.N_q(x#0);
            }

            if (_module.natinf.N_q(x#0) && LitInt(2) <= _module.natinf.n(x#0))
            {
                assert {:id "id171"} _module.natinf.N_q(x#0);
                assert {:id "id172"} $Is(_module.natinf.n(x#0) - 2, Tclass._System.nat());
                ##x#0 := #_module.natinf.N(_module.natinf.n(x#0) - 2);
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
                assume _module.__default.Even#canCall(#_module.natinf.N(_module.natinf.n(x#0) - 2));
            }
        }

        assume {:id "id173"} _module.__default.Even($LS($LZ), x#0)
           == ((_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
             || (
              _module.natinf.N_q(x#0)
               && LitInt(2) <= _module.natinf.n(x#0)
               && _module.__default.Even($LS($LZ), #_module.natinf.N(_module.natinf.n(x#0) - 2))));
        assume !(_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
           ==> 
          _module.natinf.N_q(x#0)
           ==> 
          LitInt(2) <= _module.natinf.n(x#0)
           ==> _module.__default.Even#canCall(#_module.natinf.N(_module.natinf.n(x#0) - 2));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Even($LS($LZ), x#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.Even#
function _module.__default.Even_h($ly: LayerType, _k#0: Box, x#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.Even_h (revealed)
axiom {:id "id174"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
    { _module.__default.Even_h($LS($ly), _k#0, x#0) } 
    _module.__default.Even_h#canCall(_k#0, x#0)
         || (2 < $FunctionContextHeight && $Is(x#0, Tclass._module.natinf()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !(_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
           ==> 
          _module.natinf.N_q(x#0)
           ==> 
          LitInt(2) <= _module.natinf.n(x#0)
           ==> _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#0) - 2)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
             || (
              _module.natinf.N_q(x#0)
               && LitInt(2) <= _module.natinf.n(x#0)
               && _module.__default.Even_h($ly, 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#0) - 2))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.Even_h($ly, _k'#0, x#0) } 
            ORD#LessThanLimit(_k'#0, _k#0) ==> _module.__default.Even_h#canCall(_k'#0, x#0)))
         && _module.__default.Even_h($LS($ly), _k#0, x#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
                 || (
                  _module.natinf.N_q(x#0)
                   && LitInt(2) <= _module.natinf.n(x#0)
                   && _module.__default.Even_h($ly, 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    #_module.natinf.N(_module.natinf.n(x#0) - 2))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#0: Box :: 
                { _module.__default.Even_h($ly, _k'#0, x#0) } 
                ORD#LessThanLimit(_k'#0, _k#0) && _module.__default.Even_h($ly, _k'#0, x#0)))));
// definition axiom for _module.__default.Even_h for decreasing-related literals (revealed)
axiom {:id "id175"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
    {:weight 3} { _module.__default.Even_h($LS($ly), Lit(_k#0), x#0) } 
    _module.__default.Even_h#canCall(Lit(_k#0), x#0)
         || (2 < $FunctionContextHeight && $Is(x#0, Tclass._module.natinf()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !(_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
           ==> 
          _module.natinf.N_q(x#0)
           ==> 
          LitInt(2) <= _module.natinf.n(x#0)
           ==> _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#0) - 2)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
             || (
              _module.natinf.N_q(x#0)
               && LitInt(2) <= _module.natinf.n(x#0)
               && _module.__default.Even_h($LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#0) - 2))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.Even_h($LS($ly), _k'#1, x#0) } 
            ORD#LessThanLimit(_k'#1, _k#0) ==> _module.__default.Even_h#canCall(_k'#1, x#0)))
         && _module.__default.Even_h($LS($ly), Lit(_k#0), x#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
                 || (
                  _module.natinf.N_q(x#0)
                   && LitInt(2) <= _module.natinf.n(x#0)
                   && _module.__default.Even_h($LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    #_module.natinf.N(_module.natinf.n(x#0) - 2))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#1: Box :: 
                { _module.__default.Even_h($LS($ly), _k'#1, x#0) } 
                ORD#LessThanLimit(_k'#1, _k#0) && _module.__default.Even_h($LS($ly), _k'#1, x#0)))));
// definition axiom for _module.__default.Even_h for all literals (revealed)
axiom {:id "id176"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
    {:weight 3} { _module.__default.Even_h($LS($ly), Lit(_k#0), Lit(x#0)) } 
    _module.__default.Even_h#canCall(Lit(_k#0), Lit(x#0))
         || (2 < $FunctionContextHeight && $Is(x#0, Tclass._module.natinf()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !(_module.natinf.N_q(Lit(x#0))
             && LitInt(_module.natinf.n(Lit(x#0))) == LitInt(0))
           ==> 
          Lit(_module.natinf.N_q(Lit(x#0)))
           ==> 
          LitInt(2) <= LitInt(_module.natinf.n(Lit(x#0)))
           ==> _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
            Lit(#_module.natinf.N(LitInt(_module.natinf.n(Lit(x#0)) - 2)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (_module.natinf.N_q(Lit(x#0))
               && LitInt(_module.natinf.n(Lit(x#0))) == LitInt(0))
             || (
              _module.natinf.N_q(Lit(x#0))
               && LitInt(2) <= LitInt(_module.natinf.n(Lit(x#0)))
               && _module.__default.Even_h($LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                Lit(#_module.natinf.N(LitInt(_module.natinf.n(Lit(x#0)) - 2))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.Even_h($LS($ly), _k'#2, x#0) } 
            ORD#LessThanLimit(_k'#2, _k#0) ==> _module.__default.Even_h#canCall(_k'#2, x#0)))
         && _module.__default.Even_h($LS($ly), Lit(_k#0), Lit(x#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (_module.natinf.N_q(Lit(x#0))
                   && LitInt(_module.natinf.n(Lit(x#0))) == LitInt(0))
                 || (
                  _module.natinf.N_q(Lit(x#0))
                   && LitInt(2) <= LitInt(_module.natinf.n(Lit(x#0)))
                   && _module.__default.Even_h($LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(#_module.natinf.N(LitInt(_module.natinf.n(Lit(x#0)) - 2))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#2: Box :: 
                { _module.__default.Even_h($LS($ly), _k'#2, x#0) } 
                ORD#LessThanLimit(_k'#2, _k#0) && _module.__default.Even_h($LS($ly), _k'#2, x#0)))));
}

function _module.__default.Even_h#canCall(_k#0: Box, x#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  { _module.__default.Even_h($LS($ly), _k#0, x#0) } 
  _module.__default.Even_h($LS($ly), _k#0, x#0)
     == _module.__default.Even_h($ly, _k#0, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  { _module.__default.Even_h(AsFuelBottom($ly), _k#0, x#0) } 
  _module.__default.Even_h($ly, _k#0, x#0)
     == _module.__default.Even_h($LZ, _k#0, x#0));

function _module.__default.Even_h#requires(LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.Even_h
axiom (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  { _module.__default.Even_h#requires($ly, _k#0, x#0) } 
  $Is(x#0, Tclass._module.natinf())
     ==> _module.__default.Even_h#requires($ly, _k#0, x#0) == true);

procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M(x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;


    // AddMethodImpl: M, CheckWellFormed$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(x#0);
    assume {:id "id177"} _module.__default.Even($LS($LZ), x#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id178"} _module.natinf.N_q(x#0);
    assert {:id "id179"} _module.natinf.N_q(x#0);
    assert {:id "id180"} LitInt(2) != 0;
    assume {:id "id181"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "M (call)"} Call$$_module.__default.M(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  // user-defined preconditions
  requires {:id "id182"} _module.__default.Even#canCall(x#0)
     ==> _module.__default.Even($LS($LZ), x#0)
       || 
      (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LS($LZ)), #_module.natinf.N(_module.natinf.n(x#0) - 2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id183"} _module.natinf.N_q(x#0);
  ensures {:id "id184"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id185"} _module.__default.Even#canCall(x#0)
     && 
    _module.__default.Even($LS($LZ), x#0)
     && ((_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LZ), #_module.natinf.N(_module.natinf.n(x#0) - 2))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id186"} _module.natinf.N_q(x#0);
  ensures {:id "id187"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M(x#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var k#0: Box;
  var k#1: Box;
  var ##_k#0: Box;
  var ##x#1: DatatypeType;
  var k##0: Box;
  var x##0: DatatypeType;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.natinf(x#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#x0#0: DatatypeType :: 
      { _module.natinf.n($ih#x0#0) } 
        { _module.natinf.N_q($ih#x0#0) } 
        { _module.__default.Even($LS($LZ), $ih#x0#0) } 
      $Is($ih#x0#0, Tclass._module.natinf())
           && _module.__default.Even($LS($LZ), $ih#x0#0)
           && DtRank($ih#x0#0) < DtRank(x#0)
         ==> _module.natinf.N_q($ih#x0#0)
           && Mod(_module.natinf.n($ih#x0#0), LitInt(2)) == LitInt(0));
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(16,18)
    havoc k#1;
    if (true)
    {
        ##_k#0 := k#1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##_k#0, TORDINAL, $Heap);
        ##x#1 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#1, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even_h#canCall(k#1, x#0);
        assume _module.__default.Even_h#canCall(k#1, x#0);
    }

    assert {:id "id188"} (exists $as#k0#0: Box :: _module.__default.Even_h($LS($LZ), $as#k0#0, x#0));
    havoc k#0;
    assume {:id "id189"} _module.__default.Even_h($LS($LZ), k#0, x#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(17,5)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    k##0 := k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := x#0;
    call {:id "id190"} Call$$_module.__default.M_k(k##0, x##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "M' (well-formedness)"} CheckWellFormed$$_module.__default.M_k(k#0: Box, 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M' (well-formedness)"} CheckWellFormed$$_module.__default.M_k(k#0: Box, x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##_k#0: Box;
  var ##x#0: DatatypeType;


    // AddMethodImpl: M', CheckWellFormed$$_module.__default.M_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##_k#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even_h#canCall(k#0, x#0);
    assume {:id "id191"} _module.__default.Even_h($LS($LZ), k#0, x#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id192"} _module.natinf.N_q(x#0);
    assert {:id "id193"} _module.natinf.N_q(x#0);
    assert {:id "id194"} LitInt(2) != 0;
    assume {:id "id195"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "M' (call)"} Call$$_module.__default.M_k(k#0: Box, 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  // user-defined preconditions
  requires {:id "id196"} _module.__default.Even_h#canCall(k#0, x#0)
     ==> _module.__default.Even_h($LS($LZ), k#0, x#0)
       || (0 < ORD#Offset(k#0)
         ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
           || (
            _module.natinf.N_q(x#0)
             && LitInt(2) <= _module.natinf.n(x#0)
             && _module.__default.Even_h($LS($LS($LZ)), 
              ORD#Minus(k#0, ORD#FromNat(1)), 
              #_module.natinf.N(_module.natinf.n(x#0) - 2))));
  requires {:id "id197"} _module.__default.Even_h#canCall(k#0, x#0)
     ==> _module.__default.Even_h($LS($LZ), k#0, x#0)
       || (LitInt(0) == ORD#Offset(k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.Even_h($LS($LZ), _k'#0, x#0) } 
          ORD#LessThanLimit(_k'#0, k#0) && _module.__default.Even_h($LS($LZ), _k'#0, x#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id198"} _module.natinf.N_q(x#0);
  ensures {:id "id199"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M' (correctness)"} Impl$$_module.__default.M_k(k#0: Box, 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id200"} _module.__default.Even_h#canCall(k#0, x#0)
     && 
    _module.__default.Even_h($LS($LZ), k#0, x#0)
     && 
    (0 < ORD#Offset(k#0)
       ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
         || (
          _module.natinf.N_q(x#0)
           && LitInt(2) <= _module.natinf.n(x#0)
           && _module.__default.Even_h($LS($LZ), 
            ORD#Minus(k#0, ORD#FromNat(1)), 
            #_module.natinf.N(_module.natinf.n(x#0) - 2))))
     && (LitInt(0) == ORD#Offset(k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.Even_h($LS($LZ), _k'#1, x#0) } 
        ORD#LessThanLimit(_k'#1, k#0) && _module.__default.Even_h($LS($LZ), _k'#1, x#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id201"} _module.natinf.N_q(x#0);
  ensures {:id "id202"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M' (correctness)"} Impl$$_module.__default.M_k(k#0: Box, x#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##_k#0_0_0: Box;
  var ##x#0_0_0: DatatypeType;
  var k##0_0_0: Box;
  var x##0_0_0: DatatypeType;
  var k'#1_0: Box;
  var k'#1_1: Box;
  var ##_k#1_0: Box;
  var ##x#1_0: DatatypeType;
  var k##1_0: Box;
  var x##1_0: DatatypeType;

    // AddMethodImpl: M', Impl$$_module.__default.M_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(25,3)
    assume true;
    if (ORD#IsSucc(k#0))
    {
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(26,5)
        if (*)
        {
            if (_module.natinf.N_q(x#0))
            {
                assert {:id "id216"} _module.natinf.N_q(x#0);
            }

            assume true;
            assume {:id "id217"} _module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0);
        }
        else if (*)
        {
            if (_module.natinf.N_q(x#0))
            {
                assert {:id "id204"} _module.natinf.N_q(x#0);
            }

            if (_module.natinf.N_q(x#0) && LitInt(2) <= _module.natinf.n(x#0))
            {
                assert {:id "id205"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id206"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(k#0);
                ##_k#0_0_0 := ORD#Minus(k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0_0_0, TORDINAL, $Heap);
                assert {:id "id207"} _module.natinf.N_q(x#0);
                assert {:id "id208"} $Is(_module.natinf.n(x#0) - 2, Tclass._System.nat());
                ##x#0_0_0 := #_module.natinf.N(_module.natinf.n(x#0) - 2);
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0_0_0, Tclass._module.natinf(), $Heap);
                assume _module.__default.Even_h#canCall(ORD#Minus(k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#0) - 2));
            }

            assume _module.natinf.N_q(x#0)
               ==> 
              LitInt(2) <= _module.natinf.n(x#0)
               ==> _module.__default.Even_h#canCall(ORD#Minus(k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#0) - 2));
            assume {:id "id209"} _module.natinf.N_q(x#0)
               && LitInt(2) <= _module.natinf.n(x#0)
               && _module.__default.Even_h($LS($LZ), 
                ORD#Minus(k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#0) - 2));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(30,11)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id210"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id211"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            k##0_0_0 := ORD#Minus(k#0, ORD#FromNat(1));
            assert {:id "id212"} _module.natinf.N_q(x#0);
            assert {:id "id213"} $Is(_module.natinf.n(x#0) - 2, Tclass._System.nat());
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0_0_0 := #_module.natinf.N(_module.natinf.n(x#0) - 2);
            assert {:id "id214"} ORD#Less(k##0_0_0, k#0) || (k##0_0_0 == k#0 && DtRank(x##0_0_0) < DtRank(x#0));
            call {:id "id215"} Call$$_module.__default.M_k(k##0_0_0, x##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume true;
            assume _module.natinf.N_q(x#0)
               ==> 
              LitInt(2) <= _module.natinf.n(x#0)
               ==> _module.__default.Even_h#canCall(ORD#Minus(k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#0) - 2));
            assume !
              (_module.natinf.N_q(x#0)
               && _module.natinf.n(x#0) == LitInt(0))
               && !
              (
              _module.natinf.N_q(x#0)
               && LitInt(2) <= _module.natinf.n(x#0)
               && _module.__default.Even_h($LS($LZ), 
                ORD#Minus(k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#0) - 2)));
            assert {:id "id203"} false;
        }
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(33,5)
        assume true;
        assert {:id "id218"} ORD#IsLimit(k#0);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(34,12)
        havoc k'#1_1;
        if (true)
        {
            if (ORD#Less(k'#1_1, k#0))
            {
                ##_k#1_0 := k'#1_1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1_0, TORDINAL, $Heap);
                ##x#1_0 := x#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1_0, Tclass._module.natinf(), $Heap);
                assume _module.__default.Even_h#canCall(k'#1_1, x#0);
            }

            assume ORD#Less(k'#1_1, k#0) ==> _module.__default.Even_h#canCall(k'#1_1, x#0);
        }

        assert {:id "id219"} (exists $as#k'1_0#1_0: Box :: 
          ORD#Less($as#k'1_0#1_0, k#0)
             && _module.__default.Even_h($LS($LZ), $as#k'1_0#1_0, x#0));
        havoc k'#1_0;
        assume {:id "id220"} ORD#Less(k'#1_0, k#0) && _module.__default.Even_h($LS($LZ), k'#1_0, x#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(35,7)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        k##1_0 := k'#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        x##1_0 := x#0;
        assert {:id "id221"} ORD#Less(k##1_0, k#0) || (k##1_0 == k#0 && DtRank(x##1_0) < DtRank(x#0));
        call {:id "id222"} Call$$_module.__default.M_k(k##1_0, x##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "M'_auto (well-formedness)"} CheckWellFormed$$_module.__default.M_k__auto(k#0: Box, 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M'_auto (well-formedness)"} CheckWellFormed$$_module.__default.M_k__auto(k#0: Box, x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##_k#0: Box;
  var ##x#0: DatatypeType;


    // AddMethodImpl: M'_auto, CheckWellFormed$$_module.__default.M_k__auto
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##_k#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even_h#canCall(k#0, x#0);
    assume {:id "id223"} _module.__default.Even_h($LS($LZ), k#0, x#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id224"} _module.natinf.N_q(x#0);
    assert {:id "id225"} _module.natinf.N_q(x#0);
    assert {:id "id226"} LitInt(2) != 0;
    assume {:id "id227"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "M'_auto (call)"} Call$$_module.__default.M_k__auto(k#0: Box, 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  // user-defined preconditions
  requires {:id "id228"} _module.__default.Even_h#canCall(k#0, x#0)
     ==> _module.__default.Even_h($LS($LZ), k#0, x#0)
       || (0 < ORD#Offset(k#0)
         ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
           || (
            _module.natinf.N_q(x#0)
             && LitInt(2) <= _module.natinf.n(x#0)
             && _module.__default.Even_h($LS($LS($LZ)), 
              ORD#Minus(k#0, ORD#FromNat(1)), 
              #_module.natinf.N(_module.natinf.n(x#0) - 2))));
  requires {:id "id229"} _module.__default.Even_h#canCall(k#0, x#0)
     ==> _module.__default.Even_h($LS($LZ), k#0, x#0)
       || (LitInt(0) == ORD#Offset(k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.Even_h($LS($LZ), _k'#0, x#0) } 
          ORD#LessThanLimit(_k'#0, k#0) && _module.__default.Even_h($LS($LZ), _k'#0, x#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id230"} _module.natinf.N_q(x#0);
  ensures {:id "id231"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M'_auto (correctness)"} Impl$$_module.__default.M_k__auto(k#0: Box, 
    x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id232"} _module.__default.Even_h#canCall(k#0, x#0)
     && 
    _module.__default.Even_h($LS($LZ), k#0, x#0)
     && 
    (0 < ORD#Offset(k#0)
       ==> (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
         || (
          _module.natinf.N_q(x#0)
           && LitInt(2) <= _module.natinf.n(x#0)
           && _module.__default.Even_h($LS($LZ), 
            ORD#Minus(k#0, ORD#FromNat(1)), 
            #_module.natinf.N(_module.natinf.n(x#0) - 2))))
     && (LitInt(0) == ORD#Offset(k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.Even_h($LS($LZ), _k'#1, x#0) } 
        ORD#LessThanLimit(_k'#1, k#0) && _module.__default.Even_h($LS($LZ), _k'#1, x#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id233"} _module.natinf.N_q(x#0);
  ensures {:id "id234"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M'_auto (correctness)"} Impl$$_module.__default.M_k__auto(k#0: Box, x#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: M'_auto, Impl$$_module.__default.M_k__auto
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.natinf(x#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: Box, $ih#x0#0: DatatypeType :: 
      { _module.__default.Even_h($LS($LZ), $ih#k0#0, $ih#x0#0) } 
      $Is($ih#x0#0, Tclass._module.natinf())
           && _module.__default.Even_h($LS($LZ), $ih#k0#0, $ih#x0#0)
           && (ORD#Less($ih#k0#0, k#0) || ($ih#k0#0 == k#0 && DtRank($ih#x0#0) < DtRank(x#0)))
         ==> _module.natinf.N_q($ih#x0#0)
           && Mod(_module.natinf.n($ih#x0#0), LitInt(2)) == LitInt(0));
    $_reverifyPost := false;
}



procedure {:verboseName "IL (well-formedness)"} CheckWellFormed$$_module.__default.IL(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL (well-formedness)"} CheckWellFormed$$_module.__default.IL(x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;


    // AddMethodImpl: IL, CheckWellFormed$$_module.__default.IL
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(x#0);
    assume {:id "id235"} _module.__default.Even($LS($LZ), x#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id236"} _module.natinf.N_q(x#0);
    assert {:id "id237"} _module.natinf.N_q(x#0);
    assert {:id "id238"} LitInt(2) != 0;
    assume {:id "id239"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "IL (call)"} Call$$_module.__default.IL(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  // user-defined preconditions
  requires {:id "id240"} _module.__default.Even#canCall(x#0)
     ==> _module.__default.Even($LS($LZ), x#0)
       || 
      (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LS($LZ)), #_module.natinf.N(_module.natinf.n(x#0) - 2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id241"} _module.natinf.N_q(x#0);
  ensures {:id "id242"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL# (co-call)"} CoCall$$_module.__default.IL_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1));
  // user-defined preconditions
  requires {:id "id243"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (0 < ORD#Offset(_k#0)
         ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
           || (
            _module.natinf.N_q(x#1)
             && LitInt(2) <= _module.natinf.n(x#1)
             && _module.__default.Even_h($LS($LS($LZ)), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              #_module.natinf.N(_module.natinf.n(x#1) - 2))));
  requires {:id "id244"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.Even_h($LS($LZ), _k'#0, x#1) } 
          ORD#LessThanLimit(_k'#0, _k#0) && _module.__default.Even_h($LS($LZ), _k'#0, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id245"} _module.natinf.N_q(x#1);
  ensures {:id "id246"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL# (correctness)"} Impl$$_module.__default.IL_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id247"} _module.__default.Even_h#canCall(_k#0, x#1)
     && 
    _module.__default.Even_h($LS($LZ), _k#0, x#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
         || (
          _module.natinf.N_q(x#1)
           && LitInt(2) <= _module.natinf.n(x#1)
           && _module.__default.Even_h($LS($LZ), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            #_module.natinf.N(_module.natinf.n(x#1) - 2))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.Even_h($LS($LZ), _k'#1, x#1) } 
        ORD#LessThanLimit(_k'#1, _k#0) && _module.__default.Even_h($LS($LZ), _k'#1, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id248"} _module.natinf.N_q(x#1);
  ensures {:id "id249"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL# (correctness)"} Impl$$_module.__default.IL_h(_k#0: Box, x#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##_k#0: Box;
  var ##x#1: DatatypeType;
  var _k##0: Box;
  var x##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: IL#, Impl$$_module.__default.IL_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(49,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(50,3)
        if (*)
        {
            if (_module.natinf.N_q(x#1))
            {
                assert {:id "id262"} _module.natinf.N_q(x#1);
            }

            assume true;
            assume {:id "id263"} _module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0);
        }
        else if (*)
        {
            if (_module.natinf.N_q(x#1))
            {
                assert {:id "id251"} _module.natinf.N_q(x#1);
            }

            if (_module.natinf.N_q(x#1) && LitInt(2) <= _module.natinf.n(x#1))
            {
                assert {:id "id252"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id253"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                assert {:id "id254"} _module.natinf.N_q(x#1);
                assert {:id "id255"} $Is(_module.natinf.n(x#1) - 2, Tclass._System.nat());
                ##x#1 := #_module.natinf.N(_module.natinf.n(x#1) - 2);
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1, Tclass._module.natinf(), $Heap);
                assume _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#1) - 2));
            }

            assume _module.natinf.N_q(x#1)
               ==> 
              LitInt(2) <= _module.natinf.n(x#1)
               ==> _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#1) - 2));
            assume {:id "id256"} _module.natinf.N_q(x#1)
               && LitInt(2) <= _module.natinf.n(x#1)
               && _module.__default.Even_h($LS($LZ), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#1) - 2));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(54,9)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id257"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id258"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id259"} _module.natinf.N_q(x#1);
            assert {:id "id260"} $Is(_module.natinf.n(x#1) - 2, Tclass._System.nat());
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0 := #_module.natinf.N(_module.natinf.n(x#1) - 2);
            call {:id "id261"} CoCall$$_module.__default.IL_h(_k##0, x##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume true;
            assume _module.natinf.N_q(x#1)
               ==> 
              LitInt(2) <= _module.natinf.n(x#1)
               ==> _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#1) - 2));
            assume !
              (_module.natinf.N_q(x#1)
               && _module.natinf.n(x#1) == LitInt(0))
               && !
              (
              _module.natinf.N_q(x#1)
               && LitInt(2) <= _module.natinf.n(x#1)
               && _module.__default.Even_h($LS($LZ), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#1) - 2)));
            assert {:id "id250"} false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(49,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, x#2: DatatypeType :: 
          { _module.natinf.n(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.natinf.N_q(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.__default.Even_h($LS($LZ), _k'#2, x#2) } 
          $Is(x#2, Tclass._module.natinf())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.Even_h($LS($LZ), _k'#2, x#2)
             ==> _module.natinf.N_q(x#2) && Mod(_module.natinf.n(x#2), LitInt(2)) == LitInt(0));
    }
}



procedure {:verboseName "IL_EvenBetter (well-formedness)"} CheckWellFormed$$_module.__default.IL__EvenBetter(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL_EvenBetter (well-formedness)"} CheckWellFormed$$_module.__default.IL__EvenBetter(x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;


    // AddMethodImpl: IL_EvenBetter, CheckWellFormed$$_module.__default.IL__EvenBetter
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(x#0);
    assume {:id "id264"} _module.__default.Even($LS($LZ), x#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id265"} _module.natinf.N_q(x#0);
    assert {:id "id266"} _module.natinf.N_q(x#0);
    assert {:id "id267"} LitInt(2) != 0;
    assume {:id "id268"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "IL_EvenBetter (call)"} Call$$_module.__default.IL__EvenBetter(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  // user-defined preconditions
  requires {:id "id269"} _module.__default.Even#canCall(x#0)
     ==> _module.__default.Even($LS($LZ), x#0)
       || 
      (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LS($LZ)), #_module.natinf.N(_module.natinf.n(x#0) - 2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id270"} _module.natinf.N_q(x#0);
  ensures {:id "id271"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL_EvenBetter# (co-call)"} CoCall$$_module.__default.IL__EvenBetter_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1));
  // user-defined preconditions
  requires {:id "id272"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (0 < ORD#Offset(_k#0)
         ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
           || (
            _module.natinf.N_q(x#1)
             && LitInt(2) <= _module.natinf.n(x#1)
             && _module.__default.Even_h($LS($LS($LZ)), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              #_module.natinf.N(_module.natinf.n(x#1) - 2))));
  requires {:id "id273"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.Even_h($LS($LZ), _k'#0, x#1) } 
          ORD#LessThanLimit(_k'#0, _k#0) && _module.__default.Even_h($LS($LZ), _k'#0, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id274"} _module.natinf.N_q(x#1);
  ensures {:id "id275"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL_EvenBetter# (correctness)"} Impl$$_module.__default.IL__EvenBetter_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id276"} _module.__default.Even_h#canCall(_k#0, x#1)
     && 
    _module.__default.Even_h($LS($LZ), _k#0, x#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
         || (
          _module.natinf.N_q(x#1)
           && LitInt(2) <= _module.natinf.n(x#1)
           && _module.__default.Even_h($LS($LZ), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            #_module.natinf.N(_module.natinf.n(x#1) - 2))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.Even_h($LS($LZ), _k'#1, x#1) } 
        ORD#LessThanLimit(_k'#1, _k#0) && _module.__default.Even_h($LS($LZ), _k'#1, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id277"} _module.natinf.N_q(x#1);
  ensures {:id "id278"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL_EvenBetter# (correctness)"} Impl$$_module.__default.IL__EvenBetter_h(_k#0: Box, x#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##_k#0: Box;
  var ##x#1: DatatypeType;
  var _k##0: Box;
  var x##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: IL_EvenBetter#, Impl$$_module.__default.IL__EvenBetter_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(61,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(62,3)
        if (*)
        {
            if (_module.natinf.N_q(x#1))
            {
                assert {:id "id291"} _module.natinf.N_q(x#1);
            }

            assume true;
            assume {:id "id292"} _module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0);
        }
        else if (*)
        {
            if (_module.natinf.N_q(x#1))
            {
                assert {:id "id280"} _module.natinf.N_q(x#1);
            }

            if (_module.natinf.N_q(x#1) && LitInt(2) <= _module.natinf.n(x#1))
            {
                assert {:id "id281"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id282"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                assert {:id "id283"} _module.natinf.N_q(x#1);
                assert {:id "id284"} $Is(_module.natinf.n(x#1) - 2, Tclass._System.nat());
                ##x#1 := #_module.natinf.N(_module.natinf.n(x#1) - 2);
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1, Tclass._module.natinf(), $Heap);
                assume _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#1) - 2));
            }

            assume _module.natinf.N_q(x#1)
               ==> 
              LitInt(2) <= _module.natinf.n(x#1)
               ==> _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#1) - 2));
            assume {:id "id285"} _module.natinf.N_q(x#1)
               && LitInt(2) <= _module.natinf.n(x#1)
               && _module.__default.Even_h($LS($LZ), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#1) - 2));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(66,20)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id286"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id287"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id288"} _module.natinf.N_q(x#1);
            assert {:id "id289"} $Is(_module.natinf.n(x#1) - 2, Tclass._System.nat());
            assume true;
            // ProcessCallStmt: CheckSubrange
            x##0 := #_module.natinf.N(_module.natinf.n(x#1) - 2);
            call {:id "id290"} CoCall$$_module.__default.IL__EvenBetter_h(_k##0, x##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume true;
            assume _module.natinf.N_q(x#1)
               ==> 
              LitInt(2) <= _module.natinf.n(x#1)
               ==> _module.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), #_module.natinf.N(_module.natinf.n(x#1) - 2));
            assume !
              (_module.natinf.N_q(x#1)
               && _module.natinf.n(x#1) == LitInt(0))
               && !
              (
              _module.natinf.N_q(x#1)
               && LitInt(2) <= _module.natinf.n(x#1)
               && _module.__default.Even_h($LS($LZ), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                #_module.natinf.N(_module.natinf.n(x#1) - 2)));
            assert {:id "id279"} false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(61,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, x#2: DatatypeType :: 
          { _module.natinf.n(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.natinf.N_q(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.__default.Even_h($LS($LZ), _k'#2, x#2) } 
          $Is(x#2, Tclass._module.natinf())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.Even_h($LS($LZ), _k'#2, x#2)
             ==> _module.natinf.N_q(x#2) && Mod(_module.natinf.n(x#2), LitInt(2)) == LitInt(0));
    }
}



procedure {:verboseName "IL_Best (well-formedness)"} CheckWellFormed$$_module.__default.IL__Best(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL_Best (well-formedness)"} CheckWellFormed$$_module.__default.IL__Best(x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;


    // AddMethodImpl: IL_Best, CheckWellFormed$$_module.__default.IL__Best
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(x#0);
    assume {:id "id293"} _module.__default.Even($LS($LZ), x#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id294"} _module.natinf.N_q(x#0);
    assert {:id "id295"} _module.natinf.N_q(x#0);
    assert {:id "id296"} LitInt(2) != 0;
    assume {:id "id297"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "IL_Best (call)"} Call$$_module.__default.IL__Best(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  // user-defined preconditions
  requires {:id "id298"} _module.__default.Even#canCall(x#0)
     ==> _module.__default.Even($LS($LZ), x#0)
       || 
      (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LS($LZ)), #_module.natinf.N(_module.natinf.n(x#0) - 2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id299"} _module.natinf.N_q(x#0);
  ensures {:id "id300"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL_Best# (co-call)"} CoCall$$_module.__default.IL__Best_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1));
  // user-defined preconditions
  requires {:id "id301"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (0 < ORD#Offset(_k#0)
         ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
           || (
            _module.natinf.N_q(x#1)
             && LitInt(2) <= _module.natinf.n(x#1)
             && _module.__default.Even_h($LS($LS($LZ)), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              #_module.natinf.N(_module.natinf.n(x#1) - 2))));
  requires {:id "id302"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.Even_h($LS($LZ), _k'#0, x#1) } 
          ORD#LessThanLimit(_k'#0, _k#0) && _module.__default.Even_h($LS($LZ), _k'#0, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id303"} _module.natinf.N_q(x#1);
  ensures {:id "id304"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL_Best# (correctness)"} Impl$$_module.__default.IL__Best_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id305"} _module.__default.Even_h#canCall(_k#0, x#1)
     && 
    _module.__default.Even_h($LS($LZ), _k#0, x#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
         || (
          _module.natinf.N_q(x#1)
           && LitInt(2) <= _module.natinf.n(x#1)
           && _module.__default.Even_h($LS($LZ), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            #_module.natinf.N(_module.natinf.n(x#1) - 2))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.Even_h($LS($LZ), _k'#1, x#1) } 
        ORD#LessThanLimit(_k'#1, _k#0) && _module.__default.Even_h($LS($LZ), _k'#1, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id306"} _module.natinf.N_q(x#1);
  ensures {:id "id307"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL_Best# (correctness)"} Impl$$_module.__default.IL__Best_h(_k#0: Box, x#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: IL_Best#, Impl$$_module.__default.IL__Best_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.natinf(x#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#x0#0: DatatypeType :: 
      { _module.__default.Even_h($LS($LZ), $ih#_k0#0, $ih#x0#0) } 
      $Is($ih#x0#0, Tclass._module.natinf())
           && _module.__default.Even_h($LS($LZ), $ih#_k0#0, $ih#x0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && DtRank($ih#x0#0) < DtRank(x#1)))
         ==> _module.natinf.N_q($ih#x0#0)
           && Mod(_module.natinf.n($ih#x0#0), LitInt(2)) == LitInt(0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(73,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(73,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, x#2: DatatypeType :: 
          { _module.natinf.n(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.natinf.N_q(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.__default.Even_h($LS($LZ), _k'#2, x#2) } 
          $Is(x#2, Tclass._module.natinf())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.Even_h($LS($LZ), _k'#2, x#2)
             ==> _module.natinf.N_q(x#2) && Mod(_module.natinf.n(x#2), LitInt(2)) == LitInt(0));
    }
}



procedure {:verboseName "IL_Bad (well-formedness)"} CheckWellFormed$$_module.__default.IL__Bad(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL_Bad (well-formedness)"} CheckWellFormed$$_module.__default.IL__Bad(x#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;


    // AddMethodImpl: IL_Bad, CheckWellFormed$$_module.__default.IL__Bad
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##x#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(x#0);
    assume {:id "id308"} _module.__default.Even($LS($LZ), x#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assume {:id "id309"} _module.natinf.N_q(x#0);
    assert {:id "id310"} _module.natinf.N_q(x#0);
    assert {:id "id311"} LitInt(2) != 0;
    assume {:id "id312"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "IL_Bad (call)"} Call$$_module.__default.IL__Bad(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0));
  // user-defined preconditions
  requires {:id "id313"} _module.__default.Even#canCall(x#0)
     ==> _module.__default.Even($LS($LZ), x#0)
       || 
      (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LS($LZ)), #_module.natinf.N(_module.natinf.n(x#0) - 2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id314"} _module.natinf.N_q(x#0);
  ensures {:id "id315"} Mod(_module.natinf.n(x#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL_Bad# (co-call)"} CoCall$$_module.__default.IL__Bad_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1));
  // user-defined preconditions
  requires {:id "id316"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (0 < ORD#Offset(_k#0)
         ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
           || (
            _module.natinf.N_q(x#1)
             && LitInt(2) <= _module.natinf.n(x#1)
             && _module.__default.Even_h($LS($LS($LZ)), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              #_module.natinf.N(_module.natinf.n(x#1) - 2))));
  requires {:id "id317"} _module.__default.Even_h#canCall(_k#0, x#1)
     ==> _module.__default.Even_h($LS($LZ), _k#0, x#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.Even_h($LS($LZ), _k'#0, x#1) } 
          ORD#LessThanLimit(_k'#0, _k#0) && _module.__default.Even_h($LS($LZ), _k'#0, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id318"} _module.natinf.N_q(x#1);
  ensures {:id "id319"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "IL_Bad# (correctness)"} Impl$$_module.__default.IL__Bad_h(_k#0: Box, 
    x#1: DatatypeType
       where $Is(x#1, Tclass._module.natinf())
         && $IsAlloc(x#1, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id320"} _module.__default.Even_h#canCall(_k#0, x#1)
     && 
    _module.__default.Even_h($LS($LZ), _k#0, x#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (_module.natinf.N_q(x#1) && _module.natinf.n(x#1) == LitInt(0))
         || (
          _module.natinf.N_q(x#1)
           && LitInt(2) <= _module.natinf.n(x#1)
           && _module.__default.Even_h($LS($LZ), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            #_module.natinf.N(_module.natinf.n(x#1) - 2))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.Even_h($LS($LZ), _k'#1, x#1) } 
        ORD#LessThanLimit(_k'#1, _k#0) && _module.__default.Even_h($LS($LZ), _k'#1, x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id321"} _module.natinf.N_q(x#1);
  ensures {:id "id322"} Mod(_module.natinf.n(x#1), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IL_Bad# (correctness)"} Impl$$_module.__default.IL__Bad_h(_k#0: Box, x#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: IL_Bad#, Impl$$_module.__default.IL__Bad_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.natinf(x#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#x0#0: DatatypeType :: 
      { _module.__default.Even_h($LS($LZ), $ih#_k0#0, $ih#x0#0) } 
      $Is($ih#x0#0, Tclass._module.natinf())
           && _module.__default.Even_h($LS($LZ), $ih#_k0#0, $ih#x0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && DtRank($ih#x0#0) < DtRank(x#1)))
         ==> _module.natinf.N_q($ih#x0#0)
           && Mod(_module.natinf.n($ih#x0#0), LitInt(2)) == LitInt(0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(79,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(80,3)
        assume true;
        assert {:id "id323"} Lit(false);
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(79,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, x#2: DatatypeType :: 
          { _module.natinf.n(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.natinf.N_q(x#2), ORD#Less(_k'#2, _k#0) } 
            { _module.__default.Even_h($LS($LZ), _k'#2, x#2) } 
          $Is(x#2, Tclass._module.natinf())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.Even_h($LS($LZ), _k'#2, x#2)
             ==> _module.natinf.N_q(x#2) && Mod(_module.natinf.n(x#2), LitInt(2)) == LitInt(0));
    }
}



procedure {:verboseName "InfNotEven (well-formedness)"} CheckWellFormed$$_module.__default.InfNotEven();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "InfNotEven (call)"} Call$$_module.__default.InfNotEven();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Even#canCall(Lit(#_module.natinf.Inf()));
  ensures {:id "id325"} !Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.Inf())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "InfNotEven (correctness)"} Impl$$_module.__default.InfNotEven() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Even#canCall(Lit(#_module.natinf.Inf()));
  ensures {:id "id326"} !Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.Inf())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "InfNotEven (correctness)"} Impl$$_module.__default.InfNotEven() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: InfNotEven, Impl$$_module.__default.InfNotEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Test (well-formedness)"} CheckWellFormed$$_module.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test (call)"} Call$$_module.__default.Test();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Test (correctness)"} Impl$$_module.__default.Test() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Test (correctness)"} Impl$$_module.__default.Test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;
  var ##x#1: DatatypeType;
  var ##x#2: DatatypeType;

    // AddMethodImpl: Test, Impl$$_module.__default.Test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(90,3)
    assert {:id "id327"} $Is(LitInt(1), Tclass._System.nat());
    ##x#0 := Lit(#_module.natinf.N(LitInt(1)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(1))));
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(1))));
    assert {:id "id328"} {:subsumption 0} !Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(1)))));
    assume {:id "id329"} !Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(1)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(91,3)
    assert {:id "id330"} $Is(LitInt(5), Tclass._System.nat());
    ##x#1 := Lit(#_module.natinf.N(LitInt(5)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(5))));
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(5))));
    assert {:id "id331"} {:subsumption 0} !Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(5)))));
    assume {:id "id332"} !Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(92,3)
    assert {:id "id333"} $Is(LitInt(17), Tclass._System.nat());
    ##x#2 := Lit(#_module.natinf.N(LitInt(17)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(17))));
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(17))));
    assert {:id "id334"} {:subsumption 0} !Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(17)))));
    assume {:id "id335"} !Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))));
}



procedure {:verboseName "SeventeenIsNotEven (well-formedness)"} CheckWellFormed$$_module.__default.SeventeenIsNotEven();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeventeenIsNotEven (well-formedness)"} CheckWellFormed$$_module.__default.SeventeenIsNotEven()
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: DatatypeType;


    // AddMethodImpl: SeventeenIsNotEven, CheckWellFormed$$_module.__default.SeventeenIsNotEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    assert {:id "id336"} $Is(LitInt(17), Tclass._System.nat());
    ##x#0 := Lit(#_module.natinf.N(LitInt(17)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(17))));
    assume {:id "id337"} !Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))));
}



procedure {:verboseName "SeventeenIsNotEven (call)"} Call$$_module.__default.SeventeenIsNotEven();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(17))));
  ensures {:id "id338"} !Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(17)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "SeventeenIsNotEven (correctness)"} Impl$$_module.__default.SeventeenIsNotEven() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(17))));
  ensures {:id "id339"} !Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(17)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeventeenIsNotEven (correctness)"} Impl$$_module.__default.SeventeenIsNotEven() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#1: DatatypeType;
  var ##x#2: DatatypeType;
  var ##x#3: DatatypeType;
  var ##x#4: DatatypeType;
  var ##x#5: DatatypeType;
  var ##x#6: DatatypeType;
  var ##x#7: DatatypeType;
  var ##x#8: DatatypeType;
  var ##x#9: DatatypeType;
  var ##x#10: DatatypeType;
  var ##x#11: DatatypeType;
  var ##x#12: DatatypeType;
  var ##x#13: DatatypeType;
  var ##x#14: DatatypeType;
  var ##x#15: DatatypeType;
  var ##x#16: DatatypeType;
  var ##x#17: DatatypeType;

    // AddMethodImpl: SeventeenIsNotEven, Impl$$_module.__default.SeventeenIsNotEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(98,3)
    assert {:id "id340"} $Is(LitInt(17), Tclass._System.nat());
    ##x#1 := Lit(#_module.natinf.N(LitInt(17)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(17))));
    assert {:id "id341"} $Is(LitInt(15), Tclass._System.nat());
    ##x#2 := Lit(#_module.natinf.N(LitInt(15)));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, Tclass._module.natinf(), $Heap);
    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(15))));
    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
       == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15))))))
    {
        assert {:id "id342"} $Is(LitInt(15), Tclass._System.nat());
        ##x#3 := Lit(#_module.natinf.N(LitInt(15)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#3, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(15))));
        assert {:id "id343"} $Is(LitInt(13), Tclass._System.nat());
        ##x#4 := Lit(#_module.natinf.N(LitInt(13)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#4, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(13))));
    }

    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13))))))
    {
        assert {:id "id344"} $Is(LitInt(13), Tclass._System.nat());
        ##x#5 := Lit(#_module.natinf.N(LitInt(13)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#5, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(13))));
        assert {:id "id345"} $Is(LitInt(11), Tclass._System.nat());
        ##x#6 := Lit(#_module.natinf.N(LitInt(11)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#6, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(11))));
    }

    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11))))))
    {
        assert {:id "id346"} $Is(LitInt(11), Tclass._System.nat());
        ##x#7 := Lit(#_module.natinf.N(LitInt(11)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#7, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(11))));
        assert {:id "id347"} $Is(LitInt(9), Tclass._System.nat());
        ##x#8 := Lit(#_module.natinf.N(LitInt(9)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#8, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(9))));
    }

    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9))))))
    {
        assert {:id "id348"} $Is(LitInt(9), Tclass._System.nat());
        ##x#9 := Lit(#_module.natinf.N(LitInt(9)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#9, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(9))));
        assert {:id "id349"} $Is(LitInt(7), Tclass._System.nat());
        ##x#10 := Lit(#_module.natinf.N(LitInt(7)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#10, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(7))));
    }

    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7))))))
    {
        assert {:id "id350"} $Is(LitInt(7), Tclass._System.nat());
        ##x#11 := Lit(#_module.natinf.N(LitInt(7)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#11, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(7))));
        assert {:id "id351"} $Is(LitInt(5), Tclass._System.nat());
        ##x#12 := Lit(#_module.natinf.N(LitInt(5)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#12, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(5))));
    }

    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5))))))
    {
        assert {:id "id352"} $Is(LitInt(5), Tclass._System.nat());
        ##x#13 := Lit(#_module.natinf.N(LitInt(5)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#13, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(5))));
        assert {:id "id353"} $Is(LitInt(3), Tclass._System.nat());
        ##x#14 := Lit(#_module.natinf.N(LitInt(3)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#14, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(3))));
    }

    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(3))))))
    {
        assert {:id "id354"} $Is(LitInt(3), Tclass._System.nat());
        ##x#15 := Lit(#_module.natinf.N(LitInt(3)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#15, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(3))));
        assert {:id "id355"} $Is(LitInt(1), Tclass._System.nat());
        ##x#16 := Lit(#_module.natinf.N(LitInt(1)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#16, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(1))));
    }

    if (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(3)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(3)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(1))))))
    {
        assert {:id "id356"} $Is(LitInt(1), Tclass._System.nat());
        ##x#17 := Lit(#_module.natinf.N(LitInt(1)));
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#17, Tclass._module.natinf(), $Heap);
        assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(1))));
    }

    assume _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(17))))
       && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(15))))
       && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
           == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(15))))
           && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(13))))
           && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
               == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
             ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(13))))
               && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(11))))
               && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
                   == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
                 ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(11))))
                   && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(9))))
                   && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
                       == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
                     ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(9))))
                       && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(7))))
                       && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
                           == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
                         ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(7))))
                           && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(5))))
                           && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
                               == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
                             ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(5))))
                               && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(3))))
                               && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
                                   == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(3)))))
                                 ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(3))))
                                   && _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(1))))
                                   && (Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(3)))))
                                       == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(1)))))
                                     ==> _module.__default.Even#canCall(Lit(#_module.natinf.N(LitInt(1))))))))))));
    assert {:id "id357"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(17)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(15)))));
    assert {:id "id358"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(15)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(13)))));
    assert {:id "id359"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(13)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(11)))));
    assert {:id "id360"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(11)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(9)))));
    assert {:id "id361"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(9)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(7)))));
    assert {:id "id362"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(7)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(5)))));
    assert {:id "id363"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(5)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(3)))));
    assert {:id "id364"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(3)))))
       == Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(1)))));
    assert {:id "id365"} {:subsumption 0} Lit(_module.__default.Even($LS($LS($LZ)), Lit(#_module.natinf.N(LitInt(1)))))
       == Lit(false);
    assume {:id "id366"} Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(17)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(15)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(13)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(11)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(9)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(7)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(5)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(3)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(3)))))
         == Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(1)))))
       && Lit(_module.__default.Even($LS($LZ), Lit(#_module.natinf.N(LitInt(1)))))
         == Lit(false);
}



procedure {:verboseName "OneMore (well-formedness)"} CheckWellFormed$$_module.__default.OneMore(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0))
   returns (y#0: DatatypeType
       where $Is(y#0, Tclass._module.natinf())
         && $IsAlloc(y#0, Tclass._module.natinf(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OneMore (call)"} Call$$_module.__default.OneMore(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0))
   returns (y#0: DatatypeType
       where $Is(y#0, Tclass._module.natinf())
         && $IsAlloc(y#0, Tclass._module.natinf(), $Heap));
  // user-defined preconditions
  requires {:id "id369"} _module.__default.Even#canCall(x#0)
     ==> _module.__default.Even($LS($LZ), x#0)
       || 
      (_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LS($LZ)), #_module.natinf.N(_module.natinf.n(x#0) - 2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Even#canCall(y#0);
  free ensures {:id "id370"} _module.__default.Even#canCall(y#0)
     && 
    _module.__default.Even($LS($LZ), y#0)
     && ((_module.natinf.N_q(y#0) && _module.natinf.n(y#0) == LitInt(0))
       || (
        _module.natinf.N_q(y#0)
         && LitInt(2) <= _module.natinf.n(y#0)
         && _module.__default.Even($LS($LZ), #_module.natinf.N(_module.natinf.n(y#0) - 2))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "OneMore (correctness)"} Impl$$_module.__default.OneMore(x#0: DatatypeType
       where $Is(x#0, Tclass._module.natinf())
         && $IsAlloc(x#0, Tclass._module.natinf(), $Heap)
         && $IsA#_module.natinf(x#0))
   returns (y#0: DatatypeType
       where $Is(y#0, Tclass._module.natinf())
         && $IsAlloc(y#0, Tclass._module.natinf(), $Heap), 
    $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id371"} _module.__default.Even#canCall(x#0)
     && 
    _module.__default.Even($LS($LZ), x#0)
     && ((_module.natinf.N_q(x#0) && _module.natinf.n(x#0) == LitInt(0))
       || (
        _module.natinf.N_q(x#0)
         && LitInt(2) <= _module.natinf.n(x#0)
         && _module.__default.Even($LS($LZ), #_module.natinf.N(_module.natinf.n(x#0) - 2))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Even#canCall(y#0);
  ensures {:id "id372"} _module.__default.Even#canCall(y#0)
     ==> _module.__default.Even($LS($LZ), y#0)
       || 
      (_module.natinf.N_q(y#0) && _module.natinf.n(y#0) == LitInt(0))
       || (
        _module.natinf.N_q(y#0)
         && LitInt(2) <= _module.natinf.n(y#0)
         && _module.__default.Even($LS($LS($LZ)), #_module.natinf.N(_module.natinf.n(y#0) - 2)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OneMore (correctness)"} Impl$$_module.__default.OneMore(x#0: DatatypeType) returns (y#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: OneMore, Impl$$_module.__default.OneMore
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/InductivePredicates.dfy(114,5)
    assume true;
    assert {:id "id373"} _module.natinf.N_q(x#0);
    assert {:id "id374"} $Is(_module.natinf.n(x#0) + 2, Tclass._System.nat());
    assume true;
    y#0 := #_module.natinf.N(_module.natinf.n(x#0) + 2);
}



// Constructor function declaration
function #_module.natinf.N(int) : DatatypeType;

const unique ##_module.natinf.N: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #_module.natinf.N(a#0#0#0) } 
  DatatypeCtorId(#_module.natinf.N(a#0#0#0)) == ##_module.natinf.N);
}

function _module.natinf.N_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.natinf.N_q(d) } 
  _module.natinf.N_q(d) <==> DatatypeCtorId(d) == ##_module.natinf.N);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.natinf.N_q(d) } 
  _module.natinf.N_q(d)
     ==> (exists a#1#0#0: int :: d == #_module.natinf.N(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#_module.natinf.N(a#2#0#0), Tclass._module.natinf()) } 
  $Is(#_module.natinf.N(a#2#0#0), Tclass._module.natinf())
     <==> $Is(a#2#0#0, Tclass._System.nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.natinf.n(d), Tclass._System.nat(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.natinf.N_q(d)
       && $IsAlloc(d, Tclass._module.natinf(), $h)
     ==> $IsAlloc(_module.natinf.n(d), Tclass._System.nat(), $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #_module.natinf.N(LitInt(a#3#0#0)) } 
  #_module.natinf.N(LitInt(a#3#0#0)) == Lit(#_module.natinf.N(a#3#0#0)));

function _module.natinf.n(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #_module.natinf.N(a#4#0#0) } 
  _module.natinf.n(#_module.natinf.N(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #_module.natinf.Inf() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.natinf.Inf()) == ##_module.natinf.Inf;
// Constructor $Is
axiom $Is(#_module.natinf.Inf(), Tclass._module.natinf());
// Constructor literal
axiom #_module.natinf.Inf() == Lit(#_module.natinf.Inf());
}

const unique ##_module.natinf.Inf: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.natinf.Inf()) == ##_module.natinf.Inf;
}

function _module.natinf.Inf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.natinf.Inf_q(d) } 
  _module.natinf.Inf_q(d) <==> DatatypeCtorId(d) == ##_module.natinf.Inf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.natinf.Inf_q(d) } 
  _module.natinf.Inf_q(d) ==> d == #_module.natinf.Inf());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.natinf(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.natinf())
     ==> $IsAlloc(d, Tclass._module.natinf(), $h));

// Depth-one case-split function
function $IsA#_module.natinf(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.natinf(d) } 
  $IsA#_module.natinf(d) ==> _module.natinf.N_q(d) || _module.natinf.Inf_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.natinf.Inf_q(d), $Is(d, Tclass._module.natinf()) } 
    { _module.natinf.N_q(d), $Is(d, Tclass._module.natinf()) } 
  $Is(d, Tclass._module.natinf())
     ==> _module.natinf.N_q(d) || _module.natinf.Inf_q(d));

// Datatype extensional equality declaration
function _module.natinf#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.natinf.N
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.natinf#Equal(a, b), _module.natinf.N_q(a) } 
    { _module.natinf#Equal(a, b), _module.natinf.N_q(b) } 
  _module.natinf.N_q(a) && _module.natinf.N_q(b)
     ==> (_module.natinf#Equal(a, b) <==> _module.natinf.n(a) == _module.natinf.n(b)));

// Datatype extensional equality definition: #_module.natinf.Inf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.natinf#Equal(a, b), _module.natinf.Inf_q(a) } 
    { _module.natinf#Equal(a, b), _module.natinf.Inf_q(b) } 
  _module.natinf.Inf_q(a) && _module.natinf.Inf_q(b)
     ==> _module.natinf#Equal(a, b));

// Datatype extensionality axiom: _module.natinf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.natinf#Equal(a, b) } 
  _module.natinf#Equal(a, b) <==> a == b);

const unique class._module.natinf: ClassName;

const unique class.Alt.__default: ClassName;

// function declaration for Alt._default.S
function Alt.__default.S(x#0: DatatypeType) : DatatypeType;

function Alt.__default.S#canCall(x#0: DatatypeType) : bool;

function Tclass.Alt.natinf() : Ty
uses {
// Tclass.Alt.natinf Tag
axiom Tag(Tclass.Alt.natinf()) == Tagclass.Alt.natinf
   && TagFamily(Tclass.Alt.natinf()) == tytagFamily$natinf;
}

const unique Tagclass.Alt.natinf: TyTag;

// Box/unbox axiom for Tclass.Alt.natinf
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Alt.natinf()) } 
  $IsBox(bx, Tclass.Alt.natinf())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Alt.natinf()));

// consequence axiom for Alt.__default.S
axiom (forall x#0: DatatypeType :: 
  { Alt.__default.S(x#0) } 
  Alt.__default.S#canCall(x#0) || $Is(x#0, Tclass.Alt.natinf())
     ==> $Is(Alt.__default.S(x#0), Tclass.Alt.natinf()));

function Alt.__default.S#requires(DatatypeType) : bool;

// #requires axiom for Alt.__default.S
axiom (forall x#0: DatatypeType :: 
  { Alt.__default.S#requires(x#0) } 
  $Is(x#0, Tclass.Alt.natinf()) ==> Alt.__default.S#requires(x#0) == true);

// definition axiom for Alt.__default.S (revealed)
axiom {:id "id376"} (forall x#0: DatatypeType :: 
  { Alt.__default.S(x#0) } 
  Alt.__default.S#canCall(x#0) || $Is(x#0, Tclass.Alt.natinf())
     ==> Alt.__default.S(x#0)
       == (if Alt.natinf.N_q(x#0)
         then (var n#4 := Alt.natinf.n(x#0); #Alt.natinf.N(n#4 + 1))
         else #Alt.natinf.Inf()));

// definition axiom for Alt.__default.S for all literals (revealed)
axiom {:id "id377"} (forall x#0: DatatypeType :: 
  {:weight 3} { Alt.__default.S(Lit(x#0)) } 
  Alt.__default.S#canCall(Lit(x#0)) || $Is(x#0, Tclass.Alt.natinf())
     ==> Alt.__default.S(Lit(x#0))
       == (if Alt.natinf.N_q(Lit(x#0))
         then (var n#6 := LitInt(Alt.natinf.n(Lit(x#0))); Lit(#Alt.natinf.N(LitInt(n#6 + 1))))
         else #Alt.natinf.Inf()));

// function declaration for Alt._default.Even
function Alt.__default.Even($ly: LayerType, x#0: DatatypeType) : bool;

function Alt.__default.Even#canCall(x#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { Alt.__default.Even($LS($ly), x#0) } 
  Alt.__default.Even($LS($ly), x#0) == Alt.__default.Even($ly, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { Alt.__default.Even(AsFuelBottom($ly), x#0) } 
  Alt.__default.Even($ly, x#0) == Alt.__default.Even($LZ, x#0));

function Alt.__default.Even#requires(LayerType, DatatypeType) : bool;

// #requires axiom for Alt.__default.Even
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { Alt.__default.Even#requires($ly, x#0) } 
  $Is(x#0, Tclass.Alt.natinf()) ==> Alt.__default.Even#requires($ly, x#0) == true);

// definition axiom for Alt.__default.Even (revealed)
axiom {:id "id378"} (forall $ly: LayerType, x#0: DatatypeType :: 
  { Alt.__default.Even($LS($ly), x#0) } 
  Alt.__default.Even#canCall(x#0) || $Is(x#0, Tclass.Alt.natinf())
     ==> (!(Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
         ==> (forall y#6: DatatypeType :: 
          { Alt.__default.Even($ly, y#6) } { Alt.__default.S(Alt.__default.S(y#6)) } 
          $Is(y#6, Tclass.Alt.natinf())
             ==> $IsA#Alt.natinf(x#0)
               && $IsA#Alt.natinf(Alt.__default.S(Alt.__default.S(y#6)))
               && 
              Alt.__default.S#canCall(y#6)
               && Alt.__default.S#canCall(Alt.__default.S(y#6))
               && (Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#6)))
                 ==> Alt.__default.Even#canCall(y#6))))
       && Alt.__default.Even($LS($ly), x#0)
         == ((Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
           || (exists y#6: DatatypeType :: 
            { Alt.__default.Even($ly, y#6) } { Alt.__default.S(Alt.__default.S(y#6)) } 
            $Is(y#6, Tclass.Alt.natinf())
               && 
              Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#6)))
               && Alt.__default.Even($ly, y#6))));

// 1st prefix predicate axiom for Alt.__default.Even_h
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { Alt.__default.Even($LS($ly), x#0) } 
  $Is(x#0, Tclass.Alt.natinf()) && Alt.__default.Even($LS($ly), x#0)
     ==> (exists _k#0: Box :: 
      { Alt.__default.Even_h($LS($ly), _k#0, x#0) } 
      Alt.__default.Even_h($LS($ly), _k#0, x#0)));

// 2nd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: DatatypeType :: 
  { Alt.__default.Even($LS($ly), x#0) } 
  $Is(x#0, Tclass.Alt.natinf())
       && (exists _k#0: Box :: 
        { Alt.__default.Even_h($LS($ly), _k#0, x#0) } 
        Alt.__default.Even_h($LS($ly), _k#0, x#0))
     ==> Alt.__default.Even($LS($ly), x#0));

// 3rd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, _k#0: Box :: 
  { Alt.__default.Even_h($ly, _k#0, x#0) } 
  $Is(x#0, Tclass.Alt.natinf()) && _k#0 == ORD#FromNat(0)
     ==> !Alt.__default.Even_h($ly, _k#0, x#0));

// targeted prefix predicate monotonicity axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, _k#0: Box, _m: Box, _limit: Box :: 
  { Alt.__default.Even_h($ly, _k#0, x#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
  ORD#Less(_k#0, _m)
     ==> 
    Alt.__default.Even_h($ly, _k#0, x#0)
     ==> Alt.__default.Even_h($ly, _m, x#0));

// function declaration for Alt._default.Even#
function Alt.__default.Even_h($ly: LayerType, _k#0: Box, x#0: DatatypeType) : bool;

function Alt.__default.Even_h#canCall(_k#0: Box, x#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  { Alt.__default.Even_h($LS($ly), _k#0, x#0) } 
  Alt.__default.Even_h($LS($ly), _k#0, x#0)
     == Alt.__default.Even_h($ly, _k#0, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  { Alt.__default.Even_h(AsFuelBottom($ly), _k#0, x#0) } 
  Alt.__default.Even_h($ly, _k#0, x#0) == Alt.__default.Even_h($LZ, _k#0, x#0));

function Alt.__default.Even_h#requires(LayerType, Box, DatatypeType) : bool;

// #requires axiom for Alt.__default.Even_h
axiom (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  { Alt.__default.Even_h#requires($ly, _k#0, x#0) } 
  $Is(x#0, Tclass.Alt.natinf())
     ==> Alt.__default.Even_h#requires($ly, _k#0, x#0) == true);

// definition axiom for Alt.__default.Even_h (revealed)
axiom {:id "id379"} (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  { Alt.__default.Even_h($LS($ly), _k#0, x#0) } 
  Alt.__default.Even_h#canCall(_k#0, x#0) || $Is(x#0, Tclass.Alt.natinf())
     ==> (0 < ORD#Offset(_k#0)
         ==> 
        !(Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
         ==> (forall y#7: DatatypeType :: 
          { Alt.__default.Even_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), y#7) } 
            { Alt.__default.S(Alt.__default.S(y#7)) } 
          $Is(y#7, Tclass.Alt.natinf())
             ==> $IsA#Alt.natinf(x#0)
               && $IsA#Alt.natinf(Alt.__default.S(Alt.__default.S(y#7)))
               && 
              Alt.__default.S#canCall(y#7)
               && Alt.__default.S#canCall(Alt.__default.S(y#7))
               && (Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#7)))
                 ==> Alt.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), y#7))))
       && (
        (0 < ORD#Offset(_k#0)
         ==> (Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
           || (exists y#7: DatatypeType :: 
            { Alt.__default.Even_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), y#7) } 
              { Alt.__default.S(Alt.__default.S(y#7)) } 
            $Is(y#7, Tclass.Alt.natinf())
               && 
              Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#7)))
               && Alt.__default.Even_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), y#7)))
         ==> 
        LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#3: Box :: 
          { Alt.__default.Even_h($ly, _k'#3, x#0) } 
          ORD#LessThanLimit(_k'#3, _k#0) ==> Alt.__default.Even_h#canCall(_k'#3, x#0)))
       && Alt.__default.Even_h($LS($ly), _k#0, x#0)
         == ((0 < ORD#Offset(_k#0)
             ==> (Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
               || (exists y#7: DatatypeType :: 
                { Alt.__default.Even_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), y#7) } 
                  { Alt.__default.S(Alt.__default.S(y#7)) } 
                $Is(y#7, Tclass.Alt.natinf())
                   && 
                  Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#7)))
                   && Alt.__default.Even_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), y#7)))
           && (LitInt(0) == ORD#Offset(_k#0)
             ==> (exists _k'#3: Box :: 
              { Alt.__default.Even_h($ly, _k'#3, x#0) } 
              ORD#LessThanLimit(_k'#3, _k#0) && Alt.__default.Even_h($ly, _k'#3, x#0)))));

// definition axiom for Alt.__default.Even_h for decreasing-related literals (revealed)
axiom {:id "id380"} (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  {:weight 3} { Alt.__default.Even_h($LS($ly), Lit(_k#0), x#0) } 
  Alt.__default.Even_h#canCall(Lit(_k#0), x#0) || $Is(x#0, Tclass.Alt.natinf())
     ==> (0 < ORD#Offset(_k#0)
         ==> 
        !(Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
         ==> (forall y#8: DatatypeType :: 
          { Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#8) } 
            { Alt.__default.S(Alt.__default.S(y#8)) } 
          $Is(y#8, Tclass.Alt.natinf())
             ==> $IsA#Alt.natinf(x#0)
               && $IsA#Alt.natinf(Alt.__default.S(Alt.__default.S(y#8)))
               && 
              Alt.__default.S#canCall(y#8)
               && Alt.__default.S#canCall(Alt.__default.S(y#8))
               && (Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#8)))
                 ==> Alt.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), y#8))))
       && (
        (0 < ORD#Offset(_k#0)
         ==> (Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
           || (exists y#8: DatatypeType :: 
            { Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#8) } 
              { Alt.__default.S(Alt.__default.S(y#8)) } 
            $Is(y#8, Tclass.Alt.natinf())
               && 
              Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#8)))
               && Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#8)))
         ==> 
        LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#4: Box :: 
          { Alt.__default.Even_h($LS($ly), _k'#4, x#0) } 
          ORD#LessThanLimit(_k'#4, _k#0) ==> Alt.__default.Even_h#canCall(_k'#4, x#0)))
       && Alt.__default.Even_h($LS($ly), Lit(_k#0), x#0)
         == ((0 < ORD#Offset(_k#0)
             ==> (Alt.natinf.N_q(x#0) && Alt.natinf.n(x#0) == LitInt(0))
               || (exists y#8: DatatypeType :: 
                { Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#8) } 
                  { Alt.__default.S(Alt.__default.S(y#8)) } 
                $Is(y#8, Tclass.Alt.natinf())
                   && 
                  Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#8)))
                   && Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#8)))
           && (LitInt(0) == ORD#Offset(_k#0)
             ==> (exists _k'#4: Box :: 
              { Alt.__default.Even_h($LS($ly), _k'#4, x#0) } 
              ORD#LessThanLimit(_k'#4, _k#0) && Alt.__default.Even_h($LS($ly), _k'#4, x#0)))));

// definition axiom for Alt.__default.Even_h for all literals (revealed)
axiom {:id "id381"} (forall $ly: LayerType, _k#0: Box, x#0: DatatypeType :: 
  {:weight 3} { Alt.__default.Even_h($LS($ly), Lit(_k#0), Lit(x#0)) } 
  Alt.__default.Even_h#canCall(Lit(_k#0), Lit(x#0))
       || $Is(x#0, Tclass.Alt.natinf())
     ==> (0 < ORD#Offset(_k#0)
         ==> 
        !(Alt.natinf.N_q(Lit(x#0)) && LitInt(Alt.natinf.n(Lit(x#0))) == LitInt(0))
         ==> (forall y#9: DatatypeType :: 
          { Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#9) } 
            { Alt.__default.S(Alt.__default.S(y#9)) } 
          $Is(y#9, Tclass.Alt.natinf())
             ==> $IsA#Alt.natinf(Lit(x#0))
               && $IsA#Alt.natinf(Alt.__default.S(Alt.__default.S(y#9)))
               && 
              Alt.__default.S#canCall(y#9)
               && Alt.__default.S#canCall(Alt.__default.S(y#9))
               && (Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#9)))
                 ==> Alt.__default.Even_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), y#9))))
       && (
        (0 < ORD#Offset(_k#0)
         ==> (Alt.natinf.N_q(Lit(x#0)) && LitInt(Alt.natinf.n(Lit(x#0))) == LitInt(0))
           || (exists y#9: DatatypeType :: 
            { Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#9) } 
              { Alt.__default.S(Alt.__default.S(y#9)) } 
            $Is(y#9, Tclass.Alt.natinf())
               && 
              Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#9)))
               && Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#9)))
         ==> 
        LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#5: Box :: 
          { Alt.__default.Even_h($LS($ly), _k'#5, x#0) } 
          ORD#LessThanLimit(_k'#5, _k#0) ==> Alt.__default.Even_h#canCall(_k'#5, x#0)))
       && Alt.__default.Even_h($LS($ly), Lit(_k#0), Lit(x#0))
         == ((0 < ORD#Offset(_k#0)
             ==> (Alt.natinf.N_q(Lit(x#0)) && LitInt(Alt.natinf.n(Lit(x#0))) == LitInt(0))
               || (exists y#9: DatatypeType :: 
                { Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#9) } 
                  { Alt.__default.S(Alt.__default.S(y#9)) } 
                $Is(y#9, Tclass.Alt.natinf())
                   && 
                  Alt.natinf#Equal(x#0, Alt.__default.S(Alt.__default.S(y#9)))
                   && Alt.__default.Even_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), y#9)))
           && (LitInt(0) == ORD#Offset(_k#0)
             ==> (exists _k'#5: Box :: 
              { Alt.__default.Even_h($LS($ly), _k'#5, x#0) } 
              ORD#LessThanLimit(_k'#5, _k#0) && Alt.__default.Even_h($LS($ly), _k'#5, x#0)))));

// Constructor function declaration
function #Alt.natinf.N(int) : DatatypeType;

const unique ##Alt.natinf.N: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #Alt.natinf.N(a#0#0#0) } 
  DatatypeCtorId(#Alt.natinf.N(a#0#0#0)) == ##Alt.natinf.N);
}

function Alt.natinf.N_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Alt.natinf.N_q(d) } 
  Alt.natinf.N_q(d) <==> DatatypeCtorId(d) == ##Alt.natinf.N);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Alt.natinf.N_q(d) } 
  Alt.natinf.N_q(d) ==> (exists a#1#0#0: int :: d == #Alt.natinf.N(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#Alt.natinf.N(a#2#0#0), Tclass.Alt.natinf()) } 
  $Is(#Alt.natinf.N(a#2#0#0), Tclass.Alt.natinf())
     <==> $Is(a#2#0#0, Tclass._System.nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(Alt.natinf.n(d), Tclass._System.nat(), $h) } 
  $IsGoodHeap($h) && Alt.natinf.N_q(d) && $IsAlloc(d, Tclass.Alt.natinf(), $h)
     ==> $IsAlloc(Alt.natinf.n(d), Tclass._System.nat(), $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #Alt.natinf.N(LitInt(a#3#0#0)) } 
  #Alt.natinf.N(LitInt(a#3#0#0)) == Lit(#Alt.natinf.N(a#3#0#0)));

function Alt.natinf.n(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #Alt.natinf.N(a#4#0#0) } 
  Alt.natinf.n(#Alt.natinf.N(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #Alt.natinf.Inf() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Alt.natinf.Inf()) == ##Alt.natinf.Inf;
// Constructor $Is
axiom $Is(#Alt.natinf.Inf(), Tclass.Alt.natinf());
// Constructor literal
axiom #Alt.natinf.Inf() == Lit(#Alt.natinf.Inf());
}

const unique ##Alt.natinf.Inf: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Alt.natinf.Inf()) == ##Alt.natinf.Inf;
}

function Alt.natinf.Inf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Alt.natinf.Inf_q(d) } 
  Alt.natinf.Inf_q(d) <==> DatatypeCtorId(d) == ##Alt.natinf.Inf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Alt.natinf.Inf_q(d) } 
  Alt.natinf.Inf_q(d) ==> d == #Alt.natinf.Inf());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.Alt.natinf(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.Alt.natinf())
     ==> $IsAlloc(d, Tclass.Alt.natinf(), $h));

// Depth-one case-split function
function $IsA#Alt.natinf(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Alt.natinf(d) } 
  $IsA#Alt.natinf(d) ==> Alt.natinf.N_q(d) || Alt.natinf.Inf_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { Alt.natinf.Inf_q(d), $Is(d, Tclass.Alt.natinf()) } 
    { Alt.natinf.N_q(d), $Is(d, Tclass.Alt.natinf()) } 
  $Is(d, Tclass.Alt.natinf()) ==> Alt.natinf.N_q(d) || Alt.natinf.Inf_q(d));

// Datatype extensional equality declaration
function Alt.natinf#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Alt.natinf.N
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Alt.natinf#Equal(a, b), Alt.natinf.N_q(a) } 
    { Alt.natinf#Equal(a, b), Alt.natinf.N_q(b) } 
  Alt.natinf.N_q(a) && Alt.natinf.N_q(b)
     ==> (Alt.natinf#Equal(a, b) <==> Alt.natinf.n(a) == Alt.natinf.n(b)));

// Datatype extensional equality definition: #Alt.natinf.Inf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Alt.natinf#Equal(a, b), Alt.natinf.Inf_q(a) } 
    { Alt.natinf#Equal(a, b), Alt.natinf.Inf_q(b) } 
  Alt.natinf.Inf_q(a) && Alt.natinf.Inf_q(b) ==> Alt.natinf#Equal(a, b));

// Datatype extensionality axiom: Alt.natinf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Alt.natinf#Equal(a, b) } 
  Alt.natinf#Equal(a, b) <==> a == b);

const unique class.Alt.natinf: ClassName;

const unique class.TargetedMonotonicity.__default: ClassName;

// function declaration for TargetedMonotonicity._default.Next
function TargetedMonotonicity.__default.Next(x#0: int) : int;

function TargetedMonotonicity.__default.Next#canCall(x#0: int) : bool;

function TargetedMonotonicity.__default.Next#requires(int) : bool;

// #requires axiom for TargetedMonotonicity.__default.Next
axiom (forall x#0: int :: 
  { TargetedMonotonicity.__default.Next#requires(x#0) } 
  TargetedMonotonicity.__default.Next#requires(x#0) == true);

// function declaration for TargetedMonotonicity._default.P
function TargetedMonotonicity.__default.P($ly: LayerType, x#0: int, y#0: int, z#0: int) : bool;

function TargetedMonotonicity.__default.P#canCall(x#0: int, y#0: int, z#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0) } 
  TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0)
     == TargetedMonotonicity.__default.P($ly, x#0, y#0, z#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P(AsFuelBottom($ly), x#0, y#0, z#0) } 
  TargetedMonotonicity.__default.P($ly, x#0, y#0, z#0)
     == TargetedMonotonicity.__default.P($LZ, x#0, y#0, z#0));

function TargetedMonotonicity.__default.P#requires(LayerType, int, int, int) : bool;

// #requires axiom for TargetedMonotonicity.__default.P
axiom (forall $ly: LayerType, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P#requires($ly, x#0, y#0, z#0) } 
  TargetedMonotonicity.__default.P#requires($ly, x#0, y#0, z#0) == true);

// definition axiom for TargetedMonotonicity.__default.P (revealed)
axiom {:id "id382"} (forall $ly: LayerType, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0) } 
  (!(x#0 == LitInt(0) && y#0 == z#0)
       ==> 
      x#0 != 0
       ==> TargetedMonotonicity.__default.Next#canCall(x#0)
         && TargetedMonotonicity.__default.P#canCall(TargetedMonotonicity.__default.Next(x#0), y#0, z#0))
     && TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0)
       == ((x#0 == LitInt(0) && y#0 == z#0)
         || (x#0 != 0
           && TargetedMonotonicity.__default.P($ly, TargetedMonotonicity.__default.Next(x#0), y#0, z#0))));

// 1st prefix predicate axiom for TargetedMonotonicity.__default.P_h
axiom (forall $ly: LayerType, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0) } 
  TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0)
     ==> (exists _k#0: Box :: 
      { TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0) } 
      TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0)));

// 2nd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0) } 
  (exists _k#0: Box :: 
      { TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0) } 
      TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0))
     ==> TargetedMonotonicity.__default.P($LS($ly), x#0, y#0, z#0));

// 3rd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int, y#0: int, z#0: int, _k#0: Box :: 
  { TargetedMonotonicity.__default.P_h($ly, _k#0, x#0, y#0, z#0) } 
  _k#0 == ORD#FromNat(0)
     ==> !TargetedMonotonicity.__default.P_h($ly, _k#0, x#0, y#0, z#0));

// targeted prefix predicate monotonicity axiom
axiom (forall $ly: LayerType, x#0: int, y#0: int, z#0: int, _k#0: Box, _m: Box, _limit: Box :: 
  { TargetedMonotonicity.__default.P_h($ly, _k#0, x#0, y#0, z#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
  ORD#Less(_k#0, _m)
     ==> 
    TargetedMonotonicity.__default.P_h($ly, _k#0, x#0, y#0, z#0)
     ==> TargetedMonotonicity.__default.P_h($ly, _m, x#0, y#0, z#0));

// function declaration for TargetedMonotonicity._default.P#
function TargetedMonotonicity.__default.P_h($ly: LayerType, _k#0: Box, x#0: int, y#0: int, z#0: int) : bool;

function TargetedMonotonicity.__default.P_h#canCall(_k#0: Box, x#0: int, y#0: int, z#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0) } 
  TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0)
     == TargetedMonotonicity.__default.P_h($ly, _k#0, x#0, y#0, z#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P_h(AsFuelBottom($ly), _k#0, x#0, y#0, z#0) } 
  TargetedMonotonicity.__default.P_h($ly, _k#0, x#0, y#0, z#0)
     == TargetedMonotonicity.__default.P_h($LZ, _k#0, x#0, y#0, z#0));

function TargetedMonotonicity.__default.P_h#requires(LayerType, Box, int, int, int) : bool;

// #requires axiom for TargetedMonotonicity.__default.P_h
axiom (forall $ly: LayerType, _k#0: Box, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P_h#requires($ly, _k#0, x#0, y#0, z#0) } 
  TargetedMonotonicity.__default.P_h#requires($ly, _k#0, x#0, y#0, z#0) == true);

// definition axiom for TargetedMonotonicity.__default.P_h (revealed)
axiom {:id "id383"} (forall $ly: LayerType, _k#0: Box, x#0: int, y#0: int, z#0: int :: 
  { TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0) } 
  (0 < ORD#Offset(_k#0)
       ==> 
      !(x#0 == LitInt(0) && y#0 == z#0)
       ==> 
      x#0 != 0
       ==> TargetedMonotonicity.__default.Next#canCall(x#0)
         && TargetedMonotonicity.__default.P_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
          TargetedMonotonicity.__default.Next(x#0), 
          y#0, 
          z#0))
     && (
      (0 < ORD#Offset(_k#0)
       ==> (x#0 == LitInt(0) && y#0 == z#0)
         || (x#0 != 0
           && TargetedMonotonicity.__default.P_h($ly, 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            TargetedMonotonicity.__default.Next(x#0), 
            y#0, 
            z#0)))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#3: Box :: 
        { TargetedMonotonicity.__default.P_h($ly, _k'#3, x#0, y#0, z#0) } 
        ORD#LessThanLimit(_k'#3, _k#0)
           ==> TargetedMonotonicity.__default.P_h#canCall(_k'#3, x#0, y#0, z#0)))
     && TargetedMonotonicity.__default.P_h($LS($ly), _k#0, x#0, y#0, z#0)
       == ((0 < ORD#Offset(_k#0)
           ==> (x#0 == LitInt(0) && y#0 == z#0)
             || (x#0 != 0
               && TargetedMonotonicity.__default.P_h($ly, 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                TargetedMonotonicity.__default.Next(x#0), 
                y#0, 
                z#0)))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#3: Box :: 
            { TargetedMonotonicity.__default.P_h($ly, _k'#3, x#0, y#0, z#0) } 
            ORD#LessThanLimit(_k'#3, _k#0)
               && TargetedMonotonicity.__default.P_h($ly, _k'#3, x#0, y#0, z#0)))));

// definition axiom for TargetedMonotonicity.__default.P_h for decreasing-related literals (revealed)
axiom {:id "id384"} (forall $ly: LayerType, _k#0: Box, x#0: int, y#0: int, z#0: int :: 
  {:weight 3} { TargetedMonotonicity.__default.P_h($LS($ly), Lit(_k#0), x#0, y#0, z#0) } 
  (0 < ORD#Offset(_k#0)
       ==> 
      !(x#0 == LitInt(0) && y#0 == z#0)
       ==> 
      x#0 != 0
       ==> TargetedMonotonicity.__default.Next#canCall(x#0)
         && TargetedMonotonicity.__default.P_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
          TargetedMonotonicity.__default.Next(x#0), 
          y#0, 
          z#0))
     && (
      (0 < ORD#Offset(_k#0)
       ==> (x#0 == LitInt(0) && y#0 == z#0)
         || (x#0 != 0
           && TargetedMonotonicity.__default.P_h($LS($ly), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            TargetedMonotonicity.__default.Next(x#0), 
            y#0, 
            z#0)))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#4: Box :: 
        { TargetedMonotonicity.__default.P_h($LS($ly), _k'#4, x#0, y#0, z#0) } 
        ORD#LessThanLimit(_k'#4, _k#0)
           ==> TargetedMonotonicity.__default.P_h#canCall(_k'#4, x#0, y#0, z#0)))
     && TargetedMonotonicity.__default.P_h($LS($ly), Lit(_k#0), x#0, y#0, z#0)
       == ((0 < ORD#Offset(_k#0)
           ==> (x#0 == LitInt(0) && y#0 == z#0)
             || (x#0 != 0
               && TargetedMonotonicity.__default.P_h($LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                TargetedMonotonicity.__default.Next(x#0), 
                y#0, 
                z#0)))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#4: Box :: 
            { TargetedMonotonicity.__default.P_h($LS($ly), _k'#4, x#0, y#0, z#0) } 
            ORD#LessThanLimit(_k'#4, _k#0)
               && TargetedMonotonicity.__default.P_h($LS($ly), _k'#4, x#0, y#0, z#0)))));

// definition axiom for TargetedMonotonicity.__default.P_h for all literals (revealed)
axiom {:id "id385"} (forall $ly: LayerType, _k#0: Box, x#0: int, y#0: int, z#0: int :: 
  {:weight 3} { TargetedMonotonicity.__default.P_h($LS($ly), Lit(_k#0), LitInt(x#0), LitInt(y#0), LitInt(z#0)) } 
  (0 < ORD#Offset(_k#0)
       ==> 
      !(LitInt(x#0) == LitInt(0) && LitInt(y#0) == LitInt(z#0))
       ==> 
      Lit(x#0 != 0)
       ==> TargetedMonotonicity.__default.Next#canCall(LitInt(x#0))
         && TargetedMonotonicity.__default.P_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
          TargetedMonotonicity.__default.Next(LitInt(x#0)), 
          LitInt(y#0), 
          LitInt(z#0)))
     && (
      (0 < ORD#Offset(_k#0)
       ==> (LitInt(x#0) == LitInt(0) && LitInt(y#0) == LitInt(z#0))
         || (x#0 != 0
           && TargetedMonotonicity.__default.P_h($LS($ly), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            TargetedMonotonicity.__default.Next(LitInt(x#0)), 
            LitInt(y#0), 
            LitInt(z#0))))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#5: Box :: 
        { TargetedMonotonicity.__default.P_h($LS($ly), _k'#5, x#0, y#0, z#0) } 
        ORD#LessThanLimit(_k'#5, _k#0)
           ==> TargetedMonotonicity.__default.P_h#canCall(_k'#5, x#0, y#0, z#0)))
     && TargetedMonotonicity.__default.P_h($LS($ly), Lit(_k#0), LitInt(x#0), LitInt(y#0), LitInt(z#0))
       == ((0 < ORD#Offset(_k#0)
           ==> (LitInt(x#0) == LitInt(0) && LitInt(y#0) == LitInt(z#0))
             || (x#0 != 0
               && TargetedMonotonicity.__default.P_h($LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                TargetedMonotonicity.__default.Next(LitInt(x#0)), 
                LitInt(y#0), 
                LitInt(z#0))))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#5: Box :: 
            { TargetedMonotonicity.__default.P_h($LS($ly), _k'#5, x#0, y#0, z#0) } 
            ORD#LessThanLimit(_k'#5, _k#0)
               && TargetedMonotonicity.__default.P_h($LS($ly), _k'#5, x#0, y#0, z#0)))));

const unique class.SomeCoolDisjunctionTests.__default: ClassName;

// function declaration for SomeCoolDisjunctionTests._default.P
function SomeCoolDisjunctionTests.__default.P($ly: LayerType, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.P#canCall(x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.P($LS($ly), x#0)
     == SomeCoolDisjunctionTests.__default.P($ly, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P(AsFuelBottom($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.P($ly, x#0)
     == SomeCoolDisjunctionTests.__default.P($LZ, x#0));

function SomeCoolDisjunctionTests.__default.P#requires(LayerType, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.P
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P#requires($ly, x#0) } 
  SomeCoolDisjunctionTests.__default.P#requires($ly, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.P (revealed)
axiom {:id "id386"} (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Q#canCall(x#0)
     && SomeCoolDisjunctionTests.__default.P($LS($ly), x#0)
       == SomeCoolDisjunctionTests.__default.Q($ly, x#0));

// 1st prefix predicate axiom for SomeCoolDisjunctionTests.__default.P_h
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.P($LS($ly), x#0)
     ==> (exists _k#0: Box :: 
      { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0) } 
      SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0)));

// 2nd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P($LS($ly), x#0) } 
  (exists _k#0: Box :: 
      { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0) } 
      SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0))
     ==> SomeCoolDisjunctionTests.__default.P($LS($ly), x#0));

// 3rd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int, _k#0: Box :: 
  { SomeCoolDisjunctionTests.__default.P_h($ly, _k#0, x#0) } 
  _k#0 == ORD#FromNat(0)
     ==> !SomeCoolDisjunctionTests.__default.P_h($ly, _k#0, x#0));

// targeted prefix predicate monotonicity axiom
axiom (forall $ly: LayerType, x#0: int, _k#0: Box, _m: Box, _limit: Box :: 
  { SomeCoolDisjunctionTests.__default.P_h($ly, _k#0, x#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
  ORD#Less(_k#0, _m)
     ==> 
    SomeCoolDisjunctionTests.__default.P_h($ly, _k#0, x#0)
     ==> SomeCoolDisjunctionTests.__default.P_h($ly, _m, x#0));

// function declaration for SomeCoolDisjunctionTests._default.P#
function SomeCoolDisjunctionTests.__default.P_h($ly: LayerType, _k#0: Box, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.P_h#canCall(_k#0: Box, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.P_h($ly, _k#0, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P_h(AsFuelBottom($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.P_h($ly, _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.P_h($LZ, _k#0, x#0));

function SomeCoolDisjunctionTests.__default.P_h#requires(LayerType, Box, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.P_h
axiom (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P_h#requires($ly, _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.P_h#requires($ly, _k#0, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.P_h (revealed)
axiom {:id "id387"} (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0) } 
  (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.Q_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
     && (
      (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.Q_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#3: Box :: 
        { SomeCoolDisjunctionTests.__default.P_h($ly, _k'#3, x#0) } 
        ORD#LessThanLimit(_k'#3, _k#0)
           ==> SomeCoolDisjunctionTests.__default.P_h#canCall(_k'#3, x#0)))
     && SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k#0, x#0)
       == ((0 < ORD#Offset(_k#0)
           ==> SomeCoolDisjunctionTests.__default.Q_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#3: Box :: 
            { SomeCoolDisjunctionTests.__default.P_h($ly, _k'#3, x#0) } 
            ORD#LessThanLimit(_k'#3, _k#0)
               && SomeCoolDisjunctionTests.__default.P_h($ly, _k'#3, x#0)))));

// definition axiom for SomeCoolDisjunctionTests.__default.P_h for decreasing-related literals (revealed)
axiom {:id "id388"} (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.P_h($LS($ly), Lit(_k#0), x#0) } 
  (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.Q_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
     && (
      (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.Q_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#4: Box :: 
        { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k'#4, x#0) } 
        ORD#LessThanLimit(_k'#4, _k#0)
           ==> SomeCoolDisjunctionTests.__default.P_h#canCall(_k'#4, x#0)))
     && SomeCoolDisjunctionTests.__default.P_h($LS($ly), Lit(_k#0), x#0)
       == ((0 < ORD#Offset(_k#0)
           ==> SomeCoolDisjunctionTests.__default.Q_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#4: Box :: 
            { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k'#4, x#0) } 
            ORD#LessThanLimit(_k'#4, _k#0)
               && SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k'#4, x#0)))));

// definition axiom for SomeCoolDisjunctionTests.__default.P_h for all literals (revealed)
axiom {:id "id389"} (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.P_h($LS($ly), Lit(_k#0), LitInt(x#0)) } 
  (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.Q_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(x#0)))
     && (
      (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.Q_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(x#0)))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#5: Box :: 
        { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k'#5, x#0) } 
        ORD#LessThanLimit(_k'#5, _k#0)
           ==> SomeCoolDisjunctionTests.__default.P_h#canCall(_k'#5, x#0)))
     && SomeCoolDisjunctionTests.__default.P_h($LS($ly), Lit(_k#0), LitInt(x#0))
       == ((0 < ORD#Offset(_k#0)
           ==> SomeCoolDisjunctionTests.__default.Q_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(x#0)))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#5: Box :: 
            { SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k'#5, x#0) } 
            ORD#LessThanLimit(_k'#5, _k#0)
               && SomeCoolDisjunctionTests.__default.P_h($LS($ly), _k'#5, x#0)))));

// function declaration for SomeCoolDisjunctionTests._default.Q
function SomeCoolDisjunctionTests.__default.Q($ly: LayerType, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.Q#canCall(x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0)
     == SomeCoolDisjunctionTests.__default.Q($ly, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q(AsFuelBottom($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Q($ly, x#0)
     == SomeCoolDisjunctionTests.__default.Q($LZ, x#0));

function SomeCoolDisjunctionTests.__default.Q#requires(LayerType, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.Q
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q#requires($ly, x#0) } 
  SomeCoolDisjunctionTests.__default.Q#requires($ly, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.Q (revealed)
axiom {:id "id390"} (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.P#canCall(x#0)
     && SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0)
       == SomeCoolDisjunctionTests.__default.P($ly, x#0));

// 1st prefix predicate axiom for SomeCoolDisjunctionTests.__default.Q_h
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0)
     ==> (exists _k#0: Box :: 
      { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0) } 
      SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0)));

// 2nd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0) } 
  (exists _k#0: Box :: 
      { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0) } 
      SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0))
     ==> SomeCoolDisjunctionTests.__default.Q($LS($ly), x#0));

// 3rd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int, _k#0: Box :: 
  { SomeCoolDisjunctionTests.__default.Q_h($ly, _k#0, x#0) } 
  _k#0 == ORD#FromNat(0)
     ==> !SomeCoolDisjunctionTests.__default.Q_h($ly, _k#0, x#0));

// targeted prefix predicate monotonicity axiom
axiom (forall $ly: LayerType, x#0: int, _k#0: Box, _m: Box, _limit: Box :: 
  { SomeCoolDisjunctionTests.__default.Q_h($ly, _k#0, x#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
  ORD#Less(_k#0, _m)
     ==> 
    SomeCoolDisjunctionTests.__default.Q_h($ly, _k#0, x#0)
     ==> SomeCoolDisjunctionTests.__default.Q_h($ly, _m, x#0));

// function declaration for SomeCoolDisjunctionTests._default.Q#
function SomeCoolDisjunctionTests.__default.Q_h($ly: LayerType, _k#0: Box, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.Q_h#canCall(_k#0: Box, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.Q_h($ly, _k#0, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q_h(AsFuelBottom($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Q_h($ly, _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.Q_h($LZ, _k#0, x#0));

function SomeCoolDisjunctionTests.__default.Q_h#requires(LayerType, Box, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.Q_h
axiom (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q_h#requires($ly, _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Q_h#requires($ly, _k#0, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.Q_h (revealed)
axiom {:id "id391"} (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0) } 
  (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.P_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
     && (
      (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.P_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#3: Box :: 
        { SomeCoolDisjunctionTests.__default.Q_h($ly, _k'#3, x#0) } 
        ORD#LessThanLimit(_k'#3, _k#0)
           ==> SomeCoolDisjunctionTests.__default.Q_h#canCall(_k'#3, x#0)))
     && SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k#0, x#0)
       == ((0 < ORD#Offset(_k#0)
           ==> SomeCoolDisjunctionTests.__default.P_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#3: Box :: 
            { SomeCoolDisjunctionTests.__default.Q_h($ly, _k'#3, x#0) } 
            ORD#LessThanLimit(_k'#3, _k#0)
               && SomeCoolDisjunctionTests.__default.Q_h($ly, _k'#3, x#0)))));

// definition axiom for SomeCoolDisjunctionTests.__default.Q_h for decreasing-related literals (revealed)
axiom {:id "id392"} (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), Lit(_k#0), x#0) } 
  (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.P_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
     && (
      (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.P_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#4: Box :: 
        { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k'#4, x#0) } 
        ORD#LessThanLimit(_k'#4, _k#0)
           ==> SomeCoolDisjunctionTests.__default.Q_h#canCall(_k'#4, x#0)))
     && SomeCoolDisjunctionTests.__default.Q_h($LS($ly), Lit(_k#0), x#0)
       == ((0 < ORD#Offset(_k#0)
           ==> SomeCoolDisjunctionTests.__default.P_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), x#0))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#4: Box :: 
            { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k'#4, x#0) } 
            ORD#LessThanLimit(_k'#4, _k#0)
               && SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k'#4, x#0)))));

// definition axiom for SomeCoolDisjunctionTests.__default.Q_h for all literals (revealed)
axiom {:id "id393"} (forall $ly: LayerType, _k#0: Box, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), Lit(_k#0), LitInt(x#0)) } 
  (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.P_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(x#0)))
     && (
      (0 < ORD#Offset(_k#0)
       ==> SomeCoolDisjunctionTests.__default.P_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(x#0)))
       ==> 
      LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#5: Box :: 
        { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k'#5, x#0) } 
        ORD#LessThanLimit(_k'#5, _k#0)
           ==> SomeCoolDisjunctionTests.__default.Q_h#canCall(_k'#5, x#0)))
     && SomeCoolDisjunctionTests.__default.Q_h($LS($ly), Lit(_k#0), LitInt(x#0))
       == ((0 < ORD#Offset(_k#0)
           ==> SomeCoolDisjunctionTests.__default.P_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(x#0)))
         && (LitInt(0) == ORD#Offset(_k#0)
           ==> (exists _k'#5: Box :: 
            { SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k'#5, x#0) } 
            ORD#LessThanLimit(_k'#5, _k#0)
               && SomeCoolDisjunctionTests.__default.Q_h($LS($ly), _k'#5, x#0)))));

// function declaration for SomeCoolDisjunctionTests._default.Pn
function SomeCoolDisjunctionTests.__default.Pn($ly: LayerType, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.Pn#canCall(x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0)
     == SomeCoolDisjunctionTests.__default.Pn($ly, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn(AsFuelBottom($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Pn($ly, x#0)
     == SomeCoolDisjunctionTests.__default.Pn($LZ, x#0));

function SomeCoolDisjunctionTests.__default.Pn#requires(LayerType, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.Pn
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn#requires($ly, x#0) } 
  SomeCoolDisjunctionTests.__default.Pn#requires($ly, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.Pn (revealed)
axiom {:id "id394"} (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Qn#canCall(x#0)
     && SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0)
       == SomeCoolDisjunctionTests.__default.Qn($ly, x#0));

// 1st prefix predicate axiom for SomeCoolDisjunctionTests.__default.Pn_h
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0)
     ==> (exists _k#0: int :: 
      { SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0) } 
      LitInt(0) <= _k#0
         && SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0)));

// 2nd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0) } 
  (exists _k#0: int :: 
      { SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0) } 
      LitInt(0) <= _k#0
         && SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0))
     ==> SomeCoolDisjunctionTests.__default.Pn($LS($ly), x#0));

// 3rd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int, _k#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn_h($ly, _k#0, x#0) } 
  _k#0 == 0 ==> !SomeCoolDisjunctionTests.__default.Pn_h($ly, _k#0, x#0));

// function declaration for SomeCoolDisjunctionTests._default.Pn#
function SomeCoolDisjunctionTests.__default.Pn_h($ly: LayerType, _k#0: int, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.Pn_h#canCall(_k#0: int, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.Pn_h($ly, _k#0, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn_h(AsFuelBottom($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Pn_h($ly, _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.Pn_h($LZ, _k#0, x#0));

function SomeCoolDisjunctionTests.__default.Pn_h#requires(LayerType, int, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.Pn_h
axiom (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn_h#requires($ly, _k#0, x#0) } 
  LitInt(0) <= _k#0
     ==> SomeCoolDisjunctionTests.__default.Pn_h#requires($ly, _k#0, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.Pn_h (revealed)
axiom {:id "id395"} (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Pn_h#canCall(_k#0, x#0) || LitInt(0) <= _k#0
     ==> (0 < _k#0 ==> SomeCoolDisjunctionTests.__default.Qn_h#canCall(_k#0 - 1, x#0))
       && SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), _k#0, x#0)
         == (0 < _k#0 && SomeCoolDisjunctionTests.__default.Qn_h($LS($LZ), _k#0 - 1, x#0)));

// definition axiom for SomeCoolDisjunctionTests.__default.Pn_h for decreasing-related literals (revealed)
axiom {:id "id396"} (forall $ly: LayerType, _k#0: int, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), LitInt(_k#0), x#0) } 
  SomeCoolDisjunctionTests.__default.Pn_h#canCall(LitInt(_k#0), x#0)
       || LitInt(0) <= _k#0
     ==> (0 < _k#0 ==> SomeCoolDisjunctionTests.__default.Qn_h#canCall(_k#0 - 1, x#0))
       && SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), LitInt(_k#0), x#0)
         == (0 < _k#0 && SomeCoolDisjunctionTests.__default.Qn_h($LS($LZ), _k#0 - 1, x#0)));

// definition axiom for SomeCoolDisjunctionTests.__default.Pn_h for all literals (revealed)
axiom {:id "id397"} (forall $ly: LayerType, _k#0: int, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), LitInt(_k#0), LitInt(x#0)) } 
  SomeCoolDisjunctionTests.__default.Pn_h#canCall(LitInt(_k#0), LitInt(x#0))
       || LitInt(0) <= _k#0
     ==> (0 < _k#0
         ==> SomeCoolDisjunctionTests.__default.Qn_h#canCall(_k#0 - 1, LitInt(x#0)))
       && SomeCoolDisjunctionTests.__default.Pn_h($LS($ly), LitInt(_k#0), LitInt(x#0))
         == (0 < _k#0
           && SomeCoolDisjunctionTests.__default.Qn_h($LS($LZ), _k#0 - 1, LitInt(x#0))));

// function declaration for SomeCoolDisjunctionTests._default.Qn
function SomeCoolDisjunctionTests.__default.Qn($ly: LayerType, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.Qn#canCall(x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0)
     == SomeCoolDisjunctionTests.__default.Qn($ly, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn(AsFuelBottom($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Qn($ly, x#0)
     == SomeCoolDisjunctionTests.__default.Qn($LZ, x#0));

function SomeCoolDisjunctionTests.__default.Qn#requires(LayerType, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.Qn
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn#requires($ly, x#0) } 
  SomeCoolDisjunctionTests.__default.Qn#requires($ly, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.Qn (revealed)
axiom {:id "id398"} (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Pn#canCall(x#0)
     && SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0)
       == SomeCoolDisjunctionTests.__default.Pn($ly, x#0));

// 1st prefix predicate axiom for SomeCoolDisjunctionTests.__default.Qn_h
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0) } 
  SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0)
     ==> (exists _k#0: int :: 
      { SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0) } 
      LitInt(0) <= _k#0
         && SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0)));

// 2nd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0) } 
  (exists _k#0: int :: 
      { SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0) } 
      LitInt(0) <= _k#0
         && SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0))
     ==> SomeCoolDisjunctionTests.__default.Qn($LS($ly), x#0));

// 3rd prefix predicate axiom
axiom (forall $ly: LayerType, x#0: int, _k#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn_h($ly, _k#0, x#0) } 
  _k#0 == 0 ==> !SomeCoolDisjunctionTests.__default.Qn_h($ly, _k#0, x#0));

// function declaration for SomeCoolDisjunctionTests._default.Qn#
function SomeCoolDisjunctionTests.__default.Qn_h($ly: LayerType, _k#0: int, x#0: int) : bool;

function SomeCoolDisjunctionTests.__default.Qn_h#canCall(_k#0: int, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.Qn_h($ly, _k#0, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn_h(AsFuelBottom($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Qn_h($ly, _k#0, x#0)
     == SomeCoolDisjunctionTests.__default.Qn_h($LZ, _k#0, x#0));

function SomeCoolDisjunctionTests.__default.Qn_h#requires(LayerType, int, int) : bool;

// #requires axiom for SomeCoolDisjunctionTests.__default.Qn_h
axiom (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn_h#requires($ly, _k#0, x#0) } 
  LitInt(0) <= _k#0
     ==> SomeCoolDisjunctionTests.__default.Qn_h#requires($ly, _k#0, x#0) == true);

// definition axiom for SomeCoolDisjunctionTests.__default.Qn_h (revealed)
axiom {:id "id399"} (forall $ly: LayerType, _k#0: int, x#0: int :: 
  { SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0) } 
  SomeCoolDisjunctionTests.__default.Qn_h#canCall(_k#0, x#0) || LitInt(0) <= _k#0
     ==> (0 < _k#0 ==> SomeCoolDisjunctionTests.__default.Pn_h#canCall(_k#0 - 1, x#0))
       && SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), _k#0, x#0)
         == (0 < _k#0 && SomeCoolDisjunctionTests.__default.Pn_h($LS($LZ), _k#0 - 1, x#0)));

// definition axiom for SomeCoolDisjunctionTests.__default.Qn_h for decreasing-related literals (revealed)
axiom {:id "id400"} (forall $ly: LayerType, _k#0: int, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), LitInt(_k#0), x#0) } 
  SomeCoolDisjunctionTests.__default.Qn_h#canCall(LitInt(_k#0), x#0)
       || LitInt(0) <= _k#0
     ==> (0 < _k#0 ==> SomeCoolDisjunctionTests.__default.Pn_h#canCall(_k#0 - 1, x#0))
       && SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), LitInt(_k#0), x#0)
         == (0 < _k#0 && SomeCoolDisjunctionTests.__default.Pn_h($LS($LZ), _k#0 - 1, x#0)));

// definition axiom for SomeCoolDisjunctionTests.__default.Qn_h for all literals (revealed)
axiom {:id "id401"} (forall $ly: LayerType, _k#0: int, x#0: int :: 
  {:weight 3} { SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), LitInt(_k#0), LitInt(x#0)) } 
  SomeCoolDisjunctionTests.__default.Qn_h#canCall(LitInt(_k#0), LitInt(x#0))
       || LitInt(0) <= _k#0
     ==> (0 < _k#0
         ==> SomeCoolDisjunctionTests.__default.Pn_h#canCall(_k#0 - 1, LitInt(x#0)))
       && SomeCoolDisjunctionTests.__default.Qn_h($LS($ly), LitInt(_k#0), LitInt(x#0))
         == (0 < _k#0
           && SomeCoolDisjunctionTests.__default.Pn_h($LS($LZ), _k#0 - 1, LitInt(x#0))));

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

const unique tytagFamily$natinf: TyTagFamily;

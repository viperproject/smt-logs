// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy

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

// Constructor function declaration
function #_System._tuple#1G._#Make1(Box) : DatatypeType;

const unique ##_System._tuple#1G._#Make1: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box :: 
  { #_System._tuple#1G._#Make1(a#12#0#0) } 
  DatatypeCtorId(#_System._tuple#1G._#Make1(a#12#0#0))
     == ##_System._tuple#1G._#Make1);
}

function _System.Tuple1G.___hMake1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple1G.___hMake1_q(d) } 
  _System.Tuple1G.___hMake1_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#1G._#Make1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple1G.___hMake1_q(d) } 
  _System.Tuple1G.___hMake1_q(d)
     ==> (exists a#13#0#0: Box :: d == #_System._tuple#1G._#Make1(a#13#0#0)));

function Tclass._System.Tuple1G(Ty) : Ty;

const unique Tagclass._System.Tuple1G: TyTag;

// Tclass._System.Tuple1G Tag
axiom (forall _System._tuple#1G$T0: Ty :: 
  { Tclass._System.Tuple1G(_System._tuple#1G$T0) } 
  Tag(Tclass._System.Tuple1G(_System._tuple#1G$T0)) == Tagclass._System.Tuple1G
     && TagFamily(Tclass._System.Tuple1G(_System._tuple#1G$T0)) == tytagFamily$_tuple#1G);

function Tclass._System.Tuple1G_0(Ty) : Ty;

// Tclass._System.Tuple1G injectivity 0
axiom (forall _System._tuple#1G$T0: Ty :: 
  { Tclass._System.Tuple1G(_System._tuple#1G$T0) } 
  Tclass._System.Tuple1G_0(Tclass._System.Tuple1G(_System._tuple#1G$T0))
     == _System._tuple#1G$T0);

// Box/unbox axiom for Tclass._System.Tuple1G
axiom (forall _System._tuple#1G$T0: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple1G(_System._tuple#1G$T0)) } 
  $IsBox(bx, Tclass._System.Tuple1G(_System._tuple#1G$T0))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple1G(_System._tuple#1G$T0)));

// Constructor $Is
axiom (forall _System._tuple#1G$T0: Ty, a#14#0#0: Box :: 
  { $Is(#_System._tuple#1G._#Make1(a#14#0#0), 
      Tclass._System.Tuple1G(_System._tuple#1G$T0)) } 
  $Is(#_System._tuple#1G._#Make1(a#14#0#0), 
      Tclass._System.Tuple1G(_System._tuple#1G$T0))
     <==> $IsBox(a#14#0#0, _System._tuple#1G$T0));

// Constructor $IsAlloc
axiom (forall _System._tuple#1G$T0: Ty, a#14#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_System._tuple#1G._#Make1(a#14#0#0), 
      Tclass._System.Tuple1G(_System._tuple#1G$T0), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#1G._#Make1(a#14#0#0), 
        Tclass._System.Tuple1G(_System._tuple#1G$T0), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#1G$T0, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#1G$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple1G._0(d), _System._tuple#1G$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple1G.___hMake1_q(d)
       && $IsAlloc(d, Tclass._System.Tuple1G(_System._tuple#1G$T0), $h)
     ==> $IsAllocBox(_System.Tuple1G._0(d), _System._tuple#1G$T0, $h));

// Constructor literal
axiom (forall a#15#0#0: Box :: 
  { #_System._tuple#1G._#Make1(Lit(a#15#0#0)) } 
  #_System._tuple#1G._#Make1(Lit(a#15#0#0))
     == Lit(#_System._tuple#1G._#Make1(a#15#0#0)));

function _System.Tuple1G._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box :: 
  { #_System._tuple#1G._#Make1(a#16#0#0) } 
  _System.Tuple1G._0(#_System._tuple#1G._#Make1(a#16#0#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box :: 
  { #_System._tuple#1G._#Make1(a#17#0#0) } 
  BoxRank(a#17#0#0) < DtRank(#_System._tuple#1G._#Make1(a#17#0#0)));

// Depth-one case-split function
function $IsA#_System.Tuple1G(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple1G(d) } 
  $IsA#_System.Tuple1G(d) ==> _System.Tuple1G.___hMake1_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#1G$T0: Ty, d: DatatypeType :: 
  { _System.Tuple1G.___hMake1_q(d), $Is(d, Tclass._System.Tuple1G(_System._tuple#1G$T0)) } 
  $Is(d, Tclass._System.Tuple1G(_System._tuple#1G$T0))
     ==> _System.Tuple1G.___hMake1_q(d));

// Datatype extensional equality declaration
function _System.Tuple1G#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#1G._#Make1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple1G#Equal(a, b) } 
  _System.Tuple1G#Equal(a, b) <==> _System.Tuple1G._0(a) == _System.Tuple1G._0(b));

// Datatype extensionality axiom: _System._tuple#1G
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple1G#Equal(a, b) } 
  _System.Tuple1G#Equal(a, b) <==> a == b);

const unique class._System.Tuple1G: ClassName;

// Constructor function declaration
function #_System._tuple#2GO._#Make2(Box, Box) : DatatypeType;

const unique ##_System._tuple#2GO._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#18#0#0: Box, a#18#1#0: Box :: 
  { #_System._tuple#2GO._#Make2(a#18#0#0, a#18#1#0) } 
  DatatypeCtorId(#_System._tuple#2GO._#Make2(a#18#0#0, a#18#1#0))
     == ##_System._tuple#2GO._#Make2);
}

function _System.Tuple2GO.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2GO.___hMake2_q(d) } 
  _System.Tuple2GO.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2GO._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2GO.___hMake2_q(d) } 
  _System.Tuple2GO.___hMake2_q(d)
     ==> (exists a#19#0#0: Box, a#19#1#0: Box :: 
      d == #_System._tuple#2GO._#Make2(a#19#0#0, a#19#1#0)));

function Tclass._System.Tuple2GO(Ty, Ty) : Ty;

const unique Tagclass._System.Tuple2GO: TyTag;

// Tclass._System.Tuple2GO Tag
axiom (forall _System._tuple#2GO$T0: Ty, _System._tuple#2GO$T1: Ty :: 
  { Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1) } 
  Tag(Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1))
       == Tagclass._System.Tuple2GO
     && TagFamily(Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1))
       == tytagFamily$_tuple#2GO);

function Tclass._System.Tuple2GO_0(Ty) : Ty;

// Tclass._System.Tuple2GO injectivity 0
axiom (forall _System._tuple#2GO$T0: Ty, _System._tuple#2GO$T1: Ty :: 
  { Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1) } 
  Tclass._System.Tuple2GO_0(Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1))
     == _System._tuple#2GO$T0);

function Tclass._System.Tuple2GO_1(Ty) : Ty;

// Tclass._System.Tuple2GO injectivity 1
axiom (forall _System._tuple#2GO$T0: Ty, _System._tuple#2GO$T1: Ty :: 
  { Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1) } 
  Tclass._System.Tuple2GO_1(Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1))
     == _System._tuple#2GO$T1);

// Box/unbox axiom for Tclass._System.Tuple2GO
axiom (forall _System._tuple#2GO$T0: Ty, _System._tuple#2GO$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1)));

// Constructor $Is
axiom (forall _System._tuple#2GO$T0: Ty, 
    _System._tuple#2GO$T1: Ty, 
    a#20#0#0: Box, 
    a#20#1#0: Box :: 
  { $Is(#_System._tuple#2GO._#Make2(a#20#0#0, a#20#1#0), 
      Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1)) } 
  $Is(#_System._tuple#2GO._#Make2(a#20#0#0, a#20#1#0), 
      Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1))
     <==> $IsBox(a#20#0#0, _System._tuple#2GO$T0)
       && $IsBox(a#20#1#0, _System._tuple#2GO$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2GO$T0: Ty, 
    _System._tuple#2GO$T1: Ty, 
    a#20#0#0: Box, 
    a#20#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2GO._#Make2(a#20#0#0, a#20#1#0), 
      Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2GO._#Make2(a#20#0#0, a#20#1#0), 
        Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1), 
        $h)
       <==> $IsAllocBox(a#20#0#0, _System._tuple#2GO$T0, $h)
         && $IsAllocBox(a#20#1#0, _System._tuple#2GO$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2GO$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2GO._0(d), _System._tuple#2GO$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2GO.___hMake2_q(d)
       && (exists _System._tuple#2GO$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1), $h))
     ==> $IsAllocBox(_System.Tuple2GO._0(d), _System._tuple#2GO$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2GO$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2GO._1(d), _System._tuple#2GO$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2GO.___hMake2_q(d)
       && (exists _System._tuple#2GO$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1), $h))
     ==> $IsAllocBox(_System.Tuple2GO._1(d), _System._tuple#2GO$T1, $h));

// Constructor literal
axiom (forall a#21#0#0: Box, a#21#1#0: Box :: 
  { #_System._tuple#2GO._#Make2(Lit(a#21#0#0), Lit(a#21#1#0)) } 
  #_System._tuple#2GO._#Make2(Lit(a#21#0#0), Lit(a#21#1#0))
     == Lit(#_System._tuple#2GO._#Make2(a#21#0#0, a#21#1#0)));

function _System.Tuple2GO._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#22#0#0: Box, a#22#1#0: Box :: 
  { #_System._tuple#2GO._#Make2(a#22#0#0, a#22#1#0) } 
  _System.Tuple2GO._0(#_System._tuple#2GO._#Make2(a#22#0#0, a#22#1#0)) == a#22#0#0);

// Inductive rank
axiom (forall a#23#0#0: Box, a#23#1#0: Box :: 
  { #_System._tuple#2GO._#Make2(a#23#0#0, a#23#1#0) } 
  BoxRank(a#23#0#0) < DtRank(#_System._tuple#2GO._#Make2(a#23#0#0, a#23#1#0)));

function _System.Tuple2GO._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#24#0#0: Box, a#24#1#0: Box :: 
  { #_System._tuple#2GO._#Make2(a#24#0#0, a#24#1#0) } 
  _System.Tuple2GO._1(#_System._tuple#2GO._#Make2(a#24#0#0, a#24#1#0)) == a#24#1#0);

// Inductive rank
axiom (forall a#25#0#0: Box, a#25#1#0: Box :: 
  { #_System._tuple#2GO._#Make2(a#25#0#0, a#25#1#0) } 
  BoxRank(a#25#1#0) < DtRank(#_System._tuple#2GO._#Make2(a#25#0#0, a#25#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2GO(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2GO(d) } 
  $IsA#_System.Tuple2GO(d) ==> _System.Tuple2GO.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2GO$T0: Ty, _System._tuple#2GO$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2GO.___hMake2_q(d), $Is(d, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1)) } 
  $Is(d, Tclass._System.Tuple2GO(_System._tuple#2GO$T0, _System._tuple#2GO$T1))
     ==> _System.Tuple2GO.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2GO#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2GO._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2GO#Equal(a, b) } 
  _System.Tuple2GO#Equal(a, b)
     <==> _System.Tuple2GO._0(a) == _System.Tuple2GO._0(b)
       && _System.Tuple2GO._1(a) == _System.Tuple2GO._1(b));

// Datatype extensionality axiom: _System._tuple#2GO
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2GO#Equal(a, b) } 
  _System.Tuple2GO#Equal(a, b) <==> a == b);

const unique class._System.Tuple2GO: ClassName;

// Constructor function declaration
function #_System._tuple#3OGO._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3OGO._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#26#0#0: Box, a#26#1#0: Box, a#26#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(a#26#0#0, a#26#1#0, a#26#2#0) } 
  DatatypeCtorId(#_System._tuple#3OGO._#Make3(a#26#0#0, a#26#1#0, a#26#2#0))
     == ##_System._tuple#3OGO._#Make3);
}

function _System.Tuple3OGO.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3OGO.___hMake3_q(d) } 
  _System.Tuple3OGO.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3OGO._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3OGO.___hMake3_q(d) } 
  _System.Tuple3OGO.___hMake3_q(d)
     ==> (exists a#27#0#0: Box, a#27#1#0: Box, a#27#2#0: Box :: 
      d == #_System._tuple#3OGO._#Make3(a#27#0#0, a#27#1#0, a#27#2#0)));

function Tclass._System.Tuple3OGO(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3OGO: TyTag;

// Tclass._System.Tuple3OGO Tag
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty :: 
  { Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2) } 
  Tag(Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
       == Tagclass._System.Tuple3OGO
     && TagFamily(Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
       == tytagFamily$_tuple#3OGO);

function Tclass._System.Tuple3OGO_0(Ty) : Ty;

// Tclass._System.Tuple3OGO injectivity 0
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty :: 
  { Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2) } 
  Tclass._System.Tuple3OGO_0(Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
     == _System._tuple#3OGO$T0);

function Tclass._System.Tuple3OGO_1(Ty) : Ty;

// Tclass._System.Tuple3OGO injectivity 1
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty :: 
  { Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2) } 
  Tclass._System.Tuple3OGO_1(Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
     == _System._tuple#3OGO$T1);

function Tclass._System.Tuple3OGO_2(Ty) : Ty;

// Tclass._System.Tuple3OGO injectivity 2
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty :: 
  { Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2) } 
  Tclass._System.Tuple3OGO_2(Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
     == _System._tuple#3OGO$T2);

// Box/unbox axiom for Tclass._System.Tuple3OGO
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2)));

// Constructor $Is
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty, 
    a#28#0#0: Box, 
    a#28#1#0: Box, 
    a#28#2#0: Box :: 
  { $Is(#_System._tuple#3OGO._#Make3(a#28#0#0, a#28#1#0, a#28#2#0), 
      Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2)) } 
  $Is(#_System._tuple#3OGO._#Make3(a#28#0#0, a#28#1#0, a#28#2#0), 
      Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
     <==> $IsBox(a#28#0#0, _System._tuple#3OGO$T0)
       && $IsBox(a#28#1#0, _System._tuple#3OGO$T1)
       && $IsBox(a#28#2#0, _System._tuple#3OGO$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty, 
    a#28#0#0: Box, 
    a#28#1#0: Box, 
    a#28#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3OGO._#Make3(a#28#0#0, a#28#1#0, a#28#2#0), 
      Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3OGO._#Make3(a#28#0#0, a#28#1#0, a#28#2#0), 
        Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
        $h)
       <==> $IsAllocBox(a#28#0#0, _System._tuple#3OGO$T0, $h)
         && $IsAllocBox(a#28#1#0, _System._tuple#3OGO$T1, $h)
         && $IsAllocBox(a#28#2#0, _System._tuple#3OGO$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3OGO$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3OGO._0(d), _System._tuple#3OGO$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3OGO.___hMake3_q(d)
       && (exists _System._tuple#3OGO$T1: Ty, _System._tuple#3OGO$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3OGO._0(d), _System._tuple#3OGO$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3OGO$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3OGO._1(d), _System._tuple#3OGO$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3OGO.___hMake3_q(d)
       && (exists _System._tuple#3OGO$T0: Ty, _System._tuple#3OGO$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3OGO._1(d), _System._tuple#3OGO$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3OGO$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3OGO._2(d), _System._tuple#3OGO$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3OGO.___hMake3_q(d)
       && (exists _System._tuple#3OGO$T0: Ty, _System._tuple#3OGO$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3OGO._2(d), _System._tuple#3OGO$T2, $h));

// Constructor literal
axiom (forall a#29#0#0: Box, a#29#1#0: Box, a#29#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(Lit(a#29#0#0), Lit(a#29#1#0), Lit(a#29#2#0)) } 
  #_System._tuple#3OGO._#Make3(Lit(a#29#0#0), Lit(a#29#1#0), Lit(a#29#2#0))
     == Lit(#_System._tuple#3OGO._#Make3(a#29#0#0, a#29#1#0, a#29#2#0)));

function _System.Tuple3OGO._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#30#0#0: Box, a#30#1#0: Box, a#30#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(a#30#0#0, a#30#1#0, a#30#2#0) } 
  _System.Tuple3OGO._0(#_System._tuple#3OGO._#Make3(a#30#0#0, a#30#1#0, a#30#2#0))
     == a#30#0#0);

// Inductive rank
axiom (forall a#31#0#0: Box, a#31#1#0: Box, a#31#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(a#31#0#0, a#31#1#0, a#31#2#0) } 
  BoxRank(a#31#0#0)
     < DtRank(#_System._tuple#3OGO._#Make3(a#31#0#0, a#31#1#0, a#31#2#0)));

function _System.Tuple3OGO._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#32#0#0: Box, a#32#1#0: Box, a#32#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(a#32#0#0, a#32#1#0, a#32#2#0) } 
  _System.Tuple3OGO._1(#_System._tuple#3OGO._#Make3(a#32#0#0, a#32#1#0, a#32#2#0))
     == a#32#1#0);

// Inductive rank
axiom (forall a#33#0#0: Box, a#33#1#0: Box, a#33#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(a#33#0#0, a#33#1#0, a#33#2#0) } 
  BoxRank(a#33#1#0)
     < DtRank(#_System._tuple#3OGO._#Make3(a#33#0#0, a#33#1#0, a#33#2#0)));

function _System.Tuple3OGO._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#34#0#0: Box, a#34#1#0: Box, a#34#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(a#34#0#0, a#34#1#0, a#34#2#0) } 
  _System.Tuple3OGO._2(#_System._tuple#3OGO._#Make3(a#34#0#0, a#34#1#0, a#34#2#0))
     == a#34#2#0);

// Inductive rank
axiom (forall a#35#0#0: Box, a#35#1#0: Box, a#35#2#0: Box :: 
  { #_System._tuple#3OGO._#Make3(a#35#0#0, a#35#1#0, a#35#2#0) } 
  BoxRank(a#35#2#0)
     < DtRank(#_System._tuple#3OGO._#Make3(a#35#0#0, a#35#1#0, a#35#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3OGO(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3OGO(d) } 
  $IsA#_System.Tuple3OGO(d) ==> _System.Tuple3OGO.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3OGO$T0: Ty, 
    _System._tuple#3OGO$T1: Ty, 
    _System._tuple#3OGO$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3OGO.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3OGO(_System._tuple#3OGO$T0, _System._tuple#3OGO$T1, _System._tuple#3OGO$T2))
     ==> _System.Tuple3OGO.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3OGO#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3OGO._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3OGO#Equal(a, b) } 
  _System.Tuple3OGO#Equal(a, b)
     <==> _System.Tuple3OGO._0(a) == _System.Tuple3OGO._0(b)
       && _System.Tuple3OGO._1(a) == _System.Tuple3OGO._1(b)
       && _System.Tuple3OGO._2(a) == _System.Tuple3OGO._2(b));

// Datatype extensionality axiom: _System._tuple#3OGO
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3OGO#Equal(a, b) } 
  _System.Tuple3OGO#Equal(a, b) <==> a == b);

const unique class._System.Tuple3OGO: ClassName;

// Constructor function declaration
function #_System._tuple#3OOG._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3OOG._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#36#0#0: Box, a#36#1#0: Box, a#36#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(a#36#0#0, a#36#1#0, a#36#2#0) } 
  DatatypeCtorId(#_System._tuple#3OOG._#Make3(a#36#0#0, a#36#1#0, a#36#2#0))
     == ##_System._tuple#3OOG._#Make3);
}

function _System.Tuple3OOG.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3OOG.___hMake3_q(d) } 
  _System.Tuple3OOG.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3OOG._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3OOG.___hMake3_q(d) } 
  _System.Tuple3OOG.___hMake3_q(d)
     ==> (exists a#37#0#0: Box, a#37#1#0: Box, a#37#2#0: Box :: 
      d == #_System._tuple#3OOG._#Make3(a#37#0#0, a#37#1#0, a#37#2#0)));

function Tclass._System.Tuple3OOG(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3OOG: TyTag;

// Tclass._System.Tuple3OOG Tag
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty :: 
  { Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2) } 
  Tag(Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
       == Tagclass._System.Tuple3OOG
     && TagFamily(Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
       == tytagFamily$_tuple#3OOG);

function Tclass._System.Tuple3OOG_0(Ty) : Ty;

// Tclass._System.Tuple3OOG injectivity 0
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty :: 
  { Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2) } 
  Tclass._System.Tuple3OOG_0(Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
     == _System._tuple#3OOG$T0);

function Tclass._System.Tuple3OOG_1(Ty) : Ty;

// Tclass._System.Tuple3OOG injectivity 1
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty :: 
  { Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2) } 
  Tclass._System.Tuple3OOG_1(Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
     == _System._tuple#3OOG$T1);

function Tclass._System.Tuple3OOG_2(Ty) : Ty;

// Tclass._System.Tuple3OOG injectivity 2
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty :: 
  { Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2) } 
  Tclass._System.Tuple3OOG_2(Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
     == _System._tuple#3OOG$T2);

// Box/unbox axiom for Tclass._System.Tuple3OOG
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2)));

// Constructor $Is
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty, 
    a#38#0#0: Box, 
    a#38#1#0: Box, 
    a#38#2#0: Box :: 
  { $Is(#_System._tuple#3OOG._#Make3(a#38#0#0, a#38#1#0, a#38#2#0), 
      Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2)) } 
  $Is(#_System._tuple#3OOG._#Make3(a#38#0#0, a#38#1#0, a#38#2#0), 
      Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
     <==> $IsBox(a#38#0#0, _System._tuple#3OOG$T0)
       && $IsBox(a#38#1#0, _System._tuple#3OOG$T1)
       && $IsBox(a#38#2#0, _System._tuple#3OOG$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty, 
    a#38#0#0: Box, 
    a#38#1#0: Box, 
    a#38#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3OOG._#Make3(a#38#0#0, a#38#1#0, a#38#2#0), 
      Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3OOG._#Make3(a#38#0#0, a#38#1#0, a#38#2#0), 
        Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
        $h)
       <==> $IsAllocBox(a#38#0#0, _System._tuple#3OOG$T0, $h)
         && $IsAllocBox(a#38#1#0, _System._tuple#3OOG$T1, $h)
         && $IsAllocBox(a#38#2#0, _System._tuple#3OOG$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3OOG$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3OOG._0(d), _System._tuple#3OOG$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3OOG.___hMake3_q(d)
       && (exists _System._tuple#3OOG$T1: Ty, _System._tuple#3OOG$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3OOG._0(d), _System._tuple#3OOG$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3OOG$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3OOG._1(d), _System._tuple#3OOG$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3OOG.___hMake3_q(d)
       && (exists _System._tuple#3OOG$T0: Ty, _System._tuple#3OOG$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3OOG._1(d), _System._tuple#3OOG$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3OOG$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3OOG._2(d), _System._tuple#3OOG$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3OOG.___hMake3_q(d)
       && (exists _System._tuple#3OOG$T0: Ty, _System._tuple#3OOG$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3OOG._2(d), _System._tuple#3OOG$T2, $h));

// Constructor literal
axiom (forall a#39#0#0: Box, a#39#1#0: Box, a#39#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(Lit(a#39#0#0), Lit(a#39#1#0), Lit(a#39#2#0)) } 
  #_System._tuple#3OOG._#Make3(Lit(a#39#0#0), Lit(a#39#1#0), Lit(a#39#2#0))
     == Lit(#_System._tuple#3OOG._#Make3(a#39#0#0, a#39#1#0, a#39#2#0)));

function _System.Tuple3OOG._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#40#0#0: Box, a#40#1#0: Box, a#40#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(a#40#0#0, a#40#1#0, a#40#2#0) } 
  _System.Tuple3OOG._0(#_System._tuple#3OOG._#Make3(a#40#0#0, a#40#1#0, a#40#2#0))
     == a#40#0#0);

// Inductive rank
axiom (forall a#41#0#0: Box, a#41#1#0: Box, a#41#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(a#41#0#0, a#41#1#0, a#41#2#0) } 
  BoxRank(a#41#0#0)
     < DtRank(#_System._tuple#3OOG._#Make3(a#41#0#0, a#41#1#0, a#41#2#0)));

function _System.Tuple3OOG._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#42#0#0: Box, a#42#1#0: Box, a#42#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(a#42#0#0, a#42#1#0, a#42#2#0) } 
  _System.Tuple3OOG._1(#_System._tuple#3OOG._#Make3(a#42#0#0, a#42#1#0, a#42#2#0))
     == a#42#1#0);

// Inductive rank
axiom (forall a#43#0#0: Box, a#43#1#0: Box, a#43#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(a#43#0#0, a#43#1#0, a#43#2#0) } 
  BoxRank(a#43#1#0)
     < DtRank(#_System._tuple#3OOG._#Make3(a#43#0#0, a#43#1#0, a#43#2#0)));

function _System.Tuple3OOG._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#44#0#0: Box, a#44#1#0: Box, a#44#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(a#44#0#0, a#44#1#0, a#44#2#0) } 
  _System.Tuple3OOG._2(#_System._tuple#3OOG._#Make3(a#44#0#0, a#44#1#0, a#44#2#0))
     == a#44#2#0);

// Inductive rank
axiom (forall a#45#0#0: Box, a#45#1#0: Box, a#45#2#0: Box :: 
  { #_System._tuple#3OOG._#Make3(a#45#0#0, a#45#1#0, a#45#2#0) } 
  BoxRank(a#45#2#0)
     < DtRank(#_System._tuple#3OOG._#Make3(a#45#0#0, a#45#1#0, a#45#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3OOG(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3OOG(d) } 
  $IsA#_System.Tuple3OOG(d) ==> _System.Tuple3OOG.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3OOG$T0: Ty, 
    _System._tuple#3OOG$T1: Ty, 
    _System._tuple#3OOG$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3OOG.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3OOG(_System._tuple#3OOG$T0, _System._tuple#3OOG$T1, _System._tuple#3OOG$T2))
     ==> _System.Tuple3OOG.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3OOG#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3OOG._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3OOG#Equal(a, b) } 
  _System.Tuple3OOG#Equal(a, b)
     <==> _System.Tuple3OOG._0(a) == _System.Tuple3OOG._0(b)
       && _System.Tuple3OOG._1(a) == _System.Tuple3OOG._1(b)
       && _System.Tuple3OOG._2(a) == _System.Tuple3OOG._2(b));

// Datatype extensionality axiom: _System._tuple#3OOG
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3OOG#Equal(a, b) } 
  _System.Tuple3OOG#Equal(a, b) <==> a == b);

const unique class._System.Tuple3OOG: ClassName;

// Constructor function declaration
function #_System._tuple#4GGOO._#Make4(Box, Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#4GGOO._#Make4: DtCtorId
uses {
// Constructor identifier
axiom (forall a#46#0#0: Box, a#46#1#0: Box, a#46#2#0: Box, a#46#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#46#0#0, a#46#1#0, a#46#2#0, a#46#3#0) } 
  DatatypeCtorId(#_System._tuple#4GGOO._#Make4(a#46#0#0, a#46#1#0, a#46#2#0, a#46#3#0))
     == ##_System._tuple#4GGOO._#Make4);
}

function _System.Tuple4GGOO.___hMake4_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple4GGOO.___hMake4_q(d) } 
  _System.Tuple4GGOO.___hMake4_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#4GGOO._#Make4);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple4GGOO.___hMake4_q(d) } 
  _System.Tuple4GGOO.___hMake4_q(d)
     ==> (exists a#47#0#0: Box, a#47#1#0: Box, a#47#2#0: Box, a#47#3#0: Box :: 
      d == #_System._tuple#4GGOO._#Make4(a#47#0#0, a#47#1#0, a#47#2#0, a#47#3#0)));

function Tclass._System.Tuple4GGOO(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple4GGOO: TyTag;

// Tclass._System.Tuple4GGOO Tag
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty :: 
  { Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
      _System._tuple#4GGOO$T1, 
      _System._tuple#4GGOO$T2, 
      _System._tuple#4GGOO$T3) } 
  Tag(Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
          _System._tuple#4GGOO$T1, 
          _System._tuple#4GGOO$T2, 
          _System._tuple#4GGOO$T3))
       == Tagclass._System.Tuple4GGOO
     && TagFamily(Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
          _System._tuple#4GGOO$T1, 
          _System._tuple#4GGOO$T2, 
          _System._tuple#4GGOO$T3))
       == tytagFamily$_tuple#4GGOO);

function Tclass._System.Tuple4GGOO_0(Ty) : Ty;

// Tclass._System.Tuple4GGOO injectivity 0
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty :: 
  { Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
      _System._tuple#4GGOO$T1, 
      _System._tuple#4GGOO$T2, 
      _System._tuple#4GGOO$T3) } 
  Tclass._System.Tuple4GGOO_0(Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3))
     == _System._tuple#4GGOO$T0);

function Tclass._System.Tuple4GGOO_1(Ty) : Ty;

// Tclass._System.Tuple4GGOO injectivity 1
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty :: 
  { Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
      _System._tuple#4GGOO$T1, 
      _System._tuple#4GGOO$T2, 
      _System._tuple#4GGOO$T3) } 
  Tclass._System.Tuple4GGOO_1(Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3))
     == _System._tuple#4GGOO$T1);

function Tclass._System.Tuple4GGOO_2(Ty) : Ty;

// Tclass._System.Tuple4GGOO injectivity 2
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty :: 
  { Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
      _System._tuple#4GGOO$T1, 
      _System._tuple#4GGOO$T2, 
      _System._tuple#4GGOO$T3) } 
  Tclass._System.Tuple4GGOO_2(Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3))
     == _System._tuple#4GGOO$T2);

function Tclass._System.Tuple4GGOO_3(Ty) : Ty;

// Tclass._System.Tuple4GGOO injectivity 3
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty :: 
  { Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
      _System._tuple#4GGOO$T1, 
      _System._tuple#4GGOO$T2, 
      _System._tuple#4GGOO$T3) } 
  Tclass._System.Tuple4GGOO_3(Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3))
     == _System._tuple#4GGOO$T3);

// Box/unbox axiom for Tclass._System.Tuple4GGOO
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3)) } 
  $IsBox(bx, 
      Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
          _System._tuple#4GGOO$T1, 
          _System._tuple#4GGOO$T2, 
          _System._tuple#4GGOO$T3)));

// Constructor $Is
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty, 
    a#48#0#0: Box, 
    a#48#1#0: Box, 
    a#48#2#0: Box, 
    a#48#3#0: Box :: 
  { $Is(#_System._tuple#4GGOO._#Make4(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
      Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3)) } 
  $Is(#_System._tuple#4GGOO._#Make4(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
      Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3))
     <==> $IsBox(a#48#0#0, _System._tuple#4GGOO$T0)
       && $IsBox(a#48#1#0, _System._tuple#4GGOO$T1)
       && $IsBox(a#48#2#0, _System._tuple#4GGOO$T2)
       && $IsBox(a#48#3#0, _System._tuple#4GGOO$T3));

// Constructor $IsAlloc
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty, 
    a#48#0#0: Box, 
    a#48#1#0: Box, 
    a#48#2#0: Box, 
    a#48#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#4GGOO._#Make4(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
      Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#4GGOO._#Make4(a#48#0#0, a#48#1#0, a#48#2#0, a#48#3#0), 
        Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
          _System._tuple#4GGOO$T1, 
          _System._tuple#4GGOO$T2, 
          _System._tuple#4GGOO$T3), 
        $h)
       <==> $IsAllocBox(a#48#0#0, _System._tuple#4GGOO$T0, $h)
         && $IsAllocBox(a#48#1#0, _System._tuple#4GGOO$T1, $h)
         && $IsAllocBox(a#48#2#0, _System._tuple#4GGOO$T2, $h)
         && $IsAllocBox(a#48#3#0, _System._tuple#4GGOO$T3, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOO$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOO._0(d), _System._tuple#4GGOO$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOO.___hMake4_q(d)
       && (exists _System._tuple#4GGOO$T1: Ty, 
          _System._tuple#4GGOO$T2: Ty, 
          _System._tuple#4GGOO$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
              _System._tuple#4GGOO$T1, 
              _System._tuple#4GGOO$T2, 
              _System._tuple#4GGOO$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
            _System._tuple#4GGOO$T1, 
            _System._tuple#4GGOO$T2, 
            _System._tuple#4GGOO$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOO._0(d), _System._tuple#4GGOO$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOO$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOO._1(d), _System._tuple#4GGOO$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOO.___hMake4_q(d)
       && (exists _System._tuple#4GGOO$T0: Ty, 
          _System._tuple#4GGOO$T2: Ty, 
          _System._tuple#4GGOO$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
              _System._tuple#4GGOO$T1, 
              _System._tuple#4GGOO$T2, 
              _System._tuple#4GGOO$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
            _System._tuple#4GGOO$T1, 
            _System._tuple#4GGOO$T2, 
            _System._tuple#4GGOO$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOO._1(d), _System._tuple#4GGOO$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOO$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOO._2(d), _System._tuple#4GGOO$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOO.___hMake4_q(d)
       && (exists _System._tuple#4GGOO$T0: Ty, 
          _System._tuple#4GGOO$T1: Ty, 
          _System._tuple#4GGOO$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
              _System._tuple#4GGOO$T1, 
              _System._tuple#4GGOO$T2, 
              _System._tuple#4GGOO$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
            _System._tuple#4GGOO$T1, 
            _System._tuple#4GGOO$T2, 
            _System._tuple#4GGOO$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOO._2(d), _System._tuple#4GGOO$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOO$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOO._3(d), _System._tuple#4GGOO$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOO.___hMake4_q(d)
       && (exists _System._tuple#4GGOO$T0: Ty, 
          _System._tuple#4GGOO$T1: Ty, 
          _System._tuple#4GGOO$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
              _System._tuple#4GGOO$T1, 
              _System._tuple#4GGOO$T2, 
              _System._tuple#4GGOO$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
            _System._tuple#4GGOO$T1, 
            _System._tuple#4GGOO$T2, 
            _System._tuple#4GGOO$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOO._3(d), _System._tuple#4GGOO$T3, $h));

// Constructor literal
axiom (forall a#49#0#0: Box, a#49#1#0: Box, a#49#2#0: Box, a#49#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(Lit(a#49#0#0), Lit(a#49#1#0), Lit(a#49#2#0), Lit(a#49#3#0)) } 
  #_System._tuple#4GGOO._#Make4(Lit(a#49#0#0), Lit(a#49#1#0), Lit(a#49#2#0), Lit(a#49#3#0))
     == Lit(#_System._tuple#4GGOO._#Make4(a#49#0#0, a#49#1#0, a#49#2#0, a#49#3#0)));

function _System.Tuple4GGOO._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#50#0#0: Box, a#50#1#0: Box, a#50#2#0: Box, a#50#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#50#0#0, a#50#1#0, a#50#2#0, a#50#3#0) } 
  _System.Tuple4GGOO._0(#_System._tuple#4GGOO._#Make4(a#50#0#0, a#50#1#0, a#50#2#0, a#50#3#0))
     == a#50#0#0);

// Inductive rank
axiom (forall a#51#0#0: Box, a#51#1#0: Box, a#51#2#0: Box, a#51#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#51#0#0, a#51#1#0, a#51#2#0, a#51#3#0) } 
  BoxRank(a#51#0#0)
     < DtRank(#_System._tuple#4GGOO._#Make4(a#51#0#0, a#51#1#0, a#51#2#0, a#51#3#0)));

function _System.Tuple4GGOO._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#52#0#0: Box, a#52#1#0: Box, a#52#2#0: Box, a#52#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#52#0#0, a#52#1#0, a#52#2#0, a#52#3#0) } 
  _System.Tuple4GGOO._1(#_System._tuple#4GGOO._#Make4(a#52#0#0, a#52#1#0, a#52#2#0, a#52#3#0))
     == a#52#1#0);

// Inductive rank
axiom (forall a#53#0#0: Box, a#53#1#0: Box, a#53#2#0: Box, a#53#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#53#0#0, a#53#1#0, a#53#2#0, a#53#3#0) } 
  BoxRank(a#53#1#0)
     < DtRank(#_System._tuple#4GGOO._#Make4(a#53#0#0, a#53#1#0, a#53#2#0, a#53#3#0)));

function _System.Tuple4GGOO._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#54#0#0: Box, a#54#1#0: Box, a#54#2#0: Box, a#54#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#54#0#0, a#54#1#0, a#54#2#0, a#54#3#0) } 
  _System.Tuple4GGOO._2(#_System._tuple#4GGOO._#Make4(a#54#0#0, a#54#1#0, a#54#2#0, a#54#3#0))
     == a#54#2#0);

// Inductive rank
axiom (forall a#55#0#0: Box, a#55#1#0: Box, a#55#2#0: Box, a#55#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#55#0#0, a#55#1#0, a#55#2#0, a#55#3#0) } 
  BoxRank(a#55#2#0)
     < DtRank(#_System._tuple#4GGOO._#Make4(a#55#0#0, a#55#1#0, a#55#2#0, a#55#3#0)));

function _System.Tuple4GGOO._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#56#0#0: Box, a#56#1#0: Box, a#56#2#0: Box, a#56#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#56#0#0, a#56#1#0, a#56#2#0, a#56#3#0) } 
  _System.Tuple4GGOO._3(#_System._tuple#4GGOO._#Make4(a#56#0#0, a#56#1#0, a#56#2#0, a#56#3#0))
     == a#56#3#0);

// Inductive rank
axiom (forall a#57#0#0: Box, a#57#1#0: Box, a#57#2#0: Box, a#57#3#0: Box :: 
  { #_System._tuple#4GGOO._#Make4(a#57#0#0, a#57#1#0, a#57#2#0, a#57#3#0) } 
  BoxRank(a#57#3#0)
     < DtRank(#_System._tuple#4GGOO._#Make4(a#57#0#0, a#57#1#0, a#57#2#0, a#57#3#0)));

// Depth-one case-split function
function $IsA#_System.Tuple4GGOO(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple4GGOO(d) } 
  $IsA#_System.Tuple4GGOO(d) ==> _System.Tuple4GGOO.___hMake4_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#4GGOO$T0: Ty, 
    _System._tuple#4GGOO$T1: Ty, 
    _System._tuple#4GGOO$T2: Ty, 
    _System._tuple#4GGOO$T3: Ty, 
    d: DatatypeType :: 
  { _System.Tuple4GGOO.___hMake4_q(d), $Is(d, 
      Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3)) } 
  $Is(d, 
      Tclass._System.Tuple4GGOO(_System._tuple#4GGOO$T0, 
        _System._tuple#4GGOO$T1, 
        _System._tuple#4GGOO$T2, 
        _System._tuple#4GGOO$T3))
     ==> _System.Tuple4GGOO.___hMake4_q(d));

// Datatype extensional equality declaration
function _System.Tuple4GGOO#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#4GGOO._#Make4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4GGOO#Equal(a, b) } 
  _System.Tuple4GGOO#Equal(a, b)
     <==> _System.Tuple4GGOO._0(a) == _System.Tuple4GGOO._0(b)
       && _System.Tuple4GGOO._1(a) == _System.Tuple4GGOO._1(b)
       && _System.Tuple4GGOO._2(a) == _System.Tuple4GGOO._2(b)
       && _System.Tuple4GGOO._3(a) == _System.Tuple4GGOO._3(b));

// Datatype extensionality axiom: _System._tuple#4GGOO
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4GGOO#Equal(a, b) } 
  _System.Tuple4GGOO#Equal(a, b) <==> a == b);

const unique class._System.Tuple4GGOO: ClassName;

// Constructor function declaration
function #_System._tuple#3GGO._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3GGO._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#58#0#0: Box, a#58#1#0: Box, a#58#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(a#58#0#0, a#58#1#0, a#58#2#0) } 
  DatatypeCtorId(#_System._tuple#3GGO._#Make3(a#58#0#0, a#58#1#0, a#58#2#0))
     == ##_System._tuple#3GGO._#Make3);
}

function _System.Tuple3GGO.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3GGO.___hMake3_q(d) } 
  _System.Tuple3GGO.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3GGO._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3GGO.___hMake3_q(d) } 
  _System.Tuple3GGO.___hMake3_q(d)
     ==> (exists a#59#0#0: Box, a#59#1#0: Box, a#59#2#0: Box :: 
      d == #_System._tuple#3GGO._#Make3(a#59#0#0, a#59#1#0, a#59#2#0)));

function Tclass._System.Tuple3GGO(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3GGO: TyTag;

// Tclass._System.Tuple3GGO Tag
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty :: 
  { Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2) } 
  Tag(Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
       == Tagclass._System.Tuple3GGO
     && TagFamily(Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
       == tytagFamily$_tuple#3GGO);

function Tclass._System.Tuple3GGO_0(Ty) : Ty;

// Tclass._System.Tuple3GGO injectivity 0
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty :: 
  { Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2) } 
  Tclass._System.Tuple3GGO_0(Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
     == _System._tuple#3GGO$T0);

function Tclass._System.Tuple3GGO_1(Ty) : Ty;

// Tclass._System.Tuple3GGO injectivity 1
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty :: 
  { Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2) } 
  Tclass._System.Tuple3GGO_1(Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
     == _System._tuple#3GGO$T1);

function Tclass._System.Tuple3GGO_2(Ty) : Ty;

// Tclass._System.Tuple3GGO injectivity 2
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty :: 
  { Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2) } 
  Tclass._System.Tuple3GGO_2(Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
     == _System._tuple#3GGO$T2);

// Box/unbox axiom for Tclass._System.Tuple3GGO
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2)));

// Constructor $Is
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty, 
    a#60#0#0: Box, 
    a#60#1#0: Box, 
    a#60#2#0: Box :: 
  { $Is(#_System._tuple#3GGO._#Make3(a#60#0#0, a#60#1#0, a#60#2#0), 
      Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2)) } 
  $Is(#_System._tuple#3GGO._#Make3(a#60#0#0, a#60#1#0, a#60#2#0), 
      Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
     <==> $IsBox(a#60#0#0, _System._tuple#3GGO$T0)
       && $IsBox(a#60#1#0, _System._tuple#3GGO$T1)
       && $IsBox(a#60#2#0, _System._tuple#3GGO$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty, 
    a#60#0#0: Box, 
    a#60#1#0: Box, 
    a#60#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3GGO._#Make3(a#60#0#0, a#60#1#0, a#60#2#0), 
      Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3GGO._#Make3(a#60#0#0, a#60#1#0, a#60#2#0), 
        Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
        $h)
       <==> $IsAllocBox(a#60#0#0, _System._tuple#3GGO$T0, $h)
         && $IsAllocBox(a#60#1#0, _System._tuple#3GGO$T1, $h)
         && $IsAllocBox(a#60#2#0, _System._tuple#3GGO$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3GGO$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3GGO._0(d), _System._tuple#3GGO$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3GGO.___hMake3_q(d)
       && (exists _System._tuple#3GGO$T1: Ty, _System._tuple#3GGO$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3GGO._0(d), _System._tuple#3GGO$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3GGO$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3GGO._1(d), _System._tuple#3GGO$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3GGO.___hMake3_q(d)
       && (exists _System._tuple#3GGO$T0: Ty, _System._tuple#3GGO$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3GGO._1(d), _System._tuple#3GGO$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3GGO$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3GGO._2(d), _System._tuple#3GGO$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3GGO.___hMake3_q(d)
       && (exists _System._tuple#3GGO$T0: Ty, _System._tuple#3GGO$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3GGO._2(d), _System._tuple#3GGO$T2, $h));

// Constructor literal
axiom (forall a#61#0#0: Box, a#61#1#0: Box, a#61#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(Lit(a#61#0#0), Lit(a#61#1#0), Lit(a#61#2#0)) } 
  #_System._tuple#3GGO._#Make3(Lit(a#61#0#0), Lit(a#61#1#0), Lit(a#61#2#0))
     == Lit(#_System._tuple#3GGO._#Make3(a#61#0#0, a#61#1#0, a#61#2#0)));

function _System.Tuple3GGO._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#62#0#0: Box, a#62#1#0: Box, a#62#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(a#62#0#0, a#62#1#0, a#62#2#0) } 
  _System.Tuple3GGO._0(#_System._tuple#3GGO._#Make3(a#62#0#0, a#62#1#0, a#62#2#0))
     == a#62#0#0);

// Inductive rank
axiom (forall a#63#0#0: Box, a#63#1#0: Box, a#63#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(a#63#0#0, a#63#1#0, a#63#2#0) } 
  BoxRank(a#63#0#0)
     < DtRank(#_System._tuple#3GGO._#Make3(a#63#0#0, a#63#1#0, a#63#2#0)));

function _System.Tuple3GGO._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#64#0#0: Box, a#64#1#0: Box, a#64#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(a#64#0#0, a#64#1#0, a#64#2#0) } 
  _System.Tuple3GGO._1(#_System._tuple#3GGO._#Make3(a#64#0#0, a#64#1#0, a#64#2#0))
     == a#64#1#0);

// Inductive rank
axiom (forall a#65#0#0: Box, a#65#1#0: Box, a#65#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(a#65#0#0, a#65#1#0, a#65#2#0) } 
  BoxRank(a#65#1#0)
     < DtRank(#_System._tuple#3GGO._#Make3(a#65#0#0, a#65#1#0, a#65#2#0)));

function _System.Tuple3GGO._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#66#0#0: Box, a#66#1#0: Box, a#66#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(a#66#0#0, a#66#1#0, a#66#2#0) } 
  _System.Tuple3GGO._2(#_System._tuple#3GGO._#Make3(a#66#0#0, a#66#1#0, a#66#2#0))
     == a#66#2#0);

// Inductive rank
axiom (forall a#67#0#0: Box, a#67#1#0: Box, a#67#2#0: Box :: 
  { #_System._tuple#3GGO._#Make3(a#67#0#0, a#67#1#0, a#67#2#0) } 
  BoxRank(a#67#2#0)
     < DtRank(#_System._tuple#3GGO._#Make3(a#67#0#0, a#67#1#0, a#67#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3GGO(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3GGO(d) } 
  $IsA#_System.Tuple3GGO(d) ==> _System.Tuple3GGO.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3GGO$T0: Ty, 
    _System._tuple#3GGO$T1: Ty, 
    _System._tuple#3GGO$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3GGO.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3GGO(_System._tuple#3GGO$T0, _System._tuple#3GGO$T1, _System._tuple#3GGO$T2))
     ==> _System.Tuple3GGO.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3GGO#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3GGO._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3GGO#Equal(a, b) } 
  _System.Tuple3GGO#Equal(a, b)
     <==> _System.Tuple3GGO._0(a) == _System.Tuple3GGO._0(b)
       && _System.Tuple3GGO._1(a) == _System.Tuple3GGO._1(b)
       && _System.Tuple3GGO._2(a) == _System.Tuple3GGO._2(b));

// Datatype extensionality axiom: _System._tuple#3GGO
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3GGO#Equal(a, b) } 
  _System.Tuple3GGO#Equal(a, b) <==> a == b);

const unique class._System.Tuple3GGO: ClassName;

// Constructor function declaration
function #_System._tuple#1._#Make1(Box) : DatatypeType;

const unique ##_System._tuple#1._#Make1: DtCtorId
uses {
// Constructor identifier
axiom (forall a#68#0#0: Box :: 
  { #_System._tuple#1._#Make1(a#68#0#0) } 
  DatatypeCtorId(#_System._tuple#1._#Make1(a#68#0#0))
     == ##_System._tuple#1._#Make1);
}

function _System.Tuple1.___hMake1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple1.___hMake1_q(d) } 
  _System.Tuple1.___hMake1_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#1._#Make1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple1.___hMake1_q(d) } 
  _System.Tuple1.___hMake1_q(d)
     ==> (exists a#69#0#0: Box :: d == #_System._tuple#1._#Make1(a#69#0#0)));

function Tclass._System.Tuple1(Ty) : Ty;

const unique Tagclass._System.Tuple1: TyTag;

// Tclass._System.Tuple1 Tag
axiom (forall _System._tuple#1$T0: Ty :: 
  { Tclass._System.Tuple1(_System._tuple#1$T0) } 
  Tag(Tclass._System.Tuple1(_System._tuple#1$T0)) == Tagclass._System.Tuple1
     && TagFamily(Tclass._System.Tuple1(_System._tuple#1$T0)) == tytagFamily$_tuple#1);

function Tclass._System.Tuple1_0(Ty) : Ty;

// Tclass._System.Tuple1 injectivity 0
axiom (forall _System._tuple#1$T0: Ty :: 
  { Tclass._System.Tuple1(_System._tuple#1$T0) } 
  Tclass._System.Tuple1_0(Tclass._System.Tuple1(_System._tuple#1$T0))
     == _System._tuple#1$T0);

// Box/unbox axiom for Tclass._System.Tuple1
axiom (forall _System._tuple#1$T0: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple1(_System._tuple#1$T0)) } 
  $IsBox(bx, Tclass._System.Tuple1(_System._tuple#1$T0))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple1(_System._tuple#1$T0)));

// Constructor $Is
axiom (forall _System._tuple#1$T0: Ty, a#70#0#0: Box :: 
  { $Is(#_System._tuple#1._#Make1(a#70#0#0), Tclass._System.Tuple1(_System._tuple#1$T0)) } 
  $Is(#_System._tuple#1._#Make1(a#70#0#0), Tclass._System.Tuple1(_System._tuple#1$T0))
     <==> $IsBox(a#70#0#0, _System._tuple#1$T0));

// Constructor $IsAlloc
axiom (forall _System._tuple#1$T0: Ty, a#70#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_System._tuple#1._#Make1(a#70#0#0), 
      Tclass._System.Tuple1(_System._tuple#1$T0), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#1._#Make1(a#70#0#0), 
        Tclass._System.Tuple1(_System._tuple#1$T0), 
        $h)
       <==> $IsAllocBox(a#70#0#0, _System._tuple#1$T0, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#1$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple1._0(d), _System._tuple#1$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple1.___hMake1_q(d)
       && $IsAlloc(d, Tclass._System.Tuple1(_System._tuple#1$T0), $h)
     ==> $IsAllocBox(_System.Tuple1._0(d), _System._tuple#1$T0, $h));

// Constructor literal
axiom (forall a#71#0#0: Box :: 
  { #_System._tuple#1._#Make1(Lit(a#71#0#0)) } 
  #_System._tuple#1._#Make1(Lit(a#71#0#0))
     == Lit(#_System._tuple#1._#Make1(a#71#0#0)));

function _System.Tuple1._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#72#0#0: Box :: 
  { #_System._tuple#1._#Make1(a#72#0#0) } 
  _System.Tuple1._0(#_System._tuple#1._#Make1(a#72#0#0)) == a#72#0#0);

// Inductive rank
axiom (forall a#73#0#0: Box :: 
  { #_System._tuple#1._#Make1(a#73#0#0) } 
  BoxRank(a#73#0#0) < DtRank(#_System._tuple#1._#Make1(a#73#0#0)));

// Depth-one case-split function
function $IsA#_System.Tuple1(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple1(d) } 
  $IsA#_System.Tuple1(d) ==> _System.Tuple1.___hMake1_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#1$T0: Ty, d: DatatypeType :: 
  { _System.Tuple1.___hMake1_q(d), $Is(d, Tclass._System.Tuple1(_System._tuple#1$T0)) } 
  $Is(d, Tclass._System.Tuple1(_System._tuple#1$T0))
     ==> _System.Tuple1.___hMake1_q(d));

// Datatype extensional equality declaration
function _System.Tuple1#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#1._#Make1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple1#Equal(a, b) } 
  _System.Tuple1#Equal(a, b) <==> _System.Tuple1._0(a) == _System.Tuple1._0(b));

// Datatype extensionality axiom: _System._tuple#1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple1#Equal(a, b) } 
  _System.Tuple1#Equal(a, b) <==> a == b);

const unique class._System.Tuple1: ClassName;

// Constructor function declaration
function #_System._tuple#3._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#74#0#0: Box, a#74#1#0: Box, a#74#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#74#0#0, a#74#1#0, a#74#2#0) } 
  DatatypeCtorId(#_System._tuple#3._#Make3(a#74#0#0, a#74#1#0, a#74#2#0))
     == ##_System._tuple#3._#Make3);
}

function _System.Tuple3.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     ==> (exists a#75#0#0: Box, a#75#1#0: Box, a#75#2#0: Box :: 
      d == #_System._tuple#3._#Make3(a#75#0#0, a#75#1#0, a#75#2#0)));

function Tclass._System.Tuple3(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3: TyTag;

// Tclass._System.Tuple3 Tag
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tag(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == Tagclass._System.Tuple3
     && TagFamily(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == tytagFamily$_tuple#3);

function Tclass._System.Tuple3_0(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 0
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_0(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T0);

function Tclass._System.Tuple3_1(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 1
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_1(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T1);

function Tclass._System.Tuple3_2(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 2
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_2(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T2);

// Box/unbox axiom for Tclass._System.Tuple3
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)));

// Constructor $Is
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#76#0#0: Box, 
    a#76#1#0: Box, 
    a#76#2#0: Box :: 
  { $Is(#_System._tuple#3._#Make3(a#76#0#0, a#76#1#0, a#76#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(#_System._tuple#3._#Make3(a#76#0#0, a#76#1#0, a#76#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     <==> $IsBox(a#76#0#0, _System._tuple#3$T0)
       && $IsBox(a#76#1#0, _System._tuple#3$T1)
       && $IsBox(a#76#2#0, _System._tuple#3$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#76#0#0: Box, 
    a#76#1#0: Box, 
    a#76#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3._#Make3(a#76#0#0, a#76#1#0, a#76#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3._#Make3(a#76#0#0, a#76#1#0, a#76#2#0), 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
        $h)
       <==> $IsAllocBox(a#76#0#0, _System._tuple#3$T0, $h)
         && $IsAllocBox(a#76#1#0, _System._tuple#3$T1, $h)
         && $IsAllocBox(a#76#2#0, _System._tuple#3$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h));

// Constructor literal
axiom (forall a#77#0#0: Box, a#77#1#0: Box, a#77#2#0: Box :: 
  { #_System._tuple#3._#Make3(Lit(a#77#0#0), Lit(a#77#1#0), Lit(a#77#2#0)) } 
  #_System._tuple#3._#Make3(Lit(a#77#0#0), Lit(a#77#1#0), Lit(a#77#2#0))
     == Lit(#_System._tuple#3._#Make3(a#77#0#0, a#77#1#0, a#77#2#0)));

function _System.Tuple3._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#78#0#0: Box, a#78#1#0: Box, a#78#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#78#0#0, a#78#1#0, a#78#2#0) } 
  _System.Tuple3._0(#_System._tuple#3._#Make3(a#78#0#0, a#78#1#0, a#78#2#0))
     == a#78#0#0);

// Inductive rank
axiom (forall a#79#0#0: Box, a#79#1#0: Box, a#79#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#79#0#0, a#79#1#0, a#79#2#0) } 
  BoxRank(a#79#0#0)
     < DtRank(#_System._tuple#3._#Make3(a#79#0#0, a#79#1#0, a#79#2#0)));

function _System.Tuple3._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#80#0#0: Box, a#80#1#0: Box, a#80#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#80#0#0, a#80#1#0, a#80#2#0) } 
  _System.Tuple3._1(#_System._tuple#3._#Make3(a#80#0#0, a#80#1#0, a#80#2#0))
     == a#80#1#0);

// Inductive rank
axiom (forall a#81#0#0: Box, a#81#1#0: Box, a#81#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#81#0#0, a#81#1#0, a#81#2#0) } 
  BoxRank(a#81#1#0)
     < DtRank(#_System._tuple#3._#Make3(a#81#0#0, a#81#1#0, a#81#2#0)));

function _System.Tuple3._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#82#0#0: Box, a#82#1#0: Box, a#82#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#82#0#0, a#82#1#0, a#82#2#0) } 
  _System.Tuple3._2(#_System._tuple#3._#Make3(a#82#0#0, a#82#1#0, a#82#2#0))
     == a#82#2#0);

// Inductive rank
axiom (forall a#83#0#0: Box, a#83#1#0: Box, a#83#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#83#0#0, a#83#1#0, a#83#2#0) } 
  BoxRank(a#83#2#0)
     < DtRank(#_System._tuple#3._#Make3(a#83#0#0, a#83#1#0, a#83#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3(d) } 
  $IsA#_System.Tuple3(d) ==> _System.Tuple3.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> _System.Tuple3.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b)
     <==> _System.Tuple3._0(a) == _System.Tuple3._0(b)
       && _System.Tuple3._1(a) == _System.Tuple3._1(b)
       && _System.Tuple3._2(a) == _System.Tuple3._2(b));

// Datatype extensionality axiom: _System._tuple#3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b) <==> a == b);

const unique class._System.Tuple3: ClassName;

// Constructor function declaration
function #_System._tuple#4._#Make4(Box, Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#4._#Make4: DtCtorId
uses {
// Constructor identifier
axiom (forall a#84#0#0: Box, a#84#1#0: Box, a#84#2#0: Box, a#84#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#84#0#0, a#84#1#0, a#84#2#0, a#84#3#0) } 
  DatatypeCtorId(#_System._tuple#4._#Make4(a#84#0#0, a#84#1#0, a#84#2#0, a#84#3#0))
     == ##_System._tuple#4._#Make4);
}

function _System.Tuple4.___hMake4_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple4.___hMake4_q(d) } 
  _System.Tuple4.___hMake4_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#4._#Make4);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple4.___hMake4_q(d) } 
  _System.Tuple4.___hMake4_q(d)
     ==> (exists a#85#0#0: Box, a#85#1#0: Box, a#85#2#0: Box, a#85#3#0: Box :: 
      d == #_System._tuple#4._#Make4(a#85#0#0, a#85#1#0, a#85#2#0, a#85#3#0)));

function Tclass._System.Tuple4(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple4: TyTag;

// Tclass._System.Tuple4 Tag
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tag(Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3))
       == Tagclass._System.Tuple4
     && TagFamily(Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3))
       == tytagFamily$_tuple#4);

function Tclass._System.Tuple4_0(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 0
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_0(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T0);

function Tclass._System.Tuple4_1(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 1
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_1(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T1);

function Tclass._System.Tuple4_2(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 2
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_2(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T2);

function Tclass._System.Tuple4_3(Ty) : Ty;

// Tclass._System.Tuple4 injectivity 3
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty :: 
  { Tclass._System.Tuple4(_System._tuple#4$T0, 
      _System._tuple#4$T1, 
      _System._tuple#4$T2, 
      _System._tuple#4$T3) } 
  Tclass._System.Tuple4_3(Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     == _System._tuple#4$T3);

// Box/unbox axiom for Tclass._System.Tuple4
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3)) } 
  $IsBox(bx, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3)));

// Constructor $Is
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    a#86#0#0: Box, 
    a#86#1#0: Box, 
    a#86#2#0: Box, 
    a#86#3#0: Box :: 
  { $Is(#_System._tuple#4._#Make4(a#86#0#0, a#86#1#0, a#86#2#0, a#86#3#0), 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3)) } 
  $Is(#_System._tuple#4._#Make4(a#86#0#0, a#86#1#0, a#86#2#0, a#86#3#0), 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     <==> $IsBox(a#86#0#0, _System._tuple#4$T0)
       && $IsBox(a#86#1#0, _System._tuple#4$T1)
       && $IsBox(a#86#2#0, _System._tuple#4$T2)
       && $IsBox(a#86#3#0, _System._tuple#4$T3));

// Constructor $IsAlloc
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    a#86#0#0: Box, 
    a#86#1#0: Box, 
    a#86#2#0: Box, 
    a#86#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#4._#Make4(a#86#0#0, a#86#1#0, a#86#2#0, a#86#3#0), 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#4._#Make4(a#86#0#0, a#86#1#0, a#86#2#0, a#86#3#0), 
        Tclass._System.Tuple4(_System._tuple#4$T0, 
          _System._tuple#4$T1, 
          _System._tuple#4$T2, 
          _System._tuple#4$T3), 
        $h)
       <==> $IsAllocBox(a#86#0#0, _System._tuple#4$T0, $h)
         && $IsAllocBox(a#86#1#0, _System._tuple#4$T1, $h)
         && $IsAllocBox(a#86#2#0, _System._tuple#4$T2, $h)
         && $IsAllocBox(a#86#3#0, _System._tuple#4$T3, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._0(d), _System._tuple#4$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T1: Ty, _System._tuple#4$T2: Ty, _System._tuple#4$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._0(d), _System._tuple#4$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._1(d), _System._tuple#4$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T0: Ty, _System._tuple#4$T2: Ty, _System._tuple#4$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._1(d), _System._tuple#4$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._2(d), _System._tuple#4$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T0: Ty, _System._tuple#4$T1: Ty, _System._tuple#4$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._2(d), _System._tuple#4$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4._3(d), _System._tuple#4$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4.___hMake4_q(d)
       && (exists _System._tuple#4$T0: Ty, _System._tuple#4$T1: Ty, _System._tuple#4$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4(_System._tuple#4$T0, 
              _System._tuple#4$T1, 
              _System._tuple#4$T2, 
              _System._tuple#4$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4(_System._tuple#4$T0, 
            _System._tuple#4$T1, 
            _System._tuple#4$T2, 
            _System._tuple#4$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4._3(d), _System._tuple#4$T3, $h));

// Constructor literal
axiom (forall a#87#0#0: Box, a#87#1#0: Box, a#87#2#0: Box, a#87#3#0: Box :: 
  { #_System._tuple#4._#Make4(Lit(a#87#0#0), Lit(a#87#1#0), Lit(a#87#2#0), Lit(a#87#3#0)) } 
  #_System._tuple#4._#Make4(Lit(a#87#0#0), Lit(a#87#1#0), Lit(a#87#2#0), Lit(a#87#3#0))
     == Lit(#_System._tuple#4._#Make4(a#87#0#0, a#87#1#0, a#87#2#0, a#87#3#0)));

function _System.Tuple4._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#88#0#0: Box, a#88#1#0: Box, a#88#2#0: Box, a#88#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#88#0#0, a#88#1#0, a#88#2#0, a#88#3#0) } 
  _System.Tuple4._0(#_System._tuple#4._#Make4(a#88#0#0, a#88#1#0, a#88#2#0, a#88#3#0))
     == a#88#0#0);

// Inductive rank
axiom (forall a#89#0#0: Box, a#89#1#0: Box, a#89#2#0: Box, a#89#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#89#0#0, a#89#1#0, a#89#2#0, a#89#3#0) } 
  BoxRank(a#89#0#0)
     < DtRank(#_System._tuple#4._#Make4(a#89#0#0, a#89#1#0, a#89#2#0, a#89#3#0)));

function _System.Tuple4._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#90#0#0: Box, a#90#1#0: Box, a#90#2#0: Box, a#90#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#90#0#0, a#90#1#0, a#90#2#0, a#90#3#0) } 
  _System.Tuple4._1(#_System._tuple#4._#Make4(a#90#0#0, a#90#1#0, a#90#2#0, a#90#3#0))
     == a#90#1#0);

// Inductive rank
axiom (forall a#91#0#0: Box, a#91#1#0: Box, a#91#2#0: Box, a#91#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#91#0#0, a#91#1#0, a#91#2#0, a#91#3#0) } 
  BoxRank(a#91#1#0)
     < DtRank(#_System._tuple#4._#Make4(a#91#0#0, a#91#1#0, a#91#2#0, a#91#3#0)));

function _System.Tuple4._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#92#0#0: Box, a#92#1#0: Box, a#92#2#0: Box, a#92#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#92#0#0, a#92#1#0, a#92#2#0, a#92#3#0) } 
  _System.Tuple4._2(#_System._tuple#4._#Make4(a#92#0#0, a#92#1#0, a#92#2#0, a#92#3#0))
     == a#92#2#0);

// Inductive rank
axiom (forall a#93#0#0: Box, a#93#1#0: Box, a#93#2#0: Box, a#93#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#93#0#0, a#93#1#0, a#93#2#0, a#93#3#0) } 
  BoxRank(a#93#2#0)
     < DtRank(#_System._tuple#4._#Make4(a#93#0#0, a#93#1#0, a#93#2#0, a#93#3#0)));

function _System.Tuple4._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#94#0#0: Box, a#94#1#0: Box, a#94#2#0: Box, a#94#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#94#0#0, a#94#1#0, a#94#2#0, a#94#3#0) } 
  _System.Tuple4._3(#_System._tuple#4._#Make4(a#94#0#0, a#94#1#0, a#94#2#0, a#94#3#0))
     == a#94#3#0);

// Inductive rank
axiom (forall a#95#0#0: Box, a#95#1#0: Box, a#95#2#0: Box, a#95#3#0: Box :: 
  { #_System._tuple#4._#Make4(a#95#0#0, a#95#1#0, a#95#2#0, a#95#3#0) } 
  BoxRank(a#95#3#0)
     < DtRank(#_System._tuple#4._#Make4(a#95#0#0, a#95#1#0, a#95#2#0, a#95#3#0)));

// Depth-one case-split function
function $IsA#_System.Tuple4(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple4(d) } 
  $IsA#_System.Tuple4(d) ==> _System.Tuple4.___hMake4_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#4$T0: Ty, 
    _System._tuple#4$T1: Ty, 
    _System._tuple#4$T2: Ty, 
    _System._tuple#4$T3: Ty, 
    d: DatatypeType :: 
  { _System.Tuple4.___hMake4_q(d), $Is(d, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3)) } 
  $Is(d, 
      Tclass._System.Tuple4(_System._tuple#4$T0, 
        _System._tuple#4$T1, 
        _System._tuple#4$T2, 
        _System._tuple#4$T3))
     ==> _System.Tuple4.___hMake4_q(d));

// Datatype extensional equality declaration
function _System.Tuple4#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#4._#Make4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4#Equal(a, b) } 
  _System.Tuple4#Equal(a, b)
     <==> _System.Tuple4._0(a) == _System.Tuple4._0(b)
       && _System.Tuple4._1(a) == _System.Tuple4._1(b)
       && _System.Tuple4._2(a) == _System.Tuple4._2(b)
       && _System.Tuple4._3(a) == _System.Tuple4._3(b));

// Datatype extensionality axiom: _System._tuple#4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4#Equal(a, b) } 
  _System.Tuple4#Equal(a, b) <==> a == b);

const unique class._System.Tuple4: ClassName;

// Constructor function declaration
function #_System._tuple#4GOGG._#Make4(Box, Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#4GOGG._#Make4: DtCtorId
uses {
// Constructor identifier
axiom (forall a#96#0#0: Box, a#96#1#0: Box, a#96#2#0: Box, a#96#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#96#0#0, a#96#1#0, a#96#2#0, a#96#3#0) } 
  DatatypeCtorId(#_System._tuple#4GOGG._#Make4(a#96#0#0, a#96#1#0, a#96#2#0, a#96#3#0))
     == ##_System._tuple#4GOGG._#Make4);
}

function _System.Tuple4GOGG.___hMake4_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple4GOGG.___hMake4_q(d) } 
  _System.Tuple4GOGG.___hMake4_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#4GOGG._#Make4);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple4GOGG.___hMake4_q(d) } 
  _System.Tuple4GOGG.___hMake4_q(d)
     ==> (exists a#97#0#0: Box, a#97#1#0: Box, a#97#2#0: Box, a#97#3#0: Box :: 
      d == #_System._tuple#4GOGG._#Make4(a#97#0#0, a#97#1#0, a#97#2#0, a#97#3#0)));

function Tclass._System.Tuple4GOGG(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple4GOGG: TyTag;

// Tclass._System.Tuple4GOGG Tag
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty :: 
  { Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
      _System._tuple#4GOGG$T1, 
      _System._tuple#4GOGG$T2, 
      _System._tuple#4GOGG$T3) } 
  Tag(Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
          _System._tuple#4GOGG$T1, 
          _System._tuple#4GOGG$T2, 
          _System._tuple#4GOGG$T3))
       == Tagclass._System.Tuple4GOGG
     && TagFamily(Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
          _System._tuple#4GOGG$T1, 
          _System._tuple#4GOGG$T2, 
          _System._tuple#4GOGG$T3))
       == tytagFamily$_tuple#4GOGG);

function Tclass._System.Tuple4GOGG_0(Ty) : Ty;

// Tclass._System.Tuple4GOGG injectivity 0
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty :: 
  { Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
      _System._tuple#4GOGG$T1, 
      _System._tuple#4GOGG$T2, 
      _System._tuple#4GOGG$T3) } 
  Tclass._System.Tuple4GOGG_0(Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3))
     == _System._tuple#4GOGG$T0);

function Tclass._System.Tuple4GOGG_1(Ty) : Ty;

// Tclass._System.Tuple4GOGG injectivity 1
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty :: 
  { Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
      _System._tuple#4GOGG$T1, 
      _System._tuple#4GOGG$T2, 
      _System._tuple#4GOGG$T3) } 
  Tclass._System.Tuple4GOGG_1(Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3))
     == _System._tuple#4GOGG$T1);

function Tclass._System.Tuple4GOGG_2(Ty) : Ty;

// Tclass._System.Tuple4GOGG injectivity 2
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty :: 
  { Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
      _System._tuple#4GOGG$T1, 
      _System._tuple#4GOGG$T2, 
      _System._tuple#4GOGG$T3) } 
  Tclass._System.Tuple4GOGG_2(Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3))
     == _System._tuple#4GOGG$T2);

function Tclass._System.Tuple4GOGG_3(Ty) : Ty;

// Tclass._System.Tuple4GOGG injectivity 3
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty :: 
  { Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
      _System._tuple#4GOGG$T1, 
      _System._tuple#4GOGG$T2, 
      _System._tuple#4GOGG$T3) } 
  Tclass._System.Tuple4GOGG_3(Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3))
     == _System._tuple#4GOGG$T3);

// Box/unbox axiom for Tclass._System.Tuple4GOGG
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3)) } 
  $IsBox(bx, 
      Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
          _System._tuple#4GOGG$T1, 
          _System._tuple#4GOGG$T2, 
          _System._tuple#4GOGG$T3)));

// Constructor $Is
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty, 
    a#98#0#0: Box, 
    a#98#1#0: Box, 
    a#98#2#0: Box, 
    a#98#3#0: Box :: 
  { $Is(#_System._tuple#4GOGG._#Make4(a#98#0#0, a#98#1#0, a#98#2#0, a#98#3#0), 
      Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3)) } 
  $Is(#_System._tuple#4GOGG._#Make4(a#98#0#0, a#98#1#0, a#98#2#0, a#98#3#0), 
      Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3))
     <==> $IsBox(a#98#0#0, _System._tuple#4GOGG$T0)
       && $IsBox(a#98#1#0, _System._tuple#4GOGG$T1)
       && $IsBox(a#98#2#0, _System._tuple#4GOGG$T2)
       && $IsBox(a#98#3#0, _System._tuple#4GOGG$T3));

// Constructor $IsAlloc
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty, 
    a#98#0#0: Box, 
    a#98#1#0: Box, 
    a#98#2#0: Box, 
    a#98#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#4GOGG._#Make4(a#98#0#0, a#98#1#0, a#98#2#0, a#98#3#0), 
      Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#4GOGG._#Make4(a#98#0#0, a#98#1#0, a#98#2#0, a#98#3#0), 
        Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
          _System._tuple#4GOGG$T1, 
          _System._tuple#4GOGG$T2, 
          _System._tuple#4GOGG$T3), 
        $h)
       <==> $IsAllocBox(a#98#0#0, _System._tuple#4GOGG$T0, $h)
         && $IsAllocBox(a#98#1#0, _System._tuple#4GOGG$T1, $h)
         && $IsAllocBox(a#98#2#0, _System._tuple#4GOGG$T2, $h)
         && $IsAllocBox(a#98#3#0, _System._tuple#4GOGG$T3, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GOGG$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GOGG._0(d), _System._tuple#4GOGG$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GOGG.___hMake4_q(d)
       && (exists _System._tuple#4GOGG$T1: Ty, 
          _System._tuple#4GOGG$T2: Ty, 
          _System._tuple#4GOGG$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
              _System._tuple#4GOGG$T1, 
              _System._tuple#4GOGG$T2, 
              _System._tuple#4GOGG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
            _System._tuple#4GOGG$T1, 
            _System._tuple#4GOGG$T2, 
            _System._tuple#4GOGG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GOGG._0(d), _System._tuple#4GOGG$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GOGG$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GOGG._1(d), _System._tuple#4GOGG$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GOGG.___hMake4_q(d)
       && (exists _System._tuple#4GOGG$T0: Ty, 
          _System._tuple#4GOGG$T2: Ty, 
          _System._tuple#4GOGG$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
              _System._tuple#4GOGG$T1, 
              _System._tuple#4GOGG$T2, 
              _System._tuple#4GOGG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
            _System._tuple#4GOGG$T1, 
            _System._tuple#4GOGG$T2, 
            _System._tuple#4GOGG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GOGG._1(d), _System._tuple#4GOGG$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GOGG$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GOGG._2(d), _System._tuple#4GOGG$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GOGG.___hMake4_q(d)
       && (exists _System._tuple#4GOGG$T0: Ty, 
          _System._tuple#4GOGG$T1: Ty, 
          _System._tuple#4GOGG$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
              _System._tuple#4GOGG$T1, 
              _System._tuple#4GOGG$T2, 
              _System._tuple#4GOGG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
            _System._tuple#4GOGG$T1, 
            _System._tuple#4GOGG$T2, 
            _System._tuple#4GOGG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GOGG._2(d), _System._tuple#4GOGG$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GOGG$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GOGG._3(d), _System._tuple#4GOGG$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GOGG.___hMake4_q(d)
       && (exists _System._tuple#4GOGG$T0: Ty, 
          _System._tuple#4GOGG$T1: Ty, 
          _System._tuple#4GOGG$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
              _System._tuple#4GOGG$T1, 
              _System._tuple#4GOGG$T2, 
              _System._tuple#4GOGG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
            _System._tuple#4GOGG$T1, 
            _System._tuple#4GOGG$T2, 
            _System._tuple#4GOGG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GOGG._3(d), _System._tuple#4GOGG$T3, $h));

// Constructor literal
axiom (forall a#99#0#0: Box, a#99#1#0: Box, a#99#2#0: Box, a#99#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(Lit(a#99#0#0), Lit(a#99#1#0), Lit(a#99#2#0), Lit(a#99#3#0)) } 
  #_System._tuple#4GOGG._#Make4(Lit(a#99#0#0), Lit(a#99#1#0), Lit(a#99#2#0), Lit(a#99#3#0))
     == Lit(#_System._tuple#4GOGG._#Make4(a#99#0#0, a#99#1#0, a#99#2#0, a#99#3#0)));

function _System.Tuple4GOGG._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#100#0#0: Box, a#100#1#0: Box, a#100#2#0: Box, a#100#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#100#0#0, a#100#1#0, a#100#2#0, a#100#3#0) } 
  _System.Tuple4GOGG._0(#_System._tuple#4GOGG._#Make4(a#100#0#0, a#100#1#0, a#100#2#0, a#100#3#0))
     == a#100#0#0);

// Inductive rank
axiom (forall a#101#0#0: Box, a#101#1#0: Box, a#101#2#0: Box, a#101#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#101#0#0, a#101#1#0, a#101#2#0, a#101#3#0) } 
  BoxRank(a#101#0#0)
     < DtRank(#_System._tuple#4GOGG._#Make4(a#101#0#0, a#101#1#0, a#101#2#0, a#101#3#0)));

function _System.Tuple4GOGG._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#102#0#0: Box, a#102#1#0: Box, a#102#2#0: Box, a#102#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#102#0#0, a#102#1#0, a#102#2#0, a#102#3#0) } 
  _System.Tuple4GOGG._1(#_System._tuple#4GOGG._#Make4(a#102#0#0, a#102#1#0, a#102#2#0, a#102#3#0))
     == a#102#1#0);

// Inductive rank
axiom (forall a#103#0#0: Box, a#103#1#0: Box, a#103#2#0: Box, a#103#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#103#0#0, a#103#1#0, a#103#2#0, a#103#3#0) } 
  BoxRank(a#103#1#0)
     < DtRank(#_System._tuple#4GOGG._#Make4(a#103#0#0, a#103#1#0, a#103#2#0, a#103#3#0)));

function _System.Tuple4GOGG._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#104#0#0: Box, a#104#1#0: Box, a#104#2#0: Box, a#104#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#104#0#0, a#104#1#0, a#104#2#0, a#104#3#0) } 
  _System.Tuple4GOGG._2(#_System._tuple#4GOGG._#Make4(a#104#0#0, a#104#1#0, a#104#2#0, a#104#3#0))
     == a#104#2#0);

// Inductive rank
axiom (forall a#105#0#0: Box, a#105#1#0: Box, a#105#2#0: Box, a#105#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#105#0#0, a#105#1#0, a#105#2#0, a#105#3#0) } 
  BoxRank(a#105#2#0)
     < DtRank(#_System._tuple#4GOGG._#Make4(a#105#0#0, a#105#1#0, a#105#2#0, a#105#3#0)));

function _System.Tuple4GOGG._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#106#0#0: Box, a#106#1#0: Box, a#106#2#0: Box, a#106#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#106#0#0, a#106#1#0, a#106#2#0, a#106#3#0) } 
  _System.Tuple4GOGG._3(#_System._tuple#4GOGG._#Make4(a#106#0#0, a#106#1#0, a#106#2#0, a#106#3#0))
     == a#106#3#0);

// Inductive rank
axiom (forall a#107#0#0: Box, a#107#1#0: Box, a#107#2#0: Box, a#107#3#0: Box :: 
  { #_System._tuple#4GOGG._#Make4(a#107#0#0, a#107#1#0, a#107#2#0, a#107#3#0) } 
  BoxRank(a#107#3#0)
     < DtRank(#_System._tuple#4GOGG._#Make4(a#107#0#0, a#107#1#0, a#107#2#0, a#107#3#0)));

// Depth-one case-split function
function $IsA#_System.Tuple4GOGG(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple4GOGG(d) } 
  $IsA#_System.Tuple4GOGG(d) ==> _System.Tuple4GOGG.___hMake4_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#4GOGG$T0: Ty, 
    _System._tuple#4GOGG$T1: Ty, 
    _System._tuple#4GOGG$T2: Ty, 
    _System._tuple#4GOGG$T3: Ty, 
    d: DatatypeType :: 
  { _System.Tuple4GOGG.___hMake4_q(d), $Is(d, 
      Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3)) } 
  $Is(d, 
      Tclass._System.Tuple4GOGG(_System._tuple#4GOGG$T0, 
        _System._tuple#4GOGG$T1, 
        _System._tuple#4GOGG$T2, 
        _System._tuple#4GOGG$T3))
     ==> _System.Tuple4GOGG.___hMake4_q(d));

// Datatype extensional equality declaration
function _System.Tuple4GOGG#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#4GOGG._#Make4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4GOGG#Equal(a, b) } 
  _System.Tuple4GOGG#Equal(a, b)
     <==> _System.Tuple4GOGG._0(a) == _System.Tuple4GOGG._0(b)
       && _System.Tuple4GOGG._1(a) == _System.Tuple4GOGG._1(b)
       && _System.Tuple4GOGG._2(a) == _System.Tuple4GOGG._2(b)
       && _System.Tuple4GOGG._3(a) == _System.Tuple4GOGG._3(b));

// Datatype extensionality axiom: _System._tuple#4GOGG
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4GOGG#Equal(a, b) } 
  _System.Tuple4GOGG#Equal(a, b) <==> a == b);

const unique class._System.Tuple4GOGG: ClassName;

// Constructor function declaration
function #_System._tuple#2OG._#Make2(Box, Box) : DatatypeType;

const unique ##_System._tuple#2OG._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#108#0#0: Box, a#108#1#0: Box :: 
  { #_System._tuple#2OG._#Make2(a#108#0#0, a#108#1#0) } 
  DatatypeCtorId(#_System._tuple#2OG._#Make2(a#108#0#0, a#108#1#0))
     == ##_System._tuple#2OG._#Make2);
}

function _System.Tuple2OG.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2OG.___hMake2_q(d) } 
  _System.Tuple2OG.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2OG._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2OG.___hMake2_q(d) } 
  _System.Tuple2OG.___hMake2_q(d)
     ==> (exists a#109#0#0: Box, a#109#1#0: Box :: 
      d == #_System._tuple#2OG._#Make2(a#109#0#0, a#109#1#0)));

function Tclass._System.Tuple2OG(Ty, Ty) : Ty;

const unique Tagclass._System.Tuple2OG: TyTag;

// Tclass._System.Tuple2OG Tag
axiom (forall _System._tuple#2OG$T0: Ty, _System._tuple#2OG$T1: Ty :: 
  { Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1) } 
  Tag(Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1))
       == Tagclass._System.Tuple2OG
     && TagFamily(Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1))
       == tytagFamily$_tuple#2OG);

function Tclass._System.Tuple2OG_0(Ty) : Ty;

// Tclass._System.Tuple2OG injectivity 0
axiom (forall _System._tuple#2OG$T0: Ty, _System._tuple#2OG$T1: Ty :: 
  { Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1) } 
  Tclass._System.Tuple2OG_0(Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1))
     == _System._tuple#2OG$T0);

function Tclass._System.Tuple2OG_1(Ty) : Ty;

// Tclass._System.Tuple2OG injectivity 1
axiom (forall _System._tuple#2OG$T0: Ty, _System._tuple#2OG$T1: Ty :: 
  { Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1) } 
  Tclass._System.Tuple2OG_1(Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1))
     == _System._tuple#2OG$T1);

// Box/unbox axiom for Tclass._System.Tuple2OG
axiom (forall _System._tuple#2OG$T0: Ty, _System._tuple#2OG$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1)));

// Constructor $Is
axiom (forall _System._tuple#2OG$T0: Ty, 
    _System._tuple#2OG$T1: Ty, 
    a#110#0#0: Box, 
    a#110#1#0: Box :: 
  { $Is(#_System._tuple#2OG._#Make2(a#110#0#0, a#110#1#0), 
      Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1)) } 
  $Is(#_System._tuple#2OG._#Make2(a#110#0#0, a#110#1#0), 
      Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1))
     <==> $IsBox(a#110#0#0, _System._tuple#2OG$T0)
       && $IsBox(a#110#1#0, _System._tuple#2OG$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2OG$T0: Ty, 
    _System._tuple#2OG$T1: Ty, 
    a#110#0#0: Box, 
    a#110#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2OG._#Make2(a#110#0#0, a#110#1#0), 
      Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2OG._#Make2(a#110#0#0, a#110#1#0), 
        Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1), 
        $h)
       <==> $IsAllocBox(a#110#0#0, _System._tuple#2OG$T0, $h)
         && $IsAllocBox(a#110#1#0, _System._tuple#2OG$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2OG$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2OG._0(d), _System._tuple#2OG$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2OG.___hMake2_q(d)
       && (exists _System._tuple#2OG$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1), $h))
     ==> $IsAllocBox(_System.Tuple2OG._0(d), _System._tuple#2OG$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2OG$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2OG._1(d), _System._tuple#2OG$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2OG.___hMake2_q(d)
       && (exists _System._tuple#2OG$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1), $h))
     ==> $IsAllocBox(_System.Tuple2OG._1(d), _System._tuple#2OG$T1, $h));

// Constructor literal
axiom (forall a#111#0#0: Box, a#111#1#0: Box :: 
  { #_System._tuple#2OG._#Make2(Lit(a#111#0#0), Lit(a#111#1#0)) } 
  #_System._tuple#2OG._#Make2(Lit(a#111#0#0), Lit(a#111#1#0))
     == Lit(#_System._tuple#2OG._#Make2(a#111#0#0, a#111#1#0)));

function _System.Tuple2OG._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#112#0#0: Box, a#112#1#0: Box :: 
  { #_System._tuple#2OG._#Make2(a#112#0#0, a#112#1#0) } 
  _System.Tuple2OG._0(#_System._tuple#2OG._#Make2(a#112#0#0, a#112#1#0))
     == a#112#0#0);

// Inductive rank
axiom (forall a#113#0#0: Box, a#113#1#0: Box :: 
  { #_System._tuple#2OG._#Make2(a#113#0#0, a#113#1#0) } 
  BoxRank(a#113#0#0) < DtRank(#_System._tuple#2OG._#Make2(a#113#0#0, a#113#1#0)));

function _System.Tuple2OG._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#114#0#0: Box, a#114#1#0: Box :: 
  { #_System._tuple#2OG._#Make2(a#114#0#0, a#114#1#0) } 
  _System.Tuple2OG._1(#_System._tuple#2OG._#Make2(a#114#0#0, a#114#1#0))
     == a#114#1#0);

// Inductive rank
axiom (forall a#115#0#0: Box, a#115#1#0: Box :: 
  { #_System._tuple#2OG._#Make2(a#115#0#0, a#115#1#0) } 
  BoxRank(a#115#1#0) < DtRank(#_System._tuple#2OG._#Make2(a#115#0#0, a#115#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2OG(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2OG(d) } 
  $IsA#_System.Tuple2OG(d) ==> _System.Tuple2OG.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2OG$T0: Ty, _System._tuple#2OG$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2OG.___hMake2_q(d), $Is(d, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1)) } 
  $Is(d, Tclass._System.Tuple2OG(_System._tuple#2OG$T0, _System._tuple#2OG$T1))
     ==> _System.Tuple2OG.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2OG#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2OG._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2OG#Equal(a, b) } 
  _System.Tuple2OG#Equal(a, b)
     <==> _System.Tuple2OG._0(a) == _System.Tuple2OG._0(b)
       && _System.Tuple2OG._1(a) == _System.Tuple2OG._1(b));

// Datatype extensionality axiom: _System._tuple#2OG
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2OG#Equal(a, b) } 
  _System.Tuple2OG#Equal(a, b) <==> a == b);

const unique class._System.Tuple2OG: ClassName;

// Constructor function declaration
function #_System._tuple#4GGOG._#Make4(Box, Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#4GGOG._#Make4: DtCtorId
uses {
// Constructor identifier
axiom (forall a#116#0#0: Box, a#116#1#0: Box, a#116#2#0: Box, a#116#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#116#0#0, a#116#1#0, a#116#2#0, a#116#3#0) } 
  DatatypeCtorId(#_System._tuple#4GGOG._#Make4(a#116#0#0, a#116#1#0, a#116#2#0, a#116#3#0))
     == ##_System._tuple#4GGOG._#Make4);
}

function _System.Tuple4GGOG.___hMake4_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple4GGOG.___hMake4_q(d) } 
  _System.Tuple4GGOG.___hMake4_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#4GGOG._#Make4);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple4GGOG.___hMake4_q(d) } 
  _System.Tuple4GGOG.___hMake4_q(d)
     ==> (exists a#117#0#0: Box, a#117#1#0: Box, a#117#2#0: Box, a#117#3#0: Box :: 
      d == #_System._tuple#4GGOG._#Make4(a#117#0#0, a#117#1#0, a#117#2#0, a#117#3#0)));

function Tclass._System.Tuple4GGOG(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple4GGOG: TyTag;

// Tclass._System.Tuple4GGOG Tag
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty :: 
  { Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
      _System._tuple#4GGOG$T1, 
      _System._tuple#4GGOG$T2, 
      _System._tuple#4GGOG$T3) } 
  Tag(Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
          _System._tuple#4GGOG$T1, 
          _System._tuple#4GGOG$T2, 
          _System._tuple#4GGOG$T3))
       == Tagclass._System.Tuple4GGOG
     && TagFamily(Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
          _System._tuple#4GGOG$T1, 
          _System._tuple#4GGOG$T2, 
          _System._tuple#4GGOG$T3))
       == tytagFamily$_tuple#4GGOG);

function Tclass._System.Tuple4GGOG_0(Ty) : Ty;

// Tclass._System.Tuple4GGOG injectivity 0
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty :: 
  { Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
      _System._tuple#4GGOG$T1, 
      _System._tuple#4GGOG$T2, 
      _System._tuple#4GGOG$T3) } 
  Tclass._System.Tuple4GGOG_0(Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3))
     == _System._tuple#4GGOG$T0);

function Tclass._System.Tuple4GGOG_1(Ty) : Ty;

// Tclass._System.Tuple4GGOG injectivity 1
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty :: 
  { Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
      _System._tuple#4GGOG$T1, 
      _System._tuple#4GGOG$T2, 
      _System._tuple#4GGOG$T3) } 
  Tclass._System.Tuple4GGOG_1(Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3))
     == _System._tuple#4GGOG$T1);

function Tclass._System.Tuple4GGOG_2(Ty) : Ty;

// Tclass._System.Tuple4GGOG injectivity 2
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty :: 
  { Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
      _System._tuple#4GGOG$T1, 
      _System._tuple#4GGOG$T2, 
      _System._tuple#4GGOG$T3) } 
  Tclass._System.Tuple4GGOG_2(Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3))
     == _System._tuple#4GGOG$T2);

function Tclass._System.Tuple4GGOG_3(Ty) : Ty;

// Tclass._System.Tuple4GGOG injectivity 3
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty :: 
  { Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
      _System._tuple#4GGOG$T1, 
      _System._tuple#4GGOG$T2, 
      _System._tuple#4GGOG$T3) } 
  Tclass._System.Tuple4GGOG_3(Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3))
     == _System._tuple#4GGOG$T3);

// Box/unbox axiom for Tclass._System.Tuple4GGOG
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3)) } 
  $IsBox(bx, 
      Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
          _System._tuple#4GGOG$T1, 
          _System._tuple#4GGOG$T2, 
          _System._tuple#4GGOG$T3)));

// Constructor $Is
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty, 
    a#118#0#0: Box, 
    a#118#1#0: Box, 
    a#118#2#0: Box, 
    a#118#3#0: Box :: 
  { $Is(#_System._tuple#4GGOG._#Make4(a#118#0#0, a#118#1#0, a#118#2#0, a#118#3#0), 
      Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3)) } 
  $Is(#_System._tuple#4GGOG._#Make4(a#118#0#0, a#118#1#0, a#118#2#0, a#118#3#0), 
      Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3))
     <==> $IsBox(a#118#0#0, _System._tuple#4GGOG$T0)
       && $IsBox(a#118#1#0, _System._tuple#4GGOG$T1)
       && $IsBox(a#118#2#0, _System._tuple#4GGOG$T2)
       && $IsBox(a#118#3#0, _System._tuple#4GGOG$T3));

// Constructor $IsAlloc
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty, 
    a#118#0#0: Box, 
    a#118#1#0: Box, 
    a#118#2#0: Box, 
    a#118#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#4GGOG._#Make4(a#118#0#0, a#118#1#0, a#118#2#0, a#118#3#0), 
      Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#4GGOG._#Make4(a#118#0#0, a#118#1#0, a#118#2#0, a#118#3#0), 
        Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
          _System._tuple#4GGOG$T1, 
          _System._tuple#4GGOG$T2, 
          _System._tuple#4GGOG$T3), 
        $h)
       <==> $IsAllocBox(a#118#0#0, _System._tuple#4GGOG$T0, $h)
         && $IsAllocBox(a#118#1#0, _System._tuple#4GGOG$T1, $h)
         && $IsAllocBox(a#118#2#0, _System._tuple#4GGOG$T2, $h)
         && $IsAllocBox(a#118#3#0, _System._tuple#4GGOG$T3, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOG$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOG._0(d), _System._tuple#4GGOG$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOG.___hMake4_q(d)
       && (exists _System._tuple#4GGOG$T1: Ty, 
          _System._tuple#4GGOG$T2: Ty, 
          _System._tuple#4GGOG$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
              _System._tuple#4GGOG$T1, 
              _System._tuple#4GGOG$T2, 
              _System._tuple#4GGOG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
            _System._tuple#4GGOG$T1, 
            _System._tuple#4GGOG$T2, 
            _System._tuple#4GGOG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOG._0(d), _System._tuple#4GGOG$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOG$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOG._1(d), _System._tuple#4GGOG$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOG.___hMake4_q(d)
       && (exists _System._tuple#4GGOG$T0: Ty, 
          _System._tuple#4GGOG$T2: Ty, 
          _System._tuple#4GGOG$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
              _System._tuple#4GGOG$T1, 
              _System._tuple#4GGOG$T2, 
              _System._tuple#4GGOG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
            _System._tuple#4GGOG$T1, 
            _System._tuple#4GGOG$T2, 
            _System._tuple#4GGOG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOG._1(d), _System._tuple#4GGOG$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOG$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOG._2(d), _System._tuple#4GGOG$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOG.___hMake4_q(d)
       && (exists _System._tuple#4GGOG$T0: Ty, 
          _System._tuple#4GGOG$T1: Ty, 
          _System._tuple#4GGOG$T3: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
              _System._tuple#4GGOG$T1, 
              _System._tuple#4GGOG$T2, 
              _System._tuple#4GGOG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
            _System._tuple#4GGOG$T1, 
            _System._tuple#4GGOG$T2, 
            _System._tuple#4GGOG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOG._2(d), _System._tuple#4GGOG$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#4GGOG$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple4GGOG._3(d), _System._tuple#4GGOG$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple4GGOG.___hMake4_q(d)
       && (exists _System._tuple#4GGOG$T0: Ty, 
          _System._tuple#4GGOG$T1: Ty, 
          _System._tuple#4GGOG$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
              _System._tuple#4GGOG$T1, 
              _System._tuple#4GGOG$T2, 
              _System._tuple#4GGOG$T3), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
            _System._tuple#4GGOG$T1, 
            _System._tuple#4GGOG$T2, 
            _System._tuple#4GGOG$T3), 
          $h))
     ==> $IsAllocBox(_System.Tuple4GGOG._3(d), _System._tuple#4GGOG$T3, $h));

// Constructor literal
axiom (forall a#119#0#0: Box, a#119#1#0: Box, a#119#2#0: Box, a#119#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(Lit(a#119#0#0), Lit(a#119#1#0), Lit(a#119#2#0), Lit(a#119#3#0)) } 
  #_System._tuple#4GGOG._#Make4(Lit(a#119#0#0), Lit(a#119#1#0), Lit(a#119#2#0), Lit(a#119#3#0))
     == Lit(#_System._tuple#4GGOG._#Make4(a#119#0#0, a#119#1#0, a#119#2#0, a#119#3#0)));

function _System.Tuple4GGOG._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#120#0#0: Box, a#120#1#0: Box, a#120#2#0: Box, a#120#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#120#0#0, a#120#1#0, a#120#2#0, a#120#3#0) } 
  _System.Tuple4GGOG._0(#_System._tuple#4GGOG._#Make4(a#120#0#0, a#120#1#0, a#120#2#0, a#120#3#0))
     == a#120#0#0);

// Inductive rank
axiom (forall a#121#0#0: Box, a#121#1#0: Box, a#121#2#0: Box, a#121#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#121#0#0, a#121#1#0, a#121#2#0, a#121#3#0) } 
  BoxRank(a#121#0#0)
     < DtRank(#_System._tuple#4GGOG._#Make4(a#121#0#0, a#121#1#0, a#121#2#0, a#121#3#0)));

function _System.Tuple4GGOG._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#122#0#0: Box, a#122#1#0: Box, a#122#2#0: Box, a#122#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#122#0#0, a#122#1#0, a#122#2#0, a#122#3#0) } 
  _System.Tuple4GGOG._1(#_System._tuple#4GGOG._#Make4(a#122#0#0, a#122#1#0, a#122#2#0, a#122#3#0))
     == a#122#1#0);

// Inductive rank
axiom (forall a#123#0#0: Box, a#123#1#0: Box, a#123#2#0: Box, a#123#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#123#0#0, a#123#1#0, a#123#2#0, a#123#3#0) } 
  BoxRank(a#123#1#0)
     < DtRank(#_System._tuple#4GGOG._#Make4(a#123#0#0, a#123#1#0, a#123#2#0, a#123#3#0)));

function _System.Tuple4GGOG._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#124#0#0: Box, a#124#1#0: Box, a#124#2#0: Box, a#124#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#124#0#0, a#124#1#0, a#124#2#0, a#124#3#0) } 
  _System.Tuple4GGOG._2(#_System._tuple#4GGOG._#Make4(a#124#0#0, a#124#1#0, a#124#2#0, a#124#3#0))
     == a#124#2#0);

// Inductive rank
axiom (forall a#125#0#0: Box, a#125#1#0: Box, a#125#2#0: Box, a#125#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#125#0#0, a#125#1#0, a#125#2#0, a#125#3#0) } 
  BoxRank(a#125#2#0)
     < DtRank(#_System._tuple#4GGOG._#Make4(a#125#0#0, a#125#1#0, a#125#2#0, a#125#3#0)));

function _System.Tuple4GGOG._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#126#0#0: Box, a#126#1#0: Box, a#126#2#0: Box, a#126#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#126#0#0, a#126#1#0, a#126#2#0, a#126#3#0) } 
  _System.Tuple4GGOG._3(#_System._tuple#4GGOG._#Make4(a#126#0#0, a#126#1#0, a#126#2#0, a#126#3#0))
     == a#126#3#0);

// Inductive rank
axiom (forall a#127#0#0: Box, a#127#1#0: Box, a#127#2#0: Box, a#127#3#0: Box :: 
  { #_System._tuple#4GGOG._#Make4(a#127#0#0, a#127#1#0, a#127#2#0, a#127#3#0) } 
  BoxRank(a#127#3#0)
     < DtRank(#_System._tuple#4GGOG._#Make4(a#127#0#0, a#127#1#0, a#127#2#0, a#127#3#0)));

// Depth-one case-split function
function $IsA#_System.Tuple4GGOG(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple4GGOG(d) } 
  $IsA#_System.Tuple4GGOG(d) ==> _System.Tuple4GGOG.___hMake4_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#4GGOG$T0: Ty, 
    _System._tuple#4GGOG$T1: Ty, 
    _System._tuple#4GGOG$T2: Ty, 
    _System._tuple#4GGOG$T3: Ty, 
    d: DatatypeType :: 
  { _System.Tuple4GGOG.___hMake4_q(d), $Is(d, 
      Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3)) } 
  $Is(d, 
      Tclass._System.Tuple4GGOG(_System._tuple#4GGOG$T0, 
        _System._tuple#4GGOG$T1, 
        _System._tuple#4GGOG$T2, 
        _System._tuple#4GGOG$T3))
     ==> _System.Tuple4GGOG.___hMake4_q(d));

// Datatype extensional equality declaration
function _System.Tuple4GGOG#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#4GGOG._#Make4
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4GGOG#Equal(a, b) } 
  _System.Tuple4GGOG#Equal(a, b)
     <==> _System.Tuple4GGOG._0(a) == _System.Tuple4GGOG._0(b)
       && _System.Tuple4GGOG._1(a) == _System.Tuple4GGOG._1(b)
       && _System.Tuple4GGOG._2(a) == _System.Tuple4GGOG._2(b)
       && _System.Tuple4GGOG._3(a) == _System.Tuple4GGOG._3(b));

// Datatype extensionality axiom: _System._tuple#4GGOG
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple4GGOG#Equal(a, b) } 
  _System.Tuple4GGOG#Equal(a, b) <==> a == b);

const unique class._System.Tuple4GGOG: ClassName;

// Constructor function declaration
function #_System._tuple#3GOG._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3GOG._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#128#0#0: Box, a#128#1#0: Box, a#128#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(a#128#0#0, a#128#1#0, a#128#2#0) } 
  DatatypeCtorId(#_System._tuple#3GOG._#Make3(a#128#0#0, a#128#1#0, a#128#2#0))
     == ##_System._tuple#3GOG._#Make3);
}

function _System.Tuple3GOG.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3GOG.___hMake3_q(d) } 
  _System.Tuple3GOG.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3GOG._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3GOG.___hMake3_q(d) } 
  _System.Tuple3GOG.___hMake3_q(d)
     ==> (exists a#129#0#0: Box, a#129#1#0: Box, a#129#2#0: Box :: 
      d == #_System._tuple#3GOG._#Make3(a#129#0#0, a#129#1#0, a#129#2#0)));

function Tclass._System.Tuple3GOG(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3GOG: TyTag;

// Tclass._System.Tuple3GOG Tag
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty :: 
  { Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2) } 
  Tag(Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
       == Tagclass._System.Tuple3GOG
     && TagFamily(Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
       == tytagFamily$_tuple#3GOG);

function Tclass._System.Tuple3GOG_0(Ty) : Ty;

// Tclass._System.Tuple3GOG injectivity 0
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty :: 
  { Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2) } 
  Tclass._System.Tuple3GOG_0(Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
     == _System._tuple#3GOG$T0);

function Tclass._System.Tuple3GOG_1(Ty) : Ty;

// Tclass._System.Tuple3GOG injectivity 1
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty :: 
  { Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2) } 
  Tclass._System.Tuple3GOG_1(Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
     == _System._tuple#3GOG$T1);

function Tclass._System.Tuple3GOG_2(Ty) : Ty;

// Tclass._System.Tuple3GOG injectivity 2
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty :: 
  { Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2) } 
  Tclass._System.Tuple3GOG_2(Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
     == _System._tuple#3GOG$T2);

// Box/unbox axiom for Tclass._System.Tuple3GOG
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2)));

// Constructor $Is
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty, 
    a#130#0#0: Box, 
    a#130#1#0: Box, 
    a#130#2#0: Box :: 
  { $Is(#_System._tuple#3GOG._#Make3(a#130#0#0, a#130#1#0, a#130#2#0), 
      Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2)) } 
  $Is(#_System._tuple#3GOG._#Make3(a#130#0#0, a#130#1#0, a#130#2#0), 
      Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
     <==> $IsBox(a#130#0#0, _System._tuple#3GOG$T0)
       && $IsBox(a#130#1#0, _System._tuple#3GOG$T1)
       && $IsBox(a#130#2#0, _System._tuple#3GOG$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty, 
    a#130#0#0: Box, 
    a#130#1#0: Box, 
    a#130#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3GOG._#Make3(a#130#0#0, a#130#1#0, a#130#2#0), 
      Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3GOG._#Make3(a#130#0#0, a#130#1#0, a#130#2#0), 
        Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
        $h)
       <==> $IsAllocBox(a#130#0#0, _System._tuple#3GOG$T0, $h)
         && $IsAllocBox(a#130#1#0, _System._tuple#3GOG$T1, $h)
         && $IsAllocBox(a#130#2#0, _System._tuple#3GOG$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3GOG$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3GOG._0(d), _System._tuple#3GOG$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3GOG.___hMake3_q(d)
       && (exists _System._tuple#3GOG$T1: Ty, _System._tuple#3GOG$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3GOG._0(d), _System._tuple#3GOG$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3GOG$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3GOG._1(d), _System._tuple#3GOG$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3GOG.___hMake3_q(d)
       && (exists _System._tuple#3GOG$T0: Ty, _System._tuple#3GOG$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3GOG._1(d), _System._tuple#3GOG$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3GOG$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3GOG._2(d), _System._tuple#3GOG$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3GOG.___hMake3_q(d)
       && (exists _System._tuple#3GOG$T0: Ty, _System._tuple#3GOG$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3GOG._2(d), _System._tuple#3GOG$T2, $h));

// Constructor literal
axiom (forall a#131#0#0: Box, a#131#1#0: Box, a#131#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(Lit(a#131#0#0), Lit(a#131#1#0), Lit(a#131#2#0)) } 
  #_System._tuple#3GOG._#Make3(Lit(a#131#0#0), Lit(a#131#1#0), Lit(a#131#2#0))
     == Lit(#_System._tuple#3GOG._#Make3(a#131#0#0, a#131#1#0, a#131#2#0)));

function _System.Tuple3GOG._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#132#0#0: Box, a#132#1#0: Box, a#132#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(a#132#0#0, a#132#1#0, a#132#2#0) } 
  _System.Tuple3GOG._0(#_System._tuple#3GOG._#Make3(a#132#0#0, a#132#1#0, a#132#2#0))
     == a#132#0#0);

// Inductive rank
axiom (forall a#133#0#0: Box, a#133#1#0: Box, a#133#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(a#133#0#0, a#133#1#0, a#133#2#0) } 
  BoxRank(a#133#0#0)
     < DtRank(#_System._tuple#3GOG._#Make3(a#133#0#0, a#133#1#0, a#133#2#0)));

function _System.Tuple3GOG._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#134#0#0: Box, a#134#1#0: Box, a#134#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(a#134#0#0, a#134#1#0, a#134#2#0) } 
  _System.Tuple3GOG._1(#_System._tuple#3GOG._#Make3(a#134#0#0, a#134#1#0, a#134#2#0))
     == a#134#1#0);

// Inductive rank
axiom (forall a#135#0#0: Box, a#135#1#0: Box, a#135#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(a#135#0#0, a#135#1#0, a#135#2#0) } 
  BoxRank(a#135#1#0)
     < DtRank(#_System._tuple#3GOG._#Make3(a#135#0#0, a#135#1#0, a#135#2#0)));

function _System.Tuple3GOG._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#136#0#0: Box, a#136#1#0: Box, a#136#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(a#136#0#0, a#136#1#0, a#136#2#0) } 
  _System.Tuple3GOG._2(#_System._tuple#3GOG._#Make3(a#136#0#0, a#136#1#0, a#136#2#0))
     == a#136#2#0);

// Inductive rank
axiom (forall a#137#0#0: Box, a#137#1#0: Box, a#137#2#0: Box :: 
  { #_System._tuple#3GOG._#Make3(a#137#0#0, a#137#1#0, a#137#2#0) } 
  BoxRank(a#137#2#0)
     < DtRank(#_System._tuple#3GOG._#Make3(a#137#0#0, a#137#1#0, a#137#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3GOG(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3GOG(d) } 
  $IsA#_System.Tuple3GOG(d) ==> _System.Tuple3GOG.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3GOG$T0: Ty, 
    _System._tuple#3GOG$T1: Ty, 
    _System._tuple#3GOG$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3GOG.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3GOG(_System._tuple#3GOG$T0, _System._tuple#3GOG$T1, _System._tuple#3GOG$T2))
     ==> _System.Tuple3GOG.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3GOG#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3GOG._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3GOG#Equal(a, b) } 
  _System.Tuple3GOG#Equal(a, b)
     <==> _System.Tuple3GOG._0(a) == _System.Tuple3GOG._0(b)
       && _System.Tuple3GOG._1(a) == _System.Tuple3GOG._1(b)
       && _System.Tuple3GOG._2(a) == _System.Tuple3GOG._2(b));

// Datatype extensionality axiom: _System._tuple#3GOG
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3GOG#Equal(a, b) } 
  _System.Tuple3GOG#Equal(a, b) <==> a == b);

const unique class._System.Tuple3GOG: ClassName;

const unique class._module.__default: ClassName;

procedure {:verboseName "Test0 (well-formedness)"} CheckWellFormed$$_module.__default.Test0(t0#0: DatatypeType
       where $Is(t0#0, Tclass._System.Tuple1G(TInt))
         && $IsAlloc(t0#0, Tclass._System.Tuple1G(TInt), $Heap)
         && $IsA#_System.Tuple1G(t0#0));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test0 (call)"} Call$$_module.__default.Test0(t0#0: DatatypeType
       where $Is(t0#0, Tclass._System.Tuple1G(TInt))
         && $IsAlloc(t0#0, Tclass._System.Tuple1G(TInt), $Heap)
         && $IsA#_System.Tuple1G(t0#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test0 (correctness)"} Impl$$_module.__default.Test0(t0#0: DatatypeType
       where $Is(t0#0, Tclass._System.Tuple1G(TInt))
         && $IsAlloc(t0#0, Tclass._System.Tuple1G(TInt), $Heap)
         && $IsA#_System.Tuple1G(t0#0))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test1 (well-formedness)"} CheckWellFormed$$_module.__default.Test1(t1#0: DatatypeType
       where $Is(t1#0, Tclass._System.Tuple2GO(TInt, TInt))
         && $IsAlloc(t1#0, Tclass._System.Tuple2GO(TInt, TInt), $Heap)
         && $IsA#_System.Tuple2GO(t1#0));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test1 (call)"} Call$$_module.__default.Test1(t1#0: DatatypeType
       where $Is(t1#0, Tclass._System.Tuple2GO(TInt, TInt))
         && $IsAlloc(t1#0, Tclass._System.Tuple2GO(TInt, TInt), $Heap)
         && $IsA#_System.Tuple2GO(t1#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test1 (correctness)"} Impl$$_module.__default.Test1(t1#0: DatatypeType
       where $Is(t1#0, Tclass._System.Tuple2GO(TInt, TInt))
         && $IsAlloc(t1#0, Tclass._System.Tuple2GO(TInt, TInt), $Heap)
         && $IsA#_System.Tuple2GO(t1#0))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test2 (well-formedness)"} CheckWellFormed$$_module.__default.Test2(t2#0: DatatypeType
       where $Is(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt))
         && $IsAlloc(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3OGO(t2#0));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test2 (call)"} Call$$_module.__default.Test2(t2#0: DatatypeType
       where $Is(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt))
         && $IsAlloc(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3OGO(t2#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test2 (correctness)"} Impl$$_module.__default.Test2(t2#0: DatatypeType
       where $Is(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt))
         && $IsAlloc(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3OGO(t2#0))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test3 (well-formedness)"} CheckWellFormed$$_module.__default.Test3(t3#0: DatatypeType
       where $Is(t3#0, 
          Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt))
         && $IsAlloc(t3#0, 
          Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt), 
          $Heap)
         && $IsA#_System.Tuple3OOG(t3#0));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Test3 (call)"} Call$$_module.__default.Test3(t3#0: DatatypeType
       where $Is(t3#0, 
          Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt))
         && $IsAlloc(t3#0, 
          Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt), 
          $Heap)
         && $IsA#_System.Tuple3OOG(t3#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Test3 (correctness)"} Impl$$_module.__default.Test3(t3#0: DatatypeType
       where $Is(t3#0, 
          Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt))
         && $IsAlloc(t3#0, 
          Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt), 
          $Heap)
         && $IsA#_System.Tuple3OOG(t3#0))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
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
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.PhantomData(Ty) : Ty;

const unique Tagclass._module.PhantomData: TyTag;

// Tclass._module.PhantomData Tag
axiom (forall _module.PhantomData$T: Ty :: 
  { Tclass._module.PhantomData(_module.PhantomData$T) } 
  Tag(Tclass._module.PhantomData(_module.PhantomData$T))
       == Tagclass._module.PhantomData
     && TagFamily(Tclass._module.PhantomData(_module.PhantomData$T))
       == tytagFamily$PhantomData);

function Tclass._module.PhantomData_0(Ty) : Ty;

// Tclass._module.PhantomData injectivity 0
axiom (forall _module.PhantomData$T: Ty :: 
  { Tclass._module.PhantomData(_module.PhantomData$T) } 
  Tclass._module.PhantomData_0(Tclass._module.PhantomData(_module.PhantomData$T))
     == _module.PhantomData$T);

// Box/unbox axiom for Tclass._module.PhantomData
axiom (forall _module.PhantomData$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.PhantomData(_module.PhantomData$T)) } 
  $IsBox(bx, Tclass._module.PhantomData(_module.PhantomData$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.PhantomData(_module.PhantomData$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var p#0: DatatypeType
     where $Is(p#0, Tclass._module.PhantomData(TInt))
       && $IsAlloc(p#0, Tclass._module.PhantomData(TInt), $Heap);
  var t0#0: DatatypeType
     where $Is(t0#0, Tclass._System.Tuple1G(TInt))
       && $IsAlloc(t0#0, Tclass._System.Tuple1G(TInt), $Heap);
  var t1#0: DatatypeType
     where $Is(t1#0, Tclass._System.Tuple2GO(TInt, TInt))
       && $IsAlloc(t1#0, Tclass._System.Tuple2GO(TInt, TInt), $Heap);
  var t2#0: DatatypeType
     where $Is(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt))
       && $IsAlloc(t2#0, Tclass._System.Tuple3OGO(TInt, TInt, TInt), $Heap);
  var t3#0: DatatypeType
     where $Is(t3#0, 
        Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt))
       && $IsAlloc(t3#0, 
        Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt), 
        $Heap);
  var $rhs#0: DatatypeType where $Is($rhs#0, Tclass._System.Tuple1G(TInt));
  var $rhs#1: DatatypeType where $Is($rhs#1, Tclass._System.Tuple2GO(TInt, TInt));
  var $rhs#2: DatatypeType
     where $Is($rhs#2, Tclass._System.Tuple3OGO(TInt, TInt, TInt));
  var $rhs#3: DatatypeType
     where $Is($rhs#3, 
      Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt));
  var t0##0: DatatypeType;
  var t1##0: DatatypeType;
  var t2##0: DatatypeType;
  var t3##0: DatatypeType;
  var t0##1: DatatypeType;
  var t1##1: DatatypeType;
  var t2##1: DatatypeType;
  var t3##1: DatatypeType;
  var sss#0: DatatypeType
     where $Is(sss#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal))
       && $IsAlloc(sss#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal), $Heap);
  var $rhs##0: DatatypeType;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(11,9)
    assume true;
    assume true;
    p#0 := Lit(#_module.PhantomData.PhantomData($Box(LitInt(123))));
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(12,22)
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $rhs#0 /* where $Is($rhs#0, Tclass._System.Tuple1G(TInt)) */;
    havoc $rhs#1 /* where $Is($rhs#1, Tclass._System.Tuple2GO(TInt, TInt)) */;
    havoc $rhs#2 /* where $Is($rhs#2, Tclass._System.Tuple3OGO(TInt, TInt, TInt)) */;
    havoc $rhs#3 /* where $Is($rhs#3, 
      Tclass._System.Tuple3OOG(Tclass._System.Tuple1G(TInt), Tclass._System.Tuple2GO(TInt, TInt), TInt)) */;
    t0#0 := $rhs#0;
    t1#0 := $rhs#1;
    t2#0 := $rhs#2;
    t3#0 := $rhs#3;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(13,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t0##0 := t0#0;
    call {:id "id5"} Call$$_module.__default.Test0(t0##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(14,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t1##0 := t1#0;
    call {:id "id6"} Call$$_module.__default.Test1(t1##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(15,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t2##0 := t2#0;
    call {:id "id7"} Call$$_module.__default.Test2(t2##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(16,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t3##0 := t3#0;
    call {:id "id8"} Call$$_module.__default.Test3(t3##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(17,6)
    assume true;
    assume true;
    t0#0 := Lit(#_System._tuple#1G._#Make1($Box(LitInt(0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(18,6)
    assume true;
    assume true;
    t1#0 := Lit(#_System._tuple#2GO._#Make2($Box(LitInt(11)), $Box(LitInt(22))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(19,6)
    assume true;
    assume true;
    t2#0 := Lit(#_System._tuple#3OGO._#Make3($Box(LitInt(33)), $Box(LitInt(44)), $Box(LitInt(55))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(20,6)
    assume true;
    assume true;
    t3#0 := Lit(#_System._tuple#3OOG._#Make3($Box(Lit(#_System._tuple#1G._#Make1($Box(LitInt(66))))), 
        $Box(Lit(#_System._tuple#2GO._#Make2($Box(LitInt(77)), $Box(LitInt(88))))), 
        $Box(LitInt(99))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(21,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t0##1 := t0#0;
    call {:id "id13"} Call$$_module.__default.Test0(t0##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(22,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t1##1 := t1#0;
    call {:id "id14"} Call$$_module.__default.Test1(t1##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(23,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t2##1 := t2#0;
    call {:id "id15"} Call$$_module.__default.Test2(t2##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(24,8)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t3##1 := t3#0;
    call {:id "id16"} Call$$_module.__default.Test3(t3##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(25,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id17"} Call$$_module.__default.TestDestructors();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(26,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id18"} Call$$_module.__default.TestMatchDestructions();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(27,28)
    assume true;
    // TrCallStmt: Adding lhs with type (ghost int, int, ghost real, ghost real)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id19"} $rhs##0 := Call$$_module.__default.TestSingletons();
    // TrCallStmt: After ProcessCallStmt
    sss#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(28,3)
    assume _System.Tuple4GOGG.___hMake4_q(sss#0);
    assume _System.Tuple4GOGG.___hMake4_q(sss#0);
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(29,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id21"} Call$$_module.__default.MoreSingletonTests();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TestDestructors (well-formedness)"} CheckWellFormed$$_module.__default.TestDestructors();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestDestructors (call)"} Call$$_module.__default.TestDestructors();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestDestructors (correctness)"} Impl$$_module.__default.TestDestructors() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMatchDestructions (well-formedness)"} CheckWellFormed$$_module.__default.TestMatchDestructions();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMatchDestructions (call)"} Call$$_module.__default.TestMatchDestructions();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMatchDestructions (correctness)"} Impl$$_module.__default.TestMatchDestructions() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestSingletons (well-formedness)"} CheckWellFormed$$_module.__default.TestSingletons()
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal))
         && $IsAlloc(r#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestSingletons (call)"} Call$$_module.__default.TestSingletons()
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal))
         && $IsAlloc(r#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestSingletons (correctness)"} Impl$$_module.__default.TestSingletons()
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal))
         && $IsAlloc(r#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function _module.__default.SingletonConst() : DatatypeType
uses {
axiom _module.__default.SingletonConst(): DatatypeType
   == Lit(#_System._tuple#2OG._#Make2($Box(LitInt(12)), $Box(LitInt(13))));
// _default.SingletonConst: Type axiom
axiom 0 < $FunctionContextHeight
   ==> $Is(_module.__default.SingletonConst(), Tclass._System.Tuple2OG(TInt, TInt));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestSingletons (correctness)"} Impl$$_module.__default.TestSingletons() returns (r#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s0#0: DatatypeType
     where $Is(s0#0, Tclass._System.Tuple2GO(TInt, TReal))
       && $IsAlloc(s0#0, Tclass._System.Tuple2GO(TInt, TReal), $Heap);
  var s1#0: DatatypeType
     where $Is(s1#0, Tclass._System.Tuple2OG(TReal, TInt))
       && $IsAlloc(s1#0, Tclass._System.Tuple2OG(TReal, TInt), $Heap);
  var s2#0: DatatypeType
     where $Is(s2#0, Tclass._System.Tuple4GGOG(TReal, Tclass._System.Tuple0(), TInt, TChar))
       && $IsAlloc(s2#0, 
        Tclass._System.Tuple4GGOG(TReal, Tclass._System.Tuple0(), TInt, TChar), 
        $Heap);
  var c#0: DatatypeType
     where $Is(c#0, Tclass._System.Tuple2OG(TInt, TInt))
       && $IsAlloc(c#0, Tclass._System.Tuple2OG(TInt, TInt), $Heap);
  var u#0: int;
  var x#0: int;
  var _mcc#0#0_0: real;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0: int;
  var _mcc#3#0_0: char;
  var d#0_0: char;
  var let#0_0#0#0: char;
  var c#0_0: int;
  var let#0_1#0#0: int;
  var b#0_0: DatatypeType;
  var let#0_2#0#0: DatatypeType;
  var a#0_0: real;
  var let#0_3#0#0: real;
  var _mcc#4#0: real;
  var _mcc#5#0: DatatypeType;
  var _mcc#6#0: int;
  var _mcc#7#0: char;
  var d#Z#0: char;
  var let#0#0#0: char;
  var c#Z#0: int;
  var let#1#0#0: int;
  var b#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var a#Z#0: real;
  var let#3#0#0: real;
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#4#0#0: DatatypeType;
  var dt_update#1#0#Z#0: int;
  var let#5#0#0: int;

    // AddMethodImpl: TestSingletons, Impl$$_module.__default.TestSingletons
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(84,10)
    assume true;
    assume _module.__default.Singleton0#canCall();
    assume _System.Tuple2GO.___hMake2_q(Lit(_module.__default.Singleton0()));
    assume _module.__default.Singleton0#canCall();
    s0#0 := Lit(_module.__default.Singleton0());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(85,10)
    assume true;
    assume _module.__default.Singleton1#canCall();
    assume _System.Tuple2OG.___hMake2_q(Lit(_module.__default.Singleton1()));
    assume _module.__default.Singleton1#canCall();
    s1#0 := Lit(_module.__default.Singleton1());
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(86,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(87,10)
    assume true;
    assume _module.__default.Singleton2#canCall();
    assume _System.Tuple4GGOG.___hMake4_q(Lit(_module.__default.Singleton2()));
    assume _module.__default.Singleton2#canCall();
    s2#0 := Lit(_module.__default.Singleton2());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(88,9)
    assume true;
    assume true;
    c#0 := _module.__default.SingletonConst();
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(89,9)
    assume true;
    assume _System.Tuple2GO.___hMake2_q(s0#0);
    assume _System.Tuple2OG.___hMake2_q(s1#0);
    if ($Unbox(_System.Tuple2GO._1(s0#0)): real
       == $Unbox(_System.Tuple2OG._0(s1#0)): real)
    {
    }
    else
    {
    }

    assume _System.Tuple4GGOG.___hMake4_q(s2#0);
    assume _System.Tuple2OG.___hMake2_q(c#0);
    assume _System.Tuple2GO.___hMake2_q(s0#0)
       && _System.Tuple2OG.___hMake2_q(s1#0)
       && _System.Tuple4GGOG.___hMake4_q(s2#0)
       && _System.Tuple2OG.___hMake2_q(c#0);
    u#0 := (if $Unbox(_System.Tuple2GO._1(s0#0)): real
           == $Unbox(_System.Tuple2OG._0(s1#0)): real
         then 1100
         else 1099)
       + $Unbox(_System.Tuple4GGOG._2(s2#0)): int
       + $Unbox(_System.Tuple2OG._0(c#0)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(90,3)
    assume true;
    assert {:id "id70"} u#0 == LitInt(1212);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(91,5)
    assume true;
    assume _System.Tuple2GO.___hMake2_q(s0#0);
    assume _System.Tuple4GGOG.___hMake4_q(s2#0);
    assume _System.Tuple2GO.___hMake2_q(s0#0) && _System.Tuple4GGOG.___hMake4_q(s2#0);
    r#0 := #_System._tuple#4GOGG._#Make4($Box(u#0 + 50), 
      $Box(u#0), 
      _System.Tuple2GO._1(s0#0), 
      _System.Tuple4GGOG._0(s2#0));
    havoc x#0;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0, _mcc#3#0_0;
    if (s2#0
       == #_System._tuple#4GGOG._#Make4($Box(_mcc#0#0_0), $Box(_mcc#1#0_0), $Box(_mcc#2#0_0), $Box(_mcc#3#0_0)))
    {
        assume $Is(_mcc#1#0_0, Tclass._System.Tuple0())
           && $IsAlloc(_mcc#1#0_0, Tclass._System.Tuple0(), $Heap);
        assume $Is(_mcc#3#0_0, TChar);
        havoc d#0_0;
        assume $Is(d#0_0, TChar);
        assume {:id "id72"} let#0_0#0#0 == _mcc#3#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, TChar);
        assume {:id "id73"} d#0_0 == let#0_0#0#0;
        havoc c#0_0;
        assume {:id "id74"} let#0_1#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id75"} c#0_0 == let#0_1#0#0;
        havoc b#0_0;
        assume $Is(b#0_0, Tclass._System.Tuple0())
           && $IsAlloc(b#0_0, Tclass._System.Tuple0(), $Heap);
        assume {:id "id76"} let#0_2#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, Tclass._System.Tuple0());
        assume {:id "id77"} b#0_0 == let#0_2#0#0;
        havoc a#0_0;
        assume {:id "id78"} let#0_3#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_3#0#0, TReal);
        assume {:id "id79"} a#0_0 == let#0_3#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(95,28)
        assume true;
        assume true;
        x#0 := c#0_0;
    }
    else
    {
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(97,5)
    assume true;
    if (s2#0
       == #_System._tuple#4GGOG._#Make4($Box(_mcc#4#0), $Box(_mcc#5#0), $Box(_mcc#6#0), $Box(_mcc#7#0)))
    {
        assume $Is(_mcc#5#0, Tclass._System.Tuple0());
        assume $Is(_mcc#7#0, TChar);
        havoc d#Z#0;
        assume {:id "id81"} let#0#0#0 == _mcc#7#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TChar);
        assume {:id "id82"} d#Z#0 == let#0#0#0;
        havoc c#Z#0;
        assume {:id "id83"} let#1#0#0 == _mcc#6#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1#0#0, TInt);
        assume {:id "id84"} c#Z#0 == let#1#0#0;
        havoc b#Z#0;
        assume {:id "id85"} let#2#0#0 == _mcc#5#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2#0#0, Tclass._System.Tuple0());
        assume {:id "id86"} b#Z#0 == let#2#0#0;
        havoc a#Z#0;
        assume {:id "id87"} let#3#0#0 == _mcc#4#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#3#0#0, TReal);
        assume {:id "id88"} a#Z#0 == let#3#0#0;
    }
    else
    {
        assume false;
    }

    assume _System.Tuple4GGOG.___hMake4_q(s2#0)
       && 
      _System.Tuple4GGOG.___hMake4_q(s2#0)
       && 
      _System.Tuple4GGOG.___hMake4_q(s2#0)
       && _System.Tuple4GGOG.___hMake4_q(s2#0);
    x#0 := x#0
       + (var d#0 := $Unbox(_System.Tuple4GGOG._3(s2#0)): char; 
        (var c#1 := $Unbox(_System.Tuple4GGOG._2(s2#0)): int; 
          (var b#0 := $Unbox(_System.Tuple4GGOG._1(s2#0)): DatatypeType; 
            (var a#0 := $Unbox(_System.Tuple4GGOG._0(s2#0)): real; 1 - c#1))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(98,3)
    assume true;
    assert {:id "id90"} x#0 == LitInt(1);
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(100,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(100,3)
    assume true;
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id91"} let#4#0#0 == r#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#4#0#0, Tclass._System.Tuple4GOGG(TInt, TInt, TReal, TReal));
    assume {:id "id92"} dt_update_tmp#0#Z#0 == let#4#0#0;
    havoc dt_update#1#0#Z#0;
    assume _System.Tuple4GOGG.___hMake4_q(r#0);
    assume {:id "id93"} let#5#0#0 == $Unbox(_System.Tuple4GOGG._1(r#0)): int + x#0;
    assume _System.Tuple4GOGG.___hMake4_q(r#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#5#0#0, TInt);
    assume {:id "id94"} dt_update#1#0#Z#0 == let#5#0#0;
    assume _System.Tuple4GOGG.___hMake4_q(dt_update_tmp#0#Z#0);
    assume _System.Tuple4GOGG.___hMake4_q(dt_update_tmp#0#Z#0);
    assume _System.Tuple4GOGG.___hMake4_q(dt_update_tmp#0#Z#0);
    assume (var dt_update_tmp#0#0 := r#0; 
      _System.Tuple4GOGG.___hMake4_q(r#0)
         && 
        _System.Tuple4GOGG.___hMake4_q(dt_update_tmp#0#0)
         && _System.Tuple4GOGG.___hMake4_q(dt_update_tmp#0#0)
         && _System.Tuple4GOGG.___hMake4_q(dt_update_tmp#0#0));
    r#0 := (var dt_update_tmp#0#0 := r#0; 
      (var dt_update#1#0#0 := $Unbox(_System.Tuple4GOGG._1(r#0)): int + x#0; 
        #_System._tuple#4GOGG._#Make4(_System.Tuple4GOGG._0(dt_update_tmp#0#0), 
          $Box(dt_update#1#0#0), 
          _System.Tuple4GOGG._2(dt_update_tmp#0#0), 
          _System.Tuple4GOGG._3(dt_update_tmp#0#0))));
    return;
}



// function declaration for _module._default.Singleton0
function _module.__default.Singleton0() : DatatypeType
uses {
// consequence axiom for _module.__default.Singleton0
axiom 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton0#canCall() || 0 < $FunctionContextHeight
   ==> $Is(_module.__default.Singleton0(), Tclass._System.Tuple2GO(TInt, TReal));
// definition axiom for _module.__default.Singleton0 (revealed)
axiom {:id "id96"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton0#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.Singleton0()
     == Lit(#_System._tuple#2GO._#Make2($Box(LitInt(2)), $Box(LitReal(32e-1))));
// definition axiom for _module.__default.Singleton0 for all literals (revealed)
axiom {:id "id97"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton0#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.Singleton0()
     == Lit(#_System._tuple#2GO._#Make2($Box(LitInt(2)), $Box(LitReal(32e-1))));
}

function _module.__default.Singleton0#canCall() : bool;

function _module.__default.Singleton0#requires() : bool
uses {
// #requires axiom for _module.__default.Singleton0
axiom _module.__default.Singleton0#requires() == true;
}

procedure {:verboseName "Singleton0 (well-formedness)"} CheckWellformed$$_module.__default.Singleton0();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Singleton1
function _module.__default.Singleton1() : DatatypeType
uses {
// consequence axiom for _module.__default.Singleton1
axiom 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton1#canCall() || 0 < $FunctionContextHeight
   ==> $Is(_module.__default.Singleton1(), Tclass._System.Tuple2OG(TReal, TInt));
// definition axiom for _module.__default.Singleton1 (revealed)
axiom {:id "id99"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton1#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.Singleton1()
     == Lit(#_System._tuple#2OG._#Make2($Box(LitReal(32e-1)), $Box(LitInt(2))));
// definition axiom for _module.__default.Singleton1 for all literals (revealed)
axiom {:id "id100"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton1#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.Singleton1()
     == Lit(#_System._tuple#2OG._#Make2($Box(LitReal(32e-1)), $Box(LitInt(2))));
}

function _module.__default.Singleton1#canCall() : bool;

function _module.__default.Singleton1#requires() : bool
uses {
// #requires axiom for _module.__default.Singleton1
axiom _module.__default.Singleton1#requires() == true;
}

procedure {:verboseName "Singleton1 (well-formedness)"} CheckWellformed$$_module.__default.Singleton1();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Singleton2
function _module.__default.Singleton2() : DatatypeType
uses {
// consequence axiom for _module.__default.Singleton2
axiom 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton2#canCall() || 0 < $FunctionContextHeight
   ==> $Is(_module.__default.Singleton2(), 
    Tclass._System.Tuple4GGOG(TReal, Tclass._System.Tuple0(), TInt, TChar));
// definition axiom for _module.__default.Singleton2 (revealed)
axiom {:id "id102"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton2#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.Singleton2()
     == Lit(#_System._tuple#4GGOG._#Make4($Box(LitReal(5e0)), 
        $Box(Lit(#_System._tuple#0._#Make0())), 
        $Box(LitInt(100)), 
        $Box(Lit(char#FromInt(68)))));
// definition axiom for _module.__default.Singleton2 for all literals (revealed)
axiom {:id "id103"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.Singleton2#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.Singleton2()
     == Lit(#_System._tuple#4GGOG._#Make4($Box(LitReal(5e0)), 
        $Box(Lit(#_System._tuple#0._#Make0())), 
        $Box(LitInt(100)), 
        $Box(Lit(char#FromInt(68)))));
}

function _module.__default.Singleton2#canCall() : bool;

function _module.__default.Singleton2#requires() : bool
uses {
// #requires axiom for _module.__default.Singleton2
axiom _module.__default.Singleton2#requires() == true;
}

procedure {:verboseName "Singleton2 (well-formedness)"} CheckWellformed$$_module.__default.Singleton2();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SingletonConst (well-formedness)"} CheckWellFormed$$_module.__default.SingletonConst();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// _default.SingletonConst: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.__default.SingletonConst(), Tclass._System.Tuple2OG(TInt, TInt), $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.__default.SingletonConst(), Tclass._System.Tuple2OG(TInt, TInt), $h));

procedure {:verboseName "MoreSingletonTests (well-formedness)"} CheckWellFormed$$_module.__default.MoreSingletonTests();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreSingletonTests (call)"} Call$$_module.__default.MoreSingletonTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MoreSingletonTests (correctness)"} Impl$$_module.__default.MoreSingletonTests() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.SX3() : Ty
uses {
// Tclass._module.SX3 Tag
axiom Tag(Tclass._module.SX3()) == Tagclass._module.SX3
   && TagFamily(Tclass._module.SX3()) == tytagFamily$SX3;
}

const unique Tagclass._module.SX3: TyTag;

// Box/unbox axiom for Tclass._module.SX3
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SX3()) } 
  $IsBox(bx, Tclass._module.SX3())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.SX3()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MoreSingletonTests (correctness)"} Impl$$_module.__default.MoreSingletonTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var r#0: DatatypeType
     where $Is(r#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
       && $IsAlloc(r#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap);
  var arr#0: ref
     where $Is(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)))
       && $IsAlloc(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)), $Heap);
  var $nw: ref;
  var $rhs#0: DatatypeType;
  var g##0: DatatypeType;
  var arr##0: ref;
  var t##0: DatatypeType;
  var arr##1: ref;
  var t##1: DatatypeType;
  var sx2#0: DatatypeType
     where $Is(sx2#0, 
        Tclass._System.Tuple2OG(Tclass._System.Tuple3GOG(TInt, TInt, TInt), TReal))
       && $IsAlloc(sx2#0, 
        Tclass._System.Tuple2OG(Tclass._System.Tuple3GOG(TInt, TInt, TInt), TReal), 
        $Heap);
  var arr2#0: ref
     where $Is(arr2#0, 
        Tclass._System.array(Tclass._System.Tuple2OG(Tclass._System.Tuple3GOG(TInt, TInt, TInt), TReal)))
       && $IsAlloc(arr2#0, 
        Tclass._System.array(Tclass._System.Tuple2OG(Tclass._System.Tuple3GOG(TInt, TInt, TInt), TReal)), 
        $Heap);
  var arr##2: ref;
  var t##2: DatatypeType;
  var sx3#0: DatatypeType
     where $Is(sx3#0, Tclass._module.SX3()) && $IsAlloc(sx3#0, Tclass._module.SX3(), $Heap);
  var arr3#0: ref
     where $Is(arr3#0, Tclass._System.array(Tclass._module.SX3()))
       && $IsAlloc(arr3#0, Tclass._System.array(Tclass._module.SX3()), $Heap);
  var arr##3: ref;
  var t##3: DatatypeType;

    // AddMethodImpl: MoreSingletonTests, Impl$$_module.__default.MoreSingletonTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(122,9)
    assume true;
    assume true;
    r#0 := Lit(#_System._tuple#3GOG._#Make3($Box(LitInt(2)), $Box(LitInt(3)), $Box(LitInt(4))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(123,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(124,11)
    assume true;
    assert {:id "id106"} 0 <= LitInt(20);
    havoc $nw;
    assume $nw != null
       && $Is($nw, Tclass._System.array?(Tclass._System.Tuple3GOG(TInt, TInt, TInt)));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(20);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    arr#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(125,10)
    assert {:id "id108"} arr#0 != null;
    assert {:id "id109"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(arr#0);
    assume true;
    assert {:id "id110"} $_ModifiesFrame[arr#0, IndexField(LitInt(3))];
    assume true;
    $rhs#0 := Lit(#_System._tuple#3GOG._#Make3($Box(LitInt(200)), $Box(LitInt(100)), $Box(LitInt(400))));
    $Heap := update($Heap, arr#0, IndexField(LitInt(3)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(126,13)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id113"} arr#0 != null;
    assert {:id "id114"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(arr#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    g##0 := $Unbox(read($Heap, arr#0, IndexField(LitInt(3)))): DatatypeType;
    call {:id "id115"} Call$$_module.__default.PrintOneSx(g##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(127,3)
    assert {:id "id116"} arr#0 != null;
    assert {:id "id117"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(arr#0);
    assume true;
    assume true;
    assert {:id "id118"} arr#0 != null;
    assert {:id "id119"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(arr#0);
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(128,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    arr##0 := arr#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := Lit(#_System._tuple#3GOG._#Make3($Box(LitInt(99)), $Box(LitInt(9)), $Box(LitInt(999))));
    assert {:id "id120"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == arr##0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id121"} Call$$_module.__default.UpdateArray(Tclass._System.Tuple3GOG(TInt, TInt, TInt), arr##0, $Box(t##0));
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(129,3)
    assert {:id "id122"} arr#0 != null;
    assert {:id "id123"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(arr#0);
    assume true;
    assume true;
    assert {:id "id124"} arr#0 != null;
    assert {:id "id125"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(arr#0);
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(130,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    arr##1 := arr#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##1 := Lit(#_System._tuple#3GOG._#Make3($Box(LitInt(99)), $Box(LitInt(19)), $Box(LitInt(999))));
    assert {:id "id126"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == arr##1
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id127"} Call$$_module.__default.UpdateSxArray(arr##1, t##1);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(131,3)
    assert {:id "id128"} arr#0 != null;
    assert {:id "id129"} {:subsumption 0} 0 <= LitInt(4) && LitInt(4) < _System.array.Length(arr#0);
    assume true;
    assume true;
    assert {:id "id130"} arr#0 != null;
    assert {:id "id131"} {:subsumption 0} 0 <= LitInt(5) && LitInt(5) < _System.array.Length(arr#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(133,11)
    assume true;
    assert {:id "id132"} arr#0 != null;
    assert {:id "id133"} 0 <= LitInt(5) && LitInt(5) < _System.array.Length(arr#0);
    assume true;
    sx2#0 := #_System._tuple#2OG._#Make2(read($Heap, arr#0, IndexField(LitInt(5))), $Box(LitReal(2e0)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(134,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(135,12)
    assume true;
    assert {:id "id135"} 0 <= LitInt(20);
    havoc $nw;
    assume $nw != null
       && $Is($nw, 
        Tclass._System.array?(Tclass._System.Tuple2OG(Tclass._System.Tuple3GOG(TInt, TInt, TInt), TReal)));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(20);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    arr2#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(136,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    arr##2 := arr2#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##2 := Lit(#_System._tuple#2OG._#Make2($Box(Lit(#_System._tuple#3GOG._#Make3($Box(LitInt(5)), $Box(LitInt(15)), $Box(LitInt(25))))), 
        $Box(LitReal(3e0))));
    assert {:id "id137"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == arr##2
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id138"} Call$$_module.__default.UpdateArray(Tclass._System.Tuple2OG(Tclass._System.Tuple3GOG(TInt, TInt, TInt), TReal), arr##2, $Box(t##2));
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(137,3)
    assert {:id "id139"} arr2#0 != null;
    assert {:id "id140"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(arr2#0);
    assume true;
    assume true;
    assert {:id "id141"} arr2#0 != null;
    assert {:id "id142"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(arr2#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(139,11)
    assume true;
    assert {:id "id143"} arr#0 != null;
    assert {:id "id144"} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(arr#0);
    assume true;
    sx3#0 := #_module.SX3.SX3($Unbox(read($Heap, arr#0, IndexField(LitInt(2)))): DatatypeType, LitReal(4e0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(140,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(141,12)
    assume true;
    assert {:id "id146"} 0 <= LitInt(20);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._module.SX3()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(20);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    arr3#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(142,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    arr##3 := arr3#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##3 := sx3#0;
    assert {:id "id148"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == arr##3
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id149"} Call$$_module.__default.UpdateArray(Tclass._module.SX3(), arr##3, $Box(t##3));
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(143,3)
    assert {:id "id150"} arr3#0 != null;
    assert {:id "id151"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(arr3#0);
    assume true;
    assume true;
    assert {:id "id152"} arr3#0 != null;
    assert {:id "id153"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(arr3#0);
    assume true;
    assume true;
}



procedure {:verboseName "PrintOneSx (well-formedness)"} CheckWellFormed$$_module.__default.PrintOneSx(g#0: DatatypeType
       where $Is(g#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
         && $IsAlloc(g#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3GOG(g#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintOneSx (call)"} Call$$_module.__default.PrintOneSx(g#0: DatatypeType
       where $Is(g#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
         && $IsAlloc(g#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3GOG(g#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintOneSx (correctness)"} Impl$$_module.__default.PrintOneSx(g#0: DatatypeType
       where $Is(g#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
         && $IsAlloc(g#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3GOG(g#0))
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



procedure {:verboseName "UpdateArray (well-formedness)"} CheckWellFormed$$_module.__default.UpdateArray(_module._default.UpdateArray$T: Ty, 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(_module._default.UpdateArray$T))
         && $IsAlloc(arr#0, Tclass._System.array(_module._default.UpdateArray$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module._default.UpdateArray$T)
         && $IsAllocBox(t#0, _module._default.UpdateArray$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateArray (well-formedness)"} CheckWellFormed$$_module.__default.UpdateArray(_module._default.UpdateArray$T: Ty, arr#0: ref, t#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: UpdateArray, CheckWellFormed$$_module.__default.UpdateArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == arr#0);
    assert {:id "id154"} arr#0 != null;
    assume {:id "id155"} LitInt(10) <= _System.array.Length(arr#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == arr#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "UpdateArray (call)"} Call$$_module.__default.UpdateArray(_module._default.UpdateArray$T: Ty, 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(_module._default.UpdateArray$T))
         && $IsAlloc(arr#0, Tclass._System.array(_module._default.UpdateArray$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module._default.UpdateArray$T)
         && $IsAllocBox(t#0, _module._default.UpdateArray$T, $Heap));
  // user-defined preconditions
  requires {:id "id156"} LitInt(10) <= _System.array.Length(arr#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == arr#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateArray (correctness)"} Impl$$_module.__default.UpdateArray(_module._default.UpdateArray$T: Ty, 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(_module._default.UpdateArray$T))
         && $IsAlloc(arr#0, Tclass._System.array(_module._default.UpdateArray$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module._default.UpdateArray$T)
         && $IsAllocBox(t#0, _module._default.UpdateArray$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id157"} LitInt(10) <= _System.array.Length(arr#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == arr#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateArray (correctness)"} Impl$$_module.__default.UpdateArray(_module._default.UpdateArray$T: Ty, arr#0: ref, t#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var tt#0: Box
     where $IsBox(tt#0, _module._default.UpdateArray$T)
       && $IsAllocBox(tt#0, _module._default.UpdateArray$T, $Heap);
  var $rhs#0: Box;
  var $rhs#1: Box;

    // AddMethodImpl: UpdateArray, Impl$$_module.__default.UpdateArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == arr#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(154,13)
    assume true;
    havoc tt#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(155,10)
    assert {:id "id158"} arr#0 != null;
    assert {:id "id159"} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(arr#0);
    assume true;
    assert {:id "id160"} $_ModifiesFrame[arr#0, IndexField(LitInt(1))];
    assume true;
    $rhs#0 := tt#0;
    $Heap := update($Heap, arr#0, IndexField(LitInt(1)), $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(156,10)
    assert {:id "id163"} arr#0 != null;
    assert {:id "id164"} 0 <= LitInt(2) && LitInt(2) < _System.array.Length(arr#0);
    assume true;
    assert {:id "id165"} $_ModifiesFrame[arr#0, IndexField(LitInt(2))];
    assume true;
    $rhs#1 := t#0;
    $Heap := update($Heap, arr#0, IndexField(LitInt(2)), $rhs#1);
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "UpdateSxArray (well-formedness)"} CheckWellFormed$$_module.__default.UpdateSxArray(arr#0: ref
       where $Is(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)))
         && $IsAlloc(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)), $Heap), 
    t#0: DatatypeType
       where $Is(t#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
         && $IsAlloc(t#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3GOG(t#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateSxArray (well-formedness)"} CheckWellFormed$$_module.__default.UpdateSxArray(arr#0: ref, t#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: UpdateSxArray, CheckWellFormed$$_module.__default.UpdateSxArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == arr#0);
    assert {:id "id168"} arr#0 != null;
    assume {:id "id169"} LitInt(10) <= _System.array.Length(arr#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == arr#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "UpdateSxArray (call)"} Call$$_module.__default.UpdateSxArray(arr#0: ref
       where $Is(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)))
         && $IsAlloc(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)), $Heap), 
    t#0: DatatypeType
       where $Is(t#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
         && $IsAlloc(t#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3GOG(t#0));
  // user-defined preconditions
  requires {:id "id170"} LitInt(10) <= _System.array.Length(arr#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == arr#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateSxArray (correctness)"} Impl$$_module.__default.UpdateSxArray(arr#0: ref
       where $Is(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)))
         && $IsAlloc(arr#0, Tclass._System.array(Tclass._System.Tuple3GOG(TInt, TInt, TInt)), $Heap), 
    t#0: DatatypeType
       where $Is(t#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
         && $IsAlloc(t#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap)
         && $IsA#_System.Tuple3GOG(t#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id171"} LitInt(10) <= _System.array.Length(arr#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == arr#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpdateSxArray (correctness)"} Impl$$_module.__default.UpdateSxArray(arr#0: ref, t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var tt#0: DatatypeType
     where $Is(tt#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt))
       && $IsAlloc(tt#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt), $Heap);
  var $rhs#0: DatatypeType;
  var $rhs#1: DatatypeType;

    // AddMethodImpl: UpdateSxArray, Impl$$_module.__default.UpdateSxArray
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == arr#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(163,14)
    assume true;
    havoc tt#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(164,10)
    assert {:id "id172"} arr#0 != null;
    assert {:id "id173"} 0 <= LitInt(4) && LitInt(4) < _System.array.Length(arr#0);
    assume true;
    assert {:id "id174"} $_ModifiesFrame[arr#0, IndexField(LitInt(4))];
    assume true;
    $rhs#0 := tt#0;
    $Heap := update($Heap, arr#0, IndexField(LitInt(4)), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/ghost/Comp.dfy(165,10)
    assert {:id "id177"} arr#0 != null;
    assert {:id "id178"} 0 <= LitInt(5) && LitInt(5) < _System.array.Length(arr#0);
    assume true;
    assert {:id "id179"} $_ModifiesFrame[arr#0, IndexField(LitInt(5))];
    assume true;
    $rhs#1 := t#0;
    $Heap := update($Heap, arr#0, IndexField(LitInt(5)), $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



// Constructor function declaration
function #_module.PhantomData.PhantomData(Box) : DatatypeType;

const unique ##_module.PhantomData.PhantomData: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box :: 
  { #_module.PhantomData.PhantomData(a#0#0#0) } 
  DatatypeCtorId(#_module.PhantomData.PhantomData(a#0#0#0))
     == ##_module.PhantomData.PhantomData);
}

function _module.PhantomData.PhantomData_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.PhantomData.PhantomData_q(d) } 
  _module.PhantomData.PhantomData_q(d)
     <==> DatatypeCtorId(d) == ##_module.PhantomData.PhantomData);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.PhantomData.PhantomData_q(d) } 
  _module.PhantomData.PhantomData_q(d)
     ==> (exists a#1#0#0: Box :: d == #_module.PhantomData.PhantomData(a#1#0#0)));

// Constructor $Is
axiom (forall _module.PhantomData$T: Ty, a#2#0#0: Box :: 
  { $Is(#_module.PhantomData.PhantomData(a#2#0#0), 
      Tclass._module.PhantomData(_module.PhantomData$T)) } 
  $Is(#_module.PhantomData.PhantomData(a#2#0#0), 
      Tclass._module.PhantomData(_module.PhantomData$T))
     <==> $IsBox(a#2#0#0, _module.PhantomData$T));

// Constructor $IsAlloc
axiom (forall _module.PhantomData$T: Ty, a#2#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.PhantomData.PhantomData(a#2#0#0), 
      Tclass._module.PhantomData(_module.PhantomData$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.PhantomData.PhantomData(a#2#0#0), 
        Tclass._module.PhantomData(_module.PhantomData$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.PhantomData$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.PhantomData$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.PhantomData.value(d), _module.PhantomData$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.PhantomData.PhantomData_q(d)
       && $IsAlloc(d, Tclass._module.PhantomData(_module.PhantomData$T), $h)
     ==> $IsAllocBox(_module.PhantomData.value(d), _module.PhantomData$T, $h));

// Constructor literal
axiom (forall a#3#0#0: Box :: 
  { #_module.PhantomData.PhantomData(Lit(a#3#0#0)) } 
  #_module.PhantomData.PhantomData(Lit(a#3#0#0))
     == Lit(#_module.PhantomData.PhantomData(a#3#0#0)));

function _module.PhantomData.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box :: 
  { #_module.PhantomData.PhantomData(a#4#0#0) } 
  _module.PhantomData.value(#_module.PhantomData.PhantomData(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box :: 
  { #_module.PhantomData.PhantomData(a#5#0#0) } 
  BoxRank(a#5#0#0) < DtRank(#_module.PhantomData.PhantomData(a#5#0#0)));

// Depth-one case-split function
function $IsA#_module.PhantomData(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.PhantomData(d) } 
  $IsA#_module.PhantomData(d) ==> _module.PhantomData.PhantomData_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.PhantomData$T: Ty, d: DatatypeType :: 
  { _module.PhantomData.PhantomData_q(d), $Is(d, Tclass._module.PhantomData(_module.PhantomData$T)) } 
  $Is(d, Tclass._module.PhantomData(_module.PhantomData$T))
     ==> _module.PhantomData.PhantomData_q(d));

// Datatype extensional equality declaration
function _module.PhantomData#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.PhantomData.PhantomData
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PhantomData#Equal(a, b) } 
  _module.PhantomData#Equal(a, b)
     <==> _module.PhantomData.value(a) == _module.PhantomData.value(b));

// Datatype extensionality axiom: _module.PhantomData
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PhantomData#Equal(a, b) } 
  _module.PhantomData#Equal(a, b) <==> a == b);

const unique class._module.PhantomData: ClassName;

// Constructor function declaration
function #_module.SX3.SX3(DatatypeType, real) : DatatypeType;

const unique ##_module.SX3.SX3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#6#0#0: DatatypeType, a#6#1#0: real :: 
  { #_module.SX3.SX3(a#6#0#0, a#6#1#0) } 
  DatatypeCtorId(#_module.SX3.SX3(a#6#0#0, a#6#1#0)) == ##_module.SX3.SX3);
}

function _module.SX3.SX3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.SX3.SX3_q(d) } 
  _module.SX3.SX3_q(d) <==> DatatypeCtorId(d) == ##_module.SX3.SX3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.SX3.SX3_q(d) } 
  _module.SX3.SX3_q(d)
     ==> (exists a#7#0#0: DatatypeType, a#7#1#0: real :: 
      d == #_module.SX3.SX3(a#7#0#0, a#7#1#0)));

// Constructor $Is
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: real :: 
  { $Is(#_module.SX3.SX3(a#8#0#0, a#8#1#0), Tclass._module.SX3()) } 
  $Is(#_module.SX3.SX3(a#8#0#0, a#8#1#0), Tclass._module.SX3())
     <==> $Is(a#8#0#0, Tclass._System.Tuple3GOG(TInt, TInt, TInt)) && $Is(a#8#1#0, TReal));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.SX3.a(d), Tclass._System.Tuple3GOG(TInt, TInt, TInt), $h) } 
  $IsGoodHeap($h) && _module.SX3.SX3_q(d) && $IsAlloc(d, Tclass._module.SX3(), $h)
     ==> $IsAlloc(_module.SX3.a(d), Tclass._System.Tuple3GOG(TInt, TInt, TInt), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.SX3.b(d), TReal, $h) } 
  $IsGoodHeap($h) && _module.SX3.SX3_q(d) && $IsAlloc(d, Tclass._module.SX3(), $h)
     ==> $IsAlloc(_module.SX3.b(d), TReal, $h));

// Constructor literal
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: real :: 
  { #_module.SX3.SX3(Lit(a#9#0#0), LitReal(a#9#1#0)) } 
  #_module.SX3.SX3(Lit(a#9#0#0), LitReal(a#9#1#0))
     == Lit(#_module.SX3.SX3(a#9#0#0, a#9#1#0)));

function _module.SX3.a(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: real :: 
  { #_module.SX3.SX3(a#10#0#0, a#10#1#0) } 
  _module.SX3.a(#_module.SX3.SX3(a#10#0#0, a#10#1#0)) == a#10#0#0);

// Inductive rank
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: real :: 
  { #_module.SX3.SX3(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#0#0) < DtRank(#_module.SX3.SX3(a#11#0#0, a#11#1#0)));

function _module.SX3.b(DatatypeType) : real;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: real :: 
  { #_module.SX3.SX3(a#12#0#0, a#12#1#0) } 
  _module.SX3.b(#_module.SX3.SX3(a#12#0#0, a#12#1#0)) == a#12#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.SX3(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.SX3())
     ==> $IsAlloc(d, Tclass._module.SX3(), $h));

// Depth-one case-split function
function $IsA#_module.SX3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.SX3(d) } 
  $IsA#_module.SX3(d) ==> _module.SX3.SX3_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.SX3.SX3_q(d), $Is(d, Tclass._module.SX3()) } 
  $Is(d, Tclass._module.SX3()) ==> _module.SX3.SX3_q(d));

// Datatype extensional equality declaration
function _module.SX3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.SX3.SX3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.SX3#Equal(a, b) } 
  _module.SX3#Equal(a, b)
     <==> _System.Tuple3GOG#Equal(_module.SX3.a(a), _module.SX3.a(b))
       && _module.SX3.b(a) == _module.SX3.b(b));

// Datatype extensionality axiom: _module.SX3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.SX3#Equal(a, b) } 
  _module.SX3#Equal(a, b) <==> a == b);

const unique class._module.SX3: ClassName;

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

const unique tytagFamily$_tuple#1G: TyTagFamily;

const unique tytagFamily$_tuple#2GO: TyTagFamily;

const unique tytagFamily$_tuple#3OGO: TyTagFamily;

const unique tytagFamily$_tuple#3OOG: TyTagFamily;

const unique tytagFamily$_tuple#4GGOO: TyTagFamily;

const unique tytagFamily$_tuple#3GGO: TyTagFamily;

const unique tytagFamily$_tuple#1: TyTagFamily;

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$_tuple#4: TyTagFamily;

const unique tytagFamily$_tuple#4GOGG: TyTagFamily;

const unique tytagFamily$_tuple#2OG: TyTagFamily;

const unique tytagFamily$_tuple#4GGOG: TyTagFamily;

const unique tytagFamily$_tuple#3GOG: TyTagFamily;

const unique tytagFamily$PhantomData: TyTagFamily;

const unique tytagFamily$SX3: TyTagFamily;

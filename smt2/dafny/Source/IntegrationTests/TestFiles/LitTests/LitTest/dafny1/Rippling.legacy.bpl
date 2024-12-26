// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.not
function _module.__default.not(b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.not
axiom 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.not(b#0) } 
    _module.__default.not#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.not(b#0), Tclass._module.Bool()));
// definition axiom for _module.__default.not (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.not(b#0) } 
    _module.__default.not#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Bool()))
       ==> _module.__default.not(b#0)
         == (if _module.Bool.False_q(b#0)
           then #_module.Bool.True()
           else #_module.Bool.False()));
// definition axiom for _module.__default.not for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    {:weight 3} { _module.__default.not(Lit(b#0)) } 
    _module.__default.not#canCall(Lit(b#0))
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Bool()))
       ==> _module.__default.not(Lit(b#0))
         == (if _module.Bool.False_q(Lit(b#0))
           then #_module.Bool.True()
           else #_module.Bool.False()));
}

function _module.__default.not#canCall(b#0: DatatypeType) : bool;

function Tclass._module.Bool() : Ty
uses {
// Tclass._module.Bool Tag
axiom Tag(Tclass._module.Bool()) == Tagclass._module.Bool
   && TagFamily(Tclass._module.Bool()) == tytagFamily$Bool;
}

const unique Tagclass._module.Bool: TyTag;

// Box/unbox axiom for Tclass._module.Bool
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Bool()) } 
  $IsBox(bx, Tclass._module.Bool())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Bool()));

function _module.__default.not#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.not
axiom (forall b#0: DatatypeType :: 
  { _module.__default.not#requires(b#0) } 
  $Is(b#0, Tclass._module.Bool()) ==> _module.__default.not#requires(b#0) == true);

procedure {:verboseName "not (well-formedness)"} CheckWellformed$$_module.__default.not(b#0: DatatypeType where $Is(b#0, Tclass._module.Bool()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.and
function _module.__default.and(a#0: DatatypeType, b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.and
axiom 1 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.and(a#0, b#0) } 
    _module.__default.and#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Bool())
           && $Is(b#0, Tclass._module.Bool()))
       ==> $Is(_module.__default.and(a#0, b#0), Tclass._module.Bool()));
// definition axiom for _module.__default.and (revealed)
axiom {:id "id4"} 1 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.and(a#0, b#0) } 
    _module.__default.and#canCall(a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Bool())
           && $Is(b#0, Tclass._module.Bool()))
       ==> $IsA#_module.Bool(a#0)
         && (_module.Bool#Equal(a#0, #_module.Bool.True()) ==> $IsA#_module.Bool(b#0))
         && _module.__default.and(a#0, b#0)
           == (if _module.Bool#Equal(a#0, #_module.Bool.True())
               && _module.Bool#Equal(b#0, #_module.Bool.True())
             then #_module.Bool.True()
             else #_module.Bool.False()));
// definition axiom for _module.__default.and for all literals (revealed)
axiom {:id "id5"} 1 <= $FunctionContextHeight
   ==> (forall a#0: DatatypeType, b#0: DatatypeType :: 
    {:weight 3} { _module.__default.and(Lit(a#0), Lit(b#0)) } 
    _module.__default.and#canCall(Lit(a#0), Lit(b#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.Bool())
           && $Is(b#0, Tclass._module.Bool()))
       ==> $IsA#_module.Bool(Lit(a#0))
         && (_module.Bool#Equal(a#0, #_module.Bool.True()) ==> $IsA#_module.Bool(Lit(b#0)))
         && _module.__default.and(Lit(a#0), Lit(b#0))
           == (if _module.Bool#Equal(a#0, #_module.Bool.True())
               && _module.Bool#Equal(b#0, #_module.Bool.True())
             then #_module.Bool.True()
             else #_module.Bool.False()));
}

function _module.__default.and#canCall(a#0: DatatypeType, b#0: DatatypeType) : bool;

function _module.__default.and#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.and
axiom (forall a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.and#requires(a#0, b#0) } 
  $Is(a#0, Tclass._module.Bool()) && $Is(b#0, Tclass._module.Bool())
     ==> _module.__default.and#requires(a#0, b#0) == true);

procedure {:verboseName "and (well-formedness)"} CheckWellformed$$_module.__default.and(a#0: DatatypeType where $Is(a#0, Tclass._module.Bool()), 
    b#0: DatatypeType where $Is(b#0, Tclass._module.Bool()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.add
function _module.__default.add($ly: LayerType, x#0: DatatypeType, y#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.add
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.add($ly, x#0, y#0) } 
    _module.__default.add#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.add($ly, x#0, y#0), Tclass._module.Nat()));
// definition axiom for _module.__default.add (revealed)
axiom {:id "id8"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.add($LS($ly), x#0, y#0) } 
    _module.__default.add#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!_module.Nat.Zero_q(x#0)
           ==> (var w#1 := _module.Nat._h0(x#0); _module.__default.add#canCall(w#1, y#0)))
         && _module.__default.add($LS($ly), x#0, y#0)
           == (if _module.Nat.Zero_q(x#0)
             then y#0
             else (var w#0 := _module.Nat._h0(x#0); 
              #_module.Nat.Suc(_module.__default.add($ly, w#0, y#0)))));
// definition axiom for _module.__default.add for all literals (revealed)
axiom {:id "id9"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    {:weight 3} { _module.__default.add($LS($ly), Lit(x#0), Lit(y#0)) } 
    _module.__default.add#canCall(Lit(x#0), Lit(y#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(x#0)))
           ==> (var w#3 := Lit(_module.Nat._h0(Lit(x#0))); 
            _module.__default.add#canCall(w#3, Lit(y#0))))
         && _module.__default.add($LS($ly), Lit(x#0), Lit(y#0))
           == (if _module.Nat.Zero_q(Lit(x#0))
             then y#0
             else (var w#2 := Lit(_module.Nat._h0(Lit(x#0))); 
              Lit(#_module.Nat.Suc(Lit(_module.__default.add($LS($ly), w#2, Lit(y#0))))))));
}

function _module.__default.add#canCall(x#0: DatatypeType, y#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.add($LS($ly), x#0, y#0) } 
  _module.__default.add($LS($ly), x#0, y#0)
     == _module.__default.add($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.add(AsFuelBottom($ly), x#0, y#0) } 
  _module.__default.add($ly, x#0, y#0) == _module.__default.add($LZ, x#0, y#0));

function Tclass._module.Nat() : Ty
uses {
// Tclass._module.Nat Tag
axiom Tag(Tclass._module.Nat()) == Tagclass._module.Nat
   && TagFamily(Tclass._module.Nat()) == tytagFamily$Nat;
}

const unique Tagclass._module.Nat: TyTag;

// Box/unbox axiom for Tclass._module.Nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Nat()) } 
  $IsBox(bx, Tclass._module.Nat())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Nat()));

function _module.__default.add#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.add
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.add#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(y#0, Tclass._module.Nat())
     ==> _module.__default.add#requires($ly, x#0, y#0) == true);

procedure {:verboseName "add (well-formedness)"} CheckWellformed$$_module.__default.add(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    y#0: DatatypeType where $Is(y#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "add (well-formedness)"} CheckWellformed$$_module.__default.add(x#0: DatatypeType, y#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var w#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.add($LS($LZ), x#0, y#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (x#0 == #_module.Nat.Zero())
        {
            assume {:id "id14"} _module.__default.add($LS($LZ), x#0, y#0) == y#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.add($LS($LZ), x#0, y#0), Tclass._module.Nat());
            return;
        }
        else if (x#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc w#Z#0;
            assume {:id "id10"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id11"} w#Z#0 == let#0#0#0;
            ##x#0 := w#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
            ##y#0 := y#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
            assert {:id "id12"} DtRank(##x#0) < DtRank(x#0)
               || (DtRank(##x#0) == DtRank(x#0) && DtRank(##y#0) < DtRank(y#0));
            assume _module.__default.add#canCall(w#Z#0, y#0);
            assume {:id "id13"} _module.__default.add($LS($LZ), x#0, y#0)
               == #_module.Nat.Suc(_module.__default.add($LS($LZ), w#Z#0, y#0));
            assume _module.__default.add#canCall(w#Z#0, y#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.add($LS($LZ), x#0, y#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.minus
function _module.__default.minus($ly: LayerType, x#0: DatatypeType, y#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.minus
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.minus($ly, x#0, y#0) } 
    _module.__default.minus#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.minus($ly, x#0, y#0), Tclass._module.Nat()));
// definition axiom for _module.__default.minus (revealed)
axiom {:id "id15"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.minus($LS($ly), x#0, y#0) } 
    _module.__default.minus#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!_module.Nat.Zero_q(x#0)
           ==> (var a#1 := _module.Nat._h0(x#0); 
            !_module.Nat.Zero_q(y#0)
               ==> (var b#1 := _module.Nat._h0(y#0); _module.__default.minus#canCall(a#1, b#1))))
         && _module.__default.minus($LS($ly), x#0, y#0)
           == (if _module.Nat.Zero_q(x#0)
             then #_module.Nat.Zero()
             else (var a#0 := _module.Nat._h0(x#0); 
              (if _module.Nat.Zero_q(y#0)
                 then x#0
                 else (var b#0 := _module.Nat._h0(y#0); _module.__default.minus($ly, a#0, b#0))))));
// definition axiom for _module.__default.minus for all literals (revealed)
axiom {:id "id16"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    {:weight 3} { _module.__default.minus($LS($ly), Lit(x#0), Lit(y#0)) } 
    _module.__default.minus#canCall(Lit(x#0), Lit(y#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(x#0)))
           ==> (var a#3 := Lit(_module.Nat._h0(Lit(x#0))); 
            !Lit(_module.Nat.Zero_q(Lit(y#0)))
               ==> (var b#3 := Lit(_module.Nat._h0(Lit(y#0))); 
                _module.__default.minus#canCall(a#3, b#3))))
         && _module.__default.minus($LS($ly), Lit(x#0), Lit(y#0))
           == (if _module.Nat.Zero_q(Lit(x#0))
             then #_module.Nat.Zero()
             else (var a#2 := Lit(_module.Nat._h0(Lit(x#0))); 
              (if _module.Nat.Zero_q(Lit(y#0))
                 then x#0
                 else (var b#2 := Lit(_module.Nat._h0(Lit(y#0))); 
                  Lit(_module.__default.minus($LS($ly), a#2, b#2)))))));
}

function _module.__default.minus#canCall(x#0: DatatypeType, y#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.minus($LS($ly), x#0, y#0) } 
  _module.__default.minus($LS($ly), x#0, y#0)
     == _module.__default.minus($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.minus(AsFuelBottom($ly), x#0, y#0) } 
  _module.__default.minus($ly, x#0, y#0) == _module.__default.minus($LZ, x#0, y#0));

function _module.__default.minus#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.minus
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.minus#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(y#0, Tclass._module.Nat())
     ==> _module.__default.minus#requires($ly, x#0, y#0) == true);

procedure {:verboseName "minus (well-formedness)"} CheckWellformed$$_module.__default.minus(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    y#0: DatatypeType where $Is(y#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "minus (well-formedness)"} CheckWellformed$$_module.__default.minus(x#0: DatatypeType, y#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var a#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.minus($LS($LZ), x#0, y#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (x#0 == #_module.Nat.Zero())
        {
            assume {:id "id24"} _module.__default.minus($LS($LZ), x#0, y#0) == Lit(#_module.Nat.Zero());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.minus($LS($LZ), x#0, y#0), Tclass._module.Nat());
            return;
        }
        else if (x#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc a#Z#0;
            assume {:id "id17"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id18"} a#Z#0 == let#0#0#0;
            if (y#0 == #_module.Nat.Zero())
            {
                assume {:id "id23"} _module.__default.minus($LS($LZ), x#0, y#0) == x#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.minus($LS($LZ), x#0, y#0), Tclass._module.Nat());
                return;
            }
            else if (y#0 == #_module.Nat.Suc(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc b#Z#0;
                assume {:id "id19"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id20"} b#Z#0 == let#1#0#0;
                ##x#0 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##y#0 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
                assert {:id "id21"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##y#0) < DtRank(y#0));
                assume _module.__default.minus#canCall(a#Z#0, b#Z#0);
                assume {:id "id22"} _module.__default.minus($LS($LZ), x#0, y#0)
                   == _module.__default.minus($LS($LZ), a#Z#0, b#Z#0);
                assume _module.__default.minus#canCall(a#Z#0, b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.minus($LS($LZ), x#0, y#0), Tclass._module.Nat());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.eq
function _module.__default.eq($ly: LayerType, x#0: DatatypeType, y#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.eq
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.eq($ly, x#0, y#0) } 
    _module.__default.eq#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.eq($ly, x#0, y#0), Tclass._module.Bool()));
// definition axiom for _module.__default.eq (revealed)
axiom {:id "id25"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.eq($LS($ly), x#0, y#0) } 
    _module.__default.eq#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!_module.Nat.Zero_q(x#0)
           ==> (var a#1 := _module.Nat._h0(x#0); 
            !_module.Nat.Zero_q(y#0)
               ==> (var b#3 := _module.Nat._h0(y#0); _module.__default.eq#canCall(a#1, b#3))))
         && _module.__default.eq($LS($ly), x#0, y#0)
           == (if _module.Nat.Zero_q(x#0)
             then (if _module.Nat.Zero_q(y#0)
               then #_module.Bool.True()
               else (var b#0 := _module.Nat._h0(y#0); Lit(#_module.Bool.False())))
             else (var a#0 := _module.Nat._h0(x#0); 
              (if _module.Nat.Zero_q(y#0)
                 then #_module.Bool.False()
                 else (var b#1 := _module.Nat._h0(y#0); _module.__default.eq($ly, a#0, b#1))))));
// definition axiom for _module.__default.eq for all literals (revealed)
axiom {:id "id26"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    {:weight 3} { _module.__default.eq($LS($ly), Lit(x#0), Lit(y#0)) } 
    _module.__default.eq#canCall(Lit(x#0), Lit(y#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(x#0)))
           ==> (var a#3 := Lit(_module.Nat._h0(Lit(x#0))); 
            !Lit(_module.Nat.Zero_q(Lit(y#0)))
               ==> (var b#7 := Lit(_module.Nat._h0(Lit(y#0))); 
                _module.__default.eq#canCall(a#3, b#7))))
         && _module.__default.eq($LS($ly), Lit(x#0), Lit(y#0))
           == (if _module.Nat.Zero_q(Lit(x#0))
             then (if _module.Nat.Zero_q(Lit(y#0))
               then #_module.Bool.True()
               else (var b#4 := Lit(_module.Nat._h0(Lit(y#0))); Lit(#_module.Bool.False())))
             else (var a#2 := Lit(_module.Nat._h0(Lit(x#0))); 
              (if _module.Nat.Zero_q(Lit(y#0))
                 then #_module.Bool.False()
                 else (var b#5 := Lit(_module.Nat._h0(Lit(y#0))); 
                  Lit(_module.__default.eq($LS($ly), a#2, b#5)))))));
}

function _module.__default.eq#canCall(x#0: DatatypeType, y#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.eq($LS($ly), x#0, y#0) } 
  _module.__default.eq($LS($ly), x#0, y#0) == _module.__default.eq($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.eq(AsFuelBottom($ly), x#0, y#0) } 
  _module.__default.eq($ly, x#0, y#0) == _module.__default.eq($LZ, x#0, y#0));

function _module.__default.eq#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.eq
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.eq#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(y#0, Tclass._module.Nat())
     ==> _module.__default.eq#requires($ly, x#0, y#0) == true);

procedure {:verboseName "eq (well-formedness)"} CheckWellformed$$_module.__default.eq(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    y#0: DatatypeType where $Is(y#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "eq (well-formedness)"} CheckWellformed$$_module.__default.eq(x#0: DatatypeType, y#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var a#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var b#Z#1: DatatypeType;
  var let#2#0#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.eq($LS($LZ), x#0, y#0), Tclass._module.Bool());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (x#0 == #_module.Nat.Zero())
        {
            if (y#0 == #_module.Nat.Zero())
            {
                assume {:id "id37"} _module.__default.eq($LS($LZ), x#0, y#0) == Lit(#_module.Bool.True());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.eq($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else if (y#0 == #_module.Nat.Suc(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc b#Z#1;
                assume {:id "id34"} let#2#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.Nat());
                assume {:id "id35"} b#Z#1 == let#2#0#0;
                assume {:id "id36"} _module.__default.eq($LS($LZ), x#0, y#0) == Lit(#_module.Bool.False());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.eq($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else
            {
                assume false;
            }
        }
        else if (x#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc a#Z#0;
            assume {:id "id27"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id28"} a#Z#0 == let#0#0#0;
            if (y#0 == #_module.Nat.Zero())
            {
                assume {:id "id33"} _module.__default.eq($LS($LZ), x#0, y#0) == Lit(#_module.Bool.False());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.eq($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else if (y#0 == #_module.Nat.Suc(_mcc#2#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Nat());
                havoc b#Z#0;
                assume {:id "id29"} let#1#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id30"} b#Z#0 == let#1#0#0;
                ##x#0 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##y#0 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
                assert {:id "id31"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##y#0) < DtRank(y#0));
                assume _module.__default.eq#canCall(a#Z#0, b#Z#0);
                assume {:id "id32"} _module.__default.eq($LS($LZ), x#0, y#0)
                   == _module.__default.eq($LS($LZ), a#Z#0, b#Z#0);
                assume _module.__default.eq#canCall(a#Z#0, b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.eq($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.leq
function _module.__default.leq($ly: LayerType, x#0: DatatypeType, y#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.leq
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.leq($ly, x#0, y#0) } 
    _module.__default.leq#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.leq($ly, x#0, y#0), Tclass._module.Bool()));
// definition axiom for _module.__default.leq (revealed)
axiom {:id "id38"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.leq($LS($ly), x#0, y#0) } 
    _module.__default.leq#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!_module.Nat.Zero_q(x#0)
           ==> (var a#1 := _module.Nat._h0(x#0); 
            !_module.Nat.Zero_q(y#0)
               ==> (var b#1 := _module.Nat._h0(y#0); _module.__default.leq#canCall(a#1, b#1))))
         && _module.__default.leq($LS($ly), x#0, y#0)
           == (if _module.Nat.Zero_q(x#0)
             then #_module.Bool.True()
             else (var a#0 := _module.Nat._h0(x#0); 
              (if _module.Nat.Zero_q(y#0)
                 then #_module.Bool.False()
                 else (var b#0 := _module.Nat._h0(y#0); _module.__default.leq($ly, a#0, b#0))))));
// definition axiom for _module.__default.leq for all literals (revealed)
axiom {:id "id39"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    {:weight 3} { _module.__default.leq($LS($ly), Lit(x#0), Lit(y#0)) } 
    _module.__default.leq#canCall(Lit(x#0), Lit(y#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(x#0)))
           ==> (var a#3 := Lit(_module.Nat._h0(Lit(x#0))); 
            !Lit(_module.Nat.Zero_q(Lit(y#0)))
               ==> (var b#3 := Lit(_module.Nat._h0(Lit(y#0))); 
                _module.__default.leq#canCall(a#3, b#3))))
         && _module.__default.leq($LS($ly), Lit(x#0), Lit(y#0))
           == (if _module.Nat.Zero_q(Lit(x#0))
             then #_module.Bool.True()
             else (var a#2 := Lit(_module.Nat._h0(Lit(x#0))); 
              (if _module.Nat.Zero_q(Lit(y#0))
                 then #_module.Bool.False()
                 else (var b#2 := Lit(_module.Nat._h0(Lit(y#0))); 
                  Lit(_module.__default.leq($LS($ly), a#2, b#2)))))));
}

function _module.__default.leq#canCall(x#0: DatatypeType, y#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.leq($LS($ly), x#0, y#0) } 
  _module.__default.leq($LS($ly), x#0, y#0)
     == _module.__default.leq($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.leq(AsFuelBottom($ly), x#0, y#0) } 
  _module.__default.leq($ly, x#0, y#0) == _module.__default.leq($LZ, x#0, y#0));

function _module.__default.leq#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.leq
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.leq#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(y#0, Tclass._module.Nat())
     ==> _module.__default.leq#requires($ly, x#0, y#0) == true);

procedure {:verboseName "leq (well-formedness)"} CheckWellformed$$_module.__default.leq(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    y#0: DatatypeType where $Is(y#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "leq (well-formedness)"} CheckWellformed$$_module.__default.leq(x#0: DatatypeType, y#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var a#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.leq($LS($LZ), x#0, y#0), Tclass._module.Bool());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (x#0 == #_module.Nat.Zero())
        {
            assume {:id "id47"} _module.__default.leq($LS($LZ), x#0, y#0) == Lit(#_module.Bool.True());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.leq($LS($LZ), x#0, y#0), Tclass._module.Bool());
            return;
        }
        else if (x#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc a#Z#0;
            assume {:id "id40"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id41"} a#Z#0 == let#0#0#0;
            if (y#0 == #_module.Nat.Zero())
            {
                assume {:id "id46"} _module.__default.leq($LS($LZ), x#0, y#0) == Lit(#_module.Bool.False());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.leq($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else if (y#0 == #_module.Nat.Suc(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc b#Z#0;
                assume {:id "id42"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id43"} b#Z#0 == let#1#0#0;
                ##x#0 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##y#0 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
                assert {:id "id44"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##y#0) < DtRank(y#0));
                assume _module.__default.leq#canCall(a#Z#0, b#Z#0);
                assume {:id "id45"} _module.__default.leq($LS($LZ), x#0, y#0)
                   == _module.__default.leq($LS($LZ), a#Z#0, b#Z#0);
                assume _module.__default.leq#canCall(a#Z#0, b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.leq($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.less
function _module.__default.less($ly: LayerType, x#0: DatatypeType, y#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.less
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.less($ly, x#0, y#0) } 
    _module.__default.less#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.less($ly, x#0, y#0), Tclass._module.Bool()));
// definition axiom for _module.__default.less (revealed)
axiom {:id "id48"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.less($LS($ly), x#0, y#0) } 
    _module.__default.less#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!_module.Nat.Zero_q(y#0)
           ==> (var b#1 := _module.Nat._h0(y#0); 
            !_module.Nat.Zero_q(x#0)
               ==> (var a#1 := _module.Nat._h0(x#0); _module.__default.less#canCall(a#1, b#1))))
         && _module.__default.less($LS($ly), x#0, y#0)
           == (if _module.Nat.Zero_q(y#0)
             then #_module.Bool.False()
             else (var b#0 := _module.Nat._h0(y#0); 
              (if _module.Nat.Zero_q(x#0)
                 then #_module.Bool.True()
                 else (var a#0 := _module.Nat._h0(x#0); _module.__default.less($ly, a#0, b#0))))));
// definition axiom for _module.__default.less for all literals (revealed)
axiom {:id "id49"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    {:weight 3} { _module.__default.less($LS($ly), Lit(x#0), Lit(y#0)) } 
    _module.__default.less#canCall(Lit(x#0), Lit(y#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(y#0)))
           ==> (var b#3 := Lit(_module.Nat._h0(Lit(y#0))); 
            !Lit(_module.Nat.Zero_q(Lit(x#0)))
               ==> (var a#3 := Lit(_module.Nat._h0(Lit(x#0))); 
                _module.__default.less#canCall(a#3, b#3))))
         && _module.__default.less($LS($ly), Lit(x#0), Lit(y#0))
           == (if _module.Nat.Zero_q(Lit(y#0))
             then #_module.Bool.False()
             else (var b#2 := Lit(_module.Nat._h0(Lit(y#0))); 
              (if _module.Nat.Zero_q(Lit(x#0))
                 then #_module.Bool.True()
                 else (var a#2 := Lit(_module.Nat._h0(Lit(x#0))); 
                  Lit(_module.__default.less($LS($ly), a#2, b#2)))))));
}

function _module.__default.less#canCall(x#0: DatatypeType, y#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.less($LS($ly), x#0, y#0) } 
  _module.__default.less($LS($ly), x#0, y#0)
     == _module.__default.less($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.less(AsFuelBottom($ly), x#0, y#0) } 
  _module.__default.less($ly, x#0, y#0) == _module.__default.less($LZ, x#0, y#0));

function _module.__default.less#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.less
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.less#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(y#0, Tclass._module.Nat())
     ==> _module.__default.less#requires($ly, x#0, y#0) == true);

procedure {:verboseName "less (well-formedness)"} CheckWellformed$$_module.__default.less(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    y#0: DatatypeType where $Is(y#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "less (well-formedness)"} CheckWellformed$$_module.__default.less(x#0: DatatypeType, y#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var a#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.less($LS($LZ), x#0, y#0), Tclass._module.Bool());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (y#0 == #_module.Nat.Zero())
        {
            assume {:id "id57"} _module.__default.less($LS($LZ), x#0, y#0) == Lit(#_module.Bool.False());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.less($LS($LZ), x#0, y#0), Tclass._module.Bool());
            return;
        }
        else if (y#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc b#Z#0;
            assume {:id "id50"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id51"} b#Z#0 == let#0#0#0;
            if (x#0 == #_module.Nat.Zero())
            {
                assume {:id "id56"} _module.__default.less($LS($LZ), x#0, y#0) == Lit(#_module.Bool.True());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.less($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else if (x#0 == #_module.Nat.Suc(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc a#Z#0;
                assume {:id "id52"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id53"} a#Z#0 == let#1#0#0;
                ##x#0 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##y#0 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
                assert {:id "id54"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##y#0) < DtRank(y#0));
                assume _module.__default.less#canCall(a#Z#0, b#Z#0);
                assume {:id "id55"} _module.__default.less($LS($LZ), x#0, y#0)
                   == _module.__default.less($LS($LZ), a#Z#0, b#Z#0);
                assume _module.__default.less#canCall(a#Z#0, b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.less($LS($LZ), x#0, y#0), Tclass._module.Bool());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.min
function _module.__default.min($ly: LayerType, x#0: DatatypeType, y#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.min
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.min($ly, x#0, y#0) } 
    _module.__default.min#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.min($ly, x#0, y#0), Tclass._module.Nat()));
// definition axiom for _module.__default.min (revealed)
axiom {:id "id58"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.min($LS($ly), x#0, y#0) } 
    _module.__default.min#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!_module.Nat.Zero_q(x#0)
           ==> (var a#1 := _module.Nat._h0(x#0); 
            !_module.Nat.Zero_q(y#0)
               ==> (var b#1 := _module.Nat._h0(y#0); _module.__default.min#canCall(a#1, b#1))))
         && _module.__default.min($LS($ly), x#0, y#0)
           == (if _module.Nat.Zero_q(x#0)
             then #_module.Nat.Zero()
             else (var a#0 := _module.Nat._h0(x#0); 
              (if _module.Nat.Zero_q(y#0)
                 then #_module.Nat.Zero()
                 else (var b#0 := _module.Nat._h0(y#0); 
                  #_module.Nat.Suc(_module.__default.min($ly, a#0, b#0)))))));
// definition axiom for _module.__default.min for all literals (revealed)
axiom {:id "id59"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    {:weight 3} { _module.__default.min($LS($ly), Lit(x#0), Lit(y#0)) } 
    _module.__default.min#canCall(Lit(x#0), Lit(y#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(x#0)))
           ==> (var a#3 := Lit(_module.Nat._h0(Lit(x#0))); 
            !Lit(_module.Nat.Zero_q(Lit(y#0)))
               ==> (var b#3 := Lit(_module.Nat._h0(Lit(y#0))); 
                _module.__default.min#canCall(a#3, b#3))))
         && _module.__default.min($LS($ly), Lit(x#0), Lit(y#0))
           == (if _module.Nat.Zero_q(Lit(x#0))
             then #_module.Nat.Zero()
             else (var a#2 := Lit(_module.Nat._h0(Lit(x#0))); 
              (if _module.Nat.Zero_q(Lit(y#0))
                 then #_module.Nat.Zero()
                 else (var b#2 := Lit(_module.Nat._h0(Lit(y#0))); 
                  Lit(#_module.Nat.Suc(Lit(_module.__default.min($LS($ly), a#2, b#2)))))))));
}

function _module.__default.min#canCall(x#0: DatatypeType, y#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.min($LS($ly), x#0, y#0) } 
  _module.__default.min($LS($ly), x#0, y#0)
     == _module.__default.min($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.min(AsFuelBottom($ly), x#0, y#0) } 
  _module.__default.min($ly, x#0, y#0) == _module.__default.min($LZ, x#0, y#0));

function _module.__default.min#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.min
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.min#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(y#0, Tclass._module.Nat())
     ==> _module.__default.min#requires($ly, x#0, y#0) == true);

procedure {:verboseName "min (well-formedness)"} CheckWellformed$$_module.__default.min(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    y#0: DatatypeType where $Is(y#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "min (well-formedness)"} CheckWellformed$$_module.__default.min(x#0: DatatypeType, y#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var a#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.min($LS($LZ), x#0, y#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (x#0 == #_module.Nat.Zero())
        {
            assume {:id "id67"} _module.__default.min($LS($LZ), x#0, y#0) == Lit(#_module.Nat.Zero());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.min($LS($LZ), x#0, y#0), Tclass._module.Nat());
            return;
        }
        else if (x#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc a#Z#0;
            assume {:id "id60"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id61"} a#Z#0 == let#0#0#0;
            if (y#0 == #_module.Nat.Zero())
            {
                assume {:id "id66"} _module.__default.min($LS($LZ), x#0, y#0) == Lit(#_module.Nat.Zero());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.min($LS($LZ), x#0, y#0), Tclass._module.Nat());
                return;
            }
            else if (y#0 == #_module.Nat.Suc(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc b#Z#0;
                assume {:id "id62"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id63"} b#Z#0 == let#1#0#0;
                ##x#0 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##y#0 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
                assert {:id "id64"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##y#0) < DtRank(y#0));
                assume _module.__default.min#canCall(a#Z#0, b#Z#0);
                assume {:id "id65"} _module.__default.min($LS($LZ), x#0, y#0)
                   == #_module.Nat.Suc(_module.__default.min($LS($LZ), a#Z#0, b#Z#0));
                assume _module.__default.min#canCall(a#Z#0, b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.min($LS($LZ), x#0, y#0), Tclass._module.Nat());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.max
function _module.__default.max($ly: LayerType, x#0: DatatypeType, y#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.max
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.max($ly, x#0, y#0) } 
    _module.__default.max#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> $Is(_module.__default.max($ly, x#0, y#0), Tclass._module.Nat()));
// definition axiom for _module.__default.max (revealed)
axiom {:id "id68"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    { _module.__default.max($LS($ly), x#0, y#0) } 
    _module.__default.max#canCall(x#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!_module.Nat.Zero_q(x#0)
           ==> (var a#1 := _module.Nat._h0(x#0); 
            !_module.Nat.Zero_q(y#0)
               ==> (var b#1 := _module.Nat._h0(y#0); _module.__default.max#canCall(a#1, b#1))))
         && _module.__default.max($LS($ly), x#0, y#0)
           == (if _module.Nat.Zero_q(x#0)
             then y#0
             else (var a#0 := _module.Nat._h0(x#0); 
              (if _module.Nat.Zero_q(y#0)
                 then x#0
                 else (var b#0 := _module.Nat._h0(y#0); 
                  #_module.Nat.Suc(_module.__default.max($ly, a#0, b#0)))))));
// definition axiom for _module.__default.max for all literals (revealed)
axiom {:id "id69"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
    {:weight 3} { _module.__default.max($LS($ly), Lit(x#0), Lit(y#0)) } 
    _module.__default.max#canCall(Lit(x#0), Lit(y#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(y#0, Tclass._module.Nat()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(x#0)))
           ==> (var a#3 := Lit(_module.Nat._h0(Lit(x#0))); 
            !Lit(_module.Nat.Zero_q(Lit(y#0)))
               ==> (var b#3 := Lit(_module.Nat._h0(Lit(y#0))); 
                _module.__default.max#canCall(a#3, b#3))))
         && _module.__default.max($LS($ly), Lit(x#0), Lit(y#0))
           == (if _module.Nat.Zero_q(Lit(x#0))
             then y#0
             else (var a#2 := Lit(_module.Nat._h0(Lit(x#0))); 
              (if _module.Nat.Zero_q(Lit(y#0))
                 then x#0
                 else (var b#2 := Lit(_module.Nat._h0(Lit(y#0))); 
                  Lit(#_module.Nat.Suc(Lit(_module.__default.max($LS($ly), a#2, b#2)))))))));
}

function _module.__default.max#canCall(x#0: DatatypeType, y#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.max($LS($ly), x#0, y#0) } 
  _module.__default.max($LS($ly), x#0, y#0)
     == _module.__default.max($ly, x#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.max(AsFuelBottom($ly), x#0, y#0) } 
  _module.__default.max($ly, x#0, y#0) == _module.__default.max($LZ, x#0, y#0));

function _module.__default.max#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.max
axiom (forall $ly: LayerType, x#0: DatatypeType, y#0: DatatypeType :: 
  { _module.__default.max#requires($ly, x#0, y#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(y#0, Tclass._module.Nat())
     ==> _module.__default.max#requires($ly, x#0, y#0) == true);

procedure {:verboseName "max (well-formedness)"} CheckWellformed$$_module.__default.max(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    y#0: DatatypeType where $Is(y#0, Tclass._module.Nat()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "max (well-formedness)"} CheckWellformed$$_module.__default.max(x#0: DatatypeType, y#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var a#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.max($LS($LZ), x#0, y#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (x#0 == #_module.Nat.Zero())
        {
            assume {:id "id77"} _module.__default.max($LS($LZ), x#0, y#0) == y#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.max($LS($LZ), x#0, y#0), Tclass._module.Nat());
            return;
        }
        else if (x#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc a#Z#0;
            assume {:id "id70"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id71"} a#Z#0 == let#0#0#0;
            if (y#0 == #_module.Nat.Zero())
            {
                assume {:id "id76"} _module.__default.max($LS($LZ), x#0, y#0) == x#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.max($LS($LZ), x#0, y#0), Tclass._module.Nat());
                return;
            }
            else if (y#0 == #_module.Nat.Suc(_mcc#1#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                havoc b#Z#0;
                assume {:id "id72"} let#1#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.Nat());
                assume {:id "id73"} b#Z#0 == let#1#0#0;
                ##x#0 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##y#0 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
                assert {:id "id74"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##y#0) < DtRank(y#0));
                assume _module.__default.max#canCall(a#Z#0, b#Z#0);
                assume {:id "id75"} _module.__default.max($LS($LZ), x#0, y#0)
                   == #_module.Nat.Suc(_module.__default.max($LS($LZ), a#Z#0, b#Z#0));
                assume _module.__default.max#canCall(a#Z#0, b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.max($LS($LZ), x#0, y#0), Tclass._module.Nat());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.concat
function _module.__default.concat($ly: LayerType, xs#0: DatatypeType, ys#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.concat
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType, ys#0: DatatypeType :: 
    { _module.__default.concat($ly, xs#0, ys#0) } 
    _module.__default.concat#canCall(xs#0, ys#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List())
           && $Is(ys#0, Tclass._module.List()))
       ==> $Is(_module.__default.concat($ly, xs#0, ys#0), Tclass._module.List()));
// definition axiom for _module.__default.concat (revealed)
axiom {:id "id78"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType, ys#0: DatatypeType :: 
    { _module.__default.concat($LS($ly), xs#0, ys#0) } 
    _module.__default.concat#canCall(xs#0, ys#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List())
           && $Is(ys#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var tail#1 := _module.List._h2(xs#0); 
            _module.__default.concat#canCall(tail#1, ys#0)))
         && _module.__default.concat($LS($ly), xs#0, ys#0)
           == (if _module.List.Nil_q(xs#0)
             then ys#0
             else (var tail#0 := _module.List._h2(xs#0); 
              (var x#0 := _module.List._h1(xs#0); 
                #_module.List.Cons(x#0, _module.__default.concat($ly, tail#0, ys#0))))));
// definition axiom for _module.__default.concat for all literals (revealed)
axiom {:id "id79"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType, ys#0: DatatypeType :: 
    {:weight 3} { _module.__default.concat($LS($ly), Lit(xs#0), Lit(ys#0)) } 
    _module.__default.concat#canCall(Lit(xs#0), Lit(ys#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List())
           && $Is(ys#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var tail#3 := Lit(_module.List._h2(Lit(xs#0))); 
            _module.__default.concat#canCall(tail#3, Lit(ys#0))))
         && _module.__default.concat($LS($ly), Lit(xs#0), Lit(ys#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then ys#0
             else (var tail#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var x#2 := Lit(_module.List._h1(Lit(xs#0))); 
                Lit(#_module.List.Cons(x#2, Lit(_module.__default.concat($LS($ly), tail#2, Lit(ys#0)))))))));
}

function _module.__default.concat#canCall(xs#0: DatatypeType, ys#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType, ys#0: DatatypeType :: 
  { _module.__default.concat($LS($ly), xs#0, ys#0) } 
  _module.__default.concat($LS($ly), xs#0, ys#0)
     == _module.__default.concat($ly, xs#0, ys#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType, ys#0: DatatypeType :: 
  { _module.__default.concat(AsFuelBottom($ly), xs#0, ys#0) } 
  _module.__default.concat($ly, xs#0, ys#0)
     == _module.__default.concat($LZ, xs#0, ys#0));

function Tclass._module.List() : Ty
uses {
// Tclass._module.List Tag
axiom Tag(Tclass._module.List()) == Tagclass._module.List
   && TagFamily(Tclass._module.List()) == tytagFamily$List;
}

const unique Tagclass._module.List: TyTag;

// Box/unbox axiom for Tclass._module.List
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.List()) } 
  $IsBox(bx, Tclass._module.List())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List()));

function _module.__default.concat#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.concat
axiom (forall $ly: LayerType, xs#0: DatatypeType, ys#0: DatatypeType :: 
  { _module.__default.concat#requires($ly, xs#0, ys#0) } 
  $Is(xs#0, Tclass._module.List()) && $Is(ys#0, Tclass._module.List())
     ==> _module.__default.concat#requires($ly, xs#0, ys#0) == true);

procedure {:verboseName "concat (well-formedness)"} CheckWellformed$$_module.__default.concat(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()), 
    ys#0: DatatypeType where $Is(ys#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "concat (well-formedness)"} CheckWellformed$$_module.__default.concat(xs#0: DatatypeType, ys#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##xs#0: DatatypeType;
  var ##ys#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.concat($LS($LZ), xs#0, ys#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id86"} _module.__default.concat($LS($LZ), xs#0, ys#0) == ys#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.concat($LS($LZ), xs#0, ys#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc tail#Z#0;
            assume {:id "id80"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id81"} tail#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id82"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id83"} x#Z#0 == let#1#0#0;
            ##xs#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            ##ys#0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass._module.List(), $Heap);
            assert {:id "id84"} DtRank(##xs#0) < DtRank(xs#0)
               || (DtRank(##xs#0) == DtRank(xs#0) && DtRank(##ys#0) < DtRank(ys#0));
            assume _module.__default.concat#canCall(tail#Z#0, ys#0);
            assume {:id "id85"} _module.__default.concat($LS($LZ), xs#0, ys#0)
               == #_module.List.Cons(x#Z#0, _module.__default.concat($LS($LZ), tail#Z#0, ys#0));
            assume _module.__default.concat#canCall(tail#Z#0, ys#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.concat($LS($LZ), xs#0, ys#0), Tclass._module.List());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.mem
function _module.__default.mem($ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.mem
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.mem($ly, x#0, xs#0) } 
    _module.__default.mem#canCall(x#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.mem($ly, x#0, xs#0), Tclass._module.Bool()));
// definition axiom for _module.__default.mem (revealed)
axiom {:id "id87"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.mem($LS($ly), x#0, xs#0) } 
    _module.__default.mem#canCall(x#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Nat(x#0)
                 && $IsA#_module.Nat(y#1)
                 && (!_module.Nat#Equal(x#0, y#1) ==> _module.__default.mem#canCall(x#0, ys#1)))))
         && _module.__default.mem($LS($ly), x#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.Bool.False()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if _module.Nat#Equal(x#0, y#0)
                   then #_module.Bool.True()
                   else _module.__default.mem($ly, x#0, ys#0))))));
// definition axiom for _module.__default.mem for all literals (revealed)
axiom {:id "id88"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.mem($LS($ly), Lit(x#0), Lit(xs#0)) } 
    _module.__default.mem#canCall(Lit(x#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat(Lit(x#0))
                 && $IsA#_module.Nat(y#3)
                 && (!_module.Nat#Equal(x#0, y#3) ==> _module.__default.mem#canCall(Lit(x#0), ys#3)))))
         && _module.__default.mem($LS($ly), Lit(x#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.Bool.False()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if _module.Nat#Equal(x#0, y#2)
                   then #_module.Bool.True()
                   else _module.__default.mem($LS($ly), Lit(x#0), ys#2))))));
}

function _module.__default.mem#canCall(x#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.mem($LS($ly), x#0, xs#0) } 
  _module.__default.mem($LS($ly), x#0, xs#0)
     == _module.__default.mem($ly, x#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.mem(AsFuelBottom($ly), x#0, xs#0) } 
  _module.__default.mem($ly, x#0, xs#0) == _module.__default.mem($LZ, x#0, xs#0));

function _module.__default.mem#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.mem
axiom (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.mem#requires($ly, x#0, xs#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.mem#requires($ly, x#0, xs#0) == true);

procedure {:verboseName "mem (well-formedness)"} CheckWellformed$$_module.__default.mem(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mem (well-formedness)"} CheckWellformed$$_module.__default.mem(x#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.mem($LS($LZ), x#0, xs#0), Tclass._module.Bool());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id96"} _module.__default.mem($LS($LZ), x#0, xs#0) == Lit(#_module.Bool.False());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.mem($LS($LZ), x#0, xs#0), Tclass._module.Bool());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id89"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id90"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id91"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id92"} y#Z#0 == let#1#0#0;
            if (_module.Nat#Equal(x#0, y#Z#0))
            {
                assume {:id "id93"} _module.__default.mem($LS($LZ), x#0, xs#0) == Lit(#_module.Bool.True());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.mem($LS($LZ), x#0, xs#0), Tclass._module.Bool());
                return;
            }
            else
            {
                ##x#0 := x#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id94"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.mem#canCall(x#0, ys#Z#0);
                assume {:id "id95"} _module.__default.mem($LS($LZ), x#0, xs#0)
                   == _module.__default.mem($LS($LZ), x#0, ys#Z#0);
                assume _module.__default.mem#canCall(x#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.mem($LS($LZ), x#0, xs#0), Tclass._module.Bool());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.delete
function _module.__default.delete($ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.delete
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.delete($ly, n#0, xs#0) } 
    _module.__default.delete#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.delete($ly, n#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.delete (revealed)
axiom {:id "id97"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.delete($LS($ly), n#0, xs#0) } 
    _module.__default.delete#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Nat(y#1)
                 && $IsA#_module.Nat(n#0)
                 && (_module.Nat#Equal(y#1, n#0) ==> _module.__default.delete#canCall(n#0, ys#1))
                 && (!_module.Nat#Equal(y#1, n#0) ==> _module.__default.delete#canCall(n#0, ys#1)))))
         && _module.__default.delete($LS($ly), n#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if _module.Nat#Equal(y#0, n#0)
                   then _module.__default.delete($ly, n#0, ys#0)
                   else #_module.List.Cons(y#0, _module.__default.delete($ly, n#0, ys#0)))))));
// definition axiom for _module.__default.delete for all literals (revealed)
axiom {:id "id98"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.delete($LS($ly), Lit(n#0), Lit(xs#0)) } 
    _module.__default.delete#canCall(Lit(n#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat(y#3)
                 && $IsA#_module.Nat(Lit(n#0))
                 && (_module.Nat#Equal(y#3, n#0)
                   ==> _module.__default.delete#canCall(Lit(n#0), ys#3))
                 && (!_module.Nat#Equal(y#3, n#0)
                   ==> _module.__default.delete#canCall(Lit(n#0), ys#3)))))
         && _module.__default.delete($LS($ly), Lit(n#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if _module.Nat#Equal(y#2, n#0)
                   then _module.__default.delete($LS($ly), Lit(n#0), ys#2)
                   else #_module.List.Cons(y#2, Lit(_module.__default.delete($LS($ly), Lit(n#0), ys#2))))))));
}

function _module.__default.delete#canCall(n#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.delete($LS($ly), n#0, xs#0) } 
  _module.__default.delete($LS($ly), n#0, xs#0)
     == _module.__default.delete($ly, n#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.delete(AsFuelBottom($ly), n#0, xs#0) } 
  _module.__default.delete($ly, n#0, xs#0)
     == _module.__default.delete($LZ, n#0, xs#0));

function _module.__default.delete#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.delete
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.delete#requires($ly, n#0, xs#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.delete#requires($ly, n#0, xs#0) == true);

procedure {:verboseName "delete (well-formedness)"} CheckWellformed$$_module.__default.delete(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "delete (well-formedness)"} CheckWellformed$$_module.__default.delete(n#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#0: DatatypeType;
  var ##n#1: DatatypeType;
  var ##xs#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.delete($LS($LZ), n#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id107"} _module.__default.delete($LS($LZ), n#0, xs#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.delete($LS($LZ), n#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id99"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id100"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id101"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id102"} y#Z#0 == let#1#0#0;
            if (_module.Nat#Equal(y#Z#0, n#0))
            {
                ##n#0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id103"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.delete#canCall(n#0, ys#Z#0);
                assume {:id "id104"} _module.__default.delete($LS($LZ), n#0, xs#0)
                   == _module.__default.delete($LS($LZ), n#0, ys#Z#0);
                assume _module.__default.delete#canCall(n#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.delete($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                ##n#1 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._module.Nat(), $Heap);
                ##xs#1 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#1, Tclass._module.List(), $Heap);
                assert {:id "id105"} DtRank(##n#1) < DtRank(n#0)
                   || (DtRank(##n#1) == DtRank(n#0) && DtRank(##xs#1) < DtRank(xs#0));
                assume _module.__default.delete#canCall(n#0, ys#Z#0);
                assume {:id "id106"} _module.__default.delete($LS($LZ), n#0, xs#0)
                   == #_module.List.Cons(y#Z#0, _module.__default.delete($LS($LZ), n#0, ys#Z#0));
                assume _module.__default.delete#canCall(n#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.delete($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.drop
function _module.__default.drop($ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.drop
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.drop($ly, n#0, xs#0) } 
    _module.__default.drop#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.drop($ly, n#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.drop (revealed)
axiom {:id "id108"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.drop($LS($ly), n#0, xs#0) } 
    _module.__default.drop#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.Nat.Zero_q(n#0)
           ==> (var m#1 := _module.Nat._h0(n#0); 
            !_module.List.Nil_q(xs#0)
               ==> (var tail#1 := _module.List._h2(xs#0); 
                _module.__default.drop#canCall(m#1, tail#1))))
         && _module.__default.drop($LS($ly), n#0, xs#0)
           == (if _module.Nat.Zero_q(n#0)
             then xs#0
             else (var m#0 := _module.Nat._h0(n#0); 
              (if _module.List.Nil_q(xs#0)
                 then #_module.List.Nil()
                 else (var tail#0 := _module.List._h2(xs#0); 
                  (var x#0 := _module.List._h1(xs#0); _module.__default.drop($ly, m#0, tail#0)))))));
// definition axiom for _module.__default.drop for all literals (revealed)
axiom {:id "id109"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.drop($LS($ly), Lit(n#0), Lit(xs#0)) } 
    _module.__default.drop#canCall(Lit(n#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(n#0)))
           ==> (var m#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            !Lit(_module.List.Nil_q(Lit(xs#0)))
               ==> (var tail#3 := Lit(_module.List._h2(Lit(xs#0))); 
                _module.__default.drop#canCall(m#3, tail#3))))
         && _module.__default.drop($LS($ly), Lit(n#0), Lit(xs#0))
           == (if _module.Nat.Zero_q(Lit(n#0))
             then xs#0
             else (var m#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              (if _module.List.Nil_q(Lit(xs#0))
                 then #_module.List.Nil()
                 else (var tail#2 := Lit(_module.List._h2(Lit(xs#0))); 
                  (var x#2 := Lit(_module.List._h1(Lit(xs#0))); 
                    Lit(_module.__default.drop($LS($ly), m#2, tail#2))))))));
}

function _module.__default.drop#canCall(n#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.drop($LS($ly), n#0, xs#0) } 
  _module.__default.drop($LS($ly), n#0, xs#0)
     == _module.__default.drop($ly, n#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.drop(AsFuelBottom($ly), n#0, xs#0) } 
  _module.__default.drop($ly, n#0, xs#0) == _module.__default.drop($LZ, n#0, xs#0));

function _module.__default.drop#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.drop
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.drop#requires($ly, n#0, xs#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.drop#requires($ly, n#0, xs#0) == true);

procedure {:verboseName "drop (well-formedness)"} CheckWellformed$$_module.__default.drop(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "drop (well-formedness)"} CheckWellformed$$_module.__default.drop(n#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var m#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.drop($LS($LZ), n#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.Zero())
        {
            assume {:id "id119"} _module.__default.drop($LS($LZ), n#0, xs#0) == xs#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.drop($LS($LZ), n#0, xs#0), Tclass._module.List());
            return;
        }
        else if (n#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc m#Z#0;
            assume {:id "id110"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id111"} m#Z#0 == let#0#0#0;
            if (xs#0 == #_module.List.Nil())
            {
                assume {:id "id118"} _module.__default.drop($LS($LZ), n#0, xs#0) == Lit(#_module.List.Nil());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.drop($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else if (xs#0 == #_module.List.Cons(_mcc#1#0, _mcc#2#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                assume $Is(_mcc#2#0, Tclass._module.List());
                havoc tail#Z#0;
                assume {:id "id112"} let#1#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.List());
                assume {:id "id113"} tail#Z#0 == let#1#0#0;
                havoc x#Z#0;
                assume {:id "id114"} let#2#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.Nat());
                assume {:id "id115"} x#Z#0 == let#2#0#0;
                ##n#0 := m#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := tail#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id116"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.drop#canCall(m#Z#0, tail#Z#0);
                assume {:id "id117"} _module.__default.drop($LS($LZ), n#0, xs#0)
                   == _module.__default.drop($LS($LZ), m#Z#0, tail#Z#0);
                assume _module.__default.drop#canCall(m#Z#0, tail#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.drop($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.take
function _module.__default.take($ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.take
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.take($ly, n#0, xs#0) } 
    _module.__default.take#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.take($ly, n#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.take (revealed)
axiom {:id "id120"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.take($LS($ly), n#0, xs#0) } 
    _module.__default.take#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.Nat.Zero_q(n#0)
           ==> (var m#1 := _module.Nat._h0(n#0); 
            !_module.List.Nil_q(xs#0)
               ==> (var tail#1 := _module.List._h2(xs#0); 
                _module.__default.take#canCall(m#1, tail#1))))
         && _module.__default.take($LS($ly), n#0, xs#0)
           == (if _module.Nat.Zero_q(n#0)
             then #_module.List.Nil()
             else (var m#0 := _module.Nat._h0(n#0); 
              (if _module.List.Nil_q(xs#0)
                 then #_module.List.Nil()
                 else (var tail#0 := _module.List._h2(xs#0); 
                  (var x#0 := _module.List._h1(xs#0); 
                    #_module.List.Cons(x#0, _module.__default.take($ly, m#0, tail#0))))))));
// definition axiom for _module.__default.take for all literals (revealed)
axiom {:id "id121"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.take($LS($ly), Lit(n#0), Lit(xs#0)) } 
    _module.__default.take#canCall(Lit(n#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.Nat.Zero_q(Lit(n#0)))
           ==> (var m#3 := Lit(_module.Nat._h0(Lit(n#0))); 
            !Lit(_module.List.Nil_q(Lit(xs#0)))
               ==> (var tail#3 := Lit(_module.List._h2(Lit(xs#0))); 
                _module.__default.take#canCall(m#3, tail#3))))
         && _module.__default.take($LS($ly), Lit(n#0), Lit(xs#0))
           == (if _module.Nat.Zero_q(Lit(n#0))
             then #_module.List.Nil()
             else (var m#2 := Lit(_module.Nat._h0(Lit(n#0))); 
              (if _module.List.Nil_q(Lit(xs#0))
                 then #_module.List.Nil()
                 else (var tail#2 := Lit(_module.List._h2(Lit(xs#0))); 
                  (var x#2 := Lit(_module.List._h1(Lit(xs#0))); 
                    Lit(#_module.List.Cons(x#2, Lit(_module.__default.take($LS($ly), m#2, tail#2))))))))));
}

function _module.__default.take#canCall(n#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.take($LS($ly), n#0, xs#0) } 
  _module.__default.take($LS($ly), n#0, xs#0)
     == _module.__default.take($ly, n#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.take(AsFuelBottom($ly), n#0, xs#0) } 
  _module.__default.take($ly, n#0, xs#0) == _module.__default.take($LZ, n#0, xs#0));

function _module.__default.take#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.take
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.take#requires($ly, n#0, xs#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.take#requires($ly, n#0, xs#0) == true);

procedure {:verboseName "take (well-formedness)"} CheckWellformed$$_module.__default.take(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "take (well-formedness)"} CheckWellformed$$_module.__default.take(n#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var m#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.take($LS($LZ), n#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == #_module.Nat.Zero())
        {
            assume {:id "id131"} _module.__default.take($LS($LZ), n#0, xs#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.take($LS($LZ), n#0, xs#0), Tclass._module.List());
            return;
        }
        else if (n#0 == #_module.Nat.Suc(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            havoc m#Z#0;
            assume {:id "id122"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Nat());
            assume {:id "id123"} m#Z#0 == let#0#0#0;
            if (xs#0 == #_module.List.Nil())
            {
                assume {:id "id130"} _module.__default.take($LS($LZ), n#0, xs#0) == Lit(#_module.List.Nil());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.take($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else if (xs#0 == #_module.List.Cons(_mcc#1#0, _mcc#2#0))
            {
                assume $Is(_mcc#1#0, Tclass._module.Nat());
                assume $Is(_mcc#2#0, Tclass._module.List());
                havoc tail#Z#0;
                assume {:id "id124"} let#1#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass._module.List());
                assume {:id "id125"} tail#Z#0 == let#1#0#0;
                havoc x#Z#0;
                assume {:id "id126"} let#2#0#0 == _mcc#1#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.Nat());
                assume {:id "id127"} x#Z#0 == let#2#0#0;
                ##n#0 := m#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := tail#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id128"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.take#canCall(m#Z#0, tail#Z#0);
                assume {:id "id129"} _module.__default.take($LS($LZ), n#0, xs#0)
                   == #_module.List.Cons(x#Z#0, _module.__default.take($LS($LZ), m#Z#0, tail#Z#0));
                assume _module.__default.take#canCall(m#Z#0, tail#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.take($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.len
function _module.__default.len($ly: LayerType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.len
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.len($ly, xs#0) } 
    _module.__default.len#canCall(xs#0)
         || (2 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.len($ly, xs#0), Tclass._module.Nat()));
// definition axiom for _module.__default.len (revealed)
axiom {:id "id132"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.len($LS($ly), xs#0) } 
    _module.__default.len#canCall(xs#0)
         || (2 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); _module.__default.len#canCall(ys#1)))
         && _module.__default.len($LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.Nat.Zero()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                #_module.Nat.Suc(_module.__default.len($ly, ys#0))))));
// definition axiom for _module.__default.len for all literals (revealed)
axiom {:id "id133"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.len($LS($ly), Lit(xs#0)) } 
    _module.__default.len#canCall(Lit(xs#0))
         || (2 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            _module.__default.len#canCall(ys#3)))
         && _module.__default.len($LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.Nat.Zero()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                Lit(#_module.Nat.Suc(Lit(_module.__default.len($LS($ly), ys#2))))))));
}

function _module.__default.len#canCall(xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.len($LS($ly), xs#0) } 
  _module.__default.len($LS($ly), xs#0) == _module.__default.len($ly, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.len(AsFuelBottom($ly), xs#0) } 
  _module.__default.len($ly, xs#0) == _module.__default.len($LZ, xs#0));

function _module.__default.len#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.len
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.len#requires($ly, xs#0) } 
  $Is(xs#0, Tclass._module.List())
     ==> _module.__default.len#requires($ly, xs#0) == true);

procedure {:verboseName "len (well-formedness)"} CheckWellformed$$_module.__default.len(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "len (well-formedness)"} CheckWellformed$$_module.__default.len(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.len($LS($LZ), xs#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id140"} _module.__default.len($LS($LZ), xs#0) == Lit(#_module.Nat.Zero());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.len($LS($LZ), xs#0), Tclass._module.Nat());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id134"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id135"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id136"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id137"} y#Z#0 == let#1#0#0;
            ##xs#0 := ys#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            assert {:id "id138"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.len#canCall(ys#Z#0);
            assume {:id "id139"} _module.__default.len($LS($LZ), xs#0)
               == #_module.Nat.Suc(_module.__default.len($LS($LZ), ys#Z#0));
            assume _module.__default.len#canCall(ys#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.len($LS($LZ), xs#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.count
function _module.__default.count($ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.count
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.count($ly, x#0, xs#0) } 
    _module.__default.count#canCall(x#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.count($ly, x#0, xs#0), Tclass._module.Nat()));
// definition axiom for _module.__default.count (revealed)
axiom {:id "id141"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.count($LS($ly), x#0, xs#0) } 
    _module.__default.count#canCall(x#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Nat(x#0)
                 && $IsA#_module.Nat(y#1)
                 && (_module.Nat#Equal(x#0, y#1) ==> _module.__default.count#canCall(x#0, ys#1))
                 && (!_module.Nat#Equal(x#0, y#1) ==> _module.__default.count#canCall(x#0, ys#1)))))
         && _module.__default.count($LS($ly), x#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.Nat.Zero()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if _module.Nat#Equal(x#0, y#0)
                   then #_module.Nat.Suc(_module.__default.count($ly, x#0, ys#0))
                   else _module.__default.count($ly, x#0, ys#0))))));
// definition axiom for _module.__default.count for all literals (revealed)
axiom {:id "id142"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.count($LS($ly), Lit(x#0), Lit(xs#0)) } 
    _module.__default.count#canCall(Lit(x#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat(Lit(x#0))
                 && $IsA#_module.Nat(y#3)
                 && (_module.Nat#Equal(x#0, y#3)
                   ==> _module.__default.count#canCall(Lit(x#0), ys#3))
                 && (!_module.Nat#Equal(x#0, y#3)
                   ==> _module.__default.count#canCall(Lit(x#0), ys#3)))))
         && _module.__default.count($LS($ly), Lit(x#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.Nat.Zero()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if _module.Nat#Equal(x#0, y#2)
                   then #_module.Nat.Suc(Lit(_module.__default.count($LS($ly), Lit(x#0), ys#2)))
                   else _module.__default.count($LS($ly), Lit(x#0), ys#2))))));
}

function _module.__default.count#canCall(x#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.count($LS($ly), x#0, xs#0) } 
  _module.__default.count($LS($ly), x#0, xs#0)
     == _module.__default.count($ly, x#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.count(AsFuelBottom($ly), x#0, xs#0) } 
  _module.__default.count($ly, x#0, xs#0)
     == _module.__default.count($LZ, x#0, xs#0));

function _module.__default.count#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.count
axiom (forall $ly: LayerType, x#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.count#requires($ly, x#0, xs#0) } 
  $Is(x#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.count#requires($ly, x#0, xs#0) == true);

procedure {:verboseName "count (well-formedness)"} CheckWellformed$$_module.__default.count(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "count (well-formedness)"} CheckWellformed$$_module.__default.count(x#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##xs#0: DatatypeType;
  var ##x#1: DatatypeType;
  var ##xs#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.count($LS($LZ), x#0, xs#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id151"} _module.__default.count($LS($LZ), x#0, xs#0) == Lit(#_module.Nat.Zero());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.count($LS($LZ), x#0, xs#0), Tclass._module.Nat());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id143"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id144"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id145"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id146"} y#Z#0 == let#1#0#0;
            if (_module.Nat#Equal(x#0, y#Z#0))
            {
                ##x#0 := x#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id147"} DtRank(##x#0) < DtRank(x#0)
                   || (DtRank(##x#0) == DtRank(x#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.count#canCall(x#0, ys#Z#0);
                assume {:id "id148"} _module.__default.count($LS($LZ), x#0, xs#0)
                   == #_module.Nat.Suc(_module.__default.count($LS($LZ), x#0, ys#Z#0));
                assume _module.__default.count#canCall(x#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.count($LS($LZ), x#0, xs#0), Tclass._module.Nat());
                return;
            }
            else
            {
                ##x#1 := x#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#1, Tclass._module.Nat(), $Heap);
                ##xs#1 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#1, Tclass._module.List(), $Heap);
                assert {:id "id149"} DtRank(##x#1) < DtRank(x#0)
                   || (DtRank(##x#1) == DtRank(x#0) && DtRank(##xs#1) < DtRank(xs#0));
                assume _module.__default.count#canCall(x#0, ys#Z#0);
                assume {:id "id150"} _module.__default.count($LS($LZ), x#0, xs#0)
                   == _module.__default.count($LS($LZ), x#0, ys#Z#0);
                assume _module.__default.count#canCall(x#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.count($LS($LZ), x#0, xs#0), Tclass._module.Nat());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.last
function _module.__default.last($ly: LayerType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.last
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.last($ly, xs#0) } 
    _module.__default.last#canCall(xs#0)
         || (2 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.last($ly, xs#0), Tclass._module.Nat()));
// definition axiom for _module.__default.last (revealed)
axiom {:id "id152"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.last($LS($ly), xs#0) } 
    _module.__default.last#canCall(xs#0)
         || (2 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            !_module.List.Nil_q(ys#1) ==> _module.__default.last#canCall(ys#1)))
         && _module.__default.last($LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.Nat.Zero()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if _module.List.Nil_q(ys#0)
                   then y#0
                   else (var zs#0 := _module.List._h2(ys#0); 
                    (var z#0 := _module.List._h1(ys#0); _module.__default.last($ly, ys#0))))))));
// definition axiom for _module.__default.last for all literals (revealed)
axiom {:id "id153"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.last($LS($ly), Lit(xs#0)) } 
    _module.__default.last#canCall(Lit(xs#0))
         || (2 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            !_module.List.Nil_q(ys#3) ==> _module.__default.last#canCall(ys#3)))
         && _module.__default.last($LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.Nat.Zero()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if _module.List.Nil_q(ys#2)
                   then y#2
                   else (var zs#2 := Lit(_module.List._h2(ys#2)); 
                    (var z#2 := Lit(_module.List._h1(ys#2)); 
                      Lit(_module.__default.last($LS($ly), ys#2)))))))));
}

function _module.__default.last#canCall(xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.last($LS($ly), xs#0) } 
  _module.__default.last($LS($ly), xs#0) == _module.__default.last($ly, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.last(AsFuelBottom($ly), xs#0) } 
  _module.__default.last($ly, xs#0) == _module.__default.last($LZ, xs#0));

function _module.__default.last#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.last
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.last#requires($ly, xs#0) } 
  $Is(xs#0, Tclass._module.List())
     ==> _module.__default.last#requires($ly, xs#0) == true);

procedure {:verboseName "last (well-formedness)"} CheckWellformed$$_module.__default.last(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "last (well-formedness)"} CheckWellformed$$_module.__default.last(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var zs#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var z#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.last($LS($LZ), xs#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id165"} _module.__default.last($LS($LZ), xs#0) == Lit(#_module.Nat.Zero());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.last($LS($LZ), xs#0), Tclass._module.Nat());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id154"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id155"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id156"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id157"} y#Z#0 == let#1#0#0;
            if (ys#Z#0 == #_module.List.Nil())
            {
                assume {:id "id164"} _module.__default.last($LS($LZ), xs#0) == y#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.last($LS($LZ), xs#0), Tclass._module.Nat());
                return;
            }
            else if (ys#Z#0 == #_module.List.Cons(_mcc#2#0, _mcc#3#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Nat());
                assume $Is(_mcc#3#0, Tclass._module.List());
                havoc zs#Z#0;
                assume {:id "id158"} let#2#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.List());
                assume {:id "id159"} zs#Z#0 == let#2#0#0;
                havoc z#Z#0;
                assume {:id "id160"} let#3#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, Tclass._module.Nat());
                assume {:id "id161"} z#Z#0 == let#3#0#0;
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id162"} DtRank(##xs#0) < DtRank(xs#0);
                assume _module.__default.last#canCall(ys#Z#0);
                assume {:id "id163"} _module.__default.last($LS($LZ), xs#0)
                   == _module.__default.last($LS($LZ), ys#Z#0);
                assume _module.__default.last#canCall(ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.last($LS($LZ), xs#0), Tclass._module.Nat());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.apply
function _module.__default.apply($ly: LayerType, f#0: HandleType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.apply
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, f#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.apply($ly, f#0, xs#0) } 
    _module.__default.apply#canCall(f#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(f#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.apply($ly, f#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.apply (revealed)
axiom {:id "id166"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, f#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.apply($LS($ly), f#0, xs#0), $IsGoodHeap($Heap) } 
    _module.__default.apply#canCall(f#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); _module.__default.apply#canCall(f#0, ys#1)))
         && _module.__default.apply($LS($ly), f#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                #_module.List.Cons($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, f#0, $Box(y#0))): DatatypeType, 
                  _module.__default.apply($ly, f#0, ys#0))))));
// definition axiom for _module.__default.apply for decreasing-related literals (revealed)
axiom {:id "id167"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, f#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.apply($LS($ly), f#0, Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.apply#canCall(f#0, Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            _module.__default.apply#canCall(f#0, ys#3)))
         && _module.__default.apply($LS($ly), f#0, Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                #_module.List.Cons($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, f#0, $Box(y#2))): DatatypeType, 
                  _module.__default.apply($LS($ly), f#0, ys#2))))));
// definition axiom for _module.__default.apply for all literals (revealed)
axiom {:id "id168"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, f#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.apply($LS($ly), Lit(f#0), Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.apply#canCall(Lit(f#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(f#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#5 := Lit(_module.List._h2(Lit(xs#0))); 
            _module.__default.apply#canCall(Lit(f#0), ys#5)))
         && _module.__default.apply($LS($ly), Lit(f#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#4 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#4 := Lit(_module.List._h1(Lit(xs#0))); 
                #_module.List.Cons($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(f#0), $Box(y#4))): DatatypeType, 
                  Lit(_module.__default.apply($LS($ly), Lit(f#0), ys#4)))))));
}

function _module.__default.apply#canCall(f#0: HandleType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, f#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.apply($LS($ly), f#0, xs#0) } 
  _module.__default.apply($LS($ly), f#0, xs#0)
     == _module.__default.apply($ly, f#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, f#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.apply(AsFuelBottom($ly), f#0, xs#0) } 
  _module.__default.apply($ly, f#0, xs#0)
     == _module.__default.apply($LZ, f#0, xs#0));

function _module.__default.apply#requires(LayerType, HandleType, DatatypeType) : bool;

// #requires axiom for _module.__default.apply
axiom (forall $ly: LayerType, $Heap: Heap, f#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.apply#requires($ly, f#0, xs#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(f#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.apply#requires($ly, f#0, xs#0) == true);

procedure {:verboseName "apply (well-formedness)"} CheckWellformed$$_module.__default.apply(f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat())), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "apply (well-formedness)"} CheckWellformed$$_module.__default.apply(f#0: HandleType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##f#0: HandleType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.apply($LS($LZ), f#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id175"} _module.__default.apply($LS($LZ), f#0, xs#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.apply($LS($LZ), f#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id169"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id170"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id171"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id172"} y#Z#0 == let#1#0#0;
            ##f#0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0, 
              Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
              $Heap);
            ##xs#0 := ys#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            assert {:id "id173"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.apply#canCall(f#0, ys#Z#0);
            assume {:id "id174"} _module.__default.apply($LS($LZ), f#0, xs#0)
               == #_module.List.Cons($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, f#0, $Box(y#Z#0))): DatatypeType, 
                _module.__default.apply($LS($LZ), f#0, ys#Z#0));
            assume _module.__default.apply#canCall(f#0, ys#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.apply($LS($LZ), f#0, xs#0), Tclass._module.List());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.takeWhileAlways
function _module.__default.takeWhileAlways($ly: LayerType, p#0: HandleType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.takeWhileAlways
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.takeWhileAlways($ly, p#0, xs#0) } 
    _module.__default.takeWhileAlways#canCall(p#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.takeWhileAlways($ly, p#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.takeWhileAlways (revealed)
axiom {:id "id176"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.takeWhileAlways($LS($ly), p#0, xs#0), $IsGoodHeap($Heap) } 
    _module.__default.takeWhileAlways#canCall(p#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#1))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#1))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.takeWhileAlways#canCall(p#0, ys#1)))))
         && _module.__default.takeWhileAlways($LS($ly), p#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#0))): DatatypeType, 
                    #_module.Nat.Zero())
                   then #_module.List.Cons(y#0, _module.__default.takeWhileAlways($ly, p#0, ys#0))
                   else #_module.List.Nil())))));
// definition axiom for _module.__default.takeWhileAlways for decreasing-related literals (revealed)
axiom {:id "id177"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.takeWhileAlways($LS($ly), p#0, Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.takeWhileAlways#canCall(p#0, Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#3))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#3))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.takeWhileAlways#canCall(p#0, ys#3)))))
         && _module.__default.takeWhileAlways($LS($ly), p#0, Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#2))): DatatypeType, 
                    #_module.Nat.Zero())
                   then #_module.List.Cons(y#2, _module.__default.takeWhileAlways($LS($ly), p#0, ys#2))
                   else #_module.List.Nil())))));
// definition axiom for _module.__default.takeWhileAlways for all literals (revealed)
axiom {:id "id178"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.takeWhileAlways($LS($ly), Lit(p#0), Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.takeWhileAlways#canCall(Lit(p#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#5 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#5 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#5))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#5))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.takeWhileAlways#canCall(Lit(p#0), ys#5)))))
         && _module.__default.takeWhileAlways($LS($ly), Lit(p#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#4 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#4 := Lit(_module.List._h1(Lit(xs#0))); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#4))): DatatypeType, 
                    #_module.Nat.Zero())
                   then #_module.List.Cons(y#4, Lit(_module.__default.takeWhileAlways($LS($ly), Lit(p#0), ys#4)))
                   else #_module.List.Nil())))));
}

function _module.__default.takeWhileAlways#canCall(p#0: HandleType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.takeWhileAlways($LS($ly), p#0, xs#0) } 
  _module.__default.takeWhileAlways($LS($ly), p#0, xs#0)
     == _module.__default.takeWhileAlways($ly, p#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.takeWhileAlways(AsFuelBottom($ly), p#0, xs#0) } 
  _module.__default.takeWhileAlways($ly, p#0, xs#0)
     == _module.__default.takeWhileAlways($LZ, p#0, xs#0));

function _module.__default.takeWhileAlways#requires(LayerType, HandleType, DatatypeType) : bool;

// #requires axiom for _module.__default.takeWhileAlways
axiom (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.takeWhileAlways#requires($ly, p#0, xs#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.takeWhileAlways#requires($ly, p#0, xs#0) == true);

procedure {:verboseName "takeWhileAlways (well-formedness)"} CheckWellformed$$_module.__default.takeWhileAlways(p#0: HandleType
       where $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat())), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "takeWhileAlways (well-formedness)"} CheckWellformed$$_module.__default.takeWhileAlways(p#0: HandleType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##p#0: HandleType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.takeWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id186"} _module.__default.takeWhileAlways($LS($LZ), p#0, xs#0)
               == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.takeWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id179"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id180"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id181"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id182"} y#Z#0 == let#1#0#0;
            if (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#Z#0))): DatatypeType, 
              #_module.Nat.Zero()))
            {
                ##p#0 := p#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0, 
                  Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
                  $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id183"} DtRank(##xs#0) < DtRank(xs#0);
                assume _module.__default.takeWhileAlways#canCall(p#0, ys#Z#0);
                assume {:id "id184"} _module.__default.takeWhileAlways($LS($LZ), p#0, xs#0)
                   == #_module.List.Cons(y#Z#0, _module.__default.takeWhileAlways($LS($LZ), p#0, ys#Z#0));
                assume _module.__default.takeWhileAlways#canCall(p#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.takeWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                assume {:id "id185"} _module.__default.takeWhileAlways($LS($LZ), p#0, xs#0)
                   == Lit(#_module.List.Nil());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.takeWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.dropWhileAlways
function _module.__default.dropWhileAlways($ly: LayerType, p#0: HandleType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.dropWhileAlways
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.dropWhileAlways($ly, p#0, xs#0) } 
    _module.__default.dropWhileAlways#canCall(p#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.dropWhileAlways($ly, p#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.dropWhileAlways (revealed)
axiom {:id "id187"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($ly), p#0, xs#0), $IsGoodHeap($Heap) } 
    _module.__default.dropWhileAlways#canCall(p#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#1))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#1))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.dropWhileAlways#canCall(p#0, ys#1)))))
         && _module.__default.dropWhileAlways($LS($ly), p#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#0))): DatatypeType, 
                    #_module.Nat.Zero())
                   then _module.__default.dropWhileAlways($ly, p#0, ys#0)
                   else #_module.List.Cons(y#0, ys#0))))));
// definition axiom for _module.__default.dropWhileAlways for decreasing-related literals (revealed)
axiom {:id "id188"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.dropWhileAlways($LS($ly), p#0, Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.dropWhileAlways#canCall(p#0, Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#3))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#3))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.dropWhileAlways#canCall(p#0, ys#3)))))
         && _module.__default.dropWhileAlways($LS($ly), p#0, Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#2))): DatatypeType, 
                    #_module.Nat.Zero())
                   then _module.__default.dropWhileAlways($LS($ly), p#0, ys#2)
                   else #_module.List.Cons(y#2, ys#2))))));
// definition axiom for _module.__default.dropWhileAlways for all literals (revealed)
axiom {:id "id189"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.dropWhileAlways($LS($ly), Lit(p#0), Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.dropWhileAlways#canCall(Lit(p#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#5 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#5 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#5))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#5))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.dropWhileAlways#canCall(Lit(p#0), ys#5)))))
         && _module.__default.dropWhileAlways($LS($ly), Lit(p#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#4 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#4 := Lit(_module.List._h1(Lit(xs#0))); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#4))): DatatypeType, 
                    #_module.Nat.Zero())
                   then _module.__default.dropWhileAlways($LS($ly), Lit(p#0), ys#4)
                   else #_module.List.Cons(y#4, ys#4))))));
}

function _module.__default.dropWhileAlways#canCall(p#0: HandleType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.dropWhileAlways($LS($ly), p#0, xs#0) } 
  _module.__default.dropWhileAlways($LS($ly), p#0, xs#0)
     == _module.__default.dropWhileAlways($ly, p#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.dropWhileAlways(AsFuelBottom($ly), p#0, xs#0) } 
  _module.__default.dropWhileAlways($ly, p#0, xs#0)
     == _module.__default.dropWhileAlways($LZ, p#0, xs#0));

function _module.__default.dropWhileAlways#requires(LayerType, HandleType, DatatypeType) : bool;

// #requires axiom for _module.__default.dropWhileAlways
axiom (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.dropWhileAlways#requires($ly, p#0, xs#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.dropWhileAlways#requires($ly, p#0, xs#0) == true);

procedure {:verboseName "dropWhileAlways (well-formedness)"} CheckWellformed$$_module.__default.dropWhileAlways(p#0: HandleType
       where $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat())), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "dropWhileAlways (well-formedness)"} CheckWellformed$$_module.__default.dropWhileAlways(p#0: HandleType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##p#0: HandleType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.dropWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id197"} _module.__default.dropWhileAlways($LS($LZ), p#0, xs#0)
               == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.dropWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id190"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id191"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id192"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id193"} y#Z#0 == let#1#0#0;
            if (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#Z#0))): DatatypeType, 
              #_module.Nat.Zero()))
            {
                ##p#0 := p#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0, 
                  Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
                  $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id194"} DtRank(##xs#0) < DtRank(xs#0);
                assume _module.__default.dropWhileAlways#canCall(p#0, ys#Z#0);
                assume {:id "id195"} _module.__default.dropWhileAlways($LS($LZ), p#0, xs#0)
                   == _module.__default.dropWhileAlways($LS($LZ), p#0, ys#Z#0);
                assume _module.__default.dropWhileAlways#canCall(p#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.dropWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                assume {:id "id196"} _module.__default.dropWhileAlways($LS($LZ), p#0, xs#0)
                   == #_module.List.Cons(y#Z#0, ys#Z#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.dropWhileAlways($LS($LZ), p#0, xs#0), Tclass._module.List());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.filter
function _module.__default.filter($ly: LayerType, p#0: HandleType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.filter
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.filter($ly, p#0, xs#0) } 
    _module.__default.filter#canCall(p#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.filter($ly, p#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.filter (revealed)
axiom {:id "id198"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    { _module.__default.filter($LS($ly), p#0, xs#0), $IsGoodHeap($Heap) } 
    _module.__default.filter#canCall(p#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#1))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#1))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.filter#canCall(p#0, ys#1))
                 && (_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#1))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.filter#canCall(p#0, ys#1)))))
         && _module.__default.filter($LS($ly), p#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#0))): DatatypeType, 
                    #_module.Nat.Zero())
                   then #_module.List.Cons(y#0, _module.__default.filter($ly, p#0, ys#0))
                   else _module.__default.filter($ly, p#0, ys#0))))));
// definition axiom for _module.__default.filter for decreasing-related literals (revealed)
axiom {:id "id199"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.filter($LS($ly), p#0, Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.filter#canCall(p#0, Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#3))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#3))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.filter#canCall(p#0, ys#3))
                 && (_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#3))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.filter#canCall(p#0, ys#3)))))
         && _module.__default.filter($LS($ly), p#0, Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#2))): DatatypeType, 
                    #_module.Nat.Zero())
                   then #_module.List.Cons(y#2, _module.__default.filter($LS($ly), p#0, ys#2))
                   else _module.__default.filter($LS($ly), p#0, ys#2))))));
// definition axiom for _module.__default.filter for all literals (revealed)
axiom {:id "id200"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.filter($LS($ly), Lit(p#0), Lit(xs#0)), $IsGoodHeap($Heap) } 
    _module.__default.filter#canCall(Lit(p#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#5 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#5 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#5))): DatatypeType)
                 && (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#5))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.filter#canCall(Lit(p#0), ys#5))
                 && (_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#5))): DatatypeType, 
                    #_module.Nat.Zero())
                   ==> _module.__default.filter#canCall(Lit(p#0), ys#5)))))
         && _module.__default.filter($LS($ly), Lit(p#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#4 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#4 := Lit(_module.List._h1(Lit(xs#0))); 
                (if !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, Lit(p#0), $Box(y#4))): DatatypeType, 
                    #_module.Nat.Zero())
                   then #_module.List.Cons(y#4, Lit(_module.__default.filter($LS($ly), Lit(p#0), ys#4)))
                   else _module.__default.filter($LS($ly), Lit(p#0), ys#4))))));
}

function _module.__default.filter#canCall(p#0: HandleType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.filter($LS($ly), p#0, xs#0) } 
  _module.__default.filter($LS($ly), p#0, xs#0)
     == _module.__default.filter($ly, p#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.filter(AsFuelBottom($ly), p#0, xs#0) } 
  _module.__default.filter($ly, p#0, xs#0)
     == _module.__default.filter($LZ, p#0, xs#0));

function _module.__default.filter#requires(LayerType, HandleType, DatatypeType) : bool;

// #requires axiom for _module.__default.filter
axiom (forall $ly: LayerType, $Heap: Heap, p#0: HandleType, xs#0: DatatypeType :: 
  { _module.__default.filter#requires($ly, p#0, xs#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.filter#requires($ly, p#0, xs#0) == true);

procedure {:verboseName "filter (well-formedness)"} CheckWellformed$$_module.__default.filter(p#0: HandleType
       where $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat())), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "filter (well-formedness)"} CheckWellformed$$_module.__default.filter(p#0: HandleType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##p#0: HandleType;
  var ##xs#0: DatatypeType;
  var ##p#1: HandleType;
  var ##xs#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.filter($LS($LZ), p#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id209"} _module.__default.filter($LS($LZ), p#0, xs#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.filter($LS($LZ), p#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id201"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id202"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id203"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id204"} y#Z#0 == let#1#0#0;
            if (!_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), Tclass._module.Nat(), $Heap, p#0, $Box(y#Z#0))): DatatypeType, 
              #_module.Nat.Zero()))
            {
                ##p#0 := p#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0, 
                  Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
                  $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id205"} DtRank(##xs#0) < DtRank(xs#0);
                assume _module.__default.filter#canCall(p#0, ys#Z#0);
                assume {:id "id206"} _module.__default.filter($LS($LZ), p#0, xs#0)
                   == #_module.List.Cons(y#Z#0, _module.__default.filter($LS($LZ), p#0, ys#Z#0));
                assume _module.__default.filter#canCall(p#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.filter($LS($LZ), p#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                ##p#1 := p#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#1, 
                  Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
                  $Heap);
                ##xs#1 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#1, Tclass._module.List(), $Heap);
                assert {:id "id207"} DtRank(##xs#1) < DtRank(xs#0);
                assume _module.__default.filter#canCall(p#0, ys#Z#0);
                assume {:id "id208"} _module.__default.filter($LS($LZ), p#0, xs#0)
                   == _module.__default.filter($LS($LZ), p#0, ys#Z#0);
                assume _module.__default.filter#canCall(p#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.filter($LS($LZ), p#0, xs#0), Tclass._module.List());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.insort
function _module.__default.insort($ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.insort
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.insort($ly, n#0, xs#0) } 
    _module.__default.insort#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.insort($ly, n#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.insort (revealed)
axiom {:id "id210"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.insort($LS($ly), n#0, xs#0) } 
    _module.__default.insort#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#0, y#1))
                 && _module.__default.leq#canCall(n#0, y#1)
                 && (!_module.Bool#Equal(_module.__default.leq($LS($LZ), n#0, y#1), #_module.Bool.True())
                   ==> _module.__default.insort#canCall(n#0, ys#1)))))
         && _module.__default.insort($LS($ly), n#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Cons(n#0, Lit(#_module.List.Nil()))
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if _module.Bool#Equal(_module.__default.leq($LS($LZ), n#0, y#0), #_module.Bool.True())
                   then #_module.List.Cons(n#0, #_module.List.Cons(y#0, ys#0))
                   else #_module.List.Cons(y#0, _module.__default.insort($ly, n#0, ys#0)))))));
// definition axiom for _module.__default.insort for all literals (revealed)
axiom {:id "id211"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.insort($LS($ly), Lit(n#0), Lit(xs#0)) } 
    _module.__default.insort#canCall(Lit(n#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Bool(_module.__default.leq($LS($LZ), Lit(n#0), y#3))
                 && _module.__default.leq#canCall(Lit(n#0), y#3)
                 && (!_module.Bool#Equal(_module.__default.leq($LS($LZ), Lit(n#0), y#3), #_module.Bool.True())
                   ==> _module.__default.insort#canCall(Lit(n#0), ys#3)))))
         && _module.__default.insort($LS($ly), Lit(n#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Cons(Lit(n#0), Lit(#_module.List.Nil()))
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if _module.Bool#Equal(_module.__default.leq($LS($LZ), Lit(n#0), y#2), #_module.Bool.True())
                   then #_module.List.Cons(Lit(n#0), Lit(#_module.List.Cons(y#2, ys#2)))
                   else #_module.List.Cons(y#2, Lit(_module.__default.insort($LS($ly), Lit(n#0), ys#2))))))));
}

function _module.__default.insort#canCall(n#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.insort($LS($ly), n#0, xs#0) } 
  _module.__default.insort($LS($ly), n#0, xs#0)
     == _module.__default.insort($ly, n#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.insort(AsFuelBottom($ly), n#0, xs#0) } 
  _module.__default.insort($ly, n#0, xs#0)
     == _module.__default.insort($LZ, n#0, xs#0));

function _module.__default.insort#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.insort
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.insort#requires($ly, n#0, xs#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.insort#requires($ly, n#0, xs#0) == true);

procedure {:verboseName "insort (well-formedness)"} CheckWellformed$$_module.__default.insort(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "insort (well-formedness)"} CheckWellformed$$_module.__default.insort(n#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.insort($LS($LZ), n#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id219"} _module.__default.insort($LS($LZ), n#0, xs#0)
               == #_module.List.Cons(n#0, Lit(#_module.List.Nil()));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.insort($LS($LZ), n#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id212"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id213"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id214"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id215"} y#Z#0 == let#1#0#0;
            ##x#0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
            ##y#0 := y#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
            assume _module.__default.leq#canCall(n#0, y#Z#0);
            if (_module.Bool#Equal(_module.__default.leq($LS($LZ), n#0, y#Z#0), #_module.Bool.True()))
            {
                assume {:id "id216"} _module.__default.insort($LS($LZ), n#0, xs#0)
                   == #_module.List.Cons(n#0, #_module.List.Cons(y#Z#0, ys#Z#0));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.insort($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                ##n#0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id217"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.insort#canCall(n#0, ys#Z#0);
                assume {:id "id218"} _module.__default.insort($LS($LZ), n#0, xs#0)
                   == #_module.List.Cons(y#Z#0, _module.__default.insort($LS($LZ), n#0, ys#Z#0));
                assume _module.__default.insort#canCall(n#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.insort($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.ins
function _module.__default.ins($ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.ins
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.ins($ly, n#0, xs#0) } 
    _module.__default.ins#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.ins($ly, n#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.ins (revealed)
axiom {:id "id220"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.ins($LS($ly), n#0, xs#0) } 
    _module.__default.ins#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Bool(_module.__default.less($LS($LZ), n#0, y#1))
                 && _module.__default.less#canCall(n#0, y#1)
                 && (!_module.Bool#Equal(_module.__default.less($LS($LZ), n#0, y#1), #_module.Bool.True())
                   ==> _module.__default.ins#canCall(n#0, ys#1)))))
         && _module.__default.ins($LS($ly), n#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Cons(n#0, Lit(#_module.List.Nil()))
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if _module.Bool#Equal(_module.__default.less($LS($LZ), n#0, y#0), #_module.Bool.True())
                   then #_module.List.Cons(n#0, #_module.List.Cons(y#0, ys#0))
                   else #_module.List.Cons(y#0, _module.__default.ins($ly, n#0, ys#0)))))));
// definition axiom for _module.__default.ins for all literals (revealed)
axiom {:id "id221"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.ins($LS($ly), Lit(n#0), Lit(xs#0)) } 
    _module.__default.ins#canCall(Lit(n#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Bool(_module.__default.less($LS($LZ), Lit(n#0), y#3))
                 && _module.__default.less#canCall(Lit(n#0), y#3)
                 && (!_module.Bool#Equal(_module.__default.less($LS($LZ), Lit(n#0), y#3), #_module.Bool.True())
                   ==> _module.__default.ins#canCall(Lit(n#0), ys#3)))))
         && _module.__default.ins($LS($ly), Lit(n#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Cons(Lit(n#0), Lit(#_module.List.Nil()))
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if _module.Bool#Equal(_module.__default.less($LS($LZ), Lit(n#0), y#2), #_module.Bool.True())
                   then #_module.List.Cons(Lit(n#0), Lit(#_module.List.Cons(y#2, ys#2)))
                   else #_module.List.Cons(y#2, Lit(_module.__default.ins($LS($ly), Lit(n#0), ys#2))))))));
}

function _module.__default.ins#canCall(n#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.ins($LS($ly), n#0, xs#0) } 
  _module.__default.ins($LS($ly), n#0, xs#0)
     == _module.__default.ins($ly, n#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.ins(AsFuelBottom($ly), n#0, xs#0) } 
  _module.__default.ins($ly, n#0, xs#0) == _module.__default.ins($LZ, n#0, xs#0));

function _module.__default.ins#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ins
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.ins#requires($ly, n#0, xs#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.ins#requires($ly, n#0, xs#0) == true);

procedure {:verboseName "ins (well-formedness)"} CheckWellformed$$_module.__default.ins(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ins (well-formedness)"} CheckWellformed$$_module.__default.ins(n#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##y#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.ins($LS($LZ), n#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id229"} _module.__default.ins($LS($LZ), n#0, xs#0)
               == #_module.List.Cons(n#0, Lit(#_module.List.Nil()));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ins($LS($LZ), n#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id222"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id223"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id224"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id225"} y#Z#0 == let#1#0#0;
            ##x#0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
            ##y#0 := y#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
            assume _module.__default.less#canCall(n#0, y#Z#0);
            if (_module.Bool#Equal(_module.__default.less($LS($LZ), n#0, y#Z#0), #_module.Bool.True()))
            {
                assume {:id "id226"} _module.__default.ins($LS($LZ), n#0, xs#0)
                   == #_module.List.Cons(n#0, #_module.List.Cons(y#Z#0, ys#Z#0));
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.ins($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                ##n#0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id227"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.ins#canCall(n#0, ys#Z#0);
                assume {:id "id228"} _module.__default.ins($LS($LZ), n#0, xs#0)
                   == #_module.List.Cons(y#Z#0, _module.__default.ins($LS($LZ), n#0, ys#Z#0));
                assume _module.__default.ins#canCall(n#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.ins($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.ins1
function _module.__default.ins1($ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.ins1
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.ins1($ly, n#0, xs#0) } 
    _module.__default.ins1#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.ins1($ly, n#0, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.ins1 (revealed)
axiom {:id "id230"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    { _module.__default.ins1($LS($ly), n#0, xs#0) } 
    _module.__default.ins1#canCall(n#0, xs#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              $IsA#_module.Nat(n#0)
                 && $IsA#_module.Nat(y#1)
                 && (!_module.Nat#Equal(n#0, y#1) ==> _module.__default.ins1#canCall(n#0, ys#1)))))
         && _module.__default.ins1($LS($ly), n#0, xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Cons(n#0, Lit(#_module.List.Nil()))
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                (if _module.Nat#Equal(n#0, y#0)
                   then #_module.List.Cons(y#0, ys#0)
                   else #_module.List.Cons(y#0, _module.__default.ins1($ly, n#0, ys#0)))))));
// definition axiom for _module.__default.ins1 for all literals (revealed)
axiom {:id "id231"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.ins1($LS($ly), Lit(n#0), Lit(xs#0)) } 
    _module.__default.ins1#canCall(Lit(n#0), Lit(xs#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(n#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              $IsA#_module.Nat(Lit(n#0))
                 && $IsA#_module.Nat(y#3)
                 && (!_module.Nat#Equal(n#0, y#3)
                   ==> _module.__default.ins1#canCall(Lit(n#0), ys#3)))))
         && _module.__default.ins1($LS($ly), Lit(n#0), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Cons(Lit(n#0), Lit(#_module.List.Nil()))
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                (if _module.Nat#Equal(n#0, y#2)
                   then #_module.List.Cons(y#2, ys#2)
                   else #_module.List.Cons(y#2, Lit(_module.__default.ins1($LS($ly), Lit(n#0), ys#2))))))));
}

function _module.__default.ins1#canCall(n#0: DatatypeType, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.ins1($LS($ly), n#0, xs#0) } 
  _module.__default.ins1($LS($ly), n#0, xs#0)
     == _module.__default.ins1($ly, n#0, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.ins1(AsFuelBottom($ly), n#0, xs#0) } 
  _module.__default.ins1($ly, n#0, xs#0) == _module.__default.ins1($LZ, n#0, xs#0));

function _module.__default.ins1#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ins1
axiom (forall $ly: LayerType, n#0: DatatypeType, xs#0: DatatypeType :: 
  { _module.__default.ins1#requires($ly, n#0, xs#0) } 
  $Is(n#0, Tclass._module.Nat()) && $Is(xs#0, Tclass._module.List())
     ==> _module.__default.ins1#requires($ly, n#0, xs#0) == true);

procedure {:verboseName "ins1 (well-formedness)"} CheckWellformed$$_module.__default.ins1(n#0: DatatypeType where $Is(n#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ins1 (well-formedness)"} CheckWellformed$$_module.__default.ins1(n#0: DatatypeType, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.ins1($LS($LZ), n#0, xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id239"} _module.__default.ins1($LS($LZ), n#0, xs#0)
               == #_module.List.Cons(n#0, Lit(#_module.List.Nil()));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ins1($LS($LZ), n#0, xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id232"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id233"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id234"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id235"} y#Z#0 == let#1#0#0;
            if (_module.Nat#Equal(n#0, y#Z#0))
            {
                assume {:id "id236"} _module.__default.ins1($LS($LZ), n#0, xs#0) == #_module.List.Cons(y#Z#0, ys#Z#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.ins1($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
            else
            {
                ##n#0 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
                ##xs#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
                assert {:id "id237"} DtRank(##n#0) < DtRank(n#0)
                   || (DtRank(##n#0) == DtRank(n#0) && DtRank(##xs#0) < DtRank(xs#0));
                assume _module.__default.ins1#canCall(n#0, ys#Z#0);
                assume {:id "id238"} _module.__default.ins1($LS($LZ), n#0, xs#0)
                   == #_module.List.Cons(y#Z#0, _module.__default.ins1($LS($LZ), n#0, ys#Z#0));
                assume _module.__default.ins1#canCall(n#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.ins1($LS($LZ), n#0, xs#0), Tclass._module.List());
                return;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.sort
function _module.__default.sort($ly: LayerType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.sort
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.sort($ly, xs#0) } 
    _module.__default.sort#canCall(xs#0)
         || (3 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.sort($ly, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.sort (revealed)
axiom {:id "id240"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.sort($LS($ly), xs#0) } 
    _module.__default.sort#canCall(xs#0)
         || (3 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var ys#1 := _module.List._h2(xs#0); 
            (var y#1 := _module.List._h1(xs#0); 
              _module.__default.sort#canCall(ys#1)
                 && _module.__default.insort#canCall(y#1, _module.__default.sort($ly, ys#1)))))
         && _module.__default.sort($LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var ys#0 := _module.List._h2(xs#0); 
              (var y#0 := _module.List._h1(xs#0); 
                _module.__default.insort($LS($LZ), y#0, _module.__default.sort($ly, ys#0))))));
// definition axiom for _module.__default.sort for all literals (revealed)
axiom {:id "id241"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.sort($LS($ly), Lit(xs#0)) } 
    _module.__default.sort#canCall(Lit(xs#0))
         || (3 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var y#3 := Lit(_module.List._h1(Lit(xs#0))); 
              _module.__default.sort#canCall(ys#3)
                 && _module.__default.insort#canCall(y#3, _module.__default.sort($LS($ly), ys#3)))))
         && _module.__default.sort($LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var ys#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(xs#0))); 
                Lit(_module.__default.insort($LS($LZ), y#2, Lit(_module.__default.sort($LS($ly), ys#2))))))));
}

function _module.__default.sort#canCall(xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.sort($LS($ly), xs#0) } 
  _module.__default.sort($LS($ly), xs#0) == _module.__default.sort($ly, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.sort(AsFuelBottom($ly), xs#0) } 
  _module.__default.sort($ly, xs#0) == _module.__default.sort($LZ, xs#0));

function _module.__default.sort#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.sort
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.sort#requires($ly, xs#0) } 
  $Is(xs#0, Tclass._module.List())
     ==> _module.__default.sort#requires($ly, xs#0) == true);

procedure {:verboseName "sort (well-formedness)"} CheckWellformed$$_module.__default.sort(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "sort (well-formedness)"} CheckWellformed$$_module.__default.sort(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#0: DatatypeType;
  var ##xs#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.sort($LS($LZ), xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id248"} _module.__default.sort($LS($LZ), xs#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.sort($LS($LZ), xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc ys#Z#0;
            assume {:id "id242"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id243"} ys#Z#0 == let#0#0#0;
            havoc y#Z#0;
            assume {:id "id244"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id245"} y#Z#0 == let#1#0#0;
            ##n#0 := y#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
            ##xs#1 := ys#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1, Tclass._module.List(), $Heap);
            assert {:id "id246"} DtRank(##xs#1) < DtRank(xs#0);
            assume _module.__default.sort#canCall(ys#Z#0);
            ##xs#0 := _module.__default.sort($LS($LZ), ys#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            assume _module.__default.insort#canCall(y#Z#0, _module.__default.sort($LS($LZ), ys#Z#0));
            assume {:id "id247"} _module.__default.sort($LS($LZ), xs#0)
               == _module.__default.insort($LS($LZ), y#Z#0, _module.__default.sort($LS($LZ), ys#Z#0));
            assume _module.__default.sort#canCall(ys#Z#0)
               && _module.__default.insort#canCall(y#Z#0, _module.__default.sort($LS($LZ), ys#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.sort($LS($LZ), xs#0), Tclass._module.List());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.reverse
function _module.__default.reverse($ly: LayerType, xs#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.reverse
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.reverse($ly, xs#0) } 
    _module.__default.reverse#canCall(xs#0)
         || (3 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> $Is(_module.__default.reverse($ly, xs#0), Tclass._module.List()));
// definition axiom for _module.__default.reverse (revealed)
axiom {:id "id249"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.reverse($LS($ly), xs#0) } 
    _module.__default.reverse#canCall(xs#0)
         || (3 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var rest#1 := _module.List._h2(xs#0); 
            (var t#1 := _module.List._h1(xs#0); 
              _module.__default.reverse#canCall(rest#1)
                 && _module.__default.concat#canCall(_module.__default.reverse($ly, rest#1), 
                  #_module.List.Cons(t#1, Lit(#_module.List.Nil()))))))
         && _module.__default.reverse($LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then #_module.List.Nil()
             else (var rest#0 := _module.List._h2(xs#0); 
              (var t#0 := _module.List._h1(xs#0); 
                _module.__default.concat($LS($LZ), 
                  _module.__default.reverse($ly, rest#0), 
                  #_module.List.Cons(t#0, Lit(#_module.List.Nil())))))));
// definition axiom for _module.__default.reverse for all literals (revealed)
axiom {:id "id250"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.reverse($LS($ly), Lit(xs#0)) } 
    _module.__default.reverse#canCall(Lit(xs#0))
         || (3 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var rest#3 := Lit(_module.List._h2(Lit(xs#0))); 
            (var t#3 := Lit(_module.List._h1(Lit(xs#0))); 
              _module.__default.reverse#canCall(rest#3)
                 && _module.__default.concat#canCall(_module.__default.reverse($LS($ly), rest#3), 
                  #_module.List.Cons(t#3, Lit(#_module.List.Nil()))))))
         && _module.__default.reverse($LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then #_module.List.Nil()
             else (var rest#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var t#2 := Lit(_module.List._h1(Lit(xs#0))); 
                Lit(_module.__default.concat($LS($LZ), 
                    Lit(_module.__default.reverse($LS($ly), rest#2)), 
                    Lit(#_module.List.Cons(t#2, Lit(#_module.List.Nil())))))))));
}

function _module.__default.reverse#canCall(xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.reverse($LS($ly), xs#0) } 
  _module.__default.reverse($LS($ly), xs#0)
     == _module.__default.reverse($ly, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.reverse(AsFuelBottom($ly), xs#0) } 
  _module.__default.reverse($ly, xs#0) == _module.__default.reverse($LZ, xs#0));

function _module.__default.reverse#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.reverse
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.reverse#requires($ly, xs#0) } 
  $Is(xs#0, Tclass._module.List())
     ==> _module.__default.reverse#requires($ly, xs#0) == true);

procedure {:verboseName "reverse (well-formedness)"} CheckWellformed$$_module.__default.reverse(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "reverse (well-formedness)"} CheckWellformed$$_module.__default.reverse(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var t#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##xs#0: DatatypeType;
  var ##xs#1: DatatypeType;
  var ##ys#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.reverse($LS($LZ), xs#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id257"} _module.__default.reverse($LS($LZ), xs#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.reverse($LS($LZ), xs#0), Tclass._module.List());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc rest#Z#0;
            assume {:id "id251"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id252"} rest#Z#0 == let#0#0#0;
            havoc t#Z#0;
            assume {:id "id253"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id254"} t#Z#0 == let#1#0#0;
            ##xs#1 := rest#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1, Tclass._module.List(), $Heap);
            assert {:id "id255"} DtRank(##xs#1) < DtRank(xs#0);
            assume _module.__default.reverse#canCall(rest#Z#0);
            ##xs#0 := _module.__default.reverse($LS($LZ), rest#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            ##ys#0 := #_module.List.Cons(t#Z#0, Lit(#_module.List.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass._module.List(), $Heap);
            assume _module.__default.concat#canCall(_module.__default.reverse($LS($LZ), rest#Z#0), 
              #_module.List.Cons(t#Z#0, Lit(#_module.List.Nil())));
            assume {:id "id256"} _module.__default.reverse($LS($LZ), xs#0)
               == _module.__default.concat($LS($LZ), 
                _module.__default.reverse($LS($LZ), rest#Z#0), 
                #_module.List.Cons(t#Z#0, Lit(#_module.List.Nil())));
            assume _module.__default.reverse#canCall(rest#Z#0)
               && _module.__default.concat#canCall(_module.__default.reverse($LS($LZ), rest#Z#0), 
                #_module.List.Cons(t#Z#0, Lit(#_module.List.Nil())));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.reverse($LS($LZ), xs#0), Tclass._module.List());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.zip
function _module.__default.zip($ly: LayerType, a#0: DatatypeType, b#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.zip
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.zip($ly, a#0, b#0) } 
    _module.__default.zip#canCall(a#0, b#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List())
           && $Is(b#0, Tclass._module.List()))
       ==> $Is(_module.__default.zip($ly, a#0, b#0), Tclass._module.PList()));
// definition axiom for _module.__default.zip (revealed)
axiom {:id "id258"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    { _module.__default.zip($LS($ly), a#0, b#0) } 
    _module.__default.zip#canCall(a#0, b#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List())
           && $Is(b#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(a#0)
           ==> (var xs#1 := _module.List._h2(a#0); 
            !_module.List.Nil_q(b#0)
               ==> (var ys#1 := _module.List._h2(b#0); _module.__default.zip#canCall(xs#1, ys#1))))
         && _module.__default.zip($LS($ly), a#0, b#0)
           == (if _module.List.Nil_q(a#0)
             then #_module.PList.PNil()
             else (var xs#0 := _module.List._h2(a#0); 
              (var x#0 := _module.List._h1(a#0); 
                (if _module.List.Nil_q(b#0)
                   then #_module.PList.PNil()
                   else (var ys#0 := _module.List._h2(b#0); 
                    (var y#0 := _module.List._h1(b#0); 
                      #_module.PList.PCons(#_module.Pair.Pair(x#0, y#0), _module.__default.zip($ly, xs#0, ys#0)))))))));
// definition axiom for _module.__default.zip for all literals (revealed)
axiom {:id "id259"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
    {:weight 3} { _module.__default.zip($LS($ly), Lit(a#0), Lit(b#0)) } 
    _module.__default.zip#canCall(Lit(a#0), Lit(b#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List())
           && $Is(b#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(a#0)))
           ==> (var xs#3 := Lit(_module.List._h2(Lit(a#0))); 
            !Lit(_module.List.Nil_q(Lit(b#0)))
               ==> (var ys#3 := Lit(_module.List._h2(Lit(b#0))); 
                _module.__default.zip#canCall(xs#3, ys#3))))
         && _module.__default.zip($LS($ly), Lit(a#0), Lit(b#0))
           == (if _module.List.Nil_q(Lit(a#0))
             then #_module.PList.PNil()
             else (var xs#2 := Lit(_module.List._h2(Lit(a#0))); 
              (var x#2 := Lit(_module.List._h1(Lit(a#0))); 
                (if _module.List.Nil_q(Lit(b#0))
                   then #_module.PList.PNil()
                   else (var ys#2 := Lit(_module.List._h2(Lit(b#0))); 
                    (var y#2 := Lit(_module.List._h1(Lit(b#0))); 
                      Lit(#_module.PList.PCons(Lit(#_module.Pair.Pair(x#2, y#2)), 
                          Lit(_module.__default.zip($LS($ly), xs#2, ys#2)))))))))));
}

function _module.__default.zip#canCall(a#0: DatatypeType, b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.zip($LS($ly), a#0, b#0) } 
  _module.__default.zip($LS($ly), a#0, b#0)
     == _module.__default.zip($ly, a#0, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.zip(AsFuelBottom($ly), a#0, b#0) } 
  _module.__default.zip($ly, a#0, b#0) == _module.__default.zip($LZ, a#0, b#0));

function Tclass._module.PList() : Ty
uses {
// Tclass._module.PList Tag
axiom Tag(Tclass._module.PList()) == Tagclass._module.PList
   && TagFamily(Tclass._module.PList()) == tytagFamily$PList;
}

const unique Tagclass._module.PList: TyTag;

// Box/unbox axiom for Tclass._module.PList
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.PList()) } 
  $IsBox(bx, Tclass._module.PList())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.PList()));

function _module.__default.zip#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.zip
axiom (forall $ly: LayerType, a#0: DatatypeType, b#0: DatatypeType :: 
  { _module.__default.zip#requires($ly, a#0, b#0) } 
  $Is(a#0, Tclass._module.List()) && $Is(b#0, Tclass._module.List())
     ==> _module.__default.zip#requires($ly, a#0, b#0) == true);

procedure {:verboseName "zip (well-formedness)"} CheckWellformed$$_module.__default.zip(a#0: DatatypeType where $Is(a#0, Tclass._module.List()), 
    b#0: DatatypeType where $Is(b#0, Tclass._module.List()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "zip (well-formedness)"} CheckWellformed$$_module.__default.zip(a#0: DatatypeType, b#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var xs#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var ys#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.zip($LS($LZ), a#0, b#0), Tclass._module.PList());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.List.Nil())
        {
            assume {:id "id271"} _module.__default.zip($LS($LZ), a#0, b#0) == Lit(#_module.PList.PNil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.zip($LS($LZ), a#0, b#0), Tclass._module.PList());
            return;
        }
        else if (a#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Nat());
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc xs#Z#0;
            assume {:id "id260"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id261"} xs#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id262"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id263"} x#Z#0 == let#1#0#0;
            if (b#0 == #_module.List.Nil())
            {
                assume {:id "id270"} _module.__default.zip($LS($LZ), a#0, b#0) == Lit(#_module.PList.PNil());
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.zip($LS($LZ), a#0, b#0), Tclass._module.PList());
                return;
            }
            else if (b#0 == #_module.List.Cons(_mcc#2#0, _mcc#3#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Nat());
                assume $Is(_mcc#3#0, Tclass._module.List());
                havoc ys#Z#0;
                assume {:id "id264"} let#2#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.List());
                assume {:id "id265"} ys#Z#0 == let#2#0#0;
                havoc y#Z#0;
                assume {:id "id266"} let#3#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, Tclass._module.Nat());
                assume {:id "id267"} y#Z#0 == let#3#0#0;
                ##a#0 := xs#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##a#0, Tclass._module.List(), $Heap);
                ##b#0 := ys#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##b#0, Tclass._module.List(), $Heap);
                assert {:id "id268"} DtRank(##a#0) < DtRank(a#0)
                   || (DtRank(##a#0) == DtRank(a#0) && DtRank(##b#0) < DtRank(b#0));
                assume _module.__default.zip#canCall(xs#Z#0, ys#Z#0);
                assume {:id "id269"} _module.__default.zip($LS($LZ), a#0, b#0)
                   == #_module.PList.PCons(#_module.Pair.Pair(x#Z#0, y#Z#0), 
                    _module.__default.zip($LS($LZ), xs#Z#0, ys#Z#0));
                assume _module.__default.zip#canCall(xs#Z#0, ys#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.zip($LS($LZ), a#0, b#0), Tclass._module.PList());
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.zipConcat
function _module.__default.zipConcat(x#0: DatatypeType, xs#0: DatatypeType, more#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.zipConcat
axiom 4 <= $FunctionContextHeight
   ==> (forall x#0: DatatypeType, xs#0: DatatypeType, more#0: DatatypeType :: 
    { _module.__default.zipConcat(x#0, xs#0, more#0) } 
    _module.__default.zipConcat#canCall(x#0, xs#0, more#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List())
           && $Is(more#0, Tclass._module.List()))
       ==> $Is(_module.__default.zipConcat(x#0, xs#0, more#0), Tclass._module.PList()));
// definition axiom for _module.__default.zipConcat (revealed)
axiom {:id "id272"} 4 <= $FunctionContextHeight
   ==> (forall x#0: DatatypeType, xs#0: DatatypeType, more#0: DatatypeType :: 
    { _module.__default.zipConcat(x#0, xs#0, more#0) } 
    _module.__default.zipConcat#canCall(x#0, xs#0, more#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List())
           && $Is(more#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(more#0)
           ==> (var ys#1 := _module.List._h2(more#0); 
            _module.__default.zip#canCall(xs#0, ys#1)))
         && _module.__default.zipConcat(x#0, xs#0, more#0)
           == (if _module.List.Nil_q(more#0)
             then #_module.PList.PNil()
             else (var ys#0 := _module.List._h2(more#0); 
              (var y#0 := _module.List._h1(more#0); 
                #_module.PList.PCons(#_module.Pair.Pair(x#0, y#0), _module.__default.zip($LS($LZ), xs#0, ys#0))))));
// definition axiom for _module.__default.zipConcat for all literals (revealed)
axiom {:id "id273"} 4 <= $FunctionContextHeight
   ==> (forall x#0: DatatypeType, xs#0: DatatypeType, more#0: DatatypeType :: 
    {:weight 3} { _module.__default.zipConcat(Lit(x#0), Lit(xs#0), Lit(more#0)) } 
    _module.__default.zipConcat#canCall(Lit(x#0), Lit(xs#0), Lit(more#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(x#0, Tclass._module.Nat())
           && $Is(xs#0, Tclass._module.List())
           && $Is(more#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(more#0)))
           ==> (var ys#3 := Lit(_module.List._h2(Lit(more#0))); 
            _module.__default.zip#canCall(Lit(xs#0), ys#3)))
         && _module.__default.zipConcat(Lit(x#0), Lit(xs#0), Lit(more#0))
           == (if _module.List.Nil_q(Lit(more#0))
             then #_module.PList.PNil()
             else (var ys#2 := Lit(_module.List._h2(Lit(more#0))); 
              (var y#2 := Lit(_module.List._h1(Lit(more#0))); 
                Lit(#_module.PList.PCons(Lit(#_module.Pair.Pair(Lit(x#0), y#2)), 
                    Lit(_module.__default.zip($LS($LZ), Lit(xs#0), ys#2))))))));
}

function _module.__default.zipConcat#canCall(x#0: DatatypeType, xs#0: DatatypeType, more#0: DatatypeType) : bool;

function _module.__default.zipConcat#requires(DatatypeType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.zipConcat
axiom (forall x#0: DatatypeType, xs#0: DatatypeType, more#0: DatatypeType :: 
  { _module.__default.zipConcat#requires(x#0, xs#0, more#0) } 
  $Is(x#0, Tclass._module.Nat())
       && $Is(xs#0, Tclass._module.List())
       && $Is(more#0, Tclass._module.List())
     ==> _module.__default.zipConcat#requires(x#0, xs#0, more#0) == true);

procedure {:verboseName "zipConcat (well-formedness)"} CheckWellformed$$_module.__default.zipConcat(x#0: DatatypeType where $Is(x#0, Tclass._module.Nat()), 
    xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()), 
    more#0: DatatypeType where $Is(more#0, Tclass._module.List()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.height
function _module.__default.height($ly: LayerType, t#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.height
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.height($ly, t#0) } 
    _module.__default.height#canCall(t#0)
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> $Is(_module.__default.height($ly, t#0), Tclass._module.Nat()));
// definition axiom for _module.__default.height (revealed)
axiom {:id "id280"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.height($LS($ly), t#0) } 
    _module.__default.height#canCall(t#0)
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (!_module.Tree.Leaf_q(t#0)
           ==> (var r#1 := _module.Tree._h9(t#0); 
            (var l#1 := _module.Tree._h7(t#0); 
              _module.__default.height#canCall(l#1)
                 && _module.__default.height#canCall(r#1)
                 && _module.__default.max#canCall(_module.__default.height($ly, l#1), _module.__default.height($ly, r#1)))))
         && _module.__default.height($LS($ly), t#0)
           == (if _module.Tree.Leaf_q(t#0)
             then #_module.Nat.Zero()
             else (var r#0 := _module.Tree._h9(t#0); 
              (var x#0 := _module.Tree._h8(t#0); 
                (var l#0 := _module.Tree._h7(t#0); 
                  #_module.Nat.Suc(_module.__default.max($LS($LZ), _module.__default.height($ly, l#0), _module.__default.height($ly, r#0))))))));
// definition axiom for _module.__default.height for all literals (revealed)
axiom {:id "id281"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.height($LS($ly), Lit(t#0)) } 
    _module.__default.height#canCall(Lit(t#0))
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (!Lit(_module.Tree.Leaf_q(Lit(t#0)))
           ==> (var r#3 := Lit(_module.Tree._h9(Lit(t#0))); 
            (var l#3 := Lit(_module.Tree._h7(Lit(t#0))); 
              _module.__default.height#canCall(l#3)
                 && _module.__default.height#canCall(r#3)
                 && _module.__default.max#canCall(_module.__default.height($LS($ly), l#3), _module.__default.height($LS($ly), r#3)))))
         && _module.__default.height($LS($ly), Lit(t#0))
           == (if _module.Tree.Leaf_q(Lit(t#0))
             then #_module.Nat.Zero()
             else (var r#2 := Lit(_module.Tree._h9(Lit(t#0))); 
              (var x#2 := Lit(_module.Tree._h8(Lit(t#0))); 
                (var l#2 := Lit(_module.Tree._h7(Lit(t#0))); 
                  Lit(#_module.Nat.Suc(Lit(_module.__default.max($LS($LZ), 
                          Lit(_module.__default.height($LS($ly), l#2)), 
                          Lit(_module.__default.height($LS($ly), r#2)))))))))));
}

function _module.__default.height#canCall(t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.height($LS($ly), t#0) } 
  _module.__default.height($LS($ly), t#0) == _module.__default.height($ly, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.height(AsFuelBottom($ly), t#0) } 
  _module.__default.height($ly, t#0) == _module.__default.height($LZ, t#0));

function Tclass._module.Tree() : Ty
uses {
// Tclass._module.Tree Tag
axiom Tag(Tclass._module.Tree()) == Tagclass._module.Tree
   && TagFamily(Tclass._module.Tree()) == tytagFamily$Tree;
}

const unique Tagclass._module.Tree: TyTag;

// Box/unbox axiom for Tclass._module.Tree
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Tree()) } 
  $IsBox(bx, Tclass._module.Tree())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Tree()));

function _module.__default.height#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.height
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.height#requires($ly, t#0) } 
  $Is(t#0, Tclass._module.Tree())
     ==> _module.__default.height#requires($ly, t#0) == true);

procedure {:verboseName "height (well-formedness)"} CheckWellformed$$_module.__default.height(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "height (well-formedness)"} CheckWellformed$$_module.__default.height(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var r#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var l#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var ##x#0: DatatypeType;
  var ##t#0: DatatypeType;
  var ##y#0: DatatypeType;
  var ##t#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.height($LS($LZ), t#0), Tclass._module.Nat());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (t#0 == #_module.Tree.Leaf())
        {
            assume {:id "id291"} _module.__default.height($LS($LZ), t#0) == Lit(#_module.Nat.Zero());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.height($LS($LZ), t#0), Tclass._module.Nat());
            return;
        }
        else if (t#0 == #_module.Tree.Node(_mcc#0#0, _mcc#1#0, _mcc#2#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Tree());
            assume $Is(_mcc#1#0, Tclass._module.Nat());
            assume $Is(_mcc#2#0, Tclass._module.Tree());
            havoc r#Z#0;
            assume {:id "id282"} let#0#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Tree());
            assume {:id "id283"} r#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id284"} let#1#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id285"} x#Z#0 == let#1#0#0;
            havoc l#Z#0;
            assume {:id "id286"} let#2#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.Tree());
            assume {:id "id287"} l#Z#0 == let#2#0#0;
            ##t#0 := l#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Tree(), $Heap);
            assert {:id "id288"} DtRank(##t#0) < DtRank(t#0);
            assume _module.__default.height#canCall(l#Z#0);
            ##x#0 := _module.__default.height($LS($LZ), l#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, Tclass._module.Nat(), $Heap);
            ##t#1 := r#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Tree(), $Heap);
            assert {:id "id289"} DtRank(##t#1) < DtRank(t#0);
            assume _module.__default.height#canCall(r#Z#0);
            ##y#0 := _module.__default.height($LS($LZ), r#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0, Tclass._module.Nat(), $Heap);
            assume _module.__default.max#canCall(_module.__default.height($LS($LZ), l#Z#0), 
              _module.__default.height($LS($LZ), r#Z#0));
            assume {:id "id290"} _module.__default.height($LS($LZ), t#0)
               == #_module.Nat.Suc(_module.__default.max($LS($LZ), 
                  _module.__default.height($LS($LZ), l#Z#0), 
                  _module.__default.height($LS($LZ), r#Z#0)));
            assume _module.__default.height#canCall(l#Z#0)
               && _module.__default.height#canCall(r#Z#0)
               && _module.__default.max#canCall(_module.__default.height($LS($LZ), l#Z#0), 
                _module.__default.height($LS($LZ), r#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.height($LS($LZ), t#0), Tclass._module.Nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.mirror
function _module.__default.mirror($ly: LayerType, t#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.mirror
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.mirror($ly, t#0) } 
    _module.__default.mirror#canCall(t#0)
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> $Is(_module.__default.mirror($ly, t#0), Tclass._module.Tree()));
// definition axiom for _module.__default.mirror (revealed)
axiom {:id "id292"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.mirror($LS($ly), t#0) } 
    _module.__default.mirror#canCall(t#0)
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (!_module.Tree.Leaf_q(t#0)
           ==> (var r#1 := _module.Tree._h9(t#0); 
            (var l#1 := _module.Tree._h7(t#0); 
              _module.__default.mirror#canCall(r#1) && _module.__default.mirror#canCall(l#1))))
         && _module.__default.mirror($LS($ly), t#0)
           == (if _module.Tree.Leaf_q(t#0)
             then #_module.Tree.Leaf()
             else (var r#0 := _module.Tree._h9(t#0); 
              (var x#0 := _module.Tree._h8(t#0); 
                (var l#0 := _module.Tree._h7(t#0); 
                  #_module.Tree.Node(_module.__default.mirror($ly, r#0), x#0, _module.__default.mirror($ly, l#0)))))));
// definition axiom for _module.__default.mirror for all literals (revealed)
axiom {:id "id293"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.mirror($LS($ly), Lit(t#0)) } 
    _module.__default.mirror#canCall(Lit(t#0))
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (!Lit(_module.Tree.Leaf_q(Lit(t#0)))
           ==> (var r#3 := Lit(_module.Tree._h9(Lit(t#0))); 
            (var l#3 := Lit(_module.Tree._h7(Lit(t#0))); 
              _module.__default.mirror#canCall(r#3) && _module.__default.mirror#canCall(l#3))))
         && _module.__default.mirror($LS($ly), Lit(t#0))
           == (if _module.Tree.Leaf_q(Lit(t#0))
             then #_module.Tree.Leaf()
             else (var r#2 := Lit(_module.Tree._h9(Lit(t#0))); 
              (var x#2 := Lit(_module.Tree._h8(Lit(t#0))); 
                (var l#2 := Lit(_module.Tree._h7(Lit(t#0))); 
                  Lit(#_module.Tree.Node(Lit(_module.__default.mirror($LS($ly), r#2)), 
                      x#2, 
                      Lit(_module.__default.mirror($LS($ly), l#2)))))))));
}

function _module.__default.mirror#canCall(t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.mirror($LS($ly), t#0) } 
  _module.__default.mirror($LS($ly), t#0) == _module.__default.mirror($ly, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.mirror(AsFuelBottom($ly), t#0) } 
  _module.__default.mirror($ly, t#0) == _module.__default.mirror($LZ, t#0));

function _module.__default.mirror#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.mirror
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.mirror#requires($ly, t#0) } 
  $Is(t#0, Tclass._module.Tree())
     ==> _module.__default.mirror#requires($ly, t#0) == true);

procedure {:verboseName "mirror (well-formedness)"} CheckWellformed$$_module.__default.mirror(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "mirror (well-formedness)"} CheckWellformed$$_module.__default.mirror(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var r#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var l#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.mirror($LS($LZ), t#0), Tclass._module.Tree());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (t#0 == #_module.Tree.Leaf())
        {
            assume {:id "id303"} _module.__default.mirror($LS($LZ), t#0) == Lit(#_module.Tree.Leaf());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.mirror($LS($LZ), t#0), Tclass._module.Tree());
            return;
        }
        else if (t#0 == #_module.Tree.Node(_mcc#0#0, _mcc#1#0, _mcc#2#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Tree());
            assume $Is(_mcc#1#0, Tclass._module.Nat());
            assume $Is(_mcc#2#0, Tclass._module.Tree());
            havoc r#Z#0;
            assume {:id "id294"} let#0#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Tree());
            assume {:id "id295"} r#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id296"} let#1#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Nat());
            assume {:id "id297"} x#Z#0 == let#1#0#0;
            havoc l#Z#0;
            assume {:id "id298"} let#2#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.Tree());
            assume {:id "id299"} l#Z#0 == let#2#0#0;
            ##t#0 := r#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Tree(), $Heap);
            assert {:id "id300"} DtRank(##t#0) < DtRank(t#0);
            assume _module.__default.mirror#canCall(r#Z#0);
            ##t#1 := l#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Tree(), $Heap);
            assert {:id "id301"} DtRank(##t#1) < DtRank(t#0);
            assume _module.__default.mirror#canCall(l#Z#0);
            assume {:id "id302"} _module.__default.mirror($LS($LZ), t#0)
               == #_module.Tree.Node(_module.__default.mirror($LS($LZ), r#Z#0), 
                x#Z#0, 
                _module.__default.mirror($LS($LZ), l#Z#0));
            assume _module.__default.mirror#canCall(r#Z#0)
               && _module.__default.mirror#canCall(l#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.mirror($LS($LZ), t#0), Tclass._module.Tree());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.AlwaysFalseFunction
function _module.__default.AlwaysFalseFunction() : HandleType
uses {
// consequence axiom for _module.__default.AlwaysFalseFunction
axiom 1 <= $FunctionContextHeight
   ==> 
  _module.__default.AlwaysFalseFunction#canCall() || 1 < $FunctionContextHeight
   ==> $Is(_module.__default.AlwaysFalseFunction(), 
    Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()));
// definition axiom for _module.__default.AlwaysFalseFunction (revealed)
axiom {:id "id304"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.AlwaysFalseFunction#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.AlwaysFalseFunction()
     == Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#n#0: Box :: $Box(Lit(#_module.Nat.Zero()))), 
            (lambda $l#0#heap#0: Heap, $l#0#n#0: Box :: 
              $IsBox($l#0#n#0, Tclass._module.Nat())), 
            (lambda $l#0#heap#0: Heap, $l#0#n#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ)));
// definition axiom for _module.__default.AlwaysFalseFunction for all literals (revealed)
axiom {:id "id305"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.AlwaysFalseFunction#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.AlwaysFalseFunction()
     == Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
          Handle1((lambda $l#2#heap#0: Heap, $l#2#n#0: Box :: $Box(Lit(#_module.Nat.Zero()))), 
            (lambda $l#2#heap#0: Heap, $l#2#n#0: Box :: 
              $IsBox($l#2#n#0, Tclass._module.Nat())), 
            (lambda $l#2#heap#0: Heap, $l#2#n#0: Box :: 
              SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
        $LS($LZ)));
}

function _module.__default.AlwaysFalseFunction#canCall() : bool;

function _module.__default.AlwaysFalseFunction#requires() : bool
uses {
// #requires axiom for _module.__default.AlwaysFalseFunction
axiom _module.__default.AlwaysFalseFunction#requires() == true;
}

procedure {:verboseName "AlwaysFalseFunction (well-formedness)"} CheckWellformed$$_module.__default.AlwaysFalseFunction();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.AlwaysTrueFunction
function _module.__default.AlwaysTrueFunction() : HandleType
uses {
// consequence axiom for _module.__default.AlwaysTrueFunction
axiom 1 <= $FunctionContextHeight
   ==> 
  _module.__default.AlwaysTrueFunction#canCall() || 1 < $FunctionContextHeight
   ==> $Is(_module.__default.AlwaysTrueFunction(), 
    Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()));
// definition axiom for _module.__default.AlwaysTrueFunction (revealed)
axiom {:id "id308"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.AlwaysTrueFunction#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.AlwaysTrueFunction()
     == Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle1((lambda $l#0#heap#0: Heap, $l#0#n#0: Box :: 
              $Box(Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))))), 
            (lambda $l#0#heap#0: Heap, $l#0#n#0: Box :: 
              $IsBox($l#0#n#0, Tclass._module.Nat())), 
            (lambda $l#0#heap#0: Heap, $l#0#n#0: Box :: 
              SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ)));
// definition axiom for _module.__default.AlwaysTrueFunction for all literals (revealed)
axiom {:id "id309"} 1 <= $FunctionContextHeight
   ==> 
  _module.__default.AlwaysTrueFunction#canCall() || 1 < $FunctionContextHeight
   ==> _module.__default.AlwaysTrueFunction()
     == Lit(AtLayer((lambda $l#2#ly#0: LayerType :: 
          Handle1((lambda $l#2#heap#0: Heap, $l#2#n#0: Box :: 
              $Box(Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))))), 
            (lambda $l#2#heap#0: Heap, $l#2#n#0: Box :: 
              $IsBox($l#2#n#0, Tclass._module.Nat())), 
            (lambda $l#2#heap#0: Heap, $l#2#n#0: Box :: 
              SetRef_to_SetBox((lambda $l#2#o#0: ref :: false))))), 
        $LS($LZ)));
}

function _module.__default.AlwaysTrueFunction#canCall() : bool;

function _module.__default.AlwaysTrueFunction#requires() : bool
uses {
// #requires axiom for _module.__default.AlwaysTrueFunction
axiom _module.__default.AlwaysTrueFunction#requires() == true;
}

procedure {:verboseName "AlwaysTrueFunction (well-formedness)"} CheckWellformed$$_module.__default.AlwaysTrueFunction();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AboutAlwaysFalseFunction (well-formedness)"} CheckWellFormed$$_module.__default.AboutAlwaysFalseFunction();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AboutAlwaysFalseFunction (call)"} Call$$_module.__default.AboutAlwaysFalseFunction();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysFalseFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), 
              Tclass._module.Nat(), 
              $Heap, 
              Lit(_module.__default.AlwaysFalseFunction()), 
              $Box(n#1))): DatatypeType)
         && _module.__default.AlwaysFalseFunction#canCall());
  ensures {:id "id314"} (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysFalseFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), 
            Tclass._module.Nat(), 
            $Heap, 
            Lit(_module.__default.AlwaysFalseFunction()), 
            $Box(n#1))): DatatypeType, 
        #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AboutAlwaysFalseFunction (correctness)"} Impl$$_module.__default.AboutAlwaysFalseFunction() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysFalseFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), 
              Tclass._module.Nat(), 
              $Heap, 
              Lit(_module.__default.AlwaysFalseFunction()), 
              $Box(n#1))): DatatypeType)
         && _module.__default.AlwaysFalseFunction#canCall());
  ensures {:id "id315"} (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysFalseFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), 
            Tclass._module.Nat(), 
            $Heap, 
            Lit(_module.__default.AlwaysFalseFunction()), 
            $Box(n#1))): DatatypeType, 
        #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AboutAlwaysFalseFunction (correctness)"} Impl$$_module.__default.AboutAlwaysFalseFunction() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: AboutAlwaysFalseFunction, Impl$$_module.__default.AboutAlwaysFalseFunction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "AboutAlwaysTrueFunction (well-formedness)"} CheckWellFormed$$_module.__default.AboutAlwaysTrueFunction();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AboutAlwaysTrueFunction (call)"} Call$$_module.__default.AboutAlwaysTrueFunction();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysTrueFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), 
              Tclass._module.Nat(), 
              $Heap, 
              Lit(_module.__default.AlwaysTrueFunction()), 
              $Box(n#1))): DatatypeType)
         && _module.__default.AlwaysTrueFunction#canCall());
  ensures {:id "id318"} (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysTrueFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), 
            Tclass._module.Nat(), 
            $Heap, 
            Lit(_module.__default.AlwaysTrueFunction()), 
            $Box(n#1))): DatatypeType, 
        #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "AboutAlwaysTrueFunction (correctness)"} Impl$$_module.__default.AboutAlwaysTrueFunction() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysTrueFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat($Unbox(Apply1(Tclass._module.Nat(), 
              Tclass._module.Nat(), 
              $Heap, 
              Lit(_module.__default.AlwaysTrueFunction()), 
              $Box(n#1))): DatatypeType)
         && _module.__default.AlwaysTrueFunction#canCall());
  ensures {:id "id319"} (forall n#1: DatatypeType :: 
    { $Unbox(Apply1(Tclass._module.Nat(), 
          Tclass._module.Nat(), 
          $Heap, 
          _module.__default.AlwaysTrueFunction(), 
          $Box(n#1))): DatatypeType } 
    $Is(n#1, Tclass._module.Nat())
       ==> !_module.Nat#Equal($Unbox(Apply1(Tclass._module.Nat(), 
            Tclass._module.Nat(), 
            $Heap, 
            Lit(_module.__default.AlwaysTrueFunction()), 
            $Box(n#1))): DatatypeType, 
        #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AboutAlwaysTrueFunction (correctness)"} Impl$$_module.__default.AboutAlwaysTrueFunction() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: AboutAlwaysTrueFunction, Impl$$_module.__default.AboutAlwaysTrueFunction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P1 (well-formedness)"} CheckWellFormed$$_module.__default.P1();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P1 (call)"} Call$$_module.__default.P1();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LZ), n#1, xs#1) } 
      { _module.__default.take($LS($LZ), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.concat($LS($LZ), 
            _module.__default.take($LS($LZ), n#1, xs#1), 
            _module.__default.drop($LS($LZ), n#1, xs#1)))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.take#canCall(n#1, xs#1)
         && _module.__default.drop#canCall(n#1, xs#1)
         && _module.__default.concat#canCall(_module.__default.take($LS($LZ), n#1, xs#1), 
          _module.__default.drop($LS($LZ), n#1, xs#1)));
  free ensures {:id "id322"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LZ), n#1, xs#1) } 
      { _module.__default.take($LS($LZ), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.concat($LS($LZ), 
          _module.__default.take($LS($LZ), n#1, xs#1), 
          _module.__default.drop($LS($LZ), n#1, xs#1)), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P1 (correctness)"} Impl$$_module.__default.P1() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LZ), n#1, xs#1) } 
      { _module.__default.take($LS($LZ), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.concat($LS($LZ), 
            _module.__default.take($LS($LZ), n#1, xs#1), 
            _module.__default.drop($LS($LZ), n#1, xs#1)))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.take#canCall(n#1, xs#1)
         && _module.__default.drop#canCall(n#1, xs#1)
         && _module.__default.concat#canCall(_module.__default.take($LS($LZ), n#1, xs#1), 
          _module.__default.drop($LS($LZ), n#1, xs#1)));
  ensures {:id "id323"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LS($LZ)), n#1, xs#1) } 
      { _module.__default.take($LS($LS($LZ)), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.concat($LS($LS($LZ)), 
          _module.__default.take($LS($LS($LZ)), n#1, xs#1), 
          _module.__default.drop($LS($LS($LZ)), n#1, xs#1)), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P1 (correctness)"} Impl$$_module.__default.P1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P1, Impl$$_module.__default.P1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P2 (well-formedness)"} CheckWellFormed$$_module.__default.P2();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P2 (call)"} Call$$_module.__default.P2();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
      { _module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#1, xs#1), 
        _module.__default.count($LS($LZ), n#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            _module.__default.count($LS($LZ), n#1, xs#1), 
            _module.__default.count($LS($LZ), n#1, ys#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.count#canCall(n#1, ys#1)
         && _module.__default.add#canCall(_module.__default.count($LS($LZ), n#1, xs#1), 
          _module.__default.count($LS($LZ), n#1, ys#1))
         && 
        _module.__default.concat#canCall(xs#1, ys#1)
         && _module.__default.count#canCall(n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)));
  free ensures {:id "id326"} (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
      { _module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#1, xs#1), 
        _module.__default.count($LS($LZ), n#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.add($LS($LZ), 
          _module.__default.count($LS($LZ), n#1, xs#1), 
          _module.__default.count($LS($LZ), n#1, ys#1)), 
        _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P2 (correctness)"} Impl$$_module.__default.P2() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
      { _module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#1, xs#1), 
        _module.__default.count($LS($LZ), n#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            _module.__default.count($LS($LZ), n#1, xs#1), 
            _module.__default.count($LS($LZ), n#1, ys#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.count#canCall(n#1, ys#1)
         && _module.__default.add#canCall(_module.__default.count($LS($LZ), n#1, xs#1), 
          _module.__default.count($LS($LZ), n#1, ys#1))
         && 
        _module.__default.concat#canCall(xs#1, ys#1)
         && _module.__default.count#canCall(n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)));
  ensures {:id "id327"} (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LS($LZ)), n#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)) } 
      { _module.__default.add($LS($LS($LZ)), 
        _module.__default.count($LS($LS($LZ)), n#1, xs#1), 
        _module.__default.count($LS($LS($LZ)), n#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), 
          _module.__default.count($LS($LS($LZ)), n#1, xs#1), 
          _module.__default.count($LS($LS($LZ)), n#1, ys#1)), 
        _module.__default.count($LS($LS($LZ)), n#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P2 (correctness)"} Impl$$_module.__default.P2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P2, Impl$$_module.__default.P2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P3 (well-formedness)"} CheckWellFormed$$_module.__default.P3();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P3 (call)"} Call$$_module.__default.P3();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), 
            _module.__default.count($LS($LZ), n#1, xs#1), 
            _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && 
        _module.__default.concat#canCall(xs#1, ys#1)
         && _module.__default.count#canCall(n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))
         && _module.__default.leq#canCall(_module.__default.count($LS($LZ), n#1, xs#1), 
          _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))));
  free ensures {:id "id330"} (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.leq($LS($LZ), 
          _module.__default.count($LS($LZ), n#1, xs#1), 
          _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P3 (correctness)"} Impl$$_module.__default.P3() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), 
            _module.__default.count($LS($LZ), n#1, xs#1), 
            _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && 
        _module.__default.concat#canCall(xs#1, ys#1)
         && _module.__default.count#canCall(n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))
         && _module.__default.leq#canCall(_module.__default.count($LS($LZ), n#1, xs#1), 
          _module.__default.count($LS($LZ), n#1, _module.__default.concat($LS($LZ), xs#1, ys#1))));
  ensures {:id "id331"} (forall n#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.count($LS($LS($LZ)), n#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), 
          _module.__default.count($LS($LS($LZ)), n#1, xs#1), 
          _module.__default.count($LS($LS($LZ)), n#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P3 (correctness)"} Impl$$_module.__default.P3() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P3, Impl$$_module.__default.P3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P4 (well-formedness)"} CheckWellFormed$$_module.__default.P4();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P4 (call)"} Call$$_module.__default.P4();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(n#1, xs#1) } 
      { _module.__default.add($LS($LZ), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
            _module.__default.count($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(n#1, xs#1)))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.add#canCall(Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LZ), n#1, xs#1))
         && _module.__default.count#canCall(n#1, #_module.List.Cons(n#1, xs#1)));
  free ensures {:id "id334"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(n#1, xs#1) } 
      { _module.__default.add($LS($LZ), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.add($LS($LZ), 
          Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LZ), n#1, xs#1)), 
        _module.__default.count($LS($LZ), n#1, #_module.List.Cons(n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P4 (correctness)"} Impl$$_module.__default.P4() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(n#1, xs#1) } 
      { _module.__default.add($LS($LZ), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
            _module.__default.count($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(n#1, xs#1)))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.add#canCall(Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LZ), n#1, xs#1))
         && _module.__default.count#canCall(n#1, #_module.List.Cons(n#1, xs#1)));
  ensures {:id "id335"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(n#1, xs#1) } 
      { _module.__default.add($LS($LS($LZ)), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LS($LZ)), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), 
          Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LS($LZ)), n#1, xs#1)), 
        _module.__default.count($LS($LS($LZ)), n#1, #_module.List.Cons(n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P4 (correctness)"} Impl$$_module.__default.P4() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P4, Impl$$_module.__default.P4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P5 (well-formedness)"} CheckWellFormed$$_module.__default.P5();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P5 (call)"} Call$$_module.__default.P5();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, x#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), _module.__default.add($LS($LZ), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(x#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
            _module.__default.count($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.add#canCall(Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LZ), n#1, xs#1))
         && _module.__default.count#canCall(n#1, #_module.List.Cons(x#1, xs#1))
         && (_module.Nat#Equal(_module.__default.add($LS($LZ), 
              Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
              _module.__default.count($LS($LZ), n#1, xs#1)), 
            _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)))
           ==> $IsA#_module.Nat(n#1) && $IsA#_module.Nat(x#1)));
  free ensures {:id "id340"} (forall n#1: DatatypeType, xs#1: DatatypeType, x#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), _module.__default.add($LS($LZ), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(x#1, Tclass._module.Nat())
       ==> 
      _module.Nat#Equal(_module.__default.add($LS($LZ), 
          Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LZ), n#1, xs#1)), 
        _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)))
       ==> _module.Nat#Equal(n#1, x#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P5 (correctness)"} Impl$$_module.__default.P5() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, x#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), _module.__default.add($LS($LZ), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(x#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
            _module.__default.count($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)))
         && 
        _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.add#canCall(Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LZ), n#1, xs#1))
         && _module.__default.count#canCall(n#1, #_module.List.Cons(x#1, xs#1))
         && (_module.Nat#Equal(_module.__default.add($LS($LZ), 
              Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
              _module.__default.count($LS($LZ), n#1, xs#1)), 
            _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)))
           ==> $IsA#_module.Nat(n#1) && $IsA#_module.Nat(x#1)));
  ensures {:id "id341"} (forall n#1: DatatypeType, xs#1: DatatypeType, x#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), _module.__default.add($LS($LS($LZ)), 
        #_module.Nat.Suc(#_module.Nat.Zero()), 
        _module.__default.count($LS($LS($LZ)), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(x#1, Tclass._module.Nat())
       ==> 
      _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), 
          Lit(#_module.Nat.Suc(Lit(#_module.Nat.Zero()))), 
          _module.__default.count($LS($LS($LZ)), n#1, xs#1)), 
        _module.__default.count($LS($LS($LZ)), n#1, #_module.List.Cons(x#1, xs#1)))
       ==> _module.Nat#Equal(n#1, x#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P5 (correctness)"} Impl$$_module.__default.P5() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P5, Impl$$_module.__default.P5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P6 (well-formedness)"} CheckWellFormed$$_module.__default.P6();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P6 (call)"} Call$$_module.__default.P6();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), n#1, _module.__default.add($LS($LZ), n#1, m#1)))
         && 
        _module.__default.add#canCall(n#1, m#1)
         && _module.__default.minus#canCall(n#1, _module.__default.add($LS($LZ), n#1, m#1)));
  free ensures {:id "id344"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LZ), n#1, _module.__default.add($LS($LZ), n#1, m#1)), 
        #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P6 (correctness)"} Impl$$_module.__default.P6() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), n#1, _module.__default.add($LS($LZ), n#1, m#1)))
         && 
        _module.__default.add#canCall(n#1, m#1)
         && _module.__default.minus#canCall(n#1, _module.__default.add($LS($LZ), n#1, m#1)));
  ensures {:id "id345"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LS($LZ)), n#1, _module.__default.add($LS($LS($LZ)), n#1, m#1)), 
        #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P6 (correctness)"} Impl$$_module.__default.P6() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P6, Impl$$_module.__default.P6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P7 (well-formedness)"} CheckWellFormed$$_module.__default.P7();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P7 (call)"} Call$$_module.__default.P7();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), n#1, m#1), n#1))
         && $IsA#_module.Nat(m#1)
         && 
        _module.__default.add#canCall(n#1, m#1)
         && _module.__default.minus#canCall(_module.__default.add($LS($LZ), n#1, m#1), n#1));
  free ensures {:id "id348"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), n#1, m#1), n#1), 
        m#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P7 (correctness)"} Impl$$_module.__default.P7() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), n#1, m#1), n#1))
         && $IsA#_module.Nat(m#1)
         && 
        _module.__default.add#canCall(n#1, m#1)
         && _module.__default.minus#canCall(_module.__default.add($LS($LZ), n#1, m#1), n#1));
  ensures {:id "id349"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), n#1, m#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LS($LZ)), _module.__default.add($LS($LS($LZ)), n#1, m#1), n#1), 
        m#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P7 (correctness)"} Impl$$_module.__default.P7() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P7, Impl$$_module.__default.P7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P8 (well-formedness)"} CheckWellFormed$$_module.__default.P8();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P8 (call)"} Call$$_module.__default.P8();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: DatatypeType, m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), k#1, n#1), _module.__default.add($LS($LZ), k#1, m#1) } 
    $Is(k#1, Tclass._module.Nat())
         && $Is(m#1, Tclass._module.Nat())
         && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), 
            _module.__default.add($LS($LZ), k#1, m#1), 
            _module.__default.add($LS($LZ), k#1, n#1)))
         && $IsA#_module.Nat(_module.__default.minus($LS($LZ), m#1, n#1))
         && 
        _module.__default.add#canCall(k#1, m#1)
         && _module.__default.add#canCall(k#1, n#1)
         && _module.__default.minus#canCall(_module.__default.add($LS($LZ), k#1, m#1), 
          _module.__default.add($LS($LZ), k#1, n#1))
         && _module.__default.minus#canCall(m#1, n#1));
  free ensures {:id "id352"} (forall k#1: DatatypeType, m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), k#1, n#1), _module.__default.add($LS($LZ), k#1, m#1) } 
    $Is(k#1, Tclass._module.Nat())
         && $Is(m#1, Tclass._module.Nat())
         && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LZ), 
          _module.__default.add($LS($LZ), k#1, m#1), 
          _module.__default.add($LS($LZ), k#1, n#1)), 
        _module.__default.minus($LS($LZ), m#1, n#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P8 (correctness)"} Impl$$_module.__default.P8() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall k#1: DatatypeType, m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), k#1, n#1), _module.__default.add($LS($LZ), k#1, m#1) } 
    $Is(k#1, Tclass._module.Nat())
         && $Is(m#1, Tclass._module.Nat())
         && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), 
            _module.__default.add($LS($LZ), k#1, m#1), 
            _module.__default.add($LS($LZ), k#1, n#1)))
         && $IsA#_module.Nat(_module.__default.minus($LS($LZ), m#1, n#1))
         && 
        _module.__default.add#canCall(k#1, m#1)
         && _module.__default.add#canCall(k#1, n#1)
         && _module.__default.minus#canCall(_module.__default.add($LS($LZ), k#1, m#1), 
          _module.__default.add($LS($LZ), k#1, n#1))
         && _module.__default.minus#canCall(m#1, n#1));
  ensures {:id "id353"} (forall k#1: DatatypeType, m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), k#1, n#1), _module.__default.add($LS($LS($LZ)), k#1, m#1) } 
    $Is(k#1, Tclass._module.Nat())
         && $Is(m#1, Tclass._module.Nat())
         && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LS($LZ)), 
          _module.__default.add($LS($LS($LZ)), k#1, m#1), 
          _module.__default.add($LS($LS($LZ)), k#1, n#1)), 
        _module.__default.minus($LS($LS($LZ)), m#1, n#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P8 (correctness)"} Impl$$_module.__default.P8() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P8, Impl$$_module.__default.P8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P9 (well-formedness)"} CheckWellFormed$$_module.__default.P9();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P9 (call)"} Call$$_module.__default.P9();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: DatatypeType, j#1: DatatypeType, k#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), i#1, _module.__default.add($LS($LZ), j#1, k#1)) } 
      { _module.__default.minus($LS($LZ), _module.__default.minus($LS($LZ), i#1, j#1), k#1) } 
    $Is(i#1, Tclass._module.Nat())
         && $Is(j#1, Tclass._module.Nat())
         && $Is(k#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.minus($LS($LZ), i#1, j#1), k#1))
         && $IsA#_module.Nat(_module.__default.minus($LS($LZ), i#1, _module.__default.add($LS($LZ), j#1, k#1)))
         && 
        _module.__default.minus#canCall(i#1, j#1)
         && _module.__default.minus#canCall(_module.__default.minus($LS($LZ), i#1, j#1), k#1)
         && 
        _module.__default.add#canCall(j#1, k#1)
         && _module.__default.minus#canCall(i#1, _module.__default.add($LS($LZ), j#1, k#1)));
  free ensures {:id "id356"} (forall i#1: DatatypeType, j#1: DatatypeType, k#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), i#1, _module.__default.add($LS($LZ), j#1, k#1)) } 
      { _module.__default.minus($LS($LZ), _module.__default.minus($LS($LZ), i#1, j#1), k#1) } 
    $Is(i#1, Tclass._module.Nat())
         && $Is(j#1, Tclass._module.Nat())
         && $Is(k#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LZ), _module.__default.minus($LS($LZ), i#1, j#1), k#1), 
        _module.__default.minus($LS($LZ), i#1, _module.__default.add($LS($LZ), j#1, k#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P9 (correctness)"} Impl$$_module.__default.P9() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: DatatypeType, j#1: DatatypeType, k#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), i#1, _module.__default.add($LS($LZ), j#1, k#1)) } 
      { _module.__default.minus($LS($LZ), _module.__default.minus($LS($LZ), i#1, j#1), k#1) } 
    $Is(i#1, Tclass._module.Nat())
         && $Is(j#1, Tclass._module.Nat())
         && $Is(k#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.minus($LS($LZ), i#1, j#1), k#1))
         && $IsA#_module.Nat(_module.__default.minus($LS($LZ), i#1, _module.__default.add($LS($LZ), j#1, k#1)))
         && 
        _module.__default.minus#canCall(i#1, j#1)
         && _module.__default.minus#canCall(_module.__default.minus($LS($LZ), i#1, j#1), k#1)
         && 
        _module.__default.add#canCall(j#1, k#1)
         && _module.__default.minus#canCall(i#1, _module.__default.add($LS($LZ), j#1, k#1)));
  ensures {:id "id357"} (forall i#1: DatatypeType, j#1: DatatypeType, k#1: DatatypeType :: 
    { _module.__default.minus($LS($LS($LZ)), i#1, _module.__default.add($LS($LS($LZ)), j#1, k#1)) } 
      { _module.__default.minus($LS($LS($LZ)), _module.__default.minus($LS($LS($LZ)), i#1, j#1), k#1) } 
    $Is(i#1, Tclass._module.Nat())
         && $Is(j#1, Tclass._module.Nat())
         && $Is(k#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LS($LZ)), _module.__default.minus($LS($LS($LZ)), i#1, j#1), k#1), 
        _module.__default.minus($LS($LS($LZ)), i#1, _module.__default.add($LS($LS($LZ)), j#1, k#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P9 (correctness)"} Impl$$_module.__default.P9() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P9, Impl$$_module.__default.P9
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P10 (well-formedness)"} CheckWellFormed$$_module.__default.P10();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P10 (call)"} Call$$_module.__default.P10();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), m#1, m#1) } 
    $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), m#1, m#1))
         && _module.__default.minus#canCall(m#1, m#1));
  free ensures {:id "id360"} (forall m#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), m#1, m#1) } 
    $Is(m#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LZ), m#1, m#1), #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P10 (correctness)"} Impl$$_module.__default.P10() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), m#1, m#1) } 
    $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), m#1, m#1))
         && _module.__default.minus#canCall(m#1, m#1));
  ensures {:id "id361"} (forall m#1: DatatypeType :: 
    { _module.__default.minus($LS($LS($LZ)), m#1, m#1) } 
    $Is(m#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LS($LZ)), m#1, m#1), #_module.Nat.Zero()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P10 (correctness)"} Impl$$_module.__default.P10() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P10, Impl$$_module.__default.P10
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P11 (well-formedness)"} CheckWellFormed$$_module.__default.P11();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P11 (call)"} Call$$_module.__default.P11();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LZ), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.drop($LS($LZ), Lit(#_module.Nat.Zero()), xs#1))
         && $IsA#_module.List(xs#1)
         && _module.__default.drop#canCall(Lit(#_module.Nat.Zero()), xs#1));
  free ensures {:id "id364"} (forall xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LZ), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.drop($LS($LZ), Lit(#_module.Nat.Zero()), xs#1), xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P11 (correctness)"} Impl$$_module.__default.P11() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LZ), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.drop($LS($LZ), Lit(#_module.Nat.Zero()), xs#1))
         && $IsA#_module.List(xs#1)
         && _module.__default.drop#canCall(Lit(#_module.Nat.Zero()), xs#1));
  ensures {:id "id365"} (forall xs#1: DatatypeType :: 
    { _module.__default.drop($LS($LS($LZ)), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.drop($LS($LS($LZ)), Lit(#_module.Nat.Zero()), xs#1), xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P11 (correctness)"} Impl$$_module.__default.P11() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P11, Impl$$_module.__default.P11
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P12 (well-formedness)"} CheckWellFormed$$_module.__default.P12();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P12 (call)"} Call$$_module.__default.P12();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LZ), f#1, _module.__default.drop($LS($LZ), n#1, xs#1)) } 
      { _module.__default.drop($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> $IsA#_module.List(_module.__default.drop($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)))
         && $IsA#_module.List(_module.__default.apply($LS($LZ), f#1, _module.__default.drop($LS($LZ), n#1, xs#1)))
         && 
        _module.__default.apply#canCall(f#1, xs#1)
         && _module.__default.drop#canCall(n#1, _module.__default.apply($LS($LZ), f#1, xs#1))
         && 
        _module.__default.drop#canCall(n#1, xs#1)
         && _module.__default.apply#canCall(f#1, _module.__default.drop($LS($LZ), n#1, xs#1)));
  free ensures {:id "id368"} (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LZ), f#1, _module.__default.drop($LS($LZ), n#1, xs#1)) } 
      { _module.__default.drop($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> _module.List#Equal(_module.__default.drop($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)), 
        _module.__default.apply($LS($LZ), f#1, _module.__default.drop($LS($LZ), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P12 (correctness)"} Impl$$_module.__default.P12() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LZ), f#1, _module.__default.drop($LS($LZ), n#1, xs#1)) } 
      { _module.__default.drop($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> $IsA#_module.List(_module.__default.drop($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)))
         && $IsA#_module.List(_module.__default.apply($LS($LZ), f#1, _module.__default.drop($LS($LZ), n#1, xs#1)))
         && 
        _module.__default.apply#canCall(f#1, xs#1)
         && _module.__default.drop#canCall(n#1, _module.__default.apply($LS($LZ), f#1, xs#1))
         && 
        _module.__default.drop#canCall(n#1, xs#1)
         && _module.__default.apply#canCall(f#1, _module.__default.drop($LS($LZ), n#1, xs#1)));
  ensures {:id "id369"} (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LS($LZ)), f#1, _module.__default.drop($LS($LS($LZ)), n#1, xs#1)) } 
      { _module.__default.drop($LS($LS($LZ)), n#1, _module.__default.apply($LS($LS($LZ)), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> _module.List#Equal(_module.__default.drop($LS($LS($LZ)), n#1, _module.__default.apply($LS($LS($LZ)), f#1, xs#1)), 
        _module.__default.apply($LS($LS($LZ)), f#1, _module.__default.drop($LS($LS($LZ)), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P12 (correctness)"} Impl$$_module.__default.P12() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P12, Impl$$_module.__default.P12
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P13 (well-formedness)"} CheckWellFormed$$_module.__default.P13();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P13 (call)"} Call$$_module.__default.P13();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), #_module.Nat.Suc(n#1) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.drop($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)))
         && $IsA#_module.List(_module.__default.drop($LS($LZ), n#1, xs#1))
         && 
        _module.__default.drop#canCall(#_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1))
         && _module.__default.drop#canCall(n#1, xs#1));
  free ensures {:id "id372"} (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), #_module.Nat.Suc(n#1) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.drop($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)), 
        _module.__default.drop($LS($LZ), n#1, xs#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P13 (correctness)"} Impl$$_module.__default.P13() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), #_module.Nat.Suc(n#1) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.drop($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)))
         && $IsA#_module.List(_module.__default.drop($LS($LZ), n#1, xs#1))
         && 
        _module.__default.drop#canCall(#_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1))
         && _module.__default.drop#canCall(n#1, xs#1));
  ensures {:id "id373"} (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1), #_module.Nat.Suc(n#1) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.drop($LS($LS($LZ)), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)), 
        _module.__default.drop($LS($LS($LZ)), n#1, xs#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P13 (correctness)"} Impl$$_module.__default.P13() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P13, Impl$$_module.__default.P13
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P14 (well-formedness)"} CheckWellFormed$$_module.__default.P14();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P14 (call)"} Call$$_module.__default.P14();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType, ys#1: DatatypeType, p#1: HandleType :: 
    { _module.__default.concat($LS($LZ), 
        _module.__default.filter($LS($LZ), p#1, xs#1), 
        _module.__default.filter($LS($LZ), p#1, ys#1)) } 
      { _module.__default.filter($LS($LZ), p#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
         && $Is(p#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> $IsA#_module.List(_module.__default.filter($LS($LZ), p#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
         && $IsA#_module.List(_module.__default.concat($LS($LZ), 
            _module.__default.filter($LS($LZ), p#1, xs#1), 
            _module.__default.filter($LS($LZ), p#1, ys#1)))
         && 
        _module.__default.concat#canCall(xs#1, ys#1)
         && _module.__default.filter#canCall(p#1, _module.__default.concat($LS($LZ), xs#1, ys#1))
         && 
        _module.__default.filter#canCall(p#1, xs#1)
         && _module.__default.filter#canCall(p#1, ys#1)
         && _module.__default.concat#canCall(_module.__default.filter($LS($LZ), p#1, xs#1), 
          _module.__default.filter($LS($LZ), p#1, ys#1)));
  free ensures {:id "id376"} (forall xs#1: DatatypeType, ys#1: DatatypeType, p#1: HandleType :: 
    { _module.__default.concat($LS($LZ), 
        _module.__default.filter($LS($LZ), p#1, xs#1), 
        _module.__default.filter($LS($LZ), p#1, ys#1)) } 
      { _module.__default.filter($LS($LZ), p#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
         && $Is(p#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> _module.List#Equal(_module.__default.filter($LS($LZ), p#1, _module.__default.concat($LS($LZ), xs#1, ys#1)), 
        _module.__default.concat($LS($LZ), 
          _module.__default.filter($LS($LZ), p#1, xs#1), 
          _module.__default.filter($LS($LZ), p#1, ys#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P14 (correctness)"} Impl$$_module.__default.P14() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType, ys#1: DatatypeType, p#1: HandleType :: 
    { _module.__default.concat($LS($LZ), 
        _module.__default.filter($LS($LZ), p#1, xs#1), 
        _module.__default.filter($LS($LZ), p#1, ys#1)) } 
      { _module.__default.filter($LS($LZ), p#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
         && $Is(p#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> $IsA#_module.List(_module.__default.filter($LS($LZ), p#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
         && $IsA#_module.List(_module.__default.concat($LS($LZ), 
            _module.__default.filter($LS($LZ), p#1, xs#1), 
            _module.__default.filter($LS($LZ), p#1, ys#1)))
         && 
        _module.__default.concat#canCall(xs#1, ys#1)
         && _module.__default.filter#canCall(p#1, _module.__default.concat($LS($LZ), xs#1, ys#1))
         && 
        _module.__default.filter#canCall(p#1, xs#1)
         && _module.__default.filter#canCall(p#1, ys#1)
         && _module.__default.concat#canCall(_module.__default.filter($LS($LZ), p#1, xs#1), 
          _module.__default.filter($LS($LZ), p#1, ys#1)));
  ensures {:id "id377"} (forall xs#1: DatatypeType, ys#1: DatatypeType, p#1: HandleType :: 
    { _module.__default.concat($LS($LS($LZ)), 
        _module.__default.filter($LS($LS($LZ)), p#1, xs#1), 
        _module.__default.filter($LS($LS($LZ)), p#1, ys#1)) } 
      { _module.__default.filter($LS($LS($LZ)), p#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)) } 
    $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
         && $Is(p#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> _module.List#Equal(_module.__default.filter($LS($LS($LZ)), p#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)), 
        _module.__default.concat($LS($LS($LZ)), 
          _module.__default.filter($LS($LS($LZ)), p#1, xs#1), 
          _module.__default.filter($LS($LS($LZ)), p#1, ys#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P14 (correctness)"} Impl$$_module.__default.P14() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P14, Impl$$_module.__default.P14
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P15 (well-formedness)"} CheckWellFormed$$_module.__default.P15();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P15 (call)"} Call$$_module.__default.P15();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.len($LS($LZ), _module.__default.ins($LS($LZ), x#1, xs#1)))
         && 
        _module.__default.ins#canCall(x#1, xs#1)
         && _module.__default.len#canCall(_module.__default.ins($LS($LZ), x#1, xs#1))
         && _module.__default.len#canCall(xs#1));
  free ensures {:id "id380"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.len($LS($LZ), _module.__default.ins($LS($LZ), x#1, xs#1)), 
        #_module.Nat.Suc(_module.__default.len($LS($LZ), xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P15 (correctness)"} Impl$$_module.__default.P15() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.len($LS($LZ), _module.__default.ins($LS($LZ), x#1, xs#1)))
         && 
        _module.__default.ins#canCall(x#1, xs#1)
         && _module.__default.len#canCall(_module.__default.ins($LS($LZ), x#1, xs#1))
         && _module.__default.len#canCall(xs#1));
  ensures {:id "id381"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LS($LZ)), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.len($LS($LS($LZ)), _module.__default.ins($LS($LS($LZ)), x#1, xs#1)), 
        #_module.Nat.Suc(_module.__default.len($LS($LS($LZ)), xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P15 (correctness)"} Impl$$_module.__default.P15() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P15, Impl$$_module.__default.P15
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P16 (well-formedness)"} CheckWellFormed$$_module.__default.P16();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P16 (call)"} Call$$_module.__default.P16();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(xs#1)
         && (_module.List#Equal(xs#1, #_module.List.Nil())
           ==> $IsA#_module.Nat(_module.__default.last($LS($LZ), #_module.List.Cons(x#1, xs#1)))
             && $IsA#_module.Nat(x#1)
             && _module.__default.last#canCall(#_module.List.Cons(x#1, xs#1))));
  free ensures {:id "id386"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> 
      _module.List#Equal(xs#1, #_module.List.Nil())
       ==> _module.Nat#Equal(_module.__default.last($LS($LZ), #_module.List.Cons(x#1, xs#1)), x#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P16 (correctness)"} Impl$$_module.__default.P16() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(xs#1)
         && (_module.List#Equal(xs#1, #_module.List.Nil())
           ==> $IsA#_module.Nat(_module.__default.last($LS($LZ), #_module.List.Cons(x#1, xs#1)))
             && $IsA#_module.Nat(x#1)
             && _module.__default.last#canCall(#_module.List.Cons(x#1, xs#1))));
  ensures {:id "id387"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> 
      _module.List#Equal(xs#1, #_module.List.Nil())
       ==> _module.Nat#Equal(_module.__default.last($LS($LS($LZ)), #_module.List.Cons(x#1, xs#1)), x#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P16 (correctness)"} Impl$$_module.__default.P16() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P16, Impl$$_module.__default.P16
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P17 (well-formedness)"} CheckWellFormed$$_module.__default.P17();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P17 (call)"} Call$$_module.__default.P17();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), n#1, #_module.Nat.Zero()) } 
    $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#1, Lit(#_module.Nat.Zero())))
         && _module.__default.leq#canCall(n#1, Lit(#_module.Nat.Zero()))
         && $IsA#_module.Nat(n#1));
  free ensures {:id "id390"} (forall n#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), n#1, #_module.Nat.Zero()) } 
    $Is(n#1, Tclass._module.Nat())
       ==> (_module.Bool#Equal(_module.__default.leq($LS($LZ), n#1, Lit(#_module.Nat.Zero())), 
          #_module.Bool.True())
         <==> _module.Nat#Equal(n#1, #_module.Nat.Zero())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P17 (correctness)"} Impl$$_module.__default.P17() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), n#1, #_module.Nat.Zero()) } 
    $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#1, Lit(#_module.Nat.Zero())))
         && _module.__default.leq#canCall(n#1, Lit(#_module.Nat.Zero()))
         && $IsA#_module.Nat(n#1));
  ensures {:id "id391"} (forall n#1: DatatypeType :: 
    { _module.__default.leq($LS($LS($LZ)), n#1, #_module.Nat.Zero()) } 
    $Is(n#1, Tclass._module.Nat())
       ==> (_module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), n#1, Lit(#_module.Nat.Zero())), 
          #_module.Bool.True())
         <==> _module.Nat#Equal(n#1, #_module.Nat.Zero())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P17 (correctness)"} Impl$$_module.__default.P17() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P17, Impl$$_module.__default.P17
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P18 (well-formedness)"} CheckWellFormed$$_module.__default.P18();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P18 (call)"} Call$$_module.__default.P18();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), i#1, m#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.less($LS($LZ), i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#1, m#1))))
         && 
        _module.__default.add#canCall(i#1, m#1)
         && _module.__default.less#canCall(i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#1, m#1))));
  free ensures {:id "id394"} (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), i#1, m#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.less($LS($LZ), i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#1, m#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P18 (correctness)"} Impl$$_module.__default.P18() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), i#1, m#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.less($LS($LZ), i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#1, m#1))))
         && 
        _module.__default.add#canCall(i#1, m#1)
         && _module.__default.less#canCall(i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#1, m#1))));
  ensures {:id "id395"} (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), i#1, m#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.less($LS($LS($LZ)), 
          i#1, 
          #_module.Nat.Suc(_module.__default.add($LS($LS($LZ)), i#1, m#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P18 (correctness)"} Impl$$_module.__default.P18() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P18, Impl$$_module.__default.P18
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P19 (well-formedness)"} CheckWellFormed$$_module.__default.P19();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P19 (call)"} Call$$_module.__default.P19();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), _module.__default.len($LS($LZ), xs#1), n#1) } 
      { _module.__default.drop($LS($LZ), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.len($LS($LZ), _module.__default.drop($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.len($LS($LZ), xs#1), n#1))
         && 
        _module.__default.drop#canCall(n#1, xs#1)
         && _module.__default.len#canCall(_module.__default.drop($LS($LZ), n#1, xs#1))
         && 
        _module.__default.len#canCall(xs#1)
         && _module.__default.minus#canCall(_module.__default.len($LS($LZ), xs#1), n#1));
  free ensures {:id "id398"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), _module.__default.len($LS($LZ), xs#1), n#1) } 
      { _module.__default.drop($LS($LZ), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.len($LS($LZ), _module.__default.drop($LS($LZ), n#1, xs#1)), 
        _module.__default.minus($LS($LZ), _module.__default.len($LS($LZ), xs#1), n#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P19 (correctness)"} Impl$$_module.__default.P19() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.minus($LS($LZ), _module.__default.len($LS($LZ), xs#1), n#1) } 
      { _module.__default.drop($LS($LZ), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.len($LS($LZ), _module.__default.drop($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.len($LS($LZ), xs#1), n#1))
         && 
        _module.__default.drop#canCall(n#1, xs#1)
         && _module.__default.len#canCall(_module.__default.drop($LS($LZ), n#1, xs#1))
         && 
        _module.__default.len#canCall(xs#1)
         && _module.__default.minus#canCall(_module.__default.len($LS($LZ), xs#1), n#1));
  ensures {:id "id399"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.minus($LS($LS($LZ)), _module.__default.len($LS($LS($LZ)), xs#1), n#1) } 
      { _module.__default.drop($LS($LS($LZ)), n#1, xs#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.len($LS($LS($LZ)), _module.__default.drop($LS($LS($LZ)), n#1, xs#1)), 
        _module.__default.minus($LS($LS($LZ)), _module.__default.len($LS($LS($LZ)), xs#1), n#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P19 (correctness)"} Impl$$_module.__default.P19() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P19, Impl$$_module.__default.P19
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P20 (well-formedness)"} CheckWellFormed$$_module.__default.P20();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P20 (call)"} Call$$_module.__default.P20();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.sort($LS($LZ), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.len($LS($LZ), _module.__default.sort($LS($LZ), xs#1)))
         && $IsA#_module.Nat(_module.__default.len($LS($LZ), xs#1))
         && 
        _module.__default.sort#canCall(xs#1)
         && _module.__default.len#canCall(_module.__default.sort($LS($LZ), xs#1))
         && _module.__default.len#canCall(xs#1));
  free ensures {:id "id402"} (forall xs#1: DatatypeType :: 
    { _module.__default.sort($LS($LZ), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.len($LS($LZ), _module.__default.sort($LS($LZ), xs#1)), 
        _module.__default.len($LS($LZ), xs#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P20 (correctness)"} Impl$$_module.__default.P20() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.sort($LS($LZ), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.len($LS($LZ), _module.__default.sort($LS($LZ), xs#1)))
         && $IsA#_module.Nat(_module.__default.len($LS($LZ), xs#1))
         && 
        _module.__default.sort#canCall(xs#1)
         && _module.__default.len#canCall(_module.__default.sort($LS($LZ), xs#1))
         && _module.__default.len#canCall(xs#1));
  ensures {:id "id403"} (forall xs#1: DatatypeType :: 
    { _module.__default.sort($LS($LS($LZ)), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.len($LS($LS($LZ)), _module.__default.sort($LS($LS($LZ)), xs#1)), 
        _module.__default.len($LS($LS($LZ)), xs#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P20 (correctness)"} Impl$$_module.__default.P20() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: DatatypeType;
  var xs#2: DatatypeType;
  var ##xs#3: DatatypeType;
  var ##n#0: DatatypeType;
  var ##xs#4: DatatypeType;
  var ##xs#5: DatatypeType;

    // AddMethodImpl: P20, Impl$$_module.__default.P20
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(403,3)
    // Begin Comprehension WF check
    havoc x#0;
    havoc xs#2;
    if ($Is(x#0, Tclass._module.Nat())
       && $IsAlloc(x#0, Tclass._module.Nat(), $Heap)
       && 
      $Is(xs#2, Tclass._module.List())
       && $IsAlloc(xs#2, Tclass._module.List(), $Heap))
    {
        ##n#0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._module.Nat(), $Heap);
        ##xs#4 := xs#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#4, Tclass._module.List(), $Heap);
        assume _module.__default.insort#canCall(x#0, xs#2);
        ##xs#3 := _module.__default.insort($LS($LZ), x#0, xs#2);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#3, Tclass._module.List(), $Heap);
        assume _module.__default.len#canCall(_module.__default.insort($LS($LZ), x#0, xs#2));
        ##xs#5 := xs#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#5, Tclass._module.List(), $Heap);
        assume _module.__default.len#canCall(xs#2);
    }

    // End Comprehension WF check
    assume (forall x#1: DatatypeType, xs#3: DatatypeType :: 
      { _module.__default.insort($LS($LZ), x#1, xs#3) } 
      $Is(x#1, Tclass._module.Nat()) && $Is(xs#3, Tclass._module.List())
         ==> $IsA#_module.Nat(_module.__default.len($LS($LZ), _module.__default.insort($LS($LZ), x#1, xs#3)))
           && 
          _module.__default.insort#canCall(x#1, xs#3)
           && _module.__default.len#canCall(_module.__default.insort($LS($LZ), x#1, xs#3))
           && _module.__default.len#canCall(xs#3));
    assert {:id "id404"} {:subsumption 0} (forall x#1: DatatypeType, xs#3: DatatypeType :: 
      { _module.__default.insort($LS($LS($LZ)), x#1, xs#3) } 
      $Is(x#1, Tclass._module.Nat()) && $Is(xs#3, Tclass._module.List())
         ==> _module.Nat#Equal(_module.__default.len($LS($LS($LZ)), _module.__default.insort($LS($LS($LZ)), x#1, xs#3)), 
          #_module.Nat.Suc(_module.__default.len($LS($LS($LZ)), xs#3))));
    assume {:id "id405"} (forall x#1: DatatypeType, xs#3: DatatypeType :: 
      { _module.__default.insort($LS($LZ), x#1, xs#3) } 
      $Is(x#1, Tclass._module.Nat()) && $Is(xs#3, Tclass._module.List())
         ==> _module.Nat#Equal(_module.__default.len($LS($LZ), _module.__default.insort($LS($LZ), x#1, xs#3)), 
          #_module.Nat.Suc(_module.__default.len($LS($LZ), xs#3))));
}



procedure {:verboseName "P21 (well-formedness)"} CheckWellFormed$$_module.__default.P21();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P21 (call)"} Call$$_module.__default.P21();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#1, _module.__default.add($LS($LZ), n#1, m#1)))
         && 
        _module.__default.add#canCall(n#1, m#1)
         && _module.__default.leq#canCall(n#1, _module.__default.add($LS($LZ), n#1, m#1)));
  free ensures {:id "id408"} (forall n#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.leq($LS($LZ), n#1, _module.__default.add($LS($LZ), n#1, m#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P21 (correctness)"} Impl$$_module.__default.P21() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), n#1, m#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#1, _module.__default.add($LS($LZ), n#1, m#1)))
         && 
        _module.__default.add#canCall(n#1, m#1)
         && _module.__default.leq#canCall(n#1, _module.__default.add($LS($LZ), n#1, m#1)));
  ensures {:id "id409"} (forall n#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), n#1, m#1) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), n#1, _module.__default.add($LS($LS($LZ)), n#1, m#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P21 (correctness)"} Impl$$_module.__default.P21() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P21, Impl$$_module.__default.P21
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P22 (well-formedness)"} CheckWellFormed$$_module.__default.P22();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P22 (call)"} Call$$_module.__default.P22();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.max($LS($LZ), a#1, _module.__default.max($LS($LZ), b#1, c#1)) } 
      { _module.__default.max($LS($LZ), _module.__default.max($LS($LZ), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), _module.__default.max($LS($LZ), a#1, b#1), c#1))
         && $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, _module.__default.max($LS($LZ), b#1, c#1)))
         && 
        _module.__default.max#canCall(a#1, b#1)
         && _module.__default.max#canCall(_module.__default.max($LS($LZ), a#1, b#1), c#1)
         && 
        _module.__default.max#canCall(b#1, c#1)
         && _module.__default.max#canCall(a#1, _module.__default.max($LS($LZ), b#1, c#1)));
  free ensures {:id "id412"} (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.max($LS($LZ), a#1, _module.__default.max($LS($LZ), b#1, c#1)) } 
      { _module.__default.max($LS($LZ), _module.__default.max($LS($LZ), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.max($LS($LZ), _module.__default.max($LS($LZ), a#1, b#1), c#1), 
        _module.__default.max($LS($LZ), a#1, _module.__default.max($LS($LZ), b#1, c#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P22 (correctness)"} Impl$$_module.__default.P22() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.max($LS($LZ), a#1, _module.__default.max($LS($LZ), b#1, c#1)) } 
      { _module.__default.max($LS($LZ), _module.__default.max($LS($LZ), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), _module.__default.max($LS($LZ), a#1, b#1), c#1))
         && $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, _module.__default.max($LS($LZ), b#1, c#1)))
         && 
        _module.__default.max#canCall(a#1, b#1)
         && _module.__default.max#canCall(_module.__default.max($LS($LZ), a#1, b#1), c#1)
         && 
        _module.__default.max#canCall(b#1, c#1)
         && _module.__default.max#canCall(a#1, _module.__default.max($LS($LZ), b#1, c#1)));
  ensures {:id "id413"} (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.max($LS($LS($LZ)), a#1, _module.__default.max($LS($LS($LZ)), b#1, c#1)) } 
      { _module.__default.max($LS($LS($LZ)), _module.__default.max($LS($LS($LZ)), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.max($LS($LS($LZ)), _module.__default.max($LS($LS($LZ)), a#1, b#1), c#1), 
        _module.__default.max($LS($LS($LZ)), a#1, _module.__default.max($LS($LS($LZ)), b#1, c#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P22 (correctness)"} Impl$$_module.__default.P22() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P22, Impl$$_module.__default.P22
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P23 (well-formedness)"} CheckWellFormed$$_module.__default.P23();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P23 (call)"} Call$$_module.__default.P23();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.max($LS($LZ), b#1, a#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(_module.__default.max($LS($LZ), b#1, a#1))
         && 
        _module.__default.max#canCall(a#1, b#1)
         && _module.__default.max#canCall(b#1, a#1));
  free ensures {:id "id416"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.max($LS($LZ), b#1, a#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.max($LS($LZ), a#1, b#1), 
        _module.__default.max($LS($LZ), b#1, a#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P23 (correctness)"} Impl$$_module.__default.P23() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.max($LS($LZ), b#1, a#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(_module.__default.max($LS($LZ), b#1, a#1))
         && 
        _module.__default.max#canCall(a#1, b#1)
         && _module.__default.max#canCall(b#1, a#1));
  ensures {:id "id417"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.max($LS($LS($LZ)), b#1, a#1) } 
      { _module.__default.max($LS($LS($LZ)), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.max($LS($LS($LZ)), a#1, b#1), 
        _module.__default.max($LS($LS($LZ)), b#1, a#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P23 (correctness)"} Impl$$_module.__default.P23() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P23, Impl$$_module.__default.P23
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P24 (well-formedness)"} CheckWellFormed$$_module.__default.P24();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P24 (call)"} Call$$_module.__default.P24();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), b#1, a#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(a#1)
         && _module.__default.max#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), b#1, a#1))
         && _module.__default.leq#canCall(b#1, a#1));
  free ensures {:id "id420"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), b#1, a#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.max($LS($LZ), a#1, b#1), a#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LZ), b#1, a#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P24 (correctness)"} Impl$$_module.__default.P24() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), b#1, a#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(a#1)
         && _module.__default.max#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), b#1, a#1))
         && _module.__default.leq#canCall(b#1, a#1));
  ensures {:id "id421"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LS($LZ)), b#1, a#1) } 
      { _module.__default.max($LS($LS($LZ)), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.max($LS($LS($LZ)), a#1, b#1), a#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), b#1, a#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P24 (correctness)"} Impl$$_module.__default.P24() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P24, Impl$$_module.__default.P24
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P25 (well-formedness)"} CheckWellFormed$$_module.__default.P25();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P25 (call)"} Call$$_module.__default.P25();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), a#1, b#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(b#1)
         && _module.__default.max#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), a#1, b#1))
         && _module.__default.leq#canCall(a#1, b#1));
  free ensures {:id "id424"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), a#1, b#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.max($LS($LZ), a#1, b#1), b#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LZ), a#1, b#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P25 (correctness)"} Impl$$_module.__default.P25() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), a#1, b#1) } 
      { _module.__default.max($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.max($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(b#1)
         && _module.__default.max#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), a#1, b#1))
         && _module.__default.leq#canCall(a#1, b#1));
  ensures {:id "id425"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LS($LZ)), a#1, b#1) } 
      { _module.__default.max($LS($LS($LZ)), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.max($LS($LS($LZ)), a#1, b#1), b#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), a#1, b#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P25 (correctness)"} Impl$$_module.__default.P25() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P25, Impl$$_module.__default.P25
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P26 (well-formedness)"} CheckWellFormed$$_module.__default.P26();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P26 (call)"} Call$$_module.__default.P26();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, xs#1))
         && _module.__default.mem#canCall(x#1, xs#1)
         && (_module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, xs#1), #_module.Bool.True())
           ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
             && 
            _module.__default.concat#canCall(xs#1, ys#1)
             && _module.__default.mem#canCall(x#1, _module.__default.concat($LS($LZ), xs#1, ys#1))));
  free ensures {:id "id430"} (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> 
      _module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, xs#1), #_module.Bool.True())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P26 (correctness)"} Impl$$_module.__default.P26() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, xs#1))
         && _module.__default.mem#canCall(x#1, xs#1)
         && (_module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, xs#1), #_module.Bool.True())
           ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
             && 
            _module.__default.concat#canCall(xs#1, ys#1)
             && _module.__default.mem#canCall(x#1, _module.__default.concat($LS($LZ), xs#1, ys#1))));
  ensures {:id "id431"} (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LS($LZ)), x#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> 
      _module.Bool#Equal(_module.__default.mem($LS($LS($LZ)), x#1, xs#1), #_module.Bool.True())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LS($LZ)), x#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P26 (correctness)"} Impl$$_module.__default.P26() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P26, Impl$$_module.__default.P26
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P27 (well-formedness)"} CheckWellFormed$$_module.__default.P27();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P27 (call)"} Call$$_module.__default.P27();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, ys#1))
         && _module.__default.mem#canCall(x#1, ys#1)
         && (_module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, ys#1), #_module.Bool.True())
           ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
             && 
            _module.__default.concat#canCall(xs#1, ys#1)
             && _module.__default.mem#canCall(x#1, _module.__default.concat($LS($LZ), xs#1, ys#1))));
  free ensures {:id "id436"} (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> 
      _module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, ys#1), #_module.Bool.True())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P27 (correctness)"} Impl$$_module.__default.P27() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, ys#1))
         && _module.__default.mem#canCall(x#1, ys#1)
         && (_module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, ys#1), #_module.Bool.True())
           ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.concat($LS($LZ), xs#1, ys#1)))
             && 
            _module.__default.concat#canCall(xs#1, ys#1)
             && _module.__default.mem#canCall(x#1, _module.__default.concat($LS($LZ), xs#1, ys#1))));
  ensures {:id "id437"} (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.mem($LS($LS($LZ)), x#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> 
      _module.Bool#Equal(_module.__default.mem($LS($LS($LZ)), x#1, ys#1), #_module.Bool.True())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LS($LZ)), x#1, _module.__default.concat($LS($LS($LZ)), xs#1, ys#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P27 (correctness)"} Impl$$_module.__default.P27() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P27, Impl$$_module.__default.P27
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P28 (well-formedness)"} CheckWellFormed$$_module.__default.P28();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P28 (call)"} Call$$_module.__default.P28();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, #_module.List.Nil())) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), 
            x#1, 
            _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))))
         && 
        _module.__default.concat#canCall(xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))
         && _module.__default.mem#canCall(x#1, 
          _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))));
  free ensures {:id "id440"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, #_module.List.Nil())) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LZ), 
          x#1, 
          _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P28 (correctness)"} Impl$$_module.__default.P28() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, #_module.List.Nil())) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), 
            x#1, 
            _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))))
         && 
        _module.__default.concat#canCall(xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))
         && _module.__default.mem#canCall(x#1, 
          _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))));
  ensures {:id "id441"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.concat($LS($LS($LZ)), xs#1, #_module.List.Cons(x#1, #_module.List.Nil())) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LS($LZ)), 
          x#1, 
          _module.__default.concat($LS($LS($LZ)), xs#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P28 (correctness)"} Impl$$_module.__default.P28() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P28, Impl$$_module.__default.P28
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P29 (well-formedness)"} CheckWellFormed$$_module.__default.P29();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P29 (call)"} Call$$_module.__default.P29();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins1($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.ins1($LS($LZ), x#1, xs#1)))
         && 
        _module.__default.ins1#canCall(x#1, xs#1)
         && _module.__default.mem#canCall(x#1, _module.__default.ins1($LS($LZ), x#1, xs#1)));
  free ensures {:id "id444"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins1($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, _module.__default.ins1($LS($LZ), x#1, xs#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P29 (correctness)"} Impl$$_module.__default.P29() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins1($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.ins1($LS($LZ), x#1, xs#1)))
         && 
        _module.__default.ins1#canCall(x#1, xs#1)
         && _module.__default.mem#canCall(x#1, _module.__default.ins1($LS($LZ), x#1, xs#1)));
  ensures {:id "id445"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins1($LS($LS($LZ)), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LS($LZ)), x#1, _module.__default.ins1($LS($LS($LZ)), x#1, xs#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P29 (correctness)"} Impl$$_module.__default.P29() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P29, Impl$$_module.__default.P29
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P30 (well-formedness)"} CheckWellFormed$$_module.__default.P30();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P30 (call)"} Call$$_module.__default.P30();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.ins($LS($LZ), x#1, xs#1)))
         && 
        _module.__default.ins#canCall(x#1, xs#1)
         && _module.__default.mem#canCall(x#1, _module.__default.ins($LS($LZ), x#1, xs#1)));
  free ensures {:id "id448"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LZ), x#1, _module.__default.ins($LS($LZ), x#1, xs#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P30 (correctness)"} Impl$$_module.__default.P30() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.mem($LS($LZ), x#1, _module.__default.ins($LS($LZ), x#1, xs#1)))
         && 
        _module.__default.ins#canCall(x#1, xs#1)
         && _module.__default.mem#canCall(x#1, _module.__default.ins($LS($LZ), x#1, xs#1)));
  ensures {:id "id449"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.ins($LS($LS($LZ)), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.mem($LS($LS($LZ)), x#1, _module.__default.ins($LS($LS($LZ)), x#1, xs#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P30 (correctness)"} Impl$$_module.__default.P30() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P30, Impl$$_module.__default.P30
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P31 (well-formedness)"} CheckWellFormed$$_module.__default.P31();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P31 (call)"} Call$$_module.__default.P31();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.min($LS($LZ), a#1, _module.__default.min($LS($LZ), b#1, c#1)) } 
      { _module.__default.min($LS($LZ), _module.__default.min($LS($LZ), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), _module.__default.min($LS($LZ), a#1, b#1), c#1))
         && $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, _module.__default.min($LS($LZ), b#1, c#1)))
         && 
        _module.__default.min#canCall(a#1, b#1)
         && _module.__default.min#canCall(_module.__default.min($LS($LZ), a#1, b#1), c#1)
         && 
        _module.__default.min#canCall(b#1, c#1)
         && _module.__default.min#canCall(a#1, _module.__default.min($LS($LZ), b#1, c#1)));
  free ensures {:id "id452"} (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.min($LS($LZ), a#1, _module.__default.min($LS($LZ), b#1, c#1)) } 
      { _module.__default.min($LS($LZ), _module.__default.min($LS($LZ), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.min($LS($LZ), _module.__default.min($LS($LZ), a#1, b#1), c#1), 
        _module.__default.min($LS($LZ), a#1, _module.__default.min($LS($LZ), b#1, c#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P31 (correctness)"} Impl$$_module.__default.P31() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.min($LS($LZ), a#1, _module.__default.min($LS($LZ), b#1, c#1)) } 
      { _module.__default.min($LS($LZ), _module.__default.min($LS($LZ), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), _module.__default.min($LS($LZ), a#1, b#1), c#1))
         && $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, _module.__default.min($LS($LZ), b#1, c#1)))
         && 
        _module.__default.min#canCall(a#1, b#1)
         && _module.__default.min#canCall(_module.__default.min($LS($LZ), a#1, b#1), c#1)
         && 
        _module.__default.min#canCall(b#1, c#1)
         && _module.__default.min#canCall(a#1, _module.__default.min($LS($LZ), b#1, c#1)));
  ensures {:id "id453"} (forall a#1: DatatypeType, b#1: DatatypeType, c#1: DatatypeType :: 
    { _module.__default.min($LS($LS($LZ)), a#1, _module.__default.min($LS($LS($LZ)), b#1, c#1)) } 
      { _module.__default.min($LS($LS($LZ)), _module.__default.min($LS($LS($LZ)), a#1, b#1), c#1) } 
    $Is(a#1, Tclass._module.Nat())
         && $Is(b#1, Tclass._module.Nat())
         && $Is(c#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.min($LS($LS($LZ)), _module.__default.min($LS($LS($LZ)), a#1, b#1), c#1), 
        _module.__default.min($LS($LS($LZ)), a#1, _module.__default.min($LS($LS($LZ)), b#1, c#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P31 (correctness)"} Impl$$_module.__default.P31() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P31, Impl$$_module.__default.P31
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P32 (well-formedness)"} CheckWellFormed$$_module.__default.P32();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P32 (call)"} Call$$_module.__default.P32();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.min($LS($LZ), b#1, a#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(_module.__default.min($LS($LZ), b#1, a#1))
         && 
        _module.__default.min#canCall(a#1, b#1)
         && _module.__default.min#canCall(b#1, a#1));
  free ensures {:id "id456"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.min($LS($LZ), b#1, a#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.min($LS($LZ), a#1, b#1), 
        _module.__default.min($LS($LZ), b#1, a#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P32 (correctness)"} Impl$$_module.__default.P32() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.min($LS($LZ), b#1, a#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(_module.__default.min($LS($LZ), b#1, a#1))
         && 
        _module.__default.min#canCall(a#1, b#1)
         && _module.__default.min#canCall(b#1, a#1));
  ensures {:id "id457"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.min($LS($LS($LZ)), b#1, a#1) } 
      { _module.__default.min($LS($LS($LZ)), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.min($LS($LS($LZ)), a#1, b#1), 
        _module.__default.min($LS($LS($LZ)), b#1, a#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P32 (correctness)"} Impl$$_module.__default.P32() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P32, Impl$$_module.__default.P32
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P33 (well-formedness)"} CheckWellFormed$$_module.__default.P33();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P33 (call)"} Call$$_module.__default.P33();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), a#1, b#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(a#1)
         && _module.__default.min#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), a#1, b#1))
         && _module.__default.leq#canCall(a#1, b#1));
  free ensures {:id "id460"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), a#1, b#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.min($LS($LZ), a#1, b#1), a#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LZ), a#1, b#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P33 (correctness)"} Impl$$_module.__default.P33() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), a#1, b#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(a#1)
         && _module.__default.min#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), a#1, b#1))
         && _module.__default.leq#canCall(a#1, b#1));
  ensures {:id "id461"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LS($LZ)), a#1, b#1) } 
      { _module.__default.min($LS($LS($LZ)), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.min($LS($LS($LZ)), a#1, b#1), a#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), a#1, b#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P33 (correctness)"} Impl$$_module.__default.P33() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P33, Impl$$_module.__default.P33
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P34 (well-formedness)"} CheckWellFormed$$_module.__default.P34();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P34 (call)"} Call$$_module.__default.P34();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), b#1, a#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(b#1)
         && _module.__default.min#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), b#1, a#1))
         && _module.__default.leq#canCall(b#1, a#1));
  free ensures {:id "id464"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), b#1, a#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.min($LS($LZ), a#1, b#1), b#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LZ), b#1, a#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P34 (correctness)"} Impl$$_module.__default.P34() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LZ), b#1, a#1) } 
      { _module.__default.min($LS($LZ), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.min($LS($LZ), a#1, b#1))
         && $IsA#_module.Nat(b#1)
         && _module.__default.min#canCall(a#1, b#1)
         && 
        $IsA#_module.Bool(_module.__default.leq($LS($LZ), b#1, a#1))
         && _module.__default.leq#canCall(b#1, a#1));
  ensures {:id "id465"} (forall a#1: DatatypeType, b#1: DatatypeType :: 
    { _module.__default.leq($LS($LS($LZ)), b#1, a#1) } 
      { _module.__default.min($LS($LS($LZ)), a#1, b#1) } 
    $Is(a#1, Tclass._module.Nat()) && $Is(b#1, Tclass._module.Nat())
       ==> (_module.Nat#Equal(_module.__default.min($LS($LS($LZ)), a#1, b#1), b#1)
         <==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), b#1, a#1), #_module.Bool.True())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P34 (correctness)"} Impl$$_module.__default.P34() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P34, Impl$$_module.__default.P34
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P35 (well-formedness)"} CheckWellFormed$$_module.__default.P35();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P35 (call)"} Call$$_module.__default.P35();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LZ), _module.__default.AlwaysFalseFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.dropWhileAlways($LS($LZ), Lit(_module.__default.AlwaysFalseFunction()), xs#1))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.AlwaysFalseFunction#canCall()
         && _module.__default.dropWhileAlways#canCall(Lit(_module.__default.AlwaysFalseFunction()), xs#1));
  free ensures {:id "id468"} (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LZ), _module.__default.AlwaysFalseFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.dropWhileAlways($LS($LZ), Lit(_module.__default.AlwaysFalseFunction()), xs#1), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P35 (correctness)"} Impl$$_module.__default.P35() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LZ), _module.__default.AlwaysFalseFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.dropWhileAlways($LS($LZ), Lit(_module.__default.AlwaysFalseFunction()), xs#1))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.AlwaysFalseFunction#canCall()
         && _module.__default.dropWhileAlways#canCall(Lit(_module.__default.AlwaysFalseFunction()), xs#1));
  ensures {:id "id469"} (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LS($LZ)), _module.__default.AlwaysFalseFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.dropWhileAlways($LS($LS($LZ)), Lit(_module.__default.AlwaysFalseFunction()), xs#1), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P35 (correctness)"} Impl$$_module.__default.P35() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P35, Impl$$_module.__default.P35
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P36 (well-formedness)"} CheckWellFormed$$_module.__default.P36();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P36 (call)"} Call$$_module.__default.P36();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.takeWhileAlways($LS($LZ), _module.__default.AlwaysTrueFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.takeWhileAlways($LS($LZ), Lit(_module.__default.AlwaysTrueFunction()), xs#1))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.AlwaysTrueFunction#canCall()
         && _module.__default.takeWhileAlways#canCall(Lit(_module.__default.AlwaysTrueFunction()), xs#1));
  free ensures {:id "id472"} (forall xs#1: DatatypeType :: 
    { _module.__default.takeWhileAlways($LS($LZ), _module.__default.AlwaysTrueFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.takeWhileAlways($LS($LZ), Lit(_module.__default.AlwaysTrueFunction()), xs#1), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P36 (correctness)"} Impl$$_module.__default.P36() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.takeWhileAlways($LS($LZ), _module.__default.AlwaysTrueFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.takeWhileAlways($LS($LZ), Lit(_module.__default.AlwaysTrueFunction()), xs#1))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.AlwaysTrueFunction#canCall()
         && _module.__default.takeWhileAlways#canCall(Lit(_module.__default.AlwaysTrueFunction()), xs#1));
  ensures {:id "id473"} (forall xs#1: DatatypeType :: 
    { _module.__default.takeWhileAlways($LS($LS($LZ)), _module.__default.AlwaysTrueFunction(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.takeWhileAlways($LS($LS($LZ)), Lit(_module.__default.AlwaysTrueFunction()), xs#1), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P36 (correctness)"} Impl$$_module.__default.P36() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P36, Impl$$_module.__default.P36
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P37 (well-formedness)"} CheckWellFormed$$_module.__default.P37();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P37 (call)"} Call$$_module.__default.P37();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.delete($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.not(_module.__default.mem($LS($LZ), x#1, _module.__default.delete($LS($LZ), x#1, xs#1))))
         && 
        _module.__default.delete#canCall(x#1, xs#1)
         && _module.__default.mem#canCall(x#1, _module.__default.delete($LS($LZ), x#1, xs#1))
         && _module.__default.not#canCall(_module.__default.mem($LS($LZ), x#1, _module.__default.delete($LS($LZ), x#1, xs#1))));
  free ensures {:id "id476"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.delete($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.not(_module.__default.mem($LS($LZ), x#1, _module.__default.delete($LS($LZ), x#1, xs#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P37 (correctness)"} Impl$$_module.__default.P37() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.delete($LS($LZ), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Bool(_module.__default.not(_module.__default.mem($LS($LZ), x#1, _module.__default.delete($LS($LZ), x#1, xs#1))))
         && 
        _module.__default.delete#canCall(x#1, xs#1)
         && _module.__default.mem#canCall(x#1, _module.__default.delete($LS($LZ), x#1, xs#1))
         && _module.__default.not#canCall(_module.__default.mem($LS($LZ), x#1, _module.__default.delete($LS($LZ), x#1, xs#1))));
  ensures {:id "id477"} (forall x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.delete($LS($LS($LZ)), x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Bool#Equal(_module.__default.not(_module.__default.mem($LS($LS($LZ)), x#1, _module.__default.delete($LS($LS($LZ)), x#1, xs#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P37 (correctness)"} Impl$$_module.__default.P37() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P37, Impl$$_module.__default.P37
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P38 (well-formedness)"} CheckWellFormed$$_module.__default.P38();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P38 (call)"} Call$$_module.__default.P38();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.Nat.Suc(_module.__default.count($LS($LZ), n#1, xs#1)) } 
      { _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, #_module.List.Nil())) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.count($LS($LZ), 
            n#1, 
            _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil())))))
         && 
        _module.__default.concat#canCall(xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil())))
         && _module.__default.count#canCall(n#1, 
          _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil()))))
         && _module.__default.count#canCall(n#1, xs#1));
  free ensures {:id "id480"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.Nat.Suc(_module.__default.count($LS($LZ), n#1, xs#1)) } 
      { _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, #_module.List.Nil())) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.count($LS($LZ), 
          n#1, 
          _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil())))), 
        #_module.Nat.Suc(_module.__default.count($LS($LZ), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P38 (correctness)"} Impl$$_module.__default.P38() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.Nat.Suc(_module.__default.count($LS($LZ), n#1, xs#1)) } 
      { _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, #_module.List.Nil())) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.count($LS($LZ), 
            n#1, 
            _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil())))))
         && 
        _module.__default.concat#canCall(xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil())))
         && _module.__default.count#canCall(n#1, 
          _module.__default.concat($LS($LZ), xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil()))))
         && _module.__default.count#canCall(n#1, xs#1));
  ensures {:id "id481"} (forall n#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.Nat.Suc(_module.__default.count($LS($LS($LZ)), n#1, xs#1)) } 
      { _module.__default.concat($LS($LS($LZ)), xs#1, #_module.List.Cons(n#1, #_module.List.Nil())) } 
    $Is(n#1, Tclass._module.Nat()) && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.count($LS($LS($LZ)), 
          n#1, 
          _module.__default.concat($LS($LS($LZ)), xs#1, #_module.List.Cons(n#1, Lit(#_module.List.Nil())))), 
        #_module.Nat.Suc(_module.__default.count($LS($LS($LZ)), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P38 (correctness)"} Impl$$_module.__default.P38() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P38, Impl$$_module.__default.P38
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P39 (well-formedness)"} CheckWellFormed$$_module.__default.P39();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P39 (call)"} Call$$_module.__default.P39();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)) } 
      { _module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, #_module.List.Nil())), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil()))), 
            _module.__default.count($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)))
         && 
        _module.__default.count#canCall(n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))
         && _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.add#canCall(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil()))), 
          _module.__default.count($LS($LZ), n#1, xs#1))
         && _module.__default.count#canCall(n#1, #_module.List.Cons(x#1, xs#1)));
  free ensures {:id "id484"} (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)) } 
      { _module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, #_module.List.Nil())), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.add($LS($LZ), 
          _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil()))), 
          _module.__default.count($LS($LZ), n#1, xs#1)), 
        _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P39 (correctness)"} Impl$$_module.__default.P39() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)) } 
      { _module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, #_module.List.Nil())), 
        _module.__default.count($LS($LZ), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), 
            _module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil()))), 
            _module.__default.count($LS($LZ), n#1, xs#1)))
         && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, xs#1)))
         && 
        _module.__default.count#canCall(n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil())))
         && _module.__default.count#canCall(n#1, xs#1)
         && _module.__default.add#canCall(_module.__default.count($LS($LZ), n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil()))), 
          _module.__default.count($LS($LZ), n#1, xs#1))
         && _module.__default.count#canCall(n#1, #_module.List.Cons(x#1, xs#1)));
  ensures {:id "id485"} (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { _module.__default.count($LS($LS($LZ)), n#1, #_module.List.Cons(x#1, xs#1)) } 
      { _module.__default.add($LS($LS($LZ)), 
        _module.__default.count($LS($LS($LZ)), n#1, #_module.List.Cons(x#1, #_module.List.Nil())), 
        _module.__default.count($LS($LS($LZ)), n#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), 
          _module.__default.count($LS($LS($LZ)), n#1, #_module.List.Cons(x#1, Lit(#_module.List.Nil()))), 
          _module.__default.count($LS($LS($LZ)), n#1, xs#1)), 
        _module.__default.count($LS($LS($LZ)), n#1, #_module.List.Cons(x#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P39 (correctness)"} Impl$$_module.__default.P39() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P39, Impl$$_module.__default.P39
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P40 (well-formedness)"} CheckWellFormed$$_module.__default.P40();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P40 (call)"} Call$$_module.__default.P40();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.take($LS($LZ), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.take($LS($LZ), Lit(#_module.Nat.Zero()), xs#1))
         && _module.__default.take#canCall(Lit(#_module.Nat.Zero()), xs#1));
  free ensures {:id "id488"} (forall xs#1: DatatypeType :: 
    { _module.__default.take($LS($LZ), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.take($LS($LZ), Lit(#_module.Nat.Zero()), xs#1), 
        #_module.List.Nil()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P40 (correctness)"} Impl$$_module.__default.P40() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.take($LS($LZ), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.take($LS($LZ), Lit(#_module.Nat.Zero()), xs#1))
         && _module.__default.take#canCall(Lit(#_module.Nat.Zero()), xs#1));
  ensures {:id "id489"} (forall xs#1: DatatypeType :: 
    { _module.__default.take($LS($LS($LZ)), #_module.Nat.Zero(), xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.take($LS($LS($LZ)), Lit(#_module.Nat.Zero()), xs#1), 
        #_module.List.Nil()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P40 (correctness)"} Impl$$_module.__default.P40() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P40, Impl$$_module.__default.P40
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P41 (well-formedness)"} CheckWellFormed$$_module.__default.P41();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P41 (call)"} Call$$_module.__default.P41();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LZ), f#1, _module.__default.take($LS($LZ), n#1, xs#1)) } 
      { _module.__default.take($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> $IsA#_module.List(_module.__default.take($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)))
         && $IsA#_module.List(_module.__default.apply($LS($LZ), f#1, _module.__default.take($LS($LZ), n#1, xs#1)))
         && 
        _module.__default.apply#canCall(f#1, xs#1)
         && _module.__default.take#canCall(n#1, _module.__default.apply($LS($LZ), f#1, xs#1))
         && 
        _module.__default.take#canCall(n#1, xs#1)
         && _module.__default.apply#canCall(f#1, _module.__default.take($LS($LZ), n#1, xs#1)));
  free ensures {:id "id492"} (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LZ), f#1, _module.__default.take($LS($LZ), n#1, xs#1)) } 
      { _module.__default.take($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> _module.List#Equal(_module.__default.take($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)), 
        _module.__default.apply($LS($LZ), f#1, _module.__default.take($LS($LZ), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P41 (correctness)"} Impl$$_module.__default.P41() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LZ), f#1, _module.__default.take($LS($LZ), n#1, xs#1)) } 
      { _module.__default.take($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> $IsA#_module.List(_module.__default.take($LS($LZ), n#1, _module.__default.apply($LS($LZ), f#1, xs#1)))
         && $IsA#_module.List(_module.__default.apply($LS($LZ), f#1, _module.__default.take($LS($LZ), n#1, xs#1)))
         && 
        _module.__default.apply#canCall(f#1, xs#1)
         && _module.__default.take#canCall(n#1, _module.__default.apply($LS($LZ), f#1, xs#1))
         && 
        _module.__default.take#canCall(n#1, xs#1)
         && _module.__default.apply#canCall(f#1, _module.__default.take($LS($LZ), n#1, xs#1)));
  ensures {:id "id493"} (forall n#1: DatatypeType, xs#1: DatatypeType, f#1: HandleType :: 
    { _module.__default.apply($LS($LS($LZ)), f#1, _module.__default.take($LS($LS($LZ)), n#1, xs#1)) } 
      { _module.__default.take($LS($LS($LZ)), n#1, _module.__default.apply($LS($LS($LZ)), f#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(f#1, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
       ==> _module.List#Equal(_module.__default.take($LS($LS($LZ)), n#1, _module.__default.apply($LS($LS($LZ)), f#1, xs#1)), 
        _module.__default.apply($LS($LS($LZ)), f#1, _module.__default.take($LS($LS($LZ)), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P41 (correctness)"} Impl$$_module.__default.P41() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P41, Impl$$_module.__default.P41
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P42 (well-formedness)"} CheckWellFormed$$_module.__default.P42();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P42 (call)"} Call$$_module.__default.P42();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, _module.__default.take($LS($LZ), n#1, xs#1)) } 
      { _module.__default.take($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.take($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)))
         && 
        _module.__default.take#canCall(#_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1))
         && _module.__default.take#canCall(n#1, xs#1));
  free ensures {:id "id496"} (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, _module.__default.take($LS($LZ), n#1, xs#1)) } 
      { _module.__default.take($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.take($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)), 
        #_module.List.Cons(x#1, _module.__default.take($LS($LZ), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P42 (correctness)"} Impl$$_module.__default.P42() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, _module.__default.take($LS($LZ), n#1, xs#1)) } 
      { _module.__default.take($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.take($LS($LZ), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)))
         && 
        _module.__default.take#canCall(#_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1))
         && _module.__default.take#canCall(n#1, xs#1));
  ensures {:id "id497"} (forall n#1: DatatypeType, x#1: DatatypeType, xs#1: DatatypeType :: 
    { #_module.List.Cons(x#1, _module.__default.take($LS($LS($LZ)), n#1, xs#1)) } 
      { _module.__default.take($LS($LS($LZ)), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)) } 
    $Is(n#1, Tclass._module.Nat())
         && $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.take($LS($LS($LZ)), #_module.Nat.Suc(n#1), #_module.List.Cons(x#1, xs#1)), 
        #_module.List.Cons(x#1, _module.__default.take($LS($LS($LZ)), n#1, xs#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P42 (correctness)"} Impl$$_module.__default.P42() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P42, Impl$$_module.__default.P42
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P43 (well-formedness)"} CheckWellFormed$$_module.__default.P43(p#0: HandleType
       where $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
         && $IsAlloc(p#0, 
          Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
          $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P43 (call)"} Call$$_module.__default.P43(p#0: HandleType
       where $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
         && $IsAlloc(p#0, 
          Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
          $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1) } 
      { _module.__default.takeWhileAlways($LS($LZ), p#0, xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.concat($LS($LZ), 
            _module.__default.takeWhileAlways($LS($LZ), p#0, xs#1), 
            _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1)))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.takeWhileAlways#canCall(p#0, xs#1)
         && _module.__default.dropWhileAlways#canCall(p#0, xs#1)
         && _module.__default.concat#canCall(_module.__default.takeWhileAlways($LS($LZ), p#0, xs#1), 
          _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1)));
  free ensures {:id "id500"} (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1) } 
      { _module.__default.takeWhileAlways($LS($LZ), p#0, xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.concat($LS($LZ), 
          _module.__default.takeWhileAlways($LS($LZ), p#0, xs#1), 
          _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1)), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P43 (correctness)"} Impl$$_module.__default.P43(p#0: HandleType
       where $Is(p#0, Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()))
         && $IsAlloc(p#0, 
          Tclass._System.___hTotalFunc1(Tclass._module.Nat(), Tclass._module.Nat()), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1) } 
      { _module.__default.takeWhileAlways($LS($LZ), p#0, xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> $IsA#_module.List(_module.__default.concat($LS($LZ), 
            _module.__default.takeWhileAlways($LS($LZ), p#0, xs#1), 
            _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1)))
         && $IsA#_module.List(xs#1)
         && 
        _module.__default.takeWhileAlways#canCall(p#0, xs#1)
         && _module.__default.dropWhileAlways#canCall(p#0, xs#1)
         && _module.__default.concat#canCall(_module.__default.takeWhileAlways($LS($LZ), p#0, xs#1), 
          _module.__default.dropWhileAlways($LS($LZ), p#0, xs#1)));
  ensures {:id "id501"} (forall xs#1: DatatypeType :: 
    { _module.__default.dropWhileAlways($LS($LS($LZ)), p#0, xs#1) } 
      { _module.__default.takeWhileAlways($LS($LS($LZ)), p#0, xs#1) } 
    $Is(xs#1, Tclass._module.List())
       ==> _module.List#Equal(_module.__default.concat($LS($LS($LZ)), 
          _module.__default.takeWhileAlways($LS($LS($LZ)), p#0, xs#1), 
          _module.__default.dropWhileAlways($LS($LS($LZ)), p#0, xs#1)), 
        xs#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P43 (correctness)"} Impl$$_module.__default.P43(p#0: HandleType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P43, Impl$$_module.__default.P43
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P44 (well-formedness)"} CheckWellFormed$$_module.__default.P44();
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P44 (call)"} Call$$_module.__default.P44();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.zipConcat(x#1, xs#1, ys#1) } 
      { _module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), ys#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.PList(_module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), ys#1))
         && $IsA#_module.PList(_module.__default.zipConcat(x#1, xs#1, ys#1))
         && 
        _module.__default.zip#canCall(#_module.List.Cons(x#1, xs#1), ys#1)
         && _module.__default.zipConcat#canCall(x#1, xs#1, ys#1));
  free ensures {:id "id504"} (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.zipConcat(x#1, xs#1, ys#1) } 
      { _module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), ys#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.PList#Equal(_module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), ys#1), 
        _module.__default.zipConcat(x#1, xs#1, ys#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P44 (correctness)"} Impl$$_module.__default.P44() returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.zipConcat(x#1, xs#1, ys#1) } 
      { _module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), ys#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.PList(_module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), ys#1))
         && $IsA#_module.PList(_module.__default.zipConcat(x#1, xs#1, ys#1))
         && 
        _module.__default.zip#canCall(#_module.List.Cons(x#1, xs#1), ys#1)
         && _module.__default.zipConcat#canCall(x#1, xs#1, ys#1));
  ensures {:id "id505"} (forall x#1: DatatypeType, xs#1: DatatypeType, ys#1: DatatypeType :: 
    { _module.__default.zipConcat(x#1, xs#1, ys#1) } 
      { _module.__default.zip($LS($LS($LZ)), #_module.List.Cons(x#1, xs#1), ys#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.PList#Equal(_module.__default.zip($LS($LS($LZ)), #_module.List.Cons(x#1, xs#1), ys#1), 
        _module.__default.zipConcat(x#1, xs#1, ys#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P44 (correctness)"} Impl$$_module.__default.P44() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P44, Impl$$_module.__default.P44
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P45 (well-formedness)"} CheckWellFormed$$_module.__default.P45();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P45 (call)"} Call$$_module.__default.P45();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, y#1: DatatypeType, ys#1: DatatypeType :: 
    { #_module.PList.PCons(#_module.Pair.Pair(x#1, y#1), _module.__default.zip($LS($LZ), xs#1, ys#1)) } 
      { #_module.List.Cons(y#1, ys#1), #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(y#1, Tclass._module.Nat())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.PList(_module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), #_module.List.Cons(y#1, ys#1)))
         && 
        _module.__default.zip#canCall(#_module.List.Cons(x#1, xs#1), #_module.List.Cons(y#1, ys#1))
         && _module.__default.zip#canCall(xs#1, ys#1));
  free ensures {:id "id508"} (forall x#1: DatatypeType, xs#1: DatatypeType, y#1: DatatypeType, ys#1: DatatypeType :: 
    { #_module.PList.PCons(#_module.Pair.Pair(x#1, y#1), _module.__default.zip($LS($LZ), xs#1, ys#1)) } 
      { #_module.List.Cons(y#1, ys#1), #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(y#1, Tclass._module.Nat())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.PList#Equal(_module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), #_module.List.Cons(y#1, ys#1)), 
        #_module.PList.PCons(#_module.Pair.Pair(x#1, y#1), _module.__default.zip($LS($LZ), xs#1, ys#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P45 (correctness)"} Impl$$_module.__default.P45() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall x#1: DatatypeType, xs#1: DatatypeType, y#1: DatatypeType, ys#1: DatatypeType :: 
    { #_module.PList.PCons(#_module.Pair.Pair(x#1, y#1), _module.__default.zip($LS($LZ), xs#1, ys#1)) } 
      { #_module.List.Cons(y#1, ys#1), #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(y#1, Tclass._module.Nat())
         && $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.PList(_module.__default.zip($LS($LZ), #_module.List.Cons(x#1, xs#1), #_module.List.Cons(y#1, ys#1)))
         && 
        _module.__default.zip#canCall(#_module.List.Cons(x#1, xs#1), #_module.List.Cons(y#1, ys#1))
         && _module.__default.zip#canCall(xs#1, ys#1));
  ensures {:id "id509"} (forall x#1: DatatypeType, xs#1: DatatypeType, y#1: DatatypeType, ys#1: DatatypeType :: 
    { #_module.PList.PCons(#_module.Pair.Pair(x#1, y#1), _module.__default.zip($LS($LS($LZ)), xs#1, ys#1)) } 
      { #_module.List.Cons(y#1, ys#1), #_module.List.Cons(x#1, xs#1) } 
    $Is(x#1, Tclass._module.Nat())
         && $Is(xs#1, Tclass._module.List())
         && $Is(y#1, Tclass._module.Nat())
         && $Is(ys#1, Tclass._module.List())
       ==> _module.PList#Equal(_module.__default.zip($LS($LS($LZ)), #_module.List.Cons(x#1, xs#1), #_module.List.Cons(y#1, ys#1)), 
        #_module.PList.PCons(#_module.Pair.Pair(x#1, y#1), _module.__default.zip($LS($LS($LZ)), xs#1, ys#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P45 (correctness)"} Impl$$_module.__default.P45() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P45, Impl$$_module.__default.P45
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P46 (well-formedness)"} CheckWellFormed$$_module.__default.P46();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P46 (call)"} Call$$_module.__default.P46();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall ys#1: DatatypeType :: 
    { _module.__default.zip($LS($LZ), #_module.List.Nil(), ys#1) } 
    $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.PList(_module.__default.zip($LS($LZ), Lit(#_module.List.Nil()), ys#1))
         && _module.__default.zip#canCall(Lit(#_module.List.Nil()), ys#1));
  free ensures {:id "id512"} (forall ys#1: DatatypeType :: 
    { _module.__default.zip($LS($LZ), #_module.List.Nil(), ys#1) } 
    $Is(ys#1, Tclass._module.List())
       ==> _module.PList#Equal(_module.__default.zip($LS($LZ), Lit(#_module.List.Nil()), ys#1), 
        #_module.PList.PNil()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P46 (correctness)"} Impl$$_module.__default.P46() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall ys#1: DatatypeType :: 
    { _module.__default.zip($LS($LZ), #_module.List.Nil(), ys#1) } 
    $Is(ys#1, Tclass._module.List())
       ==> $IsA#_module.PList(_module.__default.zip($LS($LZ), Lit(#_module.List.Nil()), ys#1))
         && _module.__default.zip#canCall(Lit(#_module.List.Nil()), ys#1));
  ensures {:id "id513"} (forall ys#1: DatatypeType :: 
    { _module.__default.zip($LS($LS($LZ)), #_module.List.Nil(), ys#1) } 
    $Is(ys#1, Tclass._module.List())
       ==> _module.PList#Equal(_module.__default.zip($LS($LS($LZ)), Lit(#_module.List.Nil()), ys#1), 
        #_module.PList.PNil()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P46 (correctness)"} Impl$$_module.__default.P46() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P46, Impl$$_module.__default.P46
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "P47 (well-formedness)"} CheckWellFormed$$_module.__default.P47();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P47 (call)"} Call$$_module.__default.P47();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType :: 
    { _module.__default.mirror($LS($LZ), a#1) } 
    $Is(a#1, Tclass._module.Tree())
       ==> $IsA#_module.Nat(_module.__default.height($LS($LZ), _module.__default.mirror($LS($LZ), a#1)))
         && $IsA#_module.Nat(_module.__default.height($LS($LZ), a#1))
         && 
        _module.__default.mirror#canCall(a#1)
         && _module.__default.height#canCall(_module.__default.mirror($LS($LZ), a#1))
         && _module.__default.height#canCall(a#1));
  free ensures {:id "id516"} (forall a#1: DatatypeType :: 
    { _module.__default.mirror($LS($LZ), a#1) } 
    $Is(a#1, Tclass._module.Tree())
       ==> _module.Nat#Equal(_module.__default.height($LS($LZ), _module.__default.mirror($LS($LZ), a#1)), 
        _module.__default.height($LS($LZ), a#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P47 (correctness)"} Impl$$_module.__default.P47() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall a#1: DatatypeType :: 
    { _module.__default.mirror($LS($LZ), a#1) } 
    $Is(a#1, Tclass._module.Tree())
       ==> $IsA#_module.Nat(_module.__default.height($LS($LZ), _module.__default.mirror($LS($LZ), a#1)))
         && $IsA#_module.Nat(_module.__default.height($LS($LZ), a#1))
         && 
        _module.__default.mirror#canCall(a#1)
         && _module.__default.height#canCall(_module.__default.mirror($LS($LZ), a#1))
         && _module.__default.height#canCall(a#1));
  ensures {:id "id517"} (forall a#1: DatatypeType :: 
    { _module.__default.mirror($LS($LS($LZ)), a#1) } 
    $Is(a#1, Tclass._module.Tree())
       ==> _module.Nat#Equal(_module.__default.height($LS($LS($LZ)), _module.__default.mirror($LS($LS($LZ)), a#1)), 
        _module.__default.height($LS($LS($LZ)), a#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P47 (correctness)"} Impl$$_module.__default.P47() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: P47, Impl$$_module.__default.P47
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(543,6)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id518"} Call$$_module.__default.P23();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "P54 (well-formedness)"} CheckWellFormed$$_module.__default.P54();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P54 (call)"} Call$$_module.__default.P54();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), m#1, n#1), n#1))
         && $IsA#_module.Nat(m#1)
         && 
        _module.__default.add#canCall(m#1, n#1)
         && _module.__default.minus#canCall(_module.__default.add($LS($LZ), m#1, n#1), n#1));
  free ensures {:id "id521"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), m#1, n#1), n#1), 
        m#1));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P54 (correctness)"} Impl$$_module.__default.P54() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), m#1, n#1), n#1))
         && $IsA#_module.Nat(m#1)
         && 
        _module.__default.add#canCall(m#1, n#1)
         && _module.__default.minus#canCall(_module.__default.add($LS($LZ), m#1, n#1), n#1));
  ensures {:id "id522"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Nat#Equal(_module.__default.minus($LS($LS($LZ)), _module.__default.add($LS($LS($LZ)), m#1, n#1), n#1), 
        m#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P54 (correctness)"} Impl$$_module.__default.P54() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#2: DatatypeType;
  var n#2: DatatypeType;
  var ##x#2: DatatypeType;
  var ##x#3: DatatypeType;
  var ##y#2: DatatypeType;
  var ##y#3: DatatypeType;
  var m#4: DatatypeType;
  var n#4: DatatypeType;
  var ##x#4: DatatypeType;
  var ##y#4: DatatypeType;
  var ##x#5: DatatypeType;
  var ##y#5: DatatypeType;

    // AddMethodImpl: P54, Impl$$_module.__default.P54
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(552,3)
    // Begin Comprehension WF check
    havoc m#2;
    havoc n#2;
    if ($Is(m#2, Tclass._module.Nat())
       && $IsAlloc(m#2, Tclass._module.Nat(), $Heap)
       && 
      $Is(n#2, Tclass._module.Nat())
       && $IsAlloc(n#2, Tclass._module.Nat(), $Heap))
    {
        ##x#3 := n#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#3, Tclass._module.Nat(), $Heap);
        ##y#2 := m#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#2, Tclass._module.Nat(), $Heap);
        assume _module.__default.add#canCall(n#2, m#2);
        ##x#2 := _module.__default.add($LS($LZ), n#2, m#2);
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#2, Tclass._module.Nat(), $Heap);
        ##y#3 := n#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#3, Tclass._module.Nat(), $Heap);
        assume _module.__default.minus#canCall(_module.__default.add($LS($LZ), n#2, m#2), n#2);
    }

    // End Comprehension WF check
    assume (forall m#3: DatatypeType, n#3: DatatypeType :: 
      $Is(m#3, Tclass._module.Nat()) && $Is(n#3, Tclass._module.Nat())
         ==> $IsA#_module.Nat(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), n#3, m#3), n#3))
           && $IsA#_module.Nat(m#3)
           && 
          _module.__default.add#canCall(n#3, m#3)
           && _module.__default.minus#canCall(_module.__default.add($LS($LZ), n#3, m#3), n#3));
    assert {:id "id523"} {:subsumption 0} (forall m#3: DatatypeType, n#3: DatatypeType :: 
      $Is(m#3, Tclass._module.Nat()) && $Is(n#3, Tclass._module.Nat())
         ==> _module.Nat#Equal(_module.__default.minus($LS($LS($LZ)), _module.__default.add($LS($LS($LZ)), n#3, m#3), n#3), 
          m#3));
    assume {:id "id524"} (forall m#3: DatatypeType, n#3: DatatypeType :: 
      $Is(m#3, Tclass._module.Nat()) && $Is(n#3, Tclass._module.Nat())
         ==> _module.Nat#Equal(_module.__default.minus($LS($LZ), _module.__default.add($LS($LZ), n#3, m#3), n#3), 
          m#3));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(553,3)
    // Begin Comprehension WF check
    havoc m#4;
    havoc n#4;
    if ($Is(m#4, Tclass._module.Nat())
       && $IsAlloc(m#4, Tclass._module.Nat(), $Heap)
       && 
      $Is(n#4, Tclass._module.Nat())
       && $IsAlloc(n#4, Tclass._module.Nat(), $Heap))
    {
        ##x#4 := m#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#4, Tclass._module.Nat(), $Heap);
        ##y#4 := n#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#4, Tclass._module.Nat(), $Heap);
        assume _module.__default.add#canCall(m#4, n#4);
        ##x#5 := n#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#5, Tclass._module.Nat(), $Heap);
        ##y#5 := m#4;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#5, Tclass._module.Nat(), $Heap);
        assume _module.__default.add#canCall(n#4, m#4);
    }

    // End Comprehension WF check
    assume (forall m#5: DatatypeType, n#5: DatatypeType :: 
      { _module.__default.add($LS($LZ), n#5, m#5) } 
        { _module.__default.add($LS($LZ), m#5, n#5) } 
      $Is(m#5, Tclass._module.Nat()) && $Is(n#5, Tclass._module.Nat())
         ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), m#5, n#5))
           && $IsA#_module.Nat(_module.__default.add($LS($LZ), n#5, m#5))
           && 
          _module.__default.add#canCall(m#5, n#5)
           && _module.__default.add#canCall(n#5, m#5));
    assert {:id "id525"} {:subsumption 0} (forall m#5: DatatypeType, n#5: DatatypeType :: 
      { _module.__default.add($LS($LS($LZ)), n#5, m#5) } 
        { _module.__default.add($LS($LS($LZ)), m#5, n#5) } 
      $Is(m#5, Tclass._module.Nat()) && $Is(n#5, Tclass._module.Nat())
         ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), m#5, n#5), 
          _module.__default.add($LS($LS($LZ)), n#5, m#5)));
    assume {:id "id526"} (forall m#5: DatatypeType, n#5: DatatypeType :: 
      { _module.__default.add($LS($LZ), n#5, m#5) } 
        { _module.__default.add($LS($LZ), m#5, n#5) } 
      $Is(m#5, Tclass._module.Nat()) && $Is(n#5, Tclass._module.Nat())
         ==> _module.Nat#Equal(_module.__default.add($LS($LZ), m#5, n#5), 
          _module.__default.add($LS($LZ), n#5, m#5)));
}



procedure {:verboseName "P65 (well-formedness)"} CheckWellFormed$$_module.__default.P65();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P65 (call)"} Call$$_module.__default.P65();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, i#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.less($LS($LZ), i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), m#1, i#1))))
         && 
        _module.__default.add#canCall(m#1, i#1)
         && _module.__default.less#canCall(i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), m#1, i#1))));
  free ensures {:id "id529"} (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, i#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.less($LS($LZ), i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), m#1, i#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P65 (correctness)"} Impl$$_module.__default.P65() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, i#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.less($LS($LZ), i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), m#1, i#1))))
         && 
        _module.__default.add#canCall(m#1, i#1)
         && _module.__default.less#canCall(i#1, #_module.Nat.Suc(_module.__default.add($LS($LZ), m#1, i#1))));
  ensures {:id "id530"} (forall i#1: DatatypeType, m#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), m#1, i#1) } 
    $Is(i#1, Tclass._module.Nat()) && $Is(m#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.less($LS($LS($LZ)), 
          i#1, 
          #_module.Nat.Suc(_module.__default.add($LS($LS($LZ)), m#1, i#1))), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P65 (correctness)"} Impl$$_module.__default.P65() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0_0: DatatypeType;
  var m#0_0: DatatypeType;
  var ##x#0_0: DatatypeType;
  var ##y#0_0: DatatypeType;
  var ##x#0_1: DatatypeType;
  var ##y#0_1: DatatypeType;
  var m#0_2: DatatypeType;
  var n#0_0: DatatypeType;
  var ##x#0_2: DatatypeType;
  var ##y#0_2: DatatypeType;
  var ##x#0_3: DatatypeType;
  var ##y#0_3: DatatypeType;
  var x#1_0: DatatypeType;
  var y#1_0: DatatypeType;
  var ##x#1_0: DatatypeType;
  var ##y#1_0: DatatypeType;
  var ##x#1_1: DatatypeType;
  var ##y#1_1: DatatypeType;

    // AddMethodImpl: P65, Impl$$_module.__default.P65
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(559,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(561,5)
        // Begin Comprehension WF check
        havoc i#0_0;
        havoc m#0_0;
        if ($Is(i#0_0, Tclass._module.Nat())
           && $IsAlloc(i#0_0, Tclass._module.Nat(), $Heap)
           && 
          $Is(m#0_0, Tclass._module.Nat())
           && $IsAlloc(m#0_0, Tclass._module.Nat(), $Heap))
        {
            ##x#0_0 := i#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_0, Tclass._module.Nat(), $Heap);
            ##x#0_1 := i#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_1, Tclass._module.Nat(), $Heap);
            ##y#0_1 := m#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(i#0_0, m#0_0);
            ##y#0_0 := #_module.Nat.Suc(_module.__default.add($LS($LZ), i#0_0, m#0_0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.less#canCall(i#0_0, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#0_0, m#0_0)));
        }

        // End Comprehension WF check
        assume (forall i#0_1: DatatypeType, m#0_1: DatatypeType :: 
          $Is(i#0_1, Tclass._module.Nat()) && $Is(m#0_1, Tclass._module.Nat())
             ==> $IsA#_module.Bool(_module.__default.less($LS($LZ), i#0_1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#0_1, m#0_1))))
               && 
              _module.__default.add#canCall(i#0_1, m#0_1)
               && _module.__default.less#canCall(i#0_1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#0_1, m#0_1))));
        assert {:id "id531"} {:subsumption 0} (forall i#0_1: DatatypeType, m#0_1: DatatypeType :: 
          $Is(i#0_1, Tclass._module.Nat()) && $Is(m#0_1, Tclass._module.Nat())
             ==> _module.Bool#Equal(_module.__default.less($LS($LS($LZ)), 
                i#0_1, 
                #_module.Nat.Suc(_module.__default.add($LS($LS($LZ)), i#0_1, m#0_1))), 
              #_module.Bool.True()));
        assume {:id "id532"} (forall i#0_1: DatatypeType, m#0_1: DatatypeType :: 
          $Is(i#0_1, Tclass._module.Nat()) && $Is(m#0_1, Tclass._module.Nat())
             ==> _module.Bool#Equal(_module.__default.less($LS($LZ), i#0_1, #_module.Nat.Suc(_module.__default.add($LS($LZ), i#0_1, m#0_1))), 
              #_module.Bool.True()));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(562,5)
        // Begin Comprehension WF check
        havoc m#0_2;
        havoc n#0_0;
        if ($Is(m#0_2, Tclass._module.Nat())
           && $IsAlloc(m#0_2, Tclass._module.Nat(), $Heap)
           && 
          $Is(n#0_0, Tclass._module.Nat())
           && $IsAlloc(n#0_0, Tclass._module.Nat(), $Heap))
        {
            ##x#0_2 := m#0_2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_2, Tclass._module.Nat(), $Heap);
            ##y#0_2 := n#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_2, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(m#0_2, n#0_0);
            ##x#0_3 := n#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_3, Tclass._module.Nat(), $Heap);
            ##y#0_3 := m#0_2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_3, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(n#0_0, m#0_2);
        }

        // End Comprehension WF check
        assume (forall m#0_3: DatatypeType, n#0_1: DatatypeType :: 
          { _module.__default.add($LS($LZ), n#0_1, m#0_3) } 
            { _module.__default.add($LS($LZ), m#0_3, n#0_1) } 
          $Is(m#0_3, Tclass._module.Nat()) && $Is(n#0_1, Tclass._module.Nat())
             ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), m#0_3, n#0_1))
               && $IsA#_module.Nat(_module.__default.add($LS($LZ), n#0_1, m#0_3))
               && 
              _module.__default.add#canCall(m#0_3, n#0_1)
               && _module.__default.add#canCall(n#0_1, m#0_3));
        assert {:id "id533"} {:subsumption 0} (forall m#0_3: DatatypeType, n#0_1: DatatypeType :: 
          { _module.__default.add($LS($LS($LZ)), n#0_1, m#0_3) } 
            { _module.__default.add($LS($LS($LZ)), m#0_3, n#0_1) } 
          $Is(m#0_3, Tclass._module.Nat()) && $Is(n#0_1, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), m#0_3, n#0_1), 
              _module.__default.add($LS($LS($LZ)), n#0_1, m#0_3)));
        assume {:id "id534"} (forall m#0_3: DatatypeType, n#0_1: DatatypeType :: 
          { _module.__default.add($LS($LZ), n#0_1, m#0_3) } 
            { _module.__default.add($LS($LZ), m#0_3, n#0_1) } 
          $Is(m#0_3, Tclass._module.Nat()) && $Is(n#0_1, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LZ), m#0_3, n#0_1), 
              _module.__default.add($LS($LZ), n#0_1, m#0_3)));
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(565,5)
        // Begin Comprehension WF check
        havoc x#1_0;
        havoc y#1_0;
        if ($Is(x#1_0, Tclass._module.Nat())
           && $IsAlloc(x#1_0, Tclass._module.Nat(), $Heap)
           && 
          $Is(y#1_0, Tclass._module.Nat())
           && $IsAlloc(y#1_0, Tclass._module.Nat(), $Heap))
        {
            ##x#1_0 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1_0, Tclass._module.Nat(), $Heap);
            ##y#1_0 := #_module.Nat.Suc(y#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#1_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(x#1_0, #_module.Nat.Suc(y#1_0));
            ##x#1_1 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1_1, Tclass._module.Nat(), $Heap);
            ##y#1_1 := y#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#1_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(x#1_0, y#1_0);
        }

        // End Comprehension WF check
        assume (forall x#1_1: DatatypeType, y#1_1: DatatypeType :: 
          { #_module.Nat.Suc(_module.__default.add($LS($LZ), x#1_1, y#1_1)) } 
            { _module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)) } 
          $Is(x#1_1, Tclass._module.Nat()) && $Is(y#1_1, Tclass._module.Nat())
             ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)))
               && 
              _module.__default.add#canCall(x#1_1, #_module.Nat.Suc(y#1_1))
               && _module.__default.add#canCall(x#1_1, y#1_1));
        assert {:id "id535"} {:subsumption 0} (forall x#1_1: DatatypeType, y#1_1: DatatypeType :: 
          { #_module.Nat.Suc(_module.__default.add($LS($LS($LZ)), x#1_1, y#1_1)) } 
            { _module.__default.add($LS($LS($LZ)), x#1_1, #_module.Nat.Suc(y#1_1)) } 
          $Is(x#1_1, Tclass._module.Nat()) && $Is(y#1_1, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), x#1_1, #_module.Nat.Suc(y#1_1)), 
              #_module.Nat.Suc(_module.__default.add($LS($LS($LZ)), x#1_1, y#1_1))));
        assume {:id "id536"} (forall x#1_1: DatatypeType, y#1_1: DatatypeType :: 
          { #_module.Nat.Suc(_module.__default.add($LS($LZ), x#1_1, y#1_1)) } 
            { _module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)) } 
          $Is(x#1_1, Tclass._module.Nat()) && $Is(y#1_1, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)), 
              #_module.Nat.Suc(_module.__default.add($LS($LZ), x#1_1, y#1_1))));
    }
}



procedure {:verboseName "P67 (well-formedness)"} CheckWellFormed$$_module.__default.P67();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P67 (call)"} Call$$_module.__default.P67();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#1, _module.__default.add($LS($LZ), m#1, n#1)))
         && 
        _module.__default.add#canCall(m#1, n#1)
         && _module.__default.leq#canCall(n#1, _module.__default.add($LS($LZ), m#1, n#1)));
  free ensures {:id "id539"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.leq($LS($LZ), n#1, _module.__default.add($LS($LZ), m#1, n#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P67 (correctness)"} Impl$$_module.__default.P67() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LZ), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#1, _module.__default.add($LS($LZ), m#1, n#1)))
         && 
        _module.__default.add#canCall(m#1, n#1)
         && _module.__default.leq#canCall(n#1, _module.__default.add($LS($LZ), m#1, n#1)));
  ensures {:id "id540"} (forall m#1: DatatypeType, n#1: DatatypeType :: 
    { _module.__default.add($LS($LS($LZ)), m#1, n#1) } 
    $Is(m#1, Tclass._module.Nat()) && $Is(n#1, Tclass._module.Nat())
       ==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), n#1, _module.__default.add($LS($LS($LZ)), m#1, n#1)), 
        #_module.Bool.True()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P67 (correctness)"} Impl$$_module.__default.P67() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0_0: DatatypeType;
  var n#0_0: DatatypeType;
  var ##x#0_0: DatatypeType;
  var ##y#0_0: DatatypeType;
  var ##x#0_1: DatatypeType;
  var ##y#0_1: DatatypeType;
  var m#0_2: DatatypeType;
  var n#0_2: DatatypeType;
  var ##x#0_2: DatatypeType;
  var ##y#0_2: DatatypeType;
  var ##x#0_3: DatatypeType;
  var ##y#0_3: DatatypeType;
  var x#1_0: DatatypeType;
  var y#1_0: DatatypeType;
  var ##x#1_0: DatatypeType;
  var ##y#1_0: DatatypeType;
  var ##x#1_1: DatatypeType;
  var ##y#1_1: DatatypeType;

    // AddMethodImpl: P67, Impl$$_module.__default.P67
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(572,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(574,5)
        // Begin Comprehension WF check
        havoc m#0_0;
        havoc n#0_0;
        if ($Is(m#0_0, Tclass._module.Nat())
           && $IsAlloc(m#0_0, Tclass._module.Nat(), $Heap)
           && 
          $Is(n#0_0, Tclass._module.Nat())
           && $IsAlloc(n#0_0, Tclass._module.Nat(), $Heap))
        {
            ##x#0_0 := n#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_0, Tclass._module.Nat(), $Heap);
            ##x#0_1 := n#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_1, Tclass._module.Nat(), $Heap);
            ##y#0_1 := m#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(n#0_0, m#0_0);
            ##y#0_0 := _module.__default.add($LS($LZ), n#0_0, m#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.leq#canCall(n#0_0, _module.__default.add($LS($LZ), n#0_0, m#0_0));
        }

        // End Comprehension WF check
        assume (forall m#0_1: DatatypeType, n#0_1: DatatypeType :: 
          $Is(m#0_1, Tclass._module.Nat()) && $Is(n#0_1, Tclass._module.Nat())
             ==> $IsA#_module.Bool(_module.__default.leq($LS($LZ), n#0_1, _module.__default.add($LS($LZ), n#0_1, m#0_1)))
               && 
              _module.__default.add#canCall(n#0_1, m#0_1)
               && _module.__default.leq#canCall(n#0_1, _module.__default.add($LS($LZ), n#0_1, m#0_1)));
        assert {:id "id541"} {:subsumption 0} (forall m#0_1: DatatypeType, n#0_1: DatatypeType :: 
          $Is(m#0_1, Tclass._module.Nat()) && $Is(n#0_1, Tclass._module.Nat())
             ==> _module.Bool#Equal(_module.__default.leq($LS($LS($LZ)), n#0_1, _module.__default.add($LS($LS($LZ)), n#0_1, m#0_1)), 
              #_module.Bool.True()));
        assume {:id "id542"} (forall m#0_1: DatatypeType, n#0_1: DatatypeType :: 
          $Is(m#0_1, Tclass._module.Nat()) && $Is(n#0_1, Tclass._module.Nat())
             ==> _module.Bool#Equal(_module.__default.leq($LS($LZ), n#0_1, _module.__default.add($LS($LZ), n#0_1, m#0_1)), 
              #_module.Bool.True()));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(575,5)
        // Begin Comprehension WF check
        havoc m#0_2;
        havoc n#0_2;
        if ($Is(m#0_2, Tclass._module.Nat())
           && $IsAlloc(m#0_2, Tclass._module.Nat(), $Heap)
           && 
          $Is(n#0_2, Tclass._module.Nat())
           && $IsAlloc(n#0_2, Tclass._module.Nat(), $Heap))
        {
            ##x#0_2 := m#0_2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_2, Tclass._module.Nat(), $Heap);
            ##y#0_2 := n#0_2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_2, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(m#0_2, n#0_2);
            ##x#0_3 := n#0_2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0_3, Tclass._module.Nat(), $Heap);
            ##y#0_3 := m#0_2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#0_3, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(n#0_2, m#0_2);
        }

        // End Comprehension WF check
        assume (forall m#0_3: DatatypeType, n#0_3: DatatypeType :: 
          { _module.__default.add($LS($LZ), n#0_3, m#0_3) } 
            { _module.__default.add($LS($LZ), m#0_3, n#0_3) } 
          $Is(m#0_3, Tclass._module.Nat()) && $Is(n#0_3, Tclass._module.Nat())
             ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), m#0_3, n#0_3))
               && $IsA#_module.Nat(_module.__default.add($LS($LZ), n#0_3, m#0_3))
               && 
              _module.__default.add#canCall(m#0_3, n#0_3)
               && _module.__default.add#canCall(n#0_3, m#0_3));
        assert {:id "id543"} {:subsumption 0} (forall m#0_3: DatatypeType, n#0_3: DatatypeType :: 
          { _module.__default.add($LS($LS($LZ)), n#0_3, m#0_3) } 
            { _module.__default.add($LS($LS($LZ)), m#0_3, n#0_3) } 
          $Is(m#0_3, Tclass._module.Nat()) && $Is(n#0_3, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), m#0_3, n#0_3), 
              _module.__default.add($LS($LS($LZ)), n#0_3, m#0_3)));
        assume {:id "id544"} (forall m#0_3: DatatypeType, n#0_3: DatatypeType :: 
          { _module.__default.add($LS($LZ), n#0_3, m#0_3) } 
            { _module.__default.add($LS($LZ), m#0_3, n#0_3) } 
          $Is(m#0_3, Tclass._module.Nat()) && $Is(n#0_3, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LZ), m#0_3, n#0_3), 
              _module.__default.add($LS($LZ), n#0_3, m#0_3)));
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(578,5)
        // Begin Comprehension WF check
        havoc x#1_0;
        havoc y#1_0;
        if ($Is(x#1_0, Tclass._module.Nat())
           && $IsAlloc(x#1_0, Tclass._module.Nat(), $Heap)
           && 
          $Is(y#1_0, Tclass._module.Nat())
           && $IsAlloc(y#1_0, Tclass._module.Nat(), $Heap))
        {
            ##x#1_0 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1_0, Tclass._module.Nat(), $Heap);
            ##y#1_0 := #_module.Nat.Suc(y#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#1_0, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(x#1_0, #_module.Nat.Suc(y#1_0));
            ##x#1_1 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1_1, Tclass._module.Nat(), $Heap);
            ##y#1_1 := y#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##y#1_1, Tclass._module.Nat(), $Heap);
            assume _module.__default.add#canCall(x#1_0, y#1_0);
        }

        // End Comprehension WF check
        assume (forall x#1_1: DatatypeType, y#1_1: DatatypeType :: 
          { #_module.Nat.Suc(_module.__default.add($LS($LZ), x#1_1, y#1_1)) } 
            { _module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)) } 
          $Is(x#1_1, Tclass._module.Nat()) && $Is(y#1_1, Tclass._module.Nat())
             ==> $IsA#_module.Nat(_module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)))
               && 
              _module.__default.add#canCall(x#1_1, #_module.Nat.Suc(y#1_1))
               && _module.__default.add#canCall(x#1_1, y#1_1));
        assert {:id "id545"} {:subsumption 0} (forall x#1_1: DatatypeType, y#1_1: DatatypeType :: 
          { #_module.Nat.Suc(_module.__default.add($LS($LS($LZ)), x#1_1, y#1_1)) } 
            { _module.__default.add($LS($LS($LZ)), x#1_1, #_module.Nat.Suc(y#1_1)) } 
          $Is(x#1_1, Tclass._module.Nat()) && $Is(y#1_1, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), x#1_1, #_module.Nat.Suc(y#1_1)), 
              #_module.Nat.Suc(_module.__default.add($LS($LS($LZ)), x#1_1, y#1_1))));
        assume {:id "id546"} (forall x#1_1: DatatypeType, y#1_1: DatatypeType :: 
          { #_module.Nat.Suc(_module.__default.add($LS($LZ), x#1_1, y#1_1)) } 
            { _module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)) } 
          $Is(x#1_1, Tclass._module.Nat()) && $Is(y#1_1, Tclass._module.Nat())
             ==> _module.Nat#Equal(_module.__default.add($LS($LZ), x#1_1, #_module.Nat.Suc(y#1_1)), 
              #_module.Nat.Suc(_module.__default.add($LS($LZ), x#1_1, y#1_1))));
    }
}



procedure {:verboseName "P1_alt (well-formedness)"} CheckWellFormed$$_module.__default.P1__alt(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P1_alt (call)"} Call$$_module.__default.P1__alt(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.concat($LS($LZ), 
        _module.__default.take($LS($LZ), n#0, xs#0), 
        _module.__default.drop($LS($LZ), n#0, xs#0)))
     && $IsA#_module.List(xs#0)
     && 
    _module.__default.take#canCall(n#0, xs#0)
     && _module.__default.drop#canCall(n#0, xs#0)
     && _module.__default.concat#canCall(_module.__default.take($LS($LZ), n#0, xs#0), 
      _module.__default.drop($LS($LZ), n#0, xs#0));
  ensures {:id "id548"} _module.List#Equal(_module.__default.concat($LS($LS($LZ)), 
      _module.__default.take($LS($LS($LZ)), n#0, xs#0), 
      _module.__default.drop($LS($LS($LZ)), n#0, xs#0)), 
    xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P1_alt (correctness)"} Impl$$_module.__default.P1__alt(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.concat($LS($LZ), 
        _module.__default.take($LS($LZ), n#0, xs#0), 
        _module.__default.drop($LS($LZ), n#0, xs#0)))
     && $IsA#_module.List(xs#0)
     && 
    _module.__default.take#canCall(n#0, xs#0)
     && _module.__default.drop#canCall(n#0, xs#0)
     && _module.__default.concat#canCall(_module.__default.take($LS($LZ), n#0, xs#0), 
      _module.__default.drop($LS($LZ), n#0, xs#0));
  ensures {:id "id549"} _module.List#Equal(_module.__default.concat($LS($LS($LZ)), 
      _module.__default.take($LS($LS($LZ)), n#0, xs#0), 
      _module.__default.drop($LS($LS($LZ)), n#0, xs#0)), 
    xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P1_alt (correctness)"} Impl$$_module.__default.P1__alt(n#0: DatatypeType, xs#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: P1_alt, Impl$$_module.__default.P1__alt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    assume $IsA#_module.List(xs#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType, $ih#xs0#0: DatatypeType :: 
      { _module.__default.drop($LS($LZ), $ih#n0#0, $ih#xs0#0) } 
        { _module.__default.take($LS($LZ), $ih#n0#0, $ih#xs0#0) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && $Is($ih#xs0#0, Tclass._module.List())
           && Lit(true)
           && (DtRank($ih#n0#0) < DtRank(n#0)
             || (DtRank($ih#n0#0) == DtRank(n#0) && DtRank($ih#xs0#0) < DtRank(xs#0)))
         ==> _module.List#Equal(_module.__default.concat($LS($LZ), 
            _module.__default.take($LS($LZ), $ih#n0#0, $ih#xs0#0), 
            _module.__default.drop($LS($LZ), $ih#n0#0, $ih#xs0#0)), 
          $ih#xs0#0));
    $_reverifyPost := false;
}



procedure {:verboseName "P2_alt (well-formedness)"} CheckWellFormed$$_module.__default.P2__alt(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List())
         && $IsAlloc(ys#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "P2_alt (call)"} Call$$_module.__default.P2__alt(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List())
         && $IsAlloc(ys#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(ys#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#0, xs#0), 
        _module.__default.count($LS($LZ), n#0, ys#0)))
     && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#0, _module.__default.concat($LS($LZ), xs#0, ys#0)))
     && 
    _module.__default.count#canCall(n#0, xs#0)
     && _module.__default.count#canCall(n#0, ys#0)
     && _module.__default.add#canCall(_module.__default.count($LS($LZ), n#0, xs#0), 
      _module.__default.count($LS($LZ), n#0, ys#0))
     && 
    _module.__default.concat#canCall(xs#0, ys#0)
     && _module.__default.count#canCall(n#0, _module.__default.concat($LS($LZ), xs#0, ys#0));
  ensures {:id "id551"} _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), 
      _module.__default.count($LS($LS($LZ)), n#0, xs#0), 
      _module.__default.count($LS($LS($LZ)), n#0, ys#0)), 
    _module.__default.count($LS($LS($LZ)), n#0, _module.__default.concat($LS($LS($LZ)), xs#0, ys#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "P2_alt (correctness)"} Impl$$_module.__default.P2__alt(n#0: DatatypeType
       where $Is(n#0, Tclass._module.Nat())
         && $IsAlloc(n#0, Tclass._module.Nat(), $Heap)
         && $IsA#_module.Nat(n#0), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List())
         && $IsAlloc(ys#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Nat(_module.__default.add($LS($LZ), 
        _module.__default.count($LS($LZ), n#0, xs#0), 
        _module.__default.count($LS($LZ), n#0, ys#0)))
     && $IsA#_module.Nat(_module.__default.count($LS($LZ), n#0, _module.__default.concat($LS($LZ), xs#0, ys#0)))
     && 
    _module.__default.count#canCall(n#0, xs#0)
     && _module.__default.count#canCall(n#0, ys#0)
     && _module.__default.add#canCall(_module.__default.count($LS($LZ), n#0, xs#0), 
      _module.__default.count($LS($LZ), n#0, ys#0))
     && 
    _module.__default.concat#canCall(xs#0, ys#0)
     && _module.__default.count#canCall(n#0, _module.__default.concat($LS($LZ), xs#0, ys#0));
  ensures {:id "id552"} _module.Nat#Equal(_module.__default.add($LS($LS($LZ)), 
      _module.__default.count($LS($LS($LZ)), n#0, xs#0), 
      _module.__default.count($LS($LS($LZ)), n#0, ys#0)), 
    _module.__default.count($LS($LS($LZ)), n#0, _module.__default.concat($LS($LS($LZ)), xs#0, ys#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "P2_alt (correctness)"} Impl$$_module.__default.P2__alt(n#0: DatatypeType, xs#0: DatatypeType, ys#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: P2_alt, Impl$$_module.__default.P2__alt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Nat(n#0);
    assume $IsA#_module.List(xs#0);
    assume $IsA#_module.List(ys#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: DatatypeType, $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType :: 
      { _module.__default.count($LS($LZ), $ih#n0#0, _module.__default.concat($LS($LZ), $ih#xs0#0, $ih#ys0#0)) } 
        { _module.__default.add($LS($LZ), 
          _module.__default.count($LS($LZ), $ih#n0#0, $ih#xs0#0), 
          _module.__default.count($LS($LZ), $ih#n0#0, $ih#ys0#0)) } 
      $Is($ih#n0#0, Tclass._module.Nat())
           && $Is($ih#xs0#0, Tclass._module.List())
           && $Is($ih#ys0#0, Tclass._module.List())
           && Lit(true)
           && (DtRank($ih#n0#0) < DtRank(n#0)
             || (DtRank($ih#n0#0) == DtRank(n#0)
               && (DtRank($ih#xs0#0) < DtRank(xs#0)
                 || (DtRank($ih#xs0#0) == DtRank(xs#0) && DtRank($ih#ys0#0) < DtRank(ys#0)))))
         ==> _module.Nat#Equal(_module.__default.add($LS($LZ), 
            _module.__default.count($LS($LZ), $ih#n0#0, $ih#xs0#0), 
            _module.__default.count($LS($LZ), $ih#n0#0, $ih#ys0#0)), 
          _module.__default.count($LS($LZ), $ih#n0#0, _module.__default.concat($LS($LZ), $ih#xs0#0, $ih#ys0#0))));
    $_reverifyPost := false;
}



procedure {:verboseName "Lemma_RevConcat (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.__default.Lemma__RevConcat(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List())
         && $IsAlloc(ys#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_RevConcat (call)"} {:vcs_split_on_every_assert} Call$$_module.__default.Lemma__RevConcat(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List())
         && $IsAlloc(ys#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(ys#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.reverse($LS($LZ), _module.__default.concat($LS($LZ), xs#0, ys#0)))
     && $IsA#_module.List(_module.__default.concat($LS($LZ), 
        _module.__default.reverse($LS($LZ), ys#0), 
        _module.__default.reverse($LS($LZ), xs#0)))
     && 
    _module.__default.concat#canCall(xs#0, ys#0)
     && _module.__default.reverse#canCall(_module.__default.concat($LS($LZ), xs#0, ys#0))
     && 
    _module.__default.reverse#canCall(ys#0)
     && _module.__default.reverse#canCall(xs#0)
     && _module.__default.concat#canCall(_module.__default.reverse($LS($LZ), ys#0), 
      _module.__default.reverse($LS($LZ), xs#0));
  ensures {:id "id554"} _module.List#Equal(_module.__default.reverse($LS($LS($LZ)), _module.__default.concat($LS($LS($LZ)), xs#0, ys#0)), 
    _module.__default.concat($LS($LS($LZ)), 
      _module.__default.reverse($LS($LS($LZ)), ys#0), 
      _module.__default.reverse($LS($LS($LZ)), xs#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_RevConcat (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.__default.Lemma__RevConcat(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List())
         && $IsAlloc(ys#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.reverse($LS($LZ), _module.__default.concat($LS($LZ), xs#0, ys#0)))
     && $IsA#_module.List(_module.__default.concat($LS($LZ), 
        _module.__default.reverse($LS($LZ), ys#0), 
        _module.__default.reverse($LS($LZ), xs#0)))
     && 
    _module.__default.concat#canCall(xs#0, ys#0)
     && _module.__default.reverse#canCall(_module.__default.concat($LS($LZ), xs#0, ys#0))
     && 
    _module.__default.reverse#canCall(ys#0)
     && _module.__default.reverse#canCall(xs#0)
     && _module.__default.concat#canCall(_module.__default.reverse($LS($LZ), ys#0), 
      _module.__default.reverse($LS($LZ), xs#0));
  ensures {:id "id555"} _module.List#Equal(_module.__default.reverse($LS($LS($LZ)), _module.__default.concat($LS($LS($LZ)), xs#0, ys#0)), 
    _module.__default.concat($LS($LS($LZ)), 
      _module.__default.reverse($LS($LS($LZ)), ys#0), 
      _module.__default.reverse($LS($LS($LZ)), xs#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_RevConcat (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.__default.Lemma__RevConcat(xs#0: DatatypeType, ys#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: DatatypeType;
  var _mcc#1#0_0: DatatypeType;
  var rest#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var t#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var a#0_0: DatatypeType;
  var b#0_0: DatatypeType;
  var c#0_0: DatatypeType;
  var ##xs#0_0: DatatypeType;
  var ##ys#0_0: DatatypeType;
  var ##xs#0_1: DatatypeType;
  var ##ys#0_1: DatatypeType;
  var ##xs#0_2: DatatypeType;
  var ##xs#0_3: DatatypeType;
  var ##ys#0_2: DatatypeType;
  var ##ys#0_3: DatatypeType;
  var ws#1_0: DatatypeType;
  var ##xs#1_0: DatatypeType;
  var ##ys#1_0: DatatypeType;

    // AddMethodImpl: Lemma_RevConcat, Impl$$_module.__default.Lemma__RevConcat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    assume $IsA#_module.List(ys#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType :: 
      { _module.__default.concat($LS($LZ), 
          _module.__default.reverse($LS($LZ), $ih#ys0#0), 
          _module.__default.reverse($LS($LZ), $ih#xs0#0)) } 
        { _module.__default.reverse($LS($LZ), _module.__default.concat($LS($LZ), $ih#xs0#0, $ih#ys0#0)) } 
      $Is($ih#xs0#0, Tclass._module.List())
           && $Is($ih#ys0#0, Tclass._module.List())
           && Lit(true)
           && (DtRank($ih#xs0#0) < DtRank(xs#0)
             || (DtRank($ih#xs0#0) == DtRank(xs#0) && DtRank($ih#ys0#0) < DtRank(ys#0)))
         ==> _module.List#Equal(_module.__default.reverse($LS($LZ), _module.__default.concat($LS($LZ), $ih#xs0#0, $ih#ys0#0)), 
          _module.__default.concat($LS($LZ), 
            _module.__default.reverse($LS($LZ), $ih#ys0#0), 
            _module.__default.reverse($LS($LZ), $ih#xs0#0))));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(602,7)
        // Begin Comprehension WF check
        havoc ws#1_0;
        if ($Is(ws#1_0, Tclass._module.List())
           && $IsAlloc(ws#1_0, Tclass._module.List(), $Heap))
        {
            ##xs#1_0 := ws#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0, Tclass._module.List(), $Heap);
            ##ys#1_0 := Lit(#_module.List.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0, Tclass._module.List(), $Heap);
            assume _module.__default.concat#canCall(ws#1_0, Lit(#_module.List.Nil()));
        }

        // End Comprehension WF check
        assume (forall ws#1_1: DatatypeType :: 
          { _module.__default.concat($LS($LZ), ws#1_1, #_module.List.Nil()) } 
          $Is(ws#1_1, Tclass._module.List())
             ==> $IsA#_module.List(_module.__default.concat($LS($LZ), ws#1_1, Lit(#_module.List.Nil())))
               && $IsA#_module.List(ws#1_1)
               && _module.__default.concat#canCall(ws#1_1, Lit(#_module.List.Nil())));
        assert {:id "id562"} {:subsumption 0} (forall ws#1_1: DatatypeType :: 
          { _module.__default.concat($LS($LS($LZ)), ws#1_1, #_module.List.Nil()) } 
          $Is(ws#1_1, Tclass._module.List())
             ==> _module.List#Equal(_module.__default.concat($LS($LS($LZ)), ws#1_1, Lit(#_module.List.Nil())), 
              ws#1_1));
        assume {:id "id563"} (forall ws#1_1: DatatypeType :: 
          { _module.__default.concat($LS($LZ), ws#1_1, #_module.List.Nil()) } 
          $Is(ws#1_1, Tclass._module.List())
             ==> _module.List#Equal(_module.__default.concat($LS($LZ), ws#1_1, Lit(#_module.List.Nil())), ws#1_1));
    }
    else if (xs#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.Nat());
        assume $Is(_mcc#1#0_0, Tclass._module.List());
        havoc rest#0_0;
        assume $Is(rest#0_0, Tclass._module.List())
           && $IsAlloc(rest#0_0, Tclass._module.List(), $Heap);
        assume {:id "id556"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List());
        assume {:id "id557"} rest#0_0 == let#0_0#0#0;
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.Nat()) && $IsAlloc(t#0_0, Tclass._module.Nat(), $Heap);
        assume {:id "id558"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Nat());
        assume {:id "id559"} t#0_0 == let#0_1#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(604,7)
        // Begin Comprehension WF check
        havoc a#0_0;
        havoc b#0_0;
        havoc c#0_0;
        if ($Is(a#0_0, Tclass._module.List())
           && $IsAlloc(a#0_0, Tclass._module.List(), $Heap)
           && 
          $Is(b#0_0, Tclass._module.List())
           && $IsAlloc(b#0_0, Tclass._module.List(), $Heap)
           && 
          $Is(c#0_0, Tclass._module.List())
           && $IsAlloc(c#0_0, Tclass._module.List(), $Heap))
        {
            ##xs#0_0 := a#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0, Tclass._module.List(), $Heap);
            ##xs#0_1 := b#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_1, Tclass._module.List(), $Heap);
            ##ys#0_1 := c#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_1, Tclass._module.List(), $Heap);
            assume _module.__default.concat#canCall(b#0_0, c#0_0);
            ##ys#0_0 := _module.__default.concat($LS($LZ), b#0_0, c#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0, Tclass._module.List(), $Heap);
            assume _module.__default.concat#canCall(a#0_0, _module.__default.concat($LS($LZ), b#0_0, c#0_0));
            ##xs#0_3 := a#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_3, Tclass._module.List(), $Heap);
            ##ys#0_2 := b#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_2, Tclass._module.List(), $Heap);
            assume _module.__default.concat#canCall(a#0_0, b#0_0);
            ##xs#0_2 := _module.__default.concat($LS($LZ), a#0_0, b#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_2, Tclass._module.List(), $Heap);
            ##ys#0_3 := c#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_3, Tclass._module.List(), $Heap);
            assume _module.__default.concat#canCall(_module.__default.concat($LS($LZ), a#0_0, b#0_0), c#0_0);
        }

        // End Comprehension WF check
        assume (forall a#0_1: DatatypeType, b#0_1: DatatypeType, c#0_1: DatatypeType :: 
          { _module.__default.concat($LS($LZ), _module.__default.concat($LS($LZ), a#0_1, b#0_1), c#0_1) } 
            { _module.__default.concat($LS($LZ), a#0_1, _module.__default.concat($LS($LZ), b#0_1, c#0_1)) } 
          $Is(a#0_1, Tclass._module.List())
               && $Is(b#0_1, Tclass._module.List())
               && $Is(c#0_1, Tclass._module.List())
             ==> $IsA#_module.List(_module.__default.concat($LS($LZ), a#0_1, _module.__default.concat($LS($LZ), b#0_1, c#0_1)))
               && $IsA#_module.List(_module.__default.concat($LS($LZ), _module.__default.concat($LS($LZ), a#0_1, b#0_1), c#0_1))
               && 
              _module.__default.concat#canCall(b#0_1, c#0_1)
               && _module.__default.concat#canCall(a#0_1, _module.__default.concat($LS($LZ), b#0_1, c#0_1))
               && 
              _module.__default.concat#canCall(a#0_1, b#0_1)
               && _module.__default.concat#canCall(_module.__default.concat($LS($LZ), a#0_1, b#0_1), c#0_1));
        assert {:id "id560"} {:subsumption 0} (forall a#0_1: DatatypeType, b#0_1: DatatypeType, c#0_1: DatatypeType :: 
          { _module.__default.concat($LS($LS($LZ)), _module.__default.concat($LS($LS($LZ)), a#0_1, b#0_1), c#0_1) } 
            { _module.__default.concat($LS($LS($LZ)), a#0_1, _module.__default.concat($LS($LS($LZ)), b#0_1, c#0_1)) } 
          $Is(a#0_1, Tclass._module.List())
               && $Is(b#0_1, Tclass._module.List())
               && $Is(c#0_1, Tclass._module.List())
             ==> _module.List#Equal(_module.__default.concat($LS($LS($LZ)), a#0_1, _module.__default.concat($LS($LS($LZ)), b#0_1, c#0_1)), 
              _module.__default.concat($LS($LS($LZ)), _module.__default.concat($LS($LS($LZ)), a#0_1, b#0_1), c#0_1)));
        assume {:id "id561"} (forall a#0_1: DatatypeType, b#0_1: DatatypeType, c#0_1: DatatypeType :: 
          { _module.__default.concat($LS($LZ), _module.__default.concat($LS($LZ), a#0_1, b#0_1), c#0_1) } 
            { _module.__default.concat($LS($LZ), a#0_1, _module.__default.concat($LS($LZ), b#0_1, c#0_1)) } 
          $Is(a#0_1, Tclass._module.List())
               && $Is(b#0_1, Tclass._module.List())
               && $Is(c#0_1, Tclass._module.List())
             ==> _module.List#Equal(_module.__default.concat($LS($LZ), a#0_1, _module.__default.concat($LS($LZ), b#0_1, c#0_1)), 
              _module.__default.concat($LS($LZ), _module.__default.concat($LS($LZ), a#0_1, b#0_1), c#0_1)));
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Theorem (well-formedness)"} CheckWellFormed$$_module.__default.Theorem(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem (call)"} Call$$_module.__default.Theorem(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.reverse($LS($LZ), _module.__default.reverse($LS($LZ), xs#0)))
     && $IsA#_module.List(xs#0)
     && 
    _module.__default.reverse#canCall(xs#0)
     && _module.__default.reverse#canCall(_module.__default.reverse($LS($LZ), xs#0));
  ensures {:id "id565"} _module.List#Equal(_module.__default.reverse($LS($LS($LZ)), _module.__default.reverse($LS($LS($LZ)), xs#0)), 
    xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem (correctness)"} Impl$$_module.__default.Theorem(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(_module.__default.reverse($LS($LZ), _module.__default.reverse($LS($LZ), xs#0)))
     && $IsA#_module.List(xs#0)
     && 
    _module.__default.reverse#canCall(xs#0)
     && _module.__default.reverse#canCall(_module.__default.reverse($LS($LZ), xs#0));
  ensures {:id "id566"} _module.List#Equal(_module.__default.reverse($LS($LS($LZ)), _module.__default.reverse($LS($LS($LZ)), xs#0)), 
    xs#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem (correctness)"} Impl$$_module.__default.Theorem(xs#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: DatatypeType;
  var _mcc#1#0_0: DatatypeType;
  var rest#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var t#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var xs##0_0: DatatypeType;
  var ##xs#0_0: DatatypeType;
  var ys##0_0: DatatypeType;

    // AddMethodImpl: Theorem, Impl$$_module.__default.Theorem
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.List(xs#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType :: 
      { _module.__default.reverse($LS($LZ), _module.__default.reverse($LS($LZ), $ih#xs0#0)) } 
      $Is($ih#xs0#0, Tclass._module.List())
           && Lit(true)
           && DtRank($ih#xs0#0) < DtRank(xs#0)
         ==> _module.List#Equal(_module.__default.reverse($LS($LZ), _module.__default.reverse($LS($LZ), $ih#xs0#0)), 
          $ih#xs0#0));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
    }
    else if (xs#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.Nat());
        assume $Is(_mcc#1#0_0, Tclass._module.List());
        havoc rest#0_0;
        assume $Is(rest#0_0, Tclass._module.List())
           && $IsAlloc(rest#0_0, Tclass._module.List(), $Heap);
        assume {:id "id567"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List());
        assume {:id "id568"} rest#0_0 == let#0_0#0#0;
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.Nat()) && $IsAlloc(t#0_0, Tclass._module.Nat(), $Heap);
        assume {:id "id569"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Nat());
        assume {:id "id570"} t#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny1/Rippling.legacy.dfy(614,22)
        // TrCallStmt: Before ProcessCallStmt
        ##xs#0_0 := rest#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0, Tclass._module.List(), $Heap);
        assume _module.__default.reverse#canCall(rest#0_0);
        assume _module.__default.reverse#canCall(rest#0_0);
        // ProcessCallStmt: CheckSubrange
        xs##0_0 := _module.__default.reverse($LS($LZ), rest#0_0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        ys##0_0 := #_module.List.Cons(t#0_0, Lit(#_module.List.Nil()));
        call {:id "id571"} Call$$_module.__default.Lemma__RevConcat(xs##0_0, ys##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



// Constructor function declaration
function #_module.Bool.False() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.False()) == ##_module.Bool.False;
// Constructor $Is
axiom $Is(#_module.Bool.False(), Tclass._module.Bool());
// Constructor literal
axiom #_module.Bool.False() == Lit(#_module.Bool.False());
}

const unique ##_module.Bool.False: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.False()) == ##_module.Bool.False;
}

function _module.Bool.False_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Bool.False_q(d) } 
  _module.Bool.False_q(d) <==> DatatypeCtorId(d) == ##_module.Bool.False);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Bool.False_q(d) } 
  _module.Bool.False_q(d) ==> d == #_module.Bool.False());

// Constructor function declaration
function #_module.Bool.True() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.True()) == ##_module.Bool.True;
// Constructor $Is
axiom $Is(#_module.Bool.True(), Tclass._module.Bool());
// Constructor literal
axiom #_module.Bool.True() == Lit(#_module.Bool.True());
}

const unique ##_module.Bool.True: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Bool.True()) == ##_module.Bool.True;
}

function _module.Bool.True_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Bool.True_q(d) } 
  _module.Bool.True_q(d) <==> DatatypeCtorId(d) == ##_module.Bool.True);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Bool.True_q(d) } 
  _module.Bool.True_q(d) ==> d == #_module.Bool.True());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Bool(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Bool())
     ==> $IsAlloc(d, Tclass._module.Bool(), $h));

// Depth-one case-split function
function $IsA#_module.Bool(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Bool(d) } 
  $IsA#_module.Bool(d) ==> _module.Bool.False_q(d) || _module.Bool.True_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Bool.True_q(d), $Is(d, Tclass._module.Bool()) } 
    { _module.Bool.False_q(d), $Is(d, Tclass._module.Bool()) } 
  $Is(d, Tclass._module.Bool())
     ==> _module.Bool.False_q(d) || _module.Bool.True_q(d));

// Datatype extensional equality declaration
function _module.Bool#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Bool.False
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Bool#Equal(a, b), _module.Bool.False_q(a) } 
    { _module.Bool#Equal(a, b), _module.Bool.False_q(b) } 
  _module.Bool.False_q(a) && _module.Bool.False_q(b) ==> _module.Bool#Equal(a, b));

// Datatype extensional equality definition: #_module.Bool.True
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Bool#Equal(a, b), _module.Bool.True_q(a) } 
    { _module.Bool#Equal(a, b), _module.Bool.True_q(b) } 
  _module.Bool.True_q(a) && _module.Bool.True_q(b) ==> _module.Bool#Equal(a, b));

// Datatype extensionality axiom: _module.Bool
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Bool#Equal(a, b) } 
  _module.Bool#Equal(a, b) <==> a == b);

const unique class._module.Bool: ClassName;

// Constructor function declaration
function #_module.Nat.Zero() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Nat.Zero()) == ##_module.Nat.Zero;
// Constructor $Is
axiom $Is(#_module.Nat.Zero(), Tclass._module.Nat());
// Constructor literal
axiom #_module.Nat.Zero() == Lit(#_module.Nat.Zero());
}

const unique ##_module.Nat.Zero: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Nat.Zero()) == ##_module.Nat.Zero;
}

function _module.Nat.Zero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Nat.Zero_q(d) } 
  _module.Nat.Zero_q(d) <==> DatatypeCtorId(d) == ##_module.Nat.Zero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Nat.Zero_q(d) } 
  _module.Nat.Zero_q(d) ==> d == #_module.Nat.Zero());

// Constructor function declaration
function #_module.Nat.Suc(DatatypeType) : DatatypeType;

const unique ##_module.Nat.Suc: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: DatatypeType :: 
  { #_module.Nat.Suc(a#12#0#0) } 
  DatatypeCtorId(#_module.Nat.Suc(a#12#0#0)) == ##_module.Nat.Suc);
}

function _module.Nat.Suc_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Nat.Suc_q(d) } 
  _module.Nat.Suc_q(d) <==> DatatypeCtorId(d) == ##_module.Nat.Suc);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Nat.Suc_q(d) } 
  _module.Nat.Suc_q(d)
     ==> (exists a#13#0#0: DatatypeType :: d == #_module.Nat.Suc(a#13#0#0)));

// Constructor $Is
axiom (forall a#14#0#0: DatatypeType :: 
  { $Is(#_module.Nat.Suc(a#14#0#0), Tclass._module.Nat()) } 
  $Is(#_module.Nat.Suc(a#14#0#0), Tclass._module.Nat())
     <==> $Is(a#14#0#0, Tclass._module.Nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Nat._h0(d), Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h) && _module.Nat.Suc_q(d) && $IsAlloc(d, Tclass._module.Nat(), $h)
     ==> $IsAlloc(_module.Nat._h0(d), Tclass._module.Nat(), $h));

// Constructor literal
axiom (forall a#15#0#0: DatatypeType :: 
  { #_module.Nat.Suc(Lit(a#15#0#0)) } 
  #_module.Nat.Suc(Lit(a#15#0#0)) == Lit(#_module.Nat.Suc(a#15#0#0)));

function _module.Nat._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#16#0#0: DatatypeType :: 
  { #_module.Nat.Suc(a#16#0#0) } 
  _module.Nat._h0(#_module.Nat.Suc(a#16#0#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: DatatypeType :: 
  { #_module.Nat.Suc(a#17#0#0) } 
  DtRank(a#17#0#0) < DtRank(#_module.Nat.Suc(a#17#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Nat())
     ==> $IsAlloc(d, Tclass._module.Nat(), $h));

// Depth-one case-split function
function $IsA#_module.Nat(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Nat(d) } 
  $IsA#_module.Nat(d) ==> _module.Nat.Zero_q(d) || _module.Nat.Suc_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Nat.Suc_q(d), $Is(d, Tclass._module.Nat()) } 
    { _module.Nat.Zero_q(d), $Is(d, Tclass._module.Nat()) } 
  $Is(d, Tclass._module.Nat()) ==> _module.Nat.Zero_q(d) || _module.Nat.Suc_q(d));

// Datatype extensional equality declaration
function _module.Nat#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Nat.Zero
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Nat#Equal(a, b), _module.Nat.Zero_q(a) } 
    { _module.Nat#Equal(a, b), _module.Nat.Zero_q(b) } 
  _module.Nat.Zero_q(a) && _module.Nat.Zero_q(b) ==> _module.Nat#Equal(a, b));

// Datatype extensional equality definition: #_module.Nat.Suc
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Nat#Equal(a, b), _module.Nat.Suc_q(a) } 
    { _module.Nat#Equal(a, b), _module.Nat.Suc_q(b) } 
  _module.Nat.Suc_q(a) && _module.Nat.Suc_q(b)
     ==> (_module.Nat#Equal(a, b)
       <==> _module.Nat#Equal(_module.Nat._h0(a), _module.Nat._h0(b))));

// Datatype extensionality axiom: _module.Nat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Nat#Equal(a, b) } 
  _module.Nat#Equal(a, b) <==> a == b);

const unique class._module.Nat: ClassName;

// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor $Is
axiom $Is(#_module.List.Nil(), Tclass._module.List());
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor function declaration
function #_module.List.Cons(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#22#0#0: DatatypeType, a#22#1#0: DatatypeType :: 
  { #_module.List.Cons(a#22#0#0, a#22#1#0) } 
  DatatypeCtorId(#_module.List.Cons(a#22#0#0, a#22#1#0)) == ##_module.List.Cons);
}

function _module.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d)
     ==> (exists a#23#0#0: DatatypeType, a#23#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#23#0#0, a#23#1#0)));

// Constructor $Is
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#24#0#0, a#24#1#0), Tclass._module.List()) } 
  $Is(#_module.List.Cons(a#24#0#0, a#24#1#0), Tclass._module.List())
     <==> $Is(a#24#0#0, Tclass._module.Nat()) && $Is(a#24#1#0, Tclass._module.List()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List._h1(d), Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List._h1(d), Tclass._module.Nat(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List._h2(d), Tclass._module.List(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List._h2(d), Tclass._module.List(), $h));

// Constructor literal
axiom (forall a#25#0#0: DatatypeType, a#25#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#25#0#0), Lit(a#25#1#0)) } 
  #_module.List.Cons(Lit(a#25#0#0), Lit(a#25#1#0))
     == Lit(#_module.List.Cons(a#25#0#0, a#25#1#0)));

function _module.List._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#26#0#0: DatatypeType, a#26#1#0: DatatypeType :: 
  { #_module.List.Cons(a#26#0#0, a#26#1#0) } 
  _module.List._h1(#_module.List.Cons(a#26#0#0, a#26#1#0)) == a#26#0#0);

// Inductive rank
axiom (forall a#27#0#0: DatatypeType, a#27#1#0: DatatypeType :: 
  { #_module.List.Cons(a#27#0#0, a#27#1#0) } 
  DtRank(a#27#0#0) < DtRank(#_module.List.Cons(a#27#0#0, a#27#1#0)));

function _module.List._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#28#0#0: DatatypeType, a#28#1#0: DatatypeType :: 
  { #_module.List.Cons(a#28#0#0, a#28#1#0) } 
  _module.List._h2(#_module.List.Cons(a#28#0#0, a#28#1#0)) == a#28#1#0);

// Inductive rank
axiom (forall a#29#0#0: DatatypeType, a#29#1#0: DatatypeType :: 
  { #_module.List.Cons(a#29#0#0, a#29#1#0) } 
  DtRank(a#29#1#0) < DtRank(#_module.List.Cons(a#29#0#0, a#29#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.List(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.List())
     ==> $IsAlloc(d, Tclass._module.List(), $h));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List()) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List()) } 
  $Is(d, Tclass._module.List())
     ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Cons_q(a) } 
    { _module.List#Equal(a, b), _module.List.Cons_q(b) } 
  _module.List.Cons_q(a) && _module.List.Cons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.Nat#Equal(_module.List._h1(a), _module.List._h1(b))
         && _module.List#Equal(_module.List._h2(a), _module.List._h2(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

// Constructor function declaration
function #_module.Pair.Pair(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.Pair.Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#30#0#0: DatatypeType, a#30#1#0: DatatypeType :: 
  { #_module.Pair.Pair(a#30#0#0, a#30#1#0) } 
  DatatypeCtorId(#_module.Pair.Pair(a#30#0#0, a#30#1#0)) == ##_module.Pair.Pair);
}

function _module.Pair.Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Pair.Pair_q(d) } 
  _module.Pair.Pair_q(d) <==> DatatypeCtorId(d) == ##_module.Pair.Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Pair.Pair_q(d) } 
  _module.Pair.Pair_q(d)
     ==> (exists a#31#0#0: DatatypeType, a#31#1#0: DatatypeType :: 
      d == #_module.Pair.Pair(a#31#0#0, a#31#1#0)));

function Tclass._module.Pair() : Ty
uses {
// Tclass._module.Pair Tag
axiom Tag(Tclass._module.Pair()) == Tagclass._module.Pair
   && TagFamily(Tclass._module.Pair()) == tytagFamily$Pair;
}

const unique Tagclass._module.Pair: TyTag;

// Box/unbox axiom for Tclass._module.Pair
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Pair()) } 
  $IsBox(bx, Tclass._module.Pair())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Pair()));

// Constructor $Is
axiom (forall a#32#0#0: DatatypeType, a#32#1#0: DatatypeType :: 
  { $Is(#_module.Pair.Pair(a#32#0#0, a#32#1#0), Tclass._module.Pair()) } 
  $Is(#_module.Pair.Pair(a#32#0#0, a#32#1#0), Tclass._module.Pair())
     <==> $Is(a#32#0#0, Tclass._module.Nat()) && $Is(a#32#1#0, Tclass._module.Nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Pair._h3(d), Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Pair.Pair_q(d)
       && $IsAlloc(d, Tclass._module.Pair(), $h)
     ==> $IsAlloc(_module.Pair._h3(d), Tclass._module.Nat(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Pair._h4(d), Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Pair.Pair_q(d)
       && $IsAlloc(d, Tclass._module.Pair(), $h)
     ==> $IsAlloc(_module.Pair._h4(d), Tclass._module.Nat(), $h));

// Constructor literal
axiom (forall a#33#0#0: DatatypeType, a#33#1#0: DatatypeType :: 
  { #_module.Pair.Pair(Lit(a#33#0#0), Lit(a#33#1#0)) } 
  #_module.Pair.Pair(Lit(a#33#0#0), Lit(a#33#1#0))
     == Lit(#_module.Pair.Pair(a#33#0#0, a#33#1#0)));

function _module.Pair._h3(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType :: 
  { #_module.Pair.Pair(a#34#0#0, a#34#1#0) } 
  _module.Pair._h3(#_module.Pair.Pair(a#34#0#0, a#34#1#0)) == a#34#0#0);

// Inductive rank
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: DatatypeType :: 
  { #_module.Pair.Pair(a#35#0#0, a#35#1#0) } 
  DtRank(a#35#0#0) < DtRank(#_module.Pair.Pair(a#35#0#0, a#35#1#0)));

function _module.Pair._h4(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: DatatypeType :: 
  { #_module.Pair.Pair(a#36#0#0, a#36#1#0) } 
  _module.Pair._h4(#_module.Pair.Pair(a#36#0#0, a#36#1#0)) == a#36#1#0);

// Inductive rank
axiom (forall a#37#0#0: DatatypeType, a#37#1#0: DatatypeType :: 
  { #_module.Pair.Pair(a#37#0#0, a#37#1#0) } 
  DtRank(a#37#1#0) < DtRank(#_module.Pair.Pair(a#37#0#0, a#37#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Pair(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Pair())
     ==> $IsAlloc(d, Tclass._module.Pair(), $h));

// Depth-one case-split function
function $IsA#_module.Pair(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Pair(d) } 
  $IsA#_module.Pair(d) ==> _module.Pair.Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Pair.Pair_q(d), $Is(d, Tclass._module.Pair()) } 
  $Is(d, Tclass._module.Pair()) ==> _module.Pair.Pair_q(d));

// Datatype extensional equality declaration
function _module.Pair#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Pair.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Pair#Equal(a, b) } 
  _module.Pair#Equal(a, b)
     <==> _module.Nat#Equal(_module.Pair._h3(a), _module.Pair._h3(b))
       && _module.Nat#Equal(_module.Pair._h4(a), _module.Pair._h4(b)));

// Datatype extensionality axiom: _module.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Pair#Equal(a, b) } 
  _module.Pair#Equal(a, b) <==> a == b);

const unique class._module.Pair: ClassName;

// Constructor function declaration
function #_module.PList.PNil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.PList.PNil()) == ##_module.PList.PNil;
// Constructor $Is
axiom $Is(#_module.PList.PNil(), Tclass._module.PList());
// Constructor literal
axiom #_module.PList.PNil() == Lit(#_module.PList.PNil());
}

const unique ##_module.PList.PNil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.PList.PNil()) == ##_module.PList.PNil;
}

function _module.PList.PNil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.PList.PNil_q(d) } 
  _module.PList.PNil_q(d) <==> DatatypeCtorId(d) == ##_module.PList.PNil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.PList.PNil_q(d) } 
  _module.PList.PNil_q(d) ==> d == #_module.PList.PNil());

// Constructor function declaration
function #_module.PList.PCons(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.PList.PCons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#42#0#0: DatatypeType, a#42#1#0: DatatypeType :: 
  { #_module.PList.PCons(a#42#0#0, a#42#1#0) } 
  DatatypeCtorId(#_module.PList.PCons(a#42#0#0, a#42#1#0))
     == ##_module.PList.PCons);
}

function _module.PList.PCons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.PList.PCons_q(d) } 
  _module.PList.PCons_q(d) <==> DatatypeCtorId(d) == ##_module.PList.PCons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.PList.PCons_q(d) } 
  _module.PList.PCons_q(d)
     ==> (exists a#43#0#0: DatatypeType, a#43#1#0: DatatypeType :: 
      d == #_module.PList.PCons(a#43#0#0, a#43#1#0)));

// Constructor $Is
axiom (forall a#44#0#0: DatatypeType, a#44#1#0: DatatypeType :: 
  { $Is(#_module.PList.PCons(a#44#0#0, a#44#1#0), Tclass._module.PList()) } 
  $Is(#_module.PList.PCons(a#44#0#0, a#44#1#0), Tclass._module.PList())
     <==> $Is(a#44#0#0, Tclass._module.Pair()) && $Is(a#44#1#0, Tclass._module.PList()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.PList._h5(d), Tclass._module.Pair(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.PList.PCons_q(d)
       && $IsAlloc(d, Tclass._module.PList(), $h)
     ==> $IsAlloc(_module.PList._h5(d), Tclass._module.Pair(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.PList._h6(d), Tclass._module.PList(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.PList.PCons_q(d)
       && $IsAlloc(d, Tclass._module.PList(), $h)
     ==> $IsAlloc(_module.PList._h6(d), Tclass._module.PList(), $h));

// Constructor literal
axiom (forall a#45#0#0: DatatypeType, a#45#1#0: DatatypeType :: 
  { #_module.PList.PCons(Lit(a#45#0#0), Lit(a#45#1#0)) } 
  #_module.PList.PCons(Lit(a#45#0#0), Lit(a#45#1#0))
     == Lit(#_module.PList.PCons(a#45#0#0, a#45#1#0)));

function _module.PList._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#46#0#0: DatatypeType, a#46#1#0: DatatypeType :: 
  { #_module.PList.PCons(a#46#0#0, a#46#1#0) } 
  _module.PList._h5(#_module.PList.PCons(a#46#0#0, a#46#1#0)) == a#46#0#0);

// Inductive rank
axiom (forall a#47#0#0: DatatypeType, a#47#1#0: DatatypeType :: 
  { #_module.PList.PCons(a#47#0#0, a#47#1#0) } 
  DtRank(a#47#0#0) < DtRank(#_module.PList.PCons(a#47#0#0, a#47#1#0)));

function _module.PList._h6(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#48#0#0: DatatypeType, a#48#1#0: DatatypeType :: 
  { #_module.PList.PCons(a#48#0#0, a#48#1#0) } 
  _module.PList._h6(#_module.PList.PCons(a#48#0#0, a#48#1#0)) == a#48#1#0);

// Inductive rank
axiom (forall a#49#0#0: DatatypeType, a#49#1#0: DatatypeType :: 
  { #_module.PList.PCons(a#49#0#0, a#49#1#0) } 
  DtRank(a#49#1#0) < DtRank(#_module.PList.PCons(a#49#0#0, a#49#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.PList(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.PList())
     ==> $IsAlloc(d, Tclass._module.PList(), $h));

// Depth-one case-split function
function $IsA#_module.PList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.PList(d) } 
  $IsA#_module.PList(d) ==> _module.PList.PNil_q(d) || _module.PList.PCons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.PList.PCons_q(d), $Is(d, Tclass._module.PList()) } 
    { _module.PList.PNil_q(d), $Is(d, Tclass._module.PList()) } 
  $Is(d, Tclass._module.PList())
     ==> _module.PList.PNil_q(d) || _module.PList.PCons_q(d));

// Datatype extensional equality declaration
function _module.PList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.PList.PNil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PList#Equal(a, b), _module.PList.PNil_q(a) } 
    { _module.PList#Equal(a, b), _module.PList.PNil_q(b) } 
  _module.PList.PNil_q(a) && _module.PList.PNil_q(b) ==> _module.PList#Equal(a, b));

// Datatype extensional equality definition: #_module.PList.PCons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PList#Equal(a, b), _module.PList.PCons_q(a) } 
    { _module.PList#Equal(a, b), _module.PList.PCons_q(b) } 
  _module.PList.PCons_q(a) && _module.PList.PCons_q(b)
     ==> (_module.PList#Equal(a, b)
       <==> _module.Pair#Equal(_module.PList._h5(a), _module.PList._h5(b))
         && _module.PList#Equal(_module.PList._h6(a), _module.PList._h6(b))));

// Datatype extensionality axiom: _module.PList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.PList#Equal(a, b) } 
  _module.PList#Equal(a, b) <==> a == b);

const unique class._module.PList: ClassName;

// Constructor function declaration
function #_module.Tree.Leaf() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Leaf()) == ##_module.Tree.Leaf;
// Constructor $Is
axiom $Is(#_module.Tree.Leaf(), Tclass._module.Tree());
// Constructor literal
axiom #_module.Tree.Leaf() == Lit(#_module.Tree.Leaf());
}

const unique ##_module.Tree.Leaf: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Leaf()) == ##_module.Tree.Leaf;
}

function _module.Tree.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Leaf_q(d) } 
  _module.Tree.Leaf_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Leaf_q(d) } 
  _module.Tree.Leaf_q(d) ==> d == #_module.Tree.Leaf());

// Constructor function declaration
function #_module.Tree.Node(DatatypeType, DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.Tree.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#54#0#0: DatatypeType, a#54#1#0: DatatypeType, a#54#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#54#0#0, a#54#1#0, a#54#2#0) } 
  DatatypeCtorId(#_module.Tree.Node(a#54#0#0, a#54#1#0, a#54#2#0))
     == ##_module.Tree.Node);
}

function _module.Tree.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Node_q(d) } 
  _module.Tree.Node_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Node_q(d) } 
  _module.Tree.Node_q(d)
     ==> (exists a#55#0#0: DatatypeType, a#55#1#0: DatatypeType, a#55#2#0: DatatypeType :: 
      d == #_module.Tree.Node(a#55#0#0, a#55#1#0, a#55#2#0)));

// Constructor $Is
axiom (forall a#56#0#0: DatatypeType, a#56#1#0: DatatypeType, a#56#2#0: DatatypeType :: 
  { $Is(#_module.Tree.Node(a#56#0#0, a#56#1#0, a#56#2#0), Tclass._module.Tree()) } 
  $Is(#_module.Tree.Node(a#56#0#0, a#56#1#0, a#56#2#0), Tclass._module.Tree())
     <==> $Is(a#56#0#0, Tclass._module.Tree())
       && $Is(a#56#1#0, Tclass._module.Nat())
       && $Is(a#56#2#0, Tclass._module.Tree()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree._h7(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Node_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree._h7(d), Tclass._module.Tree(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree._h8(d), Tclass._module.Nat(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Node_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree._h8(d), Tclass._module.Nat(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree._h9(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Node_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree._h9(d), Tclass._module.Tree(), $h));

// Constructor literal
axiom (forall a#57#0#0: DatatypeType, a#57#1#0: DatatypeType, a#57#2#0: DatatypeType :: 
  { #_module.Tree.Node(Lit(a#57#0#0), Lit(a#57#1#0), Lit(a#57#2#0)) } 
  #_module.Tree.Node(Lit(a#57#0#0), Lit(a#57#1#0), Lit(a#57#2#0))
     == Lit(#_module.Tree.Node(a#57#0#0, a#57#1#0, a#57#2#0)));

function _module.Tree._h7(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#58#0#0: DatatypeType, a#58#1#0: DatatypeType, a#58#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#58#0#0, a#58#1#0, a#58#2#0) } 
  _module.Tree._h7(#_module.Tree.Node(a#58#0#0, a#58#1#0, a#58#2#0)) == a#58#0#0);

// Inductive rank
axiom (forall a#59#0#0: DatatypeType, a#59#1#0: DatatypeType, a#59#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#59#0#0, a#59#1#0, a#59#2#0) } 
  DtRank(a#59#0#0) < DtRank(#_module.Tree.Node(a#59#0#0, a#59#1#0, a#59#2#0)));

function _module.Tree._h8(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#60#0#0: DatatypeType, a#60#1#0: DatatypeType, a#60#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#60#0#0, a#60#1#0, a#60#2#0) } 
  _module.Tree._h8(#_module.Tree.Node(a#60#0#0, a#60#1#0, a#60#2#0)) == a#60#1#0);

// Inductive rank
axiom (forall a#61#0#0: DatatypeType, a#61#1#0: DatatypeType, a#61#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#61#0#0, a#61#1#0, a#61#2#0) } 
  DtRank(a#61#1#0) < DtRank(#_module.Tree.Node(a#61#0#0, a#61#1#0, a#61#2#0)));

function _module.Tree._h9(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#62#0#0: DatatypeType, a#62#1#0: DatatypeType, a#62#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#62#0#0, a#62#1#0, a#62#2#0) } 
  _module.Tree._h9(#_module.Tree.Node(a#62#0#0, a#62#1#0, a#62#2#0)) == a#62#2#0);

// Inductive rank
axiom (forall a#63#0#0: DatatypeType, a#63#1#0: DatatypeType, a#63#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#63#0#0, a#63#1#0, a#63#2#0) } 
  DtRank(a#63#2#0) < DtRank(#_module.Tree.Node(a#63#0#0, a#63#1#0, a#63#2#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Tree())
     ==> $IsAlloc(d, Tclass._module.Tree(), $h));

// Depth-one case-split function
function $IsA#_module.Tree(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Tree(d) } 
  $IsA#_module.Tree(d) ==> _module.Tree.Leaf_q(d) || _module.Tree.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Tree.Node_q(d), $Is(d, Tclass._module.Tree()) } 
    { _module.Tree.Leaf_q(d), $Is(d, Tclass._module.Tree()) } 
  $Is(d, Tclass._module.Tree())
     ==> _module.Tree.Leaf_q(d) || _module.Tree.Node_q(d));

// Datatype extensional equality declaration
function _module.Tree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Tree.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Leaf_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Leaf_q(b) } 
  _module.Tree.Leaf_q(a) && _module.Tree.Leaf_q(b) ==> _module.Tree#Equal(a, b));

// Datatype extensional equality definition: #_module.Tree.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Node_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Node_q(b) } 
  _module.Tree.Node_q(a) && _module.Tree.Node_q(b)
     ==> (_module.Tree#Equal(a, b)
       <==> _module.Tree#Equal(_module.Tree._h7(a), _module.Tree._h7(b))
         && _module.Nat#Equal(_module.Tree._h8(a), _module.Tree._h8(b))
         && _module.Tree#Equal(_module.Tree._h9(a), _module.Tree._h9(b))));

// Datatype extensionality axiom: _module.Tree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b) } 
  _module.Tree#Equal(a, b) <==> a == b);

const unique class._module.Tree: ClassName;

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

const unique tytagFamily$Bool: TyTagFamily;

const unique tytagFamily$Nat: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$PList: TyTagFamily;

const unique tytagFamily$Tree: TyTagFamily;

const unique tytagFamily$Pair: TyTagFamily;

// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy

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

const unique class._module.__default: ClassName;

procedure {:verboseName "test1 (well-formedness)"} CheckWellFormed$$_module.__default.test1();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test1 (call)"} Call$$_module.__default.test1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test1 (correctness)"} Impl$$_module.__default.test1() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test1 (correctness)"} Impl$$_module.__default.test1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ms#0: MultiSet
     where $Is(ms#0, TMultiSet(TInt)) && $IsAlloc(ms#0, TMultiSet(TInt), $Heap);
  var ms2#0: MultiSet
     where $Is(ms2#0, TMultiSet(TInt)) && $IsAlloc(ms2#0, TMultiSet(TInt), $Heap);
  var i#0: int;
  var m#0: MultiSet;
  var m#2: MultiSet;
  var m#Z#0: MultiSet;
  var let#0#0#0: MultiSet;
  var s#0: Set;
  var x#0: int;

    // AddMethodImpl: test1, Impl$$_module.__default.test1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(6,26)
    assume true;
    assume true;
    ms#0 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))), $Box(LitInt(1))), 
        $Box(LitInt(1))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(7,27)
    assume true;
    assume true;
    ms2#0 := Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(3))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(8,4)
    assume true;
    assert {:id "id2"} MultiSet#Multiplicity(ms#0, $Box(LitInt(1))) > 0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(9,4)
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (i#0 != 1)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id3"} (forall i#1: int :: 
      { MultiSet#Multiplicity(ms#0, $Box(i#1)) } 
      i#1 != 1 ==> !(MultiSet#Multiplicity(ms#0, $Box(i#1)) > 0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(11,4)
    assume true;
    assert {:id "id4"} !MultiSet#Equal(MultiSet#Difference(MultiSet#Difference(ms#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))), 
        MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))), 
      MultiSet#Empty(): MultiSet);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(12,4)
    assume true;
    assert {:id "id5"} MultiSet#Equal(MultiSet#Difference(MultiSet#Difference(MultiSet#Difference(ms#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))), 
          MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))), 
        MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))), 
      MultiSet#Empty(): MultiSet);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(14,4)
    assume true;
    assert {:id "id6"} MultiSet#Equal(MultiSet#Difference(ms2#0, ms#0), ms2#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(15,4)
    assume true;
    assert {:id "id7"} MultiSet#Equal(MultiSet#Difference(ms#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))), 
      MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))), $Box(LitInt(1))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(16,4)
    assume true;
    assert {:id "id8"} !MultiSet#Disjoint(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))), 
      MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(17,4)
    // Begin Comprehension WF check
    havoc m#0;
    if ($Is(m#0, TMultiSet(TInt)) && $IsAlloc(m#0, TMultiSet(TInt), $Heap))
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id9"} (exists m#1: MultiSet :: 
      $Is(m#1, TMultiSet(TInt))
         && !MultiSet#Disjoint(m#1, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(18,4)
    // Begin Comprehension WF check
    havoc m#2;
    if ($Is(m#2, TMultiSet(TInt)) && $IsAlloc(m#2, TMultiSet(TInt), $Heap))
    {
        havoc m#Z#0;
        assume {:id "id10"} let#0#0#0 == m#2;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TMultiSet(TInt));
        assume {:id "id11"} m#Z#0 == let#0#0#0;
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id12"} (forall m#3: MultiSet :: 
      $Is(m#3, TMultiSet(TInt))
         ==> MultiSet#Disjoint((var m#4 := m#3; m#4), MultiSet#Empty(): MultiSet));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(20,4)
    // Begin Comprehension WF check
    havoc s#0;
    if ($Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
    {
        // Begin Comprehension WF check
        havoc x#0;
        if (true)
        {
            if (MultiSet#Multiplicity(ms#0, $Box(x#0)) > 0)
            {
            }
        }

        // End Comprehension WF check
        if (Set#Equal(s#0, 
          Set#FromBoogieMap((lambda $y#0: Box :: 
              (exists x#1: int :: 
                { MultiSet#Multiplicity(ms#0, $Box(x#1)) } 
                MultiSet#Multiplicity(ms#0, $Box(x#1)) > 0 && $y#0 == $Box(x#1))))))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id13"} (forall s#1: Set :: 
      $Is(s#1, TSet(TInt))
         ==> 
        Set#Equal(s#1, 
          Set#FromBoogieMap((lambda $y#3: Box :: 
              (exists x#2: int :: 
                { MultiSet#Multiplicity(ms#0, $Box(x#2)) } 
                MultiSet#Multiplicity(ms#0, $Box(x#2)) > 0 && $y#3 == $Box(x#2)))))
         ==> Set#Equal(s#1, Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1)))));
}



procedure {:verboseName "test2 (well-formedness)"} CheckWellFormed$$_module.__default.test2(ms#0: MultiSet
       where $Is(ms#0, TMultiSet(TInt)) && $IsAlloc(ms#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test2 (call)"} Call$$_module.__default.test2(ms#0: MultiSet
       where $Is(ms#0, TMultiSet(TInt)) && $IsAlloc(ms#0, TMultiSet(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test2 (correctness)"} Impl$$_module.__default.test2(ms#0: MultiSet
       where $Is(ms#0, TMultiSet(TInt)) && $IsAlloc(ms#0, TMultiSet(TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test2 (correctness)"} Impl$$_module.__default.test2(ms#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var x#1: int;
  var x#2: int;

    // AddMethodImpl: test2, Impl$$_module.__default.test2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(25,10)
    assume true;
    // Begin Comprehension WF check
    havoc x#1;
    if (true)
    {
        if (MultiSet#Multiplicity(ms#0, $Box(x#1)) > 0)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    s#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        (exists x#0: int :: 
          { MultiSet#Multiplicity(ms#0, $Box(x#0)) } 
          MultiSet#Multiplicity(ms#0, $Box(x#0)) > 0 && $y#0 == $Box(x#0))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(26,4)
    // Begin Comprehension WF check
    havoc x#2;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id15"} (forall x#3: int :: 
      { MultiSet#Multiplicity(ms#0, $Box(x#3)) } { Set#IsMember(s#0, $Box(x#3)) } 
      Set#IsMember(s#0, $Box(x#3)) <==> MultiSet#Multiplicity(ms#0, $Box(x#3)) > 0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(27,4)
    assume true;
    assert {:id "id16"} MultiSet#Disjoint(ms#0, MultiSet#Empty(): MultiSet);
}



procedure {:verboseName "test3 (well-formedness)"} CheckWellFormed$$_module.__default.test3(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test3 (call)"} Call$$_module.__default.test3(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test3 (correctness)"} Impl$$_module.__default.test3(s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test3 (correctness)"} Impl$$_module.__default.test3(s#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;

    // AddMethodImpl: test3, Impl$$_module.__default.test3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(32,4)
    // Begin Comprehension WF check
    havoc x#0;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id17"} (forall x#1: int :: 
      { MultiSet#Multiplicity(MultiSet#FromSet(s#0), $Box(x#1)) } 
        { Set#IsMember(s#0, $Box(x#1)) } 
      Set#IsMember(s#0, $Box(x#1))
         <==> MultiSet#Multiplicity(MultiSet#FromSet(s#0), $Box(x#1)) > 0);
}



procedure {:verboseName "test4 (well-formedness)"} CheckWellFormed$$_module.__default.test4(sq#0: Seq where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test4 (call)"} Call$$_module.__default.test4(sq#0: Seq where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test4 (correctness)"} Impl$$_module.__default.test4(sq#0: Seq where $Is(sq#0, TSeq(TInt)) && $IsAlloc(sq#0, TSeq(TInt), $Heap), 
    a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test4 (correctness)"} Impl$$_module.__default.test4(sq#0: Seq, a#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);

    // AddMethodImpl: test4, Impl$$_module.__default.test4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(37,4)
    assert {:id "id18"} {:subsumption 0} 0 <= Seq#Length(sq#0) && Seq#Length(sq#0) <= Seq#Length(sq#0);
    assume true;
    assert {:id "id19"} Seq#Equal(sq#0, Seq#Take(sq#0, Seq#Length(sq#0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(38,4)
    assert {:id "id20"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(sq#0);
    assume true;
    assert {:id "id21"} Seq#Equal(sq#0, Seq#Drop(sq#0, LitInt(0)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(39,4)
    assume true;
    assert {:id "id22"} Seq#Equal(sq#0, sq#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(41,4)
    assert {:id "id23"} {:subsumption 0} a#0 != null;
    assume true;
    assert {:id "id24"} _System.array.Length(a#0) >= LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(42,10)
    assume true;
    assert {:id "id25"} a#0 != null;
    assume true;
    s#0 := Seq#FromArray($Heap, a#0);
}



procedure {:verboseName "test5 (well-formedness)"} CheckWellFormed$$_module.__default.test5();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test5 (call)"} Call$$_module.__default.test5();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test5 (correctness)"} Impl$$_module.__default.test5() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test5 (correctness)"} Impl$$_module.__default.test5() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: test5, Impl$$_module.__default.test5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(47,4)
    assume true;
    assert {:id "id27"} MultiSet#Equal(MultiSet#FromSet(Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(1))))), 
      MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(48,4)
    assume true;
    assert {:id "id28"} MultiSet#Equal(MultiSet#FromSeq(Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(1))), $Box(LitInt(1))))), 
      MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1))), $Box(LitInt(1))));
}



procedure {:verboseName "test6 (well-formedness)"} CheckWellFormed$$_module.__default.test6(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int, 
    e#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test6 (well-formedness)"} CheckWellFormed$$_module.__default.test6(a#0: ref, n#0: int, e#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: test6, CheckWellFormed$$_module.__default.test6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    if (LitInt(0) <= n#0)
    {
        assert {:id "id29"} a#0 != null;
    }

    assume {:id "id30"} LitInt(0) <= n#0 && n#0 < _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id31"} a#0 != null;
    assert {:id "id32"} 0 <= n#0 + 1 && n#0 + 1 <= _System.array.Length(a#0);
    assert {:id "id33"} a#0 != null;
    assert {:id "id34"} 0 <= n#0 && n#0 <= _System.array.Length(a#0);
    assume {:id "id35"} MultiSet#Equal(MultiSet#FromSeq(Seq#Take(Seq#FromArray($Heap, a#0), n#0 + 1)), 
      MultiSet#Union(MultiSet#FromSeq(Seq#Take(Seq#FromArray($Heap, a#0), n#0)), 
        MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(e#0))));
}



procedure {:verboseName "test6 (call)"} Call$$_module.__default.test6(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int, 
    e#0: int);
  // user-defined preconditions
  requires {:id "id36"} LitInt(0) <= n#0;
  requires {:id "id37"} n#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id38"} MultiSet#Equal(MultiSet#FromSeq(Seq#Take(Seq#FromArray($Heap, a#0), n#0 + 1)), 
    MultiSet#Union(MultiSet#FromSeq(Seq#Take(Seq#FromArray($Heap, a#0), n#0)), 
      MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(e#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test6 (correctness)"} Impl$$_module.__default.test6(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int, 
    e#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id39"} LitInt(0) <= n#0;
  requires {:id "id40"} n#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id41"} MultiSet#Equal(MultiSet#FromSeq(Seq#Take(Seq#FromArray($Heap, a#0), n#0 + 1)), 
    MultiSet#Union(MultiSet#FromSeq(Seq#Take(Seq#FromArray($Heap, a#0), n#0)), 
      MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(e#0))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test6 (correctness)"} Impl$$_module.__default.test6(a#0: ref, n#0: int, e#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: test6, Impl$$_module.__default.test6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(56,8)
    assert {:id "id42"} a#0 != null;
    assert {:id "id43"} 0 <= n#0 && n#0 < _System.array.Length(a#0);
    assume true;
    assert {:id "id44"} $_ModifiesFrame[a#0, IndexField(n#0)];
    assume true;
    $rhs#0 := e#0;
    $Heap := update($Heap, a#0, IndexField(n#0), $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(57,3)
    assert {:id "id47"} a#0 != null;
    assert {:id "id48"} {:subsumption 0} 0 <= n#0 + 1 && n#0 + 1 <= _System.array.Length(a#0);
    assert {:id "id49"} a#0 != null;
    assert {:id "id50"} {:subsumption 0} 0 <= n#0 && n#0 <= _System.array.Length(a#0);
    assume true;
    assert {:id "id51"} Seq#Equal(Seq#Take(Seq#FromArray($Heap, a#0), n#0 + 1), 
      Seq#Append(Seq#Take(Seq#FromArray($Heap, a#0), n#0), Seq#Build(Seq#Empty(): Seq, $Box(e#0))));
}



procedure {:verboseName "test7 (well-formedness)"} CheckWellFormed$$_module.__default.test7(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test7 (well-formedness)"} CheckWellFormed$$_module.__default.test7(a#0: ref, i#0: int, j#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;


    // AddMethodImpl: test7, CheckWellFormed$$_module.__default.test7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    if (LitInt(0) <= i#0)
    {
    }

    if (LitInt(0) <= i#0 && i#0 < j#0)
    {
        assert {:id "id52"} a#0 != null;
    }

    assume {:id "id53"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id54"} a#0 != null;
    assert {:id "id55"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id56"} a#0 != null;
    assume {:id "id57"} MultiSet#Equal(MultiSet#FromSeq(Seq#FromArray(old($Heap), a#0)), 
      MultiSet#FromSeq(Seq#FromArray($Heap, a#0)));
    assert {:id "id58"} a#0 != null;
    assert {:id "id59"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id60"} a#0 != null;
    assert {:id "id61"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id62"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume {:id "id63"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
       == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
    assert {:id "id64"} a#0 != null;
    assert {:id "id65"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assert {:id "id66"} a#0 != null;
    assert {:id "id67"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id68"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume {:id "id69"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
       == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
    havoc k#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
            assert {:id "id70"} a#0 != null;
        }

        assume {:id "id71"} LitInt(0) <= k#0 && k#0 < _System.array.Length(a#0);
        assume {:id "id72"} !(k#0 == i#0 || k#0 == j#0);
        assert {:id "id73"} a#0 != null;
        assert {:id "id74"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
        assert {:id "id75"} a#0 != null;
        assert {:id "id76"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id77"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
        assume {:id "id78"} $Unbox(read($Heap, a#0, IndexField(k#0))): int
           == $Unbox(read(old($Heap), a#0, IndexField(k#0))): int;
    }
    else
    {
        assume {:id "id79"} LitInt(0) <= k#0
             && k#0 < _System.array.Length(a#0)
             && !(k#0 == i#0 || k#0 == j#0)
           ==> $Unbox(read($Heap, a#0, IndexField(k#0))): int
             == $Unbox(read(old($Heap), a#0, IndexField(k#0))): int;
    }

    assume {:id "id80"} (forall k#1: int :: 
      { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
        { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
      LitInt(0) <= k#1
           && k#1 < _System.array.Length(a#0)
           && !(k#1 == i#0 || k#1 == j#0)
         ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
           == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
}



procedure {:verboseName "test7 (call)"} Call$$_module.__default.test7(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int);
  // user-defined preconditions
  requires {:id "id81"} LitInt(0) <= i#0;
  requires {:id "id82"} i#0 < j#0;
  requires {:id "id83"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id84"} MultiSet#Equal(MultiSet#FromSeq(Seq#FromArray(old($Heap), a#0)), 
    MultiSet#FromSeq(Seq#FromArray($Heap, a#0)));
  free ensures true;
  ensures {:id "id85"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
  ensures {:id "id86"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
  free ensures true;
  ensures {:id "id87"} (forall k#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
         && k#1 < _System.array.Length(a#0)
         && !(k#1 == i#0 || k#1 == j#0)
       ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
         == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test7 (correctness)"} Impl$$_module.__default.test7(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id88"} LitInt(0) <= i#0;
  requires {:id "id89"} i#0 < j#0;
  requires {:id "id90"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id91"} MultiSet#Equal(MultiSet#FromSeq(Seq#FromArray(old($Heap), a#0)), 
    MultiSet#FromSeq(Seq#FromArray($Heap, a#0)));
  free ensures true;
  ensures {:id "id92"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
  ensures {:id "id93"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
  free ensures true;
  ensures {:id "id94"} (forall k#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
         && k#1 < _System.array.Length(a#0)
         && !(k#1 == i#0 || k#1 == j#0)
       ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
         == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test7 (correctness)"} Impl$$_module.__default.test7(a#0: ref, i#0: int, j#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var $obj0: ref;
  var $index0: Field;
  var $obj1: ref;
  var $index1: Field;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: test7, Impl$$_module.__default.test7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(66,16)
    assume true;
    assert {:id "id95"} a#0 != null;
    assert {:id "id96"} 0 <= i#0 && i#0 <= _System.array.Length(a#0);
    assert {:id "id97"} a#0 != null;
    assert {:id "id98"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assert {:id "id99"} a#0 != null;
    assert {:id "id100"} 0 <= i#0 + 1 && i#0 + 1 <= _System.array.Length(a#0);
    assert {:id "id101"} i#0 + 1 <= j#0 && j#0 <= _System.array.Length(a#0);
    assert {:id "id102"} a#0 != null;
    assert {:id "id103"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id104"} a#0 != null;
    assert {:id "id105"} 0 <= j#0 + 1 && j#0 + 1 <= _System.array.Length(a#0);
    assume true;
    s#0 := Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Take(Seq#FromArray($Heap, a#0), i#0), 
            Seq#Build(Seq#Empty(): Seq, read($Heap, a#0, IndexField(i#0)))), 
          Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), j#0), i#0 + 1)), 
        Seq#Build(Seq#Empty(): Seq, read($Heap, a#0, IndexField(j#0)))), 
      Seq#Drop(Seq#FromArray($Heap, a#0), j#0 + 1));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(67,4)
    assert {:id "id107"} a#0 != null;
    assume true;
    assert {:id "id108"} Seq#Equal(Seq#FromArray($Heap, a#0), s#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(68,15)
    assert {:id "id109"} a#0 != null;
    assert {:id "id110"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(i#0);
    assert {:id "id111"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id112"} a#0 != null;
    assert {:id "id113"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $obj1 := a#0;
    $index1 := IndexField(j#0);
    assert {:id "id114"} $_ModifiesFrame[$obj1, $index1];
    assert {:id "id115"} a#0 != null;
    assert {:id "id116"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $rhs#0 := $Unbox(read($Heap, a#0, IndexField(j#0))): int;
    assert {:id "id118"} a#0 != null;
    assert {:id "id119"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $rhs#1 := $Unbox(read($Heap, a#0, IndexField(i#0))): int;
    assert {:id "id121"} a#0 != a#0 || j#0 != i#0 || $Box($rhs#1) == $Box($rhs#0);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(69,4)
    assert {:id "id124"} a#0 != null;
    assert {:id "id125"} a#0 != null;
    assert {:id "id126"} {:subsumption 0} 0 <= i#0 && i#0 <= _System.array.Length(a#0);
    assert {:id "id127"} a#0 != null;
    assert {:id "id128"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assert {:id "id129"} a#0 != null;
    assert {:id "id130"} {:subsumption 0} 0 <= i#0 + 1 && i#0 + 1 <= _System.array.Length(a#0);
    assert {:id "id131"} {:subsumption 0} i#0 + 1 <= j#0 && j#0 <= _System.array.Length(a#0);
    assert {:id "id132"} a#0 != null;
    assert {:id "id133"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id134"} a#0 != null;
    assert {:id "id135"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= _System.array.Length(a#0);
    assume true;
    assert {:id "id136"} Seq#Equal(Seq#FromArray($Heap, a#0), 
      Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Take(Seq#FromArray($Heap, a#0), i#0), 
              Seq#Build(Seq#Empty(): Seq, read($Heap, a#0, IndexField(i#0)))), 
            Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), j#0), i#0 + 1)), 
          Seq#Build(Seq#Empty(): Seq, read($Heap, a#0, IndexField(j#0)))), 
        Seq#Drop(Seq#FromArray($Heap, a#0), j#0 + 1)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(70,4)
    assert {:id "id137"} a#0 != null;
    assert {:id "id138"} {:subsumption 0} 0 <= i#0 && i#0 <= _System.array.Length(a#0);
    assert {:id "id139"} a#0 != null;
    assert {:id "id140"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id141"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assert {:id "id142"} a#0 != null;
    assert {:id "id143"} {:subsumption 0} 0 <= i#0 + 1 && i#0 + 1 <= _System.array.Length(a#0);
    assert {:id "id144"} {:subsumption 0} i#0 + 1 <= j#0 && j#0 <= _System.array.Length(a#0);
    assert {:id "id145"} a#0 != null;
    assert {:id "id146"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id147"} {:subsumption 0} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id148"} a#0 != null;
    assert {:id "id149"} {:subsumption 0} 0 <= j#0 + 1 && j#0 + 1 <= _System.array.Length(a#0);
    assume true;
    assert {:id "id150"} Seq#Equal(s#0, 
      Seq#Append(Seq#Append(Seq#Append(Seq#Append(Seq#Take(Seq#FromArray($Heap, a#0), i#0), 
              Seq#Build(Seq#Empty(): Seq, read(old($Heap), a#0, IndexField(i#0)))), 
            Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), j#0), i#0 + 1)), 
          Seq#Build(Seq#Empty(): Seq, read(old($Heap), a#0, IndexField(j#0)))), 
        Seq#Drop(Seq#FromArray($Heap, a#0), j#0 + 1)));
}



procedure {:verboseName "test8 (well-formedness)"} CheckWellFormed$$_module.__default.test8(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test8 (well-formedness)"} CheckWellFormed$$_module.__default.test8(a#0: ref, i#0: int, j#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;


    // AddMethodImpl: test8, CheckWellFormed$$_module.__default.test8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    if (LitInt(0) <= i#0)
    {
    }

    if (LitInt(0) <= i#0 && i#0 < j#0)
    {
        assert {:id "id151"} a#0 != null;
    }

    assume {:id "id152"} LitInt(0) <= i#0 && i#0 < j#0 && j#0 < _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id153"} a#0 != null;
    assert {:id "id154"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id155"} a#0 != null;
    assume {:id "id156"} MultiSet#Equal(MultiSet#FromSeq(Seq#FromArray(old($Heap), a#0)), 
      MultiSet#FromSeq(Seq#FromArray($Heap, a#0)));
    assert {:id "id157"} a#0 != null;
    assert {:id "id158"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id159"} a#0 != null;
    assert {:id "id160"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id161"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume {:id "id162"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
       == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
    assert {:id "id163"} a#0 != null;
    assert {:id "id164"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assert {:id "id165"} a#0 != null;
    assert {:id "id166"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id167"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume {:id "id168"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
       == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
    havoc k#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
            assert {:id "id169"} a#0 != null;
        }

        assume {:id "id170"} LitInt(0) <= k#0 && k#0 < _System.array.Length(a#0);
        assume {:id "id171"} !(k#0 == i#0 || k#0 == j#0);
        assert {:id "id172"} a#0 != null;
        assert {:id "id173"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
        assert {:id "id174"} a#0 != null;
        assert {:id "id175"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id176"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
        assume {:id "id177"} $Unbox(read($Heap, a#0, IndexField(k#0))): int
           == $Unbox(read(old($Heap), a#0, IndexField(k#0))): int;
    }
    else
    {
        assume {:id "id178"} LitInt(0) <= k#0
             && k#0 < _System.array.Length(a#0)
             && !(k#0 == i#0 || k#0 == j#0)
           ==> $Unbox(read($Heap, a#0, IndexField(k#0))): int
             == $Unbox(read(old($Heap), a#0, IndexField(k#0))): int;
    }

    assume {:id "id179"} (forall k#1: int :: 
      { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
        { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
      LitInt(0) <= k#1
           && k#1 < _System.array.Length(a#0)
           && !(k#1 == i#0 || k#1 == j#0)
         ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
           == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
}



procedure {:verboseName "test8 (call)"} Call$$_module.__default.test8(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int);
  // user-defined preconditions
  requires {:id "id180"} LitInt(0) <= i#0;
  requires {:id "id181"} i#0 < j#0;
  requires {:id "id182"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id183"} MultiSet#Equal(MultiSet#FromSeq(Seq#FromArray(old($Heap), a#0)), 
    MultiSet#FromSeq(Seq#FromArray($Heap, a#0)));
  free ensures true;
  ensures {:id "id184"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
  ensures {:id "id185"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
  free ensures true;
  ensures {:id "id186"} (forall k#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
         && k#1 < _System.array.Length(a#0)
         && !(k#1 == i#0 || k#1 == j#0)
       ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
         == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test8 (correctness)"} Impl$$_module.__default.test8(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id187"} LitInt(0) <= i#0;
  requires {:id "id188"} i#0 < j#0;
  requires {:id "id189"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id190"} MultiSet#Equal(MultiSet#FromSeq(Seq#FromArray(old($Heap), a#0)), 
    MultiSet#FromSeq(Seq#FromArray($Heap, a#0)));
  free ensures true;
  ensures {:id "id191"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
  ensures {:id "id192"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
  free ensures true;
  ensures {:id "id193"} (forall k#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1
         && k#1 < _System.array.Length(a#0)
         && !(k#1 == i#0 || k#1 == j#0)
       ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
         == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test8 (correctness)"} Impl$$_module.__default.test8(a#0: ref, i#0: int, j#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $index0: Field;
  var $obj1: ref;
  var $index1: Field;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: test8, Impl$$_module.__default.test8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(79,15)
    assert {:id "id194"} a#0 != null;
    assert {:id "id195"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(i#0);
    assert {:id "id196"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id197"} a#0 != null;
    assert {:id "id198"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $obj1 := a#0;
    $index1 := IndexField(j#0);
    assert {:id "id199"} $_ModifiesFrame[$obj1, $index1];
    assert {:id "id200"} a#0 != null;
    assert {:id "id201"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $rhs#0 := $Unbox(read($Heap, a#0, IndexField(j#0))): int;
    assert {:id "id203"} a#0 != null;
    assert {:id "id204"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $rhs#1 := $Unbox(read($Heap, a#0, IndexField(i#0))): int;
    assert {:id "id206"} a#0 != a#0 || j#0 != i#0 || $Box($rhs#1) == $Box($rhs#0);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "test9 (well-formedness)"} CheckWellFormed$$_module.__default.test9(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int, 
    limit#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test9 (well-formedness)"} CheckWellFormed$$_module.__default.test9(a#0: ref, i#0: int, j#0: int, limit#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;


    // AddMethodImpl: test9, CheckWellFormed$$_module.__default.test9
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    if (LitInt(0) <= i#0)
    {
    }

    if (LitInt(0) <= i#0 && i#0 < j#0)
    {
    }

    if (LitInt(0) <= i#0 && i#0 < j#0 && j#0 < limit#0)
    {
        assert {:id "id209"} a#0 != null;
    }

    assume {:id "id210"} LitInt(0) <= i#0
       && i#0 < j#0
       && j#0 < limit#0
       && limit#0 <= _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id211"} a#0 != null;
    assert {:id "id212"} 0 <= LitInt(0) && LitInt(0) <= _System.array.Length(a#0);
    assert {:id "id213"} LitInt(0) <= limit#0 && limit#0 <= _System.array.Length(a#0);
    assert {:id "id214"} a#0 != null;
    assert {:id "id215"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id216"} 0 <= LitInt(0) && LitInt(0) <= _System.array.Length(a#0);
    assert {:id "id217"} LitInt(0) <= limit#0 && limit#0 <= _System.array.Length(a#0);
    assume {:id "id218"} MultiSet#Equal(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), limit#0), LitInt(0))), 
      MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray(old($Heap), a#0), limit#0), LitInt(0))));
    assert {:id "id219"} a#0 != null;
    assert {:id "id220"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assert {:id "id221"} a#0 != null;
    assert {:id "id222"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id223"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume {:id "id224"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
       == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
    assert {:id "id225"} a#0 != null;
    assert {:id "id226"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assert {:id "id227"} a#0 != null;
    assert {:id "id228"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id229"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume {:id "id230"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
       == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
    havoc k#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= k#0)
        {
        }

        assume {:id "id231"} LitInt(0) <= k#0 && k#0 < limit#0;
        assume {:id "id232"} !(k#0 == i#0 || k#0 == j#0);
        assert {:id "id233"} a#0 != null;
        assert {:id "id234"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
        assert {:id "id235"} a#0 != null;
        assert {:id "id236"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id237"} 0 <= k#0 && k#0 < _System.array.Length(a#0);
        assume {:id "id238"} $Unbox(read($Heap, a#0, IndexField(k#0))): int
           == $Unbox(read(old($Heap), a#0, IndexField(k#0))): int;
    }
    else
    {
        assume {:id "id239"} LitInt(0) <= k#0 && k#0 < limit#0 && !(k#0 == i#0 || k#0 == j#0)
           ==> $Unbox(read($Heap, a#0, IndexField(k#0))): int
             == $Unbox(read(old($Heap), a#0, IndexField(k#0))): int;
    }

    assume {:id "id240"} (forall k#1: int :: 
      { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
        { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
      LitInt(0) <= k#1 && k#1 < limit#0 && !(k#1 == i#0 || k#1 == j#0)
         ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
           == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
}



procedure {:verboseName "test9 (call)"} Call$$_module.__default.test9(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int, 
    limit#0: int);
  // user-defined preconditions
  requires {:id "id241"} LitInt(0) <= i#0;
  requires {:id "id242"} i#0 < j#0;
  requires {:id "id243"} j#0 < limit#0;
  requires {:id "id244"} limit#0 <= _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id245"} MultiSet#Equal(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), limit#0), LitInt(0))), 
    MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray(old($Heap), a#0), limit#0), LitInt(0))));
  free ensures true;
  ensures {:id "id246"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
  ensures {:id "id247"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
  free ensures true;
  ensures {:id "id248"} (forall k#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1 && k#1 < limit#0 && !(k#1 == i#0 || k#1 == j#0)
       ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
         == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test9 (correctness)"} Impl$$_module.__default.test9(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int, 
    j#0: int, 
    limit#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id249"} LitInt(0) <= i#0;
  requires {:id "id250"} i#0 < j#0;
  requires {:id "id251"} j#0 < limit#0;
  requires {:id "id252"} limit#0 <= _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id253"} MultiSet#Equal(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), limit#0), LitInt(0))), 
    MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray(old($Heap), a#0), limit#0), LitInt(0))));
  free ensures true;
  ensures {:id "id254"} $Unbox(read($Heap, a#0, IndexField(j#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(i#0))): int;
  ensures {:id "id255"} $Unbox(read($Heap, a#0, IndexField(i#0))): int
     == $Unbox(read(old($Heap), a#0, IndexField(j#0))): int;
  free ensures true;
  ensures {:id "id256"} (forall k#1: int :: 
    { $Unbox(read(old($Heap), a#0, IndexField(k#1))): int } 
      { $Unbox(read($Heap, a#0, IndexField(k#1))): int } 
    LitInt(0) <= k#1 && k#1 < limit#0 && !(k#1 == i#0 || k#1 == j#0)
       ==> $Unbox(read($Heap, a#0, IndexField(k#1))): int
         == $Unbox(read(old($Heap), a#0, IndexField(k#1))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test9 (correctness)"} Impl$$_module.__default.test9(a#0: ref, i#0: int, j#0: int, limit#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $index0: Field;
  var $obj1: ref;
  var $index1: Field;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: test9, Impl$$_module.__default.test9
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(88,15)
    assert {:id "id257"} a#0 != null;
    assert {:id "id258"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(i#0);
    assert {:id "id259"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id260"} a#0 != null;
    assert {:id "id261"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $obj1 := a#0;
    $index1 := IndexField(j#0);
    assert {:id "id262"} $_ModifiesFrame[$obj1, $index1];
    assert {:id "id263"} a#0 != null;
    assert {:id "id264"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $rhs#0 := $Unbox(read($Heap, a#0, IndexField(j#0))): int;
    assert {:id "id266"} a#0 != null;
    assert {:id "id267"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $rhs#1 := $Unbox(read($Heap, a#0, IndexField(i#0))): int;
    assert {:id "id269"} a#0 != a#0 || j#0 != i#0 || $Box($rhs#1) == $Box($rhs#0);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "test10 (well-formedness)"} CheckWellFormed$$_module.__default.test10(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test10 (call)"} Call$$_module.__default.test10(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id273"} Seq#Length(s#0) > 4;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test10 (correctness)"} Impl$$_module.__default.test10(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id274"} Seq#Length(s#0) > 4;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test10 (correctness)"} Impl$$_module.__default.test10(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: test10, Impl$$_module.__default.test10
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(93,4)
    assert {:id "id275"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < Seq#Length(s#0);
    assert {:id "id276"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < Seq#Length(s#0);
    assume true;
    assert {:id "id277"} MultiSet#Equal(MultiSet#FromSeq(Seq#Update(s#0, LitInt(3), $Box(LitInt(2)))), 
      MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s#0), 
          MultiSet#UnionOne(MultiSet#Empty(): MultiSet, Seq#Index(s#0, LitInt(3)))), 
        MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(2)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(94,4)
    assert {:id "id278"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assert {:id "id279"} {:subsumption 0} 0 <= LitInt(3)
       && LitInt(3) < Seq#Length(Seq#Update(s#0, LitInt(2), $Box(LitInt(1))));
    assert {:id "id280"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assert {:id "id281"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < Seq#Length(s#0);
    assume true;
    assert {:id "id282"} MultiSet#Equal(MultiSet#FromSeq(Seq#Update(Seq#Update(s#0, LitInt(2), $Box(LitInt(1))), LitInt(3), $Box(LitInt(2)))), 
      MultiSet#Union(MultiSet#Difference(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s#0), 
              MultiSet#UnionOne(MultiSet#Empty(): MultiSet, Seq#Index(s#0, LitInt(2)))), 
            MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(1)))), 
          MultiSet#UnionOne(MultiSet#Empty(): MultiSet, Seq#Index(s#0, LitInt(3)))), 
        MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(LitInt(2)))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(95,4)
    assert {:id "id283"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assert {:id "id284"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < Seq#Length(s#0);
    assert {:id "id285"} {:subsumption 0} 0 <= LitInt(3)
       && LitInt(3) < Seq#Length(Seq#Update(s#0, LitInt(2), Seq#Index(s#0, LitInt(3))));
    assert {:id "id286"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assert {:id "id287"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assert {:id "id288"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < Seq#Length(s#0);
    assert {:id "id289"} {:subsumption 0} 0 <= LitInt(3) && LitInt(3) < Seq#Length(s#0);
    assert {:id "id290"} {:subsumption 0} 0 <= LitInt(2) && LitInt(2) < Seq#Length(s#0);
    assume true;
    assert {:id "id291"} MultiSet#Equal(MultiSet#FromSeq(Seq#Update(Seq#Update(s#0, LitInt(2), Seq#Index(s#0, LitInt(3))), 
          LitInt(3), 
          Seq#Index(s#0, LitInt(2)))), 
      MultiSet#Union(MultiSet#Difference(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s#0), 
              MultiSet#UnionOne(MultiSet#Empty(): MultiSet, Seq#Index(s#0, LitInt(2)))), 
            MultiSet#UnionOne(MultiSet#Empty(): MultiSet, Seq#Index(s#0, LitInt(3)))), 
          MultiSet#UnionOne(MultiSet#Empty(): MultiSet, Seq#Index(s#0, LitInt(3)))), 
        MultiSet#UnionOne(MultiSet#Empty(): MultiSet, Seq#Index(s#0, LitInt(2)))));
}



procedure {:verboseName "test11 (well-formedness)"} CheckWellFormed$$_module.__default.test11(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int, 
    c#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test11 (well-formedness)"} CheckWellFormed$$_module.__default.test11(a#0: ref, n#0: int, c#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: test11, CheckWellFormed$$_module.__default.test11
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    if (LitInt(0) <= c#0)
    {
    }

    if (LitInt(0) <= c#0 && c#0 < n#0)
    {
        assert {:id "id292"} a#0 != null;
    }

    assume {:id "id293"} LitInt(0) <= c#0 && c#0 < n#0 && n#0 <= _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    assert {:id "id294"} a#0 != null;
    assert {:id "id295"} 0 <= c#0 && c#0 <= _System.array.Length(a#0);
    assert {:id "id296"} c#0 <= n#0 - 1 && n#0 - 1 <= _System.array.Length(a#0);
    assert {:id "id297"} a#0 != null;
    assert {:id "id298"} 0 <= c#0 && c#0 <= _System.array.Length(a#0);
    assert {:id "id299"} c#0 <= n#0 && n#0 <= _System.array.Length(a#0);
    assert {:id "id300"} a#0 != null;
    assert {:id "id301"} 0 <= n#0 - 1 && n#0 - 1 < _System.array.Length(a#0);
    assume {:id "id302"} MultiSet#Equal(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0 - 1), c#0)), 
      MultiSet#Difference(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0), c#0)), 
        MultiSet#UnionOne(MultiSet#Empty(): MultiSet, read($Heap, a#0, IndexField(n#0 - 1)))));
}



procedure {:verboseName "test11 (call)"} Call$$_module.__default.test11(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int, 
    c#0: int);
  // user-defined preconditions
  requires {:id "id303"} LitInt(0) <= c#0;
  requires {:id "id304"} c#0 < n#0;
  requires {:id "id305"} n#0 <= _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id306"} MultiSet#Equal(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0 - 1), c#0)), 
    MultiSet#Difference(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0), c#0)), 
      MultiSet#UnionOne(MultiSet#Empty(): MultiSet, read($Heap, a#0, IndexField(n#0 - 1)))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test11 (correctness)"} Impl$$_module.__default.test11(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int, 
    c#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id307"} LitInt(0) <= c#0;
  requires {:id "id308"} c#0 < n#0;
  requires {:id "id309"} n#0 <= _System.array.Length(a#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id310"} MultiSet#Equal(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0 - 1), c#0)), 
    MultiSet#Difference(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0), c#0)), 
      MultiSet#UnionOne(MultiSet#Empty(): MultiSet, read($Heap, a#0, IndexField(n#0 - 1)))));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test11 (correctness)"} Impl$$_module.__default.test11(a#0: ref, n#0: int, c#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: test11, Impl$$_module.__default.test11
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(103,3)
    assert {:id "id311"} a#0 != null;
    assert {:id "id312"} {:subsumption 0} 0 <= c#0 && c#0 <= _System.array.Length(a#0);
    assert {:id "id313"} {:subsumption 0} c#0 <= n#0 - 1 && n#0 - 1 <= _System.array.Length(a#0);
    assert {:id "id314"} a#0 != null;
    assert {:id "id315"} {:subsumption 0} 0 <= n#0 - 1 && n#0 - 1 < _System.array.Length(a#0);
    assert {:id "id316"} a#0 != null;
    assert {:id "id317"} {:subsumption 0} 0 <= c#0 && c#0 <= _System.array.Length(a#0);
    assert {:id "id318"} {:subsumption 0} c#0 <= n#0 && n#0 <= _System.array.Length(a#0);
    assume true;
    assert {:id "id319"} Seq#Equal(Seq#Append(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0 - 1), c#0), 
        Seq#Build(Seq#Empty(): Seq, read($Heap, a#0, IndexField(n#0 - 1)))), 
      Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0), c#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(104,3)
    assert {:id "id320"} a#0 != null;
    assert {:id "id321"} {:subsumption 0} 0 <= c#0 && c#0 <= _System.array.Length(a#0);
    assert {:id "id322"} {:subsumption 0} c#0 <= n#0 - 1 && n#0 - 1 <= _System.array.Length(a#0);
    assert {:id "id323"} a#0 != null;
    assert {:id "id324"} {:subsumption 0} 0 <= n#0 - 1 && n#0 - 1 < _System.array.Length(a#0);
    assert {:id "id325"} a#0 != null;
    assert {:id "id326"} {:subsumption 0} 0 <= c#0 && c#0 <= _System.array.Length(a#0);
    assert {:id "id327"} {:subsumption 0} c#0 <= n#0 && n#0 <= _System.array.Length(a#0);
    assume true;
    assert {:id "id328"} MultiSet#Equal(MultiSet#Union(MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0 - 1), c#0)), 
        MultiSet#FromSeq(Seq#Build(Seq#Empty(): Seq, read($Heap, a#0, IndexField(n#0 - 1))))), 
      MultiSet#FromSeq(Seq#Drop(Seq#Take(Seq#FromArray($Heap, a#0), n#0), c#0)));
}



procedure {:verboseName "test12 (well-formedness)"} CheckWellFormed$$_module.__default.test12(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0, c#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "test12 (call)"} Call$$_module.__default.test12(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0, c#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "test12 (correctness)"} Impl$$_module.__default.test12(a#0: int where LitInt(0) <= a#0, b#0: int where LitInt(0) <= b#0, c#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "test12 (correctness)"} Impl$$_module.__default.test12(a#0: int, b#0: int, c#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m0#0: MultiSet
     where $Is(m0#0, TMultiSet(TBool)) && $IsAlloc(m0#0, TMultiSet(TBool), $Heap);
  var m1#0: MultiSet
     where $Is(m1#0, TMultiSet(TBool)) && $IsAlloc(m1#0, TMultiSet(TBool), $Heap);
  var m2#0: MultiSet
     where $Is(m2#0, TMultiSet(TBool)) && $IsAlloc(m2#0, TMultiSet(TBool), $Heap);

    // AddMethodImpl: test12, Impl$$_module.__default.test12
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc m0#0 /* where $Is(m0#0, TMultiSet(TBool)) && $IsAlloc(m0#0, TMultiSet(TBool), $Heap) */, m1#0 /* where $Is(m1#0, TMultiSet(TBool)) && $IsAlloc(m1#0, TMultiSet(TBool), $Heap) */, m2#0 /* where $Is(m2#0, TMultiSet(TBool)) && $IsAlloc(m2#0, TMultiSet(TBool), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(172,6)
    assume true;
    assume true;
    m0#0 := Lit(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(Lit(false))), $Box(Lit(true))), 
        $Box(Lit(true))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(173,6)
    assume true;
    assert {:id "id330"} 0 <= a#0;
    assume true;
    m1#0 := MultiSet#UpdateMultiplicity(Lit(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(Lit(true)))), 
      $Box(Lit(false)), 
      a#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(174,6)
    assume true;
    assert {:id "id332"} 0 <= b#0;
    assume true;
    m2#0 := MultiSet#UpdateMultiplicity(Lit(MultiSet#Empty(): MultiSet), $Box(Lit(false)), b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(175,3)
    assume true;
    assert {:id "id334"} MultiSet#Multiplicity(MultiSet#Union(MultiSet#Union(m0#0, m1#0), m2#0), $Box(Lit(true)))
       == LitInt(3);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(176,3)
    if (a#0 <= b#0)
    {
    }
    else
    {
    }

    assume true;
    assert {:id "id335"} MultiSet#Multiplicity(MultiSet#Intersection(m1#0, m2#0), $Box(Lit(false)))
       == (if a#0 <= b#0 then a#0 else b#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(177,6)
    assume true;
    assert {:id "id336"} 0 <= c#0;
    assume true;
    m2#0 := MultiSet#UpdateMultiplicity(m2#0, $Box(Lit(true)), c#0);
}



procedure {:verboseName "MultisetCardinalityA (well-formedness)"} CheckWellFormed$$_module.__default.MultisetCardinalityA(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetCardinalityA (call)"} Call$$_module.__default.MultisetCardinalityA(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id339"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetCardinalityA (correctness)"} Impl$$_module.__default.MultisetCardinalityA(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id340"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetCardinalityA (correctness)"} Impl$$_module.__default.MultisetCardinalityA(s#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0_0: int;
  var y#0_1: int;
  var x#1_0: int;

    // AddMethodImpl: MultisetCardinalityA, Impl$$_module.__default.MultisetCardinalityA
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(185,3)
    if (*)
    {
        assume true;
        assume {:id "id349"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(186,19)
        assume true;
        assert {:id "id350"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id347"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(187,19)
        assume true;
        assert {:id "id348"} MultiSet#Card(s#0) != 0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id345"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(188,19)
        // Begin Comprehension WF check
        havoc x#1_0;
        if (true)
        {
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id346"} (exists x#1_1: int :: 
          { MultiSet#Multiplicity(s#0, $Box(x#1_1)) } 
          MultiSet#Multiplicity(s#0, $Box(x#1_1)) > 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id342"} true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(189,25)
        havoc y#0_1;
        if (true)
        {
            assume true;
        }

        assert {:id "id343"} ($Is(LitInt(0), TInt) && MultiSet#Multiplicity(s#0, $Box(LitInt(0))) > 0)
           || (exists $as#y0_0#0_0: int :: MultiSet#Multiplicity(s#0, $Box($as#y0_0#0_0)) > 0);
        havoc y#0_0;
        assume {:id "id344"} MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id341"} false;
    }
}



procedure {:verboseName "MultisetCardinalityB (well-formedness)"} CheckWellFormed$$_module.__default.MultisetCardinalityB(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetCardinalityB (call)"} Call$$_module.__default.MultisetCardinalityB(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id352"} MultiSet#Card(s#0) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetCardinalityB (correctness)"} Impl$$_module.__default.MultisetCardinalityB(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id353"} MultiSet#Card(s#0) != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetCardinalityB (correctness)"} Impl$$_module.__default.MultisetCardinalityB(s#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0_0: int;
  var y#0_1: int;
  var x#1_0: int;

    // AddMethodImpl: MultisetCardinalityB, Impl$$_module.__default.MultisetCardinalityB
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(196,3)
    if (*)
    {
        assume true;
        assume {:id "id362"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(197,19)
        assume true;
        assert {:id "id363"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id360"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(198,19)
        assume true;
        assert {:id "id361"} MultiSet#Card(s#0) != 0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id358"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(199,19)
        // Begin Comprehension WF check
        havoc x#1_0;
        if (true)
        {
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id359"} (exists x#1_1: int :: 
          { MultiSet#Multiplicity(s#0, $Box(x#1_1)) } 
          MultiSet#Multiplicity(s#0, $Box(x#1_1)) > 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id355"} true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(200,25)
        havoc y#0_1;
        if (true)
        {
            assume true;
        }

        assert {:id "id356"} ($Is(LitInt(0), TInt) && MultiSet#Multiplicity(s#0, $Box(LitInt(0))) > 0)
           || (exists $as#y0_0#0_0: int :: MultiSet#Multiplicity(s#0, $Box($as#y0_0#0_0)) > 0);
        havoc y#0_0;
        assume {:id "id357"} MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id354"} false;
    }
}



procedure {:verboseName "MultisetCardinalityC (well-formedness)"} CheckWellFormed$$_module.__default.MultisetCardinalityC(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetCardinalityC (call)"} Call$$_module.__default.MultisetCardinalityC(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id365"} (exists x#1: int :: 
    { MultiSet#Multiplicity(s#0, $Box(x#1)) } 
    MultiSet#Multiplicity(s#0, $Box(x#1)) > 0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetCardinalityC (correctness)"} Impl$$_module.__default.MultisetCardinalityC(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id366"} (exists x#1: int :: 
    { MultiSet#Multiplicity(s#0, $Box(x#1)) } 
    MultiSet#Multiplicity(s#0, $Box(x#1)) > 0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetCardinalityC (correctness)"} Impl$$_module.__default.MultisetCardinalityC(s#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0_0: int;
  var y#0_1: int;
  var x#1_0: int;

    // AddMethodImpl: MultisetCardinalityC, Impl$$_module.__default.MultisetCardinalityC
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(207,3)
    if (*)
    {
        assume true;
        assume {:id "id375"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(208,19)
        assume true;
        assert {:id "id376"} !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id373"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(209,19)
        assume true;
        assert {:id "id374"} MultiSet#Card(s#0) != 0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id371"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(210,19)
        // Begin Comprehension WF check
        havoc x#1_0;
        if (true)
        {
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id372"} (exists x#1_1: int :: 
          { MultiSet#Multiplicity(s#0, $Box(x#1_1)) } 
          MultiSet#Multiplicity(s#0, $Box(x#1_1)) > 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id368"} true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(211,25)
        havoc y#0_1;
        if (true)
        {
            assume true;
        }

        assert {:id "id369"} ($Is(LitInt(0), TInt) && MultiSet#Multiplicity(s#0, $Box(LitInt(0))) > 0)
           || (exists $as#y0_0#0_0: int :: MultiSet#Multiplicity(s#0, $Box($as#y0_0#0_0)) > 0);
        havoc y#0_0;
        assume {:id "id370"} MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id367"} false;
    }
}



procedure {:verboseName "MultisetCardinalityA' (well-formedness)"} CheckWellFormed$$_module.__default.MultisetCardinalityA_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetCardinalityA' (call)"} Call$$_module.__default.MultisetCardinalityA_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id378"} MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetCardinalityA' (correctness)"} Impl$$_module.__default.MultisetCardinalityA_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id379"} MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetCardinalityA' (correctness)"} Impl$$_module.__default.MultisetCardinalityA_k(s#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0_0: int;
  var y#0_1: int;
  var x#1_0: int;

    // AddMethodImpl: MultisetCardinalityA', Impl$$_module.__default.MultisetCardinalityA_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(218,3)
    if (*)
    {
        assume true;
        assume {:id "id388"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(219,19)
        assume true;
        assert {:id "id389"} MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id386"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(220,19)
        assume true;
        assert {:id "id387"} MultiSet#Card(s#0) == LitInt(0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id384"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(221,19)
        // Begin Comprehension WF check
        havoc x#1_0;
        if (true)
        {
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id385"} !(exists x#1_1: int :: 
          { MultiSet#Multiplicity(s#0, $Box(x#1_1)) } 
          MultiSet#Multiplicity(s#0, $Box(x#1_1)) > 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id381"} true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(222,25)
        havoc y#0_1;
        if (true)
        {
            assume true;
        }

        assert {:id "id382"} ($Is(LitInt(0), TInt) && !(MultiSet#Multiplicity(s#0, $Box(LitInt(0))) > 0))
           || (exists $as#y0_0#0_0: int :: 
            !(MultiSet#Multiplicity(s#0, $Box($as#y0_0#0_0)) > 0));
        havoc y#0_0;
        assume {:id "id383"} !(MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id380"} false;
    }
}



procedure {:verboseName "MultisetCardinalityB' (well-formedness)"} CheckWellFormed$$_module.__default.MultisetCardinalityB_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetCardinalityB' (call)"} Call$$_module.__default.MultisetCardinalityB_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id391"} MultiSet#Card(s#0) == LitInt(0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetCardinalityB' (correctness)"} Impl$$_module.__default.MultisetCardinalityB_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id392"} MultiSet#Card(s#0) == LitInt(0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetCardinalityB' (correctness)"} Impl$$_module.__default.MultisetCardinalityB_k(s#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0_0: int;
  var y#0_1: int;
  var x#1_0: int;

    // AddMethodImpl: MultisetCardinalityB', Impl$$_module.__default.MultisetCardinalityB_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(229,3)
    if (*)
    {
        assume true;
        assume {:id "id401"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(230,19)
        assume true;
        assert {:id "id402"} MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id399"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(231,19)
        assume true;
        assert {:id "id400"} MultiSet#Card(s#0) == LitInt(0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id397"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(232,19)
        // Begin Comprehension WF check
        havoc x#1_0;
        if (true)
        {
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id398"} !(exists x#1_1: int :: 
          { MultiSet#Multiplicity(s#0, $Box(x#1_1)) } 
          MultiSet#Multiplicity(s#0, $Box(x#1_1)) > 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id394"} true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(233,25)
        havoc y#0_1;
        if (true)
        {
            assume true;
        }

        assert {:id "id395"} ($Is(LitInt(0), TInt) && !(MultiSet#Multiplicity(s#0, $Box(LitInt(0))) > 0))
           || (exists $as#y0_0#0_0: int :: 
            !(MultiSet#Multiplicity(s#0, $Box($as#y0_0#0_0)) > 0));
        havoc y#0_0;
        assume {:id "id396"} !(MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id393"} false;
    }
}



procedure {:verboseName "MultisetCardinalityC' (well-formedness)"} CheckWellFormed$$_module.__default.MultisetCardinalityC_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetCardinalityC' (call)"} Call$$_module.__default.MultisetCardinalityC_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id405"} (forall x#1: int :: 
    { MultiSet#Multiplicity(s#0, $Box(x#1)) } 
    !(MultiSet#Multiplicity(s#0, $Box(x#1)) > 0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetCardinalityC' (correctness)"} Impl$$_module.__default.MultisetCardinalityC_k(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id406"} (forall x#1: int :: 
    { MultiSet#Multiplicity(s#0, $Box(x#1)) } 
    !(MultiSet#Multiplicity(s#0, $Box(x#1)) > 0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetCardinalityC' (correctness)"} Impl$$_module.__default.MultisetCardinalityC_k(s#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var y#0_0: int;
  var y#0_1: int;
  var x#1_0: int;

    // AddMethodImpl: MultisetCardinalityC', Impl$$_module.__default.MultisetCardinalityC_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(240,3)
    if (*)
    {
        assume true;
        assume {:id "id415"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(241,19)
        assume true;
        assert {:id "id416"} MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet);
    }
    else if (*)
    {
        assume true;
        assume {:id "id413"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(242,19)
        assume true;
        assert {:id "id414"} MultiSet#Card(s#0) == LitInt(0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id411"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(243,19)
        // Begin Comprehension WF check
        havoc x#1_0;
        if (true)
        {
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id412"} !(exists x#1_1: int :: 
          { MultiSet#Multiplicity(s#0, $Box(x#1_1)) } 
          MultiSet#Multiplicity(s#0, $Box(x#1_1)) > 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id408"} true;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(244,25)
        havoc y#0_1;
        if (true)
        {
            assume true;
        }

        assert {:id "id409"} ($Is(LitInt(0), TInt) && !(MultiSet#Multiplicity(s#0, $Box(LitInt(0))) > 0))
           || (exists $as#y0_0#0_0: int :: 
            !(MultiSet#Multiplicity(s#0, $Box($as#y0_0#0_0)) > 0));
        havoc y#0_0;
        assume {:id "id410"} !(MultiSet#Multiplicity(s#0, $Box(y#0_0)) > 0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id407"} false;
    }
}



procedure {:verboseName "LetSuchThatExpression (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThatExpression(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function $let#0_x(s: MultiSet) : int;

function $let#0$canCall(s: MultiSet) : bool;

axiom (forall s: MultiSet :: 
  { $let#0_x(s) } 
  $let#0$canCall(s) ==> MultiSet#Multiplicity(s, $Box($let#0_x(s))) > 0);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThatExpression (well-formedness)"} CheckWellFormed$$_module.__default.LetSuchThatExpression(s#0: MultiSet)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;


    // AddMethodImpl: LetSuchThatExpression, CheckWellFormed$$_module.__default.LetSuchThatExpression
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    if (*)
    {
        assume {:id "id417"} MultiSet#Card(s#0) != 0;
        havoc x#0;
        if (true)
        {
        }

        assert {:id "id418"} ($Is(LitInt(0), TInt) && MultiSet#Multiplicity(s#0, $Box(LitInt(0))) > 0)
           || (exists x#1: int :: MultiSet#Multiplicity(s#0, $Box(x#1)) > 0);
        assume true;
        assume MultiSet#Multiplicity(s#0, $Box(x#0)) > 0;
        assume $let#0$canCall(s#0);
        assume {:id "id419"} (var x#1 := $let#0_x(s#0); Lit(true));
    }
    else
    {
        assume {:id "id420"} MultiSet#Card(s#0) != 0 ==> (var x#1 := $let#0_x(s#0); Lit(true));
    }
}



procedure {:verboseName "LetSuchThatExpression (call)"} Call$$_module.__default.LetSuchThatExpression(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures MultiSet#Card(s#0) != 0 ==> $let#0$canCall(s#0);
  ensures {:id "id421"} MultiSet#Card(s#0) != 0 ==> (var x#1 := $let#0_x(s#0); Lit(true));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LetSuchThatExpression (correctness)"} Impl$$_module.__default.LetSuchThatExpression(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures MultiSet#Card(s#0) != 0 ==> $let#0$canCall(s#0);
  ensures {:id "id422"} MultiSet#Card(s#0) != 0 ==> (var x#1 := $let#0_x(s#0); Lit(true));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LetSuchThatExpression (correctness)"} Impl$$_module.__default.LetSuchThatExpression(s#0: MultiSet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LetSuchThatExpression, Impl$$_module.__default.LetSuchThatExpression
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "MultiSetProperty0 (well-formedness)"} CheckWellFormed$$_module.__default.MultiSetProperty0(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._System.object()))
         && $IsAlloc(s#0, TMultiSet(Tclass._System.object()), $Heap), 
    t#0: MultiSet
       where $Is(t#0, TMultiSet(Tclass._System.object()))
         && $IsAlloc(t#0, TMultiSet(Tclass._System.object()), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._System.object())
         && $IsAlloc(p#0, Tclass._System.object(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultiSetProperty0 (call)"} Call$$_module.__default.MultiSetProperty0(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._System.object()))
         && $IsAlloc(s#0, TMultiSet(Tclass._System.object()), $Heap), 
    t#0: MultiSet
       where $Is(t#0, TMultiSet(Tclass._System.object()))
         && $IsAlloc(t#0, TMultiSet(Tclass._System.object()), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._System.object())
         && $IsAlloc(p#0, Tclass._System.object(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultiSetProperty0 (correctness)"} Impl$$_module.__default.MultiSetProperty0(s#0: MultiSet
       where $Is(s#0, TMultiSet(Tclass._System.object()))
         && $IsAlloc(s#0, TMultiSet(Tclass._System.object()), $Heap), 
    t#0: MultiSet
       where $Is(t#0, TMultiSet(Tclass._System.object()))
         && $IsAlloc(t#0, TMultiSet(Tclass._System.object()), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._System.object())
         && $IsAlloc(p#0, Tclass._System.object(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultiSetProperty0 (correctness)"} Impl$$_module.__default.MultiSetProperty0(s#0: MultiSet, t#0: MultiSet, p#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MultiSetProperty0, Impl$$_module.__default.MultiSetProperty0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(257,3)
    assume true;
    if (0 < MultiSet#Multiplicity(s#0, $Box(p#0)))
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(258,5)
        assume true;
        assert {:id "id423"} 0 < MultiSet#Multiplicity(MultiSet#Union(s#0, t#0), $Box(p#0));
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(260,3)
    assume true;
    if (0 < MultiSet#Multiplicity(t#0, $Box(p#0)))
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(261,5)
        assume true;
        assert {:id "id424"} 0 < MultiSet#Multiplicity(MultiSet#Union(s#0, t#0), $Box(p#0));
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(263,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(264,5)
        assume true;
        assert {:id "id425"} MultiSet#Equal(MultiSet#Difference(MultiSet#Union(s#0, t#0), s#0), t#0);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(265,10)
        if (*)
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(266,5)
            assume true;
            assert {:id "id426"} MultiSet#Equal(MultiSet#Difference(MultiSet#Union(s#0, t#0), t#0), s#0);
        }
        else
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(268,5)
            assume true;
            assert {:id "id427"} MultiSet#Equal(MultiSet#Union(s#0, MultiSet#Difference(t#0, s#0)), t#0);
        }
    }
}



procedure {:verboseName "UpperBoundOnOccurrenceCount (well-formedness)"} CheckWellFormed$$_module.__default.UpperBoundOnOccurrenceCount(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UpperBoundOnOccurrenceCount (call)"} Call$$_module.__default.UpperBoundOnOccurrenceCount(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap), 
    x#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id429"} LitInt(0) <= MultiSet#Multiplicity(s#0, $Box(x#0));
  ensures {:id "id430"} MultiSet#Multiplicity(s#0, $Box(x#0)) <= MultiSet#Card(s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "UpperBoundOnOccurrenceCount (correctness)"} Impl$$_module.__default.UpperBoundOnOccurrenceCount(s#0: MultiSet
       where $Is(s#0, TMultiSet(TInt)) && $IsAlloc(s#0, TMultiSet(TInt), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id431"} LitInt(0) <= MultiSet#Multiplicity(s#0, $Box(x#0));
  ensures {:id "id432"} MultiSet#Multiplicity(s#0, $Box(x#0)) <= MultiSet#Card(s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpperBoundOnOccurrenceCount (correctness)"} Impl$$_module.__default.UpperBoundOnOccurrenceCount(s#0: MultiSet, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: UpperBoundOnOccurrenceCount, Impl$$_module.__default.UpperBoundOnOccurrenceCount
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "MultisetCardinalityFromSequenceLength (well-formedness)"} CheckWellFormed$$_module.__default.MultisetCardinalityFromSequenceLength(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetCardinalityFromSequenceLength (call)"} Call$$_module.__default.MultisetCardinalityFromSequenceLength(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id434"} MultiSet#Card(MultiSet#FromSeq(s#0)) == Seq#Length(s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "MultisetCardinalityFromSequenceLength (correctness)"} Impl$$_module.__default.MultisetCardinalityFromSequenceLength(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id435"} MultiSet#Card(MultiSet#FromSeq(s#0)) == Seq#Length(s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetCardinalityFromSequenceLength (correctness)"} Impl$$_module.__default.MultisetCardinalityFromSequenceLength(s#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MultisetCardinalityFromSequenceLength, Impl$$_module.__default.MultisetCardinalityFromSequenceLength
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Set_and_Multiset_Cardinalities (well-formedness)"} CheckWellFormed$$_module.__default.Set__and__Multiset__Cardinalities(x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Set_and_Multiset_Cardinalities (call)"} Call$$_module.__default.Set__and__Multiset__Cardinalities(x#0: int, y#0: int);
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Set_and_Multiset_Cardinalities (correctness)"} Impl$$_module.__default.Set__and__Multiset__Cardinalities(x#0: int, y#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Set_and_Multiset_Cardinalities (correctness)"} Impl$$_module.__default.Set__and__Multiset__Cardinalities(x#0: int, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Set_and_Multiset_Cardinalities, Impl$$_module.__default.Set__and__Multiset__Cardinalities
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(286,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(287,5)
        if (LitInt(1)
           <= Set#Card(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(y#0))))
        {
        }

        assume true;
        assert {:id "id436"} {:subsumption 0} LitInt(1)
           <= Set#Card(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(y#0)));
        assert {:id "id437"} {:subsumption 0} Set#Card(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(y#0)))
           <= LitInt(2);
        assume {:id "id438"} LitInt(1)
             <= Set#Card(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(y#0)))
           && Set#Card(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(y#0)))
             <= LitInt(2);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(288,5)
        assume true;
        if (x#0 != y#0)
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(289,7)
            assume true;
            assert {:id "id439"} LitInt(2)
               <= Set#Card(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(y#0)));
        }
        else
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(291,7)
            assume true;
            assert {:id "id440"} LitInt(2)
               <= Set#Card(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), $Box(y#0)));
        }
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(294,5)
        assume true;
        assert {:id "id441"} MultiSet#Card(MultiSet#UnionOne(MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $Box(x#0)), $Box(y#0)))
           == LitInt(2);
    }
}



const unique class._module.BoxTests?: ClassName;

function Tclass._module.BoxTests?(Ty) : Ty;

const unique Tagclass._module.BoxTests?: TyTag;

// Tclass._module.BoxTests? Tag
axiom (forall _module.BoxTests$G: Ty :: 
  { Tclass._module.BoxTests?(_module.BoxTests$G) } 
  Tag(Tclass._module.BoxTests?(_module.BoxTests$G)) == Tagclass._module.BoxTests?
     && TagFamily(Tclass._module.BoxTests?(_module.BoxTests$G)) == tytagFamily$BoxTests);

function Tclass._module.BoxTests?_0(Ty) : Ty;

// Tclass._module.BoxTests? injectivity 0
axiom (forall _module.BoxTests$G: Ty :: 
  { Tclass._module.BoxTests?(_module.BoxTests$G) } 
  Tclass._module.BoxTests?_0(Tclass._module.BoxTests?(_module.BoxTests$G))
     == _module.BoxTests$G);

// Box/unbox axiom for Tclass._module.BoxTests?
axiom (forall _module.BoxTests$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.BoxTests?(_module.BoxTests$G)) } 
  $IsBox(bx, Tclass._module.BoxTests?(_module.BoxTests$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.BoxTests?(_module.BoxTests$G)));

// $Is axiom for class BoxTests
axiom (forall _module.BoxTests$G: Ty, $o: ref :: 
  { $Is($o, Tclass._module.BoxTests?(_module.BoxTests$G)) } 
  $Is($o, Tclass._module.BoxTests?(_module.BoxTests$G))
     <==> $o == null || dtype($o) == Tclass._module.BoxTests?(_module.BoxTests$G));

// $IsAlloc axiom for class BoxTests
axiom (forall _module.BoxTests$G: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.BoxTests?(_module.BoxTests$G), $h) } 
  $IsAlloc($o, Tclass._module.BoxTests?(_module.BoxTests$G), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.BoxTests(Ty) : Ty;

const unique Tagclass._module.BoxTests: TyTag;

// Tclass._module.BoxTests Tag
axiom (forall _module.BoxTests$G: Ty :: 
  { Tclass._module.BoxTests(_module.BoxTests$G) } 
  Tag(Tclass._module.BoxTests(_module.BoxTests$G)) == Tagclass._module.BoxTests
     && TagFamily(Tclass._module.BoxTests(_module.BoxTests$G)) == tytagFamily$BoxTests);

function Tclass._module.BoxTests_0(Ty) : Ty;

// Tclass._module.BoxTests injectivity 0
axiom (forall _module.BoxTests$G: Ty :: 
  { Tclass._module.BoxTests(_module.BoxTests$G) } 
  Tclass._module.BoxTests_0(Tclass._module.BoxTests(_module.BoxTests$G))
     == _module.BoxTests$G);

// Box/unbox axiom for Tclass._module.BoxTests
axiom (forall _module.BoxTests$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.BoxTests(_module.BoxTests$G)) } 
  $IsBox(bx, Tclass._module.BoxTests(_module.BoxTests$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.BoxTests(_module.BoxTests$G)));

procedure {:verboseName "BoxTests.LemmaSet0 (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaSet0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaSet0$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(_module.BoxTests.LemmaSet0$T))
         && $IsAlloc(a#0, TSet(_module.BoxTests.LemmaSet0$T), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(_module.BoxTests.LemmaSet0$T))
         && $IsAlloc(b#0, TSet(_module.BoxTests.LemmaSet0$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.LemmaSet0 (call)"} Call$$_module.BoxTests.LemmaSet0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaSet0$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(_module.BoxTests.LemmaSet0$T))
         && $IsAlloc(a#0, TSet(_module.BoxTests.LemmaSet0$T), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(_module.BoxTests.LemmaSet0$T))
         && $IsAlloc(b#0, TSet(_module.BoxTests.LemmaSet0$T), $Heap));
  // user-defined preconditions
  requires {:id "id447"} (forall x#1: Box :: 
    { Set#IsMember(b#0, x#1) } { Set#IsMember(a#0, x#1) } 
    $IsBox(x#1, _module.BoxTests.LemmaSet0$T)
       ==> 
      Set#IsMember(a#0, x#1)
       ==> Set#IsMember(b#0, x#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id448"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaSet0 (correctness)"} Impl$$_module.BoxTests.LemmaSet0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaSet0$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(_module.BoxTests.LemmaSet0$T))
         && $IsAlloc(a#0, TSet(_module.BoxTests.LemmaSet0$T), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(_module.BoxTests.LemmaSet0$T))
         && $IsAlloc(b#0, TSet(_module.BoxTests.LemmaSet0$T), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id449"} (forall x#1: Box :: 
    { Set#IsMember(b#0, x#1) } { Set#IsMember(a#0, x#1) } 
    $IsBox(x#1, _module.BoxTests.LemmaSet0$T)
       ==> 
      Set#IsMember(a#0, x#1)
       ==> Set#IsMember(b#0, x#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id450"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaSet0 (correctness)"} Impl$$_module.BoxTests.LemmaSet0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaSet0$T: Ty, 
    this: ref, 
    a#0: Set, 
    b#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaSet0, Impl$$_module.BoxTests.LemmaSet0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BoxTests.LemmaSet1 (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaSet1(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(_module.BoxTests$G))
         && $IsAlloc(a#0, TSet(_module.BoxTests$G), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(_module.BoxTests$G))
         && $IsAlloc(b#0, TSet(_module.BoxTests$G), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.LemmaSet1 (call)"} Call$$_module.BoxTests.LemmaSet1(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(_module.BoxTests$G))
         && $IsAlloc(a#0, TSet(_module.BoxTests$G), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(_module.BoxTests$G))
         && $IsAlloc(b#0, TSet(_module.BoxTests$G), $Heap));
  // user-defined preconditions
  requires {:id "id456"} (forall x#1: Box :: 
    { Set#IsMember(b#0, x#1) } { Set#IsMember(a#0, x#1) } 
    $IsBox(x#1, _module.BoxTests$G)
       ==> 
      Set#IsMember(a#0, x#1)
       ==> Set#IsMember(b#0, x#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id457"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaSet1 (correctness)"} Impl$$_module.BoxTests.LemmaSet1(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(_module.BoxTests$G))
         && $IsAlloc(a#0, TSet(_module.BoxTests$G), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(_module.BoxTests$G))
         && $IsAlloc(b#0, TSet(_module.BoxTests$G), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id458"} (forall x#1: Box :: 
    { Set#IsMember(b#0, x#1) } { Set#IsMember(a#0, x#1) } 
    $IsBox(x#1, _module.BoxTests$G)
       ==> 
      Set#IsMember(a#0, x#1)
       ==> Set#IsMember(b#0, x#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id459"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaSet1 (correctness)"} Impl$$_module.BoxTests.LemmaSet1(_module.BoxTests$G: Ty, this: ref, a#0: Set, b#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaSet1, Impl$$_module.BoxTests.LemmaSet1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BoxTests.LemmaSet2 (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaSet2(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set where $Is(a#0, TSet(TInt)) && $IsAlloc(a#0, TSet(TInt), $Heap), 
    b#0: Set where $Is(b#0, TSet(TInt)) && $IsAlloc(b#0, TSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.LemmaSet2 (call)"} Call$$_module.BoxTests.LemmaSet2(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set where $Is(a#0, TSet(TInt)) && $IsAlloc(a#0, TSet(TInt), $Heap), 
    b#0: Set where $Is(b#0, TSet(TInt)) && $IsAlloc(b#0, TSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id465"} (forall x#1: int :: 
    { Set#IsMember(b#0, $Box(x#1)) } { Set#IsMember(a#0, $Box(x#1)) } 
    Set#IsMember(a#0, $Box(x#1)) ==> Set#IsMember(b#0, $Box(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id466"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaSet2 (correctness)"} Impl$$_module.BoxTests.LemmaSet2(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set where $Is(a#0, TSet(TInt)) && $IsAlloc(a#0, TSet(TInt), $Heap), 
    b#0: Set where $Is(b#0, TSet(TInt)) && $IsAlloc(b#0, TSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id467"} (forall x#1: int :: 
    { Set#IsMember(b#0, $Box(x#1)) } { Set#IsMember(a#0, $Box(x#1)) } 
    Set#IsMember(a#0, $Box(x#1)) ==> Set#IsMember(b#0, $Box(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id468"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaSet2 (correctness)"} Impl$$_module.BoxTests.LemmaSet2(_module.BoxTests$G: Ty, this: ref, a#0: Set, b#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaSet2, Impl$$_module.BoxTests.LemmaSet2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BoxTests.LemmaSet3 (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaSet3(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(Tclass._System.object()))
         && $IsAlloc(a#0, TSet(Tclass._System.object()), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(Tclass._System.object()))
         && $IsAlloc(b#0, TSet(Tclass._System.object()), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.LemmaSet3 (call)"} Call$$_module.BoxTests.LemmaSet3(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(Tclass._System.object()))
         && $IsAlloc(a#0, TSet(Tclass._System.object()), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(Tclass._System.object()))
         && $IsAlloc(b#0, TSet(Tclass._System.object()), $Heap));
  // user-defined preconditions
  requires {:id "id474"} (forall x#1: ref :: 
    { Set#IsMember(b#0, $Box(x#1)) } { Set#IsMember(a#0, $Box(x#1)) } 
    $Is(x#1, Tclass._System.object())
       ==> 
      Set#IsMember(a#0, $Box(x#1))
       ==> Set#IsMember(b#0, $Box(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id475"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaSet3 (correctness)"} Impl$$_module.BoxTests.LemmaSet3(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set
       where $Is(a#0, TSet(Tclass._System.object()))
         && $IsAlloc(a#0, TSet(Tclass._System.object()), $Heap), 
    b#0: Set
       where $Is(b#0, TSet(Tclass._System.object()))
         && $IsAlloc(b#0, TSet(Tclass._System.object()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id476"} (forall x#1: ref :: 
    { Set#IsMember(b#0, $Box(x#1)) } { Set#IsMember(a#0, $Box(x#1)) } 
    $Is(x#1, Tclass._System.object())
       ==> 
      Set#IsMember(a#0, $Box(x#1))
       ==> Set#IsMember(b#0, $Box(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id477"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaSet3 (correctness)"} Impl$$_module.BoxTests.LemmaSet3(_module.BoxTests$G: Ty, this: ref, a#0: Set, b#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaSet3, Impl$$_module.BoxTests.LemmaSet3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BoxTests.LemmaSet4 (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaSet4(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set where $Is(a#0, TSet(TBool)) && $IsAlloc(a#0, TSet(TBool), $Heap), 
    b#0: Set where $Is(b#0, TSet(TBool)) && $IsAlloc(b#0, TSet(TBool), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.LemmaSet4 (call)"} Call$$_module.BoxTests.LemmaSet4(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set where $Is(a#0, TSet(TBool)) && $IsAlloc(a#0, TSet(TBool), $Heap), 
    b#0: Set where $Is(b#0, TSet(TBool)) && $IsAlloc(b#0, TSet(TBool), $Heap));
  // user-defined preconditions
  requires {:id "id483"} (forall x#1: bool :: 
    { Set#IsMember(b#0, $Box(x#1)) } { Set#IsMember(a#0, $Box(x#1)) } 
    Set#IsMember(a#0, $Box(x#1)) ==> Set#IsMember(b#0, $Box(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id484"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaSet4 (correctness)"} Impl$$_module.BoxTests.LemmaSet4(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Set where $Is(a#0, TSet(TBool)) && $IsAlloc(a#0, TSet(TBool), $Heap), 
    b#0: Set where $Is(b#0, TSet(TBool)) && $IsAlloc(b#0, TSet(TBool), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id485"} (forall x#1: bool :: 
    { Set#IsMember(b#0, $Box(x#1)) } { Set#IsMember(a#0, $Box(x#1)) } 
    Set#IsMember(a#0, $Box(x#1)) ==> Set#IsMember(b#0, $Box(x#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id486"} Set#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaSet4 (correctness)"} Impl$$_module.BoxTests.LemmaSet4(_module.BoxTests$G: Ty, this: ref, a#0: Set, b#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaSet4, Impl$$_module.BoxTests.LemmaSet4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BoxTests.Lemma_NonEmpty (well-formedness)"} CheckWellFormed$$_module.BoxTests.Lemma__NonEmpty(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    x#0: Set where $Is(x#0, TSet(TInt)) && $IsAlloc(x#0, TSet(TInt), $Heap), 
    y#0: Set where $Is(y#0, TSet(TInt)) && $IsAlloc(y#0, TSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.Lemma_NonEmpty (call)"} Call$$_module.BoxTests.Lemma__NonEmpty(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    x#0: Set where $Is(x#0, TSet(TInt)) && $IsAlloc(x#0, TSet(TInt), $Heap), 
    y#0: Set where $Is(y#0, TSet(TInt)) && $IsAlloc(y#0, TSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id489"} Set#Equal(Set#Intersection(x#0, y#0), Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id490"} Set#Disjoint(x#0, y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.Lemma_NonEmpty (correctness)"} Impl$$_module.BoxTests.Lemma__NonEmpty(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    x#0: Set where $Is(x#0, TSet(TInt)) && $IsAlloc(x#0, TSet(TInt), $Heap), 
    y#0: Set where $Is(y#0, TSet(TInt)) && $IsAlloc(y#0, TSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id491"} Set#Equal(Set#Intersection(x#0, y#0), Set#Empty(): Set);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id492"} Set#Disjoint(x#0, y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.Lemma_NonEmpty (correctness)"} Impl$$_module.BoxTests.Lemma__NonEmpty(_module.BoxTests$G: Ty, this: ref, x#0: Set, y#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;

    // AddMethodImpl: Lemma_NonEmpty, Impl$$_module.BoxTests.Lemma__NonEmpty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/MultiSets.dfy(144,5)
    // Begin Comprehension WF check
    havoc k#0;
    if (true)
    {
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id493"} (forall k#1: int :: 
      { Set#IsMember(Set#Intersection(x#0, y#0), $Box(k#1)) } 
      !Set#IsMember(Set#Intersection(x#0, y#0), $Box(k#1)));
}



procedure {:verboseName "BoxTests.LemmaSeq (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaSeq(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaSeq (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaSeq(_module.BoxTests$G: Ty, this: ref, a#0: Seq, b#0: Seq)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;


    // AddMethodImpl: LemmaSeq, CheckWellFormed$$_module.BoxTests.LemmaSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id494"} Seq#Length(a#0) <= Seq#Length(b#0);
    havoc i#0;
    assume true;
    if (*)
    {
        if (LitInt(0) <= i#0)
        {
        }

        assume {:id "id495"} LitInt(0) <= i#0 && i#0 < Seq#Length(a#0);
        assert {:id "id496"} 0 <= i#0 && i#0 < Seq#Length(a#0);
        assert {:id "id497"} 0 <= i#0 && i#0 < Seq#Length(b#0);
        assume {:id "id498"} $Unbox(Seq#Index(a#0, i#0)): int == $Unbox(Seq#Index(b#0, i#0)): int;
    }
    else
    {
        assume {:id "id499"} LitInt(0) <= i#0 && i#0 < Seq#Length(a#0)
           ==> $Unbox(Seq#Index(a#0, i#0)): int == $Unbox(Seq#Index(b#0, i#0)): int;
    }

    assume {:id "id500"} (forall i#1: int :: 
      { $Unbox(Seq#Index(b#0, i#1)): int } { $Unbox(Seq#Index(a#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
         ==> $Unbox(Seq#Index(a#0, i#1)): int == $Unbox(Seq#Index(b#0, i#1)): int);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSuccGhost(old($Heap), $Heap);
    assume {:id "id501"} Seq#Length(a#0) <= Seq#Length(b#0) && Seq#SameUntil(a#0, b#0, Seq#Length(a#0));
}



procedure {:verboseName "BoxTests.LemmaSeq (call)"} Call$$_module.BoxTests.LemmaSeq(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id502"} Seq#Length(a#0) <= Seq#Length(b#0);
  requires {:id "id503"} (forall i#1: int :: 
    { $Unbox(Seq#Index(b#0, i#1)): int } { $Unbox(Seq#Index(a#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
       ==> $Unbox(Seq#Index(a#0, i#1)): int == $Unbox(Seq#Index(b#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id504"} Seq#Length(a#0) <= Seq#Length(b#0) && Seq#SameUntil(a#0, b#0, Seq#Length(a#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaSeq (correctness)"} Impl$$_module.BoxTests.LemmaSeq(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: Seq where $Is(a#0, TSeq(TInt)) && $IsAlloc(a#0, TSeq(TInt), $Heap), 
    b#0: Seq where $Is(b#0, TSeq(TInt)) && $IsAlloc(b#0, TSeq(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id505"} Seq#Length(a#0) <= Seq#Length(b#0);
  requires {:id "id506"} (forall i#1: int :: 
    { $Unbox(Seq#Index(b#0, i#1)): int } { $Unbox(Seq#Index(a#0, i#1)): int } 
    LitInt(0) <= i#1 && i#1 < Seq#Length(a#0)
       ==> $Unbox(Seq#Index(a#0, i#1)): int == $Unbox(Seq#Index(b#0, i#1)): int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id507"} Seq#Length(a#0) <= Seq#Length(b#0) && Seq#SameUntil(a#0, b#0, Seq#Length(a#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaSeq (correctness)"} Impl$$_module.BoxTests.LemmaSeq(_module.BoxTests$G: Ty, this: ref, a#0: Seq, b#0: Seq)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaSeq, Impl$$_module.BoxTests.LemmaSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BoxTests.LemmaMultiset0 (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaMultiset0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaMultiset0$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T))
         && $IsAlloc(a#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T))
         && $IsAlloc(b#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.LemmaMultiset0 (call)"} Call$$_module.BoxTests.LemmaMultiset0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaMultiset0$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T))
         && $IsAlloc(a#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T))
         && $IsAlloc(b#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T), $Heap));
  // user-defined preconditions
  requires {:id "id513"} (forall x#1: Box :: 
    { MultiSet#Multiplicity(b#0, x#1) } { MultiSet#Multiplicity(a#0, x#1) } 
    $IsBox(x#1, _module.BoxTests.LemmaMultiset0$T)
       ==> 
      MultiSet#Multiplicity(a#0, x#1) > 0
       ==> MultiSet#Multiplicity(b#0, x#1) > 0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id514"} MultiSet#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaMultiset0 (correctness)"} Impl$$_module.BoxTests.LemmaMultiset0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaMultiset0$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T))
         && $IsAlloc(a#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T))
         && $IsAlloc(b#0, TMultiSet(_module.BoxTests.LemmaMultiset0$T), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id515"} (forall x#1: Box :: 
    { MultiSet#Multiplicity(b#0, x#1) } { MultiSet#Multiplicity(a#0, x#1) } 
    $IsBox(x#1, _module.BoxTests.LemmaMultiset0$T)
       ==> 
      MultiSet#Multiplicity(a#0, x#1) > 0
       ==> MultiSet#Multiplicity(b#0, x#1) > 0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id516"} MultiSet#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaMultiset0 (correctness)"} Impl$$_module.BoxTests.LemmaMultiset0(_module.BoxTests$G: Ty, 
    _module.BoxTests.LemmaMultiset0$T: Ty, 
    this: ref, 
    a#0: MultiSet, 
    b#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaMultiset0, Impl$$_module.BoxTests.LemmaMultiset0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "BoxTests.LemmaMultiset1 (well-formedness)"} CheckWellFormed$$_module.BoxTests.LemmaMultiset1(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(TInt)) && $IsAlloc(a#0, TMultiSet(TInt), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(TInt)) && $IsAlloc(b#0, TMultiSet(TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BoxTests.LemmaMultiset1 (call)"} Call$$_module.BoxTests.LemmaMultiset1(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(TInt)) && $IsAlloc(a#0, TMultiSet(TInt), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(TInt)) && $IsAlloc(b#0, TMultiSet(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id522"} (forall x#1: int :: 
    { MultiSet#Multiplicity(b#0, $Box(x#1)) } 
      { MultiSet#Multiplicity(a#0, $Box(x#1)) } 
    MultiSet#Multiplicity(a#0, $Box(x#1)) > 0
       ==> MultiSet#Multiplicity(b#0, $Box(x#1)) > 0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id523"} MultiSet#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "BoxTests.LemmaMultiset1 (correctness)"} Impl$$_module.BoxTests.LemmaMultiset1(_module.BoxTests$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.BoxTests(_module.BoxTests$G))
         && $IsAlloc(this, Tclass._module.BoxTests(_module.BoxTests$G), $Heap), 
    a#0: MultiSet
       where $Is(a#0, TMultiSet(TInt)) && $IsAlloc(a#0, TMultiSet(TInt), $Heap), 
    b#0: MultiSet
       where $Is(b#0, TMultiSet(TInt)) && $IsAlloc(b#0, TMultiSet(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id524"} (forall x#1: int :: 
    { MultiSet#Multiplicity(b#0, $Box(x#1)) } 
      { MultiSet#Multiplicity(a#0, $Box(x#1)) } 
    MultiSet#Multiplicity(a#0, $Box(x#1)) > 0
       ==> MultiSet#Multiplicity(b#0, $Box(x#1)) > 0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id525"} MultiSet#Subset(a#0, b#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BoxTests.LemmaMultiset1 (correctness)"} Impl$$_module.BoxTests.LemmaMultiset1(_module.BoxTests$G: Ty, this: ref, a#0: MultiSet, b#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: LemmaMultiset1, Impl$$_module.BoxTests.LemmaMultiset1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// $Is axiom for non-null type _module.BoxTests
axiom (forall _module.BoxTests$G: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.BoxTests(_module.BoxTests$G)) } 
    { $Is(c#0, Tclass._module.BoxTests?(_module.BoxTests$G)) } 
  $Is(c#0, Tclass._module.BoxTests(_module.BoxTests$G))
     <==> $Is(c#0, Tclass._module.BoxTests?(_module.BoxTests$G)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.BoxTests
axiom (forall _module.BoxTests$G: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.BoxTests(_module.BoxTests$G), $h) } 
    { $IsAlloc(c#0, Tclass._module.BoxTests?(_module.BoxTests$G), $h) } 
  $IsAlloc(c#0, Tclass._module.BoxTests(_module.BoxTests$G), $h)
     <==> $IsAlloc(c#0, Tclass._module.BoxTests?(_module.BoxTests$G), $h));

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

const unique tytagFamily$BoxTests: TyTagFamily;
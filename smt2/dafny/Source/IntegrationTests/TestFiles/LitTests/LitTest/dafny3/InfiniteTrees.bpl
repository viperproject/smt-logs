// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy

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

// function declaration for _module._default.Tail
function _module.__default.Tail(_module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Tail
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> $Is(_module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0), 
        Tclass._module.Stream(_module._default.Tail$_T0)));
// alloc consequence axiom for _module.__default.Tail
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Tail$_T0: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      n#0: int :: 
    { $IsAlloc(_module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0), 
        Tclass._module.Stream(_module._default.Tail$_T0), 
        $Heap) } 
    (_module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
             && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail$_T0), $Heap)
             && LitInt(0) <= n#0))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0), 
        Tclass._module.Stream(_module._default.Tail$_T0), 
        $Heap));
// definition axiom for _module.__default.Tail (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0)
           ==> _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0 - 1)
             && (var t#0 := _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0 - 1); 
              $IsA#_module.Stream(t#0)))
         && _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0)
           == (if n#0 == LitInt(0)
             then s#0
             else (var t#0 := _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0 - 1); 
              (if $Eq#_module.Stream(_module._default.Tail$_T0, 
                  _module._default.Tail$_T0, 
                  $LS($LS($LZ)), 
                  t#0, 
                  #_module.Stream.Nil())
                 then t#0
                 else _module.Stream.tail(t#0)))));
// definition axiom for _module.__default.Tail for decreasing-related literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, LitInt(n#0)) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, LitInt(n#0 - 1))
             && (var t#1 := _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, LitInt(n#0 - 1)); 
              $IsA#_module.Stream(t#1)))
         && _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then s#0
             else (var t#1 := _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, LitInt(n#0 - 1)); 
              (if $Eq#_module.Stream(_module._default.Tail$_T0, 
                  _module._default.Tail$_T0, 
                  $LS($LS($LZ)), 
                  t#1, 
                  #_module.Stream.Nil())
                 then t#1
                 else _module.Stream.tail(t#1)))));
// definition axiom for _module.__default.Tail for all literals (revealed)
axiom {:id "id2"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), Lit(s#0), LitInt(n#0)) } 
    _module.__default.Tail#canCall(_module._default.Tail$_T0, Lit(s#0), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0))
           && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.Tail#canCall(_module._default.Tail$_T0, Lit(s#0), LitInt(n#0 - 1))
             && (var t#2 := Lit(_module.__default.Tail(_module._default.Tail$_T0, $LS($ly), Lit(s#0), LitInt(n#0 - 1))); 
              $IsA#_module.Stream(t#2)))
         && _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), Lit(s#0), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then s#0
             else (var t#2 := Lit(_module.__default.Tail(_module._default.Tail$_T0, $LS($ly), Lit(s#0), LitInt(n#0 - 1))); 
              (if $Eq#_module.Stream(_module._default.Tail$_T0, 
                  _module._default.Tail$_T0, 
                  $LS($LS($LZ)), 
                  t#2, 
                  #_module.Stream.Nil())
                 then t#2
                 else _module.Stream.tail(t#2)))));
}

function _module.__default.Tail#canCall(_module._default.Tail$_T0: Ty, s#0: DatatypeType, n#0: int) : bool;

// layer synonym axiom
axiom (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0) } 
  _module.__default.Tail(_module._default.Tail$_T0, $LS($ly), s#0, n#0)
     == _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0));

// fuel synonym axiom
axiom (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.Tail(_module._default.Tail$_T0, AsFuelBottom($ly), s#0, n#0) } 
  _module.__default.Tail(_module._default.Tail$_T0, $ly, s#0, n#0)
     == _module.__default.Tail(_module._default.Tail$_T0, $LZ, s#0, n#0));

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

function _module.__default.Tail#requires(Ty, LayerType, DatatypeType, int) : bool;

// #requires axiom for _module.__default.Tail
axiom (forall _module._default.Tail$_T0: Ty, $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.Tail#requires(_module._default.Tail$_T0, $ly, s#0, n#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0)) && LitInt(0) <= n#0
     ==> _module.__default.Tail#requires(_module._default.Tail$_T0, $ly, s#0, n#0)
       == true);

procedure {:verboseName "Tail (well-formedness)"} CheckWellformed$$_module.__default.Tail(_module._default.Tail$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail$_T0)), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tail (well-formedness)"} CheckWellformed$$_module.__default.Tail(_module._default.Tail$_T0: Ty, s#0: DatatypeType, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var t#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##s#0: DatatypeType;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0), 
          Tclass._module.Stream(_module._default.Tail$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id3"} _module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0) == s#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0), 
              Tclass._module.Stream(_module._default.Tail$_T0));
            return;
        }
        else
        {
            havoc t#Z#0;
            ##s#0 := s#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Tail$_T0), $Heap);
            assert {:id "id4"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id5"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id6"} ##n#0 < n#0;
            assume _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0 - 1);
            assume {:id "id7"} let#0#0#0
               == _module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0 - 1);
            assume _module.__default.Tail#canCall(_module._default.Tail$_T0, s#0, n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Stream(_module._default.Tail$_T0));
            assume {:id "id8"} t#Z#0 == let#0#0#0;
            if ($Eq#_module.Stream(_module._default.Tail$_T0, 
              _module._default.Tail$_T0, 
              $LS($LS($LZ)), 
              t#Z#0, 
              #_module.Stream.Nil()))
            {
                assume {:id "id9"} _module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0) == t#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0), 
                  Tclass._module.Stream(_module._default.Tail$_T0));
                return;
            }
            else
            {
                assert {:id "id10"} _module.Stream.Cons_q(t#Z#0);
                assume {:id "id11"} _module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0)
                   == _module.Stream.tail(t#Z#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Tail(_module._default.Tail$_T0, $LS($LZ), s#0, n#0), 
                  Tclass._module.Stream(_module._default.Tail$_T0));
                return;
            }
        }

        assume false;
    }
}



procedure {:verboseName "Tail_Lemma0 (well-formedness)"} CheckWellFormed$$_module.__default.Tail__Lemma0(_module._default.Tail_Lemma0$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tail_Lemma0 (well-formedness)"} CheckWellFormed$$_module.__default.Tail__Lemma0(_module._default.Tail_Lemma0$_T0: Ty, s#0: DatatypeType, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##s#1: DatatypeType;
  var ##n#1: int;
  var ##s#2: DatatypeType;
  var ##n#2: int;


    // AddMethodImpl: Tail_Lemma0, CheckWellFormed$$_module.__default.Tail__Lemma0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id12"} _module.Stream.Cons_q(s#0);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0), $Heap);
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.Tail_Lemma0$_T0, s#0, n#0);
    assume {:id "id13"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), s#0, n#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0), $Heap);
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.Tail_Lemma0$_T0, s#0, n#0);
    assert {:id "id14"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), s#0, n#0));
    assert {:id "id15"} _module.Stream.Cons_q(s#0);
    ##s#2 := _module.Stream.tail(s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0), $Heap);
    ##n#2 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.Tail_Lemma0$_T0, _module.Stream.tail(s#0), n#0);
    assume {:id "id16"} $Eq#_module.Stream(_module._default.Tail_Lemma0$_T0, 
      _module._default.Tail_Lemma0$_T0, 
      $LS($LS($LZ)), 
      _module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), s#0, n#0)), 
      _module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), _module.Stream.tail(s#0), n#0));
}



procedure {:verboseName "Tail_Lemma0 (call)"} Call$$_module.__default.Tail__Lemma0(_module._default.Tail_Lemma0$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id17"} _module.Stream.Cons_q(s#0);
  requires {:id "id18"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LS($LZ)), s#0, n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), s#0, n#0)))
     && $IsA#_module.Stream(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), _module.Stream.tail(s#0), n#0))
     && 
    _module.__default.Tail#canCall(_module._default.Tail_Lemma0$_T0, s#0, n#0)
     && _module.__default.Tail#canCall(_module._default.Tail_Lemma0$_T0, _module.Stream.tail(s#0), n#0);
  ensures {:id "id19"} $Eq#_module.Stream(_module._default.Tail_Lemma0$_T0, 
    _module._default.Tail_Lemma0$_T0, 
    $LS($LS($LZ)), 
    _module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LS($LZ)), s#0, n#0)), 
    _module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LS($LZ)), _module.Stream.tail(s#0), n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Tail_Lemma0 (correctness)"} Impl$$_module.__default.Tail__Lemma0(_module._default.Tail_Lemma0$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id20"} _module.Stream.Cons_q(s#0);
  requires {:id "id21"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LS($LZ)), s#0, n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Stream(_module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), s#0, n#0)))
     && $IsA#_module.Stream(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), _module.Stream.tail(s#0), n#0))
     && 
    _module.__default.Tail#canCall(_module._default.Tail_Lemma0$_T0, s#0, n#0)
     && _module.__default.Tail#canCall(_module._default.Tail_Lemma0$_T0, _module.Stream.tail(s#0), n#0);
  ensures {:id "id22"} $Eq#_module.Stream(_module._default.Tail_Lemma0$_T0, 
    _module._default.Tail_Lemma0$_T0, 
    $LS($LS($LZ)), 
    _module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LS($LZ)), s#0, n#0)), 
    _module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LS($LZ)), _module.Stream.tail(s#0), n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tail_Lemma0 (correctness)"} Impl$$_module.__default.Tail__Lemma0(_module._default.Tail_Lemma0$_T0: Ty, s#0: DatatypeType, n#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: Tail_Lemma0, Impl$$_module.__default.Tail__Lemma0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType, $ih#n0#0: int :: 
      { _module.__default.Tail(_module._default.Tail_Lemma0$_T0, 
          $LS($LZ), 
          _module.Stream.tail($ih#s0#0), 
          $ih#n0#0) } 
        { _module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), $ih#s0#0, $ih#n0#0)) } 
        { _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), $ih#s0#0, $ih#n0#0)) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Tail_Lemma0$_T0))
           && LitInt(0) <= $ih#n0#0
           && 
          _module.Stream.Cons_q($ih#s0#0)
           && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), $ih#s0#0, $ih#n0#0))
           && 
          0 <= $ih#n0#0
           && $ih#n0#0 < n#0
         ==> $Eq#_module.Stream(_module._default.Tail_Lemma0$_T0, 
          _module._default.Tail_Lemma0$_T0, 
          $LS($LS($LZ)), 
          _module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma0$_T0, $LS($LZ), $ih#s0#0, $ih#n0#0)), 
          _module.__default.Tail(_module._default.Tail_Lemma0$_T0, 
            $LS($LZ), 
            _module.Stream.tail($ih#s0#0), 
            $ih#n0#0)));
    $_reverifyPost := false;
}



procedure {:verboseName "Tail_Lemma1 (well-formedness)"} CheckWellFormed$$_module.__default.Tail__Lemma1(_module._default.Tail_Lemma1$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    k#0: int where LitInt(0) <= k#0, 
    n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Tail_Lemma1 (call)"} Call$$_module.__default.Tail__Lemma1(_module._default.Tail_Lemma1$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    k#0: int where LitInt(0) <= k#0, 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id27"} k#0 <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0)
     && (_module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0))
       ==> _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, k#0));
  ensures {:id "id28"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0))
     ==> _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LS($LZ)), s#0, k#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Tail_Lemma1 (correctness)"} Impl$$_module.__default.Tail__Lemma1(_module._default.Tail_Lemma1$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    k#0: int where LitInt(0) <= k#0, 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id29"} k#0 <= n#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0)
     && (_module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0))
       ==> _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, k#0));
  ensures {:id "id30"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0))
     ==> _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LS($LZ)), s#0, k#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tail_Lemma1 (correctness)"} Impl$$_module.__default.Tail__Lemma1(_module._default.Tail_Lemma1$_T0: Ty, s#0: DatatypeType, k#0: int, n#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##s#2: DatatypeType;
  var ##n#2: int;
  var ##s#0_0: DatatypeType;
  var ##n#0_0: int;
  var ##s#0_1: DatatypeType;
  var ##n#0_1: int;

    // AddMethodImpl: Tail_Lemma1, Impl$$_module.__default.Tail__Lemma1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType, $ih#k0#0: int, $ih#n0#0: int :: 
      { _module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), $ih#s0#0, $ih#k0#0), _module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), $ih#s0#0, $ih#n0#0) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0))
           && LitInt(0) <= $ih#k0#0
           && LitInt(0) <= $ih#n0#0
           && $ih#k0#0 <= $ih#n0#0
           && ((0 <= $ih#k0#0 && $ih#k0#0 < k#0)
             || ($ih#k0#0 == k#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#0))
         ==> 
        _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), $ih#s0#0, $ih#n0#0))
         ==> _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), $ih#s0#0, $ih#k0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(26,3)
    if (k#0 < n#0)
    {
        ##s#2 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#2, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0), $Heap);
        ##n#2 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0);
    }

    assume k#0 < n#0
       ==> _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0);
    if (k#0 < n#0
       && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0)))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(27,5)
        ##s#0_0 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0), $Heap);
        ##n#0_0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0);
        ##s#0_1 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_1, Tclass._module.Stream(_module._default.Tail_Lemma1$_T0), $Heap);
        assert {:id "id31"} $Is(n#0 - 1, Tclass._System.nat());
        ##n#0_1 := n#0 - 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0 - 1);
        assert {:id "id32"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0 - 1));
        assume $IsA#_module.Stream(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0))
           && $IsA#_module.Stream(_module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0 - 1)))
           && 
          _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0)
           && _module.__default.Tail#canCall(_module._default.Tail_Lemma1$_T0, s#0, n#0 - 1);
        assert {:id "id33"} {:subsumption 0} $Eq#_module.Stream(_module._default.Tail_Lemma1$_T0, 
          _module._default.Tail_Lemma1$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LS($LZ)), s#0, n#0), 
          _module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LS($LZ)), s#0, n#0 - 1)));
        assume {:id "id34"} $Eq#_module.Stream(_module._default.Tail_Lemma1$_T0, 
          _module._default.Tail_Lemma1$_T0, 
          $LS($LS($LZ)), 
          _module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0), 
          _module.Stream.tail(_module.__default.Tail(_module._default.Tail_Lemma1$_T0, $LS($LZ), s#0, n#0 - 1)));
    }
    else
    {
    }
}



procedure {:verboseName "Tail_Lemma2 (well-formedness)"} CheckWellFormed$$_module.__default.Tail__Lemma2(_module._default.Tail_Lemma2$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tail_Lemma2 (well-formedness)"} CheckWellFormed$$_module.__default.Tail__Lemma2(_module._default.Tail_Lemma2$_T0: Ty, s#0: DatatypeType, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##s#1: DatatypeType;
  var ##n#1: int;


    // AddMethodImpl: Tail_Lemma2, CheckWellFormed$$_module.__default.Tail__Lemma2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id35"} _module.Stream.Cons_q(s#0);
    assert {:id "id36"} _module.Stream.Cons_q(s#0);
    ##s#0 := _module.Stream.tail(s#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0), $Heap);
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.Tail_Lemma2$_T0, _module.Stream.tail(s#0), n#0);
    assume {:id "id37"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, $LS($LZ), _module.Stream.tail(s#0), n#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0), $Heap);
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(_module._default.Tail_Lemma2$_T0, s#0, n#0);
    assume {:id "id38"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, $LS($LZ), s#0, n#0));
}



procedure {:verboseName "Tail_Lemma2 (call)"} Call$$_module.__default.Tail__Lemma2(_module._default.Tail_Lemma2$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id39"} _module.Stream.Cons_q(s#0);
  requires {:id "id40"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, $LS($LS($LZ)), _module.Stream.tail(s#0), n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Tail#canCall(_module._default.Tail_Lemma2$_T0, s#0, n#0);
  ensures {:id "id41"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, $LS($LS($LZ)), s#0, n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Tail_Lemma2 (correctness)"} Impl$$_module.__default.Tail__Lemma2(_module._default.Tail_Lemma2$_T0: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0))
         && $IsAlloc(s#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id42"} _module.Stream.Cons_q(s#0);
  requires {:id "id43"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, $LS($LS($LZ)), _module.Stream.tail(s#0), n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.Tail#canCall(_module._default.Tail_Lemma2$_T0, s#0, n#0);
  ensures {:id "id44"} _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, $LS($LS($LZ)), s#0, n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tail_Lemma2 (correctness)"} Impl$$_module.__default.Tail__Lemma2(_module._default.Tail_Lemma2$_T0: Ty, s#0: DatatypeType, n#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var s##0_0: DatatypeType;
  var n##0_0: int;

    // AddMethodImpl: Tail_Lemma2, Impl$$_module.__default.Tail__Lemma2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType, $ih#n0#0: int :: 
      { _module.__default.Tail(_module._default.Tail_Lemma2$_T0, 
          $LS($LZ), 
          _module.Stream.tail($ih#s0#0), 
          $ih#n0#0) } 
      $Is($ih#s0#0, Tclass._module.Stream(_module._default.Tail_Lemma2$_T0))
           && LitInt(0) <= $ih#n0#0
           && 
          _module.Stream.Cons_q($ih#s0#0)
           && _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, 
              $LS($LZ), 
              _module.Stream.tail($ih#s0#0), 
              $ih#n0#0))
           && 
          0 <= $ih#n0#0
           && $ih#n0#0 < n#0
         ==> _module.Stream.Cons_q(_module.__default.Tail(_module._default.Tail_Lemma2$_T0, $LS($LZ), $ih#s0#0, $ih#n0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(34,3)
    assume true;
    if (n#0 != 0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(35,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id45"} $Is(n#0 - 1, Tclass._System.nat());
        n##0_0 := n#0 - 1;
        call {:id "id46"} Call$$_module.__default.Tail__Lemma0(_module._default.Tail_Lemma2$_T0, s##0_0, n##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



// function declaration for _module._default.IsNeverEndingStream
function _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S: Ty, $ly: LayerType, s#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.IsNeverEndingStream (revealed)
axiom {:id "id47"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.IsNeverEndingStream$S: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $LS($ly), s#0) } 
    _module.__default.IsNeverEndingStream#canCall(_module._default.IsNeverEndingStream$S, s#0)
         || (1 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream$S)))
       ==> (!_module.Stream.Nil_q(s#0)
           ==> (var tail#1 := _module.Stream.tail(s#0); 
            _module.__default.IsNeverEndingStream#canCall(_module._default.IsNeverEndingStream$S, tail#1)))
         && _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $LS($ly), s#0)
           == (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#0 := _module.Stream.tail(s#0); 
              _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $ly, tail#0))));
}

function _module.__default.IsNeverEndingStream#canCall(_module._default.IsNeverEndingStream$S: Ty, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.IsNeverEndingStream$S: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $LS($ly), s#0) } 
  _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $LS($ly), s#0)
     == _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $ly, s#0));

// fuel synonym axiom
axiom (forall _module._default.IsNeverEndingStream$S: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, AsFuelBottom($ly), s#0) } 
  _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $ly, s#0)
     == _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S, $LZ, s#0));

function _module.__default.IsNeverEndingStream#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.IsNeverEndingStream
axiom (forall _module._default.IsNeverEndingStream$S: Ty, $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.IsNeverEndingStream#requires(_module._default.IsNeverEndingStream$S, $ly, s#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream$S))
     ==> _module.__default.IsNeverEndingStream#requires(_module._default.IsNeverEndingStream$S, $ly, s#0)
       == true);

// 1st prefix predicate axiom for _module.__default.IsNeverEndingStream_h
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsNeverEndingStream#$S: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream#$S, $LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream#$S))
         && _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream#$S, $LS($ly), s#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0) } 
        _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsNeverEndingStream#$S: Ty, $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream#$S, $LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream#$S))
         && (forall _k#0: Box :: 
          { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0) } 
          _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0))
       ==> _module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream#$S, $LS($ly), s#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsNeverEndingStream#$S: Ty, 
      $ly: LayerType, 
      s#0: DatatypeType, 
      _k#0: Box :: 
    { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $ly, _k#0, s#0) } 
    $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream#$S))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $ly, _k#0, s#0));

procedure {:verboseName "IsNeverEndingStream (well-formedness)"} CheckWellformed$$_module.__default.IsNeverEndingStream(_module._default.IsNeverEndingStream$S: Ty, 
    s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream$S)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IsNeverEndingStream#
function _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.IsNeverEndingStream_h (revealed)
axiom {:id "id52"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsNeverEndingStream#$S: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      s#0: DatatypeType :: 
    { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0) } 
    _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, _k#0, s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream#$S)))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#3 := _module.Stream.tail(s#0); 
            _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, ORD#Minus(_k#0, ORD#FromNat(1)), tail#3)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#4 := _module.Stream.tail(s#0); 
              _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, 
                $ly, 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                tail#4))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $ly, _k'#0, s#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, _k'#0, s#0)))
         && _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then false
                 else (var tail#2 := _module.Stream.tail(s#0); 
                  _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, 
                    $ly, 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    tail#2))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $ly, _k'#0, s#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $ly, _k'#0, s#0)))));
// definition axiom for _module.__default.IsNeverEndingStream_h for decreasing-related literals (revealed)
axiom {:id "id53"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsNeverEndingStream#$S: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      s#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), Lit(_k#0), s#0) } 
    _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, Lit(_k#0), s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream#$S)))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#6 := _module.Stream.tail(s#0); 
            _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, ORD#Minus(_k#0, ORD#FromNat(1)), tail#6)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#7 := _module.Stream.tail(s#0); 
              _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, 
                $LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                tail#7))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k'#1, s#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, _k'#1, s#0)))
         && _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), Lit(_k#0), s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then false
                 else (var tail#5 := _module.Stream.tail(s#0); 
                  _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, 
                    $LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    tail#5))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k'#1, s#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k'#1, s#0)))));
// definition axiom for _module.__default.IsNeverEndingStream_h for all literals (revealed)
axiom {:id "id54"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.IsNeverEndingStream#$S: Ty, 
      $ly: LayerType, 
      _k#0: Box, 
      s#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), Lit(_k#0), Lit(s#0)) } 
    _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, Lit(_k#0), Lit(s#0))
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream#$S)))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.Stream.Nil_q(Lit(s#0)))
           ==> (var tail#9 := Lit(_module.Stream.tail(Lit(s#0))); 
            _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, ORD#Minus(_k#0, ORD#FromNat(1)), tail#9)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(Lit(s#0))
             then false
             else (var tail#10 := Lit(_module.Stream.tail(Lit(s#0))); 
              _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, 
                $LS($ly), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                tail#10))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k'#2, s#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S, _k'#2, s#0)))
         && _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), Lit(_k#0), Lit(s#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(Lit(s#0))
                 then false
                 else (var tail#8 := Lit(_module.Stream.tail(Lit(s#0))); 
                  _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, 
                    $LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    tail#8))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k'#2, s#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k'#2, s#0)))));
}

function _module.__default.IsNeverEndingStream_h#canCall(_module._default.IsNeverEndingStream#$S: Ty, _k#0: Box, s#0: DatatypeType)
   : bool;

// layer synonym axiom
axiom (forall _module._default.IsNeverEndingStream#$S: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType :: 
  { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0) } 
  _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LS($ly), _k#0, s#0)
     == _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $ly, _k#0, s#0));

// fuel synonym axiom
axiom (forall _module._default.IsNeverEndingStream#$S: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType :: 
  { _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, AsFuelBottom($ly), _k#0, s#0) } 
  _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $ly, _k#0, s#0)
     == _module.__default.IsNeverEndingStream_h(_module._default.IsNeverEndingStream#$S, $LZ, _k#0, s#0));

function _module.__default.IsNeverEndingStream_h#requires(Ty, LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.IsNeverEndingStream_h
axiom (forall _module._default.IsNeverEndingStream#$S: Ty, 
    $ly: LayerType, 
    _k#0: Box, 
    s#0: DatatypeType :: 
  { _module.__default.IsNeverEndingStream_h#requires(_module._default.IsNeverEndingStream#$S, $ly, _k#0, s#0) } 
  $Is(s#0, Tclass._module.Stream(_module._default.IsNeverEndingStream#$S))
     ==> _module.__default.IsNeverEndingStream_h#requires(_module._default.IsNeverEndingStream#$S, $ly, _k#0, s#0)
       == true);

// function declaration for _module._default.AnInfiniteStream
function _module.__default.AnInfiniteStream($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.AnInfiniteStream
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.AnInfiniteStream($ly) } 
    _module.__default.AnInfiniteStream#canCall() || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.AnInfiniteStream($ly), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.AnInfiniteStream (revealed)
axiom {:id "id55"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.AnInfiniteStream($LS($ly)) } 
    _module.__default.AnInfiniteStream#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.AnInfiniteStream#canCall()
         && _module.__default.AnInfiniteStream($LS($ly))
           == Lit(#_module.Stream.Cons($Box(LitInt(0)), Lit(_module.__default.AnInfiniteStream($ly)))));
}

function _module.__default.AnInfiniteStream#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.AnInfiniteStream($LS($ly)) } 
  _module.__default.AnInfiniteStream($LS($ly))
     == _module.__default.AnInfiniteStream($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.AnInfiniteStream(AsFuelBottom($ly)) } 
  _module.__default.AnInfiniteStream($ly)
     == _module.__default.AnInfiniteStream($LZ));

function _module.__default.AnInfiniteStream#requires(LayerType) : bool;

// #requires axiom for _module.__default.AnInfiniteStream
axiom (forall $ly: LayerType :: 
  { _module.__default.AnInfiniteStream#requires($ly) } 
  _module.__default.AnInfiniteStream#requires($ly) == true);

procedure {:verboseName "AnInfiniteStream (well-formedness)"} CheckWellformed$$_module.__default.AnInfiniteStream();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition0 (well-formedness)"} CheckWellFormed$$_module.__default.Proposition0();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition0 (call)"} Call$$_module.__default.Proposition0();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AnInfiniteStream#canCall()
     && _module.__default.IsNeverEndingStream#canCall(TInt, Lit(_module.__default.AnInfiniteStream($LS($LZ))));
  free ensures {:id "id58"} _module.__default.IsNeverEndingStream#canCall(TInt, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
     && 
    Lit(_module.__default.IsNeverEndingStream(TInt, $LS($LZ), Lit(_module.__default.AnInfiniteStream($LS($LZ)))))
     && (if _module.Stream.Nil_q(Lit(_module.__default.AnInfiniteStream($LS($LZ))))
       then false
       else (var tail#1 := Lit(_module.Stream.tail(Lit(_module.__default.AnInfiniteStream($LS($LZ))))); 
        Lit(_module.__default.IsNeverEndingStream(TInt, $LS($LZ), tail#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition0# (co-call)"} CoCall$$_module.__default.Proposition0_h(_k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AnInfiniteStream#canCall()
     && _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))));
  free ensures {:id "id59"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
     && 
    _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Stream.Nil_q(Lit(_module.__default.AnInfiniteStream($LS($LZ))))
         then false
         else (var tail#3 := Lit(_module.Stream.tail(Lit(_module.__default.AnInfiniteStream($LS($LZ))))); 
          _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), tail#3))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k'#0, _module.__default.AnInfiniteStream($LS($LZ))) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k'#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition0# (correctness)"} Impl$$_module.__default.Proposition0_h(_k#0: Box) returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.AnInfiniteStream#canCall()
     && _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))));
  ensures {:id "id60"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
     ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        Lit(_module.Stream.Nil_q(Lit(_module.__default.AnInfiniteStream($LS($LZ)))))
         ==> Lit(false));
  ensures {:id "id61"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
     ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !Lit(_module.Stream.Nil_q(Lit(_module.__default.AnInfiniteStream($LS($LZ)))))
         ==> (var tail#4 := Lit(_module.Stream.tail(Lit(_module.__default.AnInfiniteStream($LS($LS($LZ)))))); 
          _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), tail#4)));
  ensures {:id "id62"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
     ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, Lit(_module.__default.AnInfiniteStream($LS($LZ))))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), _k'#1, _module.__default.AnInfiniteStream($LS($LS($LZ)))) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.IsNeverEndingStream_h(TInt, 
              $LS($LS($LZ)), 
              _k'#1, 
              Lit(_module.__default.AnInfiniteStream($LS($LS($LZ)))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition0# (correctness)"} Impl$$_module.__default.Proposition0_h(_k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Proposition0#, Impl$$_module.__default.Proposition0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box :: 
      { _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), $ih#_k0#0, Lit(_module.__default.AnInfiniteStream($LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), $ih#_k0#0, Lit(_module.__default.AnInfiniteStream($LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(56,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(56,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box :: 
          { _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k'#2, _module.__default.AnInfiniteStream($LS($LZ))) } 
            { ORD#Less(_k'#2, _k#0) } 
          ORD#Less(_k'#2, _k#0)
             ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k'#2, Lit(_module.__default.AnInfiniteStream($LS($LZ)))));
    }
}



// function declaration for _module._default.HasBoundedHeight
function _module.__default.HasBoundedHeight(t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.HasBoundedHeight (revealed)
axiom {:id "id63"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.HasBoundedHeight(t#0) } 
    _module.__default.HasBoundedHeight#canCall(t#0)
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (forall n#0: int :: 
          { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0) } 
          LitInt(0) <= n#0
             ==> 
            LitInt(0) <= n#0
             ==> _module.Tree.Node_q(t#0)
               && _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0))
         && _module.__default.HasBoundedHeight(t#0)
           == (exists n#0: int :: 
            { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0) } 
            LitInt(0) <= n#0
               && 
              LitInt(0) <= n#0
               && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)));
// definition axiom for _module.__default.HasBoundedHeight for all literals (revealed)
axiom {:id "id64"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    {:weight 3} { _module.__default.HasBoundedHeight(Lit(t#0)) } 
    _module.__default.HasBoundedHeight#canCall(Lit(t#0))
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (forall n#1: int :: 
          { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#1) } 
          LitInt(0) <= n#1
             ==> 
            LitInt(0) <= n#1
             ==> _module.Tree.Node_q(Lit(t#0))
               && _module.__default.LowerThan#canCall(Lit(_module.Tree.children(Lit(t#0))), n#1))
         && _module.__default.HasBoundedHeight(Lit(t#0))
           == (exists n#1: int :: 
            { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#1) } 
            LitInt(0) <= n#1
               && 
              LitInt(0) <= n#1
               && _module.__default.LowerThan($LS($LZ), Lit(_module.Tree.children(Lit(t#0))), n#1)));
}

function _module.__default.HasBoundedHeight#canCall(t#0: DatatypeType) : bool;

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

function _module.__default.HasBoundedHeight#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.HasBoundedHeight
axiom (forall t#0: DatatypeType :: 
  { _module.__default.HasBoundedHeight#requires(t#0) } 
  $Is(t#0, Tclass._module.Tree())
     ==> _module.__default.HasBoundedHeight#requires(t#0) == true);

procedure {:verboseName "HasBoundedHeight (well-formedness)"} CheckWellformed$$_module.__default.HasBoundedHeight(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.LowerThan
function _module.__default.LowerThan($ly: LayerType, s#0: DatatypeType, n#0: int) : bool
uses {
// definition axiom for _module.__default.LowerThan (revealed)
axiom {:id "id66"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.LowerThan($LS($ly), s#0, n#0) } 
    _module.__default.LowerThan#canCall(s#0, n#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && LitInt(0) <= n#0)
       ==> (!_module.Stream.Nil_q(s#0)
           ==> (var tail#1 := _module.Stream.tail(s#0); 
            (var t#1 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              LitInt(1) <= n#0
                 ==> _module.Tree.Node_q(t#1)
                   && _module.__default.LowerThan#canCall(_module.Tree.children(t#1), n#0 - 1)
                   && (_module.__default.LowerThan($ly, _module.Tree.children(t#1), n#0 - 1)
                     ==> _module.__default.LowerThan#canCall(tail#1, n#0)))))
         && _module.__default.LowerThan($LS($ly), s#0, n#0)
           == (if _module.Stream.Nil_q(s#0)
             then true
             else (var tail#0 := _module.Stream.tail(s#0); 
              (var t#0 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                LitInt(1) <= n#0
                   && _module.__default.LowerThan($ly, _module.Tree.children(t#0), n#0 - 1)
                   && _module.__default.LowerThan($ly, tail#0, n#0)))));
}

function _module.__default.LowerThan#canCall(s#0: DatatypeType, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.LowerThan($LS($ly), s#0, n#0) } 
  _module.__default.LowerThan($LS($ly), s#0, n#0)
     == _module.__default.LowerThan($ly, s#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.LowerThan(AsFuelBottom($ly), s#0, n#0) } 
  _module.__default.LowerThan($ly, s#0, n#0)
     == _module.__default.LowerThan($LZ, s#0, n#0));

function _module.__default.LowerThan#requires(LayerType, DatatypeType, int) : bool;

// #requires axiom for _module.__default.LowerThan
axiom (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.LowerThan#requires($ly, s#0, n#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())) && LitInt(0) <= n#0
     ==> _module.__default.LowerThan#requires($ly, s#0, n#0) == true);

// 1st prefix predicate axiom for _module.__default.LowerThan_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.LowerThan($LS($ly), s#0, n#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && LitInt(0) <= n#0
         && _module.__default.LowerThan($LS($ly), s#0, n#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0) } 
        _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.LowerThan($LS($ly), s#0, n#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && LitInt(0) <= n#0
         && (forall _k#0: Box :: 
          { _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0) } 
          _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0))
       ==> _module.__default.LowerThan($LS($ly), s#0, n#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int, _k#0: Box :: 
    { _module.__default.LowerThan_h($ly, _k#0, s#0, n#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && LitInt(0) <= n#0
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.LowerThan_h($ly, _k#0, s#0, n#0));

procedure {:verboseName "LowerThan (well-formedness)"} CheckWellformed$$_module.__default.LowerThan(s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())), 
    n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LowerThan (well-formedness)"} CheckWellformed$$_module.__default.LowerThan(s#0: DatatypeType, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var t#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##s#1: DatatypeType;
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
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (s#0 == #_module.Stream.Nil())
        {
            assume {:id "id73"} _module.__default.LowerThan($LS($LZ), s#0, n#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.LowerThan($LS($LZ), s#0, n#0), TBool);
            return;
        }
        else if (s#0 == #_module.Stream.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Tree());
            assume $Is(_mcc#1#0, Tclass._module.Stream(Tclass._module.Tree()));
            havoc tail#Z#0;
            assume {:id "id67"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Stream(Tclass._module.Tree()));
            assume {:id "id68"} tail#Z#0 == let#0#0#0;
            havoc t#Z#0;
            assume {:id "id69"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Tree());
            assume {:id "id70"} t#Z#0 == let#1#0#0;
            if (LitInt(1) <= n#0)
            {
                assume _module.Tree.Node_q(t#Z#0);
                ##s#0 := _module.Tree.children(t#Z#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assert {:id "id71"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#0 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assume _module.__default.LowerThan#canCall(_module.Tree.children(t#Z#0), n#0 - 1);
            }

            if (LitInt(1) <= n#0
               && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#Z#0), n#0 - 1))
            {
                ##s#1 := tail#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#1 := n#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                assume _module.__default.LowerThan#canCall(tail#Z#0, n#0);
            }

            assume {:id "id72"} _module.__default.LowerThan($LS($LZ), s#0, n#0)
               == (
                LitInt(1) <= n#0
                 && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#Z#0), n#0 - 1)
                 && _module.__default.LowerThan($LS($LZ), tail#Z#0, n#0));
            assume LitInt(1) <= n#0
               ==> _module.Tree.Node_q(t#Z#0)
                 && _module.__default.LowerThan#canCall(_module.Tree.children(t#Z#0), n#0 - 1)
                 && (_module.__default.LowerThan($LS($LZ), _module.Tree.children(t#Z#0), n#0 - 1)
                   ==> _module.__default.LowerThan#canCall(tail#Z#0, n#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.LowerThan($LS($LZ), s#0, n#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.LowerThan#
function _module.__default.LowerThan_h($ly: LayerType, _k#0: Box, s#0: DatatypeType, n#0: int) : bool
uses {
// definition axiom for _module.__default.LowerThan_h (revealed)
axiom {:id "id74"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, n#0: int :: 
    { _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0) } 
    _module.__default.LowerThan_h#canCall(_k#0, s#0, n#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && LitInt(0) <= n#0)
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#3 := _module.Stream.tail(s#0); 
            (var t#3 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              LitInt(1) <= n#0
                 ==> _module.Tree.Node_q(t#3)
                   && _module.__default.LowerThan_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#3), n#0 - 1)
                   && (_module.__default.LowerThan_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#3), n#0 - 1)
                     ==> _module.__default.LowerThan_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#3, n#0)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then true
             else (var tail#4 := _module.Stream.tail(s#0); 
              (var t#4 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                LitInt(1) <= n#0
                   && _module.__default.LowerThan_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#4), n#0 - 1)
                   && _module.__default.LowerThan_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), tail#4, n#0)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.LowerThan_h($ly, _k'#0, s#0, n#0) } 
            ORD#Less(_k'#0, _k#0) ==> _module.__default.LowerThan_h#canCall(_k'#0, s#0, n#0)))
         && _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then true
                 else (var tail#2 := _module.Stream.tail(s#0); 
                  (var t#2 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                    LitInt(1) <= n#0
                       && _module.__default.LowerThan_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#2), n#0 - 1)
                       && _module.__default.LowerThan_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), tail#2, n#0)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.LowerThan_h($ly, _k'#0, s#0, n#0) } 
                ORD#Less(_k'#0, _k#0) ==> _module.__default.LowerThan_h($ly, _k'#0, s#0, n#0)))));
// definition axiom for _module.__default.LowerThan_h for decreasing-related literals (revealed)
axiom {:id "id75"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.LowerThan_h($LS($ly), Lit(_k#0), s#0, n#0) } 
    _module.__default.LowerThan_h#canCall(Lit(_k#0), s#0, n#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && LitInt(0) <= n#0)
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#6 := _module.Stream.tail(s#0); 
            (var t#6 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              LitInt(1) <= n#0
                 ==> _module.Tree.Node_q(t#6)
                   && _module.__default.LowerThan_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#6), n#0 - 1)
                   && (_module.__default.LowerThan_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#6), n#0 - 1)
                     ==> _module.__default.LowerThan_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#6, n#0)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then true
             else (var tail#7 := _module.Stream.tail(s#0); 
              (var t#7 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                LitInt(1) <= n#0
                   && _module.__default.LowerThan_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#7), n#0 - 1)
                   && _module.__default.LowerThan_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#7, n#0)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.LowerThan_h($LS($ly), _k'#1, s#0, n#0) } 
            ORD#Less(_k'#1, _k#0) ==> _module.__default.LowerThan_h#canCall(_k'#1, s#0, n#0)))
         && _module.__default.LowerThan_h($LS($ly), Lit(_k#0), s#0, n#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then true
                 else (var tail#5 := _module.Stream.tail(s#0); 
                  (var t#5 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                    LitInt(1) <= n#0
                       && _module.__default.LowerThan_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#5), n#0 - 1)
                       && _module.__default.LowerThan_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#5, n#0)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.LowerThan_h($LS($ly), _k'#1, s#0, n#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.LowerThan_h($LS($ly), _k'#1, s#0, n#0)))));
// definition axiom for _module.__default.LowerThan_h for all literals (revealed)
axiom {:id "id76"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.LowerThan_h($LS($ly), Lit(_k#0), Lit(s#0), LitInt(n#0)) } 
    _module.__default.LowerThan_h#canCall(Lit(_k#0), Lit(s#0), LitInt(n#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && LitInt(0) <= n#0)
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.Stream.Nil_q(Lit(s#0)))
           ==> (var tail#9 := Lit(_module.Stream.tail(Lit(s#0))); 
            (var t#9 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
              LitInt(1) <= LitInt(n#0)
                 ==> _module.Tree.Node_q(t#9)
                   && _module.__default.LowerThan_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#9), LitInt(n#0 - 1))
                   && (_module.__default.LowerThan_h($LS($ly), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.Tree.children(t#9), 
                      LitInt(n#0 - 1))
                     ==> _module.__default.LowerThan_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#9, LitInt(n#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(Lit(s#0))
             then true
             else (var tail#10 := Lit(_module.Stream.tail(Lit(s#0))); 
              (var t#10 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
                LitInt(1) <= LitInt(n#0)
                   && _module.__default.LowerThan_h($LS($ly), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(_module.Tree.children(t#10)), 
                    LitInt(n#0 - 1))
                   && _module.__default.LowerThan_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#10, LitInt(n#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.LowerThan_h($LS($ly), _k'#2, s#0, n#0) } 
            ORD#Less(_k'#2, _k#0) ==> _module.__default.LowerThan_h#canCall(_k'#2, s#0, n#0)))
         && _module.__default.LowerThan_h($LS($ly), Lit(_k#0), Lit(s#0), LitInt(n#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(Lit(s#0))
                 then true
                 else (var tail#8 := Lit(_module.Stream.tail(Lit(s#0))); 
                  (var t#8 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
                    LitInt(1) <= LitInt(n#0)
                       && _module.__default.LowerThan_h($LS($ly), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        Lit(_module.Tree.children(t#8)), 
                        LitInt(n#0 - 1))
                       && _module.__default.LowerThan_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#8, LitInt(n#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.LowerThan_h($LS($ly), _k'#2, s#0, n#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.LowerThan_h($LS($ly), _k'#2, s#0, n#0)))));
}

function _module.__default.LowerThan_h#canCall(_k#0: Box, s#0: DatatypeType, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, n#0: int :: 
  { _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0) } 
  _module.__default.LowerThan_h($LS($ly), _k#0, s#0, n#0)
     == _module.__default.LowerThan_h($ly, _k#0, s#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, n#0: int :: 
  { _module.__default.LowerThan_h(AsFuelBottom($ly), _k#0, s#0, n#0) } 
  _module.__default.LowerThan_h($ly, _k#0, s#0, n#0)
     == _module.__default.LowerThan_h($LZ, _k#0, s#0, n#0));

function _module.__default.LowerThan_h#requires(LayerType, Box, DatatypeType, int) : bool;

// #requires axiom for _module.__default.LowerThan_h
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, n#0: int :: 
  { _module.__default.LowerThan_h#requires($ly, _k#0, s#0, n#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())) && LitInt(0) <= n#0
     ==> _module.__default.LowerThan_h#requires($ly, _k#0, s#0, n#0) == true);

procedure {:verboseName "LowerThan_Lemma (well-formedness)"} CheckWellFormed$$_module.__default.LowerThan__Lemma(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0, 
    h#0: int where LitInt(0) <= h#0);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LowerThan_Lemma (call)"} Call$$_module.__default.LowerThan__Lemma(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0, 
    h#0: int where LitInt(0) <= h#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.LowerThan#canCall(s#0, h#0)
     && (_module.__default.LowerThan($LS($LZ), s#0, h#0)
       ==> _module.__default.Tail#canCall(Tclass._module.Tree(), s#0, n#0)
         && _module.__default.LowerThan#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0));
  free ensures {:id "id80"} _module.__default.LowerThan($LS($LZ), s#0, h#0)
     ==> _module.__default.LowerThan#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
       && 
      _module.__default.LowerThan($LS($LZ), _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
       && (if _module.Stream.Nil_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0))
         then true
         else (var tail#1 := _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0)); 
          (var t#1 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0))): DatatypeType; 
            LitInt(1) <= h#0
               && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#1), h#0 - 1)
               && _module.__default.LowerThan($LS($LZ), tail#1, h#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "LowerThan_Lemma (correctness)"} Impl$$_module.__default.LowerThan__Lemma(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0, 
    h#0: int where LitInt(0) <= h#0)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.LowerThan#canCall(s#0, h#0)
     && (_module.__default.LowerThan($LS($LZ), s#0, h#0)
       ==> _module.__default.Tail#canCall(Tclass._module.Tree(), s#0, n#0)
         && _module.__default.LowerThan#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0));
  ensures {:id "id81"} _module.__default.LowerThan($LS($LZ), s#0, h#0)
     ==> 
    _module.__default.LowerThan#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
       || (_module.Stream.Nil_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0))
         ==> Lit(true));
  ensures {:id "id82"} _module.__default.LowerThan($LS($LZ), s#0, h#0)
     ==> 
    _module.__default.LowerThan#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
       || (!_module.Stream.Nil_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0))
         ==> (var tail#2 := _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0)); 
          (var t#2 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0))): DatatypeType; 
            LitInt(1) <= h#0)));
  ensures {:id "id83"} _module.__default.LowerThan($LS($LZ), s#0, h#0)
     ==> 
    _module.__default.LowerThan#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
       || (!_module.Stream.Nil_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0))
         ==> (var tail#2 := _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0)); 
          (var t#2 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0))): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#2), h#0 - 1))));
  ensures {:id "id84"} _module.__default.LowerThan($LS($LZ), s#0, h#0)
     ==> 
    _module.__default.LowerThan#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), h#0)
       || (!_module.Stream.Nil_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0))
         ==> (var tail#2 := _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0)); 
          (var t#2 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0))): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), tail#2, h#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LowerThan_Lemma (correctness)"} Impl$$_module.__default.LowerThan__Lemma(s#0: DatatypeType, n#0: int, h#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var s##0: DatatypeType;
  var k##0: int;
  var n##0: int;
  var ##s#3: DatatypeType;
  var ##n#3: int;
  var _mcc#0#1_0_0: DatatypeType;
  var _mcc#1#1_0_0: DatatypeType;
  var tail#1_0_0: DatatypeType;
  var let#1_0_0#0#0: DatatypeType;
  var t#1_0_0: DatatypeType;
  var let#1_0_1#0#0: DatatypeType;
  var s##1_0_0: DatatypeType;
  var n##1_0_0: int;
  var h##1_0_0: int;
  var s##1_0_1: DatatypeType;
  var n##1_0_1: int;

    // AddMethodImpl: LowerThan_Lemma, Impl$$_module.__default.LowerThan__Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType, $ih#n0#0: int, $ih#h0#0: int :: 
      { _module.__default.LowerThan($LS($LZ), 
          _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), $ih#s0#0, $ih#n0#0), 
          $ih#h0#0) } 
      $Is($ih#s0#0, Tclass._module.Stream(Tclass._module.Tree()))
           && LitInt(0) <= $ih#n0#0
           && LitInt(0) <= $ih#h0#0
           && Lit(true)
           && ((0 <= $ih#n0#0 && $ih#n0#0 < n#0)
             || ($ih#n0#0 == n#0 && 0 <= $ih#h0#0 && $ih#h0#0 < h#0))
         ==> 
        _module.__default.LowerThan($LS($LZ), $ih#s0#0, $ih#h0#0)
         ==> _module.__default.LowerThan($LS($LZ), 
          _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), $ih#s0#0, $ih#n0#0), 
          $ih#h0#0));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(85,14)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id85"} $Is(LitInt(0), Tclass._System.nat());
    k##0 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#0;
    call {:id "id86"} Call$$_module.__default.Tail__Lemma1(Tclass._module.Tree(), s##0, k##0, n##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(86,3)
    if (n#0 != LitInt(0))
    {
        ##s#3 := s#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#3, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        ##n#3 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#0, n#0);
    }

    assume n#0 != LitInt(0)
       ==> $IsA#_module.Stream(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0))
         && _module.__default.Tail#canCall(Tclass._module.Tree(), s#0, n#0);
    if (n#0 == LitInt(0)
       || $Eq#_module.Stream(Tclass._module.Tree(), 
        Tclass._module.Tree(), 
        $LS($LS($LZ)), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), 
        #_module.Stream.Nil()))
    {
    }
    else
    {
        assume true;
        havoc _mcc#0#1_0_0, _mcc#1#1_0_0;
        if (s#0 == #_module.Stream.Cons($Box(_mcc#0#1_0_0), _mcc#1#1_0_0))
        {
            assume $Is(_mcc#0#1_0_0, Tclass._module.Tree());
            assume $Is(_mcc#1#1_0_0, Tclass._module.Stream(Tclass._module.Tree()));
            havoc tail#1_0_0;
            assume $Is(tail#1_0_0, Tclass._module.Stream(Tclass._module.Tree()))
               && $IsAlloc(tail#1_0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume {:id "id88"} let#1_0_0#0#0 == _mcc#1#1_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_0_0#0#0, Tclass._module.Stream(Tclass._module.Tree()));
            assume {:id "id89"} tail#1_0_0 == let#1_0_0#0#0;
            havoc t#1_0_0;
            assume $Is(t#1_0_0, Tclass._module.Tree())
               && $IsAlloc(t#1_0_0, Tclass._module.Tree(), $Heap);
            assume {:id "id90"} let#1_0_1#0#0 == _mcc#0#1_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1_0_1#0#0, Tclass._module.Tree());
            assume {:id "id91"} t#1_0_0 == let#1_0_1#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(90,24)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##1_0_0 := tail#1_0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id92"} $Is(n#0 - 1, Tclass._System.nat());
            n##1_0_0 := n#0 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            h##1_0_0 := h#0;
            assert {:id "id93"} 0 <= n#0 || n##1_0_0 == n#0;
            assert {:id "id94"} 0 <= h#0 || n##1_0_0 < n#0 || h##1_0_0 == h#0;
            assert {:id "id95"} n##1_0_0 < n#0 || (n##1_0_0 == n#0 && h##1_0_0 < h#0);
            call {:id "id96"} Call$$_module.__default.LowerThan__Lemma(s##1_0_0, n##1_0_0, h##1_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(91,20)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##1_0_1 := s#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id97"} $Is(n#0 - 1, Tclass._System.nat());
            n##1_0_1 := n#0 - 1;
            call {:id "id98"} Call$$_module.__default.Tail__Lemma0(Tclass._module.Tree(), s##1_0_1, n##1_0_1);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (s#0 == #_module.Stream.Nil())
        {
            assert {:id "id87"} false;
        }
        else
        {
            assume false;
        }
    }
}



// function declaration for _module._default.IsFiniteSomewhere
function _module.__default.IsFiniteSomewhere(t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.IsFiniteSomewhere (revealed)
axiom {:id "id99"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.IsFiniteSomewhere(t#0) } 
    _module.__default.IsFiniteSomewhere#canCall(t#0)
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> _module.Tree.Node_q(t#0)
         && _module.__default.InfiniteEverywhere#canCall(_module.Tree.children(t#0))
         && _module.__default.IsFiniteSomewhere(t#0)
           == !_module.__default.InfiniteEverywhere($LS($LZ), _module.Tree.children(t#0)));
// definition axiom for _module.__default.IsFiniteSomewhere for all literals (revealed)
axiom {:id "id100"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsFiniteSomewhere(Lit(t#0)) } 
    _module.__default.IsFiniteSomewhere#canCall(Lit(t#0))
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> _module.Tree.Node_q(Lit(t#0))
         && _module.__default.InfiniteEverywhere#canCall(Lit(_module.Tree.children(Lit(t#0))))
         && _module.__default.IsFiniteSomewhere(Lit(t#0))
           == !Lit(_module.__default.InfiniteEverywhere($LS($LZ), Lit(_module.Tree.children(Lit(t#0))))));
}

function _module.__default.IsFiniteSomewhere#canCall(t#0: DatatypeType) : bool;

function _module.__default.IsFiniteSomewhere#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.IsFiniteSomewhere
axiom (forall t#0: DatatypeType :: 
  { _module.__default.IsFiniteSomewhere#requires(t#0) } 
  $Is(t#0, Tclass._module.Tree())
     ==> _module.__default.IsFiniteSomewhere#requires(t#0) == true);

procedure {:verboseName "IsFiniteSomewhere (well-formedness)"} CheckWellformed$$_module.__default.IsFiniteSomewhere(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.InfiniteEverywhere
function _module.__default.InfiniteEverywhere($ly: LayerType, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfiniteEverywhere (revealed)
axiom {:id "id102"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.InfiniteEverywhere($LS($ly), s#0) } 
    _module.__default.InfiniteEverywhere#canCall(s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (!_module.Stream.Nil_q(s#0)
           ==> (var tail#1 := _module.Stream.tail(s#0); 
            (var t#1 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              _module.Tree.Node_q(t#1)
                 && _module.__default.InfiniteEverywhere#canCall(_module.Tree.children(t#1))
                 && (_module.__default.InfiniteEverywhere($ly, _module.Tree.children(t#1))
                   ==> _module.__default.InfiniteEverywhere#canCall(tail#1)))))
         && _module.__default.InfiniteEverywhere($LS($ly), s#0)
           == (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#0 := _module.Stream.tail(s#0); 
              (var t#0 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                _module.__default.InfiniteEverywhere($ly, _module.Tree.children(t#0))
                   && _module.__default.InfiniteEverywhere($ly, tail#0)))));
}

function _module.__default.InfiniteEverywhere#canCall(s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.InfiniteEverywhere($LS($ly), s#0) } 
  _module.__default.InfiniteEverywhere($LS($ly), s#0)
     == _module.__default.InfiniteEverywhere($ly, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.InfiniteEverywhere(AsFuelBottom($ly), s#0) } 
  _module.__default.InfiniteEverywhere($ly, s#0)
     == _module.__default.InfiniteEverywhere($LZ, s#0));

function _module.__default.InfiniteEverywhere#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.InfiniteEverywhere
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.InfiniteEverywhere#requires($ly, s#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
     ==> _module.__default.InfiniteEverywhere#requires($ly, s#0) == true);

// 1st prefix predicate axiom for _module.__default.InfiniteEverywhere_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.InfiniteEverywhere($LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && _module.__default.InfiniteEverywhere($LS($ly), s#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0) } 
        _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.InfiniteEverywhere($LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && (forall _k#0: Box :: 
          { _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0) } 
          _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0))
       ==> _module.__default.InfiniteEverywhere($LS($ly), s#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, _k#0: Box :: 
    { _module.__default.InfiniteEverywhere_h($ly, _k#0, s#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())) && _k#0 == ORD#FromNat(0)
       ==> _module.__default.InfiniteEverywhere_h($ly, _k#0, s#0));

procedure {:verboseName "InfiniteEverywhere (well-formedness)"} CheckWellformed$$_module.__default.InfiniteEverywhere(s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.InfiniteEverywhere#
function _module.__default.InfiniteEverywhere_h($ly: LayerType, _k#0: Box, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfiniteEverywhere_h (revealed)
axiom {:id "id109"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    { _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0) } 
    _module.__default.InfiniteEverywhere_h#canCall(_k#0, s#0)
         || (3 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#3 := _module.Stream.tail(s#0); 
            (var t#3 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              _module.Tree.Node_q(t#3)
                 && _module.__default.InfiniteEverywhere_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#3))
                 && (_module.__default.InfiniteEverywhere_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#3))
                   ==> _module.__default.InfiniteEverywhere_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#3)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#4 := _module.Stream.tail(s#0); 
              (var t#4 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                _module.__default.InfiniteEverywhere_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#4))
                   && _module.__default.InfiniteEverywhere_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), tail#4)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.InfiniteEverywhere_h($ly, _k'#0, s#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.InfiniteEverywhere_h#canCall(_k'#0, s#0)))
         && _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then false
                 else (var tail#2 := _module.Stream.tail(s#0); 
                  (var t#2 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                    _module.__default.InfiniteEverywhere_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#2))
                       && _module.__default.InfiniteEverywhere_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), tail#2)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.InfiniteEverywhere_h($ly, _k'#0, s#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.InfiniteEverywhere_h($ly, _k'#0, s#0)))));
// definition axiom for _module.__default.InfiniteEverywhere_h for decreasing-related literals (revealed)
axiom {:id "id110"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfiniteEverywhere_h($LS($ly), Lit(_k#0), s#0) } 
    _module.__default.InfiniteEverywhere_h#canCall(Lit(_k#0), s#0)
         || (3 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#6 := _module.Stream.tail(s#0); 
            (var t#6 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              _module.Tree.Node_q(t#6)
                 && _module.__default.InfiniteEverywhere_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#6))
                 && (_module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#6))
                   ==> _module.__default.InfiniteEverywhere_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#6)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#7 := _module.Stream.tail(s#0); 
              (var t#7 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#7))
                   && _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#7)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.InfiniteEverywhere_h($LS($ly), _k'#1, s#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.InfiniteEverywhere_h#canCall(_k'#1, s#0)))
         && _module.__default.InfiniteEverywhere_h($LS($ly), Lit(_k#0), s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then false
                 else (var tail#5 := _module.Stream.tail(s#0); 
                  (var t#5 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                    _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#5))
                       && _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#5)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.InfiniteEverywhere_h($LS($ly), _k'#1, s#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.InfiniteEverywhere_h($LS($ly), _k'#1, s#0)))));
// definition axiom for _module.__default.InfiniteEverywhere_h for all literals (revealed)
axiom {:id "id111"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfiniteEverywhere_h($LS($ly), Lit(_k#0), Lit(s#0)) } 
    _module.__default.InfiniteEverywhere_h#canCall(Lit(_k#0), Lit(s#0))
         || (3 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.Stream.Nil_q(Lit(s#0)))
           ==> (var tail#9 := Lit(_module.Stream.tail(Lit(s#0))); 
            (var t#9 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
              _module.Tree.Node_q(t#9)
                 && _module.__default.InfiniteEverywhere_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#9))
                 && (_module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#9))
                   ==> _module.__default.InfiniteEverywhere_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#9)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(Lit(s#0))
             then false
             else (var tail#10 := Lit(_module.Stream.tail(Lit(s#0))); 
              (var t#10 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
                _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Tree.children(t#10)))
                   && _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#10)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.InfiniteEverywhere_h($LS($ly), _k'#2, s#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.InfiniteEverywhere_h#canCall(_k'#2, s#0)))
         && _module.__default.InfiniteEverywhere_h($LS($ly), Lit(_k#0), Lit(s#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(Lit(s#0))
                 then false
                 else (var tail#8 := Lit(_module.Stream.tail(Lit(s#0))); 
                  (var t#8 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
                    _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Tree.children(t#8)))
                       && _module.__default.InfiniteEverywhere_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#8)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.InfiniteEverywhere_h($LS($ly), _k'#2, s#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.InfiniteEverywhere_h($LS($ly), _k'#2, s#0)))));
}

function _module.__default.InfiniteEverywhere_h#canCall(_k#0: Box, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0) } 
  _module.__default.InfiniteEverywhere_h($LS($ly), _k#0, s#0)
     == _module.__default.InfiniteEverywhere_h($ly, _k#0, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.InfiniteEverywhere_h(AsFuelBottom($ly), _k#0, s#0) } 
  _module.__default.InfiniteEverywhere_h($ly, _k#0, s#0)
     == _module.__default.InfiniteEverywhere_h($LZ, _k#0, s#0));

function _module.__default.InfiniteEverywhere_h#requires(LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.InfiniteEverywhere_h
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.InfiniteEverywhere_h#requires($ly, _k#0, s#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
     ==> _module.__default.InfiniteEverywhere_h#requires($ly, _k#0, s#0) == true);

// function declaration for _module._default.SkinnyTree
function _module.__default.SkinnyTree($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.SkinnyTree
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.SkinnyTree($ly) } 
    _module.__default.SkinnyTree#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.SkinnyTree($ly), Tclass._module.Tree()));
// definition axiom for _module.__default.SkinnyTree (revealed)
axiom {:id "id112"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.SkinnyTree($LS($ly)) } 
    _module.__default.SkinnyTree#canCall() || 2 < $FunctionContextHeight
       ==> _module.__default.SkinnyTree#canCall()
         && _module.__default.SkinnyTree($LS($ly))
           == Lit(#_module.Tree.Node(Lit(#_module.Stream.Cons($Box(Lit(_module.__default.SkinnyTree($ly))), Lit(#_module.Stream.Nil()))))));
}

function _module.__default.SkinnyTree#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.SkinnyTree($LS($ly)) } 
  _module.__default.SkinnyTree($LS($ly)) == _module.__default.SkinnyTree($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.SkinnyTree(AsFuelBottom($ly)) } 
  _module.__default.SkinnyTree($ly) == _module.__default.SkinnyTree($LZ));

function _module.__default.SkinnyTree#requires(LayerType) : bool;

// #requires axiom for _module.__default.SkinnyTree
axiom (forall $ly: LayerType :: 
  { _module.__default.SkinnyTree#requires($ly) } 
  _module.__default.SkinnyTree#requires($ly) == true);

procedure {:verboseName "SkinnyTree (well-formedness)"} CheckWellformed$$_module.__default.SkinnyTree();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition1 (well-formedness)"} CheckWellFormed$$_module.__default.Proposition1();
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition1 (call)"} Call$$_module.__default.Proposition1();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.SkinnyTree#canCall()
     && _module.__default.IsFiniteSomewhere#canCall(Lit(_module.__default.SkinnyTree($LS($LZ))))
     && (Lit(_module.__default.IsFiniteSomewhere(Lit(_module.__default.SkinnyTree($LS($LZ)))))
       ==> _module.__default.SkinnyTree#canCall()
         && _module.__default.HasBoundedHeight#canCall(Lit(_module.__default.SkinnyTree($LS($LZ)))));
  free ensures {:id "id116"} _module.__default.IsFiniteSomewhere#canCall(Lit(_module.__default.SkinnyTree($LS($LZ))))
     && 
    Lit(_module.__default.IsFiniteSomewhere(Lit(_module.__default.SkinnyTree($LS($LZ)))))
     && !Lit(_module.__default.InfiniteEverywhere($LS($LZ), 
        Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LZ)))))));
  ensures {:id "id117"} !Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.SkinnyTree($LS($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition1 (correctness)"} Impl$$_module.__default.Proposition1() returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.SkinnyTree#canCall()
     && _module.__default.IsFiniteSomewhere#canCall(Lit(_module.__default.SkinnyTree($LS($LZ))))
     && (Lit(_module.__default.IsFiniteSomewhere(Lit(_module.__default.SkinnyTree($LS($LZ)))))
       ==> _module.__default.SkinnyTree#canCall()
         && _module.__default.HasBoundedHeight#canCall(Lit(_module.__default.SkinnyTree($LS($LZ)))));
  ensures {:id "id118"} _module.__default.IsFiniteSomewhere#canCall(Lit(_module.__default.SkinnyTree($LS($LZ))))
     ==> Lit(_module.__default.IsFiniteSomewhere(Lit(_module.__default.SkinnyTree($LS($LZ)))))
       || !Lit(_module.__default.InfiniteEverywhere($LS($LS($LZ)), 
          Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LS($LZ))))))));
  ensures {:id "id119"} !Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.SkinnyTree($LS($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition1 (correctness)"} Impl$$_module.__default.Proposition1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var ##s#0: DatatypeType;
  var ##n#0: int;

    // AddMethodImpl: Proposition1, Impl$$_module.__default.Proposition1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(122,3)
    // Begin Comprehension WF check
    havoc n#0;
    if (LitInt(0) <= n#0)
    {
        if (LitInt(0) <= n#0)
        {
            assume _module.__default.SkinnyTree#canCall();
            assume _module.Tree.Node_q(Lit(_module.__default.SkinnyTree($LS($LZ))));
            assume _module.Tree.Node_q(Lit(_module.__default.SkinnyTree($LS($LZ))));
            ##s#0 := Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LZ))))), n#0);
        }
    }

    // End Comprehension WF check
    assume (forall n#1: int :: 
      { _module.__default.LowerThan($LS($LZ), _module.Tree.children(_module.__default.SkinnyTree($LS($LZ))), n#1) } 
      LitInt(0) <= n#1
         ==> 
        LitInt(0) <= n#1
         ==> _module.__default.SkinnyTree#canCall()
           && _module.Tree.Node_q(Lit(_module.__default.SkinnyTree($LS($LZ))))
           && _module.__default.LowerThan#canCall(Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LZ))))), n#1));
    assert {:id "id120"} {:subsumption 0} (forall n#1: int :: 
      { _module.__default.LowerThan($LS($LS($LZ)), 
          _module.Tree.children(_module.__default.SkinnyTree($LS($LS($LZ)))), 
          n#1) } 
      LitInt(0) <= n#1
           && (forall n$ih#0#0: int :: 
            { _module.__default.LowerThan($LS($LZ), 
                _module.Tree.children(_module.__default.SkinnyTree($LS($LZ))), 
                n$ih#0#0) } 
            LitInt(0) <= n$ih#0#0
               ==> 
              0 <= n$ih#0#0 && n$ih#0#0 < n#1
               ==> 
              LitInt(0) <= n$ih#0#0
               ==> !_module.__default.LowerThan($LS($LZ), 
                Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LZ))))), 
                n$ih#0#0))
           && true
         ==> 
        LitInt(0) <= n#1
         ==> !_module.__default.LowerThan($LS($LS($LZ)), 
          Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LS($LZ)))))), 
          n#1));
    assume {:id "id121"} (forall n#1: int :: 
      { _module.__default.LowerThan($LS($LZ), _module.Tree.children(_module.__default.SkinnyTree($LS($LZ))), n#1) } 
      LitInt(0) <= n#1
         ==> 
        LitInt(0) <= n#1
         ==> !_module.__default.LowerThan($LS($LZ), 
          Lit(_module.Tree.children(Lit(_module.__default.SkinnyTree($LS($LZ))))), 
          n#1));
}



procedure {:verboseName "Theorem0 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem0 (call)"} Call$$_module.__default.Theorem0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  // user-defined preconditions
  requires {:id "id124"} _module.__default.HasBoundedHeight#canCall(t#0)
     ==> _module.__default.HasBoundedHeight(t#0)
       || (exists n#0: int :: 
        { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0) } 
        LitInt(0) <= n#0
           && 
          LitInt(0) <= n#0
           && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsFiniteSomewhere#canCall(t#0);
  free ensures {:id "id125"} _module.__default.IsFiniteSomewhere#canCall(t#0)
     && 
    _module.__default.IsFiniteSomewhere(t#0)
     && !_module.__default.InfiniteEverywhere($LS($LZ), _module.Tree.children(t#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem0 (correctness)"} Impl$$_module.__default.Theorem0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id126"} _module.__default.HasBoundedHeight#canCall(t#0)
     && 
    _module.__default.HasBoundedHeight(t#0)
     && (exists n#1: int :: 
      { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#1) } 
      LitInt(0) <= n#1
         && 
        LitInt(0) <= n#1
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsFiniteSomewhere#canCall(t#0);
  ensures {:id "id127"} _module.__default.IsFiniteSomewhere#canCall(t#0)
     ==> _module.__default.IsFiniteSomewhere(t#0)
       || !_module.__default.InfiniteEverywhere($LS($LS($LZ)), _module.Tree.children(t#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem0 (correctness)"} Impl$$_module.__default.Theorem0(t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#2: int where LitInt(0) <= n#2;
  var n#3: int;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var k#0: int where LitInt(0) <= k#0;
  var $rhs##0: int;
  var s##0: DatatypeType;
  var n##0: int;

    // AddMethodImpl: Theorem0, Impl$$_module.__default.Theorem0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(131,9)
    havoc n#3;
    if (LitInt(0) <= n#3)
    {
        if (LitInt(0) <= n#3)
        {
            assume _module.Tree.Node_q(t#0);
            ##s#0 := _module.Tree.children(t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#0 := n#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#3);
        }

        assume LitInt(0) <= n#3
           ==> _module.Tree.Node_q(t#0)
             && _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#3);
    }

    assert {:id "id128"} ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), LitInt(0)))
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), LitInt(0)))
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), LitInt(0)))
       || (exists $as#n0#0: int :: 
        LitInt(0) <= $as#n0#0
           && 
          LitInt(0) <= $as#n0#0
           && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), $as#n0#0));
    havoc n#2;
    assume {:id "id129"} LitInt(0) <= n#2
       && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#2);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(137,19)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume _module.Tree.Node_q(t#0);
    assume _module.Tree.Node_q(t#0);
    // ProcessCallStmt: CheckSubrange
    s##0 := _module.Tree.children(t#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    n##0 := n#2;
    call {:id "id130"} $rhs##0 := Call$$_module.__default.FindNil(s##0, n##0);
    // TrCallStmt: After ProcessCallStmt
    k#0 := $rhs##0;
}



procedure {:verboseName "FindNil (well-formedness)"} CheckWellFormed$$_module.__default.FindNil(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0)
   returns (k#0: int where LitInt(0) <= k#0);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindNil (well-formedness)"} CheckWellFormed$$_module.__default.FindNil(s#0: DatatypeType, n#0: int) returns (k#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##_k#0: Box;
  var newtype$check#0: int;
  var ##s#1: DatatypeType;


    // AddMethodImpl: FindNil, CheckWellFormed$$_module.__default.FindNil
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.LowerThan#canCall(s#0, n#0);
    assume {:id "id132"} _module.__default.LowerThan($LS($LZ), s#0, n#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc k#0;
    newtype$check#0 := k#0;
    assert {:id "id133"} 0 <= newtype$check#0;
    ##_k#0 := ORD#FromNat(k#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
    ##s#1 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
    assume _module.__default.InfiniteEverywhere_h#canCall(ORD#FromNat(k#0), s#0);
    assume {:id "id134"} !_module.__default.InfiniteEverywhere_h($LS($LZ), ORD#FromNat(k#0), s#0);
}



procedure {:verboseName "FindNil (call)"} Call$$_module.__default.FindNil(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0)
   returns (k#0: int where LitInt(0) <= k#0);
  // user-defined preconditions
  requires {:id "id135"} _module.__default.LowerThan#canCall(s#0, n#0)
     ==> _module.__default.LowerThan($LS($LZ), s#0, n#0)
       || (_module.Stream.Nil_q(s#0) ==> Lit(true));
  requires {:id "id136"} _module.__default.LowerThan#canCall(s#0, n#0)
     ==> _module.__default.LowerThan($LS($LZ), s#0, n#0)
       || (!_module.Stream.Nil_q(s#0)
         ==> (var tail#0 := _module.Stream.tail(s#0); 
          (var t#0 := $Unbox(_module.Stream.head(s#0)): DatatypeType; LitInt(1) <= n#0)));
  requires {:id "id137"} _module.__default.LowerThan#canCall(s#0, n#0)
     ==> _module.__default.LowerThan($LS($LZ), s#0, n#0)
       || (!_module.Stream.Nil_q(s#0)
         ==> (var tail#0 := _module.Stream.tail(s#0); 
          (var t#0 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#0), n#0 - 1))));
  requires {:id "id138"} _module.__default.LowerThan#canCall(s#0, n#0)
     ==> _module.__default.LowerThan($LS($LZ), s#0, n#0)
       || (!_module.Stream.Nil_q(s#0)
         ==> (var tail#0 := _module.Stream.tail(s#0); 
          (var t#0 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), tail#0, n#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.InfiniteEverywhere_h#canCall(ORD#FromNat(k#0), s#0);
  ensures {:id "id139"} !_module.__default.InfiniteEverywhere_h($LS($LS($LZ)), ORD#FromNat(k#0), s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "FindNil (correctness)"} Impl$$_module.__default.FindNil(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0)
   returns (k#0: int where LitInt(0) <= k#0, $_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id140"} _module.__default.LowerThan#canCall(s#0, n#0)
     && 
    _module.__default.LowerThan($LS($LZ), s#0, n#0)
     && (if _module.Stream.Nil_q(s#0)
       then true
       else (var tail#3 := _module.Stream.tail(s#0); 
        (var t#3 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
          LitInt(1) <= n#0
             && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#3), n#0 - 1)
             && _module.__default.LowerThan($LS($LZ), tail#3, n#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.InfiniteEverywhere_h#canCall(ORD#FromNat(k#0), s#0);
  ensures {:id "id141"} !_module.__default.InfiniteEverywhere_h($LS($LS($LZ)), ORD#FromNat(k#0), s#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindNil (correctness)"} Impl$$_module.__default.FindNil(s#0: DatatypeType, n#0: int) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: DatatypeType;
  var _mcc#1#0_0: DatatypeType;
  var t#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var $rhs##0_0: int;
  var s##0_0: DatatypeType;
  var n##0_0: int;

    // AddMethodImpl: FindNil, Impl$$_module.__default.FindNil
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (s#0 == #_module.Stream.Nil())
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(144,19)
        assume true;
        assert {:id "id151"} $Is(LitInt(1), Tclass._System.nat());
        assume true;
        k#0 := LitInt(1);
    }
    else if (s#0 == #_module.Stream.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.Tree());
        assume $Is(_mcc#1#0_0, Tclass._module.Stream(Tclass._module.Tree()));
        havoc t#0_0;
        assume $Is(t#0_0, Tclass._module.Tree())
           && $IsAlloc(t#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id142"} let#0_0#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Tree());
        assume {:id "id143"} t#0_0 == let#0_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(146,16)
        assume true;
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume _module.Tree.Node_q(t#0_0);
        assume _module.Tree.Node_q(t#0_0);
        // ProcessCallStmt: CheckSubrange
        s##0_0 := _module.Tree.children(t#0_0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id144"} $Is(n#0 - 1, Tclass._System.nat());
        n##0_0 := n#0 - 1;
        assert {:id "id145"} 0 <= n#0 || n##0_0 == n#0;
        assert {:id "id146"} n##0_0 < n#0;
        call {:id "id147"} $rhs##0_0 := Call$$_module.__default.FindNil(s##0_0, n##0_0);
        // TrCallStmt: After ProcessCallStmt
        k#0 := $rhs##0_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(147,6)
        assume true;
        assert {:id "id149"} $Is(k#0 + 1, Tclass._System.nat());
        assume true;
        k#0 := k#0 + 1;
    }
    else
    {
        assume false;
    }
}



// function declaration for _module._default.HasFiniteHeightEverywhere_Bad
function _module.__default.HasFiniteHeightEverywhere__Bad(t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.HasFiniteHeightEverywhere__Bad (revealed)
axiom {:id "id153"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.HasFiniteHeightEverywhere__Bad(t#0) } 
    _module.__default.HasFiniteHeightEverywhere__Bad#canCall(t#0)
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> _module.Tree.Node_q(t#0)
         && _module.__default.InfiniteHeightSomewhere__Bad#canCall(_module.Tree.children(t#0))
         && _module.__default.HasFiniteHeightEverywhere__Bad(t#0)
           == !_module.__default.InfiniteHeightSomewhere__Bad($LS($LZ), _module.Tree.children(t#0)));
// definition axiom for _module.__default.HasFiniteHeightEverywhere__Bad for all literals (revealed)
axiom {:id "id154"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    {:weight 3} { _module.__default.HasFiniteHeightEverywhere__Bad(Lit(t#0)) } 
    _module.__default.HasFiniteHeightEverywhere__Bad#canCall(Lit(t#0))
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> _module.Tree.Node_q(Lit(t#0))
         && _module.__default.InfiniteHeightSomewhere__Bad#canCall(Lit(_module.Tree.children(Lit(t#0))))
         && _module.__default.HasFiniteHeightEverywhere__Bad(Lit(t#0))
           == !Lit(_module.__default.InfiniteHeightSomewhere__Bad($LS($LZ), Lit(_module.Tree.children(Lit(t#0))))));
}

function _module.__default.HasFiniteHeightEverywhere__Bad#canCall(t#0: DatatypeType) : bool;

function _module.__default.HasFiniteHeightEverywhere__Bad#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.HasFiniteHeightEverywhere__Bad
axiom (forall t#0: DatatypeType :: 
  { _module.__default.HasFiniteHeightEverywhere__Bad#requires(t#0) } 
  $Is(t#0, Tclass._module.Tree())
     ==> _module.__default.HasFiniteHeightEverywhere__Bad#requires(t#0) == true);

procedure {:verboseName "HasFiniteHeightEverywhere_Bad (well-formedness)"} CheckWellformed$$_module.__default.HasFiniteHeightEverywhere__Bad(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.InfiniteHeightSomewhere_Bad
function _module.__default.InfiniteHeightSomewhere__Bad($ly: LayerType, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfiniteHeightSomewhere__Bad (revealed)
axiom {:id "id156"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0) } 
    _module.__default.InfiniteHeightSomewhere__Bad#canCall(s#0)
         || (2 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (!_module.Stream.Nil_q(s#0)
           ==> (var tail#1 := _module.Stream.tail(s#0); 
            (var t#1 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              _module.Tree.Node_q(t#1)
                 && _module.__default.InfiniteHeightSomewhere__Bad#canCall(_module.Tree.children(t#1))
                 && (!_module.__default.InfiniteHeightSomewhere__Bad($ly, _module.Tree.children(t#1))
                   ==> _module.__default.InfiniteHeightSomewhere__Bad#canCall(tail#1)))))
         && _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0)
           == (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#0 := _module.Stream.tail(s#0); 
              (var t#0 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                _module.__default.InfiniteHeightSomewhere__Bad($ly, _module.Tree.children(t#0))
                   || _module.__default.InfiniteHeightSomewhere__Bad($ly, tail#0)))));
}

function _module.__default.InfiniteHeightSomewhere__Bad#canCall(s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0) } 
  _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0)
     == _module.__default.InfiniteHeightSomewhere__Bad($ly, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.InfiniteHeightSomewhere__Bad(AsFuelBottom($ly), s#0) } 
  _module.__default.InfiniteHeightSomewhere__Bad($ly, s#0)
     == _module.__default.InfiniteHeightSomewhere__Bad($LZ, s#0));

function _module.__default.InfiniteHeightSomewhere__Bad#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.InfiniteHeightSomewhere__Bad
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { _module.__default.InfiniteHeightSomewhere__Bad#requires($ly, s#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
     ==> _module.__default.InfiniteHeightSomewhere__Bad#requires($ly, s#0) == true);

// 1st prefix predicate axiom for _module.__default.InfiniteHeightSomewhere__Bad_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0) } 
        _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && (forall _k#0: Box :: 
          { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0) } 
          _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0))
       ==> _module.__default.InfiniteHeightSomewhere__Bad($LS($ly), s#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, _k#0: Box :: 
    { _module.__default.InfiniteHeightSomewhere__Bad_h($ly, _k#0, s#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())) && _k#0 == ORD#FromNat(0)
       ==> _module.__default.InfiniteHeightSomewhere__Bad_h($ly, _k#0, s#0));

procedure {:verboseName "InfiniteHeightSomewhere_Bad (well-formedness)"} CheckWellformed$$_module.__default.InfiniteHeightSomewhere__Bad(s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.InfiniteHeightSomewhere_Bad#
function _module.__default.InfiniteHeightSomewhere__Bad_h($ly: LayerType, _k#0: Box, s#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfiniteHeightSomewhere__Bad_h (revealed)
axiom {:id "id163"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0) } 
    _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#0)
         || (3 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#3 := _module.Stream.tail(s#0); 
            (var t#3 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              _module.Tree.Node_q(t#3)
                 && _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#3))
                 && (!_module.__default.InfiniteHeightSomewhere__Bad_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#3))
                   ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#3)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#4 := _module.Stream.tail(s#0); 
              (var t#4 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                _module.__default.InfiniteHeightSomewhere__Bad_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#4))
                   || _module.__default.InfiniteHeightSomewhere__Bad_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), tail#4)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.InfiniteHeightSomewhere__Bad_h($ly, _k'#0, s#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k'#0, s#0)))
         && _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then false
                 else (var tail#2 := _module.Stream.tail(s#0); 
                  (var t#2 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                    _module.__default.InfiniteHeightSomewhere__Bad_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#2))
                       || _module.__default.InfiniteHeightSomewhere__Bad_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), tail#2)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.InfiniteHeightSomewhere__Bad_h($ly, _k'#0, s#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.InfiniteHeightSomewhere__Bad_h($ly, _k'#0, s#0)))));
// definition axiom for _module.__default.InfiniteHeightSomewhere__Bad_h for decreasing-related literals (revealed)
axiom {:id "id164"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), Lit(_k#0), s#0) } 
    _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(Lit(_k#0), s#0)
         || (3 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.Stream.Nil_q(s#0)
           ==> (var tail#6 := _module.Stream.tail(s#0); 
            (var t#6 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
              _module.Tree.Node_q(t#6)
                 && _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#6))
                 && (!_module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#6))
                   ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#6)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(s#0)
             then false
             else (var tail#7 := _module.Stream.tail(s#0); 
              (var t#7 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#7))
                   || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#7)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k'#1, s#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k'#1, s#0)))
         && _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), Lit(_k#0), s#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(s#0)
                 then false
                 else (var tail#5 := _module.Stream.tail(s#0); 
                  (var t#5 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
                    _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#5))
                       || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#5)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k'#1, s#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k'#1, s#0)))));
// definition axiom for _module.__default.InfiniteHeightSomewhere__Bad_h for all literals (revealed)
axiom {:id "id165"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), Lit(_k#0), Lit(s#0)) } 
    _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(Lit(_k#0), Lit(s#0))
         || (3 < $FunctionContextHeight
           && $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.Stream.Nil_q(Lit(s#0)))
           ==> (var tail#9 := Lit(_module.Stream.tail(Lit(s#0))); 
            (var t#9 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
              _module.Tree.Node_q(t#9)
                 && _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#9))
                 && (!_module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#9))
                   ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), tail#9)))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(Lit(s#0))
             then false
             else (var tail#10 := Lit(_module.Stream.tail(Lit(s#0))); 
              (var t#10 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
                _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Tree.children(t#10)))
                   || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#10)))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k'#2, s#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k'#2, s#0)))
         && _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), Lit(_k#0), Lit(s#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(Lit(s#0))
                 then false
                 else (var tail#8 := Lit(_module.Stream.tail(Lit(s#0))); 
                  (var t#8 := Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType); 
                    _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Tree.children(t#8)))
                       || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), tail#8)))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k'#2, s#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k'#2, s#0)))));
}

function _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0: Box, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0) } 
  _module.__default.InfiniteHeightSomewhere__Bad_h($LS($ly), _k#0, s#0)
     == _module.__default.InfiniteHeightSomewhere__Bad_h($ly, _k#0, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.InfiniteHeightSomewhere__Bad_h(AsFuelBottom($ly), _k#0, s#0) } 
  _module.__default.InfiniteHeightSomewhere__Bad_h($ly, _k#0, s#0)
     == _module.__default.InfiniteHeightSomewhere__Bad_h($LZ, _k#0, s#0));

function _module.__default.InfiniteHeightSomewhere__Bad_h#requires(LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.InfiniteHeightSomewhere__Bad_h
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType :: 
  { _module.__default.InfiniteHeightSomewhere__Bad_h#requires($ly, _k#0, s#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
     ==> _module.__default.InfiniteHeightSomewhere__Bad_h#requires($ly, _k#0, s#0)
       == true);

// function declaration for _module._default.ATree
function _module.__default.ATree() : DatatypeType
uses {
// consequence axiom for _module.__default.ATree
axiom 3 <= $FunctionContextHeight
   ==> 
  _module.__default.ATree#canCall() || 3 < $FunctionContextHeight
   ==> $Is(_module.__default.ATree(), Tclass._module.Tree());
// definition axiom for _module.__default.ATree (revealed)
axiom {:id "id166"} 3 <= $FunctionContextHeight
   ==> 
  _module.__default.ATree#canCall() || 3 < $FunctionContextHeight
   ==> _module.__default.ATreeChildren#canCall()
     && _module.__default.ATree()
       == Lit(#_module.Tree.Node(Lit(_module.__default.ATreeChildren($LS($LZ)))));
// definition axiom for _module.__default.ATree for all literals (revealed)
axiom {:id "id167"} 3 <= $FunctionContextHeight
   ==> 
  _module.__default.ATree#canCall() || 3 < $FunctionContextHeight
   ==> _module.__default.ATreeChildren#canCall()
     && _module.__default.ATree()
       == Lit(#_module.Tree.Node(Lit(_module.__default.ATreeChildren($LS($LZ)))));
}

function _module.__default.ATree#canCall() : bool;

function _module.__default.ATree#requires() : bool
uses {
// #requires axiom for _module.__default.ATree
axiom _module.__default.ATree#requires() == true;
}

procedure {:verboseName "ATree (well-formedness)"} CheckWellformed$$_module.__default.ATree();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.ATreeChildren
function _module.__default.ATreeChildren($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.ATreeChildren
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.ATreeChildren($ly) } 
    _module.__default.ATreeChildren#canCall() || 2 < $FunctionContextHeight
       ==> $Is(_module.__default.ATreeChildren($ly), 
        Tclass._module.Stream(Tclass._module.Tree())));
// definition axiom for _module.__default.ATreeChildren (revealed)
axiom {:id "id169"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.ATreeChildren($LS($ly)) } 
    _module.__default.ATreeChildren#canCall() || 2 < $FunctionContextHeight
       ==> _module.__default.ATreeChildren#canCall()
         && _module.__default.ATreeChildren($LS($ly))
           == Lit(#_module.Stream.Cons($Box(Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil())))), 
              Lit(_module.__default.ATreeChildren($ly)))));
}

function _module.__default.ATreeChildren#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.ATreeChildren($LS($ly)) } 
  _module.__default.ATreeChildren($LS($ly))
     == _module.__default.ATreeChildren($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.ATreeChildren(AsFuelBottom($ly)) } 
  _module.__default.ATreeChildren($ly) == _module.__default.ATreeChildren($LZ));

function _module.__default.ATreeChildren#requires(LayerType) : bool;

// #requires axiom for _module.__default.ATreeChildren
axiom (forall $ly: LayerType :: 
  { _module.__default.ATreeChildren#requires($ly) } 
  _module.__default.ATreeChildren#requires($ly) == true);

procedure {:verboseName "ATreeChildren (well-formedness)"} CheckWellformed$$_module.__default.ATreeChildren();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition2 (well-formedness)"} CheckWellFormed$$_module.__default.Proposition2();
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition2 (call)"} Call$$_module.__default.Proposition2();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ATree#canCall()
     && _module.__default.HasFiniteHeightEverywhere__Bad#canCall(Lit(_module.__default.ATree()));
  ensures {:id "id172"} !Lit(_module.__default.HasFiniteHeightEverywhere__Bad(Lit(_module.__default.ATree())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition2 (correctness)"} Impl$$_module.__default.Proposition2() returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ATree#canCall()
     && _module.__default.HasFiniteHeightEverywhere__Bad#canCall(Lit(_module.__default.ATree()));
  ensures {:id "id173"} !Lit(_module.__default.HasFiniteHeightEverywhere__Bad(Lit(_module.__default.ATree())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition2 (correctness)"} Impl$$_module.__default.Proposition2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s##0: DatatypeType;

    // AddMethodImpl: Proposition2, Impl$$_module.__default.Proposition2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(184,22)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id174"} Call$$_module.__default.Proposition2__Lemma0();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(185,22)
    // TrCallStmt: Before ProcessCallStmt
    assume _module.__default.ATreeChildren#canCall();
    assume _module.__default.ATreeChildren#canCall();
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(_module.__default.ATreeChildren($LS($LZ)));
    call {:id "id175"} Call$$_module.__default.Proposition2__Lemma1(s##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Proposition2_Lemma0 (well-formedness)"} CheckWellFormed$$_module.__default.Proposition2__Lemma0();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition2_Lemma0 (call)"} Call$$_module.__default.Proposition2__Lemma0();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ATreeChildren#canCall()
     && _module.__default.IsNeverEndingStream#canCall(Tclass._module.Tree(), Lit(_module.__default.ATreeChildren($LS($LZ))));
  free ensures {:id "id177"} _module.__default.IsNeverEndingStream#canCall(Tclass._module.Tree(), Lit(_module.__default.ATreeChildren($LS($LZ))))
     && 
    Lit(_module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), Lit(_module.__default.ATreeChildren($LS($LZ)))))
     && (if _module.Stream.Nil_q(Lit(_module.__default.ATreeChildren($LS($LZ))))
       then false
       else (var tail#1 := Lit(_module.Stream.tail(Lit(_module.__default.ATreeChildren($LS($LZ))))); 
        Lit(_module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), tail#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition2_Lemma0# (co-call)"} CoCall$$_module.__default.Proposition2__Lemma0_h(_k#0: Box);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ATreeChildren#canCall()
     && _module.__default.IsNeverEndingStream_h#canCall(Tclass._module.Tree(), _k#0, Lit(_module.__default.ATreeChildren($LS($LZ))));
  free ensures {:id "id178"} _module.__default.IsNeverEndingStream_h#canCall(Tclass._module.Tree(), _k#0, Lit(_module.__default.ATreeChildren($LS($LZ))))
     && 
    _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
      $LS($LZ), 
      _k#0, 
      Lit(_module.__default.ATreeChildren($LS($LZ))))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Stream.Nil_q(Lit(_module.__default.ATreeChildren($LS($LZ))))
         then false
         else (var tail#3 := Lit(_module.Stream.tail(Lit(_module.__default.ATreeChildren($LS($LZ))))); 
          _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), $LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), tail#3))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
            $LS($LZ), 
            _k'#0, 
            _module.__default.ATreeChildren($LS($LZ))) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
            $LS($LZ), 
            _k'#0, 
            Lit(_module.__default.ATreeChildren($LS($LZ))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition2_Lemma0# (correctness)"} Impl$$_module.__default.Proposition2__Lemma0_h(_k#0: Box) returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ATreeChildren#canCall()
     && _module.__default.IsNeverEndingStream_h#canCall(Tclass._module.Tree(), _k#0, Lit(_module.__default.ATreeChildren($LS($LZ))));
  ensures {:id "id179"} _module.__default.IsNeverEndingStream_h#canCall(Tclass._module.Tree(), _k#0, Lit(_module.__default.ATreeChildren($LS($LZ))))
     ==> _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
        $LS($LZ), 
        _k#0, 
        Lit(_module.__default.ATreeChildren($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        Lit(_module.Stream.Nil_q(Lit(_module.__default.ATreeChildren($LS($LZ)))))
         ==> Lit(false));
  ensures {:id "id180"} _module.__default.IsNeverEndingStream_h#canCall(Tclass._module.Tree(), _k#0, Lit(_module.__default.ATreeChildren($LS($LZ))))
     ==> _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
        $LS($LZ), 
        _k#0, 
        Lit(_module.__default.ATreeChildren($LS($LZ))))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !Lit(_module.Stream.Nil_q(Lit(_module.__default.ATreeChildren($LS($LZ)))))
         ==> (var tail#4 := Lit(_module.Stream.tail(Lit(_module.__default.ATreeChildren($LS($LS($LZ)))))); 
          _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), $LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), tail#4)));
  ensures {:id "id181"} _module.__default.IsNeverEndingStream_h#canCall(Tclass._module.Tree(), _k#0, Lit(_module.__default.ATreeChildren($LS($LZ))))
     ==> _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
        $LS($LZ), 
        _k#0, 
        Lit(_module.__default.ATreeChildren($LS($LZ))))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
              $LS($LS($LZ)), 
              _k'#1, 
              _module.__default.ATreeChildren($LS($LS($LZ)))) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
              $LS($LS($LZ)), 
              _k'#1, 
              Lit(_module.__default.ATreeChildren($LS($LS($LZ)))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition2_Lemma0# (correctness)"} Impl$$_module.__default.Proposition2__Lemma0_h(_k#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Proposition2_Lemma0#, Impl$$_module.__default.Proposition2__Lemma0_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box :: 
      { _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
          $LS($LZ), 
          $ih#_k0#0, 
          Lit(_module.__default.ATreeChildren($LS($LZ)))) } 
      Lit(true) && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
          $LS($LZ), 
          $ih#_k0#0, 
          Lit(_module.__default.ATreeChildren($LS($LZ)))));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(189,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(189,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box :: 
          { _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
              $LS($LZ), 
              _k'#2, 
              _module.__default.ATreeChildren($LS($LZ))) } 
            { ORD#Less(_k'#2, _k#0) } 
          ORD#Less(_k'#2, _k#0)
             ==> _module.__default.IsNeverEndingStream_h(Tclass._module.Tree(), 
              $LS($LZ), 
              _k'#2, 
              Lit(_module.__default.ATreeChildren($LS($LZ)))));
    }
}



procedure {:verboseName "Proposition2_Lemma1 (well-formedness)"} CheckWellFormed$$_module.__default.Proposition2__Lemma1(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition2_Lemma1 (call)"} Call$$_module.__default.Proposition2__Lemma1(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0));
  // user-defined preconditions
  requires {:id "id184"} _module.__default.IsNeverEndingStream#canCall(Tclass._module.Tree(), s#0)
     ==> _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), s#0)
       || (_module.Stream.Nil_q(s#0) ==> Lit(false));
  requires {:id "id185"} _module.__default.IsNeverEndingStream#canCall(Tclass._module.Tree(), s#0)
     ==> _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), s#0)
       || (!_module.Stream.Nil_q(s#0)
         ==> (var tail#0 := _module.Stream.tail(s#0); 
          _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LS($LZ)), tail#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.InfiniteHeightSomewhere__Bad#canCall(s#0);
  free ensures {:id "id186"} _module.__default.InfiniteHeightSomewhere__Bad#canCall(s#0)
     && 
    _module.__default.InfiniteHeightSomewhere__Bad($LS($LZ), s#0)
     && (if _module.Stream.Nil_q(s#0)
       then false
       else (var tail#3 := _module.Stream.tail(s#0); 
        (var t#1 := $Unbox(_module.Stream.head(s#0)): DatatypeType; 
          _module.__default.InfiniteHeightSomewhere__Bad($LS($LZ), _module.Tree.children(t#1))
             || _module.__default.InfiniteHeightSomewhere__Bad($LS($LZ), tail#3))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition2_Lemma1# (co-call)"} CoCall$$_module.__default.Proposition2__Lemma1_h(_k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#1));
  // user-defined preconditions
  requires {:id "id187"} _module.__default.IsNeverEndingStream#canCall(Tclass._module.Tree(), s#1)
     ==> _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), s#1)
       || (_module.Stream.Nil_q(s#1) ==> Lit(false));
  requires {:id "id188"} _module.__default.IsNeverEndingStream#canCall(Tclass._module.Tree(), s#1)
     ==> _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), s#1)
       || (!_module.Stream.Nil_q(s#1)
         ==> (var tail#4 := _module.Stream.tail(s#1); 
          _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LS($LZ)), tail#4)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1);
  free ensures {:id "id189"} _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1)
     && 
    _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k#0, s#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Stream.Nil_q(s#1)
         then false
         else (var tail#7 := _module.Stream.tail(s#1); 
          (var t#3 := $Unbox(_module.Stream.head(s#1)): DatatypeType; 
            _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#3))
               || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), tail#7)))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k'#0, s#1) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k'#0, s#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition2_Lemma1# (correctness)"} Impl$$_module.__default.Proposition2__Lemma1_h(_k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#1))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id190"} _module.__default.IsNeverEndingStream#canCall(Tclass._module.Tree(), s#1)
     && 
    _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), s#1)
     && (if _module.Stream.Nil_q(s#1)
       then false
       else (var tail#9 := _module.Stream.tail(s#1); 
        _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), tail#9)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1);
  ensures {:id "id191"} _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1)
     ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k#0, s#1)
       || (0 < ORD#Offset(_k#0) ==> _module.Stream.Nil_q(s#1) ==> Lit(false));
  ensures {:id "id192"} _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1)
     ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k#0, s#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(s#1)
         ==> (var tail#10 := _module.Stream.tail(s#1); 
          (var t#4 := $Unbox(_module.Stream.head(s#1)): DatatypeType; 
            _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#4))
               || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), tail#10))));
  ensures {:id "id193"} _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1)
     ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k#0, s#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), _k'#1, s#1) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), _k'#1, s#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition2_Lemma1# (correctness)"} Impl$$_module.__default.Proposition2__Lemma1_h(_k#0: Box, s#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##_k#0: Box;
  var ##s#2: DatatypeType;
  var ##_k#1: Box;
  var ##s#3: DatatypeType;
  var ##_k#2: Box;
  var ##s#4: DatatypeType;
  var ##_k#3: Box;
  var ##s#5: DatatypeType;
  var ##_k#4: Box;
  var ##s#6: DatatypeType;
  var ##_k#5: Box;
  var ##s#7: DatatypeType;
  var ##_k#6: Box;
  var ##s#8: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Proposition2_Lemma1#, Impl$$_module.__default.Proposition2__Lemma1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType :: 
      { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), $ih#_k0#0, $ih#s0#0) } 
      $Is($ih#s0#0, Tclass._module.Stream(Tclass._module.Tree()))
           && _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), $ih#s0#0)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), $ih#_k0#0, $ih#s0#0));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(194,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            assert {:id "id212"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id213"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            ##_k#6 := ORD#Minus(_k#0, ORD#FromNat(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##_k#6, TORDINAL, $Heap);
            assert {:id "id214"} _module.Stream.Cons_q(s#1);
            ##s#8 := _module.Stream.tail(s#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#8, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            ##_k#3 := _k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##_k#3, TORDINAL, $Heap);
            ##s#5 := s#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#5, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1);
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(_k#0, s#1);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            assert {:id "id205"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id206"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            ##_k#4 := ORD#Minus(_k#0, ORD#FromNat(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##_k#4, TORDINAL, $Heap);
            assert {:id "id207"} _module.Stream.Cons_q(s#1);
            assume _module.Tree.Node_q($Unbox(_module.Stream.head(s#1)): DatatypeType);
            ##s#6 := _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#6, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType));
            if (!_module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType)))
            {
                assert {:id "id208"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id209"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#5 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#5, TORDINAL, $Heap);
                assert {:id "id210"} _module.Stream.Cons_q(s#1);
                ##s#7 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#7, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            }

            assume _module.Tree.Node_q($Unbox(_module.Stream.head(s#1)): DatatypeType)
               && _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType))
               && (!_module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType))
                 ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1)));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            assert {:id "id211"} {:subsumption 0} _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), _k#0, s#1)
               == (_module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType))
                 || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            assume {:id "id194"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assume {:id "id195"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##_k#0, TORDINAL, $Heap);
            assume {:id "id196"} _module.Stream.Cons_q(s#1);
            ##s#2 := _module.Stream.tail(s#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#2, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            assume {:id "id197"} _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            assert {:id "id198"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id199"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##_k#1, TORDINAL, $Heap);
            assert {:id "id200"} _module.Stream.Cons_q(s#1);
            assume _module.Tree.Node_q($Unbox(_module.Stream.head(s#1)): DatatypeType);
            ##s#3 := _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#3, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType));
            if (!_module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType)))
            {
                assert {:id "id201"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id202"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                assert {:id "id203"} _module.Stream.Cons_q(s#1);
                ##s#4 := _module.Stream.tail(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#4, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assume _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            }

            assume _module.Tree.Node_q($Unbox(_module.Stream.head(s#1)): DatatypeType)
               && _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType))
               && (!_module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType))
                 ==> _module.__default.InfiniteHeightSomewhere__Bad_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1)));
            // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(195,3)
            assert {:id "id204"} {:subsumption 0} _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1))
               ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Tree.children($Unbox(_module.Stream.head(s#1)): DatatypeType))
                 || _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1));
            assume false;
        }

        assume {:id "id215"} _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#1))
           ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k#0, s#1);
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(194,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, s#2: DatatypeType :: 
          { _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k'#2, s#2) } 
            { _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), s#2), ORD#Less(_k'#2, _k#0) } 
          $Is(s#2, Tclass._module.Stream(Tclass._module.Tree()))
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.IsNeverEndingStream(Tclass._module.Tree(), $LS($LZ), s#2)
             ==> _module.__default.InfiniteHeightSomewhere__Bad_h($LS($LZ), _k'#2, s#2));
    }
}



// function declaration for _module._default.ValidPath
function _module.__default.ValidPath($ly: LayerType, t#0: DatatypeType, p#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.ValidPath (revealed)
axiom {:id "id216"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, p#0: DatatypeType :: 
    { _module.__default.ValidPath($LS($ly), t#0, p#0) } 
    _module.__default.ValidPath#canCall(t#0, p#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(p#0, Tclass._module.Stream(TInt)))
       ==> (_module.Stream.Nil_q(p#0) ==> $IsA#_module.Tree(t#0))
         && (!_module.Stream.Nil_q(p#0)
           ==> (var tail#1 := _module.Stream.tail(p#0); 
            (var index#1 := $Unbox(_module.Stream.head(p#0)): int; 
              LitInt(0) <= index#1
                 ==> _module.Tree.Node_q(t#0)
                   && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#1)
                   && (var ch#1 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#1); 
                    _module.Stream.Cons_q(ch#1)
                       ==> _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#1)): DatatypeType, tail#1)))))
         && _module.__default.ValidPath($LS($ly), t#0, p#0)
           == (if _module.Stream.Nil_q(p#0)
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var tail#0 := _module.Stream.tail(p#0); 
              (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
                LitInt(0) <= index#0
                   && (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#0); 
                    _module.Stream.Cons_q(ch#0)
                       && _module.__default.ValidPath($ly, $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0))))));
}

function _module.__default.ValidPath#canCall(t#0: DatatypeType, p#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.ValidPath($LS($ly), t#0, p#0) } 
  _module.__default.ValidPath($LS($ly), t#0, p#0)
     == _module.__default.ValidPath($ly, t#0, p#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.ValidPath(AsFuelBottom($ly), t#0, p#0) } 
  _module.__default.ValidPath($ly, t#0, p#0)
     == _module.__default.ValidPath($LZ, t#0, p#0));

function _module.__default.ValidPath#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ValidPath
axiom (forall $ly: LayerType, t#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.ValidPath#requires($ly, t#0, p#0) } 
  $Is(t#0, Tclass._module.Tree()) && $Is(p#0, Tclass._module.Stream(TInt))
     ==> _module.__default.ValidPath#requires($ly, t#0, p#0) == true);

// 1st prefix predicate axiom for _module.__default.ValidPath_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, p#0: DatatypeType :: 
    { _module.__default.ValidPath($LS($ly), t#0, p#0) } 
    $Is(t#0, Tclass._module.Tree())
         && $Is(p#0, Tclass._module.Stream(TInt))
         && _module.__default.ValidPath($LS($ly), t#0, p#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0) } 
        _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, p#0: DatatypeType :: 
    { _module.__default.ValidPath($LS($ly), t#0, p#0) } 
    $Is(t#0, Tclass._module.Tree())
         && $Is(p#0, Tclass._module.Stream(TInt))
         && (forall _k#0: Box :: 
          { _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0) } 
          _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0))
       ==> _module.__default.ValidPath($LS($ly), t#0, p#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, p#0: DatatypeType, _k#0: Box :: 
    { _module.__default.ValidPath_h($ly, _k#0, t#0, p#0) } 
    $Is(t#0, Tclass._module.Tree())
         && $Is(p#0, Tclass._module.Stream(TInt))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.ValidPath_h($ly, _k#0, t#0, p#0));

procedure {:verboseName "ValidPath (well-formedness)"} CheckWellformed$$_module.__default.ValidPath(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()), 
    p#0: DatatypeType where $Is(p#0, Tclass._module.Stream(TInt)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ValidPath (well-formedness)"} CheckWellformed$$_module.__default.ValidPath(t#0: DatatypeType, p#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var index#Z#0: int;
  var let#1#0#0: int;
  var ch#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##t#0: DatatypeType;
  var ##p#0: DatatypeType;


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
        if (p#0 == #_module.Stream.Nil())
        {
            assume {:id "id226"} _module.__default.ValidPath($LS($LZ), t#0, p#0)
               == _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())));
            assume $IsA#_module.Tree(t#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ValidPath($LS($LZ), t#0, p#0), TBool);
            return;
        }
        else if (p#0 == #_module.Stream.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.Stream(TInt));
            havoc tail#Z#0;
            assume {:id "id217"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Stream(TInt));
            assume {:id "id218"} tail#Z#0 == let#0#0#0;
            havoc index#Z#0;
            assume {:id "id219"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id220"} index#Z#0 == let#1#0#0;
            if (LitInt(0) <= index#Z#0)
            {
                havoc ch#Z#0;
                assume _module.Tree.Node_q(t#0);
                ##s#0 := _module.Tree.children(t#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assert {:id "id221"} $Is(index#Z#0, Tclass._System.nat());
                ##n#0 := index#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#Z#0);
                assume {:id "id222"} let#2#0#0
                   == _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#Z#0);
                assume _module.Tree.Node_q(t#0)
                   && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.Stream(Tclass._module.Tree()));
                assume {:id "id223"} ch#Z#0 == let#2#0#0;
                if (_module.Stream.Cons_q(ch#Z#0))
                {
                    assert {:id "id224"} _module.Stream.Cons_q(ch#Z#0);
                    ##t#0 := $Unbox(_module.Stream.head(ch#Z#0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#0, Tclass._module.Tree(), $Heap);
                    ##p#0 := tail#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##p#0, Tclass._module.Stream(TInt), $Heap);
                    assume _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#Z#0)): DatatypeType, tail#Z#0);
                }
            }

            assume {:id "id225"} _module.__default.ValidPath($LS($LZ), t#0, p#0)
               == (LitInt(0) <= index#Z#0
                 && (var ch#2 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#Z#0); 
                  _module.Stream.Cons_q(ch#2)
                     && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#2)): DatatypeType, tail#Z#0)));
            assume LitInt(0) <= index#Z#0
               ==> _module.Tree.Node_q(t#0)
                 && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#Z#0)
                 && (var ch#2 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#Z#0); 
                  _module.Stream.Cons_q(ch#2)
                     ==> _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#2)): DatatypeType, tail#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ValidPath($LS($LZ), t#0, p#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.ValidPath#
function _module.__default.ValidPath_h($ly: LayerType, _k#0: Box, t#0: DatatypeType, p#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.ValidPath_h (revealed)
axiom {:id "id227"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, p#0: DatatypeType :: 
    { _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0) } 
    _module.__default.ValidPath_h#canCall(_k#0, t#0, p#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(p#0, Tclass._module.Stream(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.Stream.Nil_q(p#0) ==> $IsA#_module.Tree(t#0))
             && (!_module.Stream.Nil_q(p#0)
               ==> (var tail#3 := _module.Stream.tail(p#0); 
                (var index#3 := $Unbox(_module.Stream.head(p#0)): int; 
                  LitInt(0) <= index#3
                     ==> _module.Tree.Node_q(t#0)
                       && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#3)
                       && (var ch#4 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#3); 
                        _module.Stream.Cons_q(ch#4)
                           ==> _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $Unbox(_module.Stream.head(ch#4)): DatatypeType, 
                            tail#3))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(p#0)
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var tail#4 := _module.Stream.tail(p#0); 
              (var index#4 := $Unbox(_module.Stream.head(p#0)): int; 
                LitInt(0) <= index#4
                   && (var ch#5 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#4); 
                    _module.Stream.Cons_q(ch#5)
                       && _module.__default.ValidPath_h($ly, 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        $Unbox(_module.Stream.head(ch#5)): DatatypeType, 
                        tail#4))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.ValidPath_h($ly, _k'#0, t#0, p#0) } 
            ORD#Less(_k'#0, _k#0) ==> _module.__default.ValidPath_h#canCall(_k'#0, t#0, p#0)))
         && _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(p#0)
                 then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
                 else (var tail#2 := _module.Stream.tail(p#0); 
                  (var index#2 := $Unbox(_module.Stream.head(p#0)): int; 
                    LitInt(0) <= index#2
                       && (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#2); 
                        _module.Stream.Cons_q(ch#3)
                           && _module.__default.ValidPath_h($ly, 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $Unbox(_module.Stream.head(ch#3)): DatatypeType, 
                            tail#2))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.ValidPath_h($ly, _k'#0, t#0, p#0) } 
                ORD#Less(_k'#0, _k#0) ==> _module.__default.ValidPath_h($ly, _k'#0, t#0, p#0)))));
// definition axiom for _module.__default.ValidPath_h for decreasing-related literals (revealed)
axiom {:id "id228"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, p#0: DatatypeType :: 
    {:weight 3} { _module.__default.ValidPath_h($LS($ly), Lit(_k#0), t#0, p#0) } 
    _module.__default.ValidPath_h#canCall(Lit(_k#0), t#0, p#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(p#0, Tclass._module.Stream(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.Stream.Nil_q(p#0) ==> $IsA#_module.Tree(t#0))
             && (!_module.Stream.Nil_q(p#0)
               ==> (var tail#6 := _module.Stream.tail(p#0); 
                (var index#6 := $Unbox(_module.Stream.head(p#0)): int; 
                  LitInt(0) <= index#6
                     ==> _module.Tree.Node_q(t#0)
                       && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#6)
                       && (var ch#7 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#6); 
                        _module.Stream.Cons_q(ch#7)
                           ==> _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $Unbox(_module.Stream.head(ch#7)): DatatypeType, 
                            tail#6))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(p#0)
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var tail#7 := _module.Stream.tail(p#0); 
              (var index#7 := $Unbox(_module.Stream.head(p#0)): int; 
                LitInt(0) <= index#7
                   && (var ch#8 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#7); 
                    _module.Stream.Cons_q(ch#8)
                       && _module.__default.ValidPath_h($LS($ly), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        $Unbox(_module.Stream.head(ch#8)): DatatypeType, 
                        tail#7))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.ValidPath_h($LS($ly), _k'#1, t#0, p#0) } 
            ORD#Less(_k'#1, _k#0) ==> _module.__default.ValidPath_h#canCall(_k'#1, t#0, p#0)))
         && _module.__default.ValidPath_h($LS($ly), Lit(_k#0), t#0, p#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(p#0)
                 then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
                 else (var tail#5 := _module.Stream.tail(p#0); 
                  (var index#5 := $Unbox(_module.Stream.head(p#0)): int; 
                    LitInt(0) <= index#5
                       && (var ch#6 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#5); 
                        _module.Stream.Cons_q(ch#6)
                           && _module.__default.ValidPath_h($LS($ly), 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $Unbox(_module.Stream.head(ch#6)): DatatypeType, 
                            tail#5))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.ValidPath_h($LS($ly), _k'#1, t#0, p#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.ValidPath_h($LS($ly), _k'#1, t#0, p#0)))));
// definition axiom for _module.__default.ValidPath_h for all literals (revealed)
axiom {:id "id229"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, p#0: DatatypeType :: 
    {:weight 3} { _module.__default.ValidPath_h($LS($ly), Lit(_k#0), Lit(t#0), Lit(p#0)) } 
    _module.__default.ValidPath_h#canCall(Lit(_k#0), Lit(t#0), Lit(p#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(p#0, Tclass._module.Stream(TInt)))
       ==> (0 < ORD#Offset(_k#0)
           ==> (Lit(_module.Stream.Nil_q(Lit(p#0))) ==> $IsA#_module.Tree(Lit(t#0)))
             && (!Lit(_module.Stream.Nil_q(Lit(p#0)))
               ==> (var tail#9 := Lit(_module.Stream.tail(Lit(p#0))); 
                (var index#9 := LitInt($Unbox(_module.Stream.head(Lit(p#0))): int); 
                  LitInt(0) <= index#9
                     ==> _module.Tree.Node_q(Lit(t#0))
                       && _module.__default.Tail#canCall(Tclass._module.Tree(), Lit(_module.Tree.children(Lit(t#0))), index#9)
                       && (var ch#10 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), Lit(_module.Tree.children(Lit(t#0))), index#9); 
                        _module.Stream.Cons_q(ch#10)
                           ==> _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                            $Unbox(_module.Stream.head(ch#10)): DatatypeType, 
                            tail#9))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Stream.Nil_q(Lit(p#0))
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var tail#10 := Lit(_module.Stream.tail(Lit(p#0))); 
              (var index#10 := LitInt($Unbox(_module.Stream.head(Lit(p#0))): int); 
                LitInt(0) <= index#10
                   && (var ch#11 := Lit(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), Lit(_module.Tree.children(Lit(t#0))), index#10)); 
                    _module.Stream.Cons_q(ch#11)
                       && _module.__default.ValidPath_h($LS($ly), 
                        ORD#Minus(_k#0, ORD#FromNat(1)), 
                        Lit($Unbox(_module.Stream.head(ch#11)): DatatypeType), 
                        tail#10))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.ValidPath_h($LS($ly), _k'#2, t#0, p#0) } 
            ORD#Less(_k'#2, _k#0) ==> _module.__default.ValidPath_h#canCall(_k'#2, t#0, p#0)))
         && _module.__default.ValidPath_h($LS($ly), Lit(_k#0), Lit(t#0), Lit(p#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Stream.Nil_q(Lit(p#0))
                 then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
                 else (var tail#8 := Lit(_module.Stream.tail(Lit(p#0))); 
                  (var index#8 := LitInt($Unbox(_module.Stream.head(Lit(p#0))): int); 
                    LitInt(0) <= index#8
                       && (var ch#9 := Lit(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), Lit(_module.Tree.children(Lit(t#0))), index#8)); 
                        _module.Stream.Cons_q(ch#9)
                           && _module.__default.ValidPath_h($LS($ly), 
                            ORD#Minus(_k#0, ORD#FromNat(1)), 
                            Lit($Unbox(_module.Stream.head(ch#9)): DatatypeType), 
                            tail#8))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.ValidPath_h($LS($ly), _k'#2, t#0, p#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.ValidPath_h($LS($ly), _k'#2, t#0, p#0)))));
}

function _module.__default.ValidPath_h#canCall(_k#0: Box, t#0: DatatypeType, p#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0) } 
  _module.__default.ValidPath_h($LS($ly), _k#0, t#0, p#0)
     == _module.__default.ValidPath_h($ly, _k#0, t#0, p#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.ValidPath_h(AsFuelBottom($ly), _k#0, t#0, p#0) } 
  _module.__default.ValidPath_h($ly, _k#0, t#0, p#0)
     == _module.__default.ValidPath_h($LZ, _k#0, t#0, p#0));

function _module.__default.ValidPath_h#requires(LayerType, Box, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ValidPath_h
axiom (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, p#0: DatatypeType :: 
  { _module.__default.ValidPath_h#requires($ly, _k#0, t#0, p#0) } 
  $Is(t#0, Tclass._module.Tree()) && $Is(p#0, Tclass._module.Stream(TInt))
     ==> _module.__default.ValidPath_h#requires($ly, _k#0, t#0, p#0) == true);

procedure {:verboseName "ValidPath_Lemma (well-formedness)"} CheckWellFormed$$_module.__default.ValidPath__Lemma(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ValidPath_Lemma (call)"} Call$$_module.__default.ValidPath__Lemma(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ValidPath#canCall(Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0)
     && (_module.__default.ValidPath($LS($LZ), Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0)
       ==> $IsA#_module.Stream(p#0));
  ensures {:id "id233"} _module.__default.ValidPath($LS($LZ), Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0)
     ==> $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), p#0, #_module.Stream.Nil());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ValidPath_Lemma (correctness)"} Impl$$_module.__default.ValidPath__Lemma(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.ValidPath#canCall(Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0)
     && (_module.__default.ValidPath($LS($LZ), Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0)
       ==> $IsA#_module.Stream(p#0));
  ensures {:id "id234"} _module.__default.ValidPath($LS($LZ), Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0)
     ==> $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), p#0, #_module.Stream.Nil());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ValidPath_Lemma (correctness)"} Impl$$_module.__default.ValidPath__Lemma(p#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##t#1: DatatypeType;
  var ##p#1: DatatypeType;
  var _mcc#0#0_0_0: int;
  var _mcc#1#0_0_0: DatatypeType;
  var tail#0_0_0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var index#0_0_0: int;
  var let#0_0_1#0#0: int;
  var nil#0_0_0: DatatypeType
     where $Is(nil#0_0_0, Tclass._module.Stream(Tclass._module.Tree()))
       && $IsAlloc(nil#0_0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
  var s##0_0_0: DatatypeType;
  var k##0_0_0: int;
  var n##0_0_0: int;

    // AddMethodImpl: ValidPath_Lemma, Impl$$_module.__default.ValidPath__Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(p#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#p0#0: DatatypeType :: 
      { _module.__default.ValidPath($LS($LZ), Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), $ih#p0#0) } 
      true);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(246,3)
    ##t#1 := Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil())));
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#1, Tclass._module.Tree(), $Heap);
    ##p#1 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##p#1, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.ValidPath#canCall(Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0);
    assume _module.__default.ValidPath#canCall(Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0);
    if (_module.__default.ValidPath($LS($LZ), Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil()))), p#0))
    {
        assume true;
        havoc _mcc#0#0_0_0, _mcc#1#0_0_0;
        if (p#0 == #_module.Stream.Nil())
        {
        }
        else if (p#0 == #_module.Stream.Cons($Box(_mcc#0#0_0_0), _mcc#1#0_0_0))
        {
            assume $Is(_mcc#1#0_0_0, Tclass._module.Stream(TInt));
            havoc tail#0_0_0;
            assume $Is(tail#0_0_0, Tclass._module.Stream(TInt))
               && $IsAlloc(tail#0_0_0, Tclass._module.Stream(TInt), $Heap);
            assume {:id "id235"} let#0_0_0#0#0 == _mcc#1#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(TInt));
            assume {:id "id236"} tail#0_0_0 == let#0_0_0#0#0;
            havoc index#0_0_0;
            assume {:id "id237"} let#0_0_1#0#0 == _mcc#0#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_1#0#0, TInt);
            assume {:id "id238"} index#0_0_0 == let#0_0_1#0#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(250,32)
            assume true;
            assume true;
            nil#0_0_0 := Lit(#_module.Stream.Nil());
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(251,20)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0_0_0 := nil#0_0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id240"} $Is(LitInt(0), Tclass._System.nat());
            k##0_0_0 := LitInt(0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id241"} $Is(index#0_0_0, Tclass._System.nat());
            n##0_0_0 := index#0_0_0;
            call {:id "id242"} Call$$_module.__default.Tail__Lemma1(Tclass._module.Tree(), s##0_0_0, k##0_0_0, n##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



// function declaration for _module._default.HasFiniteHeight
function _module.__default.HasFiniteHeight(t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.HasFiniteHeight (revealed)
axiom {:id "id243"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.HasFiniteHeight(t#0) } 
    _module.__default.HasFiniteHeight#canCall(t#0)
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (forall p#0: DatatypeType :: 
          { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0) } 
            { _module.__default.ValidPath($LS($LZ), t#0, p#0) } 
          $Is(p#0, Tclass._module.Stream(TInt))
             ==> _module.__default.ValidPath#canCall(t#0, p#0)
               && (_module.__default.ValidPath($LS($LZ), t#0, p#0)
                 ==> _module.__default.IsNeverEndingStream#canCall(TInt, p#0)))
         && _module.__default.HasFiniteHeight(t#0)
           == (forall p#0: DatatypeType :: 
            { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0) } 
              { _module.__default.ValidPath($LS($LZ), t#0, p#0) } 
            $Is(p#0, Tclass._module.Stream(TInt))
               ==> 
              _module.__default.ValidPath($LS($LZ), t#0, p#0)
               ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)));
// definition axiom for _module.__default.HasFiniteHeight for all literals (revealed)
axiom {:id "id244"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    {:weight 3} { _module.__default.HasFiniteHeight(Lit(t#0)) } 
    _module.__default.HasFiniteHeight#canCall(Lit(t#0))
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (forall p#1: DatatypeType :: 
          { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1) } 
            { _module.__default.ValidPath($LS($LZ), t#0, p#1) } 
          $Is(p#1, Tclass._module.Stream(TInt))
             ==> _module.__default.ValidPath#canCall(Lit(t#0), p#1)
               && (_module.__default.ValidPath($LS($LZ), Lit(t#0), p#1)
                 ==> _module.__default.IsNeverEndingStream#canCall(TInt, p#1)))
         && _module.__default.HasFiniteHeight(Lit(t#0))
           == (forall p#1: DatatypeType :: 
            { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1) } 
              { _module.__default.ValidPath($LS($LZ), t#0, p#1) } 
            $Is(p#1, Tclass._module.Stream(TInt))
               ==> 
              _module.__default.ValidPath($LS($LZ), Lit(t#0), p#1)
               ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1)));
}

function _module.__default.HasFiniteHeight#canCall(t#0: DatatypeType) : bool;

function _module.__default.HasFiniteHeight#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.HasFiniteHeight
axiom (forall t#0: DatatypeType :: 
  { _module.__default.HasFiniteHeight#requires(t#0) } 
  $Is(t#0, Tclass._module.Tree())
     ==> _module.__default.HasFiniteHeight#requires(t#0) == true);

procedure {:verboseName "HasFiniteHeight (well-formedness)"} CheckWellformed$$_module.__default.HasFiniteHeight(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem1 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem1 (call)"} Call$$_module.__default.Theorem1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  // user-defined preconditions
  requires {:id "id248"} _module.__default.HasBoundedHeight#canCall(t#0)
     ==> _module.__default.HasBoundedHeight(t#0)
       || (exists n#0: int :: 
        { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0) } 
        LitInt(0) <= n#0
           && 
          LitInt(0) <= n#0
           && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.HasFiniteHeight#canCall(t#0);
  free ensures {:id "id249"} _module.__default.HasFiniteHeight#canCall(t#0)
     && 
    _module.__default.HasFiniteHeight(t#0)
     && (forall p#0: DatatypeType :: 
      { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0) } 
        { _module.__default.ValidPath($LS($LZ), t#0, p#0) } 
      $Is(p#0, Tclass._module.Stream(TInt))
         ==> 
        _module.__default.ValidPath($LS($LZ), t#0, p#0)
         ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1 (correctness)"} Impl$$_module.__default.Theorem1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id250"} _module.__default.HasBoundedHeight#canCall(t#0)
     && 
    _module.__default.HasBoundedHeight(t#0)
     && (exists n#1: int :: 
      { _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#1) } 
      LitInt(0) <= n#1
         && 
        LitInt(0) <= n#1
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#1));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.HasFiniteHeight#canCall(t#0);
  ensures {:id "id251"} _module.__default.HasFiniteHeight#canCall(t#0)
     ==> _module.__default.HasFiniteHeight(t#0)
       || (forall p#1: DatatypeType :: 
        { _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#1) } 
          { _module.__default.ValidPath($LS($LS($LZ)), t#0, p#1) } 
        $Is(p#1, Tclass._module.Stream(TInt))
           ==> 
          _module.__default.ValidPath($LS($LS($LZ)), t#0, p#1)
           ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1 (correctness)"} Impl$$_module.__default.Theorem1(t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#2: int where LitInt(0) <= n#2;
  var n#3: int;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var p#0_0: DatatypeType;
  var ##t#0_0: DatatypeType;
  var ##p#0_0: DatatypeType;
  var t##0_0: DatatypeType;
  var n##0_0: int;
  var p##0_0: DatatypeType;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: Theorem1, Impl$$_module.__default.Theorem1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(269,9)
    havoc n#3;
    if (LitInt(0) <= n#3)
    {
        if (LitInt(0) <= n#3)
        {
            assume _module.Tree.Node_q(t#0);
            ##s#0 := _module.Tree.children(t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#0 := n#3;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#3);
        }

        assume LitInt(0) <= n#3
           ==> _module.Tree.Node_q(t#0)
             && _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#3);
    }

    assert {:id "id252"} ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), LitInt(0)))
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), LitInt(0)))
       || 
      ($Is(LitInt(0), Tclass._System.nat())
         && 
        LitInt(0) <= LitInt(0)
         && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), LitInt(0)))
       || (exists $as#n0#0: int :: 
        LitInt(0) <= $as#n0#0
           && 
          LitInt(0) <= $as#n0#0
           && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), $as#n0#0));
    havoc n#2;
    assume {:id "id253"} LitInt(0) <= n#2
       && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#2);
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(270,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc p#0_0;
        assume $Is(p#0_0, Tclass._module.Stream(TInt));
        ##t#0_0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0, Tclass._module.Tree(), $Heap);
        ##p#0_0 := p#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##p#0_0, Tclass._module.Stream(TInt), $Heap);
        assume _module.__default.ValidPath#canCall(t#0, p#0_0);
        assume _module.__default.ValidPath#canCall(t#0, p#0_0);
        assume _module.__default.ValidPath($LS($LZ), t#0, p#0_0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(271,19)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##0_0 := t#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := n#2;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := p#0_0;
        call {:id "id254"} Call$$_module.__default.Theorem1__Lemma(t##0_0, n##0_0, p##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall p#0_1: DatatypeType :: 
          { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_1) } 
            { _module.__default.ValidPath($LS($LZ), t#0, p#0_1) } 
          $Is(p#0_1, Tclass._module.Stream(TInt))
               && _module.__default.ValidPath($LS($LZ), t#0, p#0_1)
             ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_1));
    }
}



procedure {:verboseName "Theorem1_Lemma (well-formedness)"} CheckWellFormed$$_module.__default.Theorem1__Lemma(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    n#0: int where LitInt(0) <= n#0, 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem1_Lemma (call)"} Call$$_module.__default.Theorem1__Lemma(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    n#0: int where LitInt(0) <= n#0, 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  // user-defined preconditions
  requires {:id "id258"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
       || (_module.Stream.Nil_q(_module.Tree.children(t#0)) ==> Lit(true));
  requires {:id "id259"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
       || (!_module.Stream.Nil_q(_module.Tree.children(t#0))
         ==> (var tail#0 := _module.Stream.tail(_module.Tree.children(t#0)); 
          (var t#1 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
            LitInt(1) <= n#0)));
  requires {:id "id260"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
       || (!_module.Stream.Nil_q(_module.Tree.children(t#0))
         ==> (var tail#0 := _module.Stream.tail(_module.Tree.children(t#0)); 
          (var t#1 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#1), n#0 - 1))));
  requires {:id "id261"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
       || (!_module.Stream.Nil_q(_module.Tree.children(t#0))
         ==> (var tail#0 := _module.Stream.tail(_module.Tree.children(t#0)); 
          (var t#1 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), tail#0, n#0))));
  requires {:id "id262"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (_module.Stream.Nil_q(p#0)
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id263"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#2 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; LitInt(0) <= index#0)));
  requires {:id "id264"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#2 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.Stream.Cons_q(ch#0)))));
  requires {:id "id265"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#2 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#2)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
  ensures {:id "id266"} !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem1_Lemma (correctness)"} Impl$$_module.__default.Theorem1__Lemma(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    n#0: int where LitInt(0) <= n#0, 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id267"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0)
     && 
    _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
     && (if _module.Stream.Nil_q(_module.Tree.children(t#0))
       then true
       else (var tail#5 := _module.Stream.tail(_module.Tree.children(t#0)); 
        (var t#4 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
          LitInt(1) <= n#0
             && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#4), n#0 - 1)
             && _module.__default.LowerThan($LS($LZ), tail#5, n#0))));
  free requires {:id "id268"} _module.__default.ValidPath#canCall(t#0, p#0)
     && 
    _module.__default.ValidPath($LS($LZ), t#0, p#0)
     && (if _module.Stream.Nil_q(p#0)
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var tail#7 := _module.Stream.tail(p#0); 
        (var index#3 := $Unbox(_module.Stream.head(p#0)): int; 
          LitInt(0) <= index#3
             && (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#3); 
              _module.Stream.Cons_q(ch#3)
                 && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#7)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
  ensures {:id "id269"} !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem1_Lemma (correctness)"} Impl$$_module.__default.Theorem1__Lemma(t#0: DatatypeType, n#0: int, p#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var tail#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var index#0_0: int;
  var let#0_1#0#0: int;
  var ch#0_0: DatatypeType
     where $Is(ch#0_0, Tclass._module.Stream(Tclass._module.Tree()))
       && $IsAlloc(ch#0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
  var ##s#0_0: DatatypeType;
  var ##n#0_0: int;
  var ##s#0_0_0_0: DatatypeType;
  var ##s#0_0_0_1: DatatypeType;
  var ##s#0_0_1_0: DatatypeType;
  var ##n#0_0_1_0: int;
  var ##s#0_0_1_1: DatatypeType;
  var ##s#0_0_2_0: DatatypeType;
  var ##n#0_0_2_0: int;
  var ##s#0_0_2_1: DatatypeType;
  var ##n#0_0_2_1: int;
  var ##s#0_0_3_0: DatatypeType;
  var ##n#0_0_3_0: int;
  var s##0_0_3_0: DatatypeType;
  var n##0_0_3_0: int;
  var h##0_0_3_0: int;
  var ##s#0_0_3_1: DatatypeType;
  var ##n#0_0_3_1: int;
  var ##s#0_0_0: DatatypeType;
  var ##n#0_0_0: int;

    // AddMethodImpl: Theorem1_Lemma, Impl$$_module.__default.Theorem1__Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Tree(t#0);
    assume $IsA#_module.Stream(p#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#t0#0: DatatypeType, $ih#n0#0: int, $ih#p0#0: DatatypeType :: 
      { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0), _module.__default.LowerThan($LS($LZ), _module.Tree.children($ih#t0#0), $ih#n0#0) } 
        { _module.__default.ValidPath($LS($LZ), $ih#t0#0, $ih#p0#0), _module.__default.LowerThan($LS($LZ), _module.Tree.children($ih#t0#0), $ih#n0#0) } 
      $Is($ih#t0#0, Tclass._module.Tree())
           && LitInt(0) <= $ih#n0#0
           && $Is($ih#p0#0, Tclass._module.Stream(TInt))
           && 
          _module.__default.LowerThan($LS($LZ), _module.Tree.children($ih#t0#0), $ih#n0#0)
           && _module.__default.ValidPath($LS($LZ), $ih#t0#0, $ih#p0#0)
           && 
          0 <= $ih#n0#0
           && $ih#n0#0 < n#0
         ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (p#0 == #_module.Stream.Nil())
    {
    }
    else if (p#0 == #_module.Stream.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.Stream(TInt));
        havoc tail#0_0;
        assume $Is(tail#0_0, Tclass._module.Stream(TInt))
           && $IsAlloc(tail#0_0, Tclass._module.Stream(TInt), $Heap);
        assume {:id "id270"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Stream(TInt));
        assume {:id "id271"} tail#0_0 == let#0_0#0#0;
        havoc index#0_0;
        assume {:id "id272"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id273"} index#0_0 == let#0_1#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(282,14)
        assume true;
        assume _module.Tree.Node_q(t#0);
        ##s#0_0 := _module.Tree.children(t#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        assert {:id "id274"} $Is(index#0_0, Tclass._System.nat());
        ##n#0_0 := index#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#0_0);
        assume _module.Tree.Node_q(t#0)
           && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#0_0);
        ch#0_0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#0_0);
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assume _module.Tree.Node_q(t#0);
            ##s#0_0_0 := _module.Tree.children(t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#0_0_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0);
            assume _module.Tree.Node_q(t#0)
               && _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assume _module.Tree.Node_q(t#0);
            ##s#0_0_3_0 := _module.Tree.children(t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#0_0_3_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0);
            assume _module.Tree.Node_q(t#0)
               && _module.__default.LowerThan#canCall(_module.Tree.children(t#0), n#0);
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assume {:id "id289"} _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(285,29)
            // TrCallStmt: Before ProcessCallStmt
            assume _module.Tree.Node_q(t#0);
            assume _module.Tree.Node_q(t#0);
            // ProcessCallStmt: CheckSubrange
            s##0_0_3_0 := _module.Tree.children(t#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id290"} $Is(index#0_0, Tclass._System.nat());
            n##0_0_3_0 := index#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            h##0_0_3_0 := n#0;
            call {:id "id291"} Call$$_module.__default.LowerThan__Lemma(s##0_0_3_0, n##0_0_3_0, h##0_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            ##s#0_0_3_1 := ch#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_3_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#0_0_3_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_3_1, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(ch#0_0, n#0);
            assume _module.__default.LowerThan#canCall(ch#0_0, n#0);
            // ----- assert line0 ==> line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assert {:id "id292"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
               ==> 
              _module.__default.LowerThan#canCall(ch#0_0, n#0)
               ==> _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
                 || (_module.Stream.Nil_q(ch#0_0) ==> Lit(true));
            assert {:id "id293"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
               ==> 
              _module.__default.LowerThan#canCall(ch#0_0, n#0)
               ==> _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
                 || (!_module.Stream.Nil_q(ch#0_0)
                   ==> (var tail#0_0_3_0 := _module.Stream.tail(ch#0_0); 
                    (var t#0_0_3_0 := $Unbox(_module.Stream.head(ch#0_0)): DatatypeType; 
                      LitInt(1) <= n#0)));
            assert {:id "id294"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
               ==> 
              _module.__default.LowerThan#canCall(ch#0_0, n#0)
               ==> _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
                 || (!_module.Stream.Nil_q(ch#0_0)
                   ==> (var tail#0_0_3_0 := _module.Stream.tail(ch#0_0); 
                    (var t#0_0_3_0 := $Unbox(_module.Stream.head(ch#0_0)): DatatypeType; 
                      _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#0_0_3_0), n#0 - 1))));
            assert {:id "id295"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
               ==> 
              _module.__default.LowerThan#canCall(ch#0_0, n#0)
               ==> _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
                 || (!_module.Stream.Nil_q(ch#0_0)
                   ==> (var tail#0_0_3_0 := _module.Stream.tail(ch#0_0); 
                    (var t#0_0_3_0 := $Unbox(_module.Stream.head(ch#0_0)): DatatypeType; 
                      _module.__default.LowerThan($LS($LS($LZ)), tail#0_0_3_0, n#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            ##s#0_0_2_0 := ch#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#0_0_2_0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(ch#0_0, n#0);
            assume _module.__default.LowerThan#canCall(ch#0_0, n#0);
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assume {:id "id282"} _module.__default.LowerThan($LS($LZ), ch#0_0, n#0);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assert {:id "id283"} _module.Stream.Cons_q(ch#0_0);
            assume _module.Tree.Node_q($Unbox(_module.Stream.head(ch#0_0)): DatatypeType);
            ##s#0_0_2_1 := _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_2_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assert {:id "id284"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0_0_2_1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_2_1, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
              n#0 - 1);
            assume _module.Tree.Node_q($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)
               && _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                n#0 - 1);
            // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assert {:id "id285"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
               ==> 
              _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                n#0 - 1)
               ==> _module.__default.LowerThan($LS($LZ), 
                  _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                  n#0 - 1)
                 || (_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
                   ==> Lit(true));
            assert {:id "id286"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
               ==> 
              _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                n#0 - 1)
               ==> _module.__default.LowerThan($LS($LZ), 
                  _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                  n#0 - 1)
                 || (!_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
                   ==> (var tail#0_0_2_0 := _module.Stream.tail(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)); 
                    (var t#0_0_2_0 := $Unbox(_module.Stream.head(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))): DatatypeType; 
                      LitInt(1) <= n#0 - 1)));
            assert {:id "id287"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
               ==> 
              _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                n#0 - 1)
               ==> _module.__default.LowerThan($LS($LZ), 
                  _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                  n#0 - 1)
                 || (!_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
                   ==> (var tail#0_0_2_0 := _module.Stream.tail(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)); 
                    (var t#0_0_2_0 := $Unbox(_module.Stream.head(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))): DatatypeType; 
                      _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#0_0_2_0), n#0 - 1 - 1))));
            assert {:id "id288"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), ch#0_0, n#0)
               ==> 
              _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                n#0 - 1)
               ==> _module.__default.LowerThan($LS($LZ), 
                  _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                  n#0 - 1)
                 || (!_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
                   ==> (var tail#0_0_2_0 := _module.Stream.tail(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)); 
                    (var t#0_0_2_0 := $Unbox(_module.Stream.head(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))): DatatypeType; 
                      _module.__default.LowerThan($LS($LS($LZ)), tail#0_0_2_0, n#0 - 1))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assume {:id "id278"} _module.Stream.Cons_q(ch#0_0);
            assume _module.Tree.Node_q($Unbox(_module.Stream.head(ch#0_0)): DatatypeType);
            ##s#0_0_1_0 := _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume {:id "id279"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0_0_1_0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0_1_0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
              n#0 - 1);
            assume _module.Tree.Node_q($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)
               && _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                n#0 - 1);
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assume {:id "id280"} _module.__default.LowerThan($LS($LZ), 
              _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
              n#0 - 1);
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            ##s#0_0_1_1 := tail#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_1_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, tail#0_0);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, tail#0_0);
            // ----- assert line2 ==> line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assert {:id "id281"} {:subsumption 0} _module.__default.LowerThan($LS($LZ), 
                _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                n#0 - 1)
               ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), tail#0_0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            ##s#0_0_0_0 := tail#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_0_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, tail#0_0);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, tail#0_0);
            // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assume {:id "id276"} !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), tail#0_0);
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            ##s#0_0_0_1 := p#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0_0_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
            // ----- assert line3 ==> line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(283,7)
            assert {:id "id277"} {:subsumption 0} !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), tail#0_0)
               ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0);
            assume false;
        }

        assume {:id "id296"} _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), n#0)
           ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0);
    }
    else
    {
        assume false;
    }
}



// function declaration for _module._default.SkinnyFiniteTree
function _module.__default.SkinnyFiniteTree($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.SkinnyFiniteTree
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.SkinnyFiniteTree($ly, n#0) } 
    _module.__default.SkinnyFiniteTree#canCall(n#0)
         || (3 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (forall k#0: int :: 
          { _module.__default.LowerThan($LS($LZ), 
              _module.Tree.children(_module.__default.SkinnyFiniteTree($ly, n#0)), 
              k#0) } 
          LitInt(0) <= k#0
             ==> (_module.__default.LowerThan($LS($LZ), 
                _module.Tree.children(_module.__default.SkinnyFiniteTree($ly, n#0)), 
                k#0)
               <==> n#0 <= k#0))
         && $Is(_module.__default.SkinnyFiniteTree($ly, n#0), Tclass._module.Tree()));
// definition axiom for _module.__default.SkinnyFiniteTree (revealed)
axiom {:id "id297"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.SkinnyFiniteTree($LS($ly), n#0) } 
    _module.__default.SkinnyFiniteTree#canCall(n#0)
         || (3 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0) ==> _module.__default.SkinnyFiniteTree#canCall(n#0 - 1))
         && _module.__default.SkinnyFiniteTree($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then #_module.Tree.Node(Lit(#_module.Stream.Nil()))
             else #_module.Tree.Node(#_module.Stream.Cons($Box(_module.__default.SkinnyFiniteTree($ly, n#0 - 1)), 
                Lit(#_module.Stream.Nil())))));
// definition axiom for _module.__default.SkinnyFiniteTree for all literals (revealed)
axiom {:id "id298"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.SkinnyFiniteTree($LS($ly), LitInt(n#0)) } 
    _module.__default.SkinnyFiniteTree#canCall(LitInt(n#0))
         || (3 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.SkinnyFiniteTree#canCall(LitInt(n#0 - 1)))
         && _module.__default.SkinnyFiniteTree($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then #_module.Tree.Node(Lit(#_module.Stream.Nil()))
             else #_module.Tree.Node(Lit(#_module.Stream.Cons($Box(Lit(_module.__default.SkinnyFiniteTree($LS($ly), LitInt(n#0 - 1)))), 
                  Lit(#_module.Stream.Nil()))))));
}

function _module.__default.SkinnyFiniteTree#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.SkinnyFiniteTree($LS($ly), n#0) } 
  _module.__default.SkinnyFiniteTree($LS($ly), n#0)
     == _module.__default.SkinnyFiniteTree($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.SkinnyFiniteTree(AsFuelBottom($ly), n#0) } 
  _module.__default.SkinnyFiniteTree($ly, n#0)
     == _module.__default.SkinnyFiniteTree($LZ, n#0));

function _module.__default.SkinnyFiniteTree#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.SkinnyFiniteTree
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.SkinnyFiniteTree#requires($ly, n#0) } 
  LitInt(0) <= n#0
     ==> _module.__default.SkinnyFiniteTree#requires($ly, n#0) == true);

procedure {:verboseName "SkinnyFiniteTree (well-formedness)"} CheckWellformed$$_module.__default.SkinnyFiniteTree(n#0: int where LitInt(0) <= n#0);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id299"} (forall k#1: int :: 
    { _module.__default.LowerThan($LS($LS($LZ)), 
        _module.Tree.children(_module.__default.SkinnyFiniteTree($LS($LS($LZ)), n#0)), 
        k#1) } 
    LitInt(0) <= k#1
       ==> (_module.__default.LowerThan($LS($LS($LZ)), 
          _module.Tree.children(_module.__default.SkinnyFiniteTree($LS($LS($LZ)), n#0)), 
          k#1)
         <==> n#0 <= k#1));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SkinnyFiniteTree (well-formedness)"} CheckWellformed$$_module.__default.SkinnyFiniteTree(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var k#2: int;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.SkinnyFiniteTree($LS($LZ), n#0), Tclass._module.Tree());
        havoc k#2;
        assume LitInt(0) <= k#2;
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assert {:id "id300"} 0 <= n#0 || ##n#0 == n#0;
        assert {:id "id301"} n#0 == n#0 || ##n#0 < n#0;
        assume n#0 == n#0 || _module.__default.SkinnyFiniteTree#canCall(n#0);
        assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), n#0));
        assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), n#0));
        ##s#0 := _module.Tree.children(_module.__default.SkinnyFiniteTree($LS($LZ), n#0));
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        ##n#1 := k#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
        assume _module.__default.LowerThan#canCall(_module.Tree.children(_module.__default.SkinnyFiniteTree($LS($LZ), n#0)), k#2);
        assume {:id "id302"} _module.__default.LowerThan($LS($LZ), 
            _module.Tree.children(_module.__default.SkinnyFiniteTree($LS($LZ), n#0)), 
            k#2)
           <==> n#0 <= k#2;
        assume {:id "id303"} (forall k#1: int :: 
          { _module.__default.LowerThan($LS($LZ), 
              _module.Tree.children(_module.__default.SkinnyFiniteTree($LS($LZ), n#0)), 
              k#1) } 
          LitInt(0) <= k#1
             ==> (_module.__default.LowerThan($LS($LZ), 
                _module.Tree.children(_module.__default.SkinnyFiniteTree($LS($LZ), n#0)), 
                k#1)
               <==> n#0 <= k#1));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id304"} _module.__default.SkinnyFiniteTree($LS($LZ), n#0)
               == Lit(#_module.Tree.Node(Lit(#_module.Stream.Nil())));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SkinnyFiniteTree($LS($LZ), n#0), Tclass._module.Tree());
            return;
        }
        else
        {
            assert {:id "id305"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#2 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
            assert {:id "id306"} 0 <= n#0 || ##n#2 == n#0;
            assert {:id "id307"} ##n#2 < n#0;
            assume _module.__default.SkinnyFiniteTree#canCall(n#0 - 1);
            assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), n#0 - 1));
            assume {:id "id308"} _module.__default.SkinnyFiniteTree($LS($LZ), n#0)
               == #_module.Tree.Node(#_module.Stream.Cons($Box(_module.__default.SkinnyFiniteTree($LS($LZ), n#0 - 1)), 
                  Lit(#_module.Stream.Nil())));
            assume _module.__default.SkinnyFiniteTree#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SkinnyFiniteTree($LS($LZ), n#0), Tclass._module.Tree());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.FiniteUnboundedTree
function _module.__default.FiniteUnboundedTree() : DatatypeType
uses {
// consequence axiom for _module.__default.FiniteUnboundedTree
axiom 5 <= $FunctionContextHeight
   ==> 
  _module.__default.FiniteUnboundedTree#canCall() || 5 < $FunctionContextHeight
   ==> $Is(_module.__default.FiniteUnboundedTree(), Tclass._module.Tree());
// definition axiom for _module.__default.FiniteUnboundedTree (revealed)
axiom {:id "id309"} 5 <= $FunctionContextHeight
   ==> 
  _module.__default.FiniteUnboundedTree#canCall() || 5 < $FunctionContextHeight
   ==> _module.__default.EverLongerSkinnyTrees#canCall(LitInt(0))
     && _module.__default.FiniteUnboundedTree()
       == Lit(#_module.Tree.Node(Lit(_module.__default.EverLongerSkinnyTrees($LS($LZ), LitInt(0)))));
// definition axiom for _module.__default.FiniteUnboundedTree for all literals (revealed)
axiom {:id "id310"} 5 <= $FunctionContextHeight
   ==> 
  _module.__default.FiniteUnboundedTree#canCall() || 5 < $FunctionContextHeight
   ==> _module.__default.EverLongerSkinnyTrees#canCall(LitInt(0))
     && _module.__default.FiniteUnboundedTree()
       == Lit(#_module.Tree.Node(Lit(_module.__default.EverLongerSkinnyTrees($LS($LZ), LitInt(0)))));
}

function _module.__default.FiniteUnboundedTree#canCall() : bool;

function _module.__default.FiniteUnboundedTree#requires() : bool
uses {
// #requires axiom for _module.__default.FiniteUnboundedTree
axiom _module.__default.FiniteUnboundedTree#requires() == true;
}

procedure {:verboseName "FiniteUnboundedTree (well-formedness)"} CheckWellformed$$_module.__default.FiniteUnboundedTree();
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FiniteUnboundedTree (well-formedness)"} CheckWellformed$$_module.__default.FiniteUnboundedTree()
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.FiniteUnboundedTree(), Tclass._module.Tree());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id311"} $Is(LitInt(0), Tclass._System.nat());
        ##n#0 := LitInt(0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assume _module.__default.EverLongerSkinnyTrees#canCall(LitInt(0));
        assume {:id "id312"} _module.__default.FiniteUnboundedTree()
           == Lit(#_module.Tree.Node(Lit(_module.__default.EverLongerSkinnyTrees($LS($LZ), LitInt(0)))));
        assume _module.__default.EverLongerSkinnyTrees#canCall(LitInt(0));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.FiniteUnboundedTree(), Tclass._module.Tree());
        return;

        assume false;
    }
}



// function declaration for _module._default.EverLongerSkinnyTrees
function _module.__default.EverLongerSkinnyTrees($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.EverLongerSkinnyTrees
axiom 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.EverLongerSkinnyTrees($ly, n#0) } 
    _module.__default.EverLongerSkinnyTrees#canCall(n#0)
         || (4 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> $Is(_module.__default.EverLongerSkinnyTrees($ly, n#0), 
        Tclass._module.Stream(Tclass._module.Tree())));
// definition axiom for _module.__default.EverLongerSkinnyTrees (revealed)
axiom {:id "id313"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.EverLongerSkinnyTrees($LS($ly), n#0) } 
    _module.__default.EverLongerSkinnyTrees#canCall(n#0)
         || (4 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> _module.__default.SkinnyFiniteTree#canCall(n#0)
         && _module.__default.EverLongerSkinnyTrees#canCall(n#0 + 1)
         && _module.__default.EverLongerSkinnyTrees($LS($ly), n#0)
           == #_module.Stream.Cons($Box(_module.__default.SkinnyFiniteTree($LS($LZ), n#0)), 
            _module.__default.EverLongerSkinnyTrees($ly, n#0 + 1)));
}

function _module.__default.EverLongerSkinnyTrees#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.EverLongerSkinnyTrees($LS($ly), n#0) } 
  _module.__default.EverLongerSkinnyTrees($LS($ly), n#0)
     == _module.__default.EverLongerSkinnyTrees($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.EverLongerSkinnyTrees(AsFuelBottom($ly), n#0) } 
  _module.__default.EverLongerSkinnyTrees($ly, n#0)
     == _module.__default.EverLongerSkinnyTrees($LZ, n#0));

function _module.__default.EverLongerSkinnyTrees#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.EverLongerSkinnyTrees
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.EverLongerSkinnyTrees#requires($ly, n#0) } 
  LitInt(0) <= n#0
     ==> _module.__default.EverLongerSkinnyTrees#requires($ly, n#0) == true);

procedure {:verboseName "EverLongerSkinnyTrees (well-formedness)"} CheckWellformed$$_module.__default.EverLongerSkinnyTrees(n#0: int where LitInt(0) <= n#0);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EverLongerSkinnyTrees (well-formedness)"} CheckWellformed$$_module.__default.EverLongerSkinnyTrees(n#0: int)
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
        assume $Is(_module.__default.EverLongerSkinnyTrees($LS($LZ), n#0), 
          Tclass._module.Stream(Tclass._module.Tree()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assume _module.__default.SkinnyFiniteTree#canCall(n#0);
        assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), n#0));
        assert {:id "id314"} $Is(n#0 + 1, Tclass._System.nat());
        ##n#1 := n#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
        assume _module.__default.EverLongerSkinnyTrees#canCall(n#0 + 1);
        assume {:id "id315"} _module.__default.EverLongerSkinnyTrees($LS($LZ), n#0)
           == #_module.Stream.Cons($Box(_module.__default.SkinnyFiniteTree($LS($LZ), n#0)), 
            _module.__default.EverLongerSkinnyTrees($LS($LZ), n#0 + 1));
        assume _module.__default.SkinnyFiniteTree#canCall(n#0)
           && _module.__default.EverLongerSkinnyTrees#canCall(n#0 + 1);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.EverLongerSkinnyTrees($LS($LZ), n#0), 
          Tclass._module.Stream(Tclass._module.Tree()));
        return;

        assume false;
    }
}



procedure {:verboseName "EverLongerSkinnyTrees_Lemma (well-formedness)"} CheckWellFormed$$_module.__default.EverLongerSkinnyTrees__Lemma(k#0: int where LitInt(0) <= k#0, n#0: int where LitInt(0) <= n#0);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EverLongerSkinnyTrees_Lemma (well-formedness)"} CheckWellFormed$$_module.__default.EverLongerSkinnyTrees__Lemma(k#0: int, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##n#1: int;
  var ##s#1: DatatypeType;
  var ##n#2: int;
  var ##n#3: int;
  var ##n#4: int;


    // AddMethodImpl: EverLongerSkinnyTrees_Lemma, CheckWellFormed$$_module.__default.EverLongerSkinnyTrees__Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
    ##s#0 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
      _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
      n#0);
    assume {:id "id316"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), 
        $LS($LZ), 
        _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
        n#0));
    ##n#2 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
    ##s#1 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
    ##n#3 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
      _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
      n#0);
    assert {:id "id317"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), 
        $LS($LZ), 
        _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
        n#0));
    assert {:id "id318"} $Is(k#0 + n#0, Tclass._System.nat());
    ##n#4 := k#0 + n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
    assume _module.__default.SkinnyFiniteTree#canCall(k#0 + n#0);
    assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), k#0 + n#0));
    assume {:id "id319"} _module.Tree#Equal($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), 
            $LS($LZ), 
            _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
            n#0))): DatatypeType, 
      _module.__default.SkinnyFiniteTree($LS($LZ), k#0 + n#0));
}



procedure {:verboseName "EverLongerSkinnyTrees_Lemma (call)"} Call$$_module.__default.EverLongerSkinnyTrees__Lemma(k#0: int where LitInt(0) <= k#0, n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.EverLongerSkinnyTrees#canCall(k#0)
     && _module.__default.Tail#canCall(Tclass._module.Tree(), 
      _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
      n#0);
  ensures {:id "id320"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), 
      $LS($LS($LZ)), 
      _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0), 
      n#0));
  free ensures $IsA#_module.Tree($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), 
            $LS($LZ), 
            _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
            n#0))): DatatypeType)
     && $IsA#_module.Tree(_module.__default.SkinnyFiniteTree($LS($LZ), k#0 + n#0))
     && 
    _module.__default.EverLongerSkinnyTrees#canCall(k#0)
     && _module.__default.Tail#canCall(Tclass._module.Tree(), 
      _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
      n#0)
     && _module.__default.SkinnyFiniteTree#canCall(k#0 + n#0);
  ensures {:id "id321"} _module.Tree#Equal($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), 
          $LS($LS($LZ)), 
          _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0), 
          n#0))): DatatypeType, 
    _module.__default.SkinnyFiniteTree($LS($LS($LZ)), k#0 + n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "EverLongerSkinnyTrees_Lemma (correctness)"} Impl$$_module.__default.EverLongerSkinnyTrees__Lemma(k#0: int where LitInt(0) <= k#0, n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.EverLongerSkinnyTrees#canCall(k#0)
     && _module.__default.Tail#canCall(Tclass._module.Tree(), 
      _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
      n#0);
  ensures {:id "id322"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), 
      $LS($LS($LZ)), 
      _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0), 
      n#0));
  free ensures $IsA#_module.Tree($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), 
            $LS($LZ), 
            _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
            n#0))): DatatypeType)
     && $IsA#_module.Tree(_module.__default.SkinnyFiniteTree($LS($LZ), k#0 + n#0))
     && 
    _module.__default.EverLongerSkinnyTrees#canCall(k#0)
     && _module.__default.Tail#canCall(Tclass._module.Tree(), 
      _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
      n#0)
     && _module.__default.SkinnyFiniteTree#canCall(k#0 + n#0);
  ensures {:id "id323"} _module.Tree#Equal($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), 
          $LS($LS($LZ)), 
          _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0), 
          n#0))): DatatypeType, 
    _module.__default.SkinnyFiniteTree($LS($LS($LZ)), k#0 + n#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EverLongerSkinnyTrees_Lemma (correctness)"} Impl$$_module.__default.EverLongerSkinnyTrees__Lemma(k#0: int, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##s#1_0_0_0: DatatypeType;
  var ##n#1_0_0_0: int;
  var ##n#1_0_0_1: int;
  var ##s#1_0_0_1: DatatypeType;
  var ##n#1_0_0_2: int;
  var ##n#1_0_0_3: int;
  var ##s#1_0_1_0: DatatypeType;
  var ##n#1_0_1_0: int;
  var ##n#1_0_1_1: int;
  var s##1_0_1_0: DatatypeType;
  var ##n#1_0_1_2: int;
  var n##1_0_1_0: int;
  var ##s#1_0_1_1: DatatypeType;
  var ##n#1_0_1_3: int;
  var ##n#1_0_1_4: int;
  var ##s#1_0_2_0: DatatypeType;
  var ##n#1_0_2_0: int;
  var ##n#1_0_2_1: int;
  var k##1_0_2_0: int;
  var n##1_0_2_0: int;
  var ##s#1_0_2_1: DatatypeType;
  var ##n#1_0_2_2: int;
  var ##n#1_0_2_3: int;
  var ##s#1_0_0: DatatypeType;
  var ##n#1_0_0: int;
  var ##n#1_0_1: int;
  var k##1_0: int;
  var n##1_0: int;

    // AddMethodImpl: EverLongerSkinnyTrees_Lemma, Impl$$_module.__default.EverLongerSkinnyTrees__Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: int, $ih#n0#0: int :: 
      { _module.__default.Tail(Tclass._module.Tree(), 
          $LS($LZ), 
          _module.__default.EverLongerSkinnyTrees($LS($LZ), $ih#k0#0), 
          $ih#n0#0) } 
      LitInt(0) <= $ih#k0#0
           && LitInt(0) <= $ih#n0#0
           && Lit(true)
           && 
          0 <= $ih#n0#0
           && $ih#n0#0 < n#0
         ==> _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), 
              $LS($LZ), 
              _module.__default.EverLongerSkinnyTrees($LS($LZ), $ih#k0#0), 
              $ih#n0#0))
           && _module.Tree#Equal($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), 
                  $LS($LZ), 
                  _module.__default.EverLongerSkinnyTrees($LS($LZ), $ih#k0#0), 
                  $ih#n0#0))): DatatypeType, 
            _module.__default.SkinnyFiniteTree($LS($LZ), $ih#k0#0 + $ih#n0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(323,3)
    assume true;
    if (n#0 == LitInt(0))
    {
    }
    else
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            ##n#1_0_0 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            ##s#1_0_0 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#1_0_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
              _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
              n#0);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), 
                _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
                n#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            ##n#1_0_2_0 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            ##s#1_0_2_0 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_2_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##n#1_0_2_1 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
              _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
              n#0);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), 
                _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
                n#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            push;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(327,36)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            k##1_0_2_0 := k#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id336"} $Is(n#0 - 1, Tclass._System.nat());
            n##1_0_2_0 := n#0 - 1;
            assert {:id "id337"} 0 <= n#0 || n##1_0_2_0 == n#0;
            assert {:id "id338"} n##1_0_2_0 < n#0;
            call {:id "id339"} Call$$_module.__default.EverLongerSkinnyTrees__Lemma(k##1_0_2_0, n##1_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            ##n#1_0_2_2 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            ##s#1_0_2_1 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_2_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assert {:id "id340"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_2_3 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_2_3, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
              _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
              n#0 - 1);
            assert {:id "id341"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), 
                $LS($LZ), 
                _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
                n#0 - 1));
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), 
                _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
                n#0 - 1);
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            assert {:id "id342"} {:subsumption 0} $Eq#_module.Stream(Tclass._module.Tree(), 
              Tclass._module.Tree(), 
              $LS($LS($LZ)), 
              _module.__default.Tail(Tclass._module.Tree(), 
                $LS($LS($LZ)), 
                _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0), 
                n#0), 
              _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), 
                  $LS($LS($LZ)), 
                  _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0), 
                  n#0 - 1)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            ##n#1_0_1_0 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            ##s#1_0_1_0 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_1_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume {:id "id329"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_1_1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
              _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
              n#0 - 1);
            assume {:id "id330"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), 
                $LS($LZ), 
                _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
                n#0 - 1));
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), 
                _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
                n#0 - 1);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            push;
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(329,20)
            // TrCallStmt: Before ProcessCallStmt
            ##n#1_0_1_2 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            // ProcessCallStmt: CheckSubrange
            s##1_0_1_0 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id331"} $Is(n#0 - 1, Tclass._System.nat());
            n##1_0_1_0 := n#0 - 1;
            call {:id "id332"} Call$$_module.__default.Tail__Lemma0(Tclass._module.Tree(), s##1_0_1_0, n##1_0_1_0);
            // TrCallStmt: After ProcessCallStmt
            pop;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            ##n#1_0_1_3 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_3, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            assert {:id "id333"} _module.Stream.Cons_q(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0));
            ##s#1_0_1_1 := _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_1_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assert {:id "id334"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_1_4 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_1_4, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
              _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0)), 
              n#0 - 1);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), 
                _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0)), 
                n#0 - 1);
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            assert {:id "id335"} {:subsumption 0} $Eq#_module.Stream(Tclass._module.Tree(), 
              Tclass._module.Tree(), 
              $LS($LS($LZ)), 
              _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), 
                  $LS($LS($LZ)), 
                  _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0), 
                  n#0 - 1)), 
              _module.__default.Tail(Tclass._module.Tree(), 
                $LS($LS($LZ)), 
                _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0)), 
                n#0 - 1));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            ##n#1_0_0_0 := k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0);
            assume {:id "id324"} _module.Stream.Cons_q(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0));
            ##s#1_0_0_0 := _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assume {:id "id325"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_0_1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_1, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
              _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0)), 
              n#0 - 1);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), 
                _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LZ), k#0)), 
                n#0 - 1);
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            push;
            pop;
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            assert {:id "id326"} $Is(k#0 + 1, Tclass._System.nat());
            ##n#1_0_0_2 := k#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_2, Tclass._System.nat(), $Heap);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0 + 1);
            ##s#1_0_0_1 := _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0 + 1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1_0_0_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assert {:id "id327"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1_0_0_3 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1_0_0_3, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), 
              _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0 + 1), 
              n#0 - 1);
            assume _module.__default.EverLongerSkinnyTrees#canCall(k#0 + 1)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), 
                _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0 + 1), 
                n#0 - 1);
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(325,5)
            assert {:id "id328"} {:subsumption 0} $Eq#_module.Stream(Tclass._module.Tree(), 
              Tclass._module.Tree(), 
              $LS($LS($LZ)), 
              _module.__default.Tail(Tclass._module.Tree(), 
                $LS($LS($LZ)), 
                _module.Stream.tail(_module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0)), 
                n#0 - 1), 
              _module.__default.Tail(Tclass._module.Tree(), 
                $LS($LS($LZ)), 
                _module.__default.EverLongerSkinnyTrees($LS($LS($LZ)), k#0 + 1), 
                n#0 - 1));
            assume false;
        }

        assume {:id "id343"} $Eq#_module.Stream(Tclass._module.Tree(), 
          Tclass._module.Tree(), 
          $LS($LS($LZ)), 
          _module.__default.Tail(Tclass._module.Tree(), 
            $LS($LZ), 
            _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0), 
            n#0), 
          _module.__default.Tail(Tclass._module.Tree(), 
            $LS($LZ), 
            _module.__default.EverLongerSkinnyTrees($LS($LZ), k#0 + 1), 
            n#0 - 1));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(333,32)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id344"} $Is(k#0 + 1, Tclass._System.nat());
        k##1_0 := k#0 + 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id345"} $Is(n#0 - 1, Tclass._System.nat());
        n##1_0 := n#0 - 1;
        assert {:id "id346"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id347"} n##1_0 < n#0;
        call {:id "id348"} Call$$_module.__default.EverLongerSkinnyTrees__Lemma(k##1_0, n##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
}



procedure {:verboseName "Proposition3 (well-formedness)"} CheckWellFormed$$_module.__default.Proposition3();
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition3 (call)"} Call$$_module.__default.Proposition3();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.FiniteUnboundedTree#canCall()
     && _module.__default.HasBoundedHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()))
     && (!Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.FiniteUnboundedTree())))
       ==> _module.__default.FiniteUnboundedTree#canCall()
         && _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree())));
  ensures {:id "id351"} !Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.FiniteUnboundedTree())));
  free ensures {:id "id352"} _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()))
     && 
    Lit(_module.__default.HasFiniteHeight(Lit(_module.__default.FiniteUnboundedTree())))
     && (forall p#0: DatatypeType :: 
      { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0) } 
        { _module.__default.ValidPath($LS($LZ), _module.__default.FiniteUnboundedTree(), p#0) } 
      $Is(p#0, Tclass._module.Stream(TInt))
         ==> 
        _module.__default.ValidPath($LS($LZ), Lit(_module.__default.FiniteUnboundedTree()), p#0)
         ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition3 (correctness)"} Impl$$_module.__default.Proposition3() returns ($_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.FiniteUnboundedTree#canCall()
     && _module.__default.HasBoundedHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()))
     && (!Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.FiniteUnboundedTree())))
       ==> _module.__default.FiniteUnboundedTree#canCall()
         && _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree())));
  ensures {:id "id353"} !Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.FiniteUnboundedTree())));
  ensures {:id "id354"} _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()))
     ==> Lit(_module.__default.HasFiniteHeight(Lit(_module.__default.FiniteUnboundedTree())))
       || (forall p#1: DatatypeType :: 
        { _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#1) } 
          { _module.__default.ValidPath($LS($LS($LZ)), _module.__default.FiniteUnboundedTree(), p#1) } 
        $Is(p#1, Tclass._module.Stream(TInt))
           ==> 
          _module.__default.ValidPath($LS($LS($LZ)), Lit(_module.__default.FiniteUnboundedTree()), p#1)
           ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition3 (correctness)"} Impl$$_module.__default.Proposition3() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Proposition3, Impl$$_module.__default.Proposition3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(340,16)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id355"} Call$$_module.__default.Proposition3a();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(341,16)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id356"} Call$$_module.__default.Proposition3b();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Proposition3a (well-formedness)"} CheckWellFormed$$_module.__default.Proposition3a();
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition3a (call)"} Call$$_module.__default.Proposition3a();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.FiniteUnboundedTree#canCall()
     && _module.__default.HasBoundedHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()));
  ensures {:id "id358"} !Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.FiniteUnboundedTree())));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition3a (correctness)"} Impl$$_module.__default.Proposition3a() returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.FiniteUnboundedTree#canCall()
     && _module.__default.HasBoundedHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()));
  ensures {:id "id359"} !Lit(_module.__default.HasBoundedHeight(Lit(_module.__default.FiniteUnboundedTree())));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition3a (correctness)"} Impl$$_module.__default.Proposition3a() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ch#0: DatatypeType
     where $Is(ch#0, Tclass._module.Stream(Tclass._module.Tree()))
       && $IsAlloc(ch#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
  var n#0_0: int;
  var ##s#0_0: DatatypeType;
  var ##n#0_0: int;
  var cn#0_0: DatatypeType
     where $Is(cn#0_0, Tclass._module.Stream(Tclass._module.Tree()))
       && $IsAlloc(cn#0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
  var ##s#0_1: DatatypeType;
  var ##n#0_1: int;
  var k##0_0: int;
  var n##0_0: int;
  var ##n#0_2: int;
  var ##s#0_2: DatatypeType;
  var ##n#0_3: int;
  var s##0_0: DatatypeType;
  var n##0_1: int;
  var h##0_0: int;

    // AddMethodImpl: Proposition3a, Impl$$_module.__default.Proposition3a
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(346,10)
    assume true;
    assume _module.__default.FiniteUnboundedTree#canCall();
    assume _module.Tree.Node_q(Lit(_module.__default.FiniteUnboundedTree()));
    assume _module.Tree.Node_q(Lit(_module.__default.FiniteUnboundedTree()));
    assume _module.__default.FiniteUnboundedTree#canCall()
       && _module.Tree.Node_q(Lit(_module.__default.FiniteUnboundedTree()));
    ch#0 := Lit(_module.Tree.children(Lit(_module.__default.FiniteUnboundedTree())));
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(347,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc n#0_0;
        assume true;
        assume true;
        assume {:id "id361"} LitInt(0) <= n#0_0;
        if (*)
        {
            ##s#0_0 := ch#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assert {:id "id362"} $Is(n#0_0, Tclass._System.nat());
            ##n#0_0 := n#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
            assume _module.__default.LowerThan#canCall(ch#0, n#0_0);
            assume _module.__default.LowerThan#canCall(ch#0, n#0_0);
            assume {:id "id363"} !_module.__default.LowerThan($LS($LZ), ch#0, n#0_0);
            assume false;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(350,12)
        assume true;
        ##s#0_1 := ch#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        assert {:id "id364"} $Is(n#0_0 + 1, Tclass._System.nat());
        ##n#0_1 := n#0_0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(Tclass._module.Tree(), ch#0, n#0_0 + 1);
        assume _module.__default.Tail#canCall(Tclass._module.Tree(), ch#0, n#0_0 + 1);
        cn#0_0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), ch#0, n#0_0 + 1);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(351,32)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id366"} $Is(LitInt(0), Tclass._System.nat());
        k##0_0 := LitInt(0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id367"} $Is(n#0_0 + 1, Tclass._System.nat());
        n##0_0 := n#0_0 + 1;
        call {:id "id368"} Call$$_module.__default.EverLongerSkinnyTrees__Lemma(k##0_0, n##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(352,5)
        assert {:id "id369"} _module.Stream.Cons_q(cn#0_0);
        assert {:id "id370"} $Is(n#0_0 + 1, Tclass._System.nat());
        ##n#0_2 := n#0_0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2, Tclass._System.nat(), $Heap);
        assume _module.__default.SkinnyFiniteTree#canCall(n#0_0 + 1);
        assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), n#0_0 + 1));
        assume $IsA#_module.Tree($Unbox(_module.Stream.head(cn#0_0)): DatatypeType)
           && $IsA#_module.Tree(_module.__default.SkinnyFiniteTree($LS($LZ), n#0_0 + 1))
           && _module.__default.SkinnyFiniteTree#canCall(n#0_0 + 1);
        assert {:id "id371"} {:subsumption 0} _module.Tree#Equal($Unbox(_module.Stream.head(cn#0_0)): DatatypeType, 
          _module.__default.SkinnyFiniteTree($LS($LS($LZ)), n#0_0 + 1));
        assume {:id "id372"} _module.Tree#Equal($Unbox(_module.Stream.head(cn#0_0)): DatatypeType, 
          _module.__default.SkinnyFiniteTree($LS($LS($LZ)), n#0_0 + 1));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(353,5)
        assert {:id "id373"} _module.Stream.Cons_q(cn#0_0);
        assume _module.Tree.Node_q($Unbox(_module.Stream.head(cn#0_0)): DatatypeType);
        ##s#0_2 := _module.Tree.children($Unbox(_module.Stream.head(cn#0_0)): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_2, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        assert {:id "id374"} $Is(n#0_0, Tclass._System.nat());
        ##n#0_3 := n#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_3, Tclass._System.nat(), $Heap);
        assume _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(cn#0_0)): DatatypeType), n#0_0);
        assume _module.Tree.Node_q($Unbox(_module.Stream.head(cn#0_0)): DatatypeType)
           && _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(cn#0_0)): DatatypeType), n#0_0);
        assert {:id "id375"} {:subsumption 0} !_module.__default.LowerThan($LS($LS($LZ)), 
          _module.Tree.children($Unbox(_module.Stream.head(cn#0_0)): DatatypeType), 
          n#0_0);
        assume {:id "id376"} !_module.__default.LowerThan($LS($LZ), 
          _module.Tree.children($Unbox(_module.Stream.head(cn#0_0)): DatatypeType), 
          n#0_0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(354,20)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := ch#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id377"} $Is(n#0_0 + 1, Tclass._System.nat());
        n##0_1 := n#0_0 + 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id378"} $Is(n#0_0, Tclass._System.nat());
        h##0_0 := n#0_0;
        call {:id "id379"} Call$$_module.__default.LowerThan__Lemma(s##0_0, n##0_1, h##0_0);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id380"} !_module.__default.LowerThan($LS($LS($LZ)), ch#0, n#0_0);
        assume false;
    }
    else
    {
        assume (forall n#0_1: int :: 
          { _module.__default.LowerThan($LS($LZ), ch#0, n#0_1) } 
          LitInt(0) <= n#0_1 ==> !_module.__default.LowerThan($LS($LZ), ch#0, n#0_1));
    }
}



procedure {:verboseName "Proposition3b (well-formedness)"} CheckWellFormed$$_module.__default.Proposition3b();
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition3b (call)"} Call$$_module.__default.Proposition3b();
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.FiniteUnboundedTree#canCall()
     && _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()));
  free ensures {:id "id382"} _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()))
     && 
    Lit(_module.__default.HasFiniteHeight(Lit(_module.__default.FiniteUnboundedTree())))
     && (forall p#0: DatatypeType :: 
      { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0) } 
        { _module.__default.ValidPath($LS($LZ), _module.__default.FiniteUnboundedTree(), p#0) } 
      $Is(p#0, Tclass._module.Stream(TInt))
         ==> 
        _module.__default.ValidPath($LS($LZ), Lit(_module.__default.FiniteUnboundedTree()), p#0)
         ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition3b (correctness)"} Impl$$_module.__default.Proposition3b() returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.FiniteUnboundedTree#canCall()
     && _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()));
  ensures {:id "id383"} _module.__default.HasFiniteHeight#canCall(Lit(_module.__default.FiniteUnboundedTree()))
     ==> Lit(_module.__default.HasFiniteHeight(Lit(_module.__default.FiniteUnboundedTree())))
       || (forall p#1: DatatypeType :: 
        { _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#1) } 
          { _module.__default.ValidPath($LS($LS($LZ)), _module.__default.FiniteUnboundedTree(), p#1) } 
        $Is(p#1, Tclass._module.Stream(TInt))
           ==> 
          _module.__default.ValidPath($LS($LS($LZ)), Lit(_module.__default.FiniteUnboundedTree()), p#1)
           ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#1));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition3b (correctness)"} Impl$$_module.__default.Proposition3b() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var t#0: DatatypeType
     where $Is(t#0, Tclass._module.Tree()) && $IsAlloc(t#0, Tclass._module.Tree(), $Heap);
  var p#0_0: DatatypeType;
  var ##t#0_0: DatatypeType;
  var ##p#0_0: DatatypeType;
  var ##s#0_0: DatatypeType;
  var index#0_0: int;
  var ch#0_0: DatatypeType
     where $Is(ch#0_0, Tclass._module.Stream(Tclass._module.Tree()))
       && $IsAlloc(ch#0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
  var ##s#0_1: DatatypeType;
  var ##n#0_0: int;
  var ##t#0_1: DatatypeType;
  var ##p#0_1: DatatypeType;
  var k##0_0: int;
  var n##0_0: int;
  var ##n#0_1: int;
  var si#0_0: DatatypeType
     where $Is(si#0_0, Tclass._module.Tree())
       && $IsAlloc(si#0_0, Tclass._module.Tree(), $Heap);
  var ##n#0_2: int;
  var ##s#0_2: DatatypeType;
  var ##n#0_3: int;
  var t##0_0: DatatypeType;
  var h##0_0: int;
  var p##0_0: DatatypeType;

    // AddMethodImpl: Proposition3b, Impl$$_module.__default.Proposition3b
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(360,9)
    assume true;
    assume _module.__default.FiniteUnboundedTree#canCall();
    assume _module.Tree.Node_q(Lit(_module.__default.FiniteUnboundedTree()));
    assume _module.__default.FiniteUnboundedTree#canCall();
    t#0 := Lit(_module.__default.FiniteUnboundedTree());
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(361,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc p#0_0;
        assume $Is(p#0_0, Tclass._module.Stream(TInt));
        ##t#0_0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0, Tclass._module.Tree(), $Heap);
        ##p#0_0 := p#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##p#0_0, Tclass._module.Stream(TInt), $Heap);
        assume _module.__default.ValidPath#canCall(t#0, p#0_0);
        assume _module.__default.ValidPath#canCall(t#0, p#0_0);
        assume {:id "id385"} _module.__default.ValidPath($LS($LZ), t#0, p#0_0);
        if (*)
        {
            ##s#0_0 := p#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0_0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0_0);
            assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0_0);
            assume {:id "id386"} !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_0);
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(364,5)
        assume true;
        assert {:id "id387"} _module.Stream.Cons_q(p#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(365,15)
        assume true;
        assert {:id "id388"} _module.Stream.Cons_q(p#0_0);
        assume true;
        index#0_0 := $Unbox(_module.Stream.head(p#0_0)): int;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(366,5)
        assume true;
        assert {:id "id390"} LitInt(0) <= index#0_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(367,12)
        assume true;
        assume _module.Tree.Node_q(t#0);
        ##s#0_1 := _module.Tree.children(t#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        assert {:id "id391"} $Is(index#0_0, Tclass._System.nat());
        ##n#0_0 := index#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#0_0);
        assume _module.Tree.Node_q(t#0)
           && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#0_0);
        ch#0_0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#0_0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(368,5)
        if (_module.Stream.Cons_q(ch#0_0))
        {
            assert {:id "id393"} _module.Stream.Cons_q(ch#0_0);
            ##t#0_1 := $Unbox(_module.Stream.head(ch#0_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0_1, Tclass._module.Tree(), $Heap);
            assert {:id "id394"} _module.Stream.Cons_q(p#0_0);
            ##p#0_1 := _module.Stream.tail(p#0_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##p#0_1, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, _module.Stream.tail(p#0_0));
        }

        assume _module.Stream.Cons_q(ch#0_0)
           ==> _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, _module.Stream.tail(p#0_0));
        assert {:id "id395"} {:subsumption 0} _module.Stream.Cons_q(ch#0_0);
        assert {:id "id396"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, _module.Stream.tail(p#0_0))
           ==> _module.__default.ValidPath($LS($LZ), 
              $Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
              _module.Stream.tail(p#0_0))
             || (_module.Stream.Nil_q(_module.Stream.tail(p#0_0))
               ==> _module.Tree#Equal($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
                #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
        assert {:id "id397"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, _module.Stream.tail(p#0_0))
           ==> _module.__default.ValidPath($LS($LZ), 
              $Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
              _module.Stream.tail(p#0_0))
             || (!_module.Stream.Nil_q(_module.Stream.tail(p#0_0))
               ==> (var tail#0_0 := _module.Stream.tail(_module.Stream.tail(p#0_0)); 
                (var index#0_1 := $Unbox(_module.Stream.head(_module.Stream.tail(p#0_0))): int; 
                  LitInt(0) <= index#0_1)));
        assert {:id "id398"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, _module.Stream.tail(p#0_0))
           ==> _module.__default.ValidPath($LS($LZ), 
              $Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
              _module.Stream.tail(p#0_0))
             || (!_module.Stream.Nil_q(_module.Stream.tail(p#0_0))
               ==> (var tail#0_0 := _module.Stream.tail(_module.Stream.tail(p#0_0)); 
                (var index#0_1 := $Unbox(_module.Stream.head(_module.Stream.tail(p#0_0))): int; 
                  (var ch#0_1 := _module.__default.Tail(Tclass._module.Tree(), 
                        $LS($LS($LZ)), 
                        _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                        index#0_1); 
                    _module.Stream.Cons_q(ch#0_1)))));
        assert {:id "id399"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, _module.Stream.tail(p#0_0))
           ==> _module.__default.ValidPath($LS($LZ), 
              $Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
              _module.Stream.tail(p#0_0))
             || (!_module.Stream.Nil_q(_module.Stream.tail(p#0_0))
               ==> (var tail#0_0 := _module.Stream.tail(_module.Stream.tail(p#0_0)); 
                (var index#0_1 := $Unbox(_module.Stream.head(_module.Stream.tail(p#0_0))): int; 
                  (var ch#0_1 := _module.__default.Tail(Tclass._module.Tree(), 
                        $LS($LS($LZ)), 
                        _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
                        index#0_1); 
                    _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#0_1)): DatatypeType, tail#0_0)))));
        assume {:id "id400"} _module.Stream.Cons_q(ch#0_0)
           && _module.__default.ValidPath($LS($LZ), 
            $Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
            _module.Stream.tail(p#0_0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(369,32)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id401"} $Is(LitInt(0), Tclass._System.nat());
        k##0_0 := LitInt(0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id402"} $Is(index#0_0, Tclass._System.nat());
        n##0_0 := index#0_0;
        call {:id "id403"} Call$$_module.__default.EverLongerSkinnyTrees__Lemma(k##0_0, n##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(370,5)
        assert {:id "id404"} _module.Stream.Cons_q(ch#0_0);
        assert {:id "id405"} $Is(index#0_0, Tclass._System.nat());
        ##n#0_1 := index#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.SkinnyFiniteTree#canCall(index#0_0);
        assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), index#0_0));
        assume $IsA#_module.Tree($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)
           && $IsA#_module.Tree(_module.__default.SkinnyFiniteTree($LS($LZ), index#0_0))
           && _module.__default.SkinnyFiniteTree#canCall(index#0_0);
        assert {:id "id406"} {:subsumption 0} _module.Tree#Equal($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
          _module.__default.SkinnyFiniteTree($LS($LS($LZ)), index#0_0));
        assume {:id "id407"} _module.Tree#Equal($Unbox(_module.Stream.head(ch#0_0)): DatatypeType, 
          _module.__default.SkinnyFiniteTree($LS($LS($LZ)), index#0_0));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(371,12)
        assume true;
        assert {:id "id408"} $Is(index#0_0, Tclass._System.nat());
        ##n#0_2 := index#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_2, Tclass._System.nat(), $Heap);
        assume _module.__default.SkinnyFiniteTree#canCall(index#0_0);
        assume _module.Tree.Node_q(_module.__default.SkinnyFiniteTree($LS($LZ), index#0_0));
        assume _module.__default.SkinnyFiniteTree#canCall(index#0_0);
        si#0_0 := _module.__default.SkinnyFiniteTree($LS($LZ), index#0_0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(372,5)
        assume _module.Tree.Node_q(si#0_0);
        ##s#0_2 := _module.Tree.children(si#0_0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_2, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        assert {:id "id410"} $Is(index#0_0, Tclass._System.nat());
        ##n#0_3 := index#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_3, Tclass._System.nat(), $Heap);
        assume _module.__default.LowerThan#canCall(_module.Tree.children(si#0_0), index#0_0);
        assume _module.Tree.Node_q(si#0_0)
           && _module.__default.LowerThan#canCall(_module.Tree.children(si#0_0), index#0_0);
        assert {:id "id411"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children(si#0_0), index#0_0)
           ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(si#0_0), index#0_0)
             || (_module.Stream.Nil_q(_module.Tree.children(si#0_0)) ==> Lit(true));
        assert {:id "id412"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children(si#0_0), index#0_0)
           ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(si#0_0), index#0_0)
             || (!_module.Stream.Nil_q(_module.Tree.children(si#0_0))
               ==> (var tail#0_2 := _module.Stream.tail(_module.Tree.children(si#0_0)); 
                (var t#0_0 := $Unbox(_module.Stream.head(_module.Tree.children(si#0_0))): DatatypeType; 
                  LitInt(1) <= index#0_0)));
        assert {:id "id413"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children(si#0_0), index#0_0)
           ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(si#0_0), index#0_0)
             || (!_module.Stream.Nil_q(_module.Tree.children(si#0_0))
               ==> (var tail#0_2 := _module.Stream.tail(_module.Tree.children(si#0_0)); 
                (var t#0_0 := $Unbox(_module.Stream.head(_module.Tree.children(si#0_0))): DatatypeType; 
                  _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#0_0), index#0_0 - 1))));
        assert {:id "id414"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children(si#0_0), index#0_0)
           ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(si#0_0), index#0_0)
             || (!_module.Stream.Nil_q(_module.Tree.children(si#0_0))
               ==> (var tail#0_2 := _module.Stream.tail(_module.Tree.children(si#0_0)); 
                (var t#0_0 := $Unbox(_module.Stream.head(_module.Tree.children(si#0_0))): DatatypeType; 
                  _module.__default.LowerThan($LS($LS($LZ)), tail#0_2, index#0_0))));
        assume {:id "id415"} _module.__default.LowerThan($LS($LZ), _module.Tree.children(si#0_0), index#0_0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(373,24)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##0_0 := si#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id416"} $Is(index#0_0, Tclass._System.nat());
        h##0_0 := index#0_0;
        assert {:id "id417"} _module.Stream.Cons_q(p#0_0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := _module.Stream.tail(p#0_0);
        call {:id "id418"} Call$$_module.__default.Proposition3b__Lemma(t##0_0, h##0_0, p##0_0);
        // TrCallStmt: After ProcessCallStmt
        assert {:id "id419"} !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0_0);
        assume false;
    }
    else
    {
        assume (forall p#0_1: DatatypeType :: 
          { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_1) } 
            { _module.__default.ValidPath($LS($LZ), t#0, p#0_1) } 
          $Is(p#0_1, Tclass._module.Stream(TInt))
               && _module.__default.ValidPath($LS($LZ), t#0, p#0_1)
             ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_1));
    }
}



procedure {:verboseName "Proposition3b_Lemma (well-formedness)"} CheckWellFormed$$_module.__default.Proposition3b__Lemma(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    h#0: int where LitInt(0) <= h#0, 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Proposition3b_Lemma (call)"} Call$$_module.__default.Proposition3b__Lemma(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    h#0: int where LitInt(0) <= h#0, 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  // user-defined preconditions
  requires {:id "id423"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), h#0)
       || (_module.Stream.Nil_q(_module.Tree.children(t#0)) ==> Lit(true));
  requires {:id "id424"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), h#0)
       || (!_module.Stream.Nil_q(_module.Tree.children(t#0))
         ==> (var tail#0 := _module.Stream.tail(_module.Tree.children(t#0)); 
          (var t#1 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
            LitInt(1) <= h#0)));
  requires {:id "id425"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), h#0)
       || (!_module.Stream.Nil_q(_module.Tree.children(t#0))
         ==> (var tail#0 := _module.Stream.tail(_module.Tree.children(t#0)); 
          (var t#1 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#1), h#0 - 1))));
  requires {:id "id426"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), h#0)
     ==> _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), h#0)
       || (!_module.Stream.Nil_q(_module.Tree.children(t#0))
         ==> (var tail#0 := _module.Stream.tail(_module.Tree.children(t#0)); 
          (var t#1 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
            _module.__default.LowerThan($LS($LS($LZ)), tail#0, h#0))));
  requires {:id "id427"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (_module.Stream.Nil_q(p#0)
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id428"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#2 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; LitInt(0) <= index#0)));
  requires {:id "id429"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#2 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.Stream.Cons_q(ch#0)))));
  requires {:id "id430"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#2 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#2)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
  ensures {:id "id431"} !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Proposition3b_Lemma (correctness)"} Impl$$_module.__default.Proposition3b__Lemma(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    h#0: int where LitInt(0) <= h#0, 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id432"} _module.__default.LowerThan#canCall(_module.Tree.children(t#0), h#0)
     && 
    _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#0), h#0)
     && (if _module.Stream.Nil_q(_module.Tree.children(t#0))
       then true
       else (var tail#5 := _module.Stream.tail(_module.Tree.children(t#0)); 
        (var t#4 := $Unbox(_module.Stream.head(_module.Tree.children(t#0))): DatatypeType; 
          LitInt(1) <= h#0
             && _module.__default.LowerThan($LS($LZ), _module.Tree.children(t#4), h#0 - 1)
             && _module.__default.LowerThan($LS($LZ), tail#5, h#0))));
  free requires {:id "id433"} _module.__default.ValidPath#canCall(t#0, p#0)
     && 
    _module.__default.ValidPath($LS($LZ), t#0, p#0)
     && (if _module.Stream.Nil_q(p#0)
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var tail#7 := _module.Stream.tail(p#0); 
        (var index#3 := $Unbox(_module.Stream.head(p#0)): int; 
          LitInt(0) <= index#3
             && (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#3); 
              _module.Stream.Cons_q(ch#3)
                 && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#7)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
  ensures {:id "id434"} !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Proposition3b_Lemma (correctness)"} Impl$$_module.__default.Proposition3b__Lemma(t#0: DatatypeType, h#0: int, p#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var tail#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var index#0_0: int;
  var let#0_1#0#0: int;
  var ch#0_0: DatatypeType
     where $Is(ch#0_0, Tclass._module.Stream(Tclass._module.Tree()))
       && $IsAlloc(ch#0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
  var ##s#0_0: DatatypeType;
  var ##n#0_0: int;
  var _mcc#2#0_0_0: DatatypeType;
  var _mcc#3#0_0_0: DatatypeType;
  var s##0_0_0: DatatypeType;
  var n##0_0_0: int;
  var h##0_0_0: int;
  var p##0_1_0: DatatypeType;
  var ##s#0_1: DatatypeType;
  var ##n#0_1: int;

    // AddMethodImpl: Proposition3b_Lemma, Impl$$_module.__default.Proposition3b__Lemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Tree(t#0);
    assume $IsA#_module.Stream(p#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#t0#0: DatatypeType, $ih#h0#0: int, $ih#p0#0: DatatypeType :: 
      { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0), _module.__default.LowerThan($LS($LZ), _module.Tree.children($ih#t0#0), $ih#h0#0) } 
        { _module.__default.ValidPath($LS($LZ), $ih#t0#0, $ih#p0#0), _module.__default.LowerThan($LS($LZ), _module.Tree.children($ih#t0#0), $ih#h0#0) } 
      $Is($ih#t0#0, Tclass._module.Tree())
           && LitInt(0) <= $ih#h0#0
           && $Is($ih#p0#0, Tclass._module.Stream(TInt))
           && 
          _module.__default.LowerThan($LS($LZ), _module.Tree.children($ih#t0#0), $ih#h0#0)
           && _module.__default.ValidPath($LS($LZ), $ih#t0#0, $ih#p0#0)
           && 
          0 <= $ih#h0#0
           && $ih#h0#0 < h#0
         ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (p#0 == #_module.Stream.Nil())
    {
    }
    else if (p#0 == #_module.Stream.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.Stream(TInt));
        havoc tail#0_0;
        assume $Is(tail#0_0, Tclass._module.Stream(TInt))
           && $IsAlloc(tail#0_0, Tclass._module.Stream(TInt), $Heap);
        assume {:id "id435"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Stream(TInt));
        assume {:id "id436"} tail#0_0 == let#0_0#0#0;
        havoc index#0_0;
        assume {:id "id437"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id438"} index#0_0 == let#0_1#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(385,14)
        assume true;
        assume _module.Tree.Node_q(t#0);
        ##s#0_0 := _module.Tree.children(t#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        assert {:id "id439"} $Is(index#0_0, Tclass._System.nat());
        ##n#0_0 := index#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_0, Tclass._System.nat(), $Heap);
        assume _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#0_0);
        assume _module.Tree.Node_q(t#0)
           && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#0), index#0_0);
        ch#0_0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#0_0);
        assume _module.Tree.Node_q(t#0);
        assume _module.Tree.Node_q(t#0);
        havoc _mcc#2#0_0_0, _mcc#3#0_0_0;
        if (_module.Tree.children(t#0) == #_module.Stream.Nil())
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(390,26)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            p##0_1_0 := p#0;
            call {:id "id443"} Call$$_module.__default.ValidPath__Lemma(p##0_1_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(391,11)
            assume true;
            assert {:id "id444"} Lit(false);
        }
        else if (_module.Tree.children(t#0)
           == #_module.Stream.Cons($Box(_mcc#2#0_0_0), _mcc#3#0_0_0))
        {
            assume $Is(_mcc#2#0_0_0, Tclass._module.Tree());
            assume $Is(_mcc#3#0_0_0, Tclass._module.Stream(Tclass._module.Tree()));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(394,26)
            // TrCallStmt: Before ProcessCallStmt
            assume _module.Tree.Node_q(t#0);
            assume _module.Tree.Node_q(t#0);
            // ProcessCallStmt: CheckSubrange
            s##0_0_0 := _module.Tree.children(t#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id441"} $Is(index#0_0, Tclass._System.nat());
            n##0_0_0 := index#0_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            h##0_0_0 := h#0;
            call {:id "id442"} Call$$_module.__default.LowerThan__Lemma(s##0_0_0, n##0_0_0, h##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(398,7)
        assert {:id "id445"} _module.Stream.Cons_q(ch#0_0);
        assume _module.Tree.Node_q($Unbox(_module.Stream.head(ch#0_0)): DatatypeType);
        ##s#0_1 := _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType);
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
        assert {:id "id446"} $Is(h#0 - 1, Tclass._System.nat());
        ##n#0_1 := h#0 - 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0_1, Tclass._System.nat(), $Heap);
        assume _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
          h#0 - 1);
        assume _module.Tree.Node_q($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)
           && _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
            h#0 - 1);
        assert {:id "id447"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
            h#0 - 1)
           ==> _module.__default.LowerThan($LS($LZ), 
              _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
              h#0 - 1)
             || (_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
               ==> Lit(true));
        assert {:id "id448"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
            h#0 - 1)
           ==> _module.__default.LowerThan($LS($LZ), 
              _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
              h#0 - 1)
             || (!_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
               ==> (var tail#0_1 := _module.Stream.tail(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)); 
                (var t#0_0 := $Unbox(_module.Stream.head(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))): DatatypeType; 
                  LitInt(1) <= h#0 - 1)));
        assert {:id "id449"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
            h#0 - 1)
           ==> _module.__default.LowerThan($LS($LZ), 
              _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
              h#0 - 1)
             || (!_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
               ==> (var tail#0_1 := _module.Stream.tail(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)); 
                (var t#0_0 := $Unbox(_module.Stream.head(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))): DatatypeType; 
                  _module.__default.LowerThan($LS($LS($LZ)), _module.Tree.children(t#0_0), h#0 - 1 - 1))));
        assert {:id "id450"} {:subsumption 0} _module.__default.LowerThan#canCall(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
            h#0 - 1)
           ==> _module.__default.LowerThan($LS($LZ), 
              _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
              h#0 - 1)
             || (!_module.Stream.Nil_q(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))
               ==> (var tail#0_1 := _module.Stream.tail(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType)); 
                (var t#0_0 := $Unbox(_module.Stream.head(_module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType))): DatatypeType; 
                  _module.__default.LowerThan($LS($LS($LZ)), tail#0_1, h#0 - 1))));
        assume {:id "id451"} _module.__default.LowerThan($LS($LZ), 
          _module.Tree.children($Unbox(_module.Stream.head(ch#0_0)): DatatypeType), 
          h#0 - 1);
    }
    else
    {
        assume false;
    }
}



// function declaration for _module._default.InfinitePath
function _module.__default.InfinitePath($ly: LayerType, r#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfinitePath (revealed)
axiom {:id "id452"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, r#0: DatatypeType :: 
    { _module.__default.InfinitePath($LS($ly), r#0) } 
    _module.__default.InfinitePath#canCall(r#0)
         || (2 < $FunctionContextHeight
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (!_module.CoOption.None_q(r#0)
           ==> (var num#1 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
            _module.__default.InfinitePath_k#canCall(num#1)))
         && _module.__default.InfinitePath($LS($ly), r#0)
           == (if _module.CoOption.None_q(r#0)
             then false
             else (var num#0 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
              _module.__default.InfinitePath_k($ly, num#0))));
}

function _module.__default.InfinitePath#canCall(r#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, r#0: DatatypeType :: 
  { _module.__default.InfinitePath($LS($ly), r#0) } 
  _module.__default.InfinitePath($LS($ly), r#0)
     == _module.__default.InfinitePath($ly, r#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, r#0: DatatypeType :: 
  { _module.__default.InfinitePath(AsFuelBottom($ly), r#0) } 
  _module.__default.InfinitePath($ly, r#0)
     == _module.__default.InfinitePath($LZ, r#0));

function Tclass._module.Number() : Ty
uses {
// Tclass._module.Number Tag
axiom Tag(Tclass._module.Number()) == Tagclass._module.Number
   && TagFamily(Tclass._module.Number()) == tytagFamily$Number;
}

const unique Tagclass._module.Number: TyTag;

// Box/unbox axiom for Tclass._module.Number
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Number()) } 
  $IsBox(bx, Tclass._module.Number())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Number()));

function Tclass._module.CoOption(Ty) : Ty;

const unique Tagclass._module.CoOption: TyTag;

// Tclass._module.CoOption Tag
axiom (forall _module.CoOption$T: Ty :: 
  { Tclass._module.CoOption(_module.CoOption$T) } 
  Tag(Tclass._module.CoOption(_module.CoOption$T)) == Tagclass._module.CoOption
     && TagFamily(Tclass._module.CoOption(_module.CoOption$T)) == tytagFamily$CoOption);

function Tclass._module.CoOption_0(Ty) : Ty;

// Tclass._module.CoOption injectivity 0
axiom (forall _module.CoOption$T: Ty :: 
  { Tclass._module.CoOption(_module.CoOption$T) } 
  Tclass._module.CoOption_0(Tclass._module.CoOption(_module.CoOption$T))
     == _module.CoOption$T);

// Box/unbox axiom for Tclass._module.CoOption
axiom (forall _module.CoOption$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CoOption(_module.CoOption$T)) } 
  $IsBox(bx, Tclass._module.CoOption(_module.CoOption$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.CoOption(_module.CoOption$T)));

function _module.__default.InfinitePath#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.InfinitePath
axiom (forall $ly: LayerType, r#0: DatatypeType :: 
  { _module.__default.InfinitePath#requires($ly, r#0) } 
  $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
     ==> _module.__default.InfinitePath#requires($ly, r#0) == true);

// 1st prefix predicate axiom for _module.__default.InfinitePath_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, r#0: DatatypeType :: 
    { _module.__default.InfinitePath($LS($ly), r#0) } 
    $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && _module.__default.InfinitePath($LS($ly), r#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.InfinitePath_h($LS($ly), _k#0, r#0) } 
        _module.__default.InfinitePath_h($LS($ly), _k#0, r#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, r#0: DatatypeType :: 
    { _module.__default.InfinitePath($LS($ly), r#0) } 
    $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && (forall _k#0: Box :: 
          { _module.__default.InfinitePath_h($LS($ly), _k#0, r#0) } 
          _module.__default.InfinitePath_h($LS($ly), _k#0, r#0))
       ==> _module.__default.InfinitePath($LS($ly), r#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, r#0: DatatypeType, _k#0: Box :: 
    { _module.__default.InfinitePath_h($ly, _k#0, r#0) } 
    $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.InfinitePath_h($ly, _k#0, r#0));

procedure {:verboseName "InfinitePath (well-formedness)"} CheckWellformed$$_module.__default.InfinitePath(r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.InfinitePath#
function _module.__default.InfinitePath_h($ly: LayerType, _k#0: Box, r#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfinitePath_h (revealed)
axiom {:id "id457"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, r#0: DatatypeType :: 
    { _module.__default.InfinitePath_h($LS($ly), _k#0, r#0) } 
    _module.__default.InfinitePath_h#canCall(_k#0, r#0)
         || (3 < $FunctionContextHeight
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.CoOption.None_q(r#0)
           ==> (var num#3 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
            _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), num#3)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.CoOption.None_q(r#0)
             then false
             else (var num#4 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
              _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), num#4))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.InfinitePath_h($ly, _k'#0, r#0) } 
            ORD#Less(_k'#0, _k#0) ==> _module.__default.InfinitePath_h#canCall(_k'#0, r#0)))
         && _module.__default.InfinitePath_h($LS($ly), _k#0, r#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.CoOption.None_q(r#0)
                 then false
                 else (var num#2 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
                  _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), num#2))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.InfinitePath_h($ly, _k'#0, r#0) } 
                ORD#Less(_k'#0, _k#0) ==> _module.__default.InfinitePath_h($ly, _k'#0, r#0)))));
// definition axiom for _module.__default.InfinitePath_h for decreasing-related literals (revealed)
axiom {:id "id458"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, r#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfinitePath_h($LS($ly), Lit(_k#0), r#0) } 
    _module.__default.InfinitePath_h#canCall(Lit(_k#0), r#0)
         || (3 < $FunctionContextHeight
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.CoOption.None_q(r#0)
           ==> (var num#6 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
            _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), num#6)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.CoOption.None_q(r#0)
             then false
             else (var num#7 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
              _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), num#7))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.InfinitePath_h($LS($ly), _k'#1, r#0) } 
            ORD#Less(_k'#1, _k#0) ==> _module.__default.InfinitePath_h#canCall(_k'#1, r#0)))
         && _module.__default.InfinitePath_h($LS($ly), Lit(_k#0), r#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.CoOption.None_q(r#0)
                 then false
                 else (var num#5 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
                  _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), num#5))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.InfinitePath_h($LS($ly), _k'#1, r#0) } 
                ORD#Less(_k'#1, _k#0) ==> _module.__default.InfinitePath_h($LS($ly), _k'#1, r#0)))));
// definition axiom for _module.__default.InfinitePath_h for all literals (revealed)
axiom {:id "id459"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, r#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfinitePath_h($LS($ly), Lit(_k#0), Lit(r#0)) } 
    _module.__default.InfinitePath_h#canCall(Lit(_k#0), Lit(r#0))
         || (3 < $FunctionContextHeight
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.CoOption.None_q(Lit(r#0)))
           ==> (var num#9 := Lit($Unbox(_module.CoOption.get(Lit(r#0))): DatatypeType); 
            _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), num#9)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.CoOption.None_q(Lit(r#0))
             then false
             else (var num#10 := Lit($Unbox(_module.CoOption.get(Lit(r#0))): DatatypeType); 
              _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), num#10))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.InfinitePath_h($LS($ly), _k'#2, r#0) } 
            ORD#Less(_k'#2, _k#0) ==> _module.__default.InfinitePath_h#canCall(_k'#2, r#0)))
         && _module.__default.InfinitePath_h($LS($ly), Lit(_k#0), Lit(r#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.CoOption.None_q(Lit(r#0))
                 then false
                 else (var num#8 := Lit($Unbox(_module.CoOption.get(Lit(r#0))): DatatypeType); 
                  _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), num#8))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.InfinitePath_h($LS($ly), _k'#2, r#0) } 
                ORD#Less(_k'#2, _k#0) ==> _module.__default.InfinitePath_h($LS($ly), _k'#2, r#0)))));
}

function _module.__default.InfinitePath_h#canCall(_k#0: Box, r#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, r#0: DatatypeType :: 
  { _module.__default.InfinitePath_h($LS($ly), _k#0, r#0) } 
  _module.__default.InfinitePath_h($LS($ly), _k#0, r#0)
     == _module.__default.InfinitePath_h($ly, _k#0, r#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, r#0: DatatypeType :: 
  { _module.__default.InfinitePath_h(AsFuelBottom($ly), _k#0, r#0) } 
  _module.__default.InfinitePath_h($ly, _k#0, r#0)
     == _module.__default.InfinitePath_h($LZ, _k#0, r#0));

function _module.__default.InfinitePath_h#requires(LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.InfinitePath_h
axiom (forall $ly: LayerType, _k#0: Box, r#0: DatatypeType :: 
  { _module.__default.InfinitePath_h#requires($ly, _k#0, r#0) } 
  $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
     ==> _module.__default.InfinitePath_h#requires($ly, _k#0, r#0) == true);

// function declaration for _module._default.InfinitePath'
function _module.__default.InfinitePath_k($ly: LayerType, num#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfinitePath_k (revealed)
axiom {:id "id460"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, num#0: DatatypeType :: 
    { _module.__default.InfinitePath_k($LS($ly), num#0) } 
    _module.__default.InfinitePath_k#canCall(num#0)
         || (2 < $FunctionContextHeight && $Is(num#0, Tclass._module.Number()))
       ==> (_module.Number.Succ_q(num#0)
           ==> (var next#1 := _module.Number._h4(num#0); 
            _module.__default.InfinitePath_k#canCall(next#1)))
         && (!_module.Number.Succ_q(num#0)
           ==> (var r#1 := _module.Number._h5(num#0); 
            _module.__default.InfinitePath#canCall(r#1)))
         && _module.__default.InfinitePath_k($LS($ly), num#0)
           == (if _module.Number.Succ_q(num#0)
             then (var next#0 := _module.Number._h4(num#0); 
              _module.__default.InfinitePath_k($ly, next#0))
             else (var r#0 := _module.Number._h5(num#0); _module.__default.InfinitePath($ly, r#0))));
}

function _module.__default.InfinitePath_k#canCall(num#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, num#0: DatatypeType :: 
  { _module.__default.InfinitePath_k($LS($ly), num#0) } 
  _module.__default.InfinitePath_k($LS($ly), num#0)
     == _module.__default.InfinitePath_k($ly, num#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, num#0: DatatypeType :: 
  { _module.__default.InfinitePath_k(AsFuelBottom($ly), num#0) } 
  _module.__default.InfinitePath_k($ly, num#0)
     == _module.__default.InfinitePath_k($LZ, num#0));

function _module.__default.InfinitePath_k#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.InfinitePath_k
axiom (forall $ly: LayerType, num#0: DatatypeType :: 
  { _module.__default.InfinitePath_k#requires($ly, num#0) } 
  $Is(num#0, Tclass._module.Number())
     ==> _module.__default.InfinitePath_k#requires($ly, num#0) == true);

// 1st prefix predicate axiom for _module.__default.InfinitePath_k_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, num#0: DatatypeType :: 
    { _module.__default.InfinitePath_k($LS($ly), num#0) } 
    $Is(num#0, Tclass._module.Number())
         && _module.__default.InfinitePath_k($LS($ly), num#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0) } 
        _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, num#0: DatatypeType :: 
    { _module.__default.InfinitePath_k($LS($ly), num#0) } 
    $Is(num#0, Tclass._module.Number())
         && (forall _k#0: Box :: 
          { _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0) } 
          _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0))
       ==> _module.__default.InfinitePath_k($LS($ly), num#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, num#0: DatatypeType, _k#0: Box :: 
    { _module.__default.InfinitePath_k_h($ly, _k#0, num#0) } 
    $Is(num#0, Tclass._module.Number()) && _k#0 == ORD#FromNat(0)
       ==> _module.__default.InfinitePath_k_h($ly, _k#0, num#0));

procedure {:verboseName "InfinitePath' (well-formedness)"} CheckWellformed$$_module.__default.InfinitePath_k(num#0: DatatypeType where $Is(num#0, Tclass._module.Number()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.InfinitePath'#
function _module.__default.InfinitePath_k_h($ly: LayerType, _k#0: Box, num#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.InfinitePath_k_h (revealed)
axiom {:id "id467"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, num#0: DatatypeType :: 
    { _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0) } 
    _module.__default.InfinitePath_k_h#canCall(_k#0, num#0)
         || (3 < $FunctionContextHeight && $Is(num#0, Tclass._module.Number()))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.Number.Succ_q(num#0)
               ==> (var next#3 := _module.Number._h4(num#0); 
                _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), next#3)))
             && (!_module.Number.Succ_q(num#0)
               ==> (var r#3 := _module.Number._h5(num#0); 
                _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), r#3))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Number.Succ_q(num#0)
             then (var next#4 := _module.Number._h4(num#0); 
              _module.__default.InfinitePath_k_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), next#4))
             else (var r#4 := _module.Number._h5(num#0); 
              _module.__default.InfinitePath_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), r#4))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.InfinitePath_k_h($ly, _k'#0, num#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.InfinitePath_k_h#canCall(_k'#0, num#0)))
         && _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Number.Succ_q(num#0)
                 then (var next#2 := _module.Number._h4(num#0); 
                  _module.__default.InfinitePath_k_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), next#2))
                 else (var r#2 := _module.Number._h5(num#0); 
                  _module.__default.InfinitePath_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), r#2))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.InfinitePath_k_h($ly, _k'#0, num#0) } 
                ORD#Less(_k'#0, _k#0) ==> _module.__default.InfinitePath_k_h($ly, _k'#0, num#0)))));
// definition axiom for _module.__default.InfinitePath_k_h for decreasing-related literals (revealed)
axiom {:id "id468"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, num#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfinitePath_k_h($LS($ly), Lit(_k#0), num#0) } 
    _module.__default.InfinitePath_k_h#canCall(Lit(_k#0), num#0)
         || (3 < $FunctionContextHeight && $Is(num#0, Tclass._module.Number()))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.Number.Succ_q(num#0)
               ==> (var next#6 := _module.Number._h4(num#0); 
                _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), next#6)))
             && (!_module.Number.Succ_q(num#0)
               ==> (var r#6 := _module.Number._h5(num#0); 
                _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), r#6))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Number.Succ_q(num#0)
             then (var next#7 := _module.Number._h4(num#0); 
              _module.__default.InfinitePath_k_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), next#7))
             else (var r#7 := _module.Number._h5(num#0); 
              _module.__default.InfinitePath_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), r#7))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.InfinitePath_k_h($LS($ly), _k'#1, num#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.InfinitePath_k_h#canCall(_k'#1, num#0)))
         && _module.__default.InfinitePath_k_h($LS($ly), Lit(_k#0), num#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Number.Succ_q(num#0)
                 then (var next#5 := _module.Number._h4(num#0); 
                  _module.__default.InfinitePath_k_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), next#5))
                 else (var r#5 := _module.Number._h5(num#0); 
                  _module.__default.InfinitePath_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), r#5))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.InfinitePath_k_h($LS($ly), _k'#1, num#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.InfinitePath_k_h($LS($ly), _k'#1, num#0)))));
// definition axiom for _module.__default.InfinitePath_k_h for all literals (revealed)
axiom {:id "id469"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, num#0: DatatypeType :: 
    {:weight 3} { _module.__default.InfinitePath_k_h($LS($ly), Lit(_k#0), Lit(num#0)) } 
    _module.__default.InfinitePath_k_h#canCall(Lit(_k#0), Lit(num#0))
         || (3 < $FunctionContextHeight && $Is(num#0, Tclass._module.Number()))
       ==> (0 < ORD#Offset(_k#0)
           ==> (Lit(_module.Number.Succ_q(Lit(num#0)))
               ==> (var next#9 := Lit(_module.Number._h4(Lit(num#0))); 
                _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), next#9)))
             && (!Lit(_module.Number.Succ_q(Lit(num#0)))
               ==> (var r#9 := Lit(_module.Number._h5(Lit(num#0))); 
                _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), r#9))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Number.Succ_q(Lit(num#0))
             then (var next#10 := Lit(_module.Number._h4(Lit(num#0))); 
              _module.__default.InfinitePath_k_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), next#10))
             else (var r#10 := Lit(_module.Number._h5(Lit(num#0))); 
              _module.__default.InfinitePath_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), r#10))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.InfinitePath_k_h($LS($ly), _k'#2, num#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.InfinitePath_k_h#canCall(_k'#2, num#0)))
         && _module.__default.InfinitePath_k_h($LS($ly), Lit(_k#0), Lit(num#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Number.Succ_q(Lit(num#0))
                 then (var next#8 := Lit(_module.Number._h4(Lit(num#0))); 
                  _module.__default.InfinitePath_k_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), next#8))
                 else (var r#8 := Lit(_module.Number._h5(Lit(num#0))); 
                  _module.__default.InfinitePath_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), r#8))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.InfinitePath_k_h($LS($ly), _k'#2, num#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.InfinitePath_k_h($LS($ly), _k'#2, num#0)))));
}

function _module.__default.InfinitePath_k_h#canCall(_k#0: Box, num#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, num#0: DatatypeType :: 
  { _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0) } 
  _module.__default.InfinitePath_k_h($LS($ly), _k#0, num#0)
     == _module.__default.InfinitePath_k_h($ly, _k#0, num#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, num#0: DatatypeType :: 
  { _module.__default.InfinitePath_k_h(AsFuelBottom($ly), _k#0, num#0) } 
  _module.__default.InfinitePath_k_h($ly, _k#0, num#0)
     == _module.__default.InfinitePath_k_h($LZ, _k#0, num#0));

function _module.__default.InfinitePath_k_h#requires(LayerType, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.InfinitePath_k_h
axiom (forall $ly: LayerType, _k#0: Box, num#0: DatatypeType :: 
  { _module.__default.InfinitePath_k_h#requires($ly, _k#0, num#0) } 
  $Is(num#0, Tclass._module.Number())
     ==> _module.__default.InfinitePath_k_h#requires($ly, _k#0, num#0) == true);

// function declaration for _module._default.ValidPath_Alt
function _module.__default.ValidPath__Alt($ly: LayerType, t#0: DatatypeType, r#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.ValidPath__Alt (revealed)
axiom {:id "id470"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, r#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt($LS($ly), t#0, r#0) } 
    _module.__default.ValidPath__Alt#canCall(t#0, r#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (_module.CoOption.None_q(r#0) ==> $IsA#_module.Tree(t#0))
         && (!_module.CoOption.None_q(r#0)
           ==> (var num#1 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
            _module.Tree.Node_q(t#0)
               && _module.__default.ValidPath__Alt_k#canCall(_module.Tree.children(t#0), num#1)))
         && _module.__default.ValidPath__Alt($LS($ly), t#0, r#0)
           == (if _module.CoOption.None_q(r#0)
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var num#0 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
              _module.__default.ValidPath__Alt_k($ly, _module.Tree.children(t#0), num#0))));
}

function _module.__default.ValidPath__Alt#canCall(t#0: DatatypeType, r#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt($LS($ly), t#0, r#0) } 
  _module.__default.ValidPath__Alt($LS($ly), t#0, r#0)
     == _module.__default.ValidPath__Alt($ly, t#0, r#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt(AsFuelBottom($ly), t#0, r#0) } 
  _module.__default.ValidPath__Alt($ly, t#0, r#0)
     == _module.__default.ValidPath__Alt($LZ, t#0, r#0));

function _module.__default.ValidPath__Alt#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ValidPath__Alt
axiom (forall $ly: LayerType, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt#requires($ly, t#0, r#0) } 
  $Is(t#0, Tclass._module.Tree())
       && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
     ==> _module.__default.ValidPath__Alt#requires($ly, t#0, r#0) == true);

// 1st prefix predicate axiom for _module.__default.ValidPath__Alt_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, r#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt($LS($ly), t#0, r#0) } 
    $Is(t#0, Tclass._module.Tree())
         && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && _module.__default.ValidPath__Alt($LS($ly), t#0, r#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0) } 
        _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, r#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt($LS($ly), t#0, r#0) } 
    $Is(t#0, Tclass._module.Tree())
         && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && (forall _k#0: Box :: 
          { _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0) } 
          _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0))
       ==> _module.__default.ValidPath__Alt($LS($ly), t#0, r#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType, r#0: DatatypeType, _k#0: Box :: 
    { _module.__default.ValidPath__Alt_h($ly, _k#0, t#0, r#0) } 
    $Is(t#0, Tclass._module.Tree())
         && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.ValidPath__Alt_h($ly, _k#0, t#0, r#0));

procedure {:verboseName "ValidPath_Alt (well-formedness)"} CheckWellformed$$_module.__default.ValidPath__Alt(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()), 
    r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.ValidPath_Alt#
function _module.__default.ValidPath__Alt_h($ly: LayerType, _k#0: Box, t#0: DatatypeType, r#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.ValidPath__Alt_h (revealed)
axiom {:id "id475"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, r#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0) } 
    _module.__default.ValidPath__Alt_h#canCall(_k#0, t#0, r#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.CoOption.None_q(r#0) ==> $IsA#_module.Tree(t#0))
             && (!_module.CoOption.None_q(r#0)
               ==> (var num#3 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
                _module.Tree.Node_q(t#0)
                   && _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#0), num#3))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.CoOption.None_q(r#0)
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var num#4 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
              _module.__default.ValidPath__Alt_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#0), num#4))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.ValidPath__Alt_h($ly, _k'#0, t#0, r#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.ValidPath__Alt_h#canCall(_k'#0, t#0, r#0)))
         && _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.CoOption.None_q(r#0)
                 then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
                 else (var num#2 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
                  _module.__default.ValidPath__Alt_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#0), num#2))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.ValidPath__Alt_h($ly, _k'#0, t#0, r#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.ValidPath__Alt_h($ly, _k'#0, t#0, r#0)))));
// definition axiom for _module.__default.ValidPath__Alt_h for decreasing-related literals (revealed)
axiom {:id "id476"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, r#0: DatatypeType :: 
    {:weight 3} { _module.__default.ValidPath__Alt_h($LS($ly), Lit(_k#0), t#0, r#0) } 
    _module.__default.ValidPath__Alt_h#canCall(Lit(_k#0), t#0, r#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.CoOption.None_q(r#0) ==> $IsA#_module.Tree(t#0))
             && (!_module.CoOption.None_q(r#0)
               ==> (var num#6 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
                _module.Tree.Node_q(t#0)
                   && _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#0), num#6))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.CoOption.None_q(r#0)
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var num#7 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
              _module.__default.ValidPath__Alt_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#0), num#7))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.ValidPath__Alt_h($LS($ly), _k'#1, t#0, r#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.ValidPath__Alt_h#canCall(_k'#1, t#0, r#0)))
         && _module.__default.ValidPath__Alt_h($LS($ly), Lit(_k#0), t#0, r#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.CoOption.None_q(r#0)
                 then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
                 else (var num#5 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
                  _module.__default.ValidPath__Alt_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#0), num#5))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.ValidPath__Alt_h($LS($ly), _k'#1, t#0, r#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.ValidPath__Alt_h($LS($ly), _k'#1, t#0, r#0)))));
// definition axiom for _module.__default.ValidPath__Alt_h for all literals (revealed)
axiom {:id "id477"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, r#0: DatatypeType :: 
    {:weight 3} { _module.__default.ValidPath__Alt_h($LS($ly), Lit(_k#0), Lit(t#0), Lit(r#0)) } 
    _module.__default.ValidPath__Alt_h#canCall(Lit(_k#0), Lit(t#0), Lit(r#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Tree())
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (0 < ORD#Offset(_k#0)
           ==> (Lit(_module.CoOption.None_q(Lit(r#0))) ==> $IsA#_module.Tree(Lit(t#0)))
             && (!Lit(_module.CoOption.None_q(Lit(r#0)))
               ==> (var num#9 := Lit($Unbox(_module.CoOption.get(Lit(r#0))): DatatypeType); 
                _module.Tree.Node_q(Lit(t#0))
                   && _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Tree.children(Lit(t#0))), num#9))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.CoOption.None_q(Lit(r#0))
             then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
             else (var num#10 := Lit($Unbox(_module.CoOption.get(Lit(r#0))): DatatypeType); 
              _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                Lit(_module.Tree.children(Lit(t#0))), 
                num#10))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.ValidPath__Alt_h($LS($ly), _k'#2, t#0, r#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.ValidPath__Alt_h#canCall(_k'#2, t#0, r#0)))
         && _module.__default.ValidPath__Alt_h($LS($ly), Lit(_k#0), Lit(t#0), Lit(r#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.CoOption.None_q(Lit(r#0))
                 then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
                 else (var num#8 := Lit($Unbox(_module.CoOption.get(Lit(r#0))): DatatypeType); 
                  _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit(_module.Tree.children(Lit(t#0))), 
                    num#8))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.ValidPath__Alt_h($LS($ly), _k'#2, t#0, r#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.ValidPath__Alt_h($LS($ly), _k'#2, t#0, r#0)))));
}

function _module.__default.ValidPath__Alt_h#canCall(_k#0: Box, t#0: DatatypeType, r#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0) } 
  _module.__default.ValidPath__Alt_h($LS($ly), _k#0, t#0, r#0)
     == _module.__default.ValidPath__Alt_h($ly, _k#0, t#0, r#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_h(AsFuelBottom($ly), _k#0, t#0, r#0) } 
  _module.__default.ValidPath__Alt_h($ly, _k#0, t#0, r#0)
     == _module.__default.ValidPath__Alt_h($LZ, _k#0, t#0, r#0));

function _module.__default.ValidPath__Alt_h#requires(LayerType, Box, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ValidPath__Alt_h
axiom (forall $ly: LayerType, _k#0: Box, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_h#requires($ly, _k#0, t#0, r#0) } 
  $Is(t#0, Tclass._module.Tree())
       && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
     ==> _module.__default.ValidPath__Alt_h#requires($ly, _k#0, t#0, r#0) == true);

// function declaration for _module._default.ValidPath_Alt'
function _module.__default.ValidPath__Alt_k($ly: LayerType, s#0: DatatypeType, num#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.ValidPath__Alt_k (revealed)
axiom {:id "id478"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, num#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0) } 
    _module.__default.ValidPath__Alt_k#canCall(s#0, num#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && $Is(num#0, Tclass._module.Number()))
       ==> (_module.Number.Succ_q(num#0)
           ==> (var next#1 := _module.Number._h4(num#0); 
            _module.Stream.Cons_q(s#0)
               ==> _module.__default.ValidPath__Alt_k#canCall(_module.Stream.tail(s#0), next#1)))
         && (!_module.Number.Succ_q(num#0)
           ==> (var r#1 := _module.Number._h5(num#0); 
            _module.Stream.Cons_q(s#0)
               ==> _module.__default.ValidPath__Alt#canCall($Unbox(_module.Stream.head(s#0)): DatatypeType, r#1)))
         && _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0)
           == (if _module.Number.Succ_q(num#0)
             then (var next#0 := _module.Number._h4(num#0); 
              _module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt_k($ly, _module.Stream.tail(s#0), next#0))
             else (var r#0 := _module.Number._h5(num#0); 
              _module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt($ly, $Unbox(_module.Stream.head(s#0)): DatatypeType, r#0))));
}

function _module.__default.ValidPath__Alt_k#canCall(s#0: DatatypeType, num#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, num#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0) } 
  _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0)
     == _module.__default.ValidPath__Alt_k($ly, s#0, num#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, num#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_k(AsFuelBottom($ly), s#0, num#0) } 
  _module.__default.ValidPath__Alt_k($ly, s#0, num#0)
     == _module.__default.ValidPath__Alt_k($LZ, s#0, num#0));

function _module.__default.ValidPath__Alt_k#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ValidPath__Alt_k
axiom (forall $ly: LayerType, s#0: DatatypeType, num#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_k#requires($ly, s#0, num#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
       && $Is(num#0, Tclass._module.Number())
     ==> _module.__default.ValidPath__Alt_k#requires($ly, s#0, num#0) == true);

// 1st prefix predicate axiom for _module.__default.ValidPath__Alt_k_h
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, num#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $Is(num#0, Tclass._module.Number())
         && _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0) } 
        _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0)));

// 2nd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, num#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $Is(num#0, Tclass._module.Number())
         && (forall _k#0: Box :: 
          { _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0) } 
          _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0))
       ==> _module.__default.ValidPath__Alt_k($LS($ly), s#0, num#0));

// 3rd prefix predicate axiom
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, num#0: DatatypeType, _k#0: Box :: 
    { _module.__default.ValidPath__Alt_k_h($ly, _k#0, s#0, num#0) } 
    $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $Is(num#0, Tclass._module.Number())
         && _k#0 == ORD#FromNat(0)
       ==> _module.__default.ValidPath__Alt_k_h($ly, _k#0, s#0, num#0));

procedure {:verboseName "ValidPath_Alt' (well-formedness)"} CheckWellformed$$_module.__default.ValidPath__Alt_k(s#0: DatatypeType where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree())), 
    num#0: DatatypeType where $Is(num#0, Tclass._module.Number()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ValidPath_Alt' (well-formedness)"} CheckWellformed$$_module.__default.ValidPath__Alt_k(s#0: DatatypeType, num#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#1#0: DatatypeType;
  var r#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##t#0: DatatypeType;
  var ##r#0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var next#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##s#0: DatatypeType;
  var ##num#0: DatatypeType;


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
        if (num#0 == #_module.Number.Succ(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Number());
            havoc next#Z#0;
            assume {:id "id483"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Number());
            assume {:id "id484"} next#Z#0 == let#1#0#0;
            if (_module.Stream.Cons_q(s#0))
            {
                assert {:id "id485"} _module.Stream.Cons_q(s#0);
                ##s#0 := _module.Stream.tail(s#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##num#0 := next#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
                assume _module.__default.ValidPath__Alt_k#canCall(_module.Stream.tail(s#0), next#Z#0);
            }

            assume {:id "id486"} _module.__default.ValidPath__Alt_k($LS($LZ), s#0, num#0)
               == (_module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt_k($LS($LZ), _module.Stream.tail(s#0), next#Z#0));
            assume _module.Stream.Cons_q(s#0)
               ==> _module.__default.ValidPath__Alt_k#canCall(_module.Stream.tail(s#0), next#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ValidPath__Alt_k($LS($LZ), s#0, num#0), TBool);
            return;
        }
        else if (num#0 == #_module.Number.Zero(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.CoOption(Tclass._module.Number()));
            havoc r#Z#0;
            assume {:id "id479"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.CoOption(Tclass._module.Number()));
            assume {:id "id480"} r#Z#0 == let#0#0#0;
            if (_module.Stream.Cons_q(s#0))
            {
                assert {:id "id481"} _module.Stream.Cons_q(s#0);
                ##t#0 := $Unbox(_module.Stream.head(s#0)): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0, Tclass._module.Tree(), $Heap);
                ##r#0 := r#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt#canCall($Unbox(_module.Stream.head(s#0)): DatatypeType, r#Z#0);
            }

            assume {:id "id482"} _module.__default.ValidPath__Alt_k($LS($LZ), s#0, num#0)
               == (_module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt($LS($LZ), $Unbox(_module.Stream.head(s#0)): DatatypeType, r#Z#0));
            assume _module.Stream.Cons_q(s#0)
               ==> _module.__default.ValidPath__Alt#canCall($Unbox(_module.Stream.head(s#0)): DatatypeType, r#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ValidPath__Alt_k($LS($LZ), s#0, num#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.ValidPath_Alt'#
function _module.__default.ValidPath__Alt_k_h($ly: LayerType, _k#0: Box, s#0: DatatypeType, num#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.ValidPath__Alt_k_h (revealed)
axiom {:id "id487"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, num#0: DatatypeType :: 
    { _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0) } 
    _module.__default.ValidPath__Alt_k_h#canCall(_k#0, s#0, num#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && $Is(num#0, Tclass._module.Number()))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.Number.Succ_q(num#0)
               ==> (var next#3 := _module.Number._h4(num#0); 
                _module.Stream.Cons_q(s#0)
                   ==> _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0), next#3)))
             && (!_module.Number.Succ_q(num#0)
               ==> (var r#3 := _module.Number._h5(num#0); 
                _module.Stream.Cons_q(s#0)
                   ==> _module.__default.ValidPath__Alt_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(s#0)): DatatypeType, 
                    r#3))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Number.Succ_q(num#0)
             then (var next#4 := _module.Number._h4(num#0); 
              _module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt_k_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0), next#4))
             else (var r#4 := _module.Number._h5(num#0); 
              _module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  $Unbox(_module.Stream.head(s#0)): DatatypeType, 
                  r#4))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.ValidPath__Alt_k_h($ly, _k'#0, s#0, num#0) } 
            ORD#Less(_k'#0, _k#0)
               ==> _module.__default.ValidPath__Alt_k_h#canCall(_k'#0, s#0, num#0)))
         && _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Number.Succ_q(num#0)
                 then (var next#2 := _module.Number._h4(num#0); 
                  _module.Stream.Cons_q(s#0)
                     && _module.__default.ValidPath__Alt_k_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0), next#2))
                 else (var r#2 := _module.Number._h5(num#0); 
                  _module.Stream.Cons_q(s#0)
                     && _module.__default.ValidPath__Alt_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(s#0)): DatatypeType, 
                      r#2))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#0: Box :: 
                { _module.__default.ValidPath__Alt_k_h($ly, _k'#0, s#0, num#0) } 
                ORD#Less(_k'#0, _k#0)
                   ==> _module.__default.ValidPath__Alt_k_h($ly, _k'#0, s#0, num#0)))));
// definition axiom for _module.__default.ValidPath__Alt_k_h for decreasing-related literals (revealed)
axiom {:id "id488"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, num#0: DatatypeType :: 
    {:weight 3} { _module.__default.ValidPath__Alt_k_h($LS($ly), Lit(_k#0), s#0, num#0) } 
    _module.__default.ValidPath__Alt_k_h#canCall(Lit(_k#0), s#0, num#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && $Is(num#0, Tclass._module.Number()))
       ==> (0 < ORD#Offset(_k#0)
           ==> (_module.Number.Succ_q(num#0)
               ==> (var next#6 := _module.Number._h4(num#0); 
                _module.Stream.Cons_q(s#0)
                   ==> _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0), next#6)))
             && (!_module.Number.Succ_q(num#0)
               ==> (var r#6 := _module.Number._h5(num#0); 
                _module.Stream.Cons_q(s#0)
                   ==> _module.__default.ValidPath__Alt_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(s#0)): DatatypeType, 
                    r#6))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Number.Succ_q(num#0)
             then (var next#7 := _module.Number._h4(num#0); 
              _module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt_k_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0), next#7))
             else (var r#7 := _module.Number._h5(num#0); 
              _module.Stream.Cons_q(s#0)
                 && _module.__default.ValidPath__Alt_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  $Unbox(_module.Stream.head(s#0)): DatatypeType, 
                  r#7))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.ValidPath__Alt_k_h($LS($ly), _k'#1, s#0, num#0) } 
            ORD#Less(_k'#1, _k#0)
               ==> _module.__default.ValidPath__Alt_k_h#canCall(_k'#1, s#0, num#0)))
         && _module.__default.ValidPath__Alt_k_h($LS($ly), Lit(_k#0), s#0, num#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Number.Succ_q(num#0)
                 then (var next#5 := _module.Number._h4(num#0); 
                  _module.Stream.Cons_q(s#0)
                     && _module.__default.ValidPath__Alt_k_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Stream.tail(s#0), next#5))
                 else (var r#5 := _module.Number._h5(num#0); 
                  _module.Stream.Cons_q(s#0)
                     && _module.__default.ValidPath__Alt_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(s#0)): DatatypeType, 
                      r#5))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#1: Box :: 
                { _module.__default.ValidPath__Alt_k_h($LS($ly), _k'#1, s#0, num#0) } 
                ORD#Less(_k'#1, _k#0)
                   ==> _module.__default.ValidPath__Alt_k_h($LS($ly), _k'#1, s#0, num#0)))));
// definition axiom for _module.__default.ValidPath__Alt_k_h for all literals (revealed)
axiom {:id "id489"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, num#0: DatatypeType :: 
    {:weight 3} { _module.__default.ValidPath__Alt_k_h($LS($ly), Lit(_k#0), Lit(s#0), Lit(num#0)) } 
    _module.__default.ValidPath__Alt_k_h#canCall(Lit(_k#0), Lit(s#0), Lit(num#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
           && $Is(num#0, Tclass._module.Number()))
       ==> (0 < ORD#Offset(_k#0)
           ==> (Lit(_module.Number.Succ_q(Lit(num#0)))
               ==> (var next#9 := Lit(_module.Number._h4(Lit(num#0))); 
                Lit(_module.Stream.Cons_q(Lit(s#0)))
                   ==> _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), Lit(_module.Stream.tail(Lit(s#0))), next#9)))
             && (!Lit(_module.Number.Succ_q(Lit(num#0)))
               ==> (var r#9 := Lit(_module.Number._h5(Lit(num#0))); 
                Lit(_module.Stream.Cons_q(Lit(s#0)))
                   ==> _module.__default.ValidPath__Alt_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType), 
                    r#9))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.Number.Succ_q(Lit(num#0))
             then (var next#10 := Lit(_module.Number._h4(Lit(num#0))); 
              _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.ValidPath__Alt_k_h($LS($ly), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit(_module.Stream.tail(Lit(s#0))), 
                  next#10))
             else (var r#10 := Lit(_module.Number._h5(Lit(num#0))); 
              _module.Stream.Cons_q(Lit(s#0))
                 && _module.__default.ValidPath__Alt_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType), 
                  r#10))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.ValidPath__Alt_k_h($LS($ly), _k'#2, s#0, num#0) } 
            ORD#Less(_k'#2, _k#0)
               ==> _module.__default.ValidPath__Alt_k_h#canCall(_k'#2, s#0, num#0)))
         && _module.__default.ValidPath__Alt_k_h($LS($ly), Lit(_k#0), Lit(s#0), Lit(num#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.Number.Succ_q(Lit(num#0))
                 then (var next#8 := Lit(_module.Number._h4(Lit(num#0))); 
                  _module.Stream.Cons_q(Lit(s#0))
                     && _module.__default.ValidPath__Alt_k_h($LS($ly), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit(_module.Stream.tail(Lit(s#0))), 
                      next#8))
                 else (var r#8 := Lit(_module.Number._h5(Lit(num#0))); 
                  _module.Stream.Cons_q(Lit(s#0))
                     && _module.__default.ValidPath__Alt_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      Lit($Unbox(_module.Stream.head(Lit(s#0))): DatatypeType), 
                      r#8))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (forall _k'#2: Box :: 
                { _module.__default.ValidPath__Alt_k_h($LS($ly), _k'#2, s#0, num#0) } 
                ORD#Less(_k'#2, _k#0)
                   ==> _module.__default.ValidPath__Alt_k_h($LS($ly), _k'#2, s#0, num#0)))));
}

function _module.__default.ValidPath__Alt_k_h#canCall(_k#0: Box, s#0: DatatypeType, num#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, num#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0) } 
  _module.__default.ValidPath__Alt_k_h($LS($ly), _k#0, s#0, num#0)
     == _module.__default.ValidPath__Alt_k_h($ly, _k#0, s#0, num#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, num#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_k_h(AsFuelBottom($ly), _k#0, s#0, num#0) } 
  _module.__default.ValidPath__Alt_k_h($ly, _k#0, s#0, num#0)
     == _module.__default.ValidPath__Alt_k_h($LZ, _k#0, s#0, num#0));

function _module.__default.ValidPath__Alt_k_h#requires(LayerType, Box, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.ValidPath__Alt_k_h
axiom (forall $ly: LayerType, _k#0: Box, s#0: DatatypeType, num#0: DatatypeType :: 
  { _module.__default.ValidPath__Alt_k_h#requires($ly, _k#0, s#0, num#0) } 
  $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
       && $Is(num#0, Tclass._module.Number())
     ==> _module.__default.ValidPath__Alt_k_h#requires($ly, _k#0, s#0, num#0) == true);

// function declaration for _module._default.HasFiniteHeight_Alt
function _module.__default.HasFiniteHeight__Alt(t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.HasFiniteHeight__Alt (revealed)
axiom {:id "id490"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.HasFiniteHeight__Alt(t#0) } 
    _module.__default.HasFiniteHeight__Alt#canCall(t#0)
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (forall r#0: DatatypeType :: 
          { _module.__default.InfinitePath($LS($LZ), r#0) } 
            { _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0) } 
          $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
             ==> _module.__default.ValidPath__Alt#canCall(t#0, r#0)
               && (_module.__default.ValidPath__Alt($LS($LZ), t#0, r#0)
                 ==> _module.__default.InfinitePath#canCall(r#0)))
         && _module.__default.HasFiniteHeight__Alt(t#0)
           == (forall r#0: DatatypeType :: 
            { _module.__default.InfinitePath($LS($LZ), r#0) } 
              { _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0) } 
            $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
               ==> 
              _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0)
               ==> !_module.__default.InfinitePath($LS($LZ), r#0)));
// definition axiom for _module.__default.HasFiniteHeight__Alt for all literals (revealed)
axiom {:id "id491"} 3 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    {:weight 3} { _module.__default.HasFiniteHeight__Alt(Lit(t#0)) } 
    _module.__default.HasFiniteHeight__Alt#canCall(Lit(t#0))
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Tree()))
       ==> (forall r#1: DatatypeType :: 
          { _module.__default.InfinitePath($LS($LZ), r#1) } 
            { _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1) } 
          $Is(r#1, Tclass._module.CoOption(Tclass._module.Number()))
             ==> _module.__default.ValidPath__Alt#canCall(Lit(t#0), r#1)
               && (_module.__default.ValidPath__Alt($LS($LZ), Lit(t#0), r#1)
                 ==> _module.__default.InfinitePath#canCall(r#1)))
         && _module.__default.HasFiniteHeight__Alt(Lit(t#0))
           == (forall r#1: DatatypeType :: 
            { _module.__default.InfinitePath($LS($LZ), r#1) } 
              { _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1) } 
            $Is(r#1, Tclass._module.CoOption(Tclass._module.Number()))
               ==> 
              _module.__default.ValidPath__Alt($LS($LZ), Lit(t#0), r#1)
               ==> !_module.__default.InfinitePath($LS($LZ), r#1)));
}

function _module.__default.HasFiniteHeight__Alt#canCall(t#0: DatatypeType) : bool;

function _module.__default.HasFiniteHeight__Alt#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.HasFiniteHeight__Alt
axiom (forall t#0: DatatypeType :: 
  { _module.__default.HasFiniteHeight__Alt#requires(t#0) } 
  $Is(t#0, Tclass._module.Tree())
     ==> _module.__default.HasFiniteHeight__Alt#requires(t#0) == true);

procedure {:verboseName "HasFiniteHeight_Alt (well-formedness)"} CheckWellformed$$_module.__default.HasFiniteHeight__Alt(t#0: DatatypeType where $Is(t#0, Tclass._module.Tree()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.S2N
function _module.__default.S2N($ly: LayerType, p#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.S2N
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, p#0: DatatypeType :: 
    { _module.__default.S2N($ly, p#0) } 
    _module.__default.S2N#canCall(p#0)
         || (2 < $FunctionContextHeight && $Is(p#0, Tclass._module.Stream(TInt)))
       ==> $Is(_module.__default.S2N($ly, p#0), 
        Tclass._module.CoOption(Tclass._module.Number())));
// definition axiom for _module.__default.S2N (revealed)
axiom {:id "id493"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, p#0: DatatypeType :: 
    { _module.__default.S2N($LS($ly), p#0) } 
    _module.__default.S2N#canCall(p#0)
         || (2 < $FunctionContextHeight && $Is(p#0, Tclass._module.Stream(TInt)))
       ==> (!_module.Stream.Nil_q(p#0)
           ==> (var tail#1 := _module.Stream.tail(p#0); 
            (var n#1 := $Unbox(_module.Stream.head(p#0)): int; 
              _module.__default.S2N_k#canCall((if n#1 < 0 then 0 else n#1), tail#1))))
         && _module.__default.S2N($LS($ly), p#0)
           == (if _module.Stream.Nil_q(p#0)
             then #_module.CoOption.None()
             else (var tail#0 := _module.Stream.tail(p#0); 
              (var n#0 := $Unbox(_module.Stream.head(p#0)): int; 
                #_module.CoOption.Some($Box(_module.__default.S2N_k($ly, (if n#0 < 0 then 0 else n#0), tail#0)))))));
}

function _module.__default.S2N#canCall(p#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, p#0: DatatypeType :: 
  { _module.__default.S2N($LS($ly), p#0) } 
  _module.__default.S2N($LS($ly), p#0) == _module.__default.S2N($ly, p#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, p#0: DatatypeType :: 
  { _module.__default.S2N(AsFuelBottom($ly), p#0) } 
  _module.__default.S2N($ly, p#0) == _module.__default.S2N($LZ, p#0));

function _module.__default.S2N#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.S2N
axiom (forall $ly: LayerType, p#0: DatatypeType :: 
  { _module.__default.S2N#requires($ly, p#0) } 
  $Is(p#0, Tclass._module.Stream(TInt))
     ==> _module.__default.S2N#requires($ly, p#0) == true);

procedure {:verboseName "S2N (well-formedness)"} CheckWellformed$$_module.__default.S2N(p#0: DatatypeType where $Is(p#0, Tclass._module.Stream(TInt)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "S2N (well-formedness)"} CheckWellformed$$_module.__default.S2N(p#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var n#Z#0: int;
  var let#1#0#0: int;
  var ##n#0: int;
  var ##tail#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.S2N($LS($LZ), p#0), 
          Tclass._module.CoOption(Tclass._module.Number()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (p#0 == #_module.Stream.Nil())
        {
            assume {:id "id501"} _module.__default.S2N($LS($LZ), p#0) == Lit(#_module.CoOption.None());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.S2N($LS($LZ), p#0), 
              Tclass._module.CoOption(Tclass._module.Number()));
            return;
        }
        else if (p#0 == #_module.Stream.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.Stream(TInt));
            havoc tail#Z#0;
            assume {:id "id494"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Stream(TInt));
            assume {:id "id495"} tail#Z#0 == let#0#0#0;
            havoc n#Z#0;
            assume {:id "id496"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id497"} n#Z#0 == let#1#0#0;
            if (n#Z#0 < 0)
            {
                assert {:id "id498"} $Is(LitInt(0), Tclass._System.nat());
            }
            else
            {
                assert {:id "id499"} $Is(n#Z#0, Tclass._System.nat());
            }

            ##n#0 := (if n#Z#0 < 0 then 0 else n#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##tail#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##tail#0, Tclass._module.Stream(TInt), $Heap);
            assume _module.__default.S2N_k#canCall((if n#Z#0 < 0 then 0 else n#Z#0), tail#Z#0);
            assume {:id "id500"} _module.__default.S2N($LS($LZ), p#0)
               == #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#Z#0 < 0 then 0 else n#Z#0), tail#Z#0)));
            assume _module.__default.S2N_k#canCall((if n#Z#0 < 0 then 0 else n#Z#0), tail#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.S2N($LS($LZ), p#0), 
              Tclass._module.CoOption(Tclass._module.Number()));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.S2N'
function _module.__default.S2N_k($ly: LayerType, n#0: int, tail#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.S2N_k
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, tail#0: DatatypeType :: 
    { _module.__default.S2N_k($ly, n#0, tail#0) } 
    _module.__default.S2N_k#canCall(n#0, tail#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(tail#0, Tclass._module.Stream(TInt)))
       ==> $Is(_module.__default.S2N_k($ly, n#0, tail#0), Tclass._module.Number()));
// definition axiom for _module.__default.S2N_k (revealed)
axiom {:id "id502"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, tail#0: DatatypeType :: 
    { _module.__default.S2N_k($LS($ly), n#0, tail#0) } 
    _module.__default.S2N_k#canCall(n#0, tail#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(tail#0, Tclass._module.Stream(TInt)))
       ==> (n#0 <= LitInt(0) ==> _module.__default.S2N#canCall(tail#0))
         && (LitInt(0) < n#0 ==> _module.__default.S2N_k#canCall(n#0 - 1, tail#0))
         && _module.__default.S2N_k($LS($ly), n#0, tail#0)
           == (if n#0 <= LitInt(0)
             then #_module.Number.Zero(_module.__default.S2N($ly, tail#0))
             else #_module.Number.Succ(_module.__default.S2N_k($ly, n#0 - 1, tail#0))));
}

function _module.__default.S2N_k#canCall(n#0: int, tail#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, tail#0: DatatypeType :: 
  { _module.__default.S2N_k($LS($ly), n#0, tail#0) } 
  _module.__default.S2N_k($LS($ly), n#0, tail#0)
     == _module.__default.S2N_k($ly, n#0, tail#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, tail#0: DatatypeType :: 
  { _module.__default.S2N_k(AsFuelBottom($ly), n#0, tail#0) } 
  _module.__default.S2N_k($ly, n#0, tail#0)
     == _module.__default.S2N_k($LZ, n#0, tail#0));

function _module.__default.S2N_k#requires(LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.S2N_k
axiom (forall $ly: LayerType, n#0: int, tail#0: DatatypeType :: 
  { _module.__default.S2N_k#requires($ly, n#0, tail#0) } 
  LitInt(0) <= n#0 && $Is(tail#0, Tclass._module.Stream(TInt))
     ==> _module.__default.S2N_k#requires($ly, n#0, tail#0) == true);

procedure {:verboseName "S2N' (well-formedness)"} CheckWellformed$$_module.__default.S2N_k(n#0: int where LitInt(0) <= n#0, 
    tail#0: DatatypeType where $Is(tail#0, Tclass._module.Stream(TInt)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "S2N' (well-formedness)"} CheckWellformed$$_module.__default.S2N_k(n#0: int, tail#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##p#0: DatatypeType;
  var ##n#0: int;
  var ##tail#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.S2N_k($LS($LZ), n#0, tail#0), Tclass._module.Number());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 <= LitInt(0))
        {
            ##p#0 := tail#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##p#0, Tclass._module.Stream(TInt), $Heap);
            assert {:id "id503"} 0 <= LitInt(1) || LitInt(0) == LitInt(1);
            assert {:id "id504"} 0 <= n#0 + 1 || LitInt(0) < LitInt(1) || LitInt(0) == n#0 + 1;
            assert {:id "id505"} LitInt(0) < LitInt(1) || (LitInt(0) == LitInt(1) && LitInt(0) < n#0 + 1);
            assume _module.__default.S2N#canCall(tail#0);
            assume {:id "id506"} _module.__default.S2N_k($LS($LZ), n#0, tail#0)
               == #_module.Number.Zero(_module.__default.S2N($LS($LZ), tail#0));
            assume _module.__default.S2N#canCall(tail#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.S2N_k($LS($LZ), n#0, tail#0), Tclass._module.Number());
            return;
        }
        else
        {
            assert {:id "id507"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##tail#0 := tail#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##tail#0, Tclass._module.Stream(TInt), $Heap);
            assert {:id "id508"} 0 <= LitInt(1) || LitInt(1) == LitInt(1);
            assert {:id "id509"} 0 <= n#0 + 1 || LitInt(1) < LitInt(1) || ##n#0 + 1 == n#0 + 1;
            assert {:id "id510"} LitInt(1) < LitInt(1) || (LitInt(1) == LitInt(1) && ##n#0 + 1 < n#0 + 1);
            assume _module.__default.S2N_k#canCall(n#0 - 1, tail#0);
            assume {:id "id511"} _module.__default.S2N_k($LS($LZ), n#0, tail#0)
               == #_module.Number.Succ(_module.__default.S2N_k($LS($LZ), n#0 - 1, tail#0));
            assume _module.__default.S2N_k#canCall(n#0 - 1, tail#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.S2N_k($LS($LZ), n#0, tail#0), Tclass._module.Number());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.N2S
function _module.__default.N2S($ly: LayerType, r#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.N2S
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, r#0: DatatypeType :: 
    { _module.__default.N2S($ly, r#0) } 
    _module.__default.N2S#canCall(r#0)
         || (2 < $FunctionContextHeight
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> $Is(_module.__default.N2S($ly, r#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.N2S (revealed)
axiom {:id "id512"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, r#0: DatatypeType :: 
    { _module.__default.N2S($LS($ly), r#0) } 
    _module.__default.N2S#canCall(r#0)
         || (2 < $FunctionContextHeight
           && $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())))
       ==> (!_module.CoOption.None_q(r#0)
           ==> (var num#1 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
            _module.__default.N2S_k#canCall(LitInt(0), num#1)))
         && _module.__default.N2S($LS($ly), r#0)
           == (if _module.CoOption.None_q(r#0)
             then #_module.Stream.Nil()
             else (var num#0 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
              _module.__default.N2S_k($ly, LitInt(0), num#0))));
}

function _module.__default.N2S#canCall(r#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, r#0: DatatypeType :: 
  { _module.__default.N2S($LS($ly), r#0) } 
  _module.__default.N2S($LS($ly), r#0) == _module.__default.N2S($ly, r#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, r#0: DatatypeType :: 
  { _module.__default.N2S(AsFuelBottom($ly), r#0) } 
  _module.__default.N2S($ly, r#0) == _module.__default.N2S($LZ, r#0));

function _module.__default.N2S#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.N2S
axiom (forall $ly: LayerType, r#0: DatatypeType :: 
  { _module.__default.N2S#requires($ly, r#0) } 
  $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
     ==> _module.__default.N2S#requires($ly, r#0) == true);

procedure {:verboseName "N2S (well-formedness)"} CheckWellformed$$_module.__default.N2S(r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N2S (well-formedness)"} CheckWellformed$$_module.__default.N2S(r#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var num#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##n#0: int;
  var ##num#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.N2S($LS($LZ), r#0), Tclass._module.Stream(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (r#0 == #_module.CoOption.None())
        {
            assume {:id "id519"} _module.__default.N2S($LS($LZ), r#0) == Lit(#_module.Stream.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.N2S($LS($LZ), r#0), Tclass._module.Stream(TInt));
            return;
        }
        else if (r#0 == #_module.CoOption.Some($Box(_mcc#0#0)))
        {
            assume $Is(_mcc#0#0, Tclass._module.Number());
            havoc num#Z#0;
            assume {:id "id513"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Number());
            assume {:id "id514"} num#Z#0 == let#0#0#0;
            assert {:id "id515"} $Is(LitInt(0), Tclass._System.nat());
            ##n#0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##num#0 := num#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
            assert {:id "id516"} 0 <= LitInt(1) || LitInt(0) == LitInt(1);
            assert {:id "id517"} LitInt(0) <= LitInt(1);
            assume _module.__default.N2S_k#canCall(LitInt(0), num#Z#0);
            assume {:id "id518"} _module.__default.N2S($LS($LZ), r#0)
               == _module.__default.N2S_k($LS($LZ), LitInt(0), num#Z#0);
            assume _module.__default.N2S_k#canCall(LitInt(0), num#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.N2S($LS($LZ), r#0), Tclass._module.Stream(TInt));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.N2S'
function _module.__default.N2S_k($ly: LayerType, n#0: int, num#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.N2S_k
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, num#0: DatatypeType :: 
    { _module.__default.N2S_k($ly, n#0, num#0) } 
    _module.__default.N2S_k#canCall(n#0, num#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(num#0, Tclass._module.Number()))
       ==> $Is(_module.__default.N2S_k($ly, n#0, num#0), Tclass._module.Stream(TInt)));
// definition axiom for _module.__default.N2S_k (revealed)
axiom {:id "id520"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, num#0: DatatypeType :: 
    { _module.__default.N2S_k($LS($ly), n#0, num#0) } 
    _module.__default.N2S_k#canCall(n#0, num#0)
         || (2 < $FunctionContextHeight
           && 
          LitInt(0) <= n#0
           && $Is(num#0, Tclass._module.Number()))
       ==> (_module.Number.Succ_q(num#0)
           ==> (var next#1 := _module.Number._h4(num#0); 
            _module.__default.N2S_k#canCall(n#0 + 1, next#1)))
         && (!_module.Number.Succ_q(num#0)
           ==> (var r#1 := _module.Number._h5(num#0); _module.__default.N2S#canCall(r#1)))
         && _module.__default.N2S_k($LS($ly), n#0, num#0)
           == (if _module.Number.Succ_q(num#0)
             then (var next#0 := _module.Number._h4(num#0); 
              _module.__default.N2S_k($ly, n#0 + 1, next#0))
             else (var r#0 := _module.Number._h5(num#0); 
              #_module.Stream.Cons($Box(n#0), _module.__default.N2S($ly, r#0)))));
}

function _module.__default.N2S_k#canCall(n#0: int, num#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, num#0: DatatypeType :: 
  { _module.__default.N2S_k($LS($ly), n#0, num#0) } 
  _module.__default.N2S_k($LS($ly), n#0, num#0)
     == _module.__default.N2S_k($ly, n#0, num#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, num#0: DatatypeType :: 
  { _module.__default.N2S_k(AsFuelBottom($ly), n#0, num#0) } 
  _module.__default.N2S_k($ly, n#0, num#0)
     == _module.__default.N2S_k($LZ, n#0, num#0));

function _module.__default.N2S_k#requires(LayerType, int, DatatypeType) : bool;

// #requires axiom for _module.__default.N2S_k
axiom (forall $ly: LayerType, n#0: int, num#0: DatatypeType :: 
  { _module.__default.N2S_k#requires($ly, n#0, num#0) } 
  LitInt(0) <= n#0 && $Is(num#0, Tclass._module.Number())
     ==> _module.__default.N2S_k#requires($ly, n#0, num#0) == true);

procedure {:verboseName "N2S' (well-formedness)"} CheckWellformed$$_module.__default.N2S_k(n#0: int where LitInt(0) <= n#0, 
    num#0: DatatypeType where $Is(num#0, Tclass._module.Number()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N2S' (well-formedness)"} CheckWellformed$$_module.__default.N2S_k(n#0: int, num#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#1#0: DatatypeType;
  var r#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##r#0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var next#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##n#0: int;
  var ##num#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.N2S_k($LS($LZ), n#0, num#0), Tclass._module.Stream(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (num#0 == #_module.Number.Succ(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Number());
            havoc next#Z#0;
            assume {:id "id524"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Number());
            assume {:id "id525"} next#Z#0 == let#1#0#0;
            assert {:id "id526"} $Is(n#0 + 1, Tclass._System.nat());
            ##n#0 := n#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##num#0 := next#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
            assert {:id "id527"} 0 <= LitInt(0) || LitInt(0) == LitInt(0);
            assert {:id "id528"} LitInt(0) < LitInt(0)
               || (LitInt(0) == LitInt(0) && DtRank(##num#0) < DtRank(num#0));
            assume _module.__default.N2S_k#canCall(n#0 + 1, next#Z#0);
            assume {:id "id529"} _module.__default.N2S_k($LS($LZ), n#0, num#0)
               == _module.__default.N2S_k($LS($LZ), n#0 + 1, next#Z#0);
            assume _module.__default.N2S_k#canCall(n#0 + 1, next#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.N2S_k($LS($LZ), n#0, num#0), Tclass._module.Stream(TInt));
            return;
        }
        else if (num#0 == #_module.Number.Zero(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.CoOption(Tclass._module.Number()));
            havoc r#Z#0;
            assume {:id "id521"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.CoOption(Tclass._module.Number()));
            assume {:id "id522"} r#Z#0 == let#0#0#0;
            ##r#0 := r#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
            assume _module.__default.N2S#canCall(r#Z#0);
            assume {:id "id523"} _module.__default.N2S_k($LS($LZ), n#0, num#0)
               == #_module.Stream.Cons($Box(n#0), _module.__default.N2S($LS($LZ), r#Z#0));
            assume _module.__default.N2S#canCall(r#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.N2S_k($LS($LZ), n#0, num#0), Tclass._module.Stream(TInt));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "Path_Lemma0 (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma0 (call)"} Call$$_module.__default.Path__Lemma0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  // user-defined preconditions
  requires {:id "id532"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (_module.Stream.Nil_q(p#0)
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id533"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#0 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; LitInt(0) <= index#0)));
  requires {:id "id534"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#0 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.Stream.Cons_q(ch#0)))));
  requires {:id "id535"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#0 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#0)
     && _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0));
  free ensures {:id "id536"} _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0))
     && 
    _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0))
     && (if _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0))
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var num#1 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LZ), p#0))): DatatypeType; 
        _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#0), num#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma0 (correctness)"} Impl$$_module.__default.Path__Lemma0(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id537"} _module.__default.ValidPath#canCall(t#0, p#0)
     && 
    _module.__default.ValidPath($LS($LZ), t#0, p#0)
     && (if _module.Stream.Nil_q(p#0)
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var tail#3 := _module.Stream.tail(p#0); 
        (var index#3 := $Unbox(_module.Stream.head(p#0)): int; 
          LitInt(0) <= index#3
             && (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#3); 
              _module.Stream.Cons_q(ch#3)
                 && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#0)
     && _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0));
  ensures {:id "id538"} _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0))
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0))
       || (_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0))
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  ensures {:id "id539"} _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0))
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0))
       || (!_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0))
         ==> (var num#2 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), p#0))): DatatypeType; 
          _module.__default.ValidPath__Alt_k($LS($LS($LZ)), _module.Tree.children(t#0), num#2)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma0 (correctness)"} Impl$$_module.__default.Path__Lemma0(t#0: DatatypeType, p#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##t#2: DatatypeType;
  var ##p#2: DatatypeType;
  var t##0_0: DatatypeType;
  var p##0_0: DatatypeType;

    // AddMethodImpl: Path_Lemma0, Impl$$_module.__default.Path__Lemma0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Tree(t#0);
    assume $IsA#_module.Stream(p#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#t0#0: DatatypeType, $ih#p0#0: DatatypeType :: 
      { _module.__default.ValidPath__Alt($LS($LZ), $ih#t0#0, _module.__default.S2N($LS($LZ), $ih#p0#0)) } 
        { _module.__default.ValidPath($LS($LZ), $ih#t0#0, $ih#p0#0) } 
      $Is($ih#t0#0, Tclass._module.Tree())
           && $Is($ih#p0#0, Tclass._module.Stream(TInt))
           && _module.__default.ValidPath($LS($LZ), $ih#t0#0, $ih#p0#0)
           && DtRank($ih#t0#0) < DtRank(t#0)
         ==> _module.__default.ValidPath__Alt($LS($LZ), $ih#t0#0, _module.__default.S2N($LS($LZ), $ih#p0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(506,3)
    ##t#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#2, Tclass._module.Tree(), $Heap);
    ##p#2 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##p#2, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.ValidPath#canCall(t#0, p#0);
    assume _module.__default.ValidPath#canCall(t#0, p#0);
    if (_module.__default.ValidPath($LS($LZ), t#0, p#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(507,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##0_0 := t#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := p#0;
        call {:id "id540"} Call$$_module.__default.Path__Lemma0_k(t##0_0, p##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Path_Lemma0' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma0_k(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma0' (call)"} Call$$_module.__default.Path__Lemma0_k(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  // user-defined preconditions
  requires {:id "id543"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (_module.Stream.Nil_q(p#0)
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id544"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#0 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; LitInt(0) <= index#0)));
  requires {:id "id545"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#0 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.Stream.Cons_q(ch#0)))));
  requires {:id "id546"} _module.__default.ValidPath#canCall(t#0, p#0)
     ==> _module.__default.ValidPath($LS($LZ), t#0, p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#0 := _module.Stream.tail(p#0); 
          (var index#0 := $Unbox(_module.Stream.head(p#0)): int; 
            (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#0); 
              _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#0)
     && _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0));
  free ensures {:id "id547"} _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0))
     && 
    _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0))
     && (if _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0))
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var num#1 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LZ), p#0))): DatatypeType; 
        _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#0), num#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma0'# (co-call)"} CoCall$$_module.__default.Path__Lemma0_k_h(_k#0: Box, 
    t#1: DatatypeType
       where $Is(t#1, Tclass._module.Tree())
         && $IsAlloc(t#1, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#1), 
    p#1: DatatypeType
       where $Is(p#1, Tclass._module.Stream(TInt))
         && $IsAlloc(p#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#1));
  // user-defined preconditions
  requires {:id "id548"} _module.__default.ValidPath#canCall(t#1, p#1)
     ==> _module.__default.ValidPath($LS($LZ), t#1, p#1)
       || (_module.Stream.Nil_q(p#1)
         ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id549"} _module.__default.ValidPath#canCall(t#1, p#1)
     ==> _module.__default.ValidPath($LS($LZ), t#1, p#1)
       || (!_module.Stream.Nil_q(p#1)
         ==> (var tail#2 := _module.Stream.tail(p#1); 
          (var index#2 := $Unbox(_module.Stream.head(p#1)): int; LitInt(0) <= index#2)));
  requires {:id "id550"} _module.__default.ValidPath#canCall(t#1, p#1)
     ==> _module.__default.ValidPath($LS($LZ), t#1, p#1)
       || (!_module.Stream.Nil_q(p#1)
         ==> (var tail#2 := _module.Stream.tail(p#1); 
          (var index#2 := $Unbox(_module.Stream.head(p#1)): int; 
            (var ch#2 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#2); 
              _module.Stream.Cons_q(ch#2)))));
  requires {:id "id551"} _module.__default.ValidPath#canCall(t#1, p#1)
     ==> _module.__default.ValidPath($LS($LZ), t#1, p#1)
       || (!_module.Stream.Nil_q(p#1)
         ==> (var tail#2 := _module.Stream.tail(p#1); 
          (var index#2 := $Unbox(_module.Stream.head(p#1)): int; 
            (var ch#2 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#2); 
              _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#2)): DatatypeType, tail#2)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#1)
     && _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1));
  free ensures {:id "id552"} _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
     && 
    _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
         then _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
         else (var num#3 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LZ), p#1))): DatatypeType; 
          _module.__default.ValidPath__Alt_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), _module.Tree.children(t#1), num#3))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.ValidPath__Alt_h($LS($LZ), _k'#0, t#1, _module.__default.S2N($LS($LZ), p#1)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k'#0, t#1, _module.__default.S2N($LS($LZ), p#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma0'# (correctness)"} Impl$$_module.__default.Path__Lemma0_k_h(_k#0: Box, 
    t#1: DatatypeType
       where $Is(t#1, Tclass._module.Tree())
         && $IsAlloc(t#1, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#1), 
    p#1: DatatypeType
       where $Is(p#1, Tclass._module.Stream(TInt))
         && $IsAlloc(p#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#1))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id553"} _module.__default.ValidPath#canCall(t#1, p#1)
     && 
    _module.__default.ValidPath($LS($LZ), t#1, p#1)
     && (if _module.Stream.Nil_q(p#1)
       then _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var tail#5 := _module.Stream.tail(p#1); 
        (var index#5 := $Unbox(_module.Stream.head(p#1)): int; 
          LitInt(0) <= index#5
             && (var ch#5 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#1), index#5); 
              _module.Stream.Cons_q(ch#5)
                 && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#5)): DatatypeType, tail#5)))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#1)
     && _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1));
  ensures {:id "id554"} _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
     ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
         ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  ensures {:id "id555"} _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
     ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
         ==> (var num#4 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), p#1))): DatatypeType; 
          _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            _module.Tree.children(t#1), 
            num#4)));
  ensures {:id "id556"} _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
     ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.ValidPath__Alt_h($LS($LS($LZ)), _k'#1, t#1, _module.__default.S2N($LS($LS($LZ)), p#1)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.ValidPath__Alt_h($LS($LS($LZ)), _k'#1, t#1, _module.__default.S2N($LS($LS($LZ)), p#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma0'# (correctness)"} Impl$$_module.__default.Path__Lemma0_k_h(_k#0: Box, t#1: DatatypeType, p#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var index#6: int;
  var let#0_0_1#0#0: int;
  var ch#6: DatatypeType
     where $Is(ch#6, Tclass._module.Stream(Tclass._module.Tree()))
       && $IsAlloc(ch#6, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##t#2: DatatypeType;
  var ##p#2: DatatypeType;
  var _k##0: Box;
  var tChildren##0: DatatypeType;
  var n##0: int;
  var tail##0: DatatypeType;
  var ##_k#0: Box;
  var ##s#1: DatatypeType;
  var ##num#0: DatatypeType;
  var ##n#1: int;
  var ##tail#0: DatatypeType;
  var ##_k#1: Box;
  var ##s#2: DatatypeType;
  var ##num#1: DatatypeType;
  var ##n#2: int;
  var ##tail#1: DatatypeType;
  var ##_k#2: Box;
  var ##t#3: DatatypeType;
  var ##r#1: DatatypeType;
  var ##n#3: int;
  var ##tail#2: DatatypeType;
  var ##_k#3: Box;
  var ##t#4: DatatypeType;
  var ##r#2: DatatypeType;
  var ##n#4: int;
  var ##tail#3: DatatypeType;
  var ##p#3: DatatypeType;
  var ##n#5: int;
  var ##tail#4: DatatypeType;
  var ##_k#4: Box;
  var ##t#5: DatatypeType;
  var ##r#3: DatatypeType;
  var ##p#4: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Path_Lemma0'#, Impl$$_module.__default.Path__Lemma0_k_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Tree(t#1);
    assume $IsA#_module.Stream(p#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#t0#0: DatatypeType, $ih#p0#0: DatatypeType :: 
      { _module.__default.ValidPath__Alt_h($LS($LZ), $ih#_k0#0, $ih#t0#0, _module.__default.S2N($LS($LZ), $ih#p0#0)) } 
      $Is($ih#t0#0, Tclass._module.Tree())
           && $Is($ih#p0#0, Tclass._module.Stream(TInt))
           && _module.__default.ValidPath($LS($LZ), $ih#t0#0, $ih#p0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && DtRank($ih#t0#0) < DtRank(t#1)))
         ==> _module.__default.ValidPath__Alt_h($LS($LZ), $ih#_k0#0, $ih#t0#0, _module.__default.S2N($LS($LZ), $ih#p0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(513,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (p#1 == #_module.Stream.Nil())
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(516,7)
            assume $IsA#_module.Tree(t#1);
            assert {:id "id601"} _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil())));
        }
        else if (p#1 == #_module.Stream.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.Stream(TInt))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(TInt), $Heap);
            havoc tail#6;
            assume $Is(tail#6, Tclass._module.Stream(TInt))
               && $IsAlloc(tail#6, Tclass._module.Stream(TInt), $Heap);
            assume {:id "id557"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(TInt));
            assume {:id "id558"} tail#6 == let#0_0_0#0#0;
            havoc index#6;
            assume {:id "id559"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_1#0#0, TInt);
            assume {:id "id560"} index#6 == let#0_0_1#0#0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(518,7)
            assume true;
            assert {:id "id561"} LitInt(0) <= index#6;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(519,14)
            assume true;
            assume _module.Tree.Node_q(t#1);
            ##s#0 := _module.Tree.children(t#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            assert {:id "id562"} $Is(index#6, Tclass._System.nat());
            ##n#0 := index#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assume _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#1), index#6);
            assume _module.Tree.Node_q(t#1)
               && _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Tree.children(t#1), index#6);
            ch#6 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#1), index#6);
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(520,7)
            if (_module.Stream.Cons_q(ch#6))
            {
                assert {:id "id564"} _module.Stream.Cons_q(ch#6);
                ##t#2 := $Unbox(_module.Stream.head(ch#6)): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#2, Tclass._module.Tree(), $Heap);
                ##p#2 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#2, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6);
            }

            assume _module.Stream.Cons_q(ch#6)
               ==> _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6);
            assert {:id "id565"} {:subsumption 0} _module.Stream.Cons_q(ch#6);
            assert {:id "id566"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
               ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
                 || (_module.Stream.Nil_q(tail#6)
                   ==> _module.Tree#Equal($Unbox(_module.Stream.head(ch#6)): DatatypeType, 
                    #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
            assert {:id "id567"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
               ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
                 || (!_module.Stream.Nil_q(tail#6)
                   ==> (var tail#7 := _module.Stream.tail(tail#6); 
                    (var index#7 := $Unbox(_module.Stream.head(tail#6)): int; LitInt(0) <= index#7)));
            assert {:id "id568"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
               ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
                 || (!_module.Stream.Nil_q(tail#6)
                   ==> (var tail#7 := _module.Stream.tail(tail#6); 
                    (var index#7 := $Unbox(_module.Stream.head(tail#6)): int; 
                      (var ch#7 := _module.__default.Tail(Tclass._module.Tree(), 
                            $LS($LS($LZ)), 
                            _module.Tree.children($Unbox(_module.Stream.head(ch#6)): DatatypeType), 
                            index#7); 
                        _module.Stream.Cons_q(ch#7)))));
            assert {:id "id569"} {:subsumption 0} _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
               ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6)
                 || (!_module.Stream.Nil_q(tail#6)
                   ==> (var tail#7 := _module.Stream.tail(tail#6); 
                    (var index#7 := $Unbox(_module.Stream.head(tail#6)): int; 
                      (var ch#7 := _module.__default.Tail(Tclass._module.Tree(), 
                            $LS($LS($LZ)), 
                            _module.Tree.children($Unbox(_module.Stream.head(ch#6)): DatatypeType), 
                            index#7); 
                        _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#7)): DatatypeType, tail#7)))));
            assume {:id "id570"} _module.Stream.Cons_q(ch#6)
               && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#6)): DatatypeType, tail#6);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                ##_k#3 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                ##t#4 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#4, Tclass._module.Tree(), $Heap);
                assume {:id "id592"} $Is(index#6, Tclass._System.nat());
                ##n#4 := index#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
                ##tail#3 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#3, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall(index#6, tail#6);
                ##r#2 := #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#2, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt_h#canCall(_k#0, 
                  t#1, 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))));
                assume _module.__default.S2N_k#canCall(index#6, tail#6)
                   && _module.__default.ValidPath__Alt_h#canCall(_k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assume {:id "id593"} _module.__default.ValidPath__Alt_h($LS($LZ), 
                  _k#0, 
                  t#1, 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(524,11)
                ##p#3 := p#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#3, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(p#1);
                assert {:id "id594"} $Is(index#6, Tclass._System.nat());
                ##n#5 := index#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
                ##tail#4 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#4, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall(index#6, tail#6);
                assume $IsA#_module.CoOption(_module.__default.S2N($LS($LZ), p#1))
                   && 
                  _module.__default.S2N#canCall(p#1)
                   && _module.__default.S2N_k#canCall(index#6, tail#6);
                assert {:id "id595"} {:subsumption 0} $Eq#_module.CoOption(Tclass._module.Number(), 
                  Tclass._module.Number(), 
                  $LS($LS($LZ)), 
                  _module.__default.S2N($LS($LS($LZ)), p#1), 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6))));
                assume {:id "id596"} $Eq#_module.CoOption(Tclass._module.Number(), 
                  Tclass._module.Number(), 
                  $LS($LS($LZ)), 
                  _module.__default.S2N($LS($LZ), p#1), 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))));
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                ##_k#4 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#4, TORDINAL, $Heap);
                ##t#5 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#5, Tclass._module.Tree(), $Heap);
                ##p#4 := p#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#4, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(p#1);
                ##r#3 := _module.__default.S2N($LS($LZ), p#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#3, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1));
                assume _module.__default.S2N#canCall(p#1)
                   && _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1));
                // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assert {:id "id597"} {:subsumption 0} _module.__default.ValidPath__Alt_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                   ==> 
                  _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
                   ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
                       ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id598"} {:subsumption 0} _module.__default.ValidPath__Alt_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                   ==> 
                  _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
                   ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
                       ==> (var num#8 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), p#1))): DatatypeType; 
                        _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
                          ORD#Minus(_k#0, ORD#FromNat(1)), 
                          _module.Tree.children(t#1), 
                          num#8)));
                assert {:id "id599"} {:subsumption 0} _module.__default.ValidPath__Alt_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                   ==> 
                  _module.__default.ValidPath__Alt_h#canCall(_k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
                   ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#4: Box :: 
                        { _module.__default.ValidPath__Alt_h($LS($LS($LZ)), _k'#4, t#1, _module.__default.S2N($LS($LS($LZ)), p#1)) } 
                        ORD#Less(_k'#4, _k#0)
                           ==> _module.__default.ValidPath__Alt_h($LS($LS($LZ)), _k'#4, t#1, _module.__default.S2N($LS($LS($LZ)), p#1))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assume {:id "id584"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assume {:id "id585"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                assume _module.Tree.Node_q(t#1);
                ##s#2 := _module.Tree.children(t#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#2, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assume {:id "id586"} $Is(index#6, Tclass._System.nat());
                ##n#2 := index#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
                ##tail#1 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall(index#6, tail#6);
                ##num#1 := _module.__default.S2N_k($LS($LZ), index#6, tail#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#1, Tclass._module.Number(), $Heap);
                assume _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Tree.children(t#1), 
                  _module.__default.S2N_k($LS($LZ), index#6, tail#6));
                assume _module.Tree.Node_q(t#1)
                   && _module.__default.S2N_k#canCall(index#6, tail#6)
                   && _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assume {:id "id587"} _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Tree.children(t#1), 
                  _module.__default.S2N_k($LS($LZ), index#6, tail#6));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                ##_k#2 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##t#3 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, Tclass._module.Tree(), $Heap);
                assert {:id "id588"} $Is(index#6, Tclass._System.nat());
                ##n#3 := index#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
                ##tail#2 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#2, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall(index#6, tail#6);
                ##r#1 := #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt_h#canCall(_k#0, 
                  t#1, 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))));
                assume _module.__default.S2N_k#canCall(index#6, tail#6)
                   && _module.__default.ValidPath__Alt_h#canCall(_k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))));
                // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assert {:id "id589"} {:subsumption 0} _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> 
                  _module.__default.ValidPath__Alt_h#canCall(_k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                   ==> _module.__default.ValidPath__Alt_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.CoOption.None_q(#_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                       ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id590"} {:subsumption 0} _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> 
                  _module.__default.ValidPath__Alt_h#canCall(_k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                   ==> _module.__default.ValidPath__Alt_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.CoOption.None_q(#_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                       ==> (var num#6 := $Unbox(_module.CoOption.get(#_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6))))): DatatypeType; 
                        _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
                          ORD#Minus(_k#0, ORD#FromNat(1)), 
                          _module.Tree.children(t#1), 
                          num#6)));
                assert {:id "id591"} {:subsumption 0} _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> 
                  _module.__default.ValidPath__Alt_h#canCall(_k#0, 
                    t#1, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                   ==> _module.__default.ValidPath__Alt_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), index#6, tail#6))))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#3: Box :: 
                        { _module.__default.ValidPath__Alt_h($LS($LS($LZ)), 
                            _k'#3, 
                            t#1, 
                            #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6)))) } 
                        ORD#Less(_k'#3, _k#0)
                           ==> _module.__default.ValidPath__Alt_h($LS($LS($LZ)), 
                            _k'#3, 
                            t#1, 
                            #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6))))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assume true;
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assume {:id "id571"} true;
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(528,24)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id572"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id573"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume _module.Tree.Node_q(t#1);
                assume _module.Tree.Node_q(t#1);
                // ProcessCallStmt: CheckSubrange
                tChildren##0 := _module.Tree.children(t#1);
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id574"} $Is(index#6, Tclass._System.nat());
                n##0 := index#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                tail##0 := tail#6;
                call {:id "id575"} CoCall$$_module.__default.Path__Lemma0_k_k_h(_k##0, tChildren##0, n##0, tail##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assert {:id "id576"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id577"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                assume _module.Tree.Node_q(t#1);
                ##s#1 := _module.Tree.children(t#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assert {:id "id578"} $Is(index#6, Tclass._System.nat());
                ##n#1 := index#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                ##tail#0 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall(index#6, tail#6);
                ##num#0 := _module.__default.S2N_k($LS($LZ), index#6, tail#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
                assume _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.Tree.children(t#1), 
                  _module.__default.S2N_k($LS($LZ), index#6, tail#6));
                assume _module.Tree.Node_q(t#1)
                   && _module.__default.S2N_k#canCall(index#6, tail#6)
                   && _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6));
                // ----- assert line2 <== line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(522,7)
                assert {:id "id579"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.Tree.children(t#1), 
                      _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), index#6, tail#6))
                       ==> (var next#0 := _module.Number._h4(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6)); 
                        _module.Stream.Cons_q(_module.Tree.children(t#1))));
                assert {:id "id580"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.Tree.children(t#1), 
                      _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), index#6, tail#6))
                       ==> (var next#0 := _module.Number._h4(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6)); 
                        _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
                          ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                          _module.Stream.tail(_module.Tree.children(t#1)), 
                          next#0)));
                assert {:id "id581"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.Tree.children(t#1), 
                      _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), index#6, tail#6))
                       ==> (var r#0 := _module.Number._h5(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6)); 
                        _module.Stream.Cons_q(_module.Tree.children(t#1))));
                assert {:id "id582"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.Tree.children(t#1), 
                      _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), index#6, tail#6))
                       ==> (var r#0 := _module.Number._h5(_module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6)); 
                        _module.__default.ValidPath__Alt_h($LS($LS($LZ)), 
                          ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                          $Unbox(_module.Stream.head(_module.Tree.children(t#1))): DatatypeType, 
                          r#0)));
                assert {:id "id583"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath__Alt_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.Tree.children(t#1), 
                    _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                   ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.Tree.children(t#1), 
                      _module.__default.S2N_k($LS($LZ), index#6, tail#6))
                     || (LitInt(0) == ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> (forall _k'#2: Box :: 
                        { _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
                            _k'#2, 
                            _module.Tree.children(t#1), 
                            _module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6)) } 
                        ORD#Less(_k'#2, ORD#Minus(_k#0, ORD#FromNat(1)))
                           ==> _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
                            _k'#2, 
                            _module.Tree.children(t#1), 
                            _module.__default.S2N_k($LS($LS($LZ)), index#6, tail#6))));
                assume false;
            }

            assume {:id "id600"} true
               ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k#0, t#1, _module.__default.S2N($LS($LZ), p#1));
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(513,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#5: Box, t#2: DatatypeType, p#2: DatatypeType :: 
          { _module.__default.ValidPath__Alt_h($LS($LZ), _k'#5, t#2, _module.__default.S2N($LS($LZ), p#2)) } 
            { _module.__default.ValidPath($LS($LZ), t#2, p#2), ORD#Less(_k'#5, _k#0) } 
          $Is(t#2, Tclass._module.Tree())
               && $Is(p#2, Tclass._module.Stream(TInt))
               && 
              ORD#Less(_k'#5, _k#0)
               && _module.__default.ValidPath($LS($LZ), t#2, p#2)
             ==> _module.__default.ValidPath__Alt_h($LS($LZ), _k'#5, t#2, _module.__default.S2N($LS($LZ), p#2)));
    }
}



procedure {:verboseName "Path_Lemma0'' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma0_k_k(tChildren#0: DatatypeType
       where $Is(tChildren#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(tChildren#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(tChildren#0), 
    n#0: int where LitInt(0) <= n#0, 
    tail#0: DatatypeType
       where $Is(tail#0, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma0'' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma0_k_k(tChildren#0: DatatypeType, n#0: int, tail#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ch#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##s#0: DatatypeType;
  var ##n#0: int;
  var ##t#0: DatatypeType;
  var ##p#0: DatatypeType;
  var ##s#1: DatatypeType;
  var ##num#0: DatatypeType;
  var ##n#1: int;
  var ##tail#0: DatatypeType;


    // AddMethodImpl: Path_Lemma0'', CheckWellFormed$$_module.__default.Path__Lemma0_k_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc ch#Z#0;
    ##s#0 := tChildren#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#0, n#0);
    assume {:id "id602"} let#0#0#0
       == _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), tChildren#0, n#0);
    assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#0, n#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.Stream(Tclass._module.Tree()));
    assume {:id "id603"} ch#Z#0 == let#0#0#0;
    if (_module.Stream.Cons_q(ch#Z#0))
    {
        assert {:id "id604"} _module.Stream.Cons_q(ch#Z#0);
        ##t#0 := $Unbox(_module.Stream.head(ch#Z#0)): DatatypeType;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, Tclass._module.Tree(), $Heap);
        ##p#0 := tail#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##p#0, Tclass._module.Stream(TInt), $Heap);
        assume _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#Z#0)): DatatypeType, tail#0);
    }

    assume {:id "id605"} (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), tChildren#0, n#0); 
      _module.Stream.Cons_q(ch#0)
         && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##s#1 := tChildren#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
    ##n#1 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    ##tail#0 := tail#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##tail#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.S2N_k#canCall(n#0, tail#0);
    ##num#0 := _module.__default.S2N_k($LS($LZ), n#0, tail#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
    assume _module.__default.ValidPath__Alt_k#canCall(tChildren#0, _module.__default.S2N_k($LS($LZ), n#0, tail#0));
    assume {:id "id606"} _module.__default.ValidPath__Alt_k($LS($LZ), tChildren#0, _module.__default.S2N_k($LS($LZ), n#0, tail#0));
}



procedure {:verboseName "Path_Lemma0'' (call)"} Call$$_module.__default.Path__Lemma0_k_k(tChildren#0: DatatypeType
       where $Is(tChildren#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(tChildren#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(tChildren#0), 
    n#0: int where LitInt(0) <= n#0, 
    tail#0: DatatypeType
       where $Is(tail#0, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#0));
  // user-defined preconditions
  requires {:id "id607"} (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#0, n#0); 
    _module.Stream.Cons_q(ch#0));
  requires {:id "id608"} (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#0, n#0); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
         || (_module.Stream.Nil_q(tail#0)
           ==> _module.Tree#Equal($Unbox(_module.Stream.head(ch#0)): DatatypeType, 
            #_module.Tree.Node(Lit(#_module.Stream.Nil())))));
  requires {:id "id609"} (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#0, n#0); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
         || (!_module.Stream.Nil_q(tail#0)
           ==> (var tail#1 := _module.Stream.tail(tail#0); 
            (var index#0 := $Unbox(_module.Stream.head(tail#0)): int; LitInt(0) <= index#0))));
  requires {:id "id610"} (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#0, n#0); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
         || (!_module.Stream.Nil_q(tail#0)
           ==> (var tail#1 := _module.Stream.tail(tail#0); 
            (var index#0 := $Unbox(_module.Stream.head(tail#0)): int; 
              (var ch#1 := _module.__default.Tail(Tclass._module.Tree(), 
                    $LS($LS($LZ)), 
                    _module.Tree.children($Unbox(_module.Stream.head(ch#0)): DatatypeType), 
                    index#0); 
                _module.Stream.Cons_q(ch#1))))));
  requires {:id "id611"} (var ch#0 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#0, n#0); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#0)): DatatypeType, tail#0)
         || (!_module.Stream.Nil_q(tail#0)
           ==> (var tail#1 := _module.Stream.tail(tail#0); 
            (var index#0 := $Unbox(_module.Stream.head(tail#0)): int; 
              (var ch#1 := _module.__default.Tail(Tclass._module.Tree(), 
                    $LS($LS($LZ)), 
                    _module.Tree.children($Unbox(_module.Stream.head(ch#0)): DatatypeType), 
                    index#0); 
                _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#1)): DatatypeType, tail#1))))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N_k#canCall(n#0, tail#0)
     && _module.__default.ValidPath__Alt_k#canCall(tChildren#0, _module.__default.S2N_k($LS($LZ), n#0, tail#0));
  free ensures {:id "id612"} _module.__default.ValidPath__Alt_k#canCall(tChildren#0, _module.__default.S2N_k($LS($LZ), n#0, tail#0))
     && 
    _module.__default.ValidPath__Alt_k($LS($LZ), tChildren#0, _module.__default.S2N_k($LS($LZ), n#0, tail#0))
     && (if _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#0, tail#0))
       then (var next#1 := _module.Number._h4(_module.__default.S2N_k($LS($LZ), n#0, tail#0)); 
        _module.Stream.Cons_q(tChildren#0)
           && _module.__default.ValidPath__Alt_k($LS($LZ), _module.Stream.tail(tChildren#0), next#1))
       else (var r#1 := _module.Number._h5(_module.__default.S2N_k($LS($LZ), n#0, tail#0)); 
        _module.Stream.Cons_q(tChildren#0)
           && _module.__default.ValidPath__Alt($LS($LZ), $Unbox(_module.Stream.head(tChildren#0)): DatatypeType, r#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma0''# (co-call)"} CoCall$$_module.__default.Path__Lemma0_k_k_h(_k#0: Box, 
    tChildren#1: DatatypeType
       where $Is(tChildren#1, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(tChildren#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(tChildren#1), 
    n#1: int where LitInt(0) <= n#1, 
    tail#3: DatatypeType
       where $Is(tail#3, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#3, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#3));
  // user-defined preconditions
  requires {:id "id613"} (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1); 
    _module.Stream.Cons_q(ch#3));
  requires {:id "id614"} (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
         || (_module.Stream.Nil_q(tail#3)
           ==> _module.Tree#Equal($Unbox(_module.Stream.head(ch#3)): DatatypeType, 
            #_module.Tree.Node(Lit(#_module.Stream.Nil())))));
  requires {:id "id615"} (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
         || (!_module.Stream.Nil_q(tail#3)
           ==> (var tail#4 := _module.Stream.tail(tail#3); 
            (var index#2 := $Unbox(_module.Stream.head(tail#3)): int; LitInt(0) <= index#2))));
  requires {:id "id616"} (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
         || (!_module.Stream.Nil_q(tail#3)
           ==> (var tail#4 := _module.Stream.tail(tail#3); 
            (var index#2 := $Unbox(_module.Stream.head(tail#3)): int; 
              (var ch#4 := _module.__default.Tail(Tclass._module.Tree(), 
                    $LS($LS($LZ)), 
                    _module.Tree.children($Unbox(_module.Stream.head(ch#3)): DatatypeType), 
                    index#2); 
                _module.Stream.Cons_q(ch#4))))));
  requires {:id "id617"} (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
       ==> _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
         || (!_module.Stream.Nil_q(tail#3)
           ==> (var tail#4 := _module.Stream.tail(tail#3); 
            (var index#2 := $Unbox(_module.Stream.head(tail#3)): int; 
              (var ch#4 := _module.__default.Tail(Tclass._module.Tree(), 
                    $LS($LS($LZ)), 
                    _module.Tree.children($Unbox(_module.Stream.head(ch#3)): DatatypeType), 
                    index#2); 
                _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#4)): DatatypeType, tail#4))))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N_k#canCall(n#1, tail#3)
     && _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3));
  free ensures {:id "id618"} _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     && 
    _module.__default.ValidPath__Alt_k_h($LS($LZ), _k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         then (var next#3 := _module.Number._h4(_module.__default.S2N_k($LS($LZ), n#1, tail#3)); 
          _module.Stream.Cons_q(tChildren#1)
             && _module.__default.ValidPath__Alt_k_h($LS($LZ), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              _module.Stream.tail(tChildren#1), 
              next#3))
         else (var r#3 := _module.Number._h5(_module.__default.S2N_k($LS($LZ), n#1, tail#3)); 
          _module.Stream.Cons_q(tChildren#1)
             && _module.__default.ValidPath__Alt_h($LS($LZ), 
              ORD#Minus(_k#0, ORD#FromNat(1)), 
              $Unbox(_module.Stream.head(tChildren#1)): DatatypeType, 
              r#3))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.ValidPath__Alt_k_h($LS($LZ), _k'#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), _k'#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma0''# (correctness)"} Impl$$_module.__default.Path__Lemma0_k_k_h(_k#0: Box, 
    tChildren#1: DatatypeType
       where $Is(tChildren#1, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(tChildren#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(tChildren#1), 
    n#1: int where LitInt(0) <= n#1, 
    tail#3: DatatypeType
       where $Is(tail#3, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#3, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#3))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id619"} (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1); 
    _module.Stream.Cons_q(ch#3));
  free requires {:id "id620"} (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1); 
    _module.__default.ValidPath#canCall($Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
       && 
      _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#3)): DatatypeType, tail#3)
       && (if _module.Stream.Nil_q(tail#3)
         then _module.Tree#Equal($Unbox(_module.Stream.head(ch#3)): DatatypeType, 
          #_module.Tree.Node(Lit(#_module.Stream.Nil())))
         else (var tail#7 := _module.Stream.tail(tail#3); 
          (var index#5 := $Unbox(_module.Stream.head(tail#3)): int; 
            LitInt(0) <= index#5
               && (var ch#7 := _module.__default.Tail(Tclass._module.Tree(), 
                    $LS($LZ), 
                    _module.Tree.children($Unbox(_module.Stream.head(ch#3)): DatatypeType), 
                    index#5); 
                _module.Stream.Cons_q(ch#7)
                   && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#7)): DatatypeType, tail#7))))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N_k#canCall(n#1, tail#3)
     && _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3));
  ensures {:id "id621"} _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), _k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         ==> (var next#4 := _module.Number._h4(_module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)); 
          _module.Stream.Cons_q(tChildren#1)));
  ensures {:id "id622"} _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), _k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         ==> (var next#4 := _module.Number._h4(_module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)); 
          _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            _module.Stream.tail(tChildren#1), 
            next#4)));
  ensures {:id "id623"} _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), _k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         ==> (var r#4 := _module.Number._h5(_module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)); 
          _module.Stream.Cons_q(tChildren#1)));
  ensures {:id "id624"} _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), _k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         ==> (var r#4 := _module.Number._h5(_module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)); 
          _module.__default.ValidPath__Alt_h($LS($LS($LZ)), 
            ORD#Minus(_k#0, ORD#FromNat(1)), 
            $Unbox(_module.Stream.head(tChildren#1)): DatatypeType, 
            r#4)));
  ensures {:id "id625"} _module.__default.ValidPath__Alt_k_h#canCall(_k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), _k#0, tChildren#1, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
              _k'#1, 
              tChildren#1, 
              _module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.ValidPath__Alt_k_h($LS($LS($LZ)), 
              _k'#1, 
              tChildren#1, 
              _module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma0''# (correctness)"} Impl$$_module.__default.Path__Lemma0_k_k_h(_k#0: Box, tChildren#1: DatatypeType, n#1: int, tail#3: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var s##0: DatatypeType;
  var k##0: int;
  var n##0: int;
  var ##n#2: int;
  var ##tail#1: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var r#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var _k##0: Box;
  var t##0: DatatypeType;
  var p##0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var next#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var ##s#2: DatatypeType;
  var ##n#3: int;
  var s##1: DatatypeType;
  var n##1: int;
  var ##s#3: DatatypeType;
  var ##n#4: int;
  var ##s#4: DatatypeType;
  var ##n#5: int;
  var s##2: DatatypeType;
  var k##1: int;
  var n##2: int;
  var ##s#5: DatatypeType;
  var ##n#6: int;
  var ##s#6: DatatypeType;
  var ##n#7: int;
  var _k##1: Box;
  var tChildren##0: DatatypeType;
  var n##3: int;
  var tail##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Path_Lemma0''#, Impl$$_module.__default.Path__Lemma0_k_k_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(tChildren#1);
    assume $IsA#_module.Stream(tail#3);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, 
        $ih#tChildren0#0: DatatypeType, 
        $ih#n0#0: int, 
        $ih#tail0#0: DatatypeType :: 
      { _module.__default.ValidPath__Alt_k_h($LS($LZ), 
          $ih#_k0#0, 
          $ih#tChildren0#0, 
          _module.__default.S2N_k($LS($LZ), $ih#n0#0, $ih#tail0#0)) } 
      $Is($ih#tChildren0#0, Tclass._module.Stream(Tclass._module.Tree()))
           && LitInt(0) <= $ih#n0#0
           && $Is($ih#tail0#0, Tclass._module.Stream(TInt))
           && (var ch#8 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), $ih#tChildren0#0, $ih#n0#0); 
            _module.Stream.Cons_q(ch#8)
               && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#8)): DatatypeType, $ih#tail0#0))
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#1))
         ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), 
          $ih#_k0#0, 
          $ih#tChildren0#0, 
          _module.__default.S2N_k($LS($LZ), $ih#n0#0, $ih#tail0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(536,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(537,14)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0 := tChildren#1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id626"} $Is(LitInt(0), Tclass._System.nat());
        k##0 := LitInt(0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0 := n#1;
        call {:id "id627"} Call$$_module.__default.Tail__Lemma1(Tclass._module.Tree(), s##0, k##0, n##0);
        // TrCallStmt: After ProcessCallStmt
        ##n#2 := n#1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
        ##tail#1 := tail#3;
        // assume allocatedness for argument to function
        assume $IsAlloc(##tail#1, Tclass._module.Stream(TInt), $Heap);
        assume _module.__default.S2N_k#canCall(n#1, tail#3);
        assume _module.__default.S2N_k#canCall(n#1, tail#3);
        havoc _mcc#1#0;
        havoc _mcc#0#0;
        if (_module.__default.S2N_k($LS($LZ), n#1, tail#3) == #_module.Number.Succ(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Number());
            havoc next#6;
            assume $Is(next#6, Tclass._module.Number())
               && $IsAlloc(next#6, Tclass._module.Number(), $Heap);
            assume {:id "id634"} let#0_1_0#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.Number());
            assume {:id "id635"} next#6 == let#0_1_0#0#0;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                ##s#6 := tChildren#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#6, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#7 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                ##s#4 := tChildren#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#4, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#5 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(542,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##2 := tChildren#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id643"} $Is(n#1 - 1, Tclass._System.nat());
                k##1 := n#1 - 1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                n##2 := n#1;
                call {:id "id644"} Call$$_module.__default.Tail__Lemma1(Tclass._module.Tree(), s##2, k##1, n##2);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                ##s#5 := tChildren#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#5, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assert {:id "id645"} $Is(n#1 - 1, Tclass._System.nat());
                ##n#6 := n#1 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1 - 1);
                assert {:id "id646"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), tChildren#1, n#1 - 1));
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1 - 1);
                // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                assert {:id "id647"} {:subsumption 0} $Eq#_module.Stream(Tclass._module.Tree(), 
                  Tclass._module.Tree(), 
                  $LS($LS($LZ)), 
                  _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1), 
                  _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1 - 1)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                ##s#2 := tChildren#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#2, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assume {:id "id636"} $Is(n#1 - 1, Tclass._System.nat());
                ##n#3 := n#1 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1 - 1);
                assume {:id "id637"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), tChildren#1, n#1 - 1));
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), tChildren#1, n#1 - 1);
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(544,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := tChildren#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id638"} $Is(n#1 - 1, Tclass._System.nat());
                n##1 := n#1 - 1;
                call {:id "id639"} Call$$_module.__default.Tail__Lemma0(Tclass._module.Tree(), s##1, n##1);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                assert {:id "id640"} _module.Stream.Cons_q(tChildren#1);
                ##s#3 := _module.Stream.tail(tChildren#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                assert {:id "id641"} $Is(n#1 - 1, Tclass._System.nat());
                ##n#4 := n#1 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Stream.tail(tChildren#1), n#1 - 1);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), _module.Stream.tail(tChildren#1), n#1 - 1);
                // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(540,7)
                assert {:id "id642"} {:subsumption 0} $Eq#_module.Stream(Tclass._module.Tree(), 
                  Tclass._module.Tree(), 
                  $LS($LS($LZ)), 
                  _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), tChildren#1, n#1 - 1)), 
                  _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Stream.tail(tChildren#1), n#1 - 1));
                assume false;
            }

            assume {:id "id648"} $Eq#_module.Stream(Tclass._module.Tree(), 
              Tclass._module.Tree(), 
              $LS($LS($LZ)), 
              _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), tChildren#1, n#1), 
              _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Stream.tail(tChildren#1), n#1 - 1));
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(547,20)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id649"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id650"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id651"} _module.Stream.Cons_q(tChildren#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            tChildren##0 := _module.Stream.tail(tChildren#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id652"} $Is(n#1 - 1, Tclass._System.nat());
            n##3 := n#1 - 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            tail##0 := tail#3;
            call {:id "id653"} CoCall$$_module.__default.Path__Lemma0_k_k_h(_k##1, tChildren##0, n##3, tail##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (_module.__default.S2N_k($LS($LZ), n#1, tail#3) == #_module.Number.Zero(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.CoOption(Tclass._module.Number()));
            havoc r#6;
            assume $Is(r#6, Tclass._module.CoOption(Tclass._module.Number()))
               && $IsAlloc(r#6, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
            assume {:id "id628"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.CoOption(Tclass._module.Number()));
            assume {:id "id629"} r#6 == let#0_0_0#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(549,19)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id630"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id631"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
            assert {:id "id632"} _module.Stream.Cons_q(tChildren#1);
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##0 := $Unbox(_module.Stream.head(tChildren#1)): DatatypeType;
            assume true;
            // ProcessCallStmt: CheckSubrange
            p##0 := tail#3;
            call {:id "id633"} CoCall$$_module.__default.Path__Lemma0_k_h(_k##0, t##0, p##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(536,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, tChildren#2: DatatypeType, n#2: int, tail#8: DatatypeType :: 
          { _module.__default.ValidPath__Alt_k_h($LS($LZ), _k'#2, tChildren#2, _module.__default.S2N_k($LS($LZ), n#2, tail#8)) } 
            { _module.__default.ValidPath($LS($LZ), 
              $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), tChildren#2, n#2))): DatatypeType, 
              tail#8), ORD#Less(_k'#2, _k#0) } 
          $Is(tChildren#2, Tclass._module.Stream(Tclass._module.Tree()))
               && LitInt(0) <= n#2
               && $Is(tail#8, Tclass._module.Stream(TInt))
               && 
              ORD#Less(_k'#2, _k#0)
               && (var ch#9 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), tChildren#2, n#2); 
                _module.Stream.Cons_q(ch#9)
                   && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#9)): DatatypeType, tail#8))
             ==> _module.__default.ValidPath__Alt_k_h($LS($LZ), _k'#2, tChildren#2, _module.__default.S2N_k($LS($LZ), n#2, tail#8)));
    }
}



procedure {:verboseName "Path_Lemma1 (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma1 (call)"} Call$$_module.__default.Path__Lemma1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0));
  // user-defined preconditions
  requires {:id "id656"} _module.__default.ValidPath__Alt#canCall(t#0, r#0)
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0)
       || (_module.CoOption.None_q(r#0)
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id657"} _module.__default.ValidPath__Alt#canCall(t#0, r#0)
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0)
       || (!_module.CoOption.None_q(r#0)
         ==> (var num#0 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
          _module.__default.ValidPath__Alt_k($LS($LS($LZ)), _module.Tree.children(t#0), num#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S#canCall(r#0)
     && _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0));
  free ensures {:id "id658"} _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0))
     && 
    _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#0))
     && (if _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var tail#1 := _module.Stream.tail(_module.__default.N2S($LS($LZ), r#0)); 
        (var index#1 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LZ), r#0))): int; 
          LitInt(0) <= index#1
             && (var ch#1 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#1); 
              _module.Stream.Cons_q(ch#1)
                 && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#1)): DatatypeType, tail#1)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma1 (correctness)"} Impl$$_module.__default.Path__Lemma1(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id659"} _module.__default.ValidPath__Alt#canCall(t#0, r#0)
     && 
    _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0)
     && (if _module.CoOption.None_q(r#0)
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var num#3 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
        _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#0), num#3)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S#canCall(r#0)
     && _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0));
  ensures {:id "id660"} _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0))
     ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#0))
       || (_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  ensures {:id "id661"} _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0))
     ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#0))
       || (!_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
         ==> (var tail#2 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#0)); 
          (var index#2 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#0))): int; 
            LitInt(0) <= index#2)));
  ensures {:id "id662"} _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0))
     ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#0))
       || (!_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
         ==> (var tail#2 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#0)); 
          (var index#2 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#0))): int; 
            (var ch#2 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#2); 
              _module.Stream.Cons_q(ch#2)))));
  ensures {:id "id663"} _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0))
     ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#0))
       || (!_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
         ==> (var tail#2 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#0)); 
          (var index#2 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#0))): int; 
            (var ch#2 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#0), index#2); 
              _module.__default.ValidPath($LS($LS($LZ)), $Unbox(_module.Stream.head(ch#2)): DatatypeType, tail#2)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma1 (correctness)"} Impl$$_module.__default.Path__Lemma1(t#0: DatatypeType, r#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##t#2: DatatypeType;
  var ##r#2: DatatypeType;
  var t##0_0: DatatypeType;
  var r##0_0: DatatypeType;

    // AddMethodImpl: Path_Lemma1, Impl$$_module.__default.Path__Lemma1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Tree(t#0);
    assume $IsA#_module.CoOption(r#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#t0#0: DatatypeType, $ih#r0#0: DatatypeType :: 
      { _module.__default.ValidPath($LS($LZ), $ih#t0#0, _module.__default.N2S($LS($LZ), $ih#r0#0)) } 
        { _module.__default.ValidPath__Alt($LS($LZ), $ih#t0#0, $ih#r0#0) } 
      $Is($ih#t0#0, Tclass._module.Tree())
           && $Is($ih#r0#0, Tclass._module.CoOption(Tclass._module.Number()))
           && _module.__default.ValidPath__Alt($LS($LZ), $ih#t0#0, $ih#r0#0)
           && DtRank($ih#t0#0) < DtRank(t#0)
         ==> _module.__default.ValidPath($LS($LZ), $ih#t0#0, _module.__default.N2S($LS($LZ), $ih#r0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(556,3)
    ##t#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#2, Tclass._module.Tree(), $Heap);
    ##r#2 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#2, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
    assume _module.__default.ValidPath__Alt#canCall(t#0, r#0);
    assume _module.__default.ValidPath__Alt#canCall(t#0, r#0);
    if (_module.__default.ValidPath__Alt($LS($LZ), t#0, r#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(557,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##0_0 := t#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        r##0_0 := r#0;
        call {:id "id664"} Call$$_module.__default.Path__Lemma1_k(t##0_0, r##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Path_Lemma1' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma1_k(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma1' (call)"} Call$$_module.__default.Path__Lemma1_k(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0), 
    r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0));
  // user-defined preconditions
  requires {:id "id667"} _module.__default.ValidPath__Alt#canCall(t#0, r#0)
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0)
       || (_module.CoOption.None_q(r#0)
         ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id668"} _module.__default.ValidPath__Alt#canCall(t#0, r#0)
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, r#0)
       || (!_module.CoOption.None_q(r#0)
         ==> (var num#0 := $Unbox(_module.CoOption.get(r#0)): DatatypeType; 
          _module.__default.ValidPath__Alt_k($LS($LS($LZ)), _module.Tree.children(t#0), num#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S#canCall(r#0)
     && _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0));
  free ensures {:id "id669"} _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#0))
     && 
    _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#0))
     && (if _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
       then _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var tail#1 := _module.Stream.tail(_module.__default.N2S($LS($LZ), r#0)); 
        (var index#1 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LZ), r#0))): int; 
          LitInt(0) <= index#1
             && (var ch#1 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#0), index#1); 
              _module.Stream.Cons_q(ch#1)
                 && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#1)): DatatypeType, tail#1)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma1'# (co-call)"} CoCall$$_module.__default.Path__Lemma1_k_h(_k#0: Box, 
    t#1: DatatypeType
       where $Is(t#1, Tclass._module.Tree())
         && $IsAlloc(t#1, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#1), 
    r#1: DatatypeType
       where $Is(r#1, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#1, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#1));
  // user-defined preconditions
  requires {:id "id670"} _module.__default.ValidPath__Alt#canCall(t#1, r#1)
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#1, r#1)
       || (_module.CoOption.None_q(r#1)
         ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  requires {:id "id671"} _module.__default.ValidPath__Alt#canCall(t#1, r#1)
     ==> _module.__default.ValidPath__Alt($LS($LZ), t#1, r#1)
       || (!_module.CoOption.None_q(r#1)
         ==> (var num#2 := $Unbox(_module.CoOption.get(r#1)): DatatypeType; 
          _module.__default.ValidPath__Alt_k($LS($LS($LZ)), _module.Tree.children(t#1), num#2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S#canCall(r#1)
     && _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1));
  free ensures {:id "id672"} _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
     && 
    _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
         then _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
         else (var tail#3 := _module.Stream.tail(_module.__default.N2S($LS($LZ), r#1)); 
          (var index#3 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LZ), r#1))): int; 
            LitInt(0) <= index#3
               && (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), _module.Tree.children(t#1), index#3); 
                _module.Stream.Cons_q(ch#3)
                   && _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(ch#3)): DatatypeType, 
                    tail#3))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.ValidPath_h($LS($LZ), _k'#0, t#1, _module.__default.N2S($LS($LZ), r#1)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.ValidPath_h($LS($LZ), _k'#0, t#1, _module.__default.N2S($LS($LZ), r#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma1'# (correctness)"} Impl$$_module.__default.Path__Lemma1_k_h(_k#0: Box, 
    t#1: DatatypeType
       where $Is(t#1, Tclass._module.Tree())
         && $IsAlloc(t#1, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#1), 
    r#1: DatatypeType
       where $Is(r#1, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#1, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#1))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id673"} _module.__default.ValidPath__Alt#canCall(t#1, r#1)
     && 
    _module.__default.ValidPath__Alt($LS($LZ), t#1, r#1)
     && (if _module.CoOption.None_q(r#1)
       then _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var num#5 := $Unbox(_module.CoOption.get(r#1)): DatatypeType; 
        _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#1), num#5)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S#canCall(r#1)
     && _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1));
  ensures {:id "id674"} _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
     ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
         ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  ensures {:id "id675"} _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
     ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
         ==> (var tail#4 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1)); 
          (var index#4 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1))): int; 
            LitInt(0) <= index#4)));
  ensures {:id "id676"} _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
     ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
         ==> (var tail#4 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1)); 
          (var index#4 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1))): int; 
            (var ch#4 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#4); 
              _module.Stream.Cons_q(ch#4)))));
  ensures {:id "id677"} _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
     ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
         ==> (var tail#4 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1)); 
          (var index#4 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1))): int; 
            (var ch#4 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#4); 
              _module.__default.ValidPath_h($LS($LS($LZ)), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                $Unbox(_module.Stream.head(ch#4)): DatatypeType, 
                tail#4)))));
  ensures {:id "id678"} _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
     ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.ValidPath_h($LS($LS($LZ)), _k'#1, t#1, _module.__default.N2S($LS($LS($LZ)), r#1)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.ValidPath_h($LS($LS($LZ)), _k'#1, t#1, _module.__default.N2S($LS($LS($LZ)), r#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma1'# (correctness)"} Impl$$_module.__default.Path__Lemma1_k_h(_k#0: Box, t#1: DatatypeType, r#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: DatatypeType;
  var num#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var ##s#0: DatatypeType;
  var ##num#0: DatatypeType;
  var p#0: DatatypeType
     where $Is(p#0, Tclass._module.Stream(TInt))
       && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap);
  var ##n#0: int;
  var ##num#1: DatatypeType;
  var _k##0: Box;
  var s##0: DatatypeType;
  var n##0: int;
  var num##0: DatatypeType;
  var ##_k#0: Box;
  var ##t#2: DatatypeType;
  var ##p#1: DatatypeType;
  var ##n#1: int;
  var ##num#2: DatatypeType;
  var ##_k#1: Box;
  var ##t#3: DatatypeType;
  var ##p#2: DatatypeType;
  var ##n#2: int;
  var ##num#3: DatatypeType;
  var ##_k#2: Box;
  var ##t#4: DatatypeType;
  var ##p#3: DatatypeType;
  var ##r#2: DatatypeType;
  var ##_k#3: Box;
  var ##t#5: DatatypeType;
  var ##p#4: DatatypeType;
  var ##r#3: DatatypeType;
  var ##_k#4: Box;
  var ##t#6: DatatypeType;
  var ##p#5: DatatypeType;
  var ##r#4: DatatypeType;
  var ##r#5: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Path_Lemma1'#, Impl$$_module.__default.Path__Lemma1_k_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Tree(t#1);
    assume $IsA#_module.CoOption(r#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#t0#0: DatatypeType, $ih#r0#0: DatatypeType :: 
      { _module.__default.ValidPath_h($LS($LZ), $ih#_k0#0, $ih#t0#0, _module.__default.N2S($LS($LZ), $ih#r0#0)) } 
      $Is($ih#t0#0, Tclass._module.Tree())
           && $Is($ih#r0#0, Tclass._module.CoOption(Tclass._module.Number()))
           && _module.__default.ValidPath__Alt($LS($LZ), $ih#t0#0, $ih#r0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= LitInt(1) && LitInt(1) < LitInt(1)))
         ==> _module.__default.ValidPath_h($LS($LZ), $ih#_k0#0, $ih#t0#0, _module.__default.N2S($LS($LZ), $ih#r0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(564,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0;
        if (r#1 == #_module.CoOption.None())
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(567,7)
            assume $IsA#_module.Tree(t#1);
            assert {:id "id713"} _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil())));
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(568,7)
            ##r#5 := r#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#5, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
            assume _module.__default.N2S#canCall(r#1);
            assume $IsA#_module.Stream(_module.__default.N2S($LS($LZ), r#1))
               && _module.__default.N2S#canCall(r#1);
            assert {:id "id714"} {:subsumption 0} $Eq#_module.Stream(TInt, 
              TInt, 
              $LS($LS($LZ)), 
              _module.__default.N2S($LS($LS($LZ)), r#1), 
              #_module.Stream.Nil());
            assume {:id "id715"} $Eq#_module.Stream(TInt, 
              TInt, 
              $LS($LS($LZ)), 
              _module.__default.N2S($LS($LZ), r#1), 
              #_module.Stream.Nil());
        }
        else if (r#1 == #_module.CoOption.Some($Box(_mcc#0#0)))
        {
            assume $Is(_mcc#0#0, Tclass._module.Number())
               && $IsAlloc(_mcc#0#0, Tclass._module.Number(), $Heap);
            havoc num#6;
            assume $Is(num#6, Tclass._module.Number())
               && $IsAlloc(num#6, Tclass._module.Number(), $Heap);
            assume {:id "id679"} let#0_0_0#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Number());
            assume {:id "id680"} num#6 == let#0_0_0#0#0;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(570,7)
            assume _module.Tree.Node_q(t#1);
            ##s#0 := _module.Tree.children(t#1);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
            ##num#0 := num#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
            assume _module.__default.ValidPath__Alt_k#canCall(_module.Tree.children(t#1), num#6);
            assume _module.Tree.Node_q(t#1)
               && _module.__default.ValidPath__Alt_k#canCall(_module.Tree.children(t#1), num#6);
            assert {:id "id681"} {:subsumption 0} _module.__default.ValidPath__Alt_k#canCall(_module.Tree.children(t#1), num#6)
               ==> _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#1), num#6)
                 || (_module.Number.Succ_q(num#6)
                   ==> (var next#0 := _module.Number._h4(num#6); 
                    _module.Stream.Cons_q(_module.Tree.children(t#1))));
            assert {:id "id682"} {:subsumption 0} _module.__default.ValidPath__Alt_k#canCall(_module.Tree.children(t#1), num#6)
               ==> _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#1), num#6)
                 || (_module.Number.Succ_q(num#6)
                   ==> (var next#0 := _module.Number._h4(num#6); 
                    _module.__default.ValidPath__Alt_k($LS($LS($LZ)), _module.Stream.tail(_module.Tree.children(t#1)), next#0)));
            assert {:id "id683"} {:subsumption 0} _module.__default.ValidPath__Alt_k#canCall(_module.Tree.children(t#1), num#6)
               ==> _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#1), num#6)
                 || (!_module.Number.Succ_q(num#6)
                   ==> (var r#2 := _module.Number._h5(num#6); 
                    _module.Stream.Cons_q(_module.Tree.children(t#1))));
            assert {:id "id684"} {:subsumption 0} _module.__default.ValidPath__Alt_k#canCall(_module.Tree.children(t#1), num#6)
               ==> _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#1), num#6)
                 || (!_module.Number.Succ_q(num#6)
                   ==> (var r#2 := _module.Number._h5(num#6); 
                    _module.__default.ValidPath__Alt($LS($LS($LZ)), 
                      $Unbox(_module.Stream.head(_module.Tree.children(t#1))): DatatypeType, 
                      r#2)));
            assume {:id "id685"} _module.__default.ValidPath__Alt_k($LS($LZ), _module.Tree.children(t#1), num#6);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(573,13)
            assume true;
            assert {:id "id686"} $Is(LitInt(0), Tclass._System.nat());
            ##n#0 := LitInt(0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##num#1 := num#6;
            // assume allocatedness for argument to function
            assume $IsAlloc(##num#1, Tclass._module.Number(), $Heap);
            assume _module.__default.N2S_k#canCall(LitInt(0), num#6);
            assume _module.__default.N2S_k#canCall(LitInt(0), num#6);
            p#0 := _module.__default.N2S_k($LS($LZ), LitInt(0), num#6);
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                ##_k#3 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                ##t#5 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#5, Tclass._module.Tree(), $Heap);
                ##r#3 := #_module.CoOption.Some($Box(num#6));
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#3, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(#_module.CoOption.Some($Box(num#6)));
                ##p#4 := _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#4, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))));
                assume _module.__default.N2S#canCall(#_module.CoOption.Some($Box(num#6)))
                   && _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assume {:id "id706"} _module.__default.ValidPath_h($LS($LZ), 
                  _k#0, 
                  t#1, 
                  _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                ##_k#4 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#4, TORDINAL, $Heap);
                ##t#6 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#6, Tclass._module.Tree(), $Heap);
                ##r#4 := r#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#4, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#1);
                ##p#5 := _module.__default.N2S($LS($LZ), r#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#5, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1));
                assume _module.__default.N2S#canCall(r#1)
                   && _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1));
                // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assert {:id "id707"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
                       ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id708"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
                       ==> (var tail#10 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1)); 
                        (var index#10 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1))): int; 
                          LitInt(0) <= index#10)));
                assert {:id "id709"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
                       ==> (var tail#10 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1)); 
                        (var index#10 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1))): int; 
                          (var ch#10 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#10); 
                            _module.Stream.Cons_q(ch#10)))));
                assert {:id "id710"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1))
                       ==> (var tail#10 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1)); 
                        (var index#10 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1))): int; 
                          (var ch#10 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#10); 
                            _module.__default.ValidPath_h($LS($LS($LZ)), 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $Unbox(_module.Stream.head(ch#10)): DatatypeType, 
                              tail#10)))));
                assert {:id "id711"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    t#1, 
                    _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#4: Box :: 
                        { _module.__default.ValidPath_h($LS($LS($LZ)), _k'#4, t#1, _module.__default.N2S($LS($LS($LZ)), r#1)) } 
                        ORD#Less(_k'#4, _k#0)
                           ==> _module.__default.ValidPath_h($LS($LS($LZ)), _k'#4, t#1, _module.__default.N2S($LS($LS($LZ)), r#1))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                ##_k#1 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                ##t#3 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, Tclass._module.Tree(), $Heap);
                assume {:id "id699"} $Is(LitInt(0), Tclass._System.nat());
                ##n#2 := LitInt(0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
                ##num#3 := num#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#3, Tclass._module.Number(), $Heap);
                assume _module.__default.N2S_k#canCall(LitInt(0), num#6);
                ##p#2 := _module.__default.N2S_k($LS($LZ), LitInt(0), num#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#2, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6));
                assume _module.__default.N2S_k#canCall(LitInt(0), num#6)
                   && _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assume {:id "id700"} _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                ##_k#2 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##t#4 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#4, Tclass._module.Tree(), $Heap);
                ##r#2 := #_module.CoOption.Some($Box(num#6));
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#2, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(#_module.CoOption.Some($Box(num#6)));
                ##p#3 := _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#3, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))));
                assume _module.__default.N2S#canCall(#_module.CoOption.Some($Box(num#6)))
                   && _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))));
                // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assert {:id "id701"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                       ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id702"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                       ==> (var tail#8 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6)))); 
                        (var index#8 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6))))): int; 
                          LitInt(0) <= index#8)));
                assert {:id "id703"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                       ==> (var tail#8 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6)))); 
                        (var index#8 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6))))): int; 
                          (var ch#8 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#8); 
                            _module.Stream.Cons_q(ch#8)))));
                assert {:id "id704"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                       ==> (var tail#8 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6)))); 
                        (var index#8 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6))))): int; 
                          (var ch#8 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#8); 
                            _module.__default.ValidPath_h($LS($LS($LZ)), 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $Unbox(_module.Stream.head(ch#8)): DatatypeType, 
                              tail#8)))));
                assert {:id "id705"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      t#1, 
                      _module.__default.N2S($LS($LZ), #_module.CoOption.Some($Box(num#6))))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#3: Box :: 
                        { _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#3, 
                            t#1, 
                            _module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6)))) } 
                        ORD#Less(_k'#3, _k#0)
                           ==> _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#3, 
                            t#1, 
                            _module.__default.N2S($LS($LS($LZ)), #_module.CoOption.Some($Box(num#6))))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assume true;
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assume {:id "id688"} true;
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(578,29)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := _k#0;
                assume _module.Tree.Node_q(t#1);
                assume _module.Tree.Node_q(t#1);
                // ProcessCallStmt: CheckSubrange
                s##0 := _module.Tree.children(t#1);
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id689"} $Is(LitInt(0), Tclass._System.nat());
                n##0 := LitInt(0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                num##0 := num#6;
                assert {:id "id690"} 0 <= LitInt(1)
                   || 
                  _k##0 == _k#0
                   || ORD#Less(_k##0, _k#0)
                   || LitInt(0) == LitInt(1);
                assert {:id "id691"} (_k##0 == _k#0 || ORD#Less(_k##0, _k#0))
                   && (_k##0 == _k#0 ==> LitInt(0) <= LitInt(1));
                call {:id "id692"} CoCall$$_module.__default.Path__Lemma1_k_k_h(_k##0, s##0, n##0, num##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                ##_k#0 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                ##t#2 := t#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#2, Tclass._module.Tree(), $Heap);
                assert {:id "id693"} $Is(LitInt(0), Tclass._System.nat());
                ##n#1 := LitInt(0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                ##num#2 := num#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#2, Tclass._module.Number(), $Heap);
                assume _module.__default.N2S_k#canCall(LitInt(0), num#6);
                ##p#1 := _module.__default.N2S_k($LS($LZ), LitInt(0), num#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6));
                assume _module.__default.N2S_k#canCall(LitInt(0), num#6)
                   && _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6));
                // ----- assert line2 <== line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(574,7)
                assert {:id "id694"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                       ==> _module.Tree#Equal(t#1, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id695"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                       ==> (var tail#6 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), LitInt(0), num#6)); 
                        (var index#6 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), LitInt(0), num#6))): int; 
                          LitInt(0) <= index#6)));
                assert {:id "id696"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                       ==> (var tail#6 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), LitInt(0), num#6)); 
                        (var index#6 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), LitInt(0), num#6))): int; 
                          (var ch#6 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#6); 
                            _module.Stream.Cons_q(ch#6)))));
                assert {:id "id697"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                       ==> (var tail#6 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), LitInt(0), num#6)); 
                        (var index#6 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), LitInt(0), num#6))): int; 
                          (var ch#6 := _module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), _module.Tree.children(t#1), index#6); 
                            _module.__default.ValidPath_h($LS($LS($LZ)), 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $Unbox(_module.Stream.head(ch#6)): DatatypeType, 
                              tail#6)))));
                assert {:id "id698"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S_k($LS($LZ), LitInt(0), num#6))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#2: Box :: 
                        { _module.__default.ValidPath_h($LS($LS($LZ)), _k'#2, t#1, _module.__default.N2S_k($LS($LS($LZ)), 0, num#6)) } 
                        ORD#Less(_k'#2, _k#0)
                           ==> _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#2, 
                            t#1, 
                            _module.__default.N2S_k($LS($LS($LZ)), LitInt(0), num#6))));
                assume false;
            }

            assume {:id "id712"} true
               ==> _module.__default.ValidPath_h($LS($LZ), _k#0, t#1, _module.__default.N2S($LS($LZ), r#1));
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(564,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#5: Box, t#2: DatatypeType, r#4: DatatypeType :: 
          { _module.__default.ValidPath_h($LS($LZ), _k'#5, t#2, _module.__default.N2S($LS($LZ), r#4)) } 
            { _module.__default.ValidPath__Alt($LS($LZ), t#2, r#4), ORD#Less(_k'#5, _k#0) } 
          $Is(t#2, Tclass._module.Tree())
               && $Is(r#4, Tclass._module.CoOption(Tclass._module.Number()))
               && 
              ORD#Less(_k'#5, _k#0)
               && _module.__default.ValidPath__Alt($LS($LZ), t#2, r#4)
             ==> _module.__default.ValidPath_h($LS($LZ), _k'#5, t#2, _module.__default.N2S($LS($LZ), r#4)));
    }
}



procedure {:verboseName "Path_Lemma1'' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma1_k_k(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0, 
    num#0: DatatypeType
       where $Is(num#0, Tclass._module.Number())
         && $IsAlloc(num#0, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma1'' (call)"} Call$$_module.__default.Path__Lemma1_k_k(s#0: DatatypeType
       where $Is(s#0, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#0, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#0), 
    n#0: int where LitInt(0) <= n#0, 
    num#0: DatatypeType
       where $Is(num#0, Tclass._module.Number())
         && $IsAlloc(num#0, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#0));
  // user-defined preconditions
  requires {:id "id718"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), num#0)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), 
        num#0)
       || (_module.Number.Succ_q(num#0)
         ==> (var next#0 := _module.Number._h4(num#0); 
          _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0))));
  requires {:id "id719"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), num#0)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), 
        num#0)
       || (_module.Number.Succ_q(num#0)
         ==> (var next#0 := _module.Number._h4(num#0); 
          _module.__default.ValidPath__Alt_k($LS($LS($LZ)), 
            _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0)), 
            next#0)));
  requires {:id "id720"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), num#0)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), 
        num#0)
       || (!_module.Number.Succ_q(num#0)
         ==> (var r#0 := _module.Number._h5(num#0); 
          _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0))));
  requires {:id "id721"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), num#0)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#0, n#0), 
        num#0)
       || (!_module.Number.Succ_q(num#0)
         ==> (var r#0 := _module.Number._h5(num#0); 
          _module.__default.ValidPath__Alt($LS($LS($LZ)), 
            $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#0, n#0))): DatatypeType, 
            r#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S_k#canCall(n#0, num#0)
     && _module.__default.ValidPath#canCall(#_module.Tree.Node(s#0), _module.__default.N2S_k($LS($LZ), n#0, num#0));
  free ensures {:id "id722"} _module.__default.ValidPath#canCall(#_module.Tree.Node(s#0), _module.__default.N2S_k($LS($LZ), n#0, num#0))
     && 
    _module.__default.ValidPath($LS($LZ), #_module.Tree.Node(s#0), _module.__default.N2S_k($LS($LZ), n#0, num#0))
     && (if _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#0, num#0))
       then _module.Tree#Equal(#_module.Tree.Node(s#0), #_module.Tree.Node(Lit(#_module.Stream.Nil())))
       else (var tail#1 := _module.Stream.tail(_module.__default.N2S_k($LS($LZ), n#0, num#0)); 
        (var index#1 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LZ), n#0, num#0))): int; 
          LitInt(0) <= index#1
             && (var ch#1 := _module.__default.Tail(Tclass._module.Tree(), 
                  $LS($LZ), 
                  _module.Tree.children(#_module.Tree.Node(s#0)), 
                  index#1); 
              _module.Stream.Cons_q(ch#1)
                 && _module.__default.ValidPath($LS($LZ), $Unbox(_module.Stream.head(ch#1)): DatatypeType, tail#1)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma1''# (co-call)"} CoCall$$_module.__default.Path__Lemma1_k_k_h(_k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#1), 
    n#1: int where LitInt(0) <= n#1, 
    num#1: DatatypeType
       where $Is(num#1, Tclass._module.Number())
         && $IsAlloc(num#1, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#1));
  // user-defined preconditions
  requires {:id "id723"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), num#1)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), 
        num#1)
       || (_module.Number.Succ_q(num#1)
         ==> (var next#2 := _module.Number._h4(num#1); 
          _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))));
  requires {:id "id724"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), num#1)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), 
        num#1)
       || (_module.Number.Succ_q(num#1)
         ==> (var next#2 := _module.Number._h4(num#1); 
          _module.__default.ValidPath__Alt_k($LS($LS($LZ)), 
            _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1)), 
            next#2)));
  requires {:id "id725"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), num#1)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), 
        num#1)
       || (!_module.Number.Succ_q(num#1)
         ==> (var r#2 := _module.Number._h5(num#1); 
          _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))));
  requires {:id "id726"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), num#1)
     ==> _module.__default.ValidPath__Alt_k($LS($LZ), 
        _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), 
        num#1)
       || (!_module.Number.Succ_q(num#1)
         ==> (var r#2 := _module.Number._h5(num#1); 
          _module.__default.ValidPath__Alt($LS($LS($LZ)), 
            $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType, 
            r#2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S_k#canCall(n#1, num#1)
     && _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1));
  free ensures {:id "id727"} _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
     && 
    _module.__default.ValidPath_h($LS($LZ), 
      _k#0, 
      #_module.Tree.Node(s#1), 
      _module.__default.N2S_k($LS($LZ), n#1, num#1))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         then _module.Tree#Equal(#_module.Tree.Node(s#1), #_module.Tree.Node(Lit(#_module.Stream.Nil())))
         else (var tail#3 := _module.Stream.tail(_module.__default.N2S_k($LS($LZ), n#1, num#1)); 
          (var index#3 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LZ), n#1, num#1))): int; 
            LitInt(0) <= index#3
               && (var ch#3 := _module.__default.Tail(Tclass._module.Tree(), 
                    $LS($LZ), 
                    _module.Tree.children(#_module.Tree.Node(s#1)), 
                    index#3); 
                _module.Stream.Cons_q(ch#3)
                   && _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(ch#3)): DatatypeType, 
                    tail#3))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.ValidPath_h($LS($LZ), 
            _k'#0, 
            #_module.Tree.Node(s#1), 
            _module.__default.N2S_k($LS($LZ), n#1, num#1)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.ValidPath_h($LS($LZ), 
            _k'#0, 
            #_module.Tree.Node(s#1), 
            _module.__default.N2S_k($LS($LZ), n#1, num#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma1''# (correctness)"} Impl$$_module.__default.Path__Lemma1_k_k_h(_k#0: Box, 
    s#1: DatatypeType
       where $Is(s#1, Tclass._module.Stream(Tclass._module.Tree()))
         && $IsAlloc(s#1, Tclass._module.Stream(Tclass._module.Tree()), $Heap)
         && $IsA#_module.Stream(s#1), 
    n#1: int where LitInt(0) <= n#1, 
    num#1: DatatypeType
       where $Is(num#1, Tclass._module.Number())
         && $IsAlloc(num#1, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#1))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id728"} _module.__default.ValidPath__Alt_k#canCall(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), num#1)
     && 
    _module.__default.ValidPath__Alt_k($LS($LZ), 
      _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1), 
      num#1)
     && (if _module.Number.Succ_q(num#1)
       then (var next#5 := _module.Number._h4(num#1); 
        _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
           && _module.__default.ValidPath__Alt_k($LS($LZ), 
            _module.Stream.tail(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1)), 
            next#5))
       else (var r#5 := _module.Number._h5(num#1); 
        _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
           && _module.__default.ValidPath__Alt($LS($LZ), 
            $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
            r#5)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S_k#canCall(n#1, num#1)
     && _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1));
  ensures {:id "id729"} _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.ValidPath_h($LS($LZ), 
        _k#0, 
        #_module.Tree.Node(s#1), 
        _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         ==> _module.Tree#Equal(#_module.Tree.Node(s#1), #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
  ensures {:id "id730"} _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.ValidPath_h($LS($LZ), 
        _k#0, 
        #_module.Tree.Node(s#1), 
        _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         ==> (var tail#4 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
          (var index#4 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))): int; 
            LitInt(0) <= index#4)));
  ensures {:id "id731"} _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.ValidPath_h($LS($LZ), 
        _k#0, 
        #_module.Tree.Node(s#1), 
        _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         ==> (var tail#4 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
          (var index#4 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))): int; 
            (var ch#4 := _module.__default.Tail(Tclass._module.Tree(), 
                  $LS($LS($LZ)), 
                  _module.Tree.children(#_module.Tree.Node(s#1)), 
                  index#4); 
              _module.Stream.Cons_q(ch#4)))));
  ensures {:id "id732"} _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.ValidPath_h($LS($LZ), 
        _k#0, 
        #_module.Tree.Node(s#1), 
        _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         ==> (var tail#4 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
          (var index#4 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))): int; 
            (var ch#4 := _module.__default.Tail(Tclass._module.Tree(), 
                  $LS($LS($LZ)), 
                  _module.Tree.children(#_module.Tree.Node(s#1)), 
                  index#4); 
              _module.__default.ValidPath_h($LS($LS($LZ)), 
                ORD#Minus(_k#0, ORD#FromNat(1)), 
                $Unbox(_module.Stream.head(ch#4)): DatatypeType, 
                tail#4)))));
  ensures {:id "id733"} _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.ValidPath_h($LS($LZ), 
        _k#0, 
        #_module.Tree.Node(s#1), 
        _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.ValidPath_h($LS($LS($LZ)), 
              _k'#1, 
              #_module.Tree.Node(s#1), 
              _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.ValidPath_h($LS($LS($LZ)), 
              _k'#1, 
              #_module.Tree.Node(s#1), 
              _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma1''# (correctness)"} Impl$$_module.__default.Path__Lemma1_k_k_h(_k#0: Box, s#1: DatatypeType, n#1: int, num#1: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#1#0: DatatypeType;
  var r#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var _k##0: Box;
  var t##0: DatatypeType;
  var ##s#2: DatatypeType;
  var ##n#2: int;
  var r##0: DatatypeType;
  var ##_k#0: Box;
  var ##t#1: DatatypeType;
  var ##s#3: DatatypeType;
  var ##n#3: int;
  var ##p#1: DatatypeType;
  var ##r#0: DatatypeType;
  var ##_k#1: Box;
  var ##t#2: DatatypeType;
  var ##s#4: DatatypeType;
  var ##n#4: int;
  var ##p#2: DatatypeType;
  var ##r#1: DatatypeType;
  var ##s#5: DatatypeType;
  var ##n#5: int;
  var ##s#6: DatatypeType;
  var ##n#6: int;
  var ##_k#2: Box;
  var ##t#3: DatatypeType;
  var ##s#7: DatatypeType;
  var ##n#7: int;
  var ##p#3: DatatypeType;
  var ##r#2: DatatypeType;
  var ##s#8: DatatypeType;
  var ##n#8: int;
  var ##_k#3: Box;
  var ##t#4: DatatypeType;
  var ##s#9: DatatypeType;
  var ##n#9: int;
  var ##p#4: DatatypeType;
  var ##r#3: DatatypeType;
  var ##_k#4: Box;
  var ##t#5: DatatypeType;
  var ##p#5: DatatypeType;
  var ##r#4: DatatypeType;
  var ##_k#5: Box;
  var ##t#6: DatatypeType;
  var ##p#6: DatatypeType;
  var ##r#5: DatatypeType;
  var ##_k#6: Box;
  var ##t#7: DatatypeType;
  var ##p#7: DatatypeType;
  var ##n#10: int;
  var ##num#2: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var next#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var _k##1: Box;
  var s##0: DatatypeType;
  var n##0: int;
  var num##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Path_Lemma1''#, Impl$$_module.__default.Path__Lemma1_k_k_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(s#1);
    assume $IsA#_module.Number(num#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#s0#0: DatatypeType, $ih#n0#0: int, $ih#num0#0: DatatypeType :: 
      { _module.__default.ValidPath_h($LS($LZ), 
          $ih#_k0#0, 
          #_module.Tree.Node($ih#s0#0), 
          _module.__default.N2S_k($LS($LZ), $ih#n0#0, $ih#num0#0)) } 
      $Is($ih#s0#0, Tclass._module.Stream(Tclass._module.Tree()))
           && LitInt(0) <= $ih#n0#0
           && $Is($ih#num0#0, Tclass._module.Number())
           && _module.__default.ValidPath__Alt_k($LS($LZ), 
            _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), $ih#s0#0, $ih#n0#0), 
            $ih#num0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && ((0 <= LitInt(0) && LitInt(0) < LitInt(0))
                 || (LitInt(0) == LitInt(0) && DtRank($ih#num0#0) < DtRank(num#1)))))
         ==> _module.__default.ValidPath_h($LS($LZ), 
          $ih#_k0#0, 
          #_module.Tree.Node($ih#s0#0), 
          _module.__default.N2S_k($LS($LZ), $ih#n0#0, $ih#num0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(587,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#1#0;
        havoc _mcc#0#0;
        if (num#1 == #_module.Number.Succ(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Number())
               && $IsAlloc(_mcc#0#0, Tclass._module.Number(), $Heap);
            havoc next#6;
            assume $Is(next#6, Tclass._module.Number())
               && $IsAlloc(next#6, Tclass._module.Number(), $Heap);
            assume {:id "id782"} let#0_1_0#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.Number());
            assume {:id "id783"} next#6 == let#0_1_0#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(590,25)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##1 := _k#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##0 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id784"} $Is(n#1 + 1, Tclass._System.nat());
            n##0 := n#1 + 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            num##0 := next#6;
            assert {:id "id785"} 0 <= LitInt(0) || ORD#Less(_k##1, _k#0) || LitInt(0) == LitInt(0);
            assert {:id "id786"} ORD#Less(_k##1, _k#0)
               || (_k##1 == _k#0
                 && (LitInt(0) < LitInt(0)
                   || (LitInt(0) == LitInt(0) && DtRank(num##0) < DtRank(num#1))));
            call {:id "id787"} CoCall$$_module.__default.Path__Lemma1_k_k_h(_k##1, s##0, n##0, num##0);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (num#1 == #_module.Number.Zero(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.CoOption(Tclass._module.Number()))
               && $IsAlloc(_mcc#1#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
            havoc r#6;
            assume $Is(r#6, Tclass._module.CoOption(Tclass._module.Number()))
               && $IsAlloc(r#6, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
            assume {:id "id734"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.CoOption(Tclass._module.Number()));
            assume {:id "id735"} r#6 == let#0_0_0#0#0;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                ##_k#5 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#5, TORDINAL, $Heap);
                ##t#6 := #_module.Tree.Node(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#6, Tclass._module.Tree(), $Heap);
                ##r#5 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#5, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##p#6 := #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6));
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#6, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, 
                  #_module.Tree.Node(s#1), 
                  #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                assume _module.__default.N2S#canCall(r#6)
                   && _module.__default.ValidPath_h#canCall(_k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assume {:id "id775"} _module.__default.ValidPath_h($LS($LZ), 
                  _k#0, 
                  #_module.Tree.Node(s#1), 
                  #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                ##_k#6 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#6, TORDINAL, $Heap);
                ##t#7 := #_module.Tree.Node(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#7, Tclass._module.Tree(), $Heap);
                ##n#10 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#10, Tclass._System.nat(), $Heap);
                ##num#2 := num#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#2, Tclass._module.Number(), $Heap);
                assume _module.__default.N2S_k#canCall(n#1, num#1);
                ##p#7 := _module.__default.N2S_k($LS($LZ), n#1, num#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#7, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1));
                assume _module.__default.N2S_k#canCall(n#1, num#1)
                   && _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1));
                // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assert {:id "id776"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
                       ==> _module.Tree#Equal(#_module.Tree.Node(s#1), #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id777"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
                       ==> (var tail#12 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
                        (var index#12 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))): int; 
                          LitInt(0) <= index#12)));
                assert {:id "id778"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
                       ==> (var tail#12 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
                        (var index#12 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))): int; 
                          (var ch#12 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children(#_module.Tree.Node(s#1)), 
                                index#12); 
                            _module.Stream.Cons_q(ch#12)))));
                assert {:id "id779"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
                       ==> (var tail#12 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
                        (var index#12 := $Unbox(_module.Stream.head(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))): int; 
                          (var ch#12 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children(#_module.Tree.Node(s#1)), 
                                index#12); 
                            _module.__default.ValidPath_h($LS($LS($LZ)), 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $Unbox(_module.Stream.head(ch#12)): DatatypeType, 
                              tail#12)))));
                assert {:id "id780"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    _k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, #_module.Tree.Node(s#1), _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#5: Box :: 
                        { _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#5, 
                            #_module.Tree.Node(s#1), 
                            _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)) } 
                        ORD#Less(_k'#5, _k#0)
                           ==> _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#5, 
                            #_module.Tree.Node(s#1), 
                            _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                ##s#8 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#8, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#8 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#8, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                if (_module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1)))
                {
                    assume {:id "id766"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assume {:id "id767"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                    ##s#9 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#9, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                    ##n#9 := n#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#9, Tclass._System.nat(), $Heap);
                    assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                    assume {:id "id768"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1));
                    ##t#4 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, Tclass._module.Tree(), $Heap);
                    ##r#3 := r#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##r#3, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                    assume _module.__default.N2S#canCall(r#6);
                    ##p#4 := _module.__default.N2S($LS($LZ), r#6);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##p#4, Tclass._module.Stream(TInt), $Heap);
                    assume _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6));
                }

                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1)
                   && (_module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                     ==> _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1)
                       && _module.__default.N2S#canCall(r#6)
                       && _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                        $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                        _module.__default.N2S($LS($LZ), r#6)));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assume {:id "id769"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                   && _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                ##_k#4 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#4, TORDINAL, $Heap);
                ##t#5 := #_module.Tree.Node(s#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#5, Tclass._module.Tree(), $Heap);
                ##r#4 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#4, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##p#5 := #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6));
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#5, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(_k#0, 
                  #_module.Tree.Node(s#1), 
                  #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                assume _module.__default.N2S#canCall(r#6)
                   && _module.__default.ValidPath_h#canCall(_k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assert {:id "id770"} {:subsumption 0} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                     && _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.Stream.Nil_q(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                       ==> _module.Tree#Equal(#_module.Tree.Node(s#1), #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id771"} {:subsumption 0} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                     && _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                       ==> (var tail#10 := _module.Stream.tail(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6))); 
                        (var index#10 := $Unbox(_module.Stream.head(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6)))): int; 
                          LitInt(0) <= index#10)));
                assert {:id "id772"} {:subsumption 0} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                     && _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                       ==> (var tail#10 := _module.Stream.tail(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6))); 
                        (var index#10 := $Unbox(_module.Stream.head(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6)))): int; 
                          (var ch#10 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children(#_module.Tree.Node(s#1)), 
                                index#10); 
                            _module.Stream.Cons_q(ch#10)))));
                assert {:id "id773"} {:subsumption 0} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                     && _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                       ==> (var tail#10 := _module.Stream.tail(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6))); 
                        (var index#10 := $Unbox(_module.Stream.head(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6)))): int; 
                          (var ch#10 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children(#_module.Tree.Node(s#1)), 
                                index#10); 
                            _module.__default.ValidPath_h($LS($LS($LZ)), 
                              ORD#Minus(_k#0, ORD#FromNat(1)), 
                              $Unbox(_module.Stream.head(ch#10)): DatatypeType, 
                              tail#10)))));
                assert {:id "id774"} {:subsumption 0} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                     && _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(_k#0, 
                    #_module.Tree.Node(s#1), 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      _k#0, 
                      #_module.Tree.Node(s#1), 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#4: Box :: 
                        { _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#4, 
                            #_module.Tree.Node(s#1), 
                            #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6))) } 
                        ORD#Less(_k'#4, _k#0)
                           ==> _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#4, 
                            #_module.Tree.Node(s#1), 
                            #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6)))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assume {:id "id751"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assume {:id "id752"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                ##s#4 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#4, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#4 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                assume {:id "id753"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1));
                ##t#2 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#2, Tclass._module.Tree(), $Heap);
                ##r#1 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##p#2 := _module.__default.N2S($LS($LZ), r#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#2, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                  _module.__default.N2S($LS($LZ), r#6));
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1)
                   && _module.__default.N2S#canCall(r#6)
                   && _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assume {:id "id754"} _module.__default.ValidPath_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                  _module.__default.N2S($LS($LZ), r#6));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(596,11)
                ##s#5 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#5, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#5 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                assert {:id "id755"} {:subsumption 0} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1));
                assume {:id "id756"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1));
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                ##s#6 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#6, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#6 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                if (_module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1)))
                {
                    assert {:id "id757"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id758"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                    ##s#7 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#7, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                    ##n#7 := n#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
                    assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                    assert {:id "id759"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1));
                    ##t#3 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#3, Tclass._module.Tree(), $Heap);
                    ##r#2 := r#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##r#2, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                    assume _module.__default.N2S#canCall(r#6);
                    ##p#3 := _module.__default.N2S($LS($LZ), r#6);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##p#3, Tclass._module.Stream(TInt), $Heap);
                    assume _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6));
                }

                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1)
                   && (_module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))
                     ==> _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1)
                       && _module.__default.N2S#canCall(r#6)
                       && _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                        $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                        _module.__default.N2S($LS($LZ), r#6)));
                // ----- assert line2 <== line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assert {:id "id760"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1));
                assert {:id "id761"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> _module.Tree#Equal($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType, 
                        #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id762"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> (var tail#8 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#6)); 
                        (var index#8 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#6))): int; 
                          LitInt(0) <= index#8)));
                assert {:id "id763"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> (var tail#8 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#6)); 
                        (var index#8 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#6))): int; 
                          (var ch#8 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType), 
                                index#8); 
                            _module.Stream.Cons_q(ch#8)))));
                assert {:id "id764"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> (var tail#8 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#6)); 
                        (var index#8 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#6))): int; 
                          (var ch#8 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType), 
                                index#8); 
                            _module.__default.ValidPath_h($LS($LS($LZ)), 
                              ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                              $Unbox(_module.Stream.head(ch#8)): DatatypeType, 
                              tail#8)))));
                assert {:id "id765"} {:subsumption 0} _module.__default.ValidPath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (LitInt(0) == ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> (forall _k'#3: Box :: 
                        { _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#3, 
                            $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType, 
                            _module.__default.N2S($LS($LS($LZ)), r#6)) } 
                        ORD#Less(_k'#3, ORD#Minus(_k#0, ORD#FromNat(1)))
                           ==> _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#3, 
                            $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType, 
                            _module.__default.N2S($LS($LS($LZ)), r#6))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assume true;
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assume {:id "id736"} true;
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(598,23)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id737"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id738"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                ##s#2 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#2, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#2 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                assert {:id "id739"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1));
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                // ProcessCallStmt: CheckSubrange
                t##0 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType;
                assume true;
                // ProcessCallStmt: CheckSubrange
                r##0 := r#6;
                assert {:id "id740"} 0 <= LitInt(0) || ORD#Less(_k##0, _k#0) || LitInt(1) == LitInt(0);
                assert {:id "id741"} ORD#Less(_k##0, _k#0) || (_k##0 == _k#0 && LitInt(1) < LitInt(0));
                call {:id "id742"} CoCall$$_module.__default.Path__Lemma1_k_h(_k##0, t##0, r##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assert {:id "id743"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id744"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, Tclass._module.Stream(Tclass._module.Tree()), $Heap);
                ##n#3 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1);
                assert {:id "id745"} _module.Stream.Cons_q(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1));
                ##t#1 := $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1, Tclass._module.Tree(), $Heap);
                ##r#0 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##p#1 := _module.__default.N2S($LS($LZ), r#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                  _module.__default.N2S($LS($LZ), r#6));
                assume _module.__default.Tail#canCall(Tclass._module.Tree(), s#1, n#1)
                   && _module.__default.N2S#canCall(r#6)
                   && _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6));
                // ----- assert line3 <== line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(592,7)
                assert {:id "id746"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> _module.Tree#Equal($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType, 
                        #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id747"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> (var tail#6 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#6)); 
                        (var index#6 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#6))): int; 
                          LitInt(0) <= index#6)));
                assert {:id "id748"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> (var tail#6 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#6)); 
                        (var index#6 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#6))): int; 
                          (var ch#6 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType), 
                                index#6); 
                            _module.Stream.Cons_q(ch#6)))));
                assert {:id "id749"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> (var tail#6 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#6)); 
                        (var index#6 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#6))): int; 
                          (var ch#6 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children($Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType), 
                                index#6); 
                            _module.__default.ValidPath_h($LS($LS($LZ)), 
                              ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                              $Unbox(_module.Stream.head(ch#6)): DatatypeType, 
                              tail#6)))));
                assert {:id "id750"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.ValidPath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.ValidPath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#1, n#1))): DatatypeType, 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (LitInt(0) == ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> (forall _k'#2: Box :: 
                        { _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#2, 
                            $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType, 
                            _module.__default.N2S($LS($LS($LZ)), r#6)) } 
                        ORD#Less(_k'#2, ORD#Minus(_k#0, ORD#FromNat(1)))
                           ==> _module.__default.ValidPath_h($LS($LS($LZ)), 
                            _k'#2, 
                            $Unbox(_module.Stream.head(_module.__default.Tail(Tclass._module.Tree(), $LS($LS($LZ)), s#1, n#1))): DatatypeType, 
                            _module.__default.N2S($LS($LS($LZ)), r#6))));
                assume false;
            }

            assume {:id "id781"} true
               ==> _module.__default.ValidPath_h($LS($LZ), 
                _k#0, 
                #_module.Tree.Node(s#1), 
                _module.__default.N2S_k($LS($LZ), n#1, num#1));
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(587,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#6: Box, s#2: DatatypeType, n#2: int, num#2: DatatypeType :: 
          { _module.__default.N2S_k($LS($LZ), n#2, num#2), #_module.Tree.Node(s#2), ORD#Less(_k'#6, _k#0) } 
            { _module.__default.ValidPath__Alt_k($LS($LZ), 
              _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#2, n#2), 
              num#2), ORD#Less(_k'#6, _k#0) } 
          $Is(s#2, Tclass._module.Stream(Tclass._module.Tree()))
               && LitInt(0) <= n#2
               && $Is(num#2, Tclass._module.Number())
               && 
              ORD#Less(_k'#6, _k#0)
               && _module.__default.ValidPath__Alt_k($LS($LZ), 
                _module.__default.Tail(Tclass._module.Tree(), $LS($LZ), s#2, n#2), 
                num#2)
             ==> _module.__default.ValidPath_h($LS($LZ), 
              _k'#6, 
              #_module.Tree.Node(s#2), 
              _module.__default.N2S_k($LS($LZ), n#2, num#2)));
    }
}



procedure {:verboseName "Path_Lemma2 (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma2(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma2 (call)"} Call$$_module.__default.Path__Lemma2(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsNeverEndingStream#canCall(TInt, p#0)
     && (_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
       ==> _module.__default.S2N#canCall(p#0)
         && _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0)));
  free ensures {:id "id791"} _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
     ==> _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0))
       && 
      _module.__default.InfinitePath($LS($LZ), _module.__default.S2N($LS($LZ), p#0))
       && (if _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0))
         then false
         else (var num#1 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LZ), p#0))): DatatypeType; 
          _module.__default.InfinitePath_k($LS($LZ), num#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma2 (correctness)"} Impl$$_module.__default.Path__Lemma2(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.IsNeverEndingStream#canCall(TInt, p#0)
     && (_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
       ==> _module.__default.S2N#canCall(p#0)
         && _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0)));
  ensures {:id "id792"} _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
     ==> 
    _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0))
     ==> _module.__default.InfinitePath($LS($LZ), _module.__default.S2N($LS($LZ), p#0))
       || (_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0)) ==> Lit(false));
  ensures {:id "id793"} _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
     ==> 
    _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0))
     ==> _module.__default.InfinitePath($LS($LZ), _module.__default.S2N($LS($LZ), p#0))
       || (!_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0))
         ==> (var num#2 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), p#0))): DatatypeType; 
          _module.__default.InfinitePath_k($LS($LS($LZ)), num#2)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma2 (correctness)"} Impl$$_module.__default.Path__Lemma2(p#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##s#1: DatatypeType;
  var p##0_0: DatatypeType;

    // AddMethodImpl: Path_Lemma2, Impl$$_module.__default.Path__Lemma2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(p#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#p0#0: DatatypeType :: 
      { _module.__default.S2N($LS($LZ), $ih#p0#0) } 
        { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0) } 
      true);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(606,3)
    ##s#1 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#1, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
    assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
    if (_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(607,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := p#0;
        call {:id "id794"} Call$$_module.__default.Path__Lemma2_k(p##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



procedure {:verboseName "Path_Lemma2' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma2_k(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma2' (call)"} Call$$_module.__default.Path__Lemma2_k(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0));
  // user-defined preconditions
  requires {:id "id797"} _module.__default.IsNeverEndingStream#canCall(TInt, p#0)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
       || (_module.Stream.Nil_q(p#0) ==> Lit(false));
  requires {:id "id798"} _module.__default.IsNeverEndingStream#canCall(TInt, p#0)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#0 := _module.Stream.tail(p#0); 
          _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), tail#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#0)
     && _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0));
  free ensures {:id "id799"} _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0))
     && 
    _module.__default.InfinitePath($LS($LZ), _module.__default.S2N($LS($LZ), p#0))
     && (if _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0))
       then false
       else (var num#1 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LZ), p#0))): DatatypeType; 
        _module.__default.InfinitePath_k($LS($LZ), num#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma2'# (co-call)"} CoCall$$_module.__default.Path__Lemma2_k_h(_k#0: Box, 
    p#1: DatatypeType
       where $Is(p#1, Tclass._module.Stream(TInt))
         && $IsAlloc(p#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#1));
  // user-defined preconditions
  requires {:id "id800"} _module.__default.IsNeverEndingStream#canCall(TInt, p#1)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1)
       || (_module.Stream.Nil_q(p#1) ==> Lit(false));
  requires {:id "id801"} _module.__default.IsNeverEndingStream#canCall(TInt, p#1)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1)
       || (!_module.Stream.Nil_q(p#1)
         ==> (var tail#2 := _module.Stream.tail(p#1); 
          _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), tail#2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#1)
     && _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1));
  free ensures {:id "id802"} _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1))
     && 
    _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
         then false
         else (var num#3 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LZ), p#1))): DatatypeType; 
          _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), num#3))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.InfinitePath_h($LS($LZ), _k'#0, _module.__default.S2N($LS($LZ), p#1)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.InfinitePath_h($LS($LZ), _k'#0, _module.__default.S2N($LS($LZ), p#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma2'# (correctness)"} Impl$$_module.__default.Path__Lemma2_k_h(_k#0: Box, 
    p#1: DatatypeType
       where $Is(p#1, Tclass._module.Stream(TInt))
         && $IsAlloc(p#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#1))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id803"} _module.__default.IsNeverEndingStream#canCall(TInt, p#1)
     && 
    _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1)
     && (if _module.Stream.Nil_q(p#1)
       then false
       else (var tail#5 := _module.Stream.tail(p#1); 
        _module.__default.IsNeverEndingStream(TInt, $LS($LZ), tail#5)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N#canCall(p#1)
     && _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1));
  ensures {:id "id804"} _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1))
     ==> _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
         ==> Lit(false));
  ensures {:id "id805"} _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1))
     ==> _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
         ==> (var num#4 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), p#1))): DatatypeType; 
          _module.__default.InfinitePath_k_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), num#4)));
  ensures {:id "id806"} _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1))
     ==> _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.InfinitePath_h($LS($LS($LZ)), _k'#1, _module.__default.S2N($LS($LS($LZ)), p#1)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.InfinitePath_h($LS($LS($LZ)), _k'#1, _module.__default.S2N($LS($LS($LZ)), p#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma2'# (correctness)"} Impl$$_module.__default.Path__Lemma2_k_h(_k#0: Box, p#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var n#0: int;
  var let#0_0_1#0#0: int;
  var _k##0: Box;
  var p##0: DatatypeType;
  var ##_k#0: Box;
  var ##r#1: DatatypeType;
  var ##p#1: DatatypeType;
  var ##_k#1: Box;
  var ##r#2: DatatypeType;
  var ##p#2: DatatypeType;
  var _k##1: Box;
  var p##1: DatatypeType;
  var n##0: int;
  var tail##0: DatatypeType;
  var ##_k#2: Box;
  var ##num#0: DatatypeType;
  var ##n#0: int;
  var ##tail#0: DatatypeType;
  var ##_k#3: Box;
  var ##num#1: DatatypeType;
  var ##n#1: int;
  var ##tail#1: DatatypeType;
  var ##_k#4: Box;
  var ##r#3: DatatypeType;
  var ##n#2: int;
  var ##tail#2: DatatypeType;
  var ##_k#5: Box;
  var ##r#4: DatatypeType;
  var ##n#3: int;
  var ##tail#3: DatatypeType;
  var ##_k#6: Box;
  var ##r#5: DatatypeType;
  var ##p#3: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Path_Lemma2'#, Impl$$_module.__default.Path__Lemma2_k_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(p#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#p0#0: DatatypeType :: 
      { _module.__default.InfinitePath_h($LS($LZ), $ih#_k0#0, _module.__default.S2N($LS($LZ), $ih#p0#0)) } 
      $Is($ih#p0#0, Tclass._module.Stream(TInt))
           && _module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0)
           && ORD#Less($ih#_k0#0, _k#0)
         ==> _module.__default.InfinitePath_h($LS($LZ), $ih#_k0#0, _module.__default.S2N($LS($LZ), $ih#p0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(613,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#0#0, _mcc#1#0;
        if (p#1 == #_module.Stream.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.Stream(TInt))
               && $IsAlloc(_mcc#1#0, Tclass._module.Stream(TInt), $Heap);
            havoc tail#6;
            assume $Is(tail#6, Tclass._module.Stream(TInt))
               && $IsAlloc(tail#6, Tclass._module.Stream(TInt), $Heap);
            assume {:id "id808"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Stream(TInt));
            assume {:id "id809"} tail#6 == let#0_0_0#0#0;
            havoc n#0;
            assume {:id "id810"} let#0_0_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_1#0#0, TInt);
            assume {:id "id811"} n#0 == let#0_0_1#0#0;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                ##_k#5 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#5, TORDINAL, $Heap);
                if (n#0 < 0)
                {
                    assume {:id "id841"} $Is(LitInt(0), Tclass._System.nat());
                }
                else
                {
                    assume {:id "id842"} $Is(n#0, Tclass._System.nat());
                }

                ##n#3 := (if n#0 < 0 then 0 else n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
                ##tail#3 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#3, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6);
                ##r#4 := #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#4, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath_h#canCall(_k#0, 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))));
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6)
                   && _module.__default.InfinitePath_h#canCall(_k#0, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume {:id "id843"} _module.__default.InfinitePath_h($LS($LZ), 
                  _k#0, 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                ##_k#6 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#6, TORDINAL, $Heap);
                ##p#3 := p#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#3, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(p#1);
                ##r#5 := _module.__default.S2N($LS($LZ), p#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#5, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1));
                assume _module.__default.S2N#canCall(p#1)
                   && _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1));
                // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assert {:id "id844"} {:subsumption 0} _module.__default.InfinitePath_h($LS($LZ), 
                    _k#0, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))))
                   ==> 
                  _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1))
                   ==> _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
                       ==> Lit(false));
                assert {:id "id845"} {:subsumption 0} _module.__default.InfinitePath_h($LS($LZ), 
                    _k#0, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))))
                   ==> 
                  _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1))
                   ==> _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#1))
                       ==> (var num#8 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), p#1))): DatatypeType; 
                        _module.__default.InfinitePath_k_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), num#8)));
                assert {:id "id846"} {:subsumption 0} _module.__default.InfinitePath_h($LS($LZ), 
                    _k#0, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))))
                   ==> 
                  _module.__default.InfinitePath_h#canCall(_k#0, _module.__default.S2N($LS($LZ), p#1))
                   ==> _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#3: Box :: 
                        { _module.__default.InfinitePath_h($LS($LS($LZ)), _k'#3, _module.__default.S2N($LS($LS($LZ)), p#1)) } 
                        ORD#Less(_k'#3, _k#0)
                           ==> _module.__default.InfinitePath_h($LS($LS($LZ)), _k'#3, _module.__default.S2N($LS($LS($LZ)), p#1))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume {:id "id833"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assume {:id "id834"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                if (n#0 < 0)
                {
                    assume {:id "id835"} $Is(LitInt(0), Tclass._System.nat());
                }
                else
                {
                    assume {:id "id836"} $Is(n#0, Tclass._System.nat());
                }

                ##n#1 := (if n#0 < 0 then 0 else n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                ##tail#1 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6);
                ##num#1 := _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#1, Tclass._module.Number(), $Heap);
                assume _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6));
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6)
                   && _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume {:id "id837"} _module.__default.InfinitePath_k_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                ##_k#4 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#4, TORDINAL, $Heap);
                if (n#0 < 0)
                {
                    assert {:id "id838"} $Is(LitInt(0), Tclass._System.nat());
                }
                else
                {
                    assert {:id "id839"} $Is(n#0, Tclass._System.nat());
                }

                ##n#2 := (if n#0 < 0 then 0 else n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
                ##tail#2 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#2, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6);
                ##r#3 := #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#3, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath_h#canCall(_k#0, 
                  #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))));
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6)
                   && _module.__default.InfinitePath_h#canCall(_k#0, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))));
                // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assert {:id "id840"} {:subsumption 0} _module.__default.InfinitePath_k_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))
                   ==> 
                  _module.__default.InfinitePath_h#canCall(_k#0, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))))
                   ==> _module.__default.InfinitePath_h($LS($LZ), 
                    _k#0, 
                    #_module.CoOption.Some($Box(_module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume {:id "id821"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assume {:id "id822"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                ##p#2 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#2, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(tail#6);
                ##r#2 := _module.__default.S2N($LS($LZ), tail#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#2, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.S2N($LS($LZ), tail#6));
                assume _module.__default.S2N#canCall(tail#6)
                   && _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.S2N($LS($LZ), tail#6));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume {:id "id823"} _module.__default.InfinitePath_h($LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.__default.S2N($LS($LZ), tail#6));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(622,24)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id824"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id825"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                p##1 := p#1;
                if (n#0 < 0)
                {
                }
                else
                {
                }

                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id826"} $Is((if n#0 < 0 then 0 else n#0), Tclass._System.nat());
                n##0 := (if n#0 < 0 then 0 else n#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                tail##0 := tail#6;
                call {:id "id827"} CoCall$$_module.__default.Path__Lemma2_k_k_h(_k##1, p##1, n##0, tail##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assert {:id "id828"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id829"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                if (n#0 < 0)
                {
                    assert {:id "id830"} $Is(LitInt(0), Tclass._System.nat());
                }
                else
                {
                    assert {:id "id831"} $Is(n#0, Tclass._System.nat());
                }

                ##n#0 := (if n#0 < 0 then 0 else n#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                ##tail#0 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##tail#0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6);
                ##num#0 := _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
                assume _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6));
                assume _module.__default.S2N_k#canCall((if n#0 < 0 then 0 else n#0), tail#6)
                   && _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6));
                // ----- assert line2 <== line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assert {:id "id832"} {:subsumption 0} _module.__default.InfinitePath_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.S2N($LS($LZ), tail#6))
                   ==> 
                  _module.__default.InfinitePath_k_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6))
                   ==> _module.__default.InfinitePath_k_h($LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.S2N_k($LS($LZ), (if n#0 < 0 then 0 else n#0), tail#6));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume true;
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assume {:id "id812"} true;
                // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(624,21)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id813"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id814"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                p##0 := tail#6;
                call {:id "id815"} CoCall$$_module.__default.Path__Lemma2_k_h(_k##0, p##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assert {:id "id816"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id817"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                ##p#1 := tail#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(tail#6);
                ##r#1 := _module.__default.S2N($LS($LZ), tail#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.S2N($LS($LZ), tail#6));
                assume _module.__default.S2N#canCall(tail#6)
                   && _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.S2N($LS($LZ), tail#6));
                // ----- assert line3 <== line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(616,5)
                assert {:id "id818"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.S2N($LS($LZ), tail#6))
                   ==> _module.__default.InfinitePath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.__default.S2N($LS($LZ), tail#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      _module.CoOption.None_q(_module.__default.S2N($LS($LZ), tail#6))
                       ==> Lit(false));
                assert {:id "id819"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.S2N($LS($LZ), tail#6))
                   ==> _module.__default.InfinitePath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.__default.S2N($LS($LZ), tail#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.CoOption.None_q(_module.__default.S2N($LS($LZ), tail#6))
                       ==> (var num#6 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), tail#6))): DatatypeType; 
                        _module.__default.InfinitePath_k_h($LS($LS($LZ)), ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), num#6)));
                assert {:id "id820"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.InfinitePath_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.S2N($LS($LZ), tail#6))
                   ==> _module.__default.InfinitePath_h($LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.__default.S2N($LS($LZ), tail#6))
                     || (LitInt(0) == ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> (forall _k'#2: Box :: 
                        { _module.__default.InfinitePath_h($LS($LS($LZ)), _k'#2, _module.__default.S2N($LS($LS($LZ)), tail#6)) } 
                        ORD#Less(_k'#2, ORD#Minus(_k#0, ORD#FromNat(1)))
                           ==> _module.__default.InfinitePath_h($LS($LS($LZ)), _k'#2, _module.__default.S2N($LS($LS($LZ)), tail#6))));
                assume false;
            }

            assume {:id "id847"} true
               ==> _module.__default.InfinitePath_h($LS($LZ), _k#0, _module.__default.S2N($LS($LZ), p#1));
        }
        else if (p#1 == #_module.Stream.Nil())
        {
            assert {:id "id807"} false;
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(613,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#4: Box, p#2: DatatypeType :: 
          { _module.__default.S2N($LS($LZ), p#2), ORD#Less(_k'#4, _k#0) } 
            { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#2), ORD#Less(_k'#4, _k#0) } 
          $Is(p#2, Tclass._module.Stream(TInt))
               && 
              ORD#Less(_k'#4, _k#0)
               && _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#2)
             ==> _module.__default.InfinitePath_h($LS($LZ), _k'#4, _module.__default.S2N($LS($LZ), p#2)));
    }
}



procedure {:verboseName "Path_Lemma2'' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma2_k_k(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0), 
    n#0: int where LitInt(0) <= n#0, 
    tail#0: DatatypeType
       where $Is(tail#0, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma2'' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma2_k_k(p#0: DatatypeType, n#0: int, tail#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##num#0: DatatypeType;
  var ##n#0: int;
  var ##tail#0: DatatypeType;


    // AddMethodImpl: Path_Lemma2'', CheckWellFormed$$_module.__default.Path__Lemma2_k_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##s#0 := p#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0);
    assume {:id "id848"} _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0);
    assert {:id "id849"} _module.Stream.Cons_q(p#0);
    assume {:id "id850"} $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), _module.Stream.tail(p#0), tail#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    ##tail#0 := tail#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##tail#0, Tclass._module.Stream(TInt), $Heap);
    assume _module.__default.S2N_k#canCall(n#0, tail#0);
    ##num#0 := _module.__default.S2N_k($LS($LZ), n#0, tail#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##num#0, Tclass._module.Number(), $Heap);
    assume _module.__default.InfinitePath_k#canCall(_module.__default.S2N_k($LS($LZ), n#0, tail#0));
    assume {:id "id851"} _module.__default.InfinitePath_k($LS($LZ), _module.__default.S2N_k($LS($LZ), n#0, tail#0));
}



procedure {:verboseName "Path_Lemma2'' (call)"} Call$$_module.__default.Path__Lemma2_k_k(p#0: DatatypeType
       where $Is(p#0, Tclass._module.Stream(TInt))
         && $IsAlloc(p#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#0), 
    n#0: int where LitInt(0) <= n#0, 
    tail#0: DatatypeType
       where $Is(tail#0, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#0, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#0));
  // user-defined preconditions
  requires {:id "id852"} _module.__default.IsNeverEndingStream#canCall(TInt, p#0)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
       || (_module.Stream.Nil_q(p#0) ==> Lit(false));
  requires {:id "id853"} _module.__default.IsNeverEndingStream#canCall(TInt, p#0)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0)
       || (!_module.Stream.Nil_q(p#0)
         ==> (var tail#1 := _module.Stream.tail(p#0); 
          _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), tail#1)));
  requires {:id "id854"} $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), _module.Stream.tail(p#0), tail#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N_k#canCall(n#0, tail#0)
     && _module.__default.InfinitePath_k#canCall(_module.__default.S2N_k($LS($LZ), n#0, tail#0));
  free ensures {:id "id855"} _module.__default.InfinitePath_k#canCall(_module.__default.S2N_k($LS($LZ), n#0, tail#0))
     && 
    _module.__default.InfinitePath_k($LS($LZ), _module.__default.S2N_k($LS($LZ), n#0, tail#0))
     && (if _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#0, tail#0))
       then (var next#1 := _module.Number._h4(_module.__default.S2N_k($LS($LZ), n#0, tail#0)); 
        _module.__default.InfinitePath_k($LS($LZ), next#1))
       else (var r#1 := _module.Number._h5(_module.__default.S2N_k($LS($LZ), n#0, tail#0)); 
        _module.__default.InfinitePath($LS($LZ), r#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma2''# (co-call)"} CoCall$$_module.__default.Path__Lemma2_k_k_h(_k#0: Box, 
    p#1: DatatypeType
       where $Is(p#1, Tclass._module.Stream(TInt))
         && $IsAlloc(p#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#1), 
    n#1: int where LitInt(0) <= n#1, 
    tail#3: DatatypeType
       where $Is(tail#3, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#3, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#3));
  // user-defined preconditions
  requires {:id "id856"} _module.__default.IsNeverEndingStream#canCall(TInt, p#1)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1)
       || (_module.Stream.Nil_q(p#1) ==> Lit(false));
  requires {:id "id857"} _module.__default.IsNeverEndingStream#canCall(TInt, p#1)
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1)
       || (!_module.Stream.Nil_q(p#1)
         ==> (var tail#4 := _module.Stream.tail(p#1); 
          _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), tail#4)));
  requires {:id "id858"} $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), _module.Stream.tail(p#1), tail#3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N_k#canCall(n#1, tail#3)
     && _module.__default.InfinitePath_k_h#canCall(_k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3));
  free ensures {:id "id859"} _module.__default.InfinitePath_k_h#canCall(_k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     && 
    _module.__default.InfinitePath_k_h($LS($LZ), _k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         then (var next#3 := _module.Number._h4(_module.__default.S2N_k($LS($LZ), n#1, tail#3)); 
          _module.__default.InfinitePath_k_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), next#3))
         else (var r#3 := _module.Number._h5(_module.__default.S2N_k($LS($LZ), n#1, tail#3)); 
          _module.__default.InfinitePath_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), r#3))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.InfinitePath_k_h($LS($LZ), _k'#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.InfinitePath_k_h($LS($LZ), _k'#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma2''# (correctness)"} Impl$$_module.__default.Path__Lemma2_k_k_h(_k#0: Box, 
    p#1: DatatypeType
       where $Is(p#1, Tclass._module.Stream(TInt))
         && $IsAlloc(p#1, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(p#1), 
    n#1: int where LitInt(0) <= n#1, 
    tail#3: DatatypeType
       where $Is(tail#3, Tclass._module.Stream(TInt))
         && $IsAlloc(tail#3, Tclass._module.Stream(TInt), $Heap)
         && $IsA#_module.Stream(tail#3))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id860"} _module.__default.IsNeverEndingStream#canCall(TInt, p#1)
     && 
    _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#1)
     && (if _module.Stream.Nil_q(p#1)
       then false
       else (var tail#7 := _module.Stream.tail(p#1); 
        _module.__default.IsNeverEndingStream(TInt, $LS($LZ), tail#7)));
  requires {:id "id861"} $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), _module.Stream.tail(p#1), tail#3);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.S2N_k#canCall(n#1, tail#3)
     && _module.__default.InfinitePath_k_h#canCall(_k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3));
  ensures {:id "id862"} _module.__default.InfinitePath_k_h#canCall(_k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.InfinitePath_k_h($LS($LZ), _k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         ==> (var next#4 := _module.Number._h4(_module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)); 
          _module.__default.InfinitePath_k_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), next#4)));
  ensures {:id "id863"} _module.__default.InfinitePath_k_h#canCall(_k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.InfinitePath_k_h($LS($LZ), _k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Number.Succ_q(_module.__default.S2N_k($LS($LZ), n#1, tail#3))
         ==> (var r#4 := _module.Number._h5(_module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)); 
          _module.__default.InfinitePath_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), r#4)));
  ensures {:id "id864"} _module.__default.InfinitePath_k_h#canCall(_k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
     ==> _module.__default.InfinitePath_k_h($LS($LZ), _k#0, _module.__default.S2N_k($LS($LZ), n#1, tail#3))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.InfinitePath_k_h($LS($LS($LZ)), _k'#1, _module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.InfinitePath_k_h($LS($LS($LZ)), _k'#1, _module.__default.S2N_k($LS($LS($LZ)), n#1, tail#3))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma2''# (correctness)"} Impl$$_module.__default.Path__Lemma2_k_k_h(_k#0: Box, p#1: DatatypeType, n#1: int, tail#3: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var p##0: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Path_Lemma2''#, Impl$$_module.__default.Path__Lemma2_k_k_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Stream(p#1);
    assume $IsA#_module.Stream(tail#3);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#p0#0: DatatypeType, $ih#n0#0: int, $ih#tail0#0: DatatypeType :: 
      { _module.__default.InfinitePath_k_h($LS($LZ), $ih#_k0#0, _module.__default.S2N_k($LS($LZ), $ih#n0#0, $ih#tail0#0)), _module.Stream.tail($ih#p0#0) } 
        { _module.__default.InfinitePath_k_h($LS($LZ), $ih#_k0#0, _module.__default.S2N_k($LS($LZ), $ih#n0#0, $ih#tail0#0)), _module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0) } 
      $Is($ih#p0#0, Tclass._module.Stream(TInt))
           && LitInt(0) <= $ih#n0#0
           && $Is($ih#tail0#0, Tclass._module.Stream(TInt))
           && 
          _module.__default.IsNeverEndingStream(TInt, $LS($LZ), $ih#p0#0)
           && $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), _module.Stream.tail($ih#p0#0), $ih#tail0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#n0#0 && $ih#n0#0 < n#1))
         ==> _module.__default.InfinitePath_k_h($LS($LZ), $ih#_k0#0, _module.__default.S2N_k($LS($LZ), $ih#n0#0, $ih#tail0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(632,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(633,15)
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id865"} ORD#IsNat(Lit(ORD#FromNat(1)));
        assert {:id "id866"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0 := tail#3;
        call {:id "id867"} CoCall$$_module.__default.Path__Lemma2_k_h(_k##0, p##0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(632,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, p#2: DatatypeType, n#2: int, tail#8: DatatypeType :: 
          { _module.__default.S2N_k($LS($LZ), n#2, tail#8), _module.Stream.tail(p#2), ORD#Less(_k'#2, _k#0) } 
            { _module.__default.S2N_k($LS($LZ), n#2, tail#8), _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#2), ORD#Less(_k'#2, _k#0) } 
          $Is(p#2, Tclass._module.Stream(TInt))
               && LitInt(0) <= n#2
               && $Is(tail#8, Tclass._module.Stream(TInt))
               && 
              ORD#Less(_k'#2, _k#0)
               && 
              _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#2)
               && $Eq#_module.Stream(TInt, TInt, $LS($LS($LZ)), _module.Stream.tail(p#2), tail#8)
             ==> _module.__default.InfinitePath_k_h($LS($LZ), _k'#2, _module.__default.S2N_k($LS($LZ), n#2, tail#8)));
    }
}



procedure {:verboseName "Path_Lemma3 (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma3(r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma3 (call)"} Call$$_module.__default.Path__Lemma3(r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.InfinitePath#canCall(r#0)
     && (_module.__default.InfinitePath($LS($LZ), r#0)
       ==> _module.__default.N2S#canCall(r#0)
         && _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#0)));
  free ensures {:id "id871"} _module.__default.InfinitePath($LS($LZ), r#0)
     ==> _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#0))
       && 
      _module.__default.IsNeverEndingStream(TInt, $LS($LZ), _module.__default.N2S($LS($LZ), r#0))
       && (if _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
         then false
         else (var tail#1 := _module.Stream.tail(_module.__default.N2S($LS($LZ), r#0)); 
          _module.__default.IsNeverEndingStream(TInt, $LS($LZ), tail#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma3 (correctness)"} Impl$$_module.__default.Path__Lemma3(r#0: DatatypeType
       where $Is(r#0, Tclass._module.CoOption(Tclass._module.Number()))
         && $IsAlloc(r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap)
         && $IsA#_module.CoOption(r#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.InfinitePath#canCall(r#0)
     && (_module.__default.InfinitePath($LS($LZ), r#0)
       ==> _module.__default.N2S#canCall(r#0)
         && _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#0)));
  ensures {:id "id872"} _module.__default.InfinitePath($LS($LZ), r#0)
     ==> 
    _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#0))
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), _module.__default.N2S($LS($LZ), r#0))
       || (_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0)) ==> Lit(false));
  ensures {:id "id873"} _module.__default.InfinitePath($LS($LZ), r#0)
     ==> 
    _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#0))
     ==> _module.__default.IsNeverEndingStream(TInt, $LS($LZ), _module.__default.N2S($LS($LZ), r#0))
       || (!_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#0))
         ==> (var tail#2 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#0)); 
          _module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), tail#2)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma3 (correctness)"} Impl$$_module.__default.Path__Lemma3(r#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##r#2: DatatypeType;
  var _mcc#0#0_0_0: DatatypeType;
  var num#0_0_0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var n##0_0_0: int;
  var num##0_0_0: DatatypeType;

    // AddMethodImpl: Path_Lemma3, Impl$$_module.__default.Path__Lemma3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.CoOption(r#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#r0#0: DatatypeType :: 
      { _module.__default.N2S($LS($LZ), $ih#r0#0) } 
        { _module.__default.InfinitePath($LS($LZ), $ih#r0#0) } 
      true);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(638,3)
    ##r#2 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#2, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
    assume _module.__default.InfinitePath#canCall(r#0);
    assume _module.__default.InfinitePath#canCall(r#0);
    if (_module.__default.InfinitePath($LS($LZ), r#0))
    {
        assume true;
        havoc _mcc#0#0_0_0;
        if (r#0 == #_module.CoOption.Some($Box(_mcc#0#0_0_0)))
        {
            assume $Is(_mcc#0#0_0_0, Tclass._module.Number());
            havoc num#0_0_0;
            assume $Is(num#0_0_0, Tclass._module.Number())
               && $IsAlloc(num#0_0_0, Tclass._module.Number(), $Heap);
            assume {:id "id875"} let#0_0_0#0#0 == _mcc#0#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.Number());
            assume {:id "id876"} num#0_0_0 == let#0_0_0#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(640,37)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id877"} $Is(LitInt(0), Tclass._System.nat());
            n##0_0_0 := LitInt(0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            num##0_0_0 := num#0_0_0;
            call {:id "id878"} Call$$_module.__default.Path__Lemma3_k(n##0_0_0, num##0_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (r#0 == #_module.CoOption.None())
        {
            assert {:id "id874"} false;
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



procedure {:verboseName "Path_Lemma3' (well-formedness)"} CheckWellFormed$$_module.__default.Path__Lemma3_k(n#0: int where LitInt(0) <= n#0, 
    num#0: DatatypeType
       where $Is(num#0, Tclass._module.Number())
         && $IsAlloc(num#0, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Path_Lemma3' (call)"} Call$$_module.__default.Path__Lemma3_k(n#0: int where LitInt(0) <= n#0, 
    num#0: DatatypeType
       where $Is(num#0, Tclass._module.Number())
         && $IsAlloc(num#0, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#0));
  // user-defined preconditions
  requires {:id "id881"} _module.__default.InfinitePath_k#canCall(num#0)
     ==> _module.__default.InfinitePath_k($LS($LZ), num#0)
       || (_module.Number.Succ_q(num#0)
         ==> (var next#0 := _module.Number._h4(num#0); 
          _module.__default.InfinitePath_k($LS($LS($LZ)), next#0)));
  requires {:id "id882"} _module.__default.InfinitePath_k#canCall(num#0)
     ==> _module.__default.InfinitePath_k($LS($LZ), num#0)
       || (!_module.Number.Succ_q(num#0)
         ==> (var r#0 := _module.Number._h5(num#0); 
          _module.__default.InfinitePath($LS($LS($LZ)), r#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S_k#canCall(n#0, num#0)
     && _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S_k($LS($LZ), n#0, num#0));
  free ensures {:id "id883"} _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S_k($LS($LZ), n#0, num#0))
     && 
    _module.__default.IsNeverEndingStream(TInt, $LS($LZ), _module.__default.N2S_k($LS($LZ), n#0, num#0))
     && (if _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#0, num#0))
       then false
       else (var tail#1 := _module.Stream.tail(_module.__default.N2S_k($LS($LZ), n#0, num#0)); 
        _module.__default.IsNeverEndingStream(TInt, $LS($LZ), tail#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma3'# (co-call)"} CoCall$$_module.__default.Path__Lemma3_k_h(_k#0: Box, 
    n#1: int where LitInt(0) <= n#1, 
    num#1: DatatypeType
       where $Is(num#1, Tclass._module.Number())
         && $IsAlloc(num#1, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#1));
  // user-defined preconditions
  requires {:id "id884"} _module.__default.InfinitePath_k#canCall(num#1)
     ==> _module.__default.InfinitePath_k($LS($LZ), num#1)
       || (_module.Number.Succ_q(num#1)
         ==> (var next#2 := _module.Number._h4(num#1); 
          _module.__default.InfinitePath_k($LS($LS($LZ)), next#2)));
  requires {:id "id885"} _module.__default.InfinitePath_k#canCall(num#1)
     ==> _module.__default.InfinitePath_k($LS($LZ), num#1)
       || (!_module.Number.Succ_q(num#1)
         ==> (var r#2 := _module.Number._h5(num#1); 
          _module.__default.InfinitePath($LS($LS($LZ)), r#2)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S_k#canCall(n#1, num#1)
     && _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1));
  free ensures {:id "id886"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
     && 
    _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         then false
         else (var tail#3 := _module.Stream.tail(_module.__default.N2S_k($LS($LZ), n#1, num#1)); 
          _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), tail#3))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (forall _k'#0: Box :: 
        { _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k'#0, _module.__default.N2S_k($LS($LZ), n#1, num#1)) } 
        ORD#Less(_k'#0, _k#0)
           ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k'#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Path_Lemma3'# (correctness)"} Impl$$_module.__default.Path__Lemma3_k_h(_k#0: Box, 
    n#1: int where LitInt(0) <= n#1, 
    num#1: DatatypeType
       where $Is(num#1, Tclass._module.Number())
         && $IsAlloc(num#1, Tclass._module.Number(), $Heap)
         && $IsA#_module.Number(num#1))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id887"} _module.__default.InfinitePath_k#canCall(num#1)
     && 
    _module.__default.InfinitePath_k($LS($LZ), num#1)
     && (if _module.Number.Succ_q(num#1)
       then (var next#5 := _module.Number._h4(num#1); 
        _module.__default.InfinitePath_k($LS($LZ), next#5))
       else (var r#5 := _module.Number._h5(num#1); 
        _module.__default.InfinitePath($LS($LZ), r#5)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.N2S_k#canCall(n#1, num#1)
     && _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1));
  ensures {:id "id888"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         ==> Lit(false));
  ensures {:id "id889"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
         ==> (var tail#4 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
          _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), tail#4)));
  ensures {:id "id890"} _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
     ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (forall _k'#1: Box :: 
          { _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), _k'#1, _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)) } 
          ORD#Less(_k'#1, _k#0)
             ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), _k'#1, _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Path_Lemma3'# (correctness)"} Impl$$_module.__default.Path__Lemma3_k_h(_k#0: Box, n#1: int, num#1: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#1#0: DatatypeType;
  var r#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var _k##0: Box;
  var n##0: int;
  var num##0: DatatypeType;
  var ##_k#0: Box;
  var ##s#1: DatatypeType;
  var ##r#0: DatatypeType;
  var ##_k#1: Box;
  var ##s#2: DatatypeType;
  var ##r#1: DatatypeType;
  var ##_k#2: Box;
  var ##s#3: DatatypeType;
  var ##r#2: DatatypeType;
  var ##_k#3: Box;
  var ##s#4: DatatypeType;
  var ##r#3: DatatypeType;
  var ##_k#4: Box;
  var ##s#5: DatatypeType;
  var ##n#1: int;
  var ##num#2: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var next#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var _k##1: Box;
  var n##1: int;
  var num##1: DatatypeType;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: Path_Lemma3'#, Impl$$_module.__default.Path__Lemma3_k_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Number(num#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#n0#0: int, $ih#num0#0: DatatypeType :: 
      { _module.__default.IsNeverEndingStream_h(TInt, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.N2S_k($LS($LZ), $ih#n0#0, $ih#num0#0)) } 
      LitInt(0) <= $ih#n0#0
           && $Is($ih#num0#0, Tclass._module.Number())
           && _module.__default.InfinitePath_k($LS($LZ), $ih#num0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && DtRank($ih#num0#0) < DtRank(num#1)))
         ==> _module.__default.IsNeverEndingStream_h(TInt, 
          $LS($LZ), 
          $ih#_k0#0, 
          _module.__default.N2S_k($LS($LZ), $ih#n0#0, $ih#num0#0)));
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(648,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#1#0;
        havoc _mcc#0#0;
        if (num#1 == #_module.Number.Succ(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Number())
               && $IsAlloc(_mcc#0#0, Tclass._module.Number(), $Heap);
            havoc next#6;
            assume $Is(next#6, Tclass._module.Number())
               && $IsAlloc(next#6, Tclass._module.Number(), $Heap);
            assume {:id "id916"} let#0_1_0#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.Number());
            assume {:id "id917"} next#6 == let#0_1_0#0#0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(661,24)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##1 := _k#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id918"} $Is(n#1 + 1, Tclass._System.nat());
            n##1 := n#1 + 1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            num##1 := next#6;
            assert {:id "id919"} ORD#Less(_k##1, _k#0) || (_k##1 == _k#0 && DtRank(num##1) < DtRank(num#1));
            call {:id "id920"} CoCall$$_module.__default.Path__Lemma3_k_h(_k##1, n##1, num##1);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (num#1 == #_module.Number.Zero(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.CoOption(Tclass._module.Number()))
               && $IsAlloc(_mcc#1#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
            havoc r#6;
            assume $Is(r#6, Tclass._module.CoOption(Tclass._module.Number()))
               && $IsAlloc(r#6, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
            assume {:id "id891"} let#0_0_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.CoOption(Tclass._module.Number()));
            assume {:id "id892"} r#6 == let#0_0_0#0#0;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assume true;
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                ##_k#3 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                ##r#3 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#3, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##s#4 := #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6));
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#4, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream_h#canCall(TInt, 
                  _k#0, 
                  #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                assume _module.__default.N2S#canCall(r#6)
                   && _module.__default.IsNeverEndingStream_h#canCall(TInt, 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assume {:id "id911"} _module.__default.IsNeverEndingStream_h(TInt, 
                  $LS($LZ), 
                  _k#0, 
                  #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                ##_k#4 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#4, TORDINAL, $Heap);
                ##n#1 := n#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                ##num#2 := num#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##num#2, Tclass._module.Number(), $Heap);
                assume _module.__default.N2S_k#canCall(n#1, num#1);
                ##s#5 := _module.__default.N2S_k($LS($LZ), n#1, num#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#5, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1));
                assume _module.__default.N2S_k#canCall(n#1, num#1)
                   && _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1));
                // ----- assert line0 <== line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assert {:id "id912"} {:subsumption 0} _module.__default.IsNeverEndingStream_h(TInt, 
                    $LS($LZ), 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
                       ==> Lit(false));
                assert {:id "id913"} {:subsumption 0} _module.__default.IsNeverEndingStream_h(TInt, 
                    $LS($LZ), 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S_k($LS($LZ), n#1, num#1))
                       ==> (var tail#10 := _module.Stream.tail(_module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)); 
                        _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), tail#10)));
                assert {:id "id914"} {:subsumption 0} _module.__default.IsNeverEndingStream_h(TInt, 
                    $LS($LZ), 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#4: Box :: 
                        { _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), _k'#4, _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1)) } 
                        ORD#Less(_k'#4, _k#0)
                           ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), _k'#4, _module.__default.N2S_k($LS($LS($LZ)), n#1, num#1))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assume {:id "id905"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assume {:id "id906"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                ##r#1 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##s#2 := _module.__default.N2S($LS($LZ), r#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#2, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream_h#canCall(TInt, ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.N2S($LS($LZ), r#6));
                assume _module.__default.N2S#canCall(r#6)
                   && _module.__default.IsNeverEndingStream_h#canCall(TInt, ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.N2S($LS($LZ), r#6));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assume {:id "id907"} _module.__default.IsNeverEndingStream_h(TInt, 
                  $LS($LZ), 
                  ORD#Minus(_k#0, ORD#FromNat(1)), 
                  _module.__default.N2S($LS($LZ), r#6));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                ##_k#2 := _k#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##r#2 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#2, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##s#3 := #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6));
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream_h#canCall(TInt, 
                  _k#0, 
                  #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                assume _module.__default.N2S#canCall(r#6)
                   && _module.__default.IsNeverEndingStream_h#canCall(TInt, 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)));
                // ----- assert line1 <== line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assert {:id "id908"} {:subsumption 0} _module.__default.IsNeverEndingStream_h(TInt, 
                    $LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, 
                      $LS($LZ), 
                      _k#0, 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      _module.Stream.Nil_q(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                       ==> Lit(false));
                assert {:id "id909"} {:subsumption 0} _module.__default.IsNeverEndingStream_h(TInt, 
                    $LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, 
                      $LS($LZ), 
                      _k#0, 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (0 < ORD#Offset(_k#0)
                       ==> 
                      !_module.Stream.Nil_q(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                       ==> (var tail#8 := _module.Stream.tail(#_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6))); 
                        _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), tail#8)));
                assert {:id "id910"} {:subsumption 0} _module.__default.IsNeverEndingStream_h(TInt, 
                    $LS($LZ), 
                    ORD#Minus(_k#0, ORD#FromNat(1)), 
                    _module.__default.N2S($LS($LZ), r#6))
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, 
                    _k#0, 
                    #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, 
                      $LS($LZ), 
                      _k#0, 
                      #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LZ), r#6)))
                     || (LitInt(0) == ORD#Offset(_k#0)
                       ==> (forall _k'#3: Box :: 
                        { _module.__default.IsNeverEndingStream_h(TInt, 
                            $LS($LS($LZ)), 
                            _k'#3, 
                            #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6))) } 
                        ORD#Less(_k'#3, _k#0)
                           ==> _module.__default.IsNeverEndingStream_h(TInt, 
                            $LS($LS($LZ)), 
                            _k'#3, 
                            #_module.Stream.Cons($Box(n#1), _module.__default.N2S($LS($LS($LZ)), r#6)))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assume true;
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assume {:id "id893"} true;
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(657,23)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id894"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id895"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                assert {:id "id896"} $Is(LitInt(0), Tclass._System.nat());
                n##0 := LitInt(0);
                assert {:id "id897"} _module.CoOption.Some_q(r#6);
                assume true;
                // ProcessCallStmt: CheckSubrange
                num##0 := $Unbox(_module.CoOption.get(r#6)): DatatypeType;
                assert {:id "id898"} ORD#Less(_k##0, _k#0) || (_k##0 == _k#0 && DtRank(num##0) < DtRank(num#1));
                call {:id "id899"} CoCall$$_module.__default.Path__Lemma3_k_h(_k##0, n##0, num##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assert {:id "id900"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id901"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                ##r#0 := r#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#6);
                ##s#1 := _module.__default.N2S($LS($LZ), r#6);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream_h#canCall(TInt, ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.N2S($LS($LZ), r#6));
                assume _module.__default.N2S#canCall(r#6)
                   && _module.__default.IsNeverEndingStream_h#canCall(TInt, ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.N2S($LS($LZ), r#6));
                // ----- assert line2 <== line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(651,7)
                assert {:id "id902"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, 
                      $LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      _module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> Lit(false));
                assert {:id "id903"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, 
                      $LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (0 < ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> 
                      !_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#6))
                       ==> (var tail#6 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#6)); 
                        _module.__default.IsNeverEndingStream_h(TInt, 
                          $LS($LS($LZ)), 
                          ORD#Minus(ORD#Minus(_k#0, ORD#FromNat(1)), ORD#FromNat(1)), 
                          tail#6)));
                assert {:id "id904"} {:subsumption 0} Lit(true)
                   ==> 
                  _module.__default.IsNeverEndingStream_h#canCall(TInt, ORD#Minus(_k#0, ORD#FromNat(1)), _module.__default.N2S($LS($LZ), r#6))
                   ==> _module.__default.IsNeverEndingStream_h(TInt, 
                      $LS($LZ), 
                      ORD#Minus(_k#0, ORD#FromNat(1)), 
                      _module.__default.N2S($LS($LZ), r#6))
                     || (LitInt(0) == ORD#Offset(ORD#Minus(_k#0, ORD#FromNat(1)))
                       ==> (forall _k'#2: Box :: 
                        { _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), _k'#2, _module.__default.N2S($LS($LS($LZ)), r#6)) } 
                        ORD#Less(_k'#2, ORD#Minus(_k#0, ORD#FromNat(1)))
                           ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LS($LZ)), _k'#2, _module.__default.N2S($LS($LS($LZ)), r#6))));
                assume false;
            }

            assume {:id "id915"} true
               ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k#0, _module.__default.N2S_k($LS($LZ), n#1, num#1));
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(648,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#5: Box, n#2: int, num#2: DatatypeType :: 
          { _module.__default.N2S_k($LS($LZ), n#2, num#2), ORD#Less(_k'#5, _k#0) } 
          LitInt(0) <= n#2
               && $Is(num#2, Tclass._module.Number())
               && 
              ORD#Less(_k'#5, _k#0)
               && _module.__default.InfinitePath_k($LS($LZ), num#2)
             ==> _module.__default.IsNeverEndingStream_h(TInt, $LS($LZ), _k'#5, _module.__default.N2S_k($LS($LZ), n#2, num#2)));
    }
}



procedure {:verboseName "Theorem2 (well-formedness)"} CheckWellFormed$$_module.__default.Theorem2(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Theorem2 (call)"} Call$$_module.__default.Theorem2(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.HasFiniteHeight#canCall(t#0)
     && _module.__default.HasFiniteHeight__Alt#canCall(t#0);
  ensures {:id "id922"} _module.__default.HasFiniteHeight(t#0)
     <==> _module.__default.HasFiniteHeight__Alt(t#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem2 (correctness)"} Impl$$_module.__default.Theorem2(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.HasFiniteHeight#canCall(t#0)
     && _module.__default.HasFiniteHeight__Alt#canCall(t#0);
  ensures {:id "id923"} _module.__default.HasFiniteHeight(t#0)
     <==> _module.__default.HasFiniteHeight__Alt(t#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem2 (correctness)"} Impl$$_module.__default.Theorem2(t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##t#2: DatatypeType;
  var p#0_0_0: DatatypeType;
  var ##t#0_0_0: DatatypeType;
  var ##p#0_0_0: DatatypeType;
  var ##s#0_0_0: DatatypeType;
  var ##r#0_0_0_0_0: DatatypeType;
  var ##p#0_0_0_0_0: DatatypeType;
  var p##0_0_0_0_0: DatatypeType;
  var ##s#0_0_0_0_0: DatatypeType;
  var ##t#0_0_0_1_0: DatatypeType;
  var ##r#0_0_0_1_0: DatatypeType;
  var ##p#0_0_0_1_0: DatatypeType;
  var ##r#0_0_0_1_1: DatatypeType;
  var ##p#0_0_0_1_1: DatatypeType;
  var ##t#0_0_0_2_0: DatatypeType;
  var ##p#0_0_0_2_0: DatatypeType;
  var t##0_0_0_2_0: DatatypeType;
  var p##0_0_0_2_0: DatatypeType;
  var ##t#0_0_0_2_1: DatatypeType;
  var ##r#0_0_0_2_0: DatatypeType;
  var ##p#0_0_0_2_1: DatatypeType;
  var ##t#0_0_0_0: DatatypeType;
  var ##p#0_0_0_0: DatatypeType;
  var ##t#3: DatatypeType;
  var r#1_0_0: DatatypeType;
  var ##t#1_0_0: DatatypeType;
  var ##r#1_0_0: DatatypeType;
  var ##r#1_0_1: DatatypeType;
  var ##s#1_0_0_0_0: DatatypeType;
  var ##r#1_0_0_0_0: DatatypeType;
  var r##1_0_0_0_0: DatatypeType;
  var ##r#1_0_0_0_1: DatatypeType;
  var ##t#1_0_0_1_0: DatatypeType;
  var ##p#1_0_0_1_0: DatatypeType;
  var ##r#1_0_0_1_0: DatatypeType;
  var ##s#1_0_0_1_0: DatatypeType;
  var ##r#1_0_0_1_1: DatatypeType;
  var ##t#1_0_0_2_0: DatatypeType;
  var ##r#1_0_0_2_0: DatatypeType;
  var t##1_0_0_2_0: DatatypeType;
  var r##1_0_0_2_0: DatatypeType;
  var ##t#1_0_0_2_1: DatatypeType;
  var ##p#1_0_0_2_0: DatatypeType;
  var ##r#1_0_0_2_1: DatatypeType;
  var ##t#1_0_0_0: DatatypeType;
  var ##r#1_0_0_0: DatatypeType;

    // AddMethodImpl: Theorem2, Impl$$_module.__default.Theorem2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(668,3)
    ##t#2 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#2, Tclass._module.Tree(), $Heap);
    assume _module.__default.HasFiniteHeight__Alt#canCall(t#0);
    assume _module.__default.HasFiniteHeight__Alt#canCall(t#0);
    if (_module.__default.HasFiniteHeight__Alt(t#0))
    {
        push;
        // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(669,5)
        if (*)
        {
            // Assume Fuel Constant
            havoc p#0_0_0;
            assume $Is(p#0_0_0, Tclass._module.Stream(TInt));
            assume true;
            assume {:id "id924"} true;
            if (*)
            {
                ##t#0_0_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_0_0, Tclass._module.Tree(), $Heap);
                ##p#0_0_0 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0_0_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath#canCall(t#0, p#0_0_0);
                if (_module.__default.ValidPath($LS($LZ), t#0, p#0_0_0))
                {
                    ##s#0_0_0 := p#0_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#0_0_0, Tclass._module.Stream(TInt), $Heap);
                    assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0_0_0);
                }

                assume _module.__default.ValidPath#canCall(t#0, p#0_0_0)
                   && (_module.__default.ValidPath($LS($LZ), t#0, p#0_0_0)
                     ==> _module.__default.IsNeverEndingStream#canCall(TInt, p#0_0_0));
                assume {:id "id925"} _module.__default.ValidPath($LS($LZ), t#0, p#0_0_0)
                   ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_0_0);
                assume false;
            }

            push;
            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                ##t#0_0_0_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_0_0_0, Tclass._module.Tree(), $Heap);
                ##p#0_0_0_0 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0_0_0_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath#canCall(t#0, p#0_0_0);
                assume _module.__default.ValidPath#canCall(t#0, p#0_0_0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                ##t#0_0_0_2_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_0_0_2_0, Tclass._module.Tree(), $Heap);
                ##p#0_0_0_2_0 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0_0_0_2_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath#canCall(t#0, p#0_0_0);
                assume _module.__default.ValidPath#canCall(t#0, p#0_0_0);
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                assume {:id "id931"} _module.__default.ValidPath($LS($LZ), t#0, p#0_0_0);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(672,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0_0_0_2_0 := t#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                p##0_0_0_2_0 := p#0_0_0;
                call {:id "id932"} Call$$_module.__default.Path__Lemma0(t##0_0_0_2_0, p##0_0_0_2_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                ##t#0_0_0_2_1 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_0_0_2_1, Tclass._module.Tree(), $Heap);
                ##p#0_0_0_2_1 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0_0_0_2_1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(p#0_0_0);
                ##r#0_0_0_2_0 := _module.__default.S2N($LS($LZ), p#0_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0_0_0_2_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0_0_0));
                assume _module.__default.S2N#canCall(p#0_0_0)
                   && _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0_0_0));
                // ----- assert line0 ==> line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                assert {:id "id933"} {:subsumption 0} _module.__default.ValidPath($LS($LZ), t#0, p#0_0_0)
                   ==> 
                  _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0_0_0))
                   ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0_0_0))
                     || (_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0_0_0))
                       ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id934"} {:subsumption 0} _module.__default.ValidPath($LS($LZ), t#0, p#0_0_0)
                   ==> 
                  _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0_0_0))
                   ==> _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0_0_0))
                     || (!_module.CoOption.None_q(_module.__default.S2N($LS($LZ), p#0_0_0))
                       ==> (var num#0_0_0_2_0 := $Unbox(_module.CoOption.get(_module.__default.S2N($LS($LS($LZ)), p#0_0_0))): DatatypeType; 
                        _module.__default.ValidPath__Alt_k($LS($LS($LZ)), _module.Tree.children(t#0), num#0_0_0_2_0)));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                ##t#0_0_0_1_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0_0_0_1_0, Tclass._module.Tree(), $Heap);
                ##p#0_0_0_1_0 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0_0_0_1_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(p#0_0_0);
                ##r#0_0_0_1_0 := _module.__default.S2N($LS($LZ), p#0_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0_0_0_1_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0_0_0));
                assume _module.__default.S2N#canCall(p#0_0_0)
                   && _module.__default.ValidPath__Alt#canCall(t#0, _module.__default.S2N($LS($LZ), p#0_0_0));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                assume {:id "id929"} _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0_0_0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                push;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                ##p#0_0_0_1_1 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0_0_0_1_1, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(p#0_0_0);
                ##r#0_0_0_1_1 := _module.__default.S2N($LS($LZ), p#0_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0_0_0_1_1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0_0_0));
                assume _module.__default.S2N#canCall(p#0_0_0)
                   && _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0_0_0));
                // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                assert {:id "id930"} {:subsumption 0} _module.__default.ValidPath__Alt($LS($LZ), t#0, _module.__default.S2N($LS($LZ), p#0_0_0))
                   ==> !_module.__default.InfinitePath($LS($LS($LZ)), _module.__default.S2N($LS($LS($LZ)), p#0_0_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                ##p#0_0_0_0_0 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#0_0_0_0_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.S2N#canCall(p#0_0_0);
                ##r#0_0_0_0_0 := _module.__default.S2N($LS($LZ), p#0_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#0_0_0_0_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0_0_0));
                assume _module.__default.S2N#canCall(p#0_0_0)
                   && _module.__default.InfinitePath#canCall(_module.__default.S2N($LS($LZ), p#0_0_0));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                assume {:id "id926"} !_module.__default.InfinitePath($LS($LZ), _module.__default.S2N($LS($LZ), p#0_0_0));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                push;
                push;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(676,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                p##0_0_0_0_0 := p#0_0_0;
                call {:id "id927"} Call$$_module.__default.Path__Lemma2(p##0_0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                pop;
                pop;
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                ##s#0_0_0_0_0 := p#0_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#0_0_0_0_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0_0_0);
                assume _module.__default.IsNeverEndingStream#canCall(TInt, p#0_0_0);
                // ----- assert line2 ==> line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(670,7)
                assert {:id "id928"} {:subsumption 0} !_module.__default.InfinitePath($LS($LZ), _module.__default.S2N($LS($LZ), p#0_0_0))
                   ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0_0_0);
                assume false;
            }

            assume {:id "id935"} _module.__default.ValidPath($LS($LZ), t#0, p#0_0_0)
               ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_0_0);
            pop;
            assert {:id "id936"} _module.__default.ValidPath($LS($LZ), t#0, p#0_0_0)
               ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), p#0_0_0);
            assume false;
        }
        else
        {
            assume (forall p#0_0_1: DatatypeType :: 
              { _module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_0_1) } 
                { _module.__default.ValidPath($LS($LZ), t#0, p#0_0_1) } 
              $Is(p#0_0_1, Tclass._module.Stream(TInt)) && Lit(true)
                 ==> 
                _module.__default.ValidPath($LS($LZ), t#0, p#0_0_1)
                 ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), p#0_0_1));
        }

        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(681,3)
    ##t#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#3, Tclass._module.Tree(), $Heap);
    assume _module.__default.HasFiniteHeight#canCall(t#0);
    assume _module.__default.HasFiniteHeight#canCall(t#0);
    if (_module.__default.HasFiniteHeight(t#0))
    {
        // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(682,5)
        if (*)
        {
            // Assume Fuel Constant
            havoc r#1_0_0;
            assume $Is(r#1_0_0, Tclass._module.CoOption(Tclass._module.Number()));
            assume true;
            assume {:id "id937"} true;
            if (*)
            {
                ##t#1_0_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1_0_0, Tclass._module.Tree(), $Heap);
                ##r#1_0_0 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt#canCall(t#0, r#1_0_0);
                if (_module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0))
                {
                    ##r#1_0_1 := r#1_0_0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##r#1_0_1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                    assume _module.__default.InfinitePath#canCall(r#1_0_0);
                }

                assume _module.__default.ValidPath__Alt#canCall(t#0, r#1_0_0)
                   && (_module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
                     ==> _module.__default.InfinitePath#canCall(r#1_0_0));
                assume {:id "id938"} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
                   ==> !_module.__default.InfinitePath($LS($LZ), r#1_0_0);
                assume false;
            }

            // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
            // Assume Fuel Constant
            if (*)
            {
                // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                ##t#1_0_0_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1_0_0_0, Tclass._module.Tree(), $Heap);
                ##r#1_0_0_0 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt#canCall(t#0, r#1_0_0);
                assume _module.__default.ValidPath__Alt#canCall(t#0, r#1_0_0);
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                ##t#1_0_0_2_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1_0_0_2_0, Tclass._module.Tree(), $Heap);
                ##r#1_0_0_2_0 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_2_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.ValidPath__Alt#canCall(t#0, r#1_0_0);
                assume _module.__default.ValidPath__Alt#canCall(t#0, r#1_0_0);
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                assume {:id "id944"} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0);
                // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(685,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1_0_0_2_0 := t#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                r##1_0_0_2_0 := r#1_0_0;
                call {:id "id945"} Call$$_module.__default.Path__Lemma1(t##1_0_0_2_0, r##1_0_0_2_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                ##t#1_0_0_2_1 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1_0_0_2_1, Tclass._module.Tree(), $Heap);
                ##r#1_0_0_2_1 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_2_1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#1_0_0);
                ##p#1_0_0_2_0 := _module.__default.N2S($LS($LZ), r#1_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#1_0_0_2_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0));
                assume _module.__default.N2S#canCall(r#1_0_0)
                   && _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0));
                // ----- assert line0 ==> line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                assert {:id "id946"} {:subsumption 0} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
                   ==> 
                  _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                   ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                     || (_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1_0_0))
                       ==> _module.Tree#Equal(t#0, #_module.Tree.Node(Lit(#_module.Stream.Nil()))));
                assert {:id "id947"} {:subsumption 0} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
                   ==> 
                  _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                   ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                     || (!_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1_0_0))
                       ==> (var tail#1_0_0_2_0 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1_0_0)); 
                        (var index#1_0_0_2_0 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1_0_0))): int; 
                          LitInt(0) <= index#1_0_0_2_0)));
                assert {:id "id948"} {:subsumption 0} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
                   ==> 
                  _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                   ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                     || (!_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1_0_0))
                       ==> (var tail#1_0_0_2_0 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1_0_0)); 
                        (var index#1_0_0_2_0 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1_0_0))): int; 
                          (var ch#1_0_0_2_0 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children(t#0), 
                                index#1_0_0_2_0); 
                            _module.Stream.Cons_q(ch#1_0_0_2_0)))));
                assert {:id "id949"} {:subsumption 0} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
                   ==> 
                  _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                   ==> _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                     || (!_module.Stream.Nil_q(_module.__default.N2S($LS($LZ), r#1_0_0))
                       ==> (var tail#1_0_0_2_0 := _module.Stream.tail(_module.__default.N2S($LS($LS($LZ)), r#1_0_0)); 
                        (var index#1_0_0_2_0 := $Unbox(_module.Stream.head(_module.__default.N2S($LS($LS($LZ)), r#1_0_0))): int; 
                          (var ch#1_0_0_2_0 := _module.__default.Tail(Tclass._module.Tree(), 
                                $LS($LS($LZ)), 
                                _module.Tree.children(t#0), 
                                index#1_0_0_2_0); 
                            _module.__default.ValidPath($LS($LS($LZ)), 
                              $Unbox(_module.Stream.head(ch#1_0_0_2_0)): DatatypeType, 
                              tail#1_0_0_2_0)))));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                ##t#1_0_0_1_0 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1_0_0_1_0, Tclass._module.Tree(), $Heap);
                ##r#1_0_0_1_0 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_1_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#1_0_0);
                ##p#1_0_0_1_0 := _module.__default.N2S($LS($LZ), r#1_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##p#1_0_0_1_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0));
                assume _module.__default.N2S#canCall(r#1_0_0)
                   && _module.__default.ValidPath#canCall(t#0, _module.__default.N2S($LS($LZ), r#1_0_0));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                assume {:id "id942"} _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#1_0_0));
                // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                ##r#1_0_0_1_1 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_1_1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#1_0_0);
                ##s#1_0_0_1_0 := _module.__default.N2S($LS($LZ), r#1_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_0_0_1_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#1_0_0));
                assume _module.__default.N2S#canCall(r#1_0_0)
                   && _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#1_0_0));
                // ----- assert line1 ==> line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                assert {:id "id943"} {:subsumption 0} _module.__default.ValidPath($LS($LZ), t#0, _module.__default.N2S($LS($LZ), r#1_0_0))
                   ==> !_module.__default.IsNeverEndingStream(TInt, $LS($LS($LZ)), _module.__default.N2S($LS($LS($LZ)), r#1_0_0));
                assume false;
            }
            else if (*)
            {
                // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                ##r#1_0_0_0_0 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_0_0, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.N2S#canCall(r#1_0_0);
                ##s#1_0_0_0_0 := _module.__default.N2S($LS($LZ), r#1_0_0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#1_0_0_0_0, Tclass._module.Stream(TInt), $Heap);
                assume _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#1_0_0));
                assume _module.__default.N2S#canCall(r#1_0_0)
                   && _module.__default.IsNeverEndingStream#canCall(TInt, _module.__default.N2S($LS($LZ), r#1_0_0));
                // ----- assume lhs ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                assume {:id "id939"} !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), _module.__default.N2S($LS($LZ), r#1_0_0));
                // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(689,22)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                r##1_0_0_0_0 := r#1_0_0;
                call {:id "id940"} Call$$_module.__default.Path__Lemma3(r##1_0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                ##r#1_0_0_0_1 := r#1_0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##r#1_0_0_0_1, Tclass._module.CoOption(Tclass._module.Number()), $Heap);
                assume _module.__default.InfinitePath#canCall(r#1_0_0);
                assume _module.__default.InfinitePath#canCall(r#1_0_0);
                // ----- assert line2 ==> line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny3/InfiniteTrees.dfy(683,7)
                assert {:id "id941"} {:subsumption 0} !_module.__default.IsNeverEndingStream(TInt, $LS($LZ), _module.__default.N2S($LS($LZ), r#1_0_0))
                   ==> !_module.__default.InfinitePath($LS($LS($LZ)), r#1_0_0);
                assume false;
            }

            assume {:id "id950"} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
               ==> !_module.__default.InfinitePath($LS($LZ), r#1_0_0);
            assert {:id "id951"} _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_0)
               ==> !_module.__default.InfinitePath($LS($LS($LZ)), r#1_0_0);
            assume false;
        }
        else
        {
            assume (forall r#1_0_1: DatatypeType :: 
              { _module.__default.InfinitePath($LS($LZ), r#1_0_1) } 
                { _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_1) } 
              $Is(r#1_0_1, Tclass._module.CoOption(Tclass._module.Number())) && Lit(true)
                 ==> 
                _module.__default.ValidPath__Alt($LS($LZ), t#0, r#1_0_1)
                 ==> !_module.__default.InfinitePath($LS($LZ), r#1_0_1));
        }
    }
    else
    {
    }
}



// Constructor function declaration
function #_module.Stream.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Stream.Nil()) == ##_module.Stream.Nil;
}

const unique ##_module.Stream.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Stream.Nil()) == ##_module.Stream.Nil;
}

function _module.Stream.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Nil_q(d) } 
  _module.Stream.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Nil_q(d) } 
  _module.Stream.Nil_q(d) ==> d == #_module.Stream.Nil());

// Constructor $Is
axiom (forall _module.Stream$T: Ty :: 
  { $Is(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Stream.Nil(), Tclass._module.Stream(_module.Stream$T), $h));

// Constructor function declaration
function #_module.Stream.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#3#0#0, a#3#1#0) } 
  DatatypeCtorId(#_module.Stream.Cons(a#3#0#0, a#3#1#0)) == ##_module.Stream.Cons);
}

function _module.Stream.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Cons_q(d) } 
  _module.Stream.Cons_q(d)
     ==> (exists a#4#0#0: Box, a#4#1#0: DatatypeType :: 
      d == #_module.Stream.Cons(a#4#0#0, a#4#1#0)));

// Constructor $Is
axiom (forall _module.Stream$T: Ty, a#5#0#0: Box, a#5#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Cons(a#5#0#0, a#5#1#0), Tclass._module.Stream(_module.Stream$T)) } 
  $Is(#_module.Stream.Cons(a#5#0#0, a#5#1#0), Tclass._module.Stream(_module.Stream$T))
     <==> $IsBox(a#5#0#0, _module.Stream$T)
       && $Is(a#5#1#0, Tclass._module.Stream(_module.Stream$T)));

// Constructor $IsAlloc
axiom (forall _module.Stream$T: Ty, a#5#0#0: Box, a#5#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.Stream.Cons(a#5#0#0, a#5#1#0), 
      Tclass._module.Stream(_module.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Stream.Cons(a#5#0#0, a#5#1#0), 
        Tclass._module.Stream(_module.Stream$T), 
        $h)
       <==> $IsAllocBox(a#5#0#0, _module.Stream$T, $h)
         && $IsAlloc(a#5#1#0, Tclass._module.Stream(_module.Stream$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAllocBox(_module.Stream.head(d), _module.Stream$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Cons_q(d)
       && $IsAlloc(d, Tclass._module.Stream(_module.Stream$T), $h)
     ==> $IsAlloc(_module.Stream.tail(d), Tclass._module.Stream(_module.Stream$T), $h));

function _module.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#6#0#0, a#6#1#0) } 
  _module.Stream.head(#_module.Stream.Cons(a#6#0#0, a#6#1#0)) == a#6#0#0);

function _module.Stream.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.Stream.Cons(a#7#0#0, a#7#1#0) } 
  _module.Stream.tail(#_module.Stream.Cons(a#7#0#0, a#7#1#0)) == a#7#1#0);

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.Nil_q(d) || _module.Stream.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Stream$T: Ty, d: DatatypeType :: 
  { _module.Stream.Cons_q(d), $Is(d, Tclass._module.Stream(_module.Stream$T)) } 
    { _module.Stream.Nil_q(d), $Is(d, Tclass._module.Stream(_module.Stream$T)) } 
  $Is(d, Tclass._module.Stream(_module.Stream$T))
     ==> _module.Stream.Nil_q(d) || _module.Stream.Cons_q(d));

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
       <==> (_module.Stream.Nil_q(d0) && _module.Stream.Nil_q(d1))
         || (
          _module.Stream.Cons_q(d0)
           && _module.Stream.Cons_q(d1)
           && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
             ==> _module.Stream.head(d0) == _module.Stream.head(d1)
               && $Eq#_module.Stream(_module.Stream$T#l, 
                _module.Stream$T#r, 
                ly, 
                _module.Stream.tail(d0), 
                _module.Stream.tail(d1))))));

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
           ==> (_module.Stream.Nil_q(d0) && _module.Stream.Nil_q(d1))
             || (
              _module.Stream.Cons_q(d0)
               && _module.Stream.Cons_q(d1)
               && (_module.Stream.Cons_q(d0) && _module.Stream.Cons_q(d1)
                 ==> _module.Stream.head(d0) == _module.Stream.head(d1)
                   && $PrefixEq#_module.Stream(_module.Stream$T#l, 
                    _module.Stream$T#r, 
                    ORD#Minus(k, ORD#FromNat(1)), 
                    ly, 
                    _module.Stream.tail(d0), 
                    _module.Stream.tail(d1)))))
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
function #_module.Tree.Node(DatatypeType) : DatatypeType;

const unique ##_module.Tree.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: DatatypeType :: 
  { #_module.Tree.Node(a#8#0#0) } 
  DatatypeCtorId(#_module.Tree.Node(a#8#0#0)) == ##_module.Tree.Node);
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
     ==> (exists a#9#0#0: DatatypeType :: d == #_module.Tree.Node(a#9#0#0)));

// Constructor $Is
axiom (forall a#10#0#0: DatatypeType :: 
  { $Is(#_module.Tree.Node(a#10#0#0), Tclass._module.Tree()) } 
  $Is(#_module.Tree.Node(a#10#0#0), Tclass._module.Tree())
     <==> $Is(a#10#0#0, Tclass._module.Stream(Tclass._module.Tree())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.children(d), Tclass._module.Stream(Tclass._module.Tree()), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Node_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.children(d), Tclass._module.Stream(Tclass._module.Tree()), $h));

// Constructor literal
axiom (forall a#11#0#0: DatatypeType :: 
  { #_module.Tree.Node(Lit(a#11#0#0)) } 
  #_module.Tree.Node(Lit(a#11#0#0)) == Lit(#_module.Tree.Node(a#11#0#0)));

function _module.Tree.children(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType :: 
  { #_module.Tree.Node(a#12#0#0) } 
  _module.Tree.children(#_module.Tree.Node(a#12#0#0)) == a#12#0#0);

// Inductive rank
axiom (forall a#13#0#0: DatatypeType :: 
  { #_module.Tree.Node(a#13#0#0) } 
  DtRank(a#13#0#0) < DtRank(#_module.Tree.Node(a#13#0#0)));

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
  $IsA#_module.Tree(d) ==> _module.Tree.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Tree.Node_q(d), $Is(d, Tclass._module.Tree()) } 
  $Is(d, Tclass._module.Tree()) ==> _module.Tree.Node_q(d));

// Datatype extensional equality declaration
function _module.Tree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Tree.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b) } 
  _module.Tree#Equal(a, b)
     <==> _module.Tree.children(a) == _module.Tree.children(b));

// Datatype extensionality axiom: _module.Tree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b) } 
  _module.Tree#Equal(a, b) <==> a == b);

const unique class._module.Tree: ClassName;

// Constructor function declaration
function #_module.CoOption.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoOption.None()) == ##_module.CoOption.None;
}

const unique ##_module.CoOption.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoOption.None()) == ##_module.CoOption.None;
}

function _module.CoOption.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CoOption.None_q(d) } 
  _module.CoOption.None_q(d) <==> DatatypeCtorId(d) == ##_module.CoOption.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CoOption.None_q(d) } 
  _module.CoOption.None_q(d) ==> d == #_module.CoOption.None());

// Constructor $Is
axiom (forall _module.CoOption$T: Ty :: 
  { $Is(#_module.CoOption.None(), Tclass._module.CoOption(_module.CoOption$T)) } 
  $Is(#_module.CoOption.None(), Tclass._module.CoOption(_module.CoOption$T)));

// Constructor $IsAlloc
axiom (forall _module.CoOption$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.CoOption.None(), Tclass._module.CoOption(_module.CoOption$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.CoOption.None(), Tclass._module.CoOption(_module.CoOption$T), $h));

// Constructor function declaration
function #_module.CoOption.Some(Box) : DatatypeType;

const unique ##_module.CoOption.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#17#0#0: Box :: 
  { #_module.CoOption.Some(a#17#0#0) } 
  DatatypeCtorId(#_module.CoOption.Some(a#17#0#0)) == ##_module.CoOption.Some);
}

function _module.CoOption.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CoOption.Some_q(d) } 
  _module.CoOption.Some_q(d) <==> DatatypeCtorId(d) == ##_module.CoOption.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CoOption.Some_q(d) } 
  _module.CoOption.Some_q(d)
     ==> (exists a#18#0#0: Box :: d == #_module.CoOption.Some(a#18#0#0)));

// Constructor $Is
axiom (forall _module.CoOption$T: Ty, a#19#0#0: Box :: 
  { $Is(#_module.CoOption.Some(a#19#0#0), Tclass._module.CoOption(_module.CoOption$T)) } 
  $Is(#_module.CoOption.Some(a#19#0#0), Tclass._module.CoOption(_module.CoOption$T))
     <==> $IsBox(a#19#0#0, _module.CoOption$T));

// Constructor $IsAlloc
axiom (forall _module.CoOption$T: Ty, a#19#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.CoOption.Some(a#19#0#0), 
      Tclass._module.CoOption(_module.CoOption$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.CoOption.Some(a#19#0#0), 
        Tclass._module.CoOption(_module.CoOption$T), 
        $h)
       <==> $IsAllocBox(a#19#0#0, _module.CoOption$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.CoOption$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.CoOption.get(d), _module.CoOption$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.CoOption.Some_q(d)
       && $IsAlloc(d, Tclass._module.CoOption(_module.CoOption$T), $h)
     ==> $IsAllocBox(_module.CoOption.get(d), _module.CoOption$T, $h));

function _module.CoOption.get(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box :: 
  { #_module.CoOption.Some(a#20#0#0) } 
  _module.CoOption.get(#_module.CoOption.Some(a#20#0#0)) == a#20#0#0);

// Depth-one case-split function
function $IsA#_module.CoOption(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.CoOption(d) } 
  $IsA#_module.CoOption(d)
     ==> _module.CoOption.None_q(d) || _module.CoOption.Some_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.CoOption$T: Ty, d: DatatypeType :: 
  { _module.CoOption.Some_q(d), $Is(d, Tclass._module.CoOption(_module.CoOption$T)) } 
    { _module.CoOption.None_q(d), $Is(d, Tclass._module.CoOption(_module.CoOption$T)) } 
  $Is(d, Tclass._module.CoOption(_module.CoOption$T))
     ==> _module.CoOption.None_q(d) || _module.CoOption.Some_q(d));

function $Eq#_module.CoOption(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CoOption(_module.CoOption$T#l))
       && $Is(d1, Tclass._module.CoOption(_module.CoOption$T#r))
     ==> ($Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1)
       <==> (_module.CoOption.None_q(d0) && _module.CoOption.None_q(d1))
         || (
          _module.CoOption.Some_q(d0)
           && _module.CoOption.Some_q(d1)
           && (_module.CoOption.Some_q(d0) && _module.CoOption.Some_q(d1)
             ==> _module.CoOption.get(d0) == _module.CoOption.get(d1)))));

// Unbump layer co-equality axiom
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1)
     <==> $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#_module.CoOption(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CoOption(_module.CoOption$T#l))
       && $Is(d1, Tclass._module.CoOption(_module.CoOption$T#r))
     ==> ($PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (_module.CoOption.None_q(d0) && _module.CoOption.None_q(d1))
             || (
              _module.CoOption.Some_q(d0)
               && _module.CoOption.Some_q(d1)
               && (_module.CoOption.Some_q(d0) && _module.CoOption.Some_q(d1)
                 ==> _module.CoOption.get(d0) == _module.CoOption.get(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1) } 
  $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1), $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall _module.CoOption$T#l: Ty, 
    _module.CoOption$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#_module.CoOption(_module.CoOption$T#l, _module.CoOption$T#r, k, $LS(ly), d0, d1));

const unique class._module.CoOption: ClassName;

// Constructor function declaration
function #_module.Number.Succ(DatatypeType) : DatatypeType;

const unique ##_module.Number.Succ: DtCtorId
uses {
// Constructor identifier
axiom (forall a#21#0#0: DatatypeType :: 
  { #_module.Number.Succ(a#21#0#0) } 
  DatatypeCtorId(#_module.Number.Succ(a#21#0#0)) == ##_module.Number.Succ);
}

function _module.Number.Succ_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Number.Succ_q(d) } 
  _module.Number.Succ_q(d) <==> DatatypeCtorId(d) == ##_module.Number.Succ);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Number.Succ_q(d) } 
  _module.Number.Succ_q(d)
     ==> (exists a#22#0#0: DatatypeType :: d == #_module.Number.Succ(a#22#0#0)));

// Constructor $Is
axiom (forall a#23#0#0: DatatypeType :: 
  { $Is(#_module.Number.Succ(a#23#0#0), Tclass._module.Number()) } 
  $Is(#_module.Number.Succ(a#23#0#0), Tclass._module.Number())
     <==> $Is(a#23#0#0, Tclass._module.Number()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Number._h4(d), Tclass._module.Number(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Number.Succ_q(d)
       && $IsAlloc(d, Tclass._module.Number(), $h)
     ==> $IsAlloc(_module.Number._h4(d), Tclass._module.Number(), $h));

// Constructor literal
axiom (forall a#24#0#0: DatatypeType :: 
  { #_module.Number.Succ(Lit(a#24#0#0)) } 
  #_module.Number.Succ(Lit(a#24#0#0)) == Lit(#_module.Number.Succ(a#24#0#0)));

function _module.Number._h4(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#25#0#0: DatatypeType :: 
  { #_module.Number.Succ(a#25#0#0) } 
  _module.Number._h4(#_module.Number.Succ(a#25#0#0)) == a#25#0#0);

// Inductive rank
axiom (forall a#26#0#0: DatatypeType :: 
  { #_module.Number.Succ(a#26#0#0) } 
  DtRank(a#26#0#0) < DtRank(#_module.Number.Succ(a#26#0#0)));

// Constructor function declaration
function #_module.Number.Zero(DatatypeType) : DatatypeType;

const unique ##_module.Number.Zero: DtCtorId
uses {
// Constructor identifier
axiom (forall a#27#0#0: DatatypeType :: 
  { #_module.Number.Zero(a#27#0#0) } 
  DatatypeCtorId(#_module.Number.Zero(a#27#0#0)) == ##_module.Number.Zero);
}

function _module.Number.Zero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Number.Zero_q(d) } 
  _module.Number.Zero_q(d) <==> DatatypeCtorId(d) == ##_module.Number.Zero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Number.Zero_q(d) } 
  _module.Number.Zero_q(d)
     ==> (exists a#28#0#0: DatatypeType :: d == #_module.Number.Zero(a#28#0#0)));

// Constructor $Is
axiom (forall a#29#0#0: DatatypeType :: 
  { $Is(#_module.Number.Zero(a#29#0#0), Tclass._module.Number()) } 
  $Is(#_module.Number.Zero(a#29#0#0), Tclass._module.Number())
     <==> $Is(a#29#0#0, Tclass._module.CoOption(Tclass._module.Number())));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Number._h5(d), Tclass._module.CoOption(Tclass._module.Number()), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Number.Zero_q(d)
       && $IsAlloc(d, Tclass._module.Number(), $h)
     ==> $IsAlloc(_module.Number._h5(d), Tclass._module.CoOption(Tclass._module.Number()), $h));

// Constructor literal
axiom (forall a#30#0#0: DatatypeType :: 
  { #_module.Number.Zero(Lit(a#30#0#0)) } 
  #_module.Number.Zero(Lit(a#30#0#0)) == Lit(#_module.Number.Zero(a#30#0#0)));

function _module.Number._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#31#0#0: DatatypeType :: 
  { #_module.Number.Zero(a#31#0#0) } 
  _module.Number._h5(#_module.Number.Zero(a#31#0#0)) == a#31#0#0);

// Inductive rank
axiom (forall a#32#0#0: DatatypeType :: 
  { #_module.Number.Zero(a#32#0#0) } 
  DtRank(a#32#0#0) < DtRank(#_module.Number.Zero(a#32#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Number(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Number())
     ==> $IsAlloc(d, Tclass._module.Number(), $h));

// Depth-one case-split function
function $IsA#_module.Number(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Number(d) } 
  $IsA#_module.Number(d) ==> _module.Number.Succ_q(d) || _module.Number.Zero_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Number.Zero_q(d), $Is(d, Tclass._module.Number()) } 
    { _module.Number.Succ_q(d), $Is(d, Tclass._module.Number()) } 
  $Is(d, Tclass._module.Number())
     ==> _module.Number.Succ_q(d) || _module.Number.Zero_q(d));

// Datatype extensional equality declaration
function _module.Number#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Number.Succ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Number#Equal(a, b), _module.Number.Succ_q(a) } 
    { _module.Number#Equal(a, b), _module.Number.Succ_q(b) } 
  _module.Number.Succ_q(a) && _module.Number.Succ_q(b)
     ==> (_module.Number#Equal(a, b)
       <==> _module.Number#Equal(_module.Number._h4(a), _module.Number._h4(b))));

// Datatype extensional equality definition: #_module.Number.Zero
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Number#Equal(a, b), _module.Number.Zero_q(a) } 
    { _module.Number#Equal(a, b), _module.Number.Zero_q(b) } 
  _module.Number.Zero_q(a) && _module.Number.Zero_q(b)
     ==> (_module.Number#Equal(a, b) <==> _module.Number._h5(a) == _module.Number._h5(b)));

// Datatype extensionality axiom: _module.Number
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Number#Equal(a, b) } 
  _module.Number#Equal(a, b) <==> a == b);

const unique class._module.Number: ClassName;

// Constructor function declaration
function #_module.InfPath.Right(DatatypeType) : DatatypeType;

const unique ##_module.InfPath.Right: DtCtorId
uses {
// Constructor identifier
axiom (forall a#33#0#0: DatatypeType :: 
  { #_module.InfPath.Right(a#33#0#0) } 
  DatatypeCtorId(#_module.InfPath.Right(a#33#0#0)) == ##_module.InfPath.Right);
}

function _module.InfPath.Right_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.InfPath.Right_q(d) } 
  _module.InfPath.Right_q(d) <==> DatatypeCtorId(d) == ##_module.InfPath.Right);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.InfPath.Right_q(d) } 
  _module.InfPath.Right_q(d)
     ==> (exists a#34#0#0: DatatypeType :: d == #_module.InfPath.Right(a#34#0#0)));

function Tclass._module.InfPath() : Ty
uses {
// Tclass._module.InfPath Tag
axiom Tag(Tclass._module.InfPath()) == Tagclass._module.InfPath
   && TagFamily(Tclass._module.InfPath()) == tytagFamily$InfPath;
}

const unique Tagclass._module.InfPath: TyTag;

// Box/unbox axiom for Tclass._module.InfPath
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.InfPath()) } 
  $IsBox(bx, Tclass._module.InfPath())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.InfPath()));

// Constructor $Is
axiom (forall a#35#0#0: DatatypeType :: 
  { $Is(#_module.InfPath.Right(a#35#0#0), Tclass._module.InfPath()) } 
  $Is(#_module.InfPath.Right(a#35#0#0), Tclass._module.InfPath())
     <==> $Is(a#35#0#0, Tclass._module.InfPath()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.InfPath._h6(d), Tclass._module.InfPath(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.InfPath.Right_q(d)
       && $IsAlloc(d, Tclass._module.InfPath(), $h)
     ==> $IsAlloc(_module.InfPath._h6(d), Tclass._module.InfPath(), $h));

function _module.InfPath._h6(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#36#0#0: DatatypeType :: 
  { #_module.InfPath.Right(a#36#0#0) } 
  _module.InfPath._h6(#_module.InfPath.Right(a#36#0#0)) == a#36#0#0);

// Constructor function declaration
function #_module.InfPath.Down(DatatypeType) : DatatypeType;

const unique ##_module.InfPath.Down: DtCtorId
uses {
// Constructor identifier
axiom (forall a#37#0#0: DatatypeType :: 
  { #_module.InfPath.Down(a#37#0#0) } 
  DatatypeCtorId(#_module.InfPath.Down(a#37#0#0)) == ##_module.InfPath.Down);
}

function _module.InfPath.Down_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.InfPath.Down_q(d) } 
  _module.InfPath.Down_q(d) <==> DatatypeCtorId(d) == ##_module.InfPath.Down);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.InfPath.Down_q(d) } 
  _module.InfPath.Down_q(d)
     ==> (exists a#38#0#0: DatatypeType :: d == #_module.InfPath.Down(a#38#0#0)));

// Constructor $Is
axiom (forall a#39#0#0: DatatypeType :: 
  { $Is(#_module.InfPath.Down(a#39#0#0), Tclass._module.InfPath()) } 
  $Is(#_module.InfPath.Down(a#39#0#0), Tclass._module.InfPath())
     <==> $Is(a#39#0#0, Tclass._module.InfPath()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.InfPath._h7(d), Tclass._module.InfPath(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.InfPath.Down_q(d)
       && $IsAlloc(d, Tclass._module.InfPath(), $h)
     ==> $IsAlloc(_module.InfPath._h7(d), Tclass._module.InfPath(), $h));

function _module.InfPath._h7(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#40#0#0: DatatypeType :: 
  { #_module.InfPath.Down(a#40#0#0) } 
  _module.InfPath._h7(#_module.InfPath.Down(a#40#0#0)) == a#40#0#0);

// Constructor function declaration
function #_module.InfPath.Stop() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.InfPath.Stop()) == ##_module.InfPath.Stop;
// Constructor $Is
axiom $Is(#_module.InfPath.Stop(), Tclass._module.InfPath());
}

const unique ##_module.InfPath.Stop: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.InfPath.Stop()) == ##_module.InfPath.Stop;
}

function _module.InfPath.Stop_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.InfPath.Stop_q(d) } 
  _module.InfPath.Stop_q(d) <==> DatatypeCtorId(d) == ##_module.InfPath.Stop);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.InfPath.Stop_q(d) } 
  _module.InfPath.Stop_q(d) ==> d == #_module.InfPath.Stop());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.InfPath(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.InfPath())
     ==> $IsAlloc(d, Tclass._module.InfPath(), $h));

// Depth-one case-split function
function $IsA#_module.InfPath(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.InfPath(d) } 
  $IsA#_module.InfPath(d)
     ==> _module.InfPath.Right_q(d)
       || _module.InfPath.Down_q(d)
       || _module.InfPath.Stop_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.InfPath.Stop_q(d), $Is(d, Tclass._module.InfPath()) } 
    { _module.InfPath.Down_q(d), $Is(d, Tclass._module.InfPath()) } 
    { _module.InfPath.Right_q(d), $Is(d, Tclass._module.InfPath()) } 
  $Is(d, Tclass._module.InfPath())
     ==> _module.InfPath.Right_q(d)
       || _module.InfPath.Down_q(d)
       || _module.InfPath.Stop_q(d));

function $Eq#_module.InfPath(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.InfPath($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.InfPath()) && $Is(d1, Tclass._module.InfPath())
     ==> ($Eq#_module.InfPath($LS(ly), d0, d1)
       <==> (
          _module.InfPath.Right_q(d0)
           && _module.InfPath.Right_q(d1)
           && (_module.InfPath.Right_q(d0) && _module.InfPath.Right_q(d1)
             ==> $Eq#_module.InfPath(ly, _module.InfPath._h6(d0), _module.InfPath._h6(d1))))
         || (
          _module.InfPath.Down_q(d0)
           && _module.InfPath.Down_q(d1)
           && (_module.InfPath.Down_q(d0) && _module.InfPath.Down_q(d1)
             ==> $Eq#_module.InfPath(ly, _module.InfPath._h7(d0), _module.InfPath._h7(d1))))
         || (_module.InfPath.Stop_q(d0) && _module.InfPath.Stop_q(d1))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.InfPath($LS(ly), d0, d1) } 
  $Eq#_module.InfPath($LS(ly), d0, d1) <==> $Eq#_module.InfPath(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.InfPath($LS(ly), d0, d1) } 
  $Eq#_module.InfPath($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.InfPath(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.InfPath()) && $Is(d1, Tclass._module.InfPath())
     ==> ($PrefixEq#_module.InfPath(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (
              _module.InfPath.Right_q(d0)
               && _module.InfPath.Right_q(d1)
               && (_module.InfPath.Right_q(d0) && _module.InfPath.Right_q(d1)
                 ==> $PrefixEq#_module.InfPath(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.InfPath._h6(d0), 
                  _module.InfPath._h6(d1))))
             || (
              _module.InfPath.Down_q(d0)
               && _module.InfPath.Down_q(d1)
               && (_module.InfPath.Down_q(d0) && _module.InfPath.Down_q(d1)
                 ==> $PrefixEq#_module.InfPath(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.InfPath._h7(d0), 
                  _module.InfPath._h7(d1))))
             || (_module.InfPath.Stop_q(d0) && _module.InfPath.Stop_q(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.InfPath(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.InfPath(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.InfPath(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.InfPath($LS(ly), d0, d1) } 
  $Eq#_module.InfPath($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.InfPath($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.InfPath(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.InfPath(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.InfPath($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1), $PrefixEq#_module.InfPath(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.InfPath(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.InfPath(k, $LS(ly), d0, d1));

const unique class._module.InfPath: ClassName;

// Constructor function declaration
function #_module.FinPath.Right(DatatypeType) : DatatypeType;

const unique ##_module.FinPath.Right: DtCtorId
uses {
// Constructor identifier
axiom (forall a#44#0#0: DatatypeType :: 
  { #_module.FinPath.Right(a#44#0#0) } 
  DatatypeCtorId(#_module.FinPath.Right(a#44#0#0)) == ##_module.FinPath.Right);
}

function _module.FinPath.Right_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.FinPath.Right_q(d) } 
  _module.FinPath.Right_q(d) <==> DatatypeCtorId(d) == ##_module.FinPath.Right);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.FinPath.Right_q(d) } 
  _module.FinPath.Right_q(d)
     ==> (exists a#45#0#0: DatatypeType :: d == #_module.FinPath.Right(a#45#0#0)));

function Tclass._module.FinPath() : Ty
uses {
// Tclass._module.FinPath Tag
axiom Tag(Tclass._module.FinPath()) == Tagclass._module.FinPath
   && TagFamily(Tclass._module.FinPath()) == tytagFamily$FinPath;
}

const unique Tagclass._module.FinPath: TyTag;

// Box/unbox axiom for Tclass._module.FinPath
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.FinPath()) } 
  $IsBox(bx, Tclass._module.FinPath())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.FinPath()));

// Constructor $Is
axiom (forall a#46#0#0: DatatypeType :: 
  { $Is(#_module.FinPath.Right(a#46#0#0), Tclass._module.FinPath()) } 
  $Is(#_module.FinPath.Right(a#46#0#0), Tclass._module.FinPath())
     <==> $Is(a#46#0#0, Tclass._module.FinPath()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.FinPath._h8(d), Tclass._module.FinPath(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.FinPath.Right_q(d)
       && $IsAlloc(d, Tclass._module.FinPath(), $h)
     ==> $IsAlloc(_module.FinPath._h8(d), Tclass._module.FinPath(), $h));

function _module.FinPath._h8(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#47#0#0: DatatypeType :: 
  { #_module.FinPath.Right(a#47#0#0) } 
  _module.FinPath._h8(#_module.FinPath.Right(a#47#0#0)) == a#47#0#0);

// Constructor function declaration
function #_module.FinPath.Down(DatatypeType) : DatatypeType;

const unique ##_module.FinPath.Down: DtCtorId
uses {
// Constructor identifier
axiom (forall a#48#0#0: DatatypeType :: 
  { #_module.FinPath.Down(a#48#0#0) } 
  DatatypeCtorId(#_module.FinPath.Down(a#48#0#0)) == ##_module.FinPath.Down);
}

function _module.FinPath.Down_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.FinPath.Down_q(d) } 
  _module.FinPath.Down_q(d) <==> DatatypeCtorId(d) == ##_module.FinPath.Down);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.FinPath.Down_q(d) } 
  _module.FinPath.Down_q(d)
     ==> (exists a#49#0#0: DatatypeType :: d == #_module.FinPath.Down(a#49#0#0)));

// Constructor $Is
axiom (forall a#50#0#0: DatatypeType :: 
  { $Is(#_module.FinPath.Down(a#50#0#0), Tclass._module.FinPath()) } 
  $Is(#_module.FinPath.Down(a#50#0#0), Tclass._module.FinPath())
     <==> $Is(a#50#0#0, Tclass._module.FinPath()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.FinPath._h9(d), Tclass._module.FinPath(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.FinPath.Down_q(d)
       && $IsAlloc(d, Tclass._module.FinPath(), $h)
     ==> $IsAlloc(_module.FinPath._h9(d), Tclass._module.FinPath(), $h));

function _module.FinPath._h9(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#51#0#0: DatatypeType :: 
  { #_module.FinPath.Down(a#51#0#0) } 
  _module.FinPath._h9(#_module.FinPath.Down(a#51#0#0)) == a#51#0#0);

// Constructor function declaration
function #_module.FinPath.Stop() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.FinPath.Stop()) == ##_module.FinPath.Stop;
// Constructor $Is
axiom $Is(#_module.FinPath.Stop(), Tclass._module.FinPath());
}

const unique ##_module.FinPath.Stop: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.FinPath.Stop()) == ##_module.FinPath.Stop;
}

function _module.FinPath.Stop_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.FinPath.Stop_q(d) } 
  _module.FinPath.Stop_q(d) <==> DatatypeCtorId(d) == ##_module.FinPath.Stop);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.FinPath.Stop_q(d) } 
  _module.FinPath.Stop_q(d) ==> d == #_module.FinPath.Stop());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.FinPath(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.FinPath())
     ==> $IsAlloc(d, Tclass._module.FinPath(), $h));

// Depth-one case-split function
function $IsA#_module.FinPath(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.FinPath(d) } 
  $IsA#_module.FinPath(d)
     ==> _module.FinPath.Right_q(d)
       || _module.FinPath.Down_q(d)
       || _module.FinPath.Stop_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.FinPath.Stop_q(d), $Is(d, Tclass._module.FinPath()) } 
    { _module.FinPath.Down_q(d), $Is(d, Tclass._module.FinPath()) } 
    { _module.FinPath.Right_q(d), $Is(d, Tclass._module.FinPath()) } 
  $Is(d, Tclass._module.FinPath())
     ==> _module.FinPath.Right_q(d)
       || _module.FinPath.Down_q(d)
       || _module.FinPath.Stop_q(d));

function $Eq#_module.FinPath(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.FinPath($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.FinPath()) && $Is(d1, Tclass._module.FinPath())
     ==> ($Eq#_module.FinPath($LS(ly), d0, d1)
       <==> (
          _module.FinPath.Right_q(d0)
           && _module.FinPath.Right_q(d1)
           && (_module.FinPath.Right_q(d0) && _module.FinPath.Right_q(d1)
             ==> $Eq#_module.FinPath(ly, _module.FinPath._h8(d0), _module.FinPath._h8(d1))))
         || (
          _module.FinPath.Down_q(d0)
           && _module.FinPath.Down_q(d1)
           && (_module.FinPath.Down_q(d0) && _module.FinPath.Down_q(d1)
             ==> $Eq#_module.FinPath(ly, _module.FinPath._h9(d0), _module.FinPath._h9(d1))))
         || (_module.FinPath.Stop_q(d0) && _module.FinPath.Stop_q(d1))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.FinPath($LS(ly), d0, d1) } 
  $Eq#_module.FinPath($LS(ly), d0, d1) <==> $Eq#_module.FinPath(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.FinPath($LS(ly), d0, d1) } 
  $Eq#_module.FinPath($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.FinPath(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.FinPath()) && $Is(d1, Tclass._module.FinPath())
     ==> ($PrefixEq#_module.FinPath(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (
              _module.FinPath.Right_q(d0)
               && _module.FinPath.Right_q(d1)
               && (_module.FinPath.Right_q(d0) && _module.FinPath.Right_q(d1)
                 ==> $PrefixEq#_module.FinPath(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.FinPath._h8(d0), 
                  _module.FinPath._h8(d1))))
             || (
              _module.FinPath.Down_q(d0)
               && _module.FinPath.Down_q(d1)
               && (_module.FinPath.Down_q(d0) && _module.FinPath.Down_q(d1)
                 ==> $PrefixEq#_module.FinPath(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.FinPath._h9(d0), 
                  _module.FinPath._h9(d1))))
             || (_module.FinPath.Stop_q(d0) && _module.FinPath.Stop_q(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.FinPath(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.FinPath(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.FinPath(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.FinPath($LS(ly), d0, d1) } 
  $Eq#_module.FinPath($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.FinPath($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.FinPath(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.FinPath(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.FinPath($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1), $PrefixEq#_module.FinPath(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.FinPath(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.FinPath(k, $LS(ly), d0, d1));

const unique class._module.FinPath: ClassName;

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

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$Tree: TyTagFamily;

const unique tytagFamily$Number: TyTagFamily;

const unique tytagFamily$CoOption: TyTagFamily;

const unique tytagFamily$InfPath: TyTagFamily;

const unique tytagFamily$FinPath: TyTagFamily;

// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy

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

function Tclass._System.___hFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc5: TyTag;

// Tclass._System.___hFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hFunc5
     && TagFamily(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#Func5);

function Tclass._System.___hFunc5_0(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_0(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hFunc5_1(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_1(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hFunc5_2(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_2(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hFunc5_3(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_3(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hFunc5_4(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_4(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hFunc5_5(Ty) : Ty;

// Tclass._System.___hFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hFunc5_5(Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

function Handle5([Heap,Box,Box,Box,Box,Box]Box, 
    [Heap,Box,Box,Box,Box,Box]bool, 
    [Heap,Box,Box,Box,Box,Box]Set)
   : HandleType;

function Apply5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : Box;

function Requires5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : bool;

function Reads5(Ty, Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Apply5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4) } 
  Apply5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4)
     == h[heap, bx0, bx1, bx2, bx3, bx4]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Requires5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4) } 
  r[heap, bx0, bx1, bx2, bx3, bx4]
     ==> Requires5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box, 
    bx: Box :: 
  { Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4), 
      bx) } 
  Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, heap, Handle5(h, r, rd), bx0, bx1, bx2, bx3, bx4), 
      bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3, bx4], bx));

function {:inline} Requires5#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box)
   : bool
{
  true
}

function {:inline} Reads5#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box)
   : bool
{
  true
}

// frame axiom for Reads5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Reads5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Apply5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// frame axiom for Apply5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { $HeapSucc(h0, h1), Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply5(t0, t1, t2, t3, t4, t5, h0, f, bx0, bx1, bx2, bx3, bx4)
       == Apply5(t0, t1, t2, t3, t4, t5, h1, f, bx0, bx1, bx2, bx3, bx4));

// empty-reads property for Reads5 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), $IsGoodHeap(heap) } 
    { Reads5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
     ==> (Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)
       <==> Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)));

// empty-reads property for Requires5
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx4: Box :: 
  { Requires5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), $IsGoodHeap(heap) } 
    { Requires5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $IsBox(bx4, t4)
       && $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
       && Set#Equal(Reads5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4), 
        Set#Empty(): Set)
     ==> Requires5(t0, t1, t2, t3, t4, t5, $OneHeap, f, bx0, bx1, bx2, bx3, bx4)
       == Requires5(t0, t1, t2, t3, t4, t5, heap, f, bx0, bx1, bx2, bx3, bx4));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty :: 
  { $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5)) } 
  $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
      { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && $IsBox(bx4, t4)
           && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
         ==> $IsBox(Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), t5)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    t5: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty, 
    u5: Ty :: 
  { $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5)), $Is(f, Tclass._System.___hFunc5(u0, u1, u2, u3, u4, u5)) } 
  $Is(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5))
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
        { $IsBox(bx, u4) } { $IsBox(bx, t4) } 
        $IsBox(bx, u4) ==> $IsBox(bx, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, t5) } { $IsBox(bx, u5) } 
        $IsBox(bx, t5) ==> $IsBox(bx, u5))
     ==> $Is(f, Tclass._System.___hFunc5(u0, u1, u2, u3, u4, u5)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
        { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
          { Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
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
             && 
            $IsBox(bx4, t4)
             && $IsAllocBox(bx4, t4, h)
             && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, t5: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h) } 
  $IsGoodHeap(h)
       && $IsAlloc(f, Tclass._System.___hFunc5(t0, t1, t2, t3, t4, t5), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box, bx4: Box :: 
      { Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && $IsAllocBox(bx4, t4, h)
           && Requires5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4)
         ==> $IsAllocBox(Apply5(t0, t1, t2, t3, t4, t5, h, f, bx0, bx1, bx2, bx3, bx4), t5, h)));

function Tclass._System.___hPartialFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc5: TyTag;

// Tclass._System.___hPartialFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hPartialFunc5
     && TagFamily(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#PartialFunc5);

function Tclass._System.___hPartialFunc5_0(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_0(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc5_1(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_1(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc5_2(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_2(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc5_3(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_3(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc5_4(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_4(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hPartialFunc5_5(Ty) : Ty;

// Tclass._System.___hPartialFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hPartialFunc5_5(Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

// $Is axiom for subset type _System._#PartialFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box, x4#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
           ==> Set#Equal(Reads5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0, x4#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h));

function Tclass._System.___hTotalFunc5(Ty, Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc5: TyTag;

// Tclass._System.___hTotalFunc5 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tag(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == Tagclass._System.___hTotalFunc5
     && TagFamily(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       == tytagFamily$_#TotalFunc5);

function Tclass._System.___hTotalFunc5_0(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_0(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc5_1(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_1(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc5_2(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_2(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc5_3(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_3(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc5_4(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_4(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$T4);

function Tclass._System.___hTotalFunc5_5(Ty) : Ty;

// Tclass._System.___hTotalFunc5 injectivity 5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R) } 
  Tclass._System.___hTotalFunc5_5(Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)));

// $Is axiom for subset type _System._#TotalFunc5
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$T4: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box, x4#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
             && $IsBox(x4#0, #$T4)
           ==> Requires5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0, x4#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc5
axiom (forall #$T0: Ty, 
    #$T1: Ty, 
    #$T2: Ty, 
    #$T3: Ty, 
    #$T4: Ty, 
    #$R: Ty, 
    f#0: HandleType, 
    $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc5(#$T0, #$T1, #$T2, #$T3, #$T4, #$R), $h));

const unique class.M1.__default: ClassName;

// function declaration for M1._default.GetSt
function M1.__default.GetSt(p#0: Box, st#0: DatatypeType) : Box
uses {
// consequence axiom for M1.__default.GetSt
axiom 2 <= $FunctionContextHeight
   ==> (forall p#0: Box, st#0: DatatypeType :: 
    { M1.__default.GetSt(p#0, st#0) } 
    M1.__default.GetSt#canCall(p#0, st#0)
         || (2 < $FunctionContextHeight
           && 
          $IsBox(p#0, Tclass.M1.Path())
           && $Is(st#0, Tclass.M1.State())
           && Set#IsMember(M1.__default.DomSt(st#0), p#0))
       ==> $IsBox(M1.__default.GetSt(p#0, st#0), Tclass.M1.Artifact()));
// alloc consequence axiom for M1.__default.GetSt
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, p#0: Box, st#0: DatatypeType :: 
    { $IsAllocBox(M1.__default.GetSt(p#0, st#0), Tclass.M1.Artifact(), $Heap) } 
    (M1.__default.GetSt#canCall(p#0, st#0)
           || (2 < $FunctionContextHeight
             && 
            $IsBox(p#0, Tclass.M1.Path())
             && $IsAllocBox(p#0, Tclass.M1.Path(), $Heap)
             && 
            $Is(st#0, Tclass.M1.State())
             && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
             && Set#IsMember(M1.__default.DomSt(st#0), p#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M1.__default.GetSt(p#0, st#0), Tclass.M1.Artifact(), $Heap));
// definition axiom for M1.__default.GetSt (revealed)
axiom {:id "id606"} 2 <= $FunctionContextHeight
   ==> (forall p#0: Box, st#0: DatatypeType :: 
    { M1.__default.GetSt(p#0, st#0) } 
    M1.__default.GetSt#canCall(p#0, st#0)
         || (2 < $FunctionContextHeight
           && 
          $IsBox(p#0, Tclass.M1.Path())
           && $Is(st#0, Tclass.M1.State())
           && Set#IsMember(M1.__default.DomSt(st#0), p#0))
       ==> M1.State.StateCons_q(st#0)
         && M1.__default.GetSt(p#0, st#0) == Map#Elements(M1.State.m(st#0))[p#0]);
// definition axiom for M1.__default.GetSt for decreasing-related literals (revealed)
axiom {:id "id607"} 2 <= $FunctionContextHeight
   ==> (forall p#0: Box, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.GetSt(p#0, Lit(st#0)) } 
    M1.__default.GetSt#canCall(p#0, Lit(st#0))
         || (2 < $FunctionContextHeight
           && 
          $IsBox(p#0, Tclass.M1.Path())
           && $Is(st#0, Tclass.M1.State())
           && Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#0))
       ==> M1.State.StateCons_q(Lit(st#0))
         && M1.__default.GetSt(p#0, Lit(st#0))
           == Map#Elements(Lit(M1.State.m(Lit(st#0))))[p#0]);
// definition axiom for M1.__default.GetSt for all literals (revealed)
axiom {:id "id608"} 2 <= $FunctionContextHeight
   ==> (forall p#0: Box, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.GetSt(Lit(p#0), Lit(st#0)) } 
    M1.__default.GetSt#canCall(Lit(p#0), Lit(st#0))
         || (2 < $FunctionContextHeight
           && 
          $IsBox(p#0, Tclass.M1.Path())
           && $Is(st#0, Tclass.M1.State())
           && Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), Lit(p#0)))
       ==> M1.State.StateCons_q(Lit(st#0))
         && M1.__default.GetSt(Lit(p#0), Lit(st#0))
           == Map#Elements(Lit(M1.State.m(Lit(st#0))))[Lit(p#0)]);
}

function M1.__default.GetSt#canCall(p#0: Box, st#0: DatatypeType) : bool;

function Tclass.M1.Path() : Ty
uses {
axiom $AlwaysAllocated(Tclass.M1.Path());
}

function Tclass.M1.State() : Ty
uses {
// Tclass.M1.State Tag
axiom Tag(Tclass.M1.State()) == Tagclass.M1.State
   && TagFamily(Tclass.M1.State()) == tytagFamily$State;
}

const unique Tagclass.M1.State: TyTag;

// Box/unbox axiom for Tclass.M1.State
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M1.State()) } 
  $IsBox(bx, Tclass.M1.State())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.State()));

function Tclass.M1.Artifact() : Ty;

function M1.__default.GetSt#requires(Box, DatatypeType) : bool;

// #requires axiom for M1.__default.GetSt
axiom (forall p#0: Box, st#0: DatatypeType :: 
  { M1.__default.GetSt#requires(p#0, st#0) } 
  $IsBox(p#0, Tclass.M1.Path()) && $Is(st#0, Tclass.M1.State())
     ==> M1.__default.GetSt#requires(p#0, st#0)
       == Set#IsMember(M1.__default.DomSt(st#0), p#0));

procedure {:verboseName "M1.GetSt (well-formedness)"} CheckWellformed$$M1.__default.GetSt(p#0: Box where $IsBox(p#0, Tclass.M1.Path()), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.GetSt (well-formedness)"} CheckWellformed$$M1.__default.GetSt(p#0: Box, st#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##st#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#0, Tclass.M1.State(), $Heap);
    assume M1.__default.DomSt#canCall(st#0);
    assume {:id "id609"} Set#IsMember(M1.__default.DomSt(st#0), p#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(M1.__default.GetSt(p#0, st#0), Tclass.M1.Artifact());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume M1.State.StateCons_q(st#0);
        assert {:id "id610"} Set#IsMember(Map#Domain(M1.State.m(st#0)), p#0);
        assume {:id "id611"} M1.__default.GetSt(p#0, st#0) == Map#Elements(M1.State.m(st#0))[p#0];
        assume M1.State.StateCons_q(st#0);
        // CheckWellformedWithResult: any expression
        assume $IsBox(M1.__default.GetSt(p#0, st#0), Tclass.M1.Artifact());
        return;

        assume false;
    }
}



// function declaration for M1._default.DomSt
function M1.__default.DomSt(st#0: DatatypeType) : Set
uses {
// consequence axiom for M1.__default.DomSt
axiom 1 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType :: 
    { M1.__default.DomSt(st#0) } 
    M1.__default.DomSt#canCall(st#0)
         || (1 < $FunctionContextHeight && $Is(st#0, Tclass.M1.State()))
       ==> (forall p#0: Box :: 
          { Set#IsMember(Map#Domain(M1.State.m(st#0)), p#0) } 
            { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
          $IsBox(p#0, Tclass.M1.Path())
             ==> 
            Set#IsMember(M1.__default.DomSt(st#0), p#0)
             ==> Set#IsMember(Map#Domain(M1.State.m(st#0)), p#0))
         && $Is(M1.__default.DomSt(st#0), TSet(Tclass.M1.Path())));
// definition axiom for M1.__default.DomSt (revealed)
axiom {:id "id612"} 1 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType :: 
    { M1.__default.DomSt(st#0) } 
    M1.__default.DomSt#canCall(st#0)
         || (1 < $FunctionContextHeight && $Is(st#0, Tclass.M1.State()))
       ==> M1.State.StateCons_q(st#0)
         && M1.__default.DomSt(st#0)
           == Set#FromBoogieMap((lambda $y#0: Box :: 
              $IsBox($y#0, Tclass.M1.Path())
                 && Set#IsMember(Map#Domain(M1.State.m(st#0)), $y#0))));
// definition axiom for M1.__default.DomSt for all literals (revealed)
axiom {:id "id613"} 1 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType :: 
    {:weight 3} { M1.__default.DomSt(Lit(st#0)) } 
    M1.__default.DomSt#canCall(Lit(st#0))
         || (1 < $FunctionContextHeight && $Is(st#0, Tclass.M1.State()))
       ==> M1.State.StateCons_q(Lit(st#0))
         && M1.__default.DomSt(Lit(st#0))
           == Set#FromBoogieMap((lambda $y#1: Box :: 
              $IsBox($y#1, Tclass.M1.Path())
                 && Set#IsMember(Map#Domain(M1.State.m(Lit(st#0))), $y#1))));
}

function M1.__default.DomSt#canCall(st#0: DatatypeType) : bool;

function M1.__default.DomSt#requires(DatatypeType) : bool;

// #requires axiom for M1.__default.DomSt
axiom (forall st#0: DatatypeType :: 
  { M1.__default.DomSt#requires(st#0) } 
  $Is(st#0, Tclass.M1.State()) ==> M1.__default.DomSt#requires(st#0) == true);

procedure {:verboseName "M1.DomSt (well-formedness)"} CheckWellformed$$M1.__default.DomSt(st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id614"} (forall p#3: Box :: 
    { Set#IsMember(Map#Domain(M1.State.m(st#0)), p#3) } 
      { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
    $IsBox(p#3, Tclass.M1.Path())
       ==> 
      Set#IsMember(M1.__default.DomSt(st#0), p#3)
       ==> Set#IsMember(Map#Domain(M1.State.m(st#0)), p#3));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.DomSt (well-formedness)"} CheckWellformed$$M1.__default.DomSt(st#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var p#4: Box;
  var ##st#0: DatatypeType;
  var p#5: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(M1.__default.DomSt(st#0), TSet(Tclass.M1.Path()));
        havoc p#4;
        assume $IsBox(p#4, Tclass.M1.Path()) && $IsAllocBox(p#4, Tclass.M1.Path(), $Heap);
        if (*)
        {
            ##st#0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#0, Tclass.M1.State(), $Heap);
            assert {:id "id615"} M1.State#Equal(st#0, st#0) || DtRank(##st#0) < DtRank(st#0);
            assume M1.State#Equal(st#0, st#0) || M1.__default.DomSt#canCall(st#0);
            assume {:id "id616"} Set#IsMember(M1.__default.DomSt(st#0), p#4);
            assume M1.State.StateCons_q(st#0);
            assume {:id "id617"} Set#IsMember(Map#Domain(M1.State.m(st#0)), p#4);
        }
        else
        {
            assume {:id "id618"} Set#IsMember(M1.__default.DomSt(st#0), p#4)
               ==> Set#IsMember(Map#Domain(M1.State.m(st#0)), p#4);
        }

        assume {:id "id619"} (forall p#3: Box :: 
          { Set#IsMember(Map#Domain(M1.State.m(st#0)), p#3) } 
            { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
          $IsBox(p#3, Tclass.M1.Path())
             ==> 
            Set#IsMember(M1.__default.DomSt(st#0), p#3)
             ==> Set#IsMember(Map#Domain(M1.State.m(st#0)), p#3));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc p#5;
        if ($IsBox(p#5, Tclass.M1.Path()) && $IsAllocBox(p#5, Tclass.M1.Path(), $Heap))
        {
            assume M1.State.StateCons_q(st#0);
            if (Set#IsMember(Map#Domain(M1.State.m(st#0)), p#5))
            {
            }
        }

        // End Comprehension WF check
        assume {:id "id620"} M1.__default.DomSt(st#0)
           == Set#FromBoogieMap((lambda $y#3: Box :: 
              $IsBox($y#3, Tclass.M1.Path())
                 && Set#IsMember(Map#Domain(M1.State.m(st#0)), $y#3)));
        assume M1.State.StateCons_q(st#0);
        // CheckWellformedWithResult: any expression
        assume $Is(M1.__default.DomSt(st#0), TSet(Tclass.M1.Path()));
        return;

        assume false;
    }
}



procedure {:verboseName "M1.Main (well-formedness)"} CheckWellFormed$$M1.__default.Main();
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.Main (call)"} Call$$M1.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "M1.Main (correctness)"} Impl$$M1.__default.Main() returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



function Tclass.M1.Expression() : Ty
uses {
// Tclass.M1.Expression Tag
axiom Tag(Tclass.M1.Expression()) == Tagclass.M1.Expression
   && TagFamily(Tclass.M1.Expression()) == tytagFamily$Expression;
}

const unique Tagclass.M1.Expression: TyTag;

// Box/unbox axiom for Tclass.M1.Expression
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M1.Expression()) } 
  $IsBox(bx, Tclass.M1.Expression())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.Expression()));

function Tclass.M1.Primitive() : Ty
uses {
// Tclass.M1.Primitive Tag
axiom Tag(Tclass.M1.Primitive()) == Tagclass.M1.Primitive
   && TagFamily(Tclass.M1.Primitive()) == tytagFamily$Primitive;
}

const unique Tagclass.M1.Primitive: TyTag;

// Box/unbox axiom for Tclass.M1.Primitive
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M1.Primitive()) } 
  $IsBox(bx, Tclass.M1.Primitive())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.Primitive()));

function Tclass.M1.Program() : Ty
uses {
// Tclass.M1.Program Tag
axiom Tag(Tclass.M1.Program()) == Tagclass.M1.Program
   && TagFamily(Tclass.M1.Program()) == tytagFamily$Program;
}

const unique Tagclass.M1.Program: TyTag;

// Box/unbox axiom for Tclass.M1.Program
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M1.Program()) } 
  $IsBox(bx, Tclass.M1.Program())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.Program()));

function Tclass.M1.Tuple(Ty, Ty) : Ty;

const unique Tagclass.M1.Tuple: TyTag;

// Tclass.M1.Tuple Tag
axiom (forall M1.Tuple$A: Ty, M1.Tuple$B: Ty :: 
  { Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B) } 
  Tag(Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) == Tagclass.M1.Tuple
     && TagFamily(Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) == tytagFamily$Tuple);

function Tclass.M1.Tuple_0(Ty) : Ty;

// Tclass.M1.Tuple injectivity 0
axiom (forall M1.Tuple$A: Ty, M1.Tuple$B: Ty :: 
  { Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B) } 
  Tclass.M1.Tuple_0(Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) == M1.Tuple$A);

function Tclass.M1.Tuple_1(Ty) : Ty;

// Tclass.M1.Tuple injectivity 1
axiom (forall M1.Tuple$A: Ty, M1.Tuple$B: Ty :: 
  { Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B) } 
  Tclass.M1.Tuple_1(Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) == M1.Tuple$B);

// Box/unbox axiom for Tclass.M1.Tuple
axiom (forall M1.Tuple$A: Ty, M1.Tuple$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) } 
  $IsBox(bx, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.Main (correctness)"} Impl$$M1.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var calcC#0: Seq
     where $Is(calcC#0, TSeq(TChar)) && $IsAlloc(calcC#0, TSeq(TChar), $Heap);
  var calcH#0: Box
     where $IsBox(calcH#0, Tclass.M1.Path())
       && $IsAllocBox(calcH#0, Tclass.M1.Path(), $Heap);
  var calcObj#0: Seq
     where $Is(calcObj#0, TSeq(TChar)) && $IsAlloc(calcObj#0, TSeq(TChar), $Heap);
  var cmd#0: DatatypeType
     where $Is(cmd#0, Tclass.M1.Expression())
       && $IsAlloc(cmd#0, Tclass.M1.Expression(), $Heap);
  var deps#0: DatatypeType
     where $Is(deps#0, Tclass.M1.Expression())
       && $IsAlloc(deps#0, Tclass.M1.Expression(), $Heap);
  var exps#0: DatatypeType
     where $Is(exps#0, Tclass.M1.Expression())
       && $IsAlloc(exps#0, Tclass.M1.Expression(), $Heap);
  var exec#0: DatatypeType
     where $Is(exec#0, Tclass.M1.Expression())
       && $IsAlloc(exec#0, Tclass.M1.Expression(), $Heap);
  var h#0: Box
     where $IsBox(h#0, Tclass.M1.Artifact())
       && $IsAllocBox(h#0, Tclass.M1.Artifact(), $Heap);
  var st#0: DatatypeType
     where $Is(st#0, Tclass.M1.State()) && $IsAlloc(st#0, Tclass.M1.State(), $Heap);
  var ##cmd#0: Seq;
  var ##deps#0: Set;
  var ##exp#0: Seq;
  var ##prim#0: DatatypeType;
  var ##args#0: Seq;
  var ##st#0: DatatypeType;
  var program#0: DatatypeType
     where $Is(program#0, Tclass.M1.Program())
       && $IsAlloc(program#0, Tclass.M1.Program(), $Heap);
  var result#0: DatatypeType
     where $Is(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()))
       && $IsAlloc(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), $Heap);
  var ##prog#0: DatatypeType;
  var ##st#1: DatatypeType;
  var e#1: DatatypeType
     where $Is(e#1, Tclass.M1.Expression()) && $IsAlloc(e#1, Tclass.M1.Expression(), $Heap);
  var st'#0: DatatypeType
     where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap);
  var $rhs#0: DatatypeType;
  var $rhs#1: DatatypeType;

    // AddMethodImpl: Main, Impl$$M1.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc calcC#0 /* where $Is(calcC#0, TSeq(TChar)) && $IsAlloc(calcC#0, TSeq(TChar), $Heap) */, calcH#0 /* where $IsBox(calcH#0, Tclass.M1.Path())
       && $IsAllocBox(calcH#0, Tclass.M1.Path(), $Heap) */, calcObj#0 /* where $Is(calcObj#0, TSeq(TChar)) && $IsAlloc(calcObj#0, TSeq(TChar), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(450,13)
    assume true;
    assume true;
    cmd#0 := #M1.Expression.exprLiteral(#M1.Literal.litString(calcC#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(451,14)
    assume true;
    assume true;
    deps#0 := #M1.Expression.exprLiteral(#M1.Literal.litArrOfPaths(Set#UnionOne(Set#Empty(): Set, calcH#0)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(452,14)
    assume true;
    assume true;
    exps#0 := #M1.Expression.exprLiteral(#M1.Literal.litArrOfStrings(Set#UnionOne(Set#Empty(): Set, $Box(calcObj#0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(453,14)
    assume true;
    assume true;
    exec#0 := #M1.Expression.exprInvocation(Lit(#M1.Expression.exprLiteral(Lit(#M1.Literal.litPrimitive(Lit(#M1.Primitive.primExec()))))), 
      Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(cmd#0)), $Box(deps#0)), $Box(exps#0)));
    havoc h#0 /* where $IsBox(h#0, Tclass.M1.Artifact())
       && $IsAllocBox(h#0, Tclass.M1.Artifact(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(456,12)
    assume true;
    assume true;
    st#0 := #M1.State.StateCons(Map#Build(Map#Empty(): Map, calcH#0, h#0));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(458,5)
    ##cmd#0 := calcC#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##cmd#0, TSeq(TChar), $Heap);
    ##deps#0 := Set#UnionOne(Set#Empty(): Set, calcH#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##deps#0, TSet(Tclass.M1.Path()), $Heap);
    ##exp#0 := calcObj#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##exp#0, TSeq(TChar), $Heap);
    assume M1.__default.Loc#canCall(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0);
    if (calcH#0
       != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0))
    {
        ##prim#0 := Lit(#M1.Primitive.primExec());
        // assume allocatedness for argument to function
        assume $IsAlloc(##prim#0, Tclass.M1.Primitive(), $Heap);
        assert {:id "id626"} M1.Expression.exprInvocation_q(exec#0);
        ##args#0 := M1.Expression.args(exec#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##args#0, TSeq(Tclass.M1.Expression()), $Heap);
        ##st#0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#0, Tclass.M1.State(), $Heap);
        assert {:id "id627"} {:subsumption 0} M1.Primitive.primExec_q(##prim#0) ==> Seq#Length(##args#0) == LitInt(3);
        assert {:id "id628"} {:subsumption 0} M1.Primitive.primCreatePath_q(##prim#0) ==> Seq#Length(##args#0) == LitInt(1);
        assume M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0);
    }

    assume M1.__default.Loc#canCall(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       && (calcH#0
           != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
         ==> M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0));
    assert {:id "id629"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> Lit(false));
    assert {:id "id630"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            M1.Expression.exprLiteral_q(cmd#1)));
    assert {:id "id631"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            M1.Literal.litString_q(M1.Expression.lit(cmd#1))));
    assert {:id "id632"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            M1.Expression.exprLiteral_q(deps#1)));
    assert {:id "id633"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            M1.Literal.litArrOfPaths_q(M1.Expression.lit(deps#1))));
    assert {:id "id634"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            M1.Expression.exprLiteral_q(exps#1)));
    assert {:id "id635"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            M1.Literal.litArrOfStrings_q(M1.Expression.lit(exps#1))));
    assert {:id "id636"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            Set#Subset(M1.Literal.paths(M1.Expression.lit(deps#1)), M1.__default.DomSt(st#0))));
    assert {:id "id637"} {:subsumption 0} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> 
      M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0)
         || (!Lit(M1.Primitive.primCreatePath_q(Lit(#M1.Primitive.primExec())))
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(M1.Expression.args(exec#0), LitInt(2))): DatatypeType; 
            M1.__default.Pre#canCall(M1.Literal.str(M1.Expression.lit(cmd#1)), 
                M1.Literal.paths(M1.Expression.lit(deps#1)), 
                M1.Literal.strs(M1.Expression.lit(exps#1)), 
                st#0)
               ==> M1.__default.Pre(M1.Literal.str(M1.Expression.lit(cmd#1)), 
                  M1.Literal.paths(M1.Expression.lit(deps#1)), 
                  M1.Literal.strs(M1.Expression.lit(exps#1)), 
                  st#0)
                 || (forall e#0: Seq :: 
                  { M1.__default.Loc(M1.Literal.str(M1.Expression.lit(cmd#1)), 
                      M1.Literal.paths(M1.Expression.lit(deps#1)), 
                      e#0) } 
                    { Set#IsMember(M1.Literal.strs(M1.Expression.lit(exps#1)), $Box(e#0)) } 
                  $Is(e#0, TSeq(TChar))
                     ==> 
                    Set#IsMember(M1.Literal.strs(M1.Expression.lit(exps#1)), $Box(e#0))
                     ==> 
                    Set#IsMember(M1.__default.DomSt(st#0), 
                      M1.__default.Loc(M1.Literal.str(M1.Expression.lit(cmd#1)), 
                        M1.Literal.paths(M1.Expression.lit(deps#1)), 
                        e#0))
                     ==> M1.__default.GetSt(M1.__default.Loc(M1.Literal.str(M1.Expression.lit(cmd#1)), 
                          M1.Literal.paths(M1.Expression.lit(deps#1)), 
                          e#0), 
                        st#0)
                       == M1.__default.Oracle(M1.__default.Loc(M1.Literal.str(M1.Expression.lit(cmd#1)), 
                          M1.Literal.paths(M1.Expression.lit(deps#1)), 
                          e#0), 
                        st#0))));
    assume {:id "id638"} calcH#0
         != M1.__default.Loc(calcC#0, Set#UnionOne(Set#Empty(): Set, calcH#0), calcObj#0)
       ==> M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), M1.Expression.args(exec#0), st#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(460,17)
    assume true;
    assume true;
    program#0 := #M1.Program.Program(Seq#Build(Seq#Empty(): Seq, $Box(#M1.Statement.stmtReturn(exec#0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(461,16)
    assume true;
    ##prog#0 := program#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##prog#0, Tclass.M1.Program(), $Heap);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#1, Tclass.M1.State(), $Heap);
    assert {:id "id640"} {:subsumption 0} M1.__default.Legal#canCall(M1.Program.stmts(##prog#0))
       ==> M1.__default.Legal(M1.Program.stmts(##prog#0))
         || Seq#Length(M1.Program.stmts(##prog#0)) != 0;
    assume M1.__default.Legal(M1.Program.stmts(##prog#0));
    assume M1.__default.build#canCall(program#0, st#0);
    assume M1.Tuple.Pair_q(M1.__default.build(program#0, st#0));
    assume M1.__default.build#canCall(program#0, st#0);
    result#0 := M1.__default.build(program#0, st#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(462,16)
    assume true;
    assume true;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#0 := $Unbox(M1.Tuple.fst(result#0)): DatatypeType;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#1 := $Unbox(M1.Tuple.snd(result#0)): DatatypeType;
    e#1 := $rhs#0;
    st'#0 := $rhs#1;
}



// function declaration for M1._default.ValidState
function M1.__default.ValidState(st#0: DatatypeType) : bool
uses {
// definition axiom for M1.__default.ValidState (revealed)
axiom {:id "id646"} 2 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType :: 
    { M1.__default.ValidState(st#0) } 
    M1.__default.ValidState#canCall(st#0)
         || (2 < $FunctionContextHeight && $Is(st#0, Tclass.M1.State()))
       ==> (forall p#0: Box :: 
          { M1.__default.WellFounded(p#0) } 
            { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
          $IsBox(p#0, Tclass.M1.Path())
             ==> M1.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M1.__default.DomSt(st#0), p#0)
                 ==> M1.__default.WellFounded#canCall(p#0)))
         && M1.__default.ValidState(st#0)
           == (forall p#0: Box :: 
            { M1.__default.WellFounded(p#0) } 
              { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
            $IsBox(p#0, Tclass.M1.Path())
               ==> 
              Set#IsMember(M1.__default.DomSt(st#0), p#0)
               ==> M1.__default.WellFounded(p#0)));
// definition axiom for M1.__default.ValidState for all literals (revealed)
axiom {:id "id647"} 2 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType :: 
    {:weight 3} { M1.__default.ValidState(Lit(st#0)) } 
    M1.__default.ValidState#canCall(Lit(st#0))
         || (2 < $FunctionContextHeight && $Is(st#0, Tclass.M1.State()))
       ==> (forall p#1: Box :: 
          { M1.__default.WellFounded(p#1) } 
            { Set#IsMember(M1.__default.DomSt(st#0), p#1) } 
          $IsBox(p#1, Tclass.M1.Path())
             ==> M1.__default.DomSt#canCall(Lit(st#0))
               && (Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#1)
                 ==> M1.__default.WellFounded#canCall(p#1)))
         && M1.__default.ValidState(Lit(st#0))
           == (forall p#1: Box :: 
            { M1.__default.WellFounded(p#1) } 
              { Set#IsMember(M1.__default.DomSt(st#0), p#1) } 
            $IsBox(p#1, Tclass.M1.Path())
               ==> 
              Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#1)
               ==> M1.__default.WellFounded(p#1)));
}

function M1.__default.ValidState#canCall(st#0: DatatypeType) : bool;

function M1.__default.ValidState#requires(DatatypeType) : bool;

// #requires axiom for M1.__default.ValidState
axiom (forall st#0: DatatypeType :: 
  { M1.__default.ValidState#requires(st#0) } 
  $Is(st#0, Tclass.M1.State()) ==> M1.__default.ValidState#requires(st#0) == true);

procedure {:verboseName "M1.ValidState (well-formedness)"} CheckWellformed$$M1.__default.ValidState(st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.WellFounded
function M1.__default.WellFounded(p#0: Box) : bool;

function M1.__default.WellFounded#canCall(p#0: Box) : bool;

function M1.__default.WellFounded#requires(Box) : bool;

// #requires axiom for M1.__default.WellFounded
axiom (forall p#0: Box :: 
  { M1.__default.WellFounded#requires(p#0) } 
  $IsBox(p#0, Tclass.M1.Path()) ==> M1.__default.WellFounded#requires(p#0) == true);

procedure {:verboseName "M1.WellFounded (well-formedness)"} CheckWellformed$$M1.__default.WellFounded(p#0: Box where $IsBox(p#0, Tclass.M1.Path()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Union
function M1.__default.Union(st#0: DatatypeType, st'#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for M1.__default.Union
axiom 3 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType, st'#0: DatatypeType :: 
    { M1.__default.Union(st#0, st'#0) } 
    M1.__default.Union#canCall(st#0, st'#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, Tclass.M1.State())
           && $Is(st'#0, Tclass.M1.State()))
       ==> (var result#0 := M1.__default.Union(st#0, st'#0); 
          Set#Equal(M1.__default.DomSt(result#0), 
              Set#Union(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0)))
             && (forall p#0: Box :: 
              { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
                { M1.__default.GetSt(p#0, result#0) } 
                { Set#IsMember(M1.__default.DomSt(result#0), p#0) } 
              $IsBox(p#0, Tclass.M1.Path())
                 ==> 
                Set#IsMember(M1.__default.DomSt(result#0), p#0)
                 ==> M1.__default.GetSt(p#0, result#0)
                   == M1.__default.GetSt(p#0, (if Set#IsMember(M1.__default.DomSt(st#0), p#0) then st#0 else st'#0))))
         && $Is(M1.__default.Union(st#0, st'#0), Tclass.M1.State()));
// alloc consequence axiom for M1.__default.Union
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, st#0: DatatypeType, st'#0: DatatypeType :: 
    { $IsAlloc(M1.__default.Union(st#0, st'#0), Tclass.M1.State(), $Heap) } 
    (M1.__default.Union#canCall(st#0, st'#0)
           || (3 < $FunctionContextHeight
             && 
            $Is(st#0, Tclass.M1.State())
             && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
             && 
            $Is(st'#0, Tclass.M1.State())
             && $IsAlloc(st'#0, Tclass.M1.State(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.Union(st#0, st'#0), Tclass.M1.State(), $Heap));
}

function M1.__default.Union#canCall(st#0: DatatypeType, st'#0: DatatypeType) : bool;

function M1.__default.Union#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for M1.__default.Union
axiom (forall st#0: DatatypeType, st'#0: DatatypeType :: 
  { M1.__default.Union#requires(st#0, st'#0) } 
  $Is(st#0, Tclass.M1.State()) && $Is(st'#0, Tclass.M1.State())
     ==> M1.__default.Union#requires(st#0, st'#0) == true);

procedure {:verboseName "M1.Union (well-formedness)"} CheckWellformed$$M1.__default.Union(st#0: DatatypeType where $Is(st#0, Tclass.M1.State()), 
    st'#0: DatatypeType where $Is(st'#0, Tclass.M1.State()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Compatible
function M1.__default.Compatible(sts#0: Set) : bool
uses {
// definition axiom for M1.__default.Compatible (revealed)
axiom {:id "id653"} 3 <= $FunctionContextHeight
   ==> (forall sts#0: Set :: 
    { M1.__default.Compatible(sts#0) } 
    M1.__default.Compatible#canCall(sts#0)
         || (3 < $FunctionContextHeight && $Is(sts#0, TSet(Tclass.M1.State())))
       ==> (forall st#0: DatatypeType, st'#0: DatatypeType, p#0: Box :: 
          { M1.__default.GetSt(p#0, st'#0), M1.__default.GetSt(p#0, st#0) } 
            { M1.__default.GetSt(p#0, st'#0), M1.__default.DomSt(st#0) } 
            { M1.__default.GetSt(p#0, st'#0), Set#IsMember(sts#0, $Box(st#0)) } 
            { M1.__default.GetSt(p#0, st#0), M1.__default.DomSt(st'#0) } 
            { M1.__default.GetSt(p#0, st#0), Set#IsMember(sts#0, $Box(st'#0)) } 
            { Set#IsMember(M1.__default.DomSt(st'#0), p#0), M1.__default.DomSt(st#0) } 
            { Set#IsMember(M1.__default.DomSt(st'#0), p#0), Set#IsMember(sts#0, $Box(st#0)) } 
            { M1.__default.DomSt(st'#0), Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
            { Set#IsMember(M1.__default.DomSt(st#0), p#0), Set#IsMember(sts#0, $Box(st'#0)) } 
          $Is(st#0, Tclass.M1.State())
               && $Is(st'#0, Tclass.M1.State())
               && $IsBox(p#0, Tclass.M1.Path())
             ==> 
            Set#IsMember(sts#0, $Box(st#0))
             ==> 
            Set#IsMember(sts#0, $Box(st'#0))
             ==> M1.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M1.__default.DomSt(st#0), p#0)
                 ==> M1.__default.DomSt#canCall(st'#0)
                   && (Set#IsMember(M1.__default.DomSt(st'#0), p#0)
                     ==> M1.__default.GetSt#canCall(p#0, st#0) && M1.__default.GetSt#canCall(p#0, st'#0))))
         && M1.__default.Compatible(sts#0)
           == (forall st#0: DatatypeType, st'#0: DatatypeType, p#0: Box :: 
            { M1.__default.GetSt(p#0, st'#0), M1.__default.GetSt(p#0, st#0) } 
              { M1.__default.GetSt(p#0, st'#0), M1.__default.DomSt(st#0) } 
              { M1.__default.GetSt(p#0, st'#0), Set#IsMember(sts#0, $Box(st#0)) } 
              { M1.__default.GetSt(p#0, st#0), M1.__default.DomSt(st'#0) } 
              { M1.__default.GetSt(p#0, st#0), Set#IsMember(sts#0, $Box(st'#0)) } 
              { Set#IsMember(M1.__default.DomSt(st'#0), p#0), M1.__default.DomSt(st#0) } 
              { Set#IsMember(M1.__default.DomSt(st'#0), p#0), Set#IsMember(sts#0, $Box(st#0)) } 
              { M1.__default.DomSt(st'#0), Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
              { Set#IsMember(M1.__default.DomSt(st#0), p#0), Set#IsMember(sts#0, $Box(st'#0)) } 
            $Is(st#0, Tclass.M1.State())
                 && $Is(st'#0, Tclass.M1.State())
                 && $IsBox(p#0, Tclass.M1.Path())
               ==> 
              Set#IsMember(sts#0, $Box(st#0))
                 && Set#IsMember(sts#0, $Box(st'#0))
                 && Set#IsMember(M1.__default.DomSt(st#0), p#0)
                 && Set#IsMember(M1.__default.DomSt(st'#0), p#0)
               ==> M1.__default.GetSt(p#0, st#0) == M1.__default.GetSt(p#0, st'#0)));
// definition axiom for M1.__default.Compatible for all literals (revealed)
axiom {:id "id654"} 3 <= $FunctionContextHeight
   ==> (forall sts#0: Set :: 
    {:weight 3} { M1.__default.Compatible(Lit(sts#0)) } 
    M1.__default.Compatible#canCall(Lit(sts#0))
         || (3 < $FunctionContextHeight && $Is(sts#0, TSet(Tclass.M1.State())))
       ==> (forall st#1: DatatypeType, st'#1: DatatypeType, p#1: Box :: 
          { M1.__default.GetSt(p#1, st'#1), M1.__default.GetSt(p#1, st#1) } 
            { M1.__default.GetSt(p#1, st'#1), M1.__default.DomSt(st#1) } 
            { M1.__default.GetSt(p#1, st'#1), Set#IsMember(sts#0, $Box(st#1)) } 
            { M1.__default.GetSt(p#1, st#1), M1.__default.DomSt(st'#1) } 
            { M1.__default.GetSt(p#1, st#1), Set#IsMember(sts#0, $Box(st'#1)) } 
            { Set#IsMember(M1.__default.DomSt(st'#1), p#1), M1.__default.DomSt(st#1) } 
            { Set#IsMember(M1.__default.DomSt(st'#1), p#1), Set#IsMember(sts#0, $Box(st#1)) } 
            { M1.__default.DomSt(st'#1), Set#IsMember(M1.__default.DomSt(st#1), p#1) } 
            { Set#IsMember(M1.__default.DomSt(st#1), p#1), Set#IsMember(sts#0, $Box(st'#1)) } 
          $Is(st#1, Tclass.M1.State())
               && $Is(st'#1, Tclass.M1.State())
               && $IsBox(p#1, Tclass.M1.Path())
             ==> 
            Set#IsMember(Lit(sts#0), $Box(st#1))
             ==> 
            Set#IsMember(Lit(sts#0), $Box(st'#1))
             ==> M1.__default.DomSt#canCall(st#1)
               && (Set#IsMember(M1.__default.DomSt(st#1), p#1)
                 ==> M1.__default.DomSt#canCall(st'#1)
                   && (Set#IsMember(M1.__default.DomSt(st'#1), p#1)
                     ==> M1.__default.GetSt#canCall(p#1, st#1) && M1.__default.GetSt#canCall(p#1, st'#1))))
         && M1.__default.Compatible(Lit(sts#0))
           == (forall st#1: DatatypeType, st'#1: DatatypeType, p#1: Box :: 
            { M1.__default.GetSt(p#1, st'#1), M1.__default.GetSt(p#1, st#1) } 
              { M1.__default.GetSt(p#1, st'#1), M1.__default.DomSt(st#1) } 
              { M1.__default.GetSt(p#1, st'#1), Set#IsMember(sts#0, $Box(st#1)) } 
              { M1.__default.GetSt(p#1, st#1), M1.__default.DomSt(st'#1) } 
              { M1.__default.GetSt(p#1, st#1), Set#IsMember(sts#0, $Box(st'#1)) } 
              { Set#IsMember(M1.__default.DomSt(st'#1), p#1), M1.__default.DomSt(st#1) } 
              { Set#IsMember(M1.__default.DomSt(st'#1), p#1), Set#IsMember(sts#0, $Box(st#1)) } 
              { M1.__default.DomSt(st'#1), Set#IsMember(M1.__default.DomSt(st#1), p#1) } 
              { Set#IsMember(M1.__default.DomSt(st#1), p#1), Set#IsMember(sts#0, $Box(st'#1)) } 
            $Is(st#1, Tclass.M1.State())
                 && $Is(st'#1, Tclass.M1.State())
                 && $IsBox(p#1, Tclass.M1.Path())
               ==> 
              Set#IsMember(Lit(sts#0), $Box(st#1))
                 && Set#IsMember(Lit(sts#0), $Box(st'#1))
                 && Set#IsMember(M1.__default.DomSt(st#1), p#1)
                 && Set#IsMember(M1.__default.DomSt(st'#1), p#1)
               ==> M1.__default.GetSt(p#1, st#1) == M1.__default.GetSt(p#1, st'#1)));
}

function M1.__default.Compatible#canCall(sts#0: Set) : bool;

function M1.__default.Compatible#requires(Set) : bool;

// #requires axiom for M1.__default.Compatible
axiom (forall sts#0: Set :: 
  { M1.__default.Compatible#requires(sts#0) } 
  $Is(sts#0, TSet(Tclass.M1.State()))
     ==> M1.__default.Compatible#requires(sts#0) == true);

procedure {:verboseName "M1.Compatible (well-formedness)"} CheckWellformed$$M1.__default.Compatible(sts#0: Set where $Is(sts#0, TSet(Tclass.M1.State())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Combine
function M1.__default.Combine($ly: LayerType, sts#0: Set) : DatatypeType
uses {
// consequence axiom for M1.__default.Combine
axiom 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, sts#0: Set :: 
    { M1.__default.Combine($ly, sts#0) } 
    M1.__default.Combine#canCall(sts#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(sts#0, TSet(Tclass.M1.State()))
           && !Set#Equal(sts#0, Set#Empty(): Set))
       ==> $Is(M1.__default.Combine($ly, sts#0), Tclass.M1.State()));
// alloc consequence axiom for M1.__default.Combine
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, $ly: LayerType, sts#0: Set :: 
    { $IsAlloc(M1.__default.Combine($ly, sts#0), Tclass.M1.State(), $Heap) } 
    (M1.__default.Combine#canCall(sts#0)
           || (4 < $FunctionContextHeight
             && 
            $Is(sts#0, TSet(Tclass.M1.State()))
             && $IsAlloc(sts#0, TSet(Tclass.M1.State()), $Heap)
             && !Set#Equal(sts#0, Set#Empty(): Set)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.Combine($ly, sts#0), Tclass.M1.State(), $Heap));
// definition axiom for M1.__default.Combine (revealed)
axiom {:id "id656"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, sts#0: Set :: 
    { M1.__default.Combine($LS($ly), sts#0), $IsGoodHeap($Heap) } 
    M1.__default.Combine#canCall(sts#0)
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(sts#0, TSet(Tclass.M1.State()))
           && !Set#Equal(sts#0, Set#Empty(): Set))
       ==> $let#0$canCall(sts#0)
         && (!Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box($let#0_st(sts#0))))
           ==> M1.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box($let#0_st(sts#0)))))
             && M1.__default.Union#canCall($let#0_st(sts#0), 
              M1.__default.Combine($ly, 
                Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box($let#0_st(sts#0)))))))
         && M1.__default.Combine($LS($ly), sts#0)
           == (var st#0 := $let#0_st(sts#0); 
            (if Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0)))
               then st#0
               else M1.__default.Union(st#0, 
                M1.__default.Combine($ly, Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0))))))));
// definition axiom for M1.__default.Combine for all literals (revealed)
axiom {:id "id657"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, sts#0: Set :: 
    {:weight 3} { M1.__default.Combine($LS($ly), Lit(sts#0)), $IsGoodHeap($Heap) } 
    M1.__default.Combine#canCall(Lit(sts#0))
         || (4 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(sts#0, TSet(Tclass.M1.State()))
           && !Set#Equal(sts#0, Set#Empty(): Set))
       ==> $let#0$canCall(Lit(sts#0))
         && (!Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box($let#0_st(Lit(sts#0)))))
           ==> M1.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box($let#0_st(Lit(sts#0))))))
             && M1.__default.Union#canCall($let#0_st(Lit(sts#0)), 
              M1.__default.Combine($LS($ly), 
                Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box($let#0_st(Lit(sts#0))))))))
         && M1.__default.Combine($LS($ly), Lit(sts#0))
           == (var st#1 := $let#0_st(Lit(sts#0)); 
            (if Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#1)))
               then st#1
               else M1.__default.Union(st#1, 
                M1.__default.Combine($LS($ly), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#1))))))));
}

function M1.__default.Combine#canCall(sts#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, sts#0: Set :: 
  { M1.__default.Combine($LS($ly), sts#0) } 
  M1.__default.Combine($LS($ly), sts#0) == M1.__default.Combine($ly, sts#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, sts#0: Set :: 
  { M1.__default.Combine(AsFuelBottom($ly), sts#0) } 
  M1.__default.Combine($ly, sts#0) == M1.__default.Combine($LZ, sts#0));

function M1.__default.Combine#requires(LayerType, Set) : bool;

// #requires axiom for M1.__default.Combine
axiom (forall $ly: LayerType, $Heap: Heap, sts#0: Set :: 
  { M1.__default.Combine#requires($ly, sts#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(sts#0, TSet(Tclass.M1.State()))
     ==> M1.__default.Combine#requires($ly, sts#0) == !Set#Equal(sts#0, Set#Empty(): Set));

function $let#0_st(sts: Set) : DatatypeType;

function $let#0$canCall(sts: Set) : bool;

axiom (forall sts: Set :: 
  { $let#0_st(sts) } 
  $let#0$canCall(sts)
     ==> $Is($let#0_st(sts), Tclass.M1.State())
       && Set#IsMember(sts, $Box($let#0_st(sts))));

procedure {:verboseName "M1.Combine (well-formedness)"} CheckWellformed$$M1.__default.Combine(sts#0: Set where $Is(sts#0, TSet(Tclass.M1.State())));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.Lemma_Combine (well-formedness)"} CheckWellFormed$$M1.__default.Lemma__Combine(sts#0: Set
       where $Is(sts#0, TSet(Tclass.M1.State()))
         && $IsAlloc(sts#0, TSet(Tclass.M1.State()), $Heap), 
    parent#0: DatatypeType
       where $Is(parent#0, Tclass.M1.State())
         && $IsAlloc(parent#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(parent#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.Lemma_Combine (call)"} Call$$M1.__default.Lemma__Combine(sts#0: Set
       where $Is(sts#0, TSet(Tclass.M1.State()))
         && $IsAlloc(sts#0, TSet(Tclass.M1.State()), $Heap), 
    parent#0: DatatypeType
       where $Is(parent#0, Tclass.M1.State())
         && $IsAlloc(parent#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(parent#0));
  // user-defined preconditions
  requires {:id "id670"} !Set#Equal(sts#0, Set#Empty(): Set);
  requires {:id "id671"} (forall st#1: DatatypeType :: 
    { M1.__default.Extends(parent#0, st#1) } 
      { M1.__default.ValidState(st#1) } 
      { Set#IsMember(sts#0, $Box(st#1)) } 
    $Is(st#1, Tclass.M1.State())
       ==> (Set#IsMember(sts#0, $Box(st#1)) ==> M1.__default.ValidState(st#1))
         && (Set#IsMember(sts#0, $Box(st#1)) ==> M1.__default.Extends(parent#0, st#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.Combine#canCall(sts#0)
     && M1.__default.ValidState#canCall(M1.__default.Combine($LS($LZ), sts#0))
     && (M1.__default.ValidState(M1.__default.Combine($LS($LZ), sts#0))
       ==> M1.__default.Combine#canCall(sts#0)
         && M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0)));
  free ensures {:id "id672"} M1.__default.ValidState#canCall(M1.__default.Combine($LS($LZ), sts#0))
     && 
    M1.__default.ValidState(M1.__default.Combine($LS($LZ), sts#0))
     && (forall p#0: Box :: 
      { M1.__default.WellFounded(p#0) } 
        { Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LZ), sts#0)), p#0) } 
      $IsBox(p#0, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LZ), sts#0)), p#0)
         ==> M1.__default.WellFounded(p#0));
  free ensures {:id "id673"} M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0))
     && 
    M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0))
     && 
    Set#Subset(M1.__default.DomSt(parent#0), 
      M1.__default.DomSt(M1.__default.Combine($LS($LZ), sts#0)))
     && (forall p#1: Box :: 
      { M1.__default.GetSt(p#1, parent#0) } 
        { M1.__default.GetSt(p#1, M1.__default.Combine($LS($LZ), sts#0)) } 
        { Set#IsMember(M1.__default.DomSt(parent#0), p#1) } 
      $IsBox(p#1, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(parent#0), p#1)
         ==> M1.__default.GetSt(p#1, M1.__default.Combine($LS($LZ), sts#0))
           == M1.__default.GetSt(p#1, parent#0))
     && (forall p#2: Box :: 
      { M1.__default.Oracle(p#2, parent#0) } 
        { M1.__default.GetSt(p#2, M1.__default.Combine($LS($LZ), sts#0)) } 
        { Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LZ), sts#0)), p#2) } 
        { Set#IsMember(M1.__default.DomSt(parent#0), p#2) } 
      $IsBox(p#2, Tclass.M1.Path())
         ==> 
        !Set#IsMember(M1.__default.DomSt(parent#0), p#2)
           && Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LZ), sts#0)), p#2)
         ==> M1.__default.GetSt(p#2, M1.__default.Combine($LS($LZ), sts#0))
           == M1.__default.Oracle(p#2, parent#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M1.Lemma_Combine (correctness)"} Impl$$M1.__default.Lemma__Combine(sts#0: Set
       where $Is(sts#0, TSet(Tclass.M1.State()))
         && $IsAlloc(sts#0, TSet(Tclass.M1.State()), $Heap), 
    parent#0: DatatypeType
       where $Is(parent#0, Tclass.M1.State())
         && $IsAlloc(parent#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(parent#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id674"} !Set#Equal(sts#0, Set#Empty(): Set);
  requires {:id "id675"} (forall st#1: DatatypeType :: 
    { M1.__default.Extends(parent#0, st#1) } 
      { M1.__default.ValidState(st#1) } 
      { Set#IsMember(sts#0, $Box(st#1)) } 
    $Is(st#1, Tclass.M1.State())
       ==> (Set#IsMember(sts#0, $Box(st#1)) ==> M1.__default.ValidState(st#1))
         && (Set#IsMember(sts#0, $Box(st#1)) ==> M1.__default.Extends(parent#0, st#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.Combine#canCall(sts#0)
     && M1.__default.ValidState#canCall(M1.__default.Combine($LS($LZ), sts#0))
     && (M1.__default.ValidState(M1.__default.Combine($LS($LZ), sts#0))
       ==> M1.__default.Combine#canCall(sts#0)
         && M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0)));
  ensures {:id "id676"} $_reverifyPost
     ==> 
    M1.__default.ValidState#canCall(M1.__default.Combine($LS($LZ), sts#0))
     ==> M1.__default.ValidState(M1.__default.Combine($LS($LZ), sts#0))
       || (forall p#3: Box :: 
        { M1.__default.WellFounded(p#3) } 
          { Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)), p#3) } 
        $IsBox(p#3, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)), p#3)
           ==> M1.__default.WellFounded(p#3));
  ensures {:id "id677"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0))
     ==> M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0))
       || Set#Subset(M1.__default.DomSt(parent#0), 
        M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)));
  ensures {:id "id678"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0))
     ==> M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0))
       || (forall p#4: Box :: 
        { M1.__default.GetSt(p#4, parent#0) } 
          { M1.__default.GetSt(p#4, M1.__default.Combine($LS($LS($LZ)), sts#0)) } 
          { Set#IsMember(M1.__default.DomSt(parent#0), p#4) } 
        $IsBox(p#4, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(parent#0), p#4)
           ==> M1.__default.GetSt(p#4, M1.__default.Combine($LS($LS($LZ)), sts#0))
             == M1.__default.GetSt(p#4, parent#0));
  ensures {:id "id679"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0))
     ==> M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0))
       || (forall p#5: Box :: 
        { M1.__default.Oracle(p#5, parent#0) } 
          { M1.__default.GetSt(p#5, M1.__default.Combine($LS($LS($LZ)), sts#0)) } 
          { Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)), p#5) } 
          { Set#IsMember(M1.__default.DomSt(parent#0), p#5) } 
        $IsBox(p#5, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(parent#0), p#5)
             && Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)), p#5)
           ==> M1.__default.GetSt(p#5, M1.__default.Combine($LS($LS($LZ)), sts#0))
             == M1.__default.Oracle(p#5, parent#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.Lemma_Combine (correctness)"} Impl$$M1.__default.Lemma__Combine(sts#0: Set, parent#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var st#0_0: DatatypeType;
  var ##sts#0_0: Set;
  var ##st#0_0: DatatypeType;
  var ##st'#0_0: DatatypeType;
  var ##sts#0_1: Set;
  var ##st#0_1: DatatypeType;
  var ##st'#0_1: DatatypeType;
  var ##sts#0_2: Set;

    // AddMethodImpl: Lemma_Combine, Impl$$M1.__default.Lemma__Combine
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#M1.State(parent#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#sts0#0: Set :: 
      { M1.__default.Combine($LS($LZ), $ih#sts0#0) } 
      $Is($ih#sts0#0, TSet(Tclass.M1.State()))
           && 
          !Set#Equal($ih#sts0#0, Set#Empty(): Set)
           && (forall st#2: DatatypeType :: 
            { M1.__default.Extends(parent#0, st#2) } 
              { M1.__default.ValidState(st#2) } 
              { Set#IsMember($ih#sts0#0, $Box(st#2)) } 
            $Is(st#2, Tclass.M1.State())
               ==> (Set#IsMember($ih#sts0#0, $Box(st#2)) ==> M1.__default.ValidState(st#2))
                 && (Set#IsMember($ih#sts0#0, $Box(st#2)) ==> M1.__default.Extends(parent#0, st#2)))
           && 
          Set#Subset($ih#sts0#0, sts#0)
           && !Set#Subset(sts#0, $ih#sts0#0)
         ==> M1.__default.ValidState(M1.__default.Combine($LS($LZ), $ih#sts0#0))
           && M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), $ih#sts0#0)));
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](50,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc st#0_0;
        assume $Is(st#0_0, Tclass.M1.State());
        if (Set#IsMember(sts#0, $Box(st#0_0)))
        {
            if (!Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0))))
            {
                ##sts#0_0 := sts#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##sts#0_0, TSet(Tclass.M1.State()), $Heap);
                assume {:id "id680"} {:subsumption 0} !Set#Equal(##sts#0_0, Set#Empty(): Set);
                assume M1.__default.Combine#canCall(sts#0);
                assume M1.State.StateCons_q(M1.__default.Combine($LS($LZ), sts#0));
                ##st#0_0 := st#0_0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##st#0_0, Tclass.M1.State(), $Heap);
                ##sts#0_1 := Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0)));
                // assume allocatedness for argument to function
                assume $IsAlloc(##sts#0_1, TSet(Tclass.M1.State()), $Heap);
                assume {:id "id681"} {:subsumption 0} !Set#Equal(##sts#0_1, Set#Empty(): Set);
                assume M1.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0))));
                assume M1.State.StateCons_q(M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0)))));
                ##st'#0_0 := M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0))));
                // assume allocatedness for argument to function
                assume $IsAlloc(##st'#0_0, Tclass.M1.State(), $Heap);
                assume M1.__default.Union#canCall(st#0_0, 
                  M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0)))));
                assume M1.State.StateCons_q(M1.__default.Union(st#0_0, 
                    M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0))))));
            }
        }

        assume Set#IsMember(sts#0, $Box(st#0_0))
           ==> 
          !Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0)))
           ==> $IsA#M1.State(M1.__default.Combine($LS($LZ), sts#0))
             && $IsA#M1.State(M1.__default.Union(st#0_0, 
                M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0))))))
             && 
            M1.__default.Combine#canCall(sts#0)
             && 
            M1.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0))))
             && M1.__default.Union#canCall(st#0_0, 
              M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0)))));
        assume {:id "id682"} Set#IsMember(sts#0, $Box(st#0_0))
           && (Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0)))
             || M1.State#Equal(M1.__default.Combine($LS($LZ), sts#0), 
              M1.__default.Union(st#0_0, 
                M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_0)))))));
        if (*)
        {
            ##st#0_1 := parent#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##st#0_1, Tclass.M1.State(), $Heap);
            ##sts#0_2 := sts#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##sts#0_2, TSet(Tclass.M1.State()), $Heap);
            assume {:id "id683"} {:subsumption 0} !Set#Equal(##sts#0_2, Set#Empty(): Set);
            assume M1.__default.Combine#canCall(sts#0);
            assume M1.State.StateCons_q(M1.__default.Combine($LS($LZ), sts#0));
            ##st'#0_1 := M1.__default.Combine($LS($LZ), sts#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##st'#0_1, Tclass.M1.State(), $Heap);
            assume M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0));
            assume M1.__default.Combine#canCall(sts#0)
               && M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0));
            assume {:id "id684"} M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0));
            assume false;
        }

        assume {:id "id685"} M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0))
           ==> M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0))
             || Set#Subset(M1.__default.DomSt(parent#0), 
              M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)));
        assume {:id "id686"} M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0))
           ==> M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0))
             || (forall p#0_0: Box :: 
              { M1.__default.GetSt(p#0_0, parent#0) } 
                { M1.__default.GetSt(p#0_0, M1.__default.Combine($LS($LS($LZ)), sts#0)) } 
                { Set#IsMember(M1.__default.DomSt(parent#0), p#0_0) } 
              $IsBox(p#0_0, Tclass.M1.Path())
                 ==> 
                Set#IsMember(M1.__default.DomSt(parent#0), p#0_0)
                 ==> M1.__default.GetSt(p#0_0, M1.__default.Combine($LS($LS($LZ)), sts#0))
                   == M1.__default.GetSt(p#0_0, parent#0));
        assume {:id "id687"} M1.__default.Extends#canCall(parent#0, M1.__default.Combine($LS($LZ), sts#0))
           ==> M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0))
             || (forall p#0_1: Box :: 
              { M1.__default.Oracle(p#0_1, parent#0) } 
                { M1.__default.GetSt(p#0_1, M1.__default.Combine($LS($LS($LZ)), sts#0)) } 
                { Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)), p#0_1) } 
                { Set#IsMember(M1.__default.DomSt(parent#0), p#0_1) } 
              $IsBox(p#0_1, Tclass.M1.Path())
                 ==> 
                !Set#IsMember(M1.__default.DomSt(parent#0), p#0_1)
                   && Set#IsMember(M1.__default.DomSt(M1.__default.Combine($LS($LS($LZ)), sts#0)), p#0_1)
                 ==> M1.__default.GetSt(p#0_1, M1.__default.Combine($LS($LS($LZ)), sts#0))
                   == M1.__default.Oracle(p#0_1, parent#0));
        assume false;
    }
    else
    {
        assume (forall st#0_1: DatatypeType :: 
          { Set#UnionOne(Set#Empty(): Set, $Box(st#0_1)) } 
            { Set#IsMember(sts#0, $Box(st#0_1)) } 
          $Is(st#0_1, Tclass.M1.State())
               && 
              Set#IsMember(sts#0, $Box(st#0_1))
               && (Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_1)))
                 || M1.State#Equal(M1.__default.Combine($LS($LZ), sts#0), 
                  M1.__default.Union(st#0_1, 
                    M1.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $Box(st#0_1)))))))
             ==> M1.__default.Extends(parent#0, M1.__default.Combine($LS($LZ), sts#0)));
    }
}



// function declaration for M1._default.ValidEnv
function M1.__default.ValidEnv(env#0: Box) : bool;

function M1.__default.ValidEnv#canCall(env#0: Box) : bool;

function Tclass.M1.Env() : Ty;

function M1.__default.ValidEnv#requires(Box) : bool;

// #requires axiom for M1.__default.ValidEnv
axiom (forall env#0: Box :: 
  { M1.__default.ValidEnv#requires(env#0) } 
  $IsBox(env#0, Tclass.M1.Env()) ==> M1.__default.ValidEnv#requires(env#0) == true);

procedure {:verboseName "M1.ValidEnv (well-formedness)"} CheckWellformed$$M1.__default.ValidEnv(env#0: Box where $IsBox(env#0, Tclass.M1.Env()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.EmptyEnv
function M1.__default.EmptyEnv() : Box
uses {
// consequence axiom for M1.__default.EmptyEnv
axiom 1 <= $FunctionContextHeight
   ==> 
  M1.__default.EmptyEnv#canCall() || 1 < $FunctionContextHeight
   ==> M1.__default.ValidEnv(M1.__default.EmptyEnv())
     && $IsBox(M1.__default.EmptyEnv(), Tclass.M1.Env());
// alloc consequence axiom for M1.__default.EmptyEnv
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap :: 
    { $IsAllocBox(M1.__default.EmptyEnv(), Tclass.M1.Env(), $Heap) } 
    (M1.__default.EmptyEnv#canCall() || 1 < $FunctionContextHeight)
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M1.__default.EmptyEnv(), Tclass.M1.Env(), $Heap));
}

function M1.__default.EmptyEnv#canCall() : bool;

function M1.__default.EmptyEnv#requires() : bool
uses {
// #requires axiom for M1.__default.EmptyEnv
axiom M1.__default.EmptyEnv#requires() == true;
}

procedure {:verboseName "M1.EmptyEnv (well-formedness)"} CheckWellformed$$M1.__default.EmptyEnv();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.EmptyEnv (well-formedness)"} CheckWellformed$$M1.__default.EmptyEnv()
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##env#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(M1.__default.EmptyEnv(), Tclass.M1.Env());
        assert {:id "id688"} Lit(true);
        assume Lit(true) || M1.__default.EmptyEnv#canCall();
        ##env#0 := M1.__default.EmptyEnv();
        // assume allocatedness for argument to function
        assume $IsAllocBox(##env#0, Tclass.M1.Env(), $Heap);
        assume M1.__default.ValidEnv#canCall(M1.__default.EmptyEnv());
        assume {:id "id689"} M1.__default.ValidEnv(M1.__default.EmptyEnv());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for M1._default.GetEnv
function M1.__default.GetEnv(id#0: Box, env#0: Box) : DatatypeType
uses {
// consequence axiom for M1.__default.GetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall id#0: Box, env#0: Box :: 
    { M1.__default.GetEnv(id#0, env#0) } 
    M1.__default.GetEnv#canCall(id#0, env#0)
         || (3 < $FunctionContextHeight
           && 
          $IsBox(id#0, Tclass.M1.Identifier())
           && $IsBox(env#0, Tclass.M1.Env())
           && M1.__default.ValidEnv(env#0))
       ==> M1.__default.Value(M1.__default.GetEnv(id#0, env#0))
         && $Is(M1.__default.GetEnv(id#0, env#0), Tclass.M1.Expression()));
// alloc consequence axiom for M1.__default.GetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, id#0: Box, env#0: Box :: 
    { $IsAlloc(M1.__default.GetEnv(id#0, env#0), Tclass.M1.Expression(), $Heap) } 
    (M1.__default.GetEnv#canCall(id#0, env#0)
           || (3 < $FunctionContextHeight
             && 
            $IsBox(id#0, Tclass.M1.Identifier())
             && $IsAllocBox(id#0, Tclass.M1.Identifier(), $Heap)
             && 
            $IsBox(env#0, Tclass.M1.Env())
             && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap)
             && M1.__default.ValidEnv(env#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.GetEnv(id#0, env#0), Tclass.M1.Expression(), $Heap));
}

function M1.__default.GetEnv#canCall(id#0: Box, env#0: Box) : bool;

function Tclass.M1.Identifier() : Ty;

function M1.__default.GetEnv#requires(Box, Box) : bool;

// #requires axiom for M1.__default.GetEnv
axiom (forall id#0: Box, env#0: Box :: 
  { M1.__default.GetEnv#requires(id#0, env#0) } 
  $IsBox(id#0, Tclass.M1.Identifier()) && $IsBox(env#0, Tclass.M1.Env())
     ==> M1.__default.GetEnv#requires(id#0, env#0) == M1.__default.ValidEnv(env#0));

procedure {:verboseName "M1.GetEnv (well-formedness)"} CheckWellformed$$M1.__default.GetEnv(id#0: Box where $IsBox(id#0, Tclass.M1.Identifier()), 
    env#0: Box where $IsBox(env#0, Tclass.M1.Env()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.GetEnv (well-formedness)"} CheckWellformed$$M1.__default.GetEnv(id#0: Box, env#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##env#0: Box;
  var ##expr#0: DatatypeType;
  var ##id#0: Box;
  var ##env#1: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M1.Env(), $Heap);
    assume M1.__default.ValidEnv#canCall(env#0);
    assume {:id "id690"} M1.__default.ValidEnv(env#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(M1.__default.GetEnv(id#0, env#0), Tclass.M1.Expression());
        ##id#0 := id#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##id#0, Tclass.M1.Identifier(), $Heap);
        ##env#1 := env#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##env#1, Tclass.M1.Env(), $Heap);
        assume true;
        assume M1.__default.ValidEnv(##env#1);
        assert {:id "id691"} id#0 == id#0 && env#0 == env#0;
        assume (id#0 == id#0 && env#0 == env#0) || M1.__default.GetEnv#canCall(id#0, env#0);
        ##expr#0 := M1.__default.GetEnv(id#0, env#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##expr#0, Tclass.M1.Expression(), $Heap);
        assume M1.__default.Value#canCall(M1.__default.GetEnv(id#0, env#0));
        assume {:id "id692"} M1.__default.Value(M1.__default.GetEnv(id#0, env#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for M1._default.SetEnv
function M1.__default.SetEnv(id#0: Box, expr#0: DatatypeType, env#0: Box) : Box
uses {
// consequence axiom for M1.__default.SetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall id#0: Box, expr#0: DatatypeType, env#0: Box :: 
    { M1.__default.SetEnv(id#0, expr#0, env#0) } 
    M1.__default.SetEnv#canCall(id#0, expr#0, env#0)
         || (3 < $FunctionContextHeight
           && 
          $IsBox(id#0, Tclass.M1.Identifier())
           && $Is(expr#0, Tclass.M1.Expression())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.ValidEnv(env#0)
           && M1.__default.Value(expr#0))
       ==> M1.__default.ValidEnv(M1.__default.SetEnv(id#0, expr#0, env#0))
         && $IsBox(M1.__default.SetEnv(id#0, expr#0, env#0), Tclass.M1.Env()));
// alloc consequence axiom for M1.__default.SetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, id#0: Box, expr#0: DatatypeType, env#0: Box :: 
    { $IsAllocBox(M1.__default.SetEnv(id#0, expr#0, env#0), Tclass.M1.Env(), $Heap) } 
    (M1.__default.SetEnv#canCall(id#0, expr#0, env#0)
           || (3 < $FunctionContextHeight
             && 
            $IsBox(id#0, Tclass.M1.Identifier())
             && $IsAllocBox(id#0, Tclass.M1.Identifier(), $Heap)
             && 
            $Is(expr#0, Tclass.M1.Expression())
             && $IsAlloc(expr#0, Tclass.M1.Expression(), $Heap)
             && 
            $IsBox(env#0, Tclass.M1.Env())
             && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap)
             && 
            M1.__default.ValidEnv(env#0)
             && M1.__default.Value(expr#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M1.__default.SetEnv(id#0, expr#0, env#0), Tclass.M1.Env(), $Heap));
}

function M1.__default.SetEnv#canCall(id#0: Box, expr#0: DatatypeType, env#0: Box) : bool;

function M1.__default.SetEnv#requires(Box, DatatypeType, Box) : bool;

// #requires axiom for M1.__default.SetEnv
axiom (forall id#0: Box, expr#0: DatatypeType, env#0: Box :: 
  { M1.__default.SetEnv#requires(id#0, expr#0, env#0) } 
  $IsBox(id#0, Tclass.M1.Identifier())
       && $Is(expr#0, Tclass.M1.Expression())
       && $IsBox(env#0, Tclass.M1.Env())
     ==> M1.__default.SetEnv#requires(id#0, expr#0, env#0)
       == (M1.__default.ValidEnv(env#0) && M1.__default.Value(expr#0)));

procedure {:verboseName "M1.SetEnv (well-formedness)"} CheckWellformed$$M1.__default.SetEnv(id#0: Box where $IsBox(id#0, Tclass.M1.Identifier()), 
    expr#0: DatatypeType where $Is(expr#0, Tclass.M1.Expression()), 
    env#0: Box where $IsBox(env#0, Tclass.M1.Env()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.exec
function M1.__default.exec(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for M1.__default.exec
axiom 1 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    { M1.__default.exec(cmd#0, deps#0, exps#0, st#0) } 
    M1.__default.exec#canCall(cmd#0, deps#0, exps#0, st#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(st#0, Tclass.M1.State()))
       ==> $Is(M1.__default.exec(cmd#0, deps#0, exps#0, st#0), 
        Tclass.M1.Tuple(TSet(Tclass.M1.Path()), Tclass.M1.State())));
// alloc consequence axiom for M1.__default.exec
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    { $IsAlloc(M1.__default.exec(cmd#0, deps#0, exps#0, st#0), 
        Tclass.M1.Tuple(TSet(Tclass.M1.Path()), Tclass.M1.State()), 
        $Heap) } 
    (M1.__default.exec#canCall(cmd#0, deps#0, exps#0, st#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(cmd#0, TSeq(TChar))
             && $IsAlloc(cmd#0, TSeq(TChar), $Heap)
             && 
            $Is(deps#0, TSet(Tclass.M1.Path()))
             && $IsAlloc(deps#0, TSet(Tclass.M1.Path()), $Heap)
             && 
            $Is(exps#0, TSet(TSeq(TChar)))
             && $IsAlloc(exps#0, TSet(TSeq(TChar)), $Heap)
             && 
            $Is(st#0, Tclass.M1.State())
             && $IsAlloc(st#0, Tclass.M1.State(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.exec(cmd#0, deps#0, exps#0, st#0), 
        Tclass.M1.Tuple(TSet(Tclass.M1.Path()), Tclass.M1.State()), 
        $Heap));
}

function M1.__default.exec#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType) : bool;

function M1.__default.exec#requires(Seq, Set, Set, DatatypeType) : bool;

// #requires axiom for M1.__default.exec
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
  { M1.__default.exec#requires(cmd#0, deps#0, exps#0, st#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M1.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $Is(st#0, Tclass.M1.State())
     ==> M1.__default.exec#requires(cmd#0, deps#0, exps#0, st#0) == true);

procedure {:verboseName "M1.exec (well-formedness)"} CheckWellformed$$M1.__default.exec(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M1.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.ExecProperty (well-formedness)"} CheckWellFormed$$M1.__default.ExecProperty(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)) && $IsAlloc(cmd#0, TSeq(TChar), $Heap), 
    deps#0: Set
       where $Is(deps#0, TSet(Tclass.M1.Path()))
         && $IsAlloc(deps#0, TSet(Tclass.M1.Path()), $Heap), 
    exps#0: Set
       where $Is(exps#0, TSet(TSeq(TChar))) && $IsAlloc(exps#0, TSet(TSeq(TChar)), $Heap), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.ExecProperty (call)"} Call$$M1.__default.ExecProperty(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)) && $IsAlloc(cmd#0, TSeq(TChar), $Heap), 
    deps#0: Set
       where $Is(deps#0, TSet(Tclass.M1.Path()))
         && $IsAlloc(deps#0, TSet(Tclass.M1.Path()), $Heap), 
    exps#0: Set
       where $Is(exps#0, TSet(TSeq(TChar))) && $IsAlloc(exps#0, TSet(TSeq(TChar)), $Heap), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0));
  // user-defined preconditions
  requires {:id "id703"} M1.__default.ValidState#canCall(st#0)
     ==> M1.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M1.__default.WellFounded(p#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#0)
           ==> M1.__default.WellFounded(p#0));
  requires {:id "id704"} Set#Subset(deps#0, M1.__default.DomSt(st#0));
  requires {:id "id705"} M1.__default.Pre#canCall(cmd#0, deps#0, exps#0, st#0)
     ==> M1.__default.Pre(cmd#0, deps#0, exps#0, st#0)
       || (forall e#0: Seq :: 
        { M1.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
        $Is(e#0, TSeq(TChar))
           ==> 
          Set#IsMember(exps#0, $Box(e#0))
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(cmd#0, deps#0, e#0))
           ==> M1.__default.GetSt(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)
             == M1.__default.Oracle(M1.__default.Loc(cmd#0, deps#0, e#0), st#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.exec#canCall(cmd#0, deps#0, exps#0, st#0)
     && (var paths#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
        $Unbox(M1.Tuple.snd(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): DatatypeType; 
      M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> M1.__default.Extends#canCall(st#0, st'#0)
             && (M1.__default.Extends(st#0, st'#0)
               ==> M1.__default.OneToOne#canCall(cmd#0, deps#0, exps#0, paths#0)
                 && (M1.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0)
                   ==> M1.__default.Post#canCall(cmd#0, deps#0, exps#0, st'#0)))));
  free ensures {:id "id706"} (var paths#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      $Unbox(M1.Tuple.snd(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): DatatypeType; 
    M1.__default.ValidState#canCall(st'#0)
       && 
      M1.__default.ValidState(st'#0)
       && (forall p#1: Box :: 
        { M1.__default.WellFounded(p#1) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#1) } 
        $IsBox(p#1, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st'#0), p#1)
           ==> M1.__default.WellFounded(p#1)));
  free ensures {:id "id707"} (var paths#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      $Unbox(M1.Tuple.snd(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): DatatypeType; 
    M1.__default.Extends#canCall(st#0, st'#0)
       && 
      M1.__default.Extends(st#0, st'#0)
       && 
      Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0))
       && (forall p#2: Box :: 
        { M1.__default.GetSt(p#2, st#0) } 
          { M1.__default.GetSt(p#2, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
        $IsBox(p#2, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#2)
           ==> M1.__default.GetSt(p#2, st'#0) == M1.__default.GetSt(p#2, st#0))
       && (forall p#3: Box :: 
        { M1.__default.Oracle(p#3, st#0) } 
          { M1.__default.GetSt(p#3, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#3) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
        $IsBox(p#3, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st#0), p#3)
             && Set#IsMember(M1.__default.DomSt(st'#0), p#3)
           ==> M1.__default.GetSt(p#3, st'#0) == M1.__default.Oracle(p#3, st#0)));
  free ensures {:id "id708"} (var paths#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      $Unbox(M1.Tuple.snd(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): DatatypeType; 
    M1.__default.OneToOne#canCall(cmd#0, deps#0, exps#0, paths#0)
       && 
      M1.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0)
       && (forall e#1: Seq :: 
        { M1.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
        $Is(e#1, TSeq(TChar))
           ==> 
          Set#IsMember(exps#0, $Box(e#1))
           ==> Set#IsMember(paths#0, M1.__default.Loc(cmd#0, deps#0, e#1))));
  free ensures {:id "id709"} (var paths#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      $Unbox(M1.Tuple.snd(M1.__default.exec(cmd#0, deps#0, exps#0, st#0))): DatatypeType; 
    M1.__default.Post#canCall(cmd#0, deps#0, exps#0, st'#0)
       && 
      M1.__default.Post(cmd#0, deps#0, exps#0, st'#0)
       && (forall e#2: Seq :: 
        { M1.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
        $Is(e#2, TSeq(TChar))
           ==> (Set#IsMember(exps#0, $Box(e#2))
               ==> Set#IsMember(M1.__default.DomSt(st'#0), M1.__default.Loc(cmd#0, deps#0, e#2)))
             && (Set#IsMember(exps#0, $Box(e#2))
               ==> M1.__default.GetSt(M1.__default.Loc(cmd#0, deps#0, e#2), st'#0)
                 == M1.__default.Oracle(M1.__default.Loc(cmd#0, deps#0, e#2), st'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for M1._default.Pre
function M1.__default.Pre(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType) : bool
uses {
// definition axiom for M1.__default.Pre (revealed)
axiom {:id "id710"} 3 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    { M1.__default.Pre(cmd#0, deps#0, exps#0, st#0) } 
    M1.__default.Pre#canCall(cmd#0, deps#0, exps#0, st#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(st#0, Tclass.M1.State()))
       ==> (forall e#0: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
          $Is(e#0, TSeq(TChar))
             ==> 
            Set#IsMember(exps#0, $Box(e#0))
             ==> M1.__default.Loc#canCall(cmd#0, deps#0, e#0)
               && M1.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(cmd#0, deps#0, e#0))
                 ==> M1.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M1.__default.GetSt#canCall(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)
                   && 
                  M1.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M1.__default.Oracle#canCall(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)))
         && M1.__default.Pre(cmd#0, deps#0, exps#0, st#0)
           == (forall e#0: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
            $Is(e#0, TSeq(TChar))
               ==> 
              Set#IsMember(exps#0, $Box(e#0))
               ==> 
              Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(cmd#0, deps#0, e#0))
               ==> M1.__default.GetSt(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)
                 == M1.__default.Oracle(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)));
// definition axiom for M1.__default.Pre for decreasing-related literals (revealed)
axiom {:id "id711"} 3 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0) } 
    M1.__default.Pre#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(st#0, Tclass.M1.State()))
       ==> (forall e#1: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
          $Is(e#1, TSeq(TChar))
             ==> 
            Set#IsMember(Lit(exps#0), $Box(e#1))
             ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
               && M1.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1))
                 ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M1.__default.GetSt#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                   && 
                  M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M1.__default.Oracle#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)))
         && M1.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
           == (forall e#1: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
            $Is(e#1, TSeq(TChar))
               ==> 
              Set#IsMember(Lit(exps#0), $Box(e#1))
               ==> 
              Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1))
               ==> M1.__default.GetSt(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                 == M1.__default.Oracle(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)));
// definition axiom for M1.__default.Pre for all literals (revealed)
axiom {:id "id712"} 3 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0)) } 
    M1.__default.Pre#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(st#0, Tclass.M1.State()))
       ==> (forall e#2: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
          $Is(e#2, TSeq(TChar))
             ==> 
            Set#IsMember(Lit(exps#0), $Box(e#2))
             ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
               && M1.__default.DomSt#canCall(Lit(st#0))
               && (Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), 
                  M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2))
                 ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M1.__default.GetSt#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                   && 
                  M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M1.__default.Oracle#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))))
         && M1.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
           == (forall e#2: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
            $Is(e#2, TSeq(TChar))
               ==> 
              Set#IsMember(Lit(exps#0), $Box(e#2))
               ==> 
              Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), 
                M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2))
               ==> M1.__default.GetSt(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                 == M1.__default.Oracle(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))));
}

function M1.__default.Pre#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType) : bool;

function M1.__default.Pre#requires(Seq, Set, Set, DatatypeType) : bool;

// #requires axiom for M1.__default.Pre
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
  { M1.__default.Pre#requires(cmd#0, deps#0, exps#0, st#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M1.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $Is(st#0, Tclass.M1.State())
     ==> M1.__default.Pre#requires(cmd#0, deps#0, exps#0, st#0) == true);

procedure {:verboseName "M1.Pre (well-formedness)"} CheckWellformed$$M1.__default.Pre(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M1.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.OneToOne
function M1.__default.OneToOne(cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set) : bool
uses {
// definition axiom for M1.__default.OneToOne (revealed)
axiom {:id "id714"} 1 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set :: 
    { M1.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0) } 
    M1.__default.OneToOne#canCall(cmd#0, deps#0, exps#0, paths#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(paths#0, TSet(Tclass.M1.Path())))
       ==> (forall e#0: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
          $Is(e#0, TSeq(TChar))
             ==> 
            Set#IsMember(exps#0, $Box(e#0))
             ==> M1.__default.Loc#canCall(cmd#0, deps#0, e#0))
         && M1.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0)
           == (forall e#0: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
            $Is(e#0, TSeq(TChar))
               ==> 
              Set#IsMember(exps#0, $Box(e#0))
               ==> Set#IsMember(paths#0, M1.__default.Loc(cmd#0, deps#0, e#0))));
// definition axiom for M1.__default.OneToOne for all literals (revealed)
axiom {:id "id715"} 1 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set :: 
    {:weight 3} { M1.__default.OneToOne(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(paths#0)) } 
    M1.__default.OneToOne#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(paths#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(paths#0, TSet(Tclass.M1.Path())))
       ==> (forall e#1: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
          $Is(e#1, TSeq(TChar))
             ==> 
            Set#IsMember(Lit(exps#0), $Box(e#1))
             ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1))
         && M1.__default.OneToOne(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(paths#0))
           == (forall e#1: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
            $Is(e#1, TSeq(TChar))
               ==> 
              Set#IsMember(Lit(exps#0), $Box(e#1))
               ==> Set#IsMember(Lit(paths#0), M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1))));
}

function M1.__default.OneToOne#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set) : bool;

function M1.__default.OneToOne#requires(Seq, Set, Set, Set) : bool;

// #requires axiom for M1.__default.OneToOne
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set :: 
  { M1.__default.OneToOne#requires(cmd#0, deps#0, exps#0, paths#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M1.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $Is(paths#0, TSet(Tclass.M1.Path()))
     ==> M1.__default.OneToOne#requires(cmd#0, deps#0, exps#0, paths#0) == true);

procedure {:verboseName "M1.OneToOne (well-formedness)"} CheckWellformed$$M1.__default.OneToOne(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M1.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    paths#0: Set where $Is(paths#0, TSet(Tclass.M1.Path())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Post
function M1.__default.Post(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType) : bool
uses {
// definition axiom for M1.__default.Post (revealed)
axiom {:id "id717"} 3 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    { M1.__default.Post(cmd#0, deps#0, exps#0, st#0) } 
    M1.__default.Post#canCall(cmd#0, deps#0, exps#0, st#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(st#0, Tclass.M1.State()))
       ==> (forall e#0: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
          $Is(e#0, TSeq(TChar))
             ==> (Set#IsMember(exps#0, $Box(e#0))
                 ==> M1.__default.Loc#canCall(cmd#0, deps#0, e#0) && M1.__default.DomSt#canCall(st#0))
               && (
                (Set#IsMember(exps#0, $Box(e#0))
                 ==> Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(cmd#0, deps#0, e#0)))
                 ==> 
                Set#IsMember(exps#0, $Box(e#0))
                 ==> M1.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M1.__default.GetSt#canCall(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)
                   && 
                  M1.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M1.__default.Oracle#canCall(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)))
         && M1.__default.Post(cmd#0, deps#0, exps#0, st#0)
           == (forall e#0: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
            $Is(e#0, TSeq(TChar))
               ==> (Set#IsMember(exps#0, $Box(e#0))
                   ==> Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(cmd#0, deps#0, e#0)))
                 && (Set#IsMember(exps#0, $Box(e#0))
                   ==> M1.__default.GetSt(M1.__default.Loc(cmd#0, deps#0, e#0), st#0)
                     == M1.__default.Oracle(M1.__default.Loc(cmd#0, deps#0, e#0), st#0))));
// definition axiom for M1.__default.Post for decreasing-related literals (revealed)
axiom {:id "id718"} 3 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0) } 
    M1.__default.Post#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(st#0, Tclass.M1.State()))
       ==> (forall e#1: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
          $Is(e#1, TSeq(TChar))
             ==> (Set#IsMember(Lit(exps#0), $Box(e#1))
                 ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M1.__default.DomSt#canCall(st#0))
               && (
                (Set#IsMember(Lit(exps#0), $Box(e#1))
                 ==> Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1)))
                 ==> 
                Set#IsMember(Lit(exps#0), $Box(e#1))
                 ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M1.__default.GetSt#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                   && 
                  M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M1.__default.Oracle#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)))
         && M1.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
           == (forall e#1: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
            $Is(e#1, TSeq(TChar))
               ==> (Set#IsMember(Lit(exps#0), $Box(e#1))
                   ==> Set#IsMember(M1.__default.DomSt(st#0), M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1)))
                 && (Set#IsMember(Lit(exps#0), $Box(e#1))
                   ==> M1.__default.GetSt(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                     == M1.__default.Oracle(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0))));
// definition axiom for M1.__default.Post for all literals (revealed)
axiom {:id "id719"} 3 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0)) } 
    M1.__default.Post#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(st#0, Tclass.M1.State()))
       ==> (forall e#2: Seq :: 
          { M1.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
          $Is(e#2, TSeq(TChar))
             ==> (Set#IsMember(Lit(exps#0), $Box(e#2))
                 ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M1.__default.DomSt#canCall(Lit(st#0)))
               && (
                (Set#IsMember(Lit(exps#0), $Box(e#2))
                 ==> Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), 
                  M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2)))
                 ==> 
                Set#IsMember(Lit(exps#0), $Box(e#2))
                 ==> M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M1.__default.GetSt#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                   && 
                  M1.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M1.__default.Oracle#canCall(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))))
         && M1.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
           == (forall e#2: Seq :: 
            { M1.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
            $Is(e#2, TSeq(TChar))
               ==> (Set#IsMember(Lit(exps#0), $Box(e#2))
                   ==> Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), 
                    M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2)))
                 && (Set#IsMember(Lit(exps#0), $Box(e#2))
                   ==> M1.__default.GetSt(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                     == M1.__default.Oracle(M1.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0)))));
}

function M1.__default.Post#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType) : bool;

function M1.__default.Post#requires(Seq, Set, Set, DatatypeType) : bool;

// #requires axiom for M1.__default.Post
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: DatatypeType :: 
  { M1.__default.Post#requires(cmd#0, deps#0, exps#0, st#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M1.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $Is(st#0, Tclass.M1.State())
     ==> M1.__default.Post#requires(cmd#0, deps#0, exps#0, st#0) == true);

procedure {:verboseName "M1.Post (well-formedness)"} CheckWellformed$$M1.__default.Post(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M1.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Oracle
function M1.__default.Oracle(p#0: Box, st#0: DatatypeType) : Box
uses {
// consequence axiom for M1.__default.Oracle
axiom 1 <= $FunctionContextHeight
   ==> (forall p#0: Box, st#0: DatatypeType :: 
    { M1.__default.Oracle(p#0, st#0) } 
    M1.__default.Oracle#canCall(p#0, st#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(p#0, Tclass.M1.Path())
           && $Is(st#0, Tclass.M1.State()))
       ==> $IsBox(M1.__default.Oracle(p#0, st#0), Tclass.M1.Artifact()));
// alloc consequence axiom for M1.__default.Oracle
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, p#0: Box, st#0: DatatypeType :: 
    { $IsAllocBox(M1.__default.Oracle(p#0, st#0), Tclass.M1.Artifact(), $Heap) } 
    (M1.__default.Oracle#canCall(p#0, st#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(p#0, Tclass.M1.Path())
             && $IsAllocBox(p#0, Tclass.M1.Path(), $Heap)
             && 
            $Is(st#0, Tclass.M1.State())
             && $IsAlloc(st#0, Tclass.M1.State(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M1.__default.Oracle(p#0, st#0), Tclass.M1.Artifact(), $Heap));
}

function M1.__default.Oracle#canCall(p#0: Box, st#0: DatatypeType) : bool;

function M1.__default.Oracle#requires(Box, DatatypeType) : bool;

// #requires axiom for M1.__default.Oracle
axiom (forall p#0: Box, st#0: DatatypeType :: 
  { M1.__default.Oracle#requires(p#0, st#0) } 
  $IsBox(p#0, Tclass.M1.Path()) && $Is(st#0, Tclass.M1.State())
     ==> M1.__default.Oracle#requires(p#0, st#0) == true);

procedure {:verboseName "M1.Oracle (well-formedness)"} CheckWellformed$$M1.__default.Oracle(p#0: Box where $IsBox(p#0, Tclass.M1.Path()), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.OracleProperty (well-formedness)"} CheckWellFormed$$M1.__default.OracleProperty(p#0: Box
       where $IsBox(p#0, Tclass.M1.Path()) && $IsAllocBox(p#0, Tclass.M1.Path(), $Heap), 
    st0#0: DatatypeType
       where $Is(st0#0, Tclass.M1.State())
         && $IsAlloc(st0#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st0#0), 
    st1#0: DatatypeType
       where $Is(st1#0, Tclass.M1.State())
         && $IsAlloc(st1#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st1#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.OracleProperty (call)"} Call$$M1.__default.OracleProperty(p#0: Box
       where $IsBox(p#0, Tclass.M1.Path()) && $IsAllocBox(p#0, Tclass.M1.Path(), $Heap), 
    st0#0: DatatypeType
       where $Is(st0#0, Tclass.M1.State())
         && $IsAlloc(st0#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st0#0), 
    st1#0: DatatypeType
       where $Is(st1#0, Tclass.M1.State())
         && $IsAlloc(st1#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st1#0));
  // user-defined preconditions
  requires {:id "id723"} M1.__default.Extends#canCall(st0#0, st1#0)
     ==> M1.__default.Extends(st0#0, st1#0)
       || Set#Subset(M1.__default.DomSt(st0#0), M1.__default.DomSt(st1#0));
  requires {:id "id724"} M1.__default.Extends#canCall(st0#0, st1#0)
     ==> M1.__default.Extends(st0#0, st1#0)
       || (forall p#1: Box :: 
        { M1.__default.GetSt(p#1, st0#0) } 
          { M1.__default.GetSt(p#1, st1#0) } 
          { Set#IsMember(M1.__default.DomSt(st0#0), p#1) } 
        $IsBox(p#1, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st0#0), p#1)
           ==> M1.__default.GetSt(p#1, st1#0) == M1.__default.GetSt(p#1, st0#0));
  requires {:id "id725"} M1.__default.Extends#canCall(st0#0, st1#0)
     ==> M1.__default.Extends(st0#0, st1#0)
       || (forall p#2: Box :: 
        { M1.__default.Oracle(p#2, st0#0) } 
          { M1.__default.GetSt(p#2, st1#0) } 
          { Set#IsMember(M1.__default.DomSt(st1#0), p#2) } 
          { Set#IsMember(M1.__default.DomSt(st0#0), p#2) } 
        $IsBox(p#2, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st0#0), p#2)
             && Set#IsMember(M1.__default.DomSt(st1#0), p#2)
           ==> M1.__default.GetSt(p#2, st1#0) == M1.__default.Oracle(p#2, st0#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.Oracle#canCall(p#0, st0#0)
     && M1.__default.Oracle#canCall(p#0, st1#0);
  ensures {:id "id726"} M1.__default.Oracle(p#0, st0#0) == M1.__default.Oracle(p#0, st1#0);
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for M1._default.Extends
function M1.__default.Extends(st#0: DatatypeType, st'#0: DatatypeType) : bool
uses {
// definition axiom for M1.__default.Extends (revealed)
axiom {:id "id727"} 3 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType, st'#0: DatatypeType :: 
    { M1.__default.Extends(st#0, st'#0) } 
    M1.__default.Extends#canCall(st#0, st'#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, Tclass.M1.State())
           && $Is(st'#0, Tclass.M1.State()))
       ==> M1.__default.DomSt#canCall(st#0)
         && M1.__default.DomSt#canCall(st'#0)
         && (Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0))
           ==> (forall p#0: Box :: 
              { M1.__default.GetSt(p#0, st#0) } 
                { M1.__default.GetSt(p#0, st'#0) } 
                { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
              $IsBox(p#0, Tclass.M1.Path())
                 ==> M1.__default.DomSt#canCall(st#0)
                   && (Set#IsMember(M1.__default.DomSt(st#0), p#0)
                     ==> M1.__default.GetSt#canCall(p#0, st'#0) && M1.__default.GetSt#canCall(p#0, st#0)))
             && ((forall p#0: Box :: 
                { M1.__default.GetSt(p#0, st#0) } 
                  { M1.__default.GetSt(p#0, st'#0) } 
                  { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
                $IsBox(p#0, Tclass.M1.Path())
                   ==> 
                  Set#IsMember(M1.__default.DomSt(st#0), p#0)
                   ==> M1.__default.GetSt(p#0, st'#0) == M1.__default.GetSt(p#0, st#0))
               ==> (forall p#1: Box :: 
                { M1.__default.Oracle(p#1, st#0) } 
                  { M1.__default.GetSt(p#1, st'#0) } 
                  { Set#IsMember(M1.__default.DomSt(st'#0), p#1) } 
                  { Set#IsMember(M1.__default.DomSt(st#0), p#1) } 
                $IsBox(p#1, Tclass.M1.Path())
                   ==> M1.__default.DomSt#canCall(st#0)
                     && (!Set#IsMember(M1.__default.DomSt(st#0), p#1)
                       ==> M1.__default.DomSt#canCall(st'#0)
                         && (Set#IsMember(M1.__default.DomSt(st'#0), p#1)
                           ==> M1.__default.GetSt#canCall(p#1, st'#0) && M1.__default.Oracle#canCall(p#1, st#0))))))
         && M1.__default.Extends(st#0, st'#0)
           == (
            Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0))
             && (forall p#0: Box :: 
              { M1.__default.GetSt(p#0, st#0) } 
                { M1.__default.GetSt(p#0, st'#0) } 
                { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
              $IsBox(p#0, Tclass.M1.Path())
                 ==> 
                Set#IsMember(M1.__default.DomSt(st#0), p#0)
                 ==> M1.__default.GetSt(p#0, st'#0) == M1.__default.GetSt(p#0, st#0))
             && (forall p#1: Box :: 
              { M1.__default.Oracle(p#1, st#0) } 
                { M1.__default.GetSt(p#1, st'#0) } 
                { Set#IsMember(M1.__default.DomSt(st'#0), p#1) } 
                { Set#IsMember(M1.__default.DomSt(st#0), p#1) } 
              $IsBox(p#1, Tclass.M1.Path())
                 ==> 
                !Set#IsMember(M1.__default.DomSt(st#0), p#1)
                   && Set#IsMember(M1.__default.DomSt(st'#0), p#1)
                 ==> M1.__default.GetSt(p#1, st'#0) == M1.__default.Oracle(p#1, st#0))));
// definition axiom for M1.__default.Extends for all literals (revealed)
axiom {:id "id728"} 3 <= $FunctionContextHeight
   ==> (forall st#0: DatatypeType, st'#0: DatatypeType :: 
    {:weight 3} { M1.__default.Extends(Lit(st#0), Lit(st'#0)) } 
    M1.__default.Extends#canCall(Lit(st#0), Lit(st'#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(st#0, Tclass.M1.State())
           && $Is(st'#0, Tclass.M1.State()))
       ==> M1.__default.DomSt#canCall(Lit(st#0))
         && M1.__default.DomSt#canCall(Lit(st'#0))
         && (Set#Subset(M1.__default.DomSt(Lit(st#0)), M1.__default.DomSt(Lit(st'#0)))
           ==> (forall p#2: Box :: 
              { M1.__default.GetSt(p#2, st#0) } 
                { M1.__default.GetSt(p#2, st'#0) } 
                { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
              $IsBox(p#2, Tclass.M1.Path())
                 ==> M1.__default.DomSt#canCall(Lit(st#0))
                   && (Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#2)
                     ==> M1.__default.GetSt#canCall(p#2, Lit(st'#0))
                       && M1.__default.GetSt#canCall(p#2, Lit(st#0))))
             && ((forall p#2: Box :: 
                { M1.__default.GetSt(p#2, st#0) } 
                  { M1.__default.GetSt(p#2, st'#0) } 
                  { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
                $IsBox(p#2, Tclass.M1.Path())
                   ==> 
                  Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#2)
                   ==> M1.__default.GetSt(p#2, Lit(st'#0)) == M1.__default.GetSt(p#2, Lit(st#0)))
               ==> (forall p#3: Box :: 
                { M1.__default.Oracle(p#3, st#0) } 
                  { M1.__default.GetSt(p#3, st'#0) } 
                  { Set#IsMember(M1.__default.DomSt(st'#0), p#3) } 
                  { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
                $IsBox(p#3, Tclass.M1.Path())
                   ==> M1.__default.DomSt#canCall(Lit(st#0))
                     && (!Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#3)
                       ==> M1.__default.DomSt#canCall(Lit(st'#0))
                         && (Set#IsMember(Lit(M1.__default.DomSt(Lit(st'#0))), p#3)
                           ==> M1.__default.GetSt#canCall(p#3, Lit(st'#0))
                             && M1.__default.Oracle#canCall(p#3, Lit(st#0)))))))
         && M1.__default.Extends(Lit(st#0), Lit(st'#0))
           == (
            Set#Subset(M1.__default.DomSt(Lit(st#0)), M1.__default.DomSt(Lit(st'#0)))
             && (forall p#2: Box :: 
              { M1.__default.GetSt(p#2, st#0) } 
                { M1.__default.GetSt(p#2, st'#0) } 
                { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
              $IsBox(p#2, Tclass.M1.Path())
                 ==> 
                Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#2)
                 ==> M1.__default.GetSt(p#2, Lit(st'#0)) == M1.__default.GetSt(p#2, Lit(st#0)))
             && (forall p#3: Box :: 
              { M1.__default.Oracle(p#3, st#0) } 
                { M1.__default.GetSt(p#3, st'#0) } 
                { Set#IsMember(M1.__default.DomSt(st'#0), p#3) } 
                { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
              $IsBox(p#3, Tclass.M1.Path())
                 ==> 
                !Set#IsMember(Lit(M1.__default.DomSt(Lit(st#0))), p#3)
                   && Set#IsMember(Lit(M1.__default.DomSt(Lit(st'#0))), p#3)
                 ==> M1.__default.GetSt(p#3, Lit(st'#0)) == M1.__default.Oracle(p#3, Lit(st#0)))));
}

function M1.__default.Extends#canCall(st#0: DatatypeType, st'#0: DatatypeType) : bool;

function M1.__default.Extends#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for M1.__default.Extends
axiom (forall st#0: DatatypeType, st'#0: DatatypeType :: 
  { M1.__default.Extends#requires(st#0, st'#0) } 
  $Is(st#0, Tclass.M1.State()) && $Is(st'#0, Tclass.M1.State())
     ==> M1.__default.Extends#requires(st#0, st'#0) == true);

procedure {:verboseName "M1.Extends (well-formedness)"} CheckWellformed$$M1.__default.Extends(st#0: DatatypeType where $Is(st#0, Tclass.M1.State()), 
    st'#0: DatatypeType where $Is(st'#0, Tclass.M1.State()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.Lemma_ExtendsTransitive (well-formedness)"} CheckWellFormed$$M1.__default.Lemma__ExtendsTransitive(st0#0: DatatypeType
       where $Is(st0#0, Tclass.M1.State())
         && $IsAlloc(st0#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st0#0), 
    st1#0: DatatypeType
       where $Is(st1#0, Tclass.M1.State())
         && $IsAlloc(st1#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st1#0), 
    st2#0: DatatypeType
       where $Is(st2#0, Tclass.M1.State())
         && $IsAlloc(st2#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st2#0));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.Lemma_ExtendsTransitive (call)"} Call$$M1.__default.Lemma__ExtendsTransitive(st0#0: DatatypeType
       where $Is(st0#0, Tclass.M1.State())
         && $IsAlloc(st0#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st0#0), 
    st1#0: DatatypeType
       where $Is(st1#0, Tclass.M1.State())
         && $IsAlloc(st1#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st1#0), 
    st2#0: DatatypeType
       where $Is(st2#0, Tclass.M1.State())
         && $IsAlloc(st2#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st2#0));
  // user-defined preconditions
  requires {:id "id733"} M1.__default.Extends#canCall(st0#0, st1#0)
     ==> M1.__default.Extends(st0#0, st1#0)
       || Set#Subset(M1.__default.DomSt(st0#0), M1.__default.DomSt(st1#0));
  requires {:id "id734"} M1.__default.Extends#canCall(st0#0, st1#0)
     ==> M1.__default.Extends(st0#0, st1#0)
       || (forall p#0: Box :: 
        { M1.__default.GetSt(p#0, st0#0) } 
          { M1.__default.GetSt(p#0, st1#0) } 
          { Set#IsMember(M1.__default.DomSt(st0#0), p#0) } 
        $IsBox(p#0, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st0#0), p#0)
           ==> M1.__default.GetSt(p#0, st1#0) == M1.__default.GetSt(p#0, st0#0));
  requires {:id "id735"} M1.__default.Extends#canCall(st0#0, st1#0)
     ==> M1.__default.Extends(st0#0, st1#0)
       || (forall p#1: Box :: 
        { M1.__default.Oracle(p#1, st0#0) } 
          { M1.__default.GetSt(p#1, st1#0) } 
          { Set#IsMember(M1.__default.DomSt(st1#0), p#1) } 
          { Set#IsMember(M1.__default.DomSt(st0#0), p#1) } 
        $IsBox(p#1, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st0#0), p#1)
             && Set#IsMember(M1.__default.DomSt(st1#0), p#1)
           ==> M1.__default.GetSt(p#1, st1#0) == M1.__default.Oracle(p#1, st0#0));
  requires {:id "id736"} M1.__default.Extends#canCall(st1#0, st2#0)
     ==> M1.__default.Extends(st1#0, st2#0)
       || Set#Subset(M1.__default.DomSt(st1#0), M1.__default.DomSt(st2#0));
  requires {:id "id737"} M1.__default.Extends#canCall(st1#0, st2#0)
     ==> M1.__default.Extends(st1#0, st2#0)
       || (forall p#2: Box :: 
        { M1.__default.GetSt(p#2, st1#0) } 
          { M1.__default.GetSt(p#2, st2#0) } 
          { Set#IsMember(M1.__default.DomSt(st1#0), p#2) } 
        $IsBox(p#2, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st1#0), p#2)
           ==> M1.__default.GetSt(p#2, st2#0) == M1.__default.GetSt(p#2, st1#0));
  requires {:id "id738"} M1.__default.Extends#canCall(st1#0, st2#0)
     ==> M1.__default.Extends(st1#0, st2#0)
       || (forall p#3: Box :: 
        { M1.__default.Oracle(p#3, st1#0) } 
          { M1.__default.GetSt(p#3, st2#0) } 
          { Set#IsMember(M1.__default.DomSt(st2#0), p#3) } 
          { Set#IsMember(M1.__default.DomSt(st1#0), p#3) } 
        $IsBox(p#3, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st1#0), p#3)
             && Set#IsMember(M1.__default.DomSt(st2#0), p#3)
           ==> M1.__default.GetSt(p#3, st2#0) == M1.__default.Oracle(p#3, st1#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.Extends#canCall(st0#0, st2#0);
  free ensures {:id "id739"} M1.__default.Extends#canCall(st0#0, st2#0)
     && 
    M1.__default.Extends(st0#0, st2#0)
     && 
    Set#Subset(M1.__default.DomSt(st0#0), M1.__default.DomSt(st2#0))
     && (forall p#4: Box :: 
      { M1.__default.GetSt(p#4, st0#0) } 
        { M1.__default.GetSt(p#4, st2#0) } 
        { Set#IsMember(M1.__default.DomSt(st0#0), p#4) } 
      $IsBox(p#4, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st0#0), p#4)
         ==> M1.__default.GetSt(p#4, st2#0) == M1.__default.GetSt(p#4, st0#0))
     && (forall p#5: Box :: 
      { M1.__default.Oracle(p#5, st0#0) } 
        { M1.__default.GetSt(p#5, st2#0) } 
        { Set#IsMember(M1.__default.DomSt(st2#0), p#5) } 
        { Set#IsMember(M1.__default.DomSt(st0#0), p#5) } 
      $IsBox(p#5, Tclass.M1.Path())
         ==> 
        !Set#IsMember(M1.__default.DomSt(st0#0), p#5)
           && Set#IsMember(M1.__default.DomSt(st2#0), p#5)
         ==> M1.__default.GetSt(p#5, st2#0) == M1.__default.Oracle(p#5, st0#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M1.Lemma_ExtendsTransitive (correctness)"} Impl$$M1.__default.Lemma__ExtendsTransitive(st0#0: DatatypeType
       where $Is(st0#0, Tclass.M1.State())
         && $IsAlloc(st0#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st0#0), 
    st1#0: DatatypeType
       where $Is(st1#0, Tclass.M1.State())
         && $IsAlloc(st1#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st1#0), 
    st2#0: DatatypeType
       where $Is(st2#0, Tclass.M1.State())
         && $IsAlloc(st2#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st2#0))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id740"} M1.__default.Extends#canCall(st0#0, st1#0)
     && 
    M1.__default.Extends(st0#0, st1#0)
     && 
    Set#Subset(M1.__default.DomSt(st0#0), M1.__default.DomSt(st1#0))
     && (forall p#6: Box :: 
      { M1.__default.GetSt(p#6, st0#0) } 
        { M1.__default.GetSt(p#6, st1#0) } 
        { Set#IsMember(M1.__default.DomSt(st0#0), p#6) } 
      $IsBox(p#6, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st0#0), p#6)
         ==> M1.__default.GetSt(p#6, st1#0) == M1.__default.GetSt(p#6, st0#0))
     && (forall p#7: Box :: 
      { M1.__default.Oracle(p#7, st0#0) } 
        { M1.__default.GetSt(p#7, st1#0) } 
        { Set#IsMember(M1.__default.DomSt(st1#0), p#7) } 
        { Set#IsMember(M1.__default.DomSt(st0#0), p#7) } 
      $IsBox(p#7, Tclass.M1.Path())
         ==> 
        !Set#IsMember(M1.__default.DomSt(st0#0), p#7)
           && Set#IsMember(M1.__default.DomSt(st1#0), p#7)
         ==> M1.__default.GetSt(p#7, st1#0) == M1.__default.Oracle(p#7, st0#0));
  free requires {:id "id741"} M1.__default.Extends#canCall(st1#0, st2#0)
     && 
    M1.__default.Extends(st1#0, st2#0)
     && 
    Set#Subset(M1.__default.DomSt(st1#0), M1.__default.DomSt(st2#0))
     && (forall p#8: Box :: 
      { M1.__default.GetSt(p#8, st1#0) } 
        { M1.__default.GetSt(p#8, st2#0) } 
        { Set#IsMember(M1.__default.DomSt(st1#0), p#8) } 
      $IsBox(p#8, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st1#0), p#8)
         ==> M1.__default.GetSt(p#8, st2#0) == M1.__default.GetSt(p#8, st1#0))
     && (forall p#9: Box :: 
      { M1.__default.Oracle(p#9, st1#0) } 
        { M1.__default.GetSt(p#9, st2#0) } 
        { Set#IsMember(M1.__default.DomSt(st2#0), p#9) } 
        { Set#IsMember(M1.__default.DomSt(st1#0), p#9) } 
      $IsBox(p#9, Tclass.M1.Path())
         ==> 
        !Set#IsMember(M1.__default.DomSt(st1#0), p#9)
           && Set#IsMember(M1.__default.DomSt(st2#0), p#9)
         ==> M1.__default.GetSt(p#9, st2#0) == M1.__default.Oracle(p#9, st1#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.Extends#canCall(st0#0, st2#0);
  ensures {:id "id742"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st0#0, st2#0)
     ==> M1.__default.Extends(st0#0, st2#0)
       || Set#Subset(M1.__default.DomSt(st0#0), M1.__default.DomSt(st2#0));
  ensures {:id "id743"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st0#0, st2#0)
     ==> M1.__default.Extends(st0#0, st2#0)
       || (forall p#10: Box :: 
        { M1.__default.GetSt(p#10, st0#0) } 
          { M1.__default.GetSt(p#10, st2#0) } 
          { Set#IsMember(M1.__default.DomSt(st0#0), p#10) } 
        $IsBox(p#10, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st0#0), p#10)
           ==> M1.__default.GetSt(p#10, st2#0) == M1.__default.GetSt(p#10, st0#0));
  ensures {:id "id744"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st0#0, st2#0)
     ==> M1.__default.Extends(st0#0, st2#0)
       || (forall p#11: Box :: 
        { M1.__default.Oracle(p#11, st0#0) } 
          { M1.__default.GetSt(p#11, st2#0) } 
          { Set#IsMember(M1.__default.DomSt(st2#0), p#11) } 
          { Set#IsMember(M1.__default.DomSt(st0#0), p#11) } 
        $IsBox(p#11, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st0#0), p#11)
             && Set#IsMember(M1.__default.DomSt(st2#0), p#11)
           ==> M1.__default.GetSt(p#11, st2#0) == M1.__default.Oracle(p#11, st0#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.Lemma_ExtendsTransitive (correctness)"} Impl$$M1.__default.Lemma__ExtendsTransitive(st0#0: DatatypeType, st1#0: DatatypeType, st2#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var p#0_0: Box;
  var p##0_0: Box;
  var st0##0_0: DatatypeType;
  var st1##0_0: DatatypeType;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: Lemma_ExtendsTransitive, Impl$$M1.__default.Lemma__ExtendsTransitive
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](123,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc p#0_0;
        assume $IsBox(p#0_0, Tclass.M1.Path());
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](123,30)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        p##0_0 := p#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st0##0_0 := st0#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st1##0_0 := st1#0;
        call {:id "id745"} Call$$M1.__default.OracleProperty(p##0_0, st0##0_0, st1##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall p#0_1: Box :: 
          { M1.__default.Oracle(p#0_1, st1#0) } { M1.__default.Oracle(p#0_1, st0#0) } 
          $IsBox(p#0_1, Tclass.M1.Path()) && Lit(true)
             ==> M1.__default.Oracle(p#0_1, st0#0) == M1.__default.Oracle(p#0_1, st1#0));
    }
}



// function declaration for M1._default.Loc
function M1.__default.Loc(cmd#0: Seq, deps#0: Set, exp#0: Seq) : Box
uses {
// consequence axiom for M1.__default.Loc
axiom 0 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exp#0: Seq :: 
    { M1.__default.Loc(cmd#0, deps#0, exp#0) } 
    M1.__default.Loc#canCall(cmd#0, deps#0, exp#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M1.Path()))
           && $Is(exp#0, TSeq(TChar)))
       ==> $IsBox(M1.__default.Loc(cmd#0, deps#0, exp#0), Tclass.M1.Path()));
}

function M1.__default.Loc#canCall(cmd#0: Seq, deps#0: Set, exp#0: Seq) : bool;

function M1.__default.Loc#requires(Seq, Set, Seq) : bool;

// #requires axiom for M1.__default.Loc
axiom (forall cmd#0: Seq, deps#0: Set, exp#0: Seq :: 
  { M1.__default.Loc#requires(cmd#0, deps#0, exp#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M1.Path()))
       && $Is(exp#0, TSeq(TChar))
     ==> M1.__default.Loc#requires(cmd#0, deps#0, exp#0) == true);

procedure {:verboseName "M1.Loc (well-formedness)"} CheckWellformed$$M1.__default.Loc(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M1.Path())), 
    exp#0: Seq where $Is(exp#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Value
function M1.__default.Value(expr#0: DatatypeType) : bool
uses {
// definition axiom for M1.__default.Value (revealed)
axiom {:id "id746"} 2 <= $FunctionContextHeight
   ==> (forall expr#0: DatatypeType :: 
    { M1.__default.Value(expr#0) } 
    M1.__default.Value#canCall(expr#0)
         || (2 < $FunctionContextHeight && $Is(expr#0, Tclass.M1.Expression()))
       ==> M1.__default.Value(expr#0) == M1.Expression.exprLiteral_q(expr#0));
// definition axiom for M1.__default.Value for all literals (revealed)
axiom {:id "id747"} 2 <= $FunctionContextHeight
   ==> (forall expr#0: DatatypeType :: 
    {:weight 3} { M1.__default.Value(Lit(expr#0)) } 
    M1.__default.Value#canCall(Lit(expr#0))
         || (2 < $FunctionContextHeight && $Is(expr#0, Tclass.M1.Expression()))
       ==> M1.__default.Value(Lit(expr#0)) == Lit(M1.Expression.exprLiteral_q(Lit(expr#0))));
}

function M1.__default.Value#canCall(expr#0: DatatypeType) : bool;

function M1.__default.Value#requires(DatatypeType) : bool;

// #requires axiom for M1.__default.Value
axiom (forall expr#0: DatatypeType :: 
  { M1.__default.Value#requires(expr#0) } 
  $Is(expr#0, Tclass.M1.Expression())
     ==> M1.__default.Value#requires(expr#0) == true);

procedure {:verboseName "M1.Value (well-formedness)"} CheckWellformed$$M1.__default.Value(expr#0: DatatypeType where $Is(expr#0, Tclass.M1.Expression()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.build
function M1.__default.build(prog#0: DatatypeType, st#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for M1.__default.build
axiom 7 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: DatatypeType :: 
    { M1.__default.build(prog#0, st#0) } 
    M1.__default.build#canCall(prog#0, st#0)
         || (7 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M1.Program())
           && $Is(st#0, Tclass.M1.State())
           && M1.__default.Legal(M1.Program.stmts(prog#0)))
       ==> $Is(M1.__default.build(prog#0, st#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State())));
// alloc consequence axiom for M1.__default.build
axiom 7 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, prog#0: DatatypeType, st#0: DatatypeType :: 
    { $IsAlloc(M1.__default.build(prog#0, st#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), 
        $Heap) } 
    (M1.__default.build#canCall(prog#0, st#0)
           || (7 < $FunctionContextHeight
             && 
            $Is(prog#0, Tclass.M1.Program())
             && $IsAlloc(prog#0, Tclass.M1.Program(), $Heap)
             && 
            $Is(st#0, Tclass.M1.State())
             && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
             && M1.__default.Legal(M1.Program.stmts(prog#0))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.build(prog#0, st#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), 
        $Heap));
// definition axiom for M1.__default.build (revealed)
axiom {:id "id749"} 7 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: DatatypeType :: 
    { M1.__default.build(prog#0, st#0) } 
    M1.__default.build#canCall(prog#0, st#0)
         || (7 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M1.Program())
           && $Is(st#0, Tclass.M1.State())
           && M1.__default.Legal(M1.Program.stmts(prog#0)))
       ==> M1.Program.Program_q(prog#0)
         && M1.__default.EmptyEnv#canCall()
         && M1.__default.do#canCall(M1.Program.stmts(prog#0), st#0, M1.__default.EmptyEnv())
         && M1.__default.build(prog#0, st#0)
           == M1.__default.do($LS($LZ), M1.Program.stmts(prog#0), st#0, M1.__default.EmptyEnv()));
// definition axiom for M1.__default.build for decreasing-related literals (revealed)
axiom {:id "id750"} 7 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.build(Lit(prog#0), st#0) } 
    M1.__default.build#canCall(Lit(prog#0), st#0)
         || (7 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M1.Program())
           && $Is(st#0, Tclass.M1.State())
           && Lit(M1.__default.Legal(Lit(M1.Program.stmts(Lit(prog#0))))))
       ==> M1.Program.Program_q(Lit(prog#0))
         && M1.__default.EmptyEnv#canCall()
         && M1.__default.do#canCall(Lit(M1.Program.stmts(Lit(prog#0))), st#0, M1.__default.EmptyEnv())
         && M1.__default.build(Lit(prog#0), st#0)
           == M1.__default.do($LS($LZ), Lit(M1.Program.stmts(Lit(prog#0))), st#0, M1.__default.EmptyEnv()));
// definition axiom for M1.__default.build for all literals (revealed)
axiom {:id "id751"} 7 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.build(Lit(prog#0), Lit(st#0)) } 
    M1.__default.build#canCall(Lit(prog#0), Lit(st#0))
         || (7 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M1.Program())
           && $Is(st#0, Tclass.M1.State())
           && Lit(M1.__default.Legal(Lit(M1.Program.stmts(Lit(prog#0))))))
       ==> M1.Program.Program_q(Lit(prog#0))
         && M1.__default.EmptyEnv#canCall()
         && M1.__default.do#canCall(Lit(M1.Program.stmts(Lit(prog#0))), Lit(st#0), M1.__default.EmptyEnv())
         && M1.__default.build(Lit(prog#0), Lit(st#0))
           == M1.__default.do($LS($LZ), Lit(M1.Program.stmts(Lit(prog#0))), Lit(st#0), M1.__default.EmptyEnv()));
}

function M1.__default.build#canCall(prog#0: DatatypeType, st#0: DatatypeType) : bool;

function M1.__default.build#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for M1.__default.build
axiom (forall prog#0: DatatypeType, st#0: DatatypeType :: 
  { M1.__default.build#requires(prog#0, st#0) } 
  $Is(prog#0, Tclass.M1.Program()) && $Is(st#0, Tclass.M1.State())
     ==> M1.__default.build#requires(prog#0, st#0)
       == M1.__default.Legal(M1.Program.stmts(prog#0)));

procedure {:verboseName "M1.build (well-formedness)"} CheckWellformed$$M1.__default.build(prog#0: DatatypeType where $Is(prog#0, Tclass.M1.Program()), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.M1.Statement() : Ty
uses {
// Tclass.M1.Statement Tag
axiom Tag(Tclass.M1.Statement()) == Tagclass.M1.Statement
   && TagFamily(Tclass.M1.Statement()) == tytagFamily$Statement;
}

const unique Tagclass.M1.Statement: TyTag;

// Box/unbox axiom for Tclass.M1.Statement
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M1.Statement()) } 
  $IsBox(bx, Tclass.M1.Statement())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.Statement()));

// function declaration for M1._default.do
function M1.__default.do($ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box) : DatatypeType
uses {
// consequence axiom for M1.__default.do
axiom 6 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
    { M1.__default.do($ly, stmts#0, st#0, env#0) } 
    M1.__default.do#canCall(stmts#0, st#0, env#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M1.Statement()))
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.Legal(stmts#0)
           && M1.__default.ValidEnv(env#0))
       ==> $Is(M1.__default.do($ly, stmts#0, st#0, env#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State())));
// alloc consequence axiom for M1.__default.do
axiom 6 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
    { $IsAlloc(M1.__default.do($ly, stmts#0, st#0, env#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), 
        $Heap) } 
    (M1.__default.do#canCall(stmts#0, st#0, env#0)
           || (6 < $FunctionContextHeight
             && 
            $Is(stmts#0, TSeq(Tclass.M1.Statement()))
             && $IsAlloc(stmts#0, TSeq(Tclass.M1.Statement()), $Heap)
             && 
            $Is(st#0, Tclass.M1.State())
             && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
             && 
            $IsBox(env#0, Tclass.M1.Env())
             && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap)
             && 
            M1.__default.Legal(stmts#0)
             && M1.__default.ValidEnv(env#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.do($ly, stmts#0, st#0, env#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), 
        $Heap));
// definition axiom for M1.__default.do (revealed)
axiom {:id "id754"} 6 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
    { M1.__default.do($LS($ly), stmts#0, st#0, env#0) } 
    M1.__default.do#canCall(stmts#0, st#0, env#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M1.Statement()))
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.Legal(stmts#0)
           && M1.__default.ValidEnv(env#0))
       ==> (var stmt#0 := $Unbox(Seq#Index(stmts#0, LitInt(0))): DatatypeType; 
          (M1.Statement.stmtVariable_q(stmt#0)
               ==> M1.__default.eval#canCall(M1.Statement.expr(stmt#0), st#0, env#0)
                 && (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#0), st#0, env#0))): DatatypeType, 
                    $Unbox(M1.Tuple.snd(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#0), st#0, env#0))): DatatypeType; 
                  M1.__default.Value#canCall(expr'#0)
                     && (M1.__default.Value(expr'#0)
                       ==> M1.__default.SetEnv#canCall(M1.Statement.id(stmt#0), expr'#0, env#0)
                         && (var env'#0 := M1.__default.SetEnv(M1.Statement.id(stmt#0), expr'#0, env#0); 
                          M1.__default.Legal#canCall(Seq#Drop(stmts#0, LitInt(1)))
                             && (M1.__default.Legal(Seq#Drop(stmts#0, LitInt(1)))
                               ==> M1.__default.do#canCall(Seq#Drop(stmts#0, LitInt(1)), st'#0, env'#0))))))
             && (!M1.Statement.stmtVariable_q(stmt#0)
               ==> M1.__default.eval#canCall(M1.Statement.ret(stmt#0), st#0, env#0)))
         && M1.__default.do($LS($ly), stmts#0, st#0, env#0)
           == (var stmt#0 := $Unbox(Seq#Index(stmts#0, LitInt(0))): DatatypeType; 
            (if M1.Statement.stmtVariable_q(stmt#0)
               then (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#0), st#0, env#0))): DatatypeType, 
                  $Unbox(M1.Tuple.snd(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#0), st#0, env#0))): DatatypeType; 
                (if M1.__default.Value(expr'#0)
                   then (var env'#0 := M1.__default.SetEnv(M1.Statement.id(stmt#0), expr'#0, env#0); 
                    (if M1.__default.Legal(Seq#Drop(stmts#0, LitInt(1)))
                       then M1.__default.do($ly, Seq#Drop(stmts#0, LitInt(1)), st'#0, env'#0)
                       else #M1.Tuple.Pair($Box(expr'#0), $Box(st'#0))))
                   else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0))))
               else M1.__default.eval($LS($LZ), M1.Statement.ret(stmt#0), st#0, env#0))));
// definition axiom for M1.__default.do for decreasing-related literals (revealed)
axiom {:id "id755"} 6 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
    {:weight 3} { M1.__default.do($LS($ly), Lit(stmts#0), st#0, env#0) } 
    M1.__default.do#canCall(Lit(stmts#0), st#0, env#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M1.Statement()))
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.Legal(Lit(stmts#0))
           && M1.__default.ValidEnv(env#0))
       ==> (var stmt#1 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
          (M1.Statement.stmtVariable_q(stmt#1)
               ==> M1.__default.eval#canCall(M1.Statement.expr(stmt#1), st#0, env#0)
                 && (var expr'#1, st'#1 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#1), st#0, env#0))): DatatypeType, 
                    $Unbox(M1.Tuple.snd(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#1), st#0, env#0))): DatatypeType; 
                  M1.__default.Value#canCall(expr'#1)
                     && (M1.__default.Value(expr'#1)
                       ==> M1.__default.SetEnv#canCall(M1.Statement.id(stmt#1), expr'#1, env#0)
                         && (var env'#1 := M1.__default.SetEnv(M1.Statement.id(stmt#1), expr'#1, env#0); 
                          M1.__default.Legal#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                             && (Lit(M1.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1)))))
                               ==> M1.__default.do#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#1, env'#1))))))
             && (!M1.Statement.stmtVariable_q(stmt#1)
               ==> M1.__default.eval#canCall(M1.Statement.ret(stmt#1), st#0, env#0)))
         && M1.__default.do($LS($ly), Lit(stmts#0), st#0, env#0)
           == (var stmt#1 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
            (if M1.Statement.stmtVariable_q(stmt#1)
               then (var expr'#1, st'#1 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#1), st#0, env#0))): DatatypeType, 
                  $Unbox(M1.Tuple.snd(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#1), st#0, env#0))): DatatypeType; 
                (if M1.__default.Value(expr'#1)
                   then (var env'#1 := M1.__default.SetEnv(M1.Statement.id(stmt#1), expr'#1, env#0); 
                    (if M1.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                       then M1.__default.do($LS($ly), Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#1, env'#1)
                       else #M1.Tuple.Pair($Box(expr'#1), $Box(st'#1))))
                   else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0))))
               else M1.__default.eval($LS($LZ), M1.Statement.ret(stmt#1), st#0, env#0))));
// definition axiom for M1.__default.do for all literals (revealed)
axiom {:id "id756"} 6 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
    {:weight 3} { M1.__default.do($LS($ly), Lit(stmts#0), Lit(st#0), Lit(env#0)) } 
    M1.__default.do#canCall(Lit(stmts#0), Lit(st#0), Lit(env#0))
         || (6 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M1.Statement()))
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.Legal(Lit(stmts#0))
           && M1.__default.ValidEnv(Lit(env#0)))
       ==> (var stmt#2 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
          (M1.Statement.stmtVariable_q(stmt#2)
               ==> M1.__default.eval#canCall(M1.Statement.expr(stmt#2), Lit(st#0), Lit(env#0))
                 && (var expr'#2, st'#2 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#2), Lit(st#0), Lit(env#0)))): DatatypeType, 
                    $Unbox(M1.Tuple.snd(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#2), Lit(st#0), Lit(env#0)))): DatatypeType; 
                  M1.__default.Value#canCall(expr'#2)
                     && (M1.__default.Value(expr'#2)
                       ==> M1.__default.SetEnv#canCall(M1.Statement.id(stmt#2), expr'#2, Lit(env#0))
                         && (var env'#2 := M1.__default.SetEnv(M1.Statement.id(stmt#2), expr'#2, Lit(env#0)); 
                          M1.__default.Legal#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                             && (Lit(M1.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1)))))
                               ==> M1.__default.do#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#2, env'#2))))))
             && (!M1.Statement.stmtVariable_q(stmt#2)
               ==> M1.__default.eval#canCall(M1.Statement.ret(stmt#2), Lit(st#0), Lit(env#0))))
         && M1.__default.do($LS($ly), Lit(stmts#0), Lit(st#0), Lit(env#0))
           == (var stmt#2 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
            (if M1.Statement.stmtVariable_q(stmt#2)
               then (var expr'#2, st'#2 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#2), Lit(st#0), Lit(env#0)))): DatatypeType, 
                  $Unbox(M1.Tuple.snd(M1.__default.eval($LS($LZ), M1.Statement.expr(stmt#2), Lit(st#0), Lit(env#0)))): DatatypeType; 
                (if M1.__default.Value(expr'#2)
                   then (var env'#2 := M1.__default.SetEnv(M1.Statement.id(stmt#2), expr'#2, Lit(env#0)); 
                    (if M1.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                       then M1.__default.do($LS($ly), Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#2, env'#2)
                       else #M1.Tuple.Pair($Box(expr'#2), $Box(st'#2))))
                   else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                    $Box(Lit(st#0)))))
               else M1.__default.eval($LS($LZ), M1.Statement.ret(stmt#2), Lit(st#0), Lit(env#0)))));
}

function M1.__default.do#canCall(stmts#0: Seq, st#0: DatatypeType, env#0: Box) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
  { M1.__default.do($LS($ly), stmts#0, st#0, env#0) } 
  M1.__default.do($LS($ly), stmts#0, st#0, env#0)
     == M1.__default.do($ly, stmts#0, st#0, env#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
  { M1.__default.do(AsFuelBottom($ly), stmts#0, st#0, env#0) } 
  M1.__default.do($ly, stmts#0, st#0, env#0)
     == M1.__default.do($LZ, stmts#0, st#0, env#0));

function M1.__default.do#requires(LayerType, Seq, DatatypeType, Box) : bool;

// #requires axiom for M1.__default.do
axiom (forall $ly: LayerType, stmts#0: Seq, st#0: DatatypeType, env#0: Box :: 
  { M1.__default.do#requires($ly, stmts#0, st#0, env#0) } 
  $Is(stmts#0, TSeq(Tclass.M1.Statement()))
       && $Is(st#0, Tclass.M1.State())
       && $IsBox(env#0, Tclass.M1.Env())
     ==> M1.__default.do#requires($ly, stmts#0, st#0, env#0)
       == (M1.__default.Legal(stmts#0) && M1.__default.ValidEnv(env#0)));

procedure {:verboseName "M1.do (well-formedness)"} CheckWellformed$$M1.__default.do(stmts#0: Seq where $Is(stmts#0, TSeq(Tclass.M1.Statement())), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()), 
    env#0: Box where $IsBox(env#0, Tclass.M1.Env()));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Legal
function M1.__default.Legal(stmts#0: Seq) : bool
uses {
// definition axiom for M1.__default.Legal (revealed)
axiom {:id "id776"} 3 <= $FunctionContextHeight
   ==> (forall stmts#0: Seq :: 
    { M1.__default.Legal(stmts#0) } 
    M1.__default.Legal#canCall(stmts#0)
         || (3 < $FunctionContextHeight && $Is(stmts#0, TSeq(Tclass.M1.Statement())))
       ==> M1.__default.Legal(stmts#0) == (Seq#Length(stmts#0) != 0));
// definition axiom for M1.__default.Legal for all literals (revealed)
axiom {:id "id777"} 3 <= $FunctionContextHeight
   ==> (forall stmts#0: Seq :: 
    {:weight 3} { M1.__default.Legal(Lit(stmts#0)) } 
    M1.__default.Legal#canCall(Lit(stmts#0))
         || (3 < $FunctionContextHeight && $Is(stmts#0, TSeq(Tclass.M1.Statement())))
       ==> M1.__default.Legal(Lit(stmts#0)) == (Seq#Length(Lit(stmts#0)) != 0));
}

function M1.__default.Legal#canCall(stmts#0: Seq) : bool;

function M1.__default.Legal#requires(Seq) : bool;

// #requires axiom for M1.__default.Legal
axiom (forall stmts#0: Seq :: 
  { M1.__default.Legal#requires(stmts#0) } 
  $Is(stmts#0, TSeq(Tclass.M1.Statement()))
     ==> M1.__default.Legal#requires(stmts#0) == true);

procedure {:verboseName "M1.Legal (well-formedness)"} CheckWellformed$$M1.__default.Legal(stmts#0: Seq where $Is(stmts#0, TSeq(Tclass.M1.Statement())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.eval
function M1.__default.eval($ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box)
   : DatatypeType
uses {
// consequence axiom for M1.__default.eval
axiom 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box :: 
    { M1.__default.eval($ly, expr#0, st#0, env#0) } 
    M1.__default.eval#canCall(expr#0, st#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M1.Expression())
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && M1.__default.ValidEnv(env#0))
       ==> $Is(M1.__default.eval($ly, expr#0, st#0, env#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State())));
// alloc consequence axiom for M1.__default.eval
axiom 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      $ly: LayerType, 
      expr#0: DatatypeType, 
      st#0: DatatypeType, 
      env#0: Box :: 
    { $IsAlloc(M1.__default.eval($ly, expr#0, st#0, env#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), 
        $Heap) } 
    (M1.__default.eval#canCall(expr#0, st#0, env#0)
           || (5 < $FunctionContextHeight
             && 
            $Is(expr#0, Tclass.M1.Expression())
             && $IsAlloc(expr#0, Tclass.M1.Expression(), $Heap)
             && 
            $Is(st#0, Tclass.M1.State())
             && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
             && 
            $IsBox(env#0, Tclass.M1.Env())
             && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap)
             && M1.__default.ValidEnv(env#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.eval($ly, expr#0, st#0, env#0), 
        Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), 
        $Heap));
// definition axiom for M1.__default.eval (revealed)
axiom {:id "id779"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box :: 
    { M1.__default.eval($LS($ly), expr#0, st#0, env#0) } 
    M1.__default.eval#canCall(expr#0, st#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M1.Expression())
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && M1.__default.ValidEnv(env#0))
       ==> M1.__default.Value#canCall(expr#0)
         && (!M1.__default.Value(expr#0)
           ==> (M1.Expression.exprIdentifier_q(expr#0)
               ==> M1.__default.GetEnv#canCall(M1.Expression.id(expr#0), env#0))
             && (!M1.Expression.exprIdentifier_q(expr#0)
               ==> (M1.Expression.exprIf_q(expr#0)
                   ==> M1.__default.eval#canCall(M1.Expression.cond(expr#0), st#0, env#0)
                     && (var cond'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.cond(expr#0), st#0, env#0))): DatatypeType, 
                        $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.cond(expr#0), st#0, env#0))): DatatypeType; 
                      (M1.Expression.exprLiteral_q(cond'#0)
                           ==> $IsA#M1.Literal(M1.Expression.lit(cond'#0)))
                         && (M1.Expression.exprLiteral_q(cond'#0)
                             && M1.Literal#Equal(M1.Expression.lit(cond'#0), #M1.Literal.litTrue())
                           ==> M1.__default.eval#canCall(M1.Expression.ifTrue(expr#0), st'#0, env#0))
                         && (!(M1.Expression.exprLiteral_q(cond'#0)
                             && M1.Literal#Equal(M1.Expression.lit(cond'#0), #M1.Literal.litTrue()))
                           ==> (M1.Expression.exprLiteral_q(cond'#0)
                               ==> $IsA#M1.Literal(M1.Expression.lit(cond'#0)))
                             && (M1.Expression.exprLiteral_q(cond'#0)
                                 && M1.Literal#Equal(M1.Expression.lit(cond'#0), #M1.Literal.litFalse())
                               ==> M1.__default.eval#canCall(M1.Expression.ifFalse(expr#0), st'#0, env#0)))))
                 && (!M1.Expression.exprIf_q(expr#0)
                   ==> (M1.Expression.exprAnd_q(expr#0)
                       ==> M1.__default.eval#canCall(M1.Expression.conj0(expr#0), st#0, env#0)
                         && (var conj0'#0, st'#1 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.conj0(expr#0), st#0, env#0))): DatatypeType, 
                            $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.conj0(expr#0), st#0, env#0))): DatatypeType; 
                          (M1.Expression.exprLiteral_q(conj0'#0)
                               ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#0)))
                             && (M1.Expression.exprLiteral_q(conj0'#0)
                                 && M1.Literal#Equal(M1.Expression.lit(conj0'#0), #M1.Literal.litTrue())
                               ==> M1.__default.eval#canCall(M1.Expression.conj1(expr#0), st'#1, env#0))
                             && (!(M1.Expression.exprLiteral_q(conj0'#0)
                                 && M1.Literal#Equal(M1.Expression.lit(conj0'#0), #M1.Literal.litTrue()))
                               ==> 
                              M1.Expression.exprLiteral_q(conj0'#0)
                               ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#0)))))
                     && (!M1.Expression.exprAnd_q(expr#0)
                       ==> (M1.Expression.exprOr_q(expr#0)
                           ==> M1.__default.eval#canCall(M1.Expression.disj0(expr#0), st#0, env#0)
                             && (var disj0'#0, st'#2 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.disj0(expr#0), st#0, env#0))): DatatypeType, 
                                $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.disj0(expr#0), st#0, env#0))): DatatypeType; 
                              (M1.Expression.exprLiteral_q(disj0'#0)
                                   ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#0)))
                                 && (!(M1.Expression.exprLiteral_q(disj0'#0)
                                     && M1.Literal#Equal(M1.Expression.lit(disj0'#0), #M1.Literal.litTrue()))
                                   ==> (M1.Expression.exprLiteral_q(disj0'#0)
                                       ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#0)))
                                     && (M1.Expression.exprLiteral_q(disj0'#0)
                                         && M1.Literal#Equal(M1.Expression.lit(disj0'#0), #M1.Literal.litFalse())
                                       ==> M1.__default.eval#canCall(M1.Expression.disj1(expr#0), st'#2, env#0)))))
                         && (!M1.Expression.exprOr_q(expr#0)
                           ==> 
                          M1.Expression.exprInvocation_q(expr#0)
                           ==> M1.__default.eval#canCall(M1.Expression.fun(expr#0), st#0, env#0)
                             && (var fun'#0, st'#3 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.fun(expr#0), st#0, env#0))): DatatypeType, 
                                $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.fun(expr#0), st#0, env#0))): DatatypeType; 
                              M1.__default.evalArgs#canCall(expr#0, M1.Expression.args(expr#0), st#0, env#0)
                                 && (var args'#0, sts'#0 := $Unbox(M1.Tuple.fst(M1.__default.evalArgs($ly, expr#0, M1.Expression.args(expr#0), st#0, env#0))): Seq, 
                                    $Unbox(M1.Tuple.snd(M1.__default.evalArgs($ly, expr#0, M1.Expression.args(expr#0), st#0, env#0))): Set; 
                                  (var sts''#0 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(st'#3)), sts'#0); 
                                    M1.__default.Compatible#canCall(sts''#0)
                                       && (M1.__default.Compatible(sts''#0)
                                         ==> M1.__default.Combine#canCall(sts''#0)
                                           && (var stCombined#0 := M1.__default.Combine($LS($LZ), sts''#0); 
                                            M1.Expression.exprLiteral_q(fun'#0)
                                                 && M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#0))
                                               ==> 
                                              M1.Primitive.primExec_q(M1.Literal.prim(M1.Expression.lit(fun'#0)))
                                               ==> M1.__default.Arity#canCall(Lit(#M1.Primitive.primExec()))
                                                 && (Seq#Length(args'#0) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                                   ==> M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), args'#0, stCombined#0))
                                                 && (Seq#Length(args'#0) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                                     && M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), args'#0, stCombined#0)
                                                   ==> M1.__default.exec#canCall(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(0))): DatatypeType)), 
                                                      M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(1))): DatatypeType)), 
                                                      M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(2))): DatatypeType)), 
                                                      stCombined#0)
                                                     && (var ps#0 := M1.__default.exec(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(0))): DatatypeType)), 
                                                          M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(1))): DatatypeType)), 
                                                          M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(2))): DatatypeType)), 
                                                          stCombined#0); 
                                                      M1.Tuple.Pair_q(ps#0) && M1.Tuple.Pair_q(ps#0)))))))))))))
         && M1.__default.eval($LS($ly), expr#0, st#0, env#0)
           == (if M1.__default.Value(expr#0)
             then #M1.Tuple.Pair($Box(expr#0), $Box(st#0))
             else (if M1.Expression.exprIdentifier_q(expr#0)
               then #M1.Tuple.Pair($Box(M1.__default.GetEnv(M1.Expression.id(expr#0), env#0)), $Box(st#0))
               else (if M1.Expression.exprIf_q(expr#0)
                 then (var cond'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.cond(expr#0), st#0, env#0))): DatatypeType, 
                    $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.cond(expr#0), st#0, env#0))): DatatypeType; 
                  (if M1.Expression.exprLiteral_q(cond'#0)
                       && M1.Literal#Equal(M1.Expression.lit(cond'#0), #M1.Literal.litTrue())
                     then M1.__default.eval($ly, M1.Expression.ifTrue(expr#0), st'#0, env#0)
                     else (if M1.Expression.exprLiteral_q(cond'#0)
                         && M1.Literal#Equal(M1.Expression.lit(cond'#0), #M1.Literal.litFalse())
                       then M1.__default.eval($ly, M1.Expression.ifFalse(expr#0), st'#0, env#0)
                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))
                 else (if M1.Expression.exprAnd_q(expr#0)
                   then (var conj0'#0, st'#1 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.conj0(expr#0), st#0, env#0))): DatatypeType, 
                      $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.conj0(expr#0), st#0, env#0))): DatatypeType; 
                    (if M1.Expression.exprLiteral_q(conj0'#0)
                         && M1.Literal#Equal(M1.Expression.lit(conj0'#0), #M1.Literal.litTrue())
                       then M1.__default.eval($ly, M1.Expression.conj1(expr#0), st'#1, env#0)
                       else (if M1.Expression.exprLiteral_q(conj0'#0)
                           && M1.Literal#Equal(M1.Expression.lit(conj0'#0), #M1.Literal.litFalse())
                         then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprLiteral(Lit(#M1.Literal.litFalse())))), $Box(st'#1))
                         else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))
                   else (if M1.Expression.exprOr_q(expr#0)
                     then (var disj0'#0, st'#2 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.disj0(expr#0), st#0, env#0))): DatatypeType, 
                        $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.disj0(expr#0), st#0, env#0))): DatatypeType; 
                      (if M1.Expression.exprLiteral_q(disj0'#0)
                           && M1.Literal#Equal(M1.Expression.lit(disj0'#0), #M1.Literal.litTrue())
                         then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprLiteral(Lit(#M1.Literal.litTrue())))), $Box(st'#2))
                         else (if M1.Expression.exprLiteral_q(disj0'#0)
                             && M1.Literal#Equal(M1.Expression.lit(disj0'#0), #M1.Literal.litFalse())
                           then M1.__default.eval($ly, M1.Expression.disj1(expr#0), st'#2, env#0)
                           else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))
                     else (if M1.Expression.exprInvocation_q(expr#0)
                       then (var fun'#0, st'#3 := $Unbox(M1.Tuple.fst(M1.__default.eval($ly, M1.Expression.fun(expr#0), st#0, env#0))): DatatypeType, 
                          $Unbox(M1.Tuple.snd(M1.__default.eval($ly, M1.Expression.fun(expr#0), st#0, env#0))): DatatypeType; 
                        (var args'#0, sts'#0 := $Unbox(M1.Tuple.fst(M1.__default.evalArgs($ly, expr#0, M1.Expression.args(expr#0), st#0, env#0))): Seq, 
                            $Unbox(M1.Tuple.snd(M1.__default.evalArgs($ly, expr#0, M1.Expression.args(expr#0), st#0, env#0))): Set; 
                          (var sts''#0 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(st'#3)), sts'#0); 
                            (if !M1.__default.Compatible(sts''#0)
                               then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rCompatibility())))), 
                                $Box(st#0))
                               else (var stCombined#0 := M1.__default.Combine($LS($LZ), sts''#0); 
                                (if M1.Expression.exprLiteral_q(fun'#0)
                                     && M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#0))
                                   then (if M1.Primitive.primExec_q(M1.Literal.prim(M1.Expression.lit(fun'#0)))
                                     then (if Seq#Length(args'#0) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                         && M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), args'#0, stCombined#0)
                                       then (var ps#0 := M1.__default.exec(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(0))): DatatypeType)), 
                                            M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(1))): DatatypeType)), 
                                            M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(2))): DatatypeType)), 
                                            stCombined#0); 
                                        #M1.Tuple.Pair($Box(#M1.Expression.exprLiteral(#M1.Literal.litArrOfPaths($Unbox(M1.Tuple.fst(ps#0)): Set))), 
                                          M1.Tuple.snd(ps#0)))
                                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))
                                     else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))
                                   else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0))))))))
                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))))));
// definition axiom for M1.__default.eval for decreasing-related literals (revealed)
axiom {:id "id780"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box :: 
    {:weight 3} { M1.__default.eval($LS($ly), Lit(expr#0), st#0, env#0) } 
    M1.__default.eval#canCall(Lit(expr#0), st#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M1.Expression())
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && M1.__default.ValidEnv(env#0))
       ==> M1.__default.Value#canCall(Lit(expr#0))
         && (!Lit(M1.__default.Value(Lit(expr#0)))
           ==> (Lit(M1.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> M1.__default.GetEnv#canCall(Lit(M1.Expression.id(Lit(expr#0))), env#0))
             && (!Lit(M1.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> (Lit(M1.Expression.exprIf_q(Lit(expr#0)))
                   ==> M1.__default.eval#canCall(Lit(M1.Expression.cond(Lit(expr#0))), st#0, env#0)
                     && (var cond'#1, st'#4 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                        $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                      (M1.Expression.exprLiteral_q(cond'#1)
                           ==> $IsA#M1.Literal(M1.Expression.lit(cond'#1)))
                         && (M1.Expression.exprLiteral_q(cond'#1)
                             && M1.Literal#Equal(M1.Expression.lit(cond'#1), #M1.Literal.litTrue())
                           ==> M1.__default.eval#canCall(Lit(M1.Expression.ifTrue(Lit(expr#0))), st'#4, env#0))
                         && (!(M1.Expression.exprLiteral_q(cond'#1)
                             && M1.Literal#Equal(M1.Expression.lit(cond'#1), #M1.Literal.litTrue()))
                           ==> (M1.Expression.exprLiteral_q(cond'#1)
                               ==> $IsA#M1.Literal(M1.Expression.lit(cond'#1)))
                             && (M1.Expression.exprLiteral_q(cond'#1)
                                 && M1.Literal#Equal(M1.Expression.lit(cond'#1), #M1.Literal.litFalse())
                               ==> M1.__default.eval#canCall(Lit(M1.Expression.ifFalse(Lit(expr#0))), st'#4, env#0)))))
                 && (!Lit(M1.Expression.exprIf_q(Lit(expr#0)))
                   ==> (Lit(M1.Expression.exprAnd_q(Lit(expr#0)))
                       ==> M1.__default.eval#canCall(Lit(M1.Expression.conj0(Lit(expr#0))), st#0, env#0)
                         && (var conj0'#1, st'#5 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                            $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                          (M1.Expression.exprLiteral_q(conj0'#1)
                               ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#1)))
                             && (M1.Expression.exprLiteral_q(conj0'#1)
                                 && M1.Literal#Equal(M1.Expression.lit(conj0'#1), #M1.Literal.litTrue())
                               ==> M1.__default.eval#canCall(Lit(M1.Expression.conj1(Lit(expr#0))), st'#5, env#0))
                             && (!(M1.Expression.exprLiteral_q(conj0'#1)
                                 && M1.Literal#Equal(M1.Expression.lit(conj0'#1), #M1.Literal.litTrue()))
                               ==> 
                              M1.Expression.exprLiteral_q(conj0'#1)
                               ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#1)))))
                     && (!Lit(M1.Expression.exprAnd_q(Lit(expr#0)))
                       ==> (Lit(M1.Expression.exprOr_q(Lit(expr#0)))
                           ==> M1.__default.eval#canCall(Lit(M1.Expression.disj0(Lit(expr#0))), st#0, env#0)
                             && (var disj0'#1, st'#6 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                                $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                              (M1.Expression.exprLiteral_q(disj0'#1)
                                   ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#1)))
                                 && (!(M1.Expression.exprLiteral_q(disj0'#1)
                                     && M1.Literal#Equal(M1.Expression.lit(disj0'#1), #M1.Literal.litTrue()))
                                   ==> (M1.Expression.exprLiteral_q(disj0'#1)
                                       ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#1)))
                                     && (M1.Expression.exprLiteral_q(disj0'#1)
                                         && M1.Literal#Equal(M1.Expression.lit(disj0'#1), #M1.Literal.litFalse())
                                       ==> M1.__default.eval#canCall(Lit(M1.Expression.disj1(Lit(expr#0))), st'#6, env#0)))))
                         && (!Lit(M1.Expression.exprOr_q(Lit(expr#0)))
                           ==> 
                          Lit(M1.Expression.exprInvocation_q(Lit(expr#0)))
                           ==> M1.__default.eval#canCall(Lit(M1.Expression.fun(Lit(expr#0))), st#0, env#0)
                             && (var fun'#1, st'#7 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                                $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                              M1.__default.evalArgs#canCall(Lit(expr#0), Lit(M1.Expression.args(Lit(expr#0))), st#0, env#0)
                                 && (var args'#1, sts'#1 := $Unbox(M1.Tuple.fst(M1.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M1.Expression.args(Lit(expr#0))), st#0, env#0))): Seq, 
                                    $Unbox(M1.Tuple.snd(M1.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M1.Expression.args(Lit(expr#0))), st#0, env#0))): Set; 
                                  (var sts''#1 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(st'#7)), sts'#1); 
                                    M1.__default.Compatible#canCall(sts''#1)
                                       && (M1.__default.Compatible(sts''#1)
                                         ==> M1.__default.Combine#canCall(sts''#1)
                                           && (var stCombined#1 := M1.__default.Combine($LS($LZ), sts''#1); 
                                            M1.Expression.exprLiteral_q(fun'#1)
                                                 && M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#1))
                                               ==> 
                                              M1.Primitive.primExec_q(M1.Literal.prim(M1.Expression.lit(fun'#1)))
                                               ==> M1.__default.Arity#canCall(Lit(#M1.Primitive.primExec()))
                                                 && (Seq#Length(args'#1) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                                   ==> M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), args'#1, stCombined#1))
                                                 && (Seq#Length(args'#1) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                                     && M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), args'#1, stCombined#1)
                                                   ==> M1.__default.exec#canCall(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(0))): DatatypeType)), 
                                                      M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(1))): DatatypeType)), 
                                                      M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(2))): DatatypeType)), 
                                                      stCombined#1)
                                                     && (var ps#1 := M1.__default.exec(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(0))): DatatypeType)), 
                                                          M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(1))): DatatypeType)), 
                                                          M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(2))): DatatypeType)), 
                                                          stCombined#1); 
                                                      M1.Tuple.Pair_q(ps#1) && M1.Tuple.Pair_q(ps#1)))))))))))))
         && M1.__default.eval($LS($ly), Lit(expr#0), st#0, env#0)
           == (if M1.__default.Value(Lit(expr#0))
             then #M1.Tuple.Pair($Box(Lit(expr#0)), $Box(st#0))
             else (if M1.Expression.exprIdentifier_q(Lit(expr#0))
               then #M1.Tuple.Pair($Box(M1.__default.GetEnv(Lit(M1.Expression.id(Lit(expr#0))), env#0)), $Box(st#0))
               else (if M1.Expression.exprIf_q(Lit(expr#0))
                 then (var cond'#1, st'#4 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                    $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                  (if M1.Expression.exprLiteral_q(cond'#1)
                       && M1.Literal#Equal(M1.Expression.lit(cond'#1), #M1.Literal.litTrue())
                     then M1.__default.eval($LS($ly), Lit(M1.Expression.ifTrue(Lit(expr#0))), st'#4, env#0)
                     else (if M1.Expression.exprLiteral_q(cond'#1)
                         && M1.Literal#Equal(M1.Expression.lit(cond'#1), #M1.Literal.litFalse())
                       then M1.__default.eval($LS($ly), Lit(M1.Expression.ifFalse(Lit(expr#0))), st'#4, env#0)
                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))
                 else (if M1.Expression.exprAnd_q(Lit(expr#0))
                   then (var conj0'#1, st'#5 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                      $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                    (if M1.Expression.exprLiteral_q(conj0'#1)
                         && M1.Literal#Equal(M1.Expression.lit(conj0'#1), #M1.Literal.litTrue())
                       then M1.__default.eval($LS($ly), Lit(M1.Expression.conj1(Lit(expr#0))), st'#5, env#0)
                       else (if M1.Expression.exprLiteral_q(conj0'#1)
                           && M1.Literal#Equal(M1.Expression.lit(conj0'#1), #M1.Literal.litFalse())
                         then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprLiteral(Lit(#M1.Literal.litFalse())))), $Box(st'#5))
                         else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))
                   else (if M1.Expression.exprOr_q(Lit(expr#0))
                     then (var disj0'#1, st'#6 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                        $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                      (if M1.Expression.exprLiteral_q(disj0'#1)
                           && M1.Literal#Equal(M1.Expression.lit(disj0'#1), #M1.Literal.litTrue())
                         then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprLiteral(Lit(#M1.Literal.litTrue())))), $Box(st'#6))
                         else (if M1.Expression.exprLiteral_q(disj0'#1)
                             && M1.Literal#Equal(M1.Expression.lit(disj0'#1), #M1.Literal.litFalse())
                           then M1.__default.eval($LS($ly), Lit(M1.Expression.disj1(Lit(expr#0))), st'#6, env#0)
                           else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))
                     else (if M1.Expression.exprInvocation_q(Lit(expr#0))
                       then (var fun'#1, st'#7 := $Unbox(M1.Tuple.fst(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                          $Unbox(M1.Tuple.snd(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), st#0, env#0))): DatatypeType; 
                        (var args'#1, sts'#1 := $Unbox(M1.Tuple.fst(M1.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M1.Expression.args(Lit(expr#0))), st#0, env#0))): Seq, 
                            $Unbox(M1.Tuple.snd(M1.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M1.Expression.args(Lit(expr#0))), st#0, env#0))): Set; 
                          (var sts''#1 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(st'#7)), sts'#1); 
                            (if !M1.__default.Compatible(sts''#1)
                               then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rCompatibility())))), 
                                $Box(st#0))
                               else (var stCombined#1 := M1.__default.Combine($LS($LZ), sts''#1); 
                                (if M1.Expression.exprLiteral_q(fun'#1)
                                     && M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#1))
                                   then (if M1.Primitive.primExec_q(M1.Literal.prim(M1.Expression.lit(fun'#1)))
                                     then (if Seq#Length(args'#1) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                         && M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), args'#1, stCombined#1)
                                       then (var ps#1 := M1.__default.exec(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(0))): DatatypeType)), 
                                            M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(1))): DatatypeType)), 
                                            M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(2))): DatatypeType)), 
                                            stCombined#1); 
                                        #M1.Tuple.Pair($Box(#M1.Expression.exprLiteral(#M1.Literal.litArrOfPaths($Unbox(M1.Tuple.fst(ps#1)): Set))), 
                                          M1.Tuple.snd(ps#1)))
                                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))
                                     else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))
                                   else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0))))))))
                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), $Box(st#0)))))))));
// definition axiom for M1.__default.eval for all literals (revealed)
axiom {:id "id781"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box :: 
    {:weight 3} { M1.__default.eval($LS($ly), Lit(expr#0), Lit(st#0), Lit(env#0)) } 
    M1.__default.eval#canCall(Lit(expr#0), Lit(st#0), Lit(env#0))
         || (5 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M1.Expression())
           && $Is(st#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && M1.__default.ValidEnv(Lit(env#0)))
       ==> M1.__default.Value#canCall(Lit(expr#0))
         && (!Lit(M1.__default.Value(Lit(expr#0)))
           ==> (Lit(M1.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> M1.__default.GetEnv#canCall(Lit(M1.Expression.id(Lit(expr#0))), Lit(env#0)))
             && (!Lit(M1.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> (Lit(M1.Expression.exprIf_q(Lit(expr#0)))
                   ==> M1.__default.eval#canCall(Lit(M1.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))
                     && (var cond'#2, st'#8 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                        $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                      (M1.Expression.exprLiteral_q(cond'#2)
                           ==> $IsA#M1.Literal(M1.Expression.lit(cond'#2)))
                         && (M1.Expression.exprLiteral_q(cond'#2)
                             && M1.Literal#Equal(M1.Expression.lit(cond'#2), #M1.Literal.litTrue())
                           ==> M1.__default.eval#canCall(Lit(M1.Expression.ifTrue(Lit(expr#0))), st'#8, Lit(env#0)))
                         && (!(M1.Expression.exprLiteral_q(cond'#2)
                             && M1.Literal#Equal(M1.Expression.lit(cond'#2), #M1.Literal.litTrue()))
                           ==> (M1.Expression.exprLiteral_q(cond'#2)
                               ==> $IsA#M1.Literal(M1.Expression.lit(cond'#2)))
                             && (M1.Expression.exprLiteral_q(cond'#2)
                                 && M1.Literal#Equal(M1.Expression.lit(cond'#2), #M1.Literal.litFalse())
                               ==> M1.__default.eval#canCall(Lit(M1.Expression.ifFalse(Lit(expr#0))), st'#8, Lit(env#0))))))
                 && (!Lit(M1.Expression.exprIf_q(Lit(expr#0)))
                   ==> (Lit(M1.Expression.exprAnd_q(Lit(expr#0)))
                       ==> M1.__default.eval#canCall(Lit(M1.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))
                         && (var conj0'#2, st'#9 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                            $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                          (M1.Expression.exprLiteral_q(conj0'#2)
                               ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#2)))
                             && (M1.Expression.exprLiteral_q(conj0'#2)
                                 && M1.Literal#Equal(M1.Expression.lit(conj0'#2), #M1.Literal.litTrue())
                               ==> M1.__default.eval#canCall(Lit(M1.Expression.conj1(Lit(expr#0))), st'#9, Lit(env#0)))
                             && (!(M1.Expression.exprLiteral_q(conj0'#2)
                                 && M1.Literal#Equal(M1.Expression.lit(conj0'#2), #M1.Literal.litTrue()))
                               ==> 
                              M1.Expression.exprLiteral_q(conj0'#2)
                               ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#2)))))
                     && (!Lit(M1.Expression.exprAnd_q(Lit(expr#0)))
                       ==> (Lit(M1.Expression.exprOr_q(Lit(expr#0)))
                           ==> M1.__default.eval#canCall(Lit(M1.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))
                             && (var disj0'#2, st'#10 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                                $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                              (M1.Expression.exprLiteral_q(disj0'#2)
                                   ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#2)))
                                 && (!(M1.Expression.exprLiteral_q(disj0'#2)
                                     && M1.Literal#Equal(M1.Expression.lit(disj0'#2), #M1.Literal.litTrue()))
                                   ==> (M1.Expression.exprLiteral_q(disj0'#2)
                                       ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#2)))
                                     && (M1.Expression.exprLiteral_q(disj0'#2)
                                         && M1.Literal#Equal(M1.Expression.lit(disj0'#2), #M1.Literal.litFalse())
                                       ==> M1.__default.eval#canCall(Lit(M1.Expression.disj1(Lit(expr#0))), st'#10, Lit(env#0))))))
                         && (!Lit(M1.Expression.exprOr_q(Lit(expr#0)))
                           ==> 
                          Lit(M1.Expression.exprInvocation_q(Lit(expr#0)))
                           ==> M1.__default.eval#canCall(Lit(M1.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))
                             && (var fun'#2, st'#11 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                                $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                              M1.__default.evalArgs#canCall(Lit(expr#0), Lit(M1.Expression.args(Lit(expr#0))), Lit(st#0), Lit(env#0))
                                 && (var args'#2, sts'#2 := $Unbox(M1.Tuple.fst(Lit(M1.__default.evalArgs($LS($ly), 
                                            Lit(expr#0), 
                                            Lit(M1.Expression.args(Lit(expr#0))), 
                                            Lit(st#0), 
                                            Lit(env#0))))): Seq, 
                                    $Unbox(M1.Tuple.snd(Lit(M1.__default.evalArgs($LS($ly), 
                                            Lit(expr#0), 
                                            Lit(M1.Expression.args(Lit(expr#0))), 
                                            Lit(st#0), 
                                            Lit(env#0))))): Set; 
                                  (var sts''#2 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(st'#11)), sts'#2); 
                                    M1.__default.Compatible#canCall(sts''#2)
                                       && (M1.__default.Compatible(sts''#2)
                                         ==> M1.__default.Combine#canCall(sts''#2)
                                           && (var stCombined#2 := M1.__default.Combine($LS($LZ), sts''#2); 
                                            M1.Expression.exprLiteral_q(fun'#2)
                                                 && M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#2))
                                               ==> 
                                              M1.Primitive.primExec_q(M1.Literal.prim(M1.Expression.lit(fun'#2)))
                                               ==> M1.__default.Arity#canCall(Lit(#M1.Primitive.primExec()))
                                                 && (Seq#Length(args'#2) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                                   ==> M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), args'#2, stCombined#2))
                                                 && (Seq#Length(args'#2) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                                     && M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), args'#2, stCombined#2)
                                                   ==> M1.__default.exec#canCall(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(0))): DatatypeType)), 
                                                      M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(1))): DatatypeType)), 
                                                      M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(2))): DatatypeType)), 
                                                      stCombined#2)
                                                     && (var ps#2 := M1.__default.exec(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(0))): DatatypeType)), 
                                                          M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(1))): DatatypeType)), 
                                                          M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(2))): DatatypeType)), 
                                                          stCombined#2); 
                                                      M1.Tuple.Pair_q(ps#2) && M1.Tuple.Pair_q(ps#2)))))))))))))
         && M1.__default.eval($LS($ly), Lit(expr#0), Lit(st#0), Lit(env#0))
           == (if M1.__default.Value(Lit(expr#0))
             then #M1.Tuple.Pair($Box(Lit(expr#0)), $Box(Lit(st#0)))
             else (if M1.Expression.exprIdentifier_q(Lit(expr#0))
               then #M1.Tuple.Pair($Box(M1.__default.GetEnv(Lit(M1.Expression.id(Lit(expr#0))), Lit(env#0))), 
                $Box(Lit(st#0)))
               else (if M1.Expression.exprIf_q(Lit(expr#0))
                 then (var cond'#2, st'#8 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                    $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                  (if M1.Expression.exprLiteral_q(cond'#2)
                       && M1.Literal#Equal(M1.Expression.lit(cond'#2), #M1.Literal.litTrue())
                     then M1.__default.eval($LS($ly), Lit(M1.Expression.ifTrue(Lit(expr#0))), st'#8, Lit(env#0))
                     else (if M1.Expression.exprLiteral_q(cond'#2)
                         && M1.Literal#Equal(M1.Expression.lit(cond'#2), #M1.Literal.litFalse())
                       then M1.__default.eval($LS($ly), Lit(M1.Expression.ifFalse(Lit(expr#0))), st'#8, Lit(env#0))
                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                        $Box(Lit(st#0))))))
                 else (if M1.Expression.exprAnd_q(Lit(expr#0))
                   then (var conj0'#2, st'#9 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                      $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                    (if M1.Expression.exprLiteral_q(conj0'#2)
                         && M1.Literal#Equal(M1.Expression.lit(conj0'#2), #M1.Literal.litTrue())
                       then M1.__default.eval($LS($ly), Lit(M1.Expression.conj1(Lit(expr#0))), st'#9, Lit(env#0))
                       else (if M1.Expression.exprLiteral_q(conj0'#2)
                           && M1.Literal#Equal(M1.Expression.lit(conj0'#2), #M1.Literal.litFalse())
                         then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprLiteral(Lit(#M1.Literal.litFalse())))), $Box(st'#9))
                         else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                          $Box(Lit(st#0))))))
                   else (if M1.Expression.exprOr_q(Lit(expr#0))
                     then (var disj0'#2, st'#10 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                        $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                      (if M1.Expression.exprLiteral_q(disj0'#2)
                           && M1.Literal#Equal(M1.Expression.lit(disj0'#2), #M1.Literal.litTrue())
                         then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprLiteral(Lit(#M1.Literal.litTrue())))), $Box(st'#10))
                         else (if M1.Expression.exprLiteral_q(disj0'#2)
                             && M1.Literal#Equal(M1.Expression.lit(disj0'#2), #M1.Literal.litFalse())
                           then M1.__default.eval($LS($ly), Lit(M1.Expression.disj1(Lit(expr#0))), st'#10, Lit(env#0))
                           else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                            $Box(Lit(st#0))))))
                     else (if M1.Expression.exprInvocation_q(Lit(expr#0))
                       then (var fun'#2, st'#11 := $Unbox(M1.Tuple.fst(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                          $Unbox(M1.Tuple.snd(Lit(M1.__default.eval($LS($ly), Lit(M1.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType; 
                        (var args'#2, sts'#2 := $Unbox(M1.Tuple.fst(Lit(M1.__default.evalArgs($LS($ly), 
                                    Lit(expr#0), 
                                    Lit(M1.Expression.args(Lit(expr#0))), 
                                    Lit(st#0), 
                                    Lit(env#0))))): Seq, 
                            $Unbox(M1.Tuple.snd(Lit(M1.__default.evalArgs($LS($ly), 
                                    Lit(expr#0), 
                                    Lit(M1.Expression.args(Lit(expr#0))), 
                                    Lit(st#0), 
                                    Lit(env#0))))): Set; 
                          (var sts''#2 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(st'#11)), sts'#2); 
                            (if !M1.__default.Compatible(sts''#2)
                               then #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rCompatibility())))), 
                                $Box(Lit(st#0)))
                               else (var stCombined#2 := M1.__default.Combine($LS($LZ), sts''#2); 
                                (if M1.Expression.exprLiteral_q(fun'#2)
                                     && M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#2))
                                   then (if M1.Primitive.primExec_q(M1.Literal.prim(M1.Expression.lit(fun'#2)))
                                     then (if Seq#Length(args'#2) == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                         && M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), args'#2, stCombined#2)
                                       then (var ps#2 := M1.__default.exec(M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(0))): DatatypeType)), 
                                            M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(1))): DatatypeType)), 
                                            M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(2))): DatatypeType)), 
                                            stCombined#2); 
                                        #M1.Tuple.Pair($Box(#M1.Expression.exprLiteral(#M1.Literal.litArrOfPaths($Unbox(M1.Tuple.fst(ps#2)): Set))), 
                                          M1.Tuple.snd(ps#2)))
                                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                                        $Box(Lit(st#0))))
                                     else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                                      $Box(Lit(st#0))))
                                   else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                                    $Box(Lit(st#0)))))))))
                       else #M1.Tuple.Pair($Box(Lit(#M1.Expression.exprError(Lit(#M1.Reason.rValidity())))), 
                        $Box(Lit(st#0))))))))));
}

function M1.__default.eval#canCall(expr#0: DatatypeType, st#0: DatatypeType, env#0: Box) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box :: 
  { M1.__default.eval($LS($ly), expr#0, st#0, env#0) } 
  M1.__default.eval($LS($ly), expr#0, st#0, env#0)
     == M1.__default.eval($ly, expr#0, st#0, env#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box :: 
  { M1.__default.eval(AsFuelBottom($ly), expr#0, st#0, env#0) } 
  M1.__default.eval($ly, expr#0, st#0, env#0)
     == M1.__default.eval($LZ, expr#0, st#0, env#0));

function M1.__default.eval#requires(LayerType, DatatypeType, DatatypeType, Box) : bool;

// #requires axiom for M1.__default.eval
axiom (forall $ly: LayerType, expr#0: DatatypeType, st#0: DatatypeType, env#0: Box :: 
  { M1.__default.eval#requires($ly, expr#0, st#0, env#0) } 
  $Is(expr#0, Tclass.M1.Expression())
       && $Is(st#0, Tclass.M1.State())
       && $IsBox(env#0, Tclass.M1.Env())
     ==> M1.__default.eval#requires($ly, expr#0, st#0, env#0)
       == M1.__default.ValidEnv(env#0));

procedure {:verboseName "M1.eval (well-formedness)"} CheckWellformed$$M1.__default.eval(expr#0: DatatypeType where $Is(expr#0, Tclass.M1.Expression()), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()), 
    env#0: Box where $IsBox(env#0, Tclass.M1.Env()));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.evalArgs
function M1.__default.evalArgs($ly: LayerType, 
    context#0: DatatypeType, 
    args#0: Seq, 
    stOrig#0: DatatypeType, 
    env#0: Box)
   : DatatypeType
uses {
// consequence axiom for M1.__default.evalArgs
axiom 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      context#0: DatatypeType, 
      args#0: Seq, 
      stOrig#0: DatatypeType, 
      env#0: Box :: 
    { M1.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0) } 
    M1.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M1.Expression())
           && $Is(args#0, TSeq(Tclass.M1.Expression()))
           && $Is(stOrig#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.ValidEnv(env#0)
           && (forall arg#0: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#0)) } 
            $Is(arg#0, Tclass.M1.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#0))
               ==> DtRank(arg#0) < DtRank(context#0)))
       ==> $Is(M1.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0), 
        Tclass.M1.Tuple(TSeq(Tclass.M1.Expression()), TSet(Tclass.M1.State()))));
// alloc consequence axiom for M1.__default.evalArgs
axiom 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      $ly: LayerType, 
      context#0: DatatypeType, 
      args#0: Seq, 
      stOrig#0: DatatypeType, 
      env#0: Box :: 
    { $IsAlloc(M1.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0), 
        Tclass.M1.Tuple(TSeq(Tclass.M1.Expression()), TSet(Tclass.M1.State())), 
        $Heap) } 
    (M1.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
           || (5 < $FunctionContextHeight
             && 
            $Is(context#0, Tclass.M1.Expression())
             && $IsAlloc(context#0, Tclass.M1.Expression(), $Heap)
             && 
            $Is(args#0, TSeq(Tclass.M1.Expression()))
             && $IsAlloc(args#0, TSeq(Tclass.M1.Expression()), $Heap)
             && 
            $Is(stOrig#0, Tclass.M1.State())
             && $IsAlloc(stOrig#0, Tclass.M1.State(), $Heap)
             && 
            $IsBox(env#0, Tclass.M1.Env())
             && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap)
             && 
            M1.__default.ValidEnv(env#0)
             && (forall arg#0: DatatypeType :: 
              { Seq#Contains(args#0, $Box(arg#0)) } 
              $Is(arg#0, Tclass.M1.Expression())
                 ==> 
                Seq#Contains(args#0, $Box(arg#0))
                 ==> DtRank(arg#0) < DtRank(context#0))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M1.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0), 
        Tclass.M1.Tuple(TSeq(Tclass.M1.Expression()), TSet(Tclass.M1.State())), 
        $Heap));
// definition axiom for M1.__default.evalArgs (revealed)
axiom {:id "id853"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      context#0: DatatypeType, 
      args#0: Seq, 
      stOrig#0: DatatypeType, 
      env#0: Box :: 
    { M1.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0) } 
    M1.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M1.Expression())
           && $Is(args#0, TSeq(Tclass.M1.Expression()))
           && $Is(stOrig#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.ValidEnv(env#0)
           && (forall arg#1: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#1)) } 
            $Is(arg#1, Tclass.M1.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#1))
               ==> DtRank(arg#1) < DtRank(context#0)))
       ==> (!Seq#Equal(args#0, Seq#Empty(): Seq)
           ==> M1.__default.eval#canCall($Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0)
             && (var r#0 := M1.__default.eval($ly, $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0); 
              M1.__default.evalArgs#canCall(context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0)
                 && (var rr#0 := M1.__default.evalArgs($ly, context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0); 
                  M1.Tuple.Pair_q(r#0)
                     && M1.Tuple.Pair_q(rr#0)
                     && 
                    M1.Tuple.Pair_q(r#0)
                     && M1.Tuple.Pair_q(rr#0))))
         && M1.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0)
           == (if Seq#Equal(args#0, Seq#Empty(): Seq)
             then #M1.Tuple.Pair($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(Set#Empty(): Set)))
             else (var r#0 := M1.__default.eval($ly, $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0); 
              (var rr#0 := M1.__default.evalArgs($ly, context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0); 
                #M1.Tuple.Pair($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, M1.Tuple.fst(r#0)), $Unbox(M1.Tuple.fst(rr#0)): Seq)), 
                  $Box(Set#Union(Set#UnionOne(Set#Empty(): Set, M1.Tuple.snd(r#0)), 
                      $Unbox(M1.Tuple.snd(rr#0)): Set)))))));
// definition axiom for M1.__default.evalArgs for decreasing-related literals (revealed)
axiom {:id "id854"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      context#0: DatatypeType, 
      args#0: Seq, 
      stOrig#0: DatatypeType, 
      env#0: Box :: 
    {:weight 3} { M1.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), stOrig#0, env#0) } 
    M1.__default.evalArgs#canCall(Lit(context#0), Lit(args#0), stOrig#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M1.Expression())
           && $Is(args#0, TSeq(Tclass.M1.Expression()))
           && $Is(stOrig#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.ValidEnv(env#0)
           && (forall arg#2: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#2)) } 
            $Is(arg#2, Tclass.M1.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#2))
               ==> DtRank(arg#2) < DtRank(context#0)))
       ==> (!Seq#Equal(args#0, Seq#Empty(): Seq)
           ==> M1.__default.eval#canCall($Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, stOrig#0, env#0)
             && (var r#1 := M1.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  stOrig#0, 
                  env#0); 
              M1.__default.evalArgs#canCall(Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), stOrig#0, env#0)
                 && (var rr#1 := M1.__default.evalArgs($LS($ly), Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), stOrig#0, env#0); 
                  M1.Tuple.Pair_q(r#1)
                     && M1.Tuple.Pair_q(rr#1)
                     && 
                    M1.Tuple.Pair_q(r#1)
                     && M1.Tuple.Pair_q(rr#1))))
         && M1.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), stOrig#0, env#0)
           == (if Seq#Equal(args#0, Seq#Empty(): Seq)
             then #M1.Tuple.Pair($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(Set#Empty(): Set)))
             else (var r#1 := M1.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  stOrig#0, 
                  env#0); 
              (var rr#1 := M1.__default.evalArgs($LS($ly), Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), stOrig#0, env#0); 
                #M1.Tuple.Pair($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, M1.Tuple.fst(r#1)), $Unbox(M1.Tuple.fst(rr#1)): Seq)), 
                  $Box(Set#Union(Set#UnionOne(Set#Empty(): Set, M1.Tuple.snd(r#1)), 
                      $Unbox(M1.Tuple.snd(rr#1)): Set)))))));
// definition axiom for M1.__default.evalArgs for all literals (revealed)
axiom {:id "id855"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      context#0: DatatypeType, 
      args#0: Seq, 
      stOrig#0: DatatypeType, 
      env#0: Box :: 
    {:weight 3} { M1.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), Lit(stOrig#0), Lit(env#0)) } 
    M1.__default.evalArgs#canCall(Lit(context#0), Lit(args#0), Lit(stOrig#0), Lit(env#0))
         || (5 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M1.Expression())
           && $Is(args#0, TSeq(Tclass.M1.Expression()))
           && $Is(stOrig#0, Tclass.M1.State())
           && $IsBox(env#0, Tclass.M1.Env())
           && 
          M1.__default.ValidEnv(Lit(env#0))
           && (forall arg#3: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#3)) } 
            $Is(arg#3, Tclass.M1.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#3))
               ==> DtRank(arg#3) < DtRank(context#0)))
       ==> (!Seq#Equal(args#0, Seq#Empty(): Seq)
           ==> M1.__default.eval#canCall($Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
              Lit(stOrig#0), 
              Lit(env#0))
             && (var r#2 := M1.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  Lit(stOrig#0), 
                  Lit(env#0)); 
              M1.__default.evalArgs#canCall(Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), Lit(stOrig#0), Lit(env#0))
                 && (var rr#2 := Lit(M1.__default.evalArgs($LS($ly), 
                        Lit(context#0), 
                        Lit(Seq#Drop(Lit(args#0), LitInt(1))), 
                        Lit(stOrig#0), 
                        Lit(env#0))); 
                  M1.Tuple.Pair_q(r#2)
                     && M1.Tuple.Pair_q(rr#2)
                     && 
                    M1.Tuple.Pair_q(r#2)
                     && M1.Tuple.Pair_q(rr#2))))
         && M1.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), Lit(stOrig#0), Lit(env#0))
           == (if Seq#Equal(args#0, Seq#Empty(): Seq)
             then #M1.Tuple.Pair($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(Set#Empty(): Set)))
             else (var r#2 := M1.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  Lit(stOrig#0), 
                  Lit(env#0)); 
              (var rr#2 := Lit(M1.__default.evalArgs($LS($ly), 
                      Lit(context#0), 
                      Lit(Seq#Drop(Lit(args#0), LitInt(1))), 
                      Lit(stOrig#0), 
                      Lit(env#0))); 
                #M1.Tuple.Pair($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, M1.Tuple.fst(r#2)), $Unbox(M1.Tuple.fst(rr#2)): Seq)), 
                  $Box(Set#Union(Set#UnionOne(Set#Empty(): Set, M1.Tuple.snd(r#2)), 
                      $Unbox(M1.Tuple.snd(rr#2)): Set)))))));
}

function M1.__default.evalArgs#canCall(context#0: DatatypeType, args#0: Seq, stOrig#0: DatatypeType, env#0: Box) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, 
    context#0: DatatypeType, 
    args#0: Seq, 
    stOrig#0: DatatypeType, 
    env#0: Box :: 
  { M1.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0) } 
  M1.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0)
     == M1.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, 
    context#0: DatatypeType, 
    args#0: Seq, 
    stOrig#0: DatatypeType, 
    env#0: Box :: 
  { M1.__default.evalArgs(AsFuelBottom($ly), context#0, args#0, stOrig#0, env#0) } 
  M1.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0)
     == M1.__default.evalArgs($LZ, context#0, args#0, stOrig#0, env#0));

function M1.__default.evalArgs#requires(LayerType, DatatypeType, Seq, DatatypeType, Box) : bool;

// #requires axiom for M1.__default.evalArgs
axiom (forall $ly: LayerType, 
    context#0: DatatypeType, 
    args#0: Seq, 
    stOrig#0: DatatypeType, 
    env#0: Box :: 
  { M1.__default.evalArgs#requires($ly, context#0, args#0, stOrig#0, env#0) } 
  $Is(context#0, Tclass.M1.Expression())
       && $Is(args#0, TSeq(Tclass.M1.Expression()))
       && $Is(stOrig#0, Tclass.M1.State())
       && $IsBox(env#0, Tclass.M1.Env())
     ==> M1.__default.evalArgs#requires($ly, context#0, args#0, stOrig#0, env#0)
       == (M1.__default.ValidEnv(env#0)
         && (forall arg#1: DatatypeType :: 
          { Seq#Contains(args#0, $Box(arg#1)) } 
          $Is(arg#1, Tclass.M1.Expression())
             ==> 
            Seq#Contains(args#0, $Box(arg#1))
             ==> DtRank(arg#1) < DtRank(context#0))));

procedure {:verboseName "M1.evalArgs (well-formedness)"} CheckWellformed$$M1.__default.evalArgs(context#0: DatatypeType where $Is(context#0, Tclass.M1.Expression()), 
    args#0: Seq where $Is(args#0, TSeq(Tclass.M1.Expression())), 
    stOrig#0: DatatypeType where $Is(stOrig#0, Tclass.M1.State()), 
    env#0: Box where $IsBox(env#0, Tclass.M1.Env()));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.Arity
function M1.__default.Arity(prim#0: DatatypeType) : int
uses {
// consequence axiom for M1.__default.Arity
axiom 1 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType :: 
    { M1.__default.Arity(prim#0) } 
    M1.__default.Arity#canCall(prim#0)
         || (1 < $FunctionContextHeight && $Is(prim#0, Tclass.M1.Primitive()))
       ==> LitInt(0) <= M1.__default.Arity(prim#0));
// definition axiom for M1.__default.Arity (revealed)
axiom {:id "id872"} 1 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType :: 
    { M1.__default.Arity(prim#0) } 
    M1.__default.Arity#canCall(prim#0)
         || (1 < $FunctionContextHeight && $Is(prim#0, Tclass.M1.Primitive()))
       ==> M1.__default.Arity(prim#0)
         == (if M1.Primitive.primCreatePath_q(prim#0) then 1 else 3));
// definition axiom for M1.__default.Arity for all literals (revealed)
axiom {:id "id873"} 1 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType :: 
    {:weight 3} { M1.__default.Arity(Lit(prim#0)) } 
    M1.__default.Arity#canCall(Lit(prim#0))
         || (1 < $FunctionContextHeight && $Is(prim#0, Tclass.M1.Primitive()))
       ==> M1.__default.Arity(Lit(prim#0))
         == (if M1.Primitive.primCreatePath_q(Lit(prim#0)) then 1 else 3));
}

function M1.__default.Arity#canCall(prim#0: DatatypeType) : bool;

function M1.__default.Arity#requires(DatatypeType) : bool;

// #requires axiom for M1.__default.Arity
axiom (forall prim#0: DatatypeType :: 
  { M1.__default.Arity#requires(prim#0) } 
  $Is(prim#0, Tclass.M1.Primitive())
     ==> M1.__default.Arity#requires(prim#0) == true);

procedure {:verboseName "M1.Arity (well-formedness)"} CheckWellformed$$M1.__default.Arity(prim#0: DatatypeType where $Is(prim#0, Tclass.M1.Primitive()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M1._default.ValidArgs
function M1.__default.ValidArgs(prim#0: DatatypeType, args#0: Seq, st#0: DatatypeType) : bool
uses {
// definition axiom for M1.__default.ValidArgs (revealed)
axiom {:id "id878"} 4 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType, args#0: Seq, st#0: DatatypeType :: 
    { M1.__default.ValidArgs(prim#0, args#0, st#0) } 
    M1.__default.ValidArgs#canCall(prim#0, args#0, st#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(prim#0, Tclass.M1.Primitive())
           && $Is(args#0, TSeq(Tclass.M1.Expression()))
           && $Is(st#0, Tclass.M1.State())
           && 
          (M1.Primitive.primExec_q(prim#0) ==> Seq#Length(args#0) == LitInt(3))
           && (M1.Primitive.primCreatePath_q(prim#0) ==> Seq#Length(args#0) == LitInt(1)))
       ==> (!M1.Primitive.primCreatePath_q(prim#0)
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(args#0, LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(args#0, LitInt(2))): DatatypeType; 
            M1.Expression.exprLiteral_q(cmd#1)
               ==> 
              M1.Literal.litString_q(M1.Expression.lit(cmd#1))
               ==> 
              M1.Expression.exprLiteral_q(deps#1)
               ==> 
              M1.Literal.litArrOfPaths_q(M1.Expression.lit(deps#1))
               ==> 
              M1.Expression.exprLiteral_q(exps#1)
               ==> 
              M1.Literal.litArrOfStrings_q(M1.Expression.lit(exps#1))
               ==> M1.__default.DomSt#canCall(st#0)
                 && (Set#Subset(M1.Literal.paths(M1.Expression.lit(deps#1)), M1.__default.DomSt(st#0))
                   ==> M1.__default.Pre#canCall(M1.Literal.str(M1.Expression.lit(cmd#1)), 
                    M1.Literal.paths(M1.Expression.lit(deps#1)), 
                    M1.Literal.strs(M1.Expression.lit(exps#1)), 
                    st#0))))
         && M1.__default.ValidArgs(prim#0, args#0, st#0)
           == (if M1.Primitive.primCreatePath_q(prim#0)
             then false
             else (var cmd#0, deps#0, exps#0 := $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, 
                $Unbox(Seq#Index(args#0, LitInt(1))): DatatypeType, 
                $Unbox(Seq#Index(args#0, LitInt(2))): DatatypeType; 
              M1.Expression.exprLiteral_q(cmd#0)
                 && M1.Literal.litString_q(M1.Expression.lit(cmd#0))
                 && M1.Expression.exprLiteral_q(deps#0)
                 && M1.Literal.litArrOfPaths_q(M1.Expression.lit(deps#0))
                 && M1.Expression.exprLiteral_q(exps#0)
                 && M1.Literal.litArrOfStrings_q(M1.Expression.lit(exps#0))
                 && Set#Subset(M1.Literal.paths(M1.Expression.lit(deps#0)), M1.__default.DomSt(st#0))
                 && M1.__default.Pre(M1.Literal.str(M1.Expression.lit(cmd#0)), 
                  M1.Literal.paths(M1.Expression.lit(deps#0)), 
                  M1.Literal.strs(M1.Expression.lit(exps#0)), 
                  st#0))));
// definition axiom for M1.__default.ValidArgs for decreasing-related literals (revealed)
axiom {:id "id879"} 4 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType, args#0: Seq, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.ValidArgs(Lit(prim#0), Lit(args#0), st#0) } 
    M1.__default.ValidArgs#canCall(Lit(prim#0), Lit(args#0), st#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(prim#0, Tclass.M1.Primitive())
           && $Is(args#0, TSeq(Tclass.M1.Expression()))
           && $Is(st#0, Tclass.M1.State())
           && 
          (M1.Primitive.primExec_q(Lit(prim#0)) ==> Seq#Length(Lit(args#0)) == LitInt(3))
           && (M1.Primitive.primCreatePath_q(Lit(prim#0))
             ==> Seq#Length(Lit(args#0)) == LitInt(1)))
       ==> (!Lit(M1.Primitive.primCreatePath_q(Lit(prim#0)))
           ==> (var cmd#3, deps#3, exps#3 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
            M1.Expression.exprLiteral_q(cmd#3)
               ==> 
              M1.Literal.litString_q(M1.Expression.lit(cmd#3))
               ==> 
              M1.Expression.exprLiteral_q(deps#3)
               ==> 
              M1.Literal.litArrOfPaths_q(M1.Expression.lit(deps#3))
               ==> 
              M1.Expression.exprLiteral_q(exps#3)
               ==> 
              M1.Literal.litArrOfStrings_q(M1.Expression.lit(exps#3))
               ==> M1.__default.DomSt#canCall(st#0)
                 && (Set#Subset(M1.Literal.paths(M1.Expression.lit(deps#3)), M1.__default.DomSt(st#0))
                   ==> M1.__default.Pre#canCall(M1.Literal.str(M1.Expression.lit(cmd#3)), 
                    M1.Literal.paths(M1.Expression.lit(deps#3)), 
                    M1.Literal.strs(M1.Expression.lit(exps#3)), 
                    st#0))))
         && M1.__default.ValidArgs(Lit(prim#0), Lit(args#0), st#0)
           == (if M1.Primitive.primCreatePath_q(Lit(prim#0))
             then false
             else (var cmd#2, deps#2, exps#2 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
              M1.Expression.exprLiteral_q(cmd#2)
                 && M1.Literal.litString_q(M1.Expression.lit(cmd#2))
                 && M1.Expression.exprLiteral_q(deps#2)
                 && M1.Literal.litArrOfPaths_q(M1.Expression.lit(deps#2))
                 && M1.Expression.exprLiteral_q(exps#2)
                 && M1.Literal.litArrOfStrings_q(M1.Expression.lit(exps#2))
                 && Set#Subset(M1.Literal.paths(M1.Expression.lit(deps#2)), M1.__default.DomSt(st#0))
                 && M1.__default.Pre(M1.Literal.str(M1.Expression.lit(cmd#2)), 
                  M1.Literal.paths(M1.Expression.lit(deps#2)), 
                  M1.Literal.strs(M1.Expression.lit(exps#2)), 
                  st#0))));
// definition axiom for M1.__default.ValidArgs for all literals (revealed)
axiom {:id "id880"} 4 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType, args#0: Seq, st#0: DatatypeType :: 
    {:weight 3} { M1.__default.ValidArgs(Lit(prim#0), Lit(args#0), Lit(st#0)) } 
    M1.__default.ValidArgs#canCall(Lit(prim#0), Lit(args#0), Lit(st#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(prim#0, Tclass.M1.Primitive())
           && $Is(args#0, TSeq(Tclass.M1.Expression()))
           && $Is(st#0, Tclass.M1.State())
           && 
          (M1.Primitive.primExec_q(Lit(prim#0)) ==> Seq#Length(Lit(args#0)) == LitInt(3))
           && (M1.Primitive.primCreatePath_q(Lit(prim#0))
             ==> Seq#Length(Lit(args#0)) == LitInt(1)))
       ==> (!Lit(M1.Primitive.primCreatePath_q(Lit(prim#0)))
           ==> (var cmd#5, deps#5, exps#5 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
            M1.Expression.exprLiteral_q(cmd#5)
               ==> 
              M1.Literal.litString_q(M1.Expression.lit(cmd#5))
               ==> 
              M1.Expression.exprLiteral_q(deps#5)
               ==> 
              M1.Literal.litArrOfPaths_q(M1.Expression.lit(deps#5))
               ==> 
              M1.Expression.exprLiteral_q(exps#5)
               ==> 
              M1.Literal.litArrOfStrings_q(M1.Expression.lit(exps#5))
               ==> M1.__default.DomSt#canCall(Lit(st#0))
                 && (Set#Subset(M1.Literal.paths(M1.Expression.lit(deps#5)), M1.__default.DomSt(Lit(st#0)))
                   ==> M1.__default.Pre#canCall(M1.Literal.str(M1.Expression.lit(cmd#5)), 
                    M1.Literal.paths(M1.Expression.lit(deps#5)), 
                    M1.Literal.strs(M1.Expression.lit(exps#5)), 
                    Lit(st#0)))))
         && M1.__default.ValidArgs(Lit(prim#0), Lit(args#0), Lit(st#0))
           == (if M1.Primitive.primCreatePath_q(Lit(prim#0))
             then false
             else (var cmd#4, deps#4, exps#4 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
              M1.Expression.exprLiteral_q(cmd#4)
                 && M1.Literal.litString_q(M1.Expression.lit(cmd#4))
                 && M1.Expression.exprLiteral_q(deps#4)
                 && M1.Literal.litArrOfPaths_q(M1.Expression.lit(deps#4))
                 && M1.Expression.exprLiteral_q(exps#4)
                 && M1.Literal.litArrOfStrings_q(M1.Expression.lit(exps#4))
                 && Set#Subset(M1.Literal.paths(M1.Expression.lit(deps#4)), M1.__default.DomSt(Lit(st#0)))
                 && M1.__default.Pre(M1.Literal.str(M1.Expression.lit(cmd#4)), 
                  M1.Literal.paths(M1.Expression.lit(deps#4)), 
                  M1.Literal.strs(M1.Expression.lit(exps#4)), 
                  Lit(st#0)))));
}

function M1.__default.ValidArgs#canCall(prim#0: DatatypeType, args#0: Seq, st#0: DatatypeType) : bool;

function M1.__default.ValidArgs#requires(DatatypeType, Seq, DatatypeType) : bool;

// #requires axiom for M1.__default.ValidArgs
axiom (forall prim#0: DatatypeType, args#0: Seq, st#0: DatatypeType :: 
  { M1.__default.ValidArgs#requires(prim#0, args#0, st#0) } 
  $Is(prim#0, Tclass.M1.Primitive())
       && $Is(args#0, TSeq(Tclass.M1.Expression()))
       && $Is(st#0, Tclass.M1.State())
     ==> M1.__default.ValidArgs#requires(prim#0, args#0, st#0)
       == ((M1.Primitive.primExec_q(prim#0) ==> Seq#Length(args#0) == LitInt(3))
         && (M1.Primitive.primCreatePath_q(prim#0) ==> Seq#Length(args#0) == LitInt(1))));

procedure {:verboseName "M1.ValidArgs (well-formedness)"} CheckWellformed$$M1.__default.ValidArgs(prim#0: DatatypeType where $Is(prim#0, Tclass.M1.Primitive()), 
    args#0: Seq where $Is(args#0, TSeq(Tclass.M1.Expression())), 
    st#0: DatatypeType where $Is(st#0, Tclass.M1.State()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.ParallelBuildsTheorem (well-formedness)"} CheckWellFormed$$M1.__default.ParallelBuildsTheorem(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M1.Program())
         && $IsAlloc(prog#0, Tclass.M1.Program(), $Heap)
         && $IsA#M1.Program(prog#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0));
  free requires 9 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.ParallelBuildsTheorem (call)"} Call$$M1.__default.ParallelBuildsTheorem(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M1.Program())
         && $IsAlloc(prog#0, Tclass.M1.Program(), $Heap)
         && $IsA#M1.Program(prog#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0));
  // user-defined preconditions
  requires {:id "id915"} M1.__default.Legal#canCall(M1.Program.stmts(prog#0))
     ==> M1.__default.Legal(M1.Program.stmts(prog#0))
       || Seq#Length(M1.Program.stmts(prog#0)) != 0;
  requires {:id "id916"} M1.__default.ValidState#canCall(st#0)
     ==> M1.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M1.__default.WellFounded(p#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#0)
           ==> M1.__default.WellFounded(p#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.build#canCall(prog#0, st#0)
     && (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.build(prog#0, st#0))): DatatypeType, 
        $Unbox(M1.Tuple.snd(M1.__default.build(prog#0, st#0))): DatatypeType; 
      M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> 
          M1.Expression.exprError_q(expr'#0)
           ==> $IsA#M1.Reason(M1.Expression.r(expr'#0))));
  free ensures {:id "id917"} (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.build(prog#0, st#0))): DatatypeType, 
      $Unbox(M1.Tuple.snd(M1.__default.build(prog#0, st#0))): DatatypeType; 
    M1.__default.ValidState#canCall(st'#0)
       && 
      M1.__default.ValidState(st'#0)
       && (forall p#1: Box :: 
        { M1.__default.WellFounded(p#1) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#1) } 
        $IsBox(p#1, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st'#0), p#1)
           ==> M1.__default.WellFounded(p#1)));
  ensures {:id "id918"} (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.build(prog#0, st#0))): DatatypeType, 
      $Unbox(M1.Tuple.snd(M1.__default.build(prog#0, st#0))): DatatypeType; 
    M1.Expression.exprError_q(expr'#0)
       ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M1.ParallelBuildsTheorem (correctness)"} Impl$$M1.__default.ParallelBuildsTheorem(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M1.Program())
         && $IsAlloc(prog#0, Tclass.M1.Program(), $Heap)
         && $IsA#M1.Program(prog#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0))
   returns ($_reverifyPost: bool);
  free requires 9 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id919"} M1.__default.Legal#canCall(M1.Program.stmts(prog#0))
     && 
    M1.__default.Legal(M1.Program.stmts(prog#0))
     && Seq#Length(M1.Program.stmts(prog#0)) != 0;
  free requires {:id "id920"} M1.__default.ValidState#canCall(st#0)
     && 
    M1.__default.ValidState(st#0)
     && (forall p#2: Box :: 
      { M1.__default.WellFounded(p#2) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st#0), p#2)
         ==> M1.__default.WellFounded(p#2));
  modifies $Heap;
  // user-defined postconditions
  free ensures M1.__default.build#canCall(prog#0, st#0)
     && (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.build(prog#0, st#0))): DatatypeType, 
        $Unbox(M1.Tuple.snd(M1.__default.build(prog#0, st#0))): DatatypeType; 
      M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> 
          M1.Expression.exprError_q(expr'#0)
           ==> $IsA#M1.Reason(M1.Expression.r(expr'#0))));
  ensures {:id "id921"} $_reverifyPost
     ==> (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.build(prog#0, st#0))): DatatypeType, 
        $Unbox(M1.Tuple.snd(M1.__default.build(prog#0, st#0))): DatatypeType; 
      M1.__default.ValidState#canCall(st'#0)
         ==> M1.__default.ValidState(st'#0)
           || (forall p#3: Box :: 
            { M1.__default.WellFounded(p#3) } 
              { Set#IsMember(M1.__default.DomSt(st'#0), p#3) } 
            $IsBox(p#3, Tclass.M1.Path())
               ==> 
              Set#IsMember(M1.__default.DomSt(st'#0), p#3)
               ==> M1.__default.WellFounded(p#3)));
  ensures {:id "id922"} $_reverifyPost
     ==> (var expr'#0, st'#0 := $Unbox(M1.Tuple.fst(M1.__default.build(prog#0, st#0))): DatatypeType, 
        $Unbox(M1.Tuple.snd(M1.__default.build(prog#0, st#0))): DatatypeType; 
      M1.Expression.exprError_q(expr'#0)
         ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.ParallelBuildsTheorem (correctness)"} Impl$$M1.__default.ParallelBuildsTheorem(prog#0: DatatypeType, st#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _v0#0: DatatypeType
     where $Is(_v0#0, Tclass.M1.Expression())
       && $IsAlloc(_v0#0, Tclass.M1.Expression(), $Heap);
  var _v1#0: DatatypeType
     where $Is(_v1#0, Tclass.M1.State()) && $IsAlloc(_v1#0, Tclass.M1.State(), $Heap);
  var $rhs##0: DatatypeType;
  var $rhs##1: DatatypeType;
  var prog##0: DatatypeType;
  var st##0: DatatypeType;

    // AddMethodImpl: ParallelBuildsTheorem, Impl$$M1.__default.ParallelBuildsTheorem
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](312,27)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Expression
    // TrCallStmt: Adding lhs with type State
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    prog##0 := prog#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    st##0 := st#0;
    call {:id "id923"} $rhs##0, $rhs##1 := Call$$M1.__default.BuildLemma(prog##0, st##0);
    // TrCallStmt: After ProcessCallStmt
    _v0#0 := $rhs##0;
    _v1#0 := $rhs##1;
}



procedure {:verboseName "M1.BuildLemma (well-formedness)"} CheckWellFormed$$M1.__default.BuildLemma(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M1.Program())
         && $IsAlloc(prog#0, Tclass.M1.Program(), $Heap)
         && $IsA#M1.Program(prog#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.BuildLemma (call)"} Call$$M1.__default.BuildLemma(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M1.Program())
         && $IsAlloc(prog#0, Tclass.M1.Program(), $Heap)
         && $IsA#M1.Program(prog#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap));
  // user-defined preconditions
  requires {:id "id933"} M1.__default.Legal#canCall(M1.Program.stmts(prog#0))
     ==> M1.__default.Legal(M1.Program.stmts(prog#0))
       || Seq#Length(M1.Program.stmts(prog#0)) != 0;
  requires {:id "id934"} M1.__default.ValidState#canCall(st#0)
     ==> M1.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M1.__default.WellFounded(p#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#0)
           ==> M1.__default.WellFounded(p#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.build(prog#0, st#0))
     && M1.__default.build#canCall(prog#0, st#0)
     && (M1.Tuple#Equal(M1.__default.build(prog#0, st#0), #M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)))
       ==> M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> M1.__default.Extends#canCall(st#0, st'#0)
             && (M1.__default.Extends(st#0, st'#0)
               ==> 
              M1.Expression.exprError_q(expr'#0)
               ==> $IsA#M1.Reason(M1.Expression.r(expr'#0)))));
  ensures {:id "id935"} M1.Tuple#Equal(M1.__default.build(prog#0, st#0), #M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)));
  free ensures {:id "id936"} M1.__default.ValidState#canCall(st'#0)
     && 
    M1.__default.ValidState(st'#0)
     && (forall p#1: Box :: 
      { M1.__default.WellFounded(p#1) } 
        { Set#IsMember(M1.__default.DomSt(st'#0), p#1) } 
      $IsBox(p#1, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st'#0), p#1)
         ==> M1.__default.WellFounded(p#1));
  free ensures {:id "id937"} M1.__default.Extends#canCall(st#0, st'#0)
     && 
    M1.__default.Extends(st#0, st'#0)
     && 
    Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0))
     && (forall p#2: Box :: 
      { M1.__default.GetSt(p#2, st#0) } 
        { M1.__default.GetSt(p#2, st'#0) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st#0), p#2)
         ==> M1.__default.GetSt(p#2, st'#0) == M1.__default.GetSt(p#2, st#0))
     && (forall p#3: Box :: 
      { M1.__default.Oracle(p#3, st#0) } 
        { M1.__default.GetSt(p#3, st'#0) } 
        { Set#IsMember(M1.__default.DomSt(st'#0), p#3) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
      $IsBox(p#3, Tclass.M1.Path())
         ==> 
        !Set#IsMember(M1.__default.DomSt(st#0), p#3)
           && Set#IsMember(M1.__default.DomSt(st'#0), p#3)
         ==> M1.__default.GetSt(p#3, st'#0) == M1.__default.Oracle(p#3, st#0));
  ensures {:id "id938"} M1.Expression.exprError_q(expr'#0)
     ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M1.BuildLemma (correctness)"} Impl$$M1.__default.BuildLemma(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M1.Program())
         && $IsAlloc(prog#0, Tclass.M1.Program(), $Heap)
         && $IsA#M1.Program(prog#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap), 
    $_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id939"} M1.__default.Legal#canCall(M1.Program.stmts(prog#0))
     && 
    M1.__default.Legal(M1.Program.stmts(prog#0))
     && Seq#Length(M1.Program.stmts(prog#0)) != 0;
  free requires {:id "id940"} M1.__default.ValidState#canCall(st#0)
     && 
    M1.__default.ValidState(st#0)
     && (forall p#4: Box :: 
      { M1.__default.WellFounded(p#4) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#4) } 
      $IsBox(p#4, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st#0), p#4)
         ==> M1.__default.WellFounded(p#4));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.build(prog#0, st#0))
     && M1.__default.build#canCall(prog#0, st#0)
     && (M1.Tuple#Equal(M1.__default.build(prog#0, st#0), #M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)))
       ==> M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> M1.__default.Extends#canCall(st#0, st'#0)
             && (M1.__default.Extends(st#0, st'#0)
               ==> 
              M1.Expression.exprError_q(expr'#0)
               ==> $IsA#M1.Reason(M1.Expression.r(expr'#0)))));
  ensures {:id "id941"} $_reverifyPost
     ==> M1.Tuple#Equal(M1.__default.build(prog#0, st#0), #M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)));
  ensures {:id "id942"} $_reverifyPost
     ==> 
    M1.__default.ValidState#canCall(st'#0)
     ==> M1.__default.ValidState(st'#0)
       || (forall p#5: Box :: 
        { M1.__default.WellFounded(p#5) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#5) } 
        $IsBox(p#5, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st'#0), p#5)
           ==> M1.__default.WellFounded(p#5));
  ensures {:id "id943"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0));
  ensures {:id "id944"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || (forall p#6: Box :: 
        { M1.__default.GetSt(p#6, st#0) } 
          { M1.__default.GetSt(p#6, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#6) } 
        $IsBox(p#6, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#6)
           ==> M1.__default.GetSt(p#6, st'#0) == M1.__default.GetSt(p#6, st#0));
  ensures {:id "id945"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || (forall p#7: Box :: 
        { M1.__default.Oracle(p#7, st#0) } 
          { M1.__default.GetSt(p#7, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#7) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#7) } 
        $IsBox(p#7, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st#0), p#7)
             && Set#IsMember(M1.__default.DomSt(st'#0), p#7)
           ==> M1.__default.GetSt(p#7, st'#0) == M1.__default.Oracle(p#7, st#0));
  ensures {:id "id946"} $_reverifyPost
     ==> 
    M1.Expression.exprError_q(expr'#0)
     ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.BuildLemma (correctness)"} Impl$$M1.__default.BuildLemma(prog#0: DatatypeType, st#0: DatatypeType)
   returns (expr'#0: DatatypeType, st'#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var result#0: DatatypeType
     where $Is(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()))
       && $IsAlloc(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), $Heap);
  var ##prog#1: DatatypeType;
  var ##st#4: DatatypeType;
  var $rhs#0: DatatypeType;
  var $rhs#1: DatatypeType;
  var _v2#0: DatatypeType
     where $Is(_v2#0, Tclass.M1.Expression())
       && $IsAlloc(_v2#0, Tclass.M1.Expression(), $Heap);
  var _v3#0: DatatypeType
     where $Is(_v3#0, Tclass.M1.State()) && $IsAlloc(_v3#0, Tclass.M1.State(), $Heap);
  var $rhs##0: DatatypeType;
  var $rhs##1: DatatypeType;
  var stmts##0: Seq;
  var st##0: DatatypeType;
  var env##0: Box;

    // AddMethodImpl: BuildLemma, Impl$$M1.__default.BuildLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(323,16)
    assume true;
    ##prog#1 := prog#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##prog#1, Tclass.M1.Program(), $Heap);
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#4, Tclass.M1.State(), $Heap);
    assume true;
    assume M1.__default.Legal(M1.Program.stmts(##prog#1));
    assume M1.__default.build#canCall(prog#0, st#0);
    assume M1.Tuple.Pair_q(M1.__default.build(prog#0, st#0));
    assume M1.__default.build#canCall(prog#0, st#0);
    result#0 := M1.__default.build(prog#0, st#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(324,16)
    assume true;
    assume true;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#0 := $Unbox(M1.Tuple.fst(result#0)): DatatypeType;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#1 := $Unbox(M1.Tuple.snd(result#0)): DatatypeType;
    expr'#0 := $rhs#0;
    st'#0 := $rhs#1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](325,24)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Expression
    // TrCallStmt: Adding lhs with type State
    // TrCallStmt: Before ProcessCallStmt
    assume M1.Program.Program_q(prog#0);
    assume M1.Program.Program_q(prog#0);
    // ProcessCallStmt: CheckSubrange
    stmts##0 := M1.Program.stmts(prog#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    st##0 := st#0;
    assume M1.__default.EmptyEnv#canCall();
    assume M1.__default.EmptyEnv#canCall();
    // ProcessCallStmt: CheckSubrange
    env##0 := M1.__default.EmptyEnv();
    call {:id "id952"} $rhs##0, $rhs##1 := Call$$M1.__default.DoLemma(stmts##0, st##0, env##0);
    // TrCallStmt: After ProcessCallStmt
    _v2#0 := $rhs##0;
    _v3#0 := $rhs##1;
}



procedure {:verboseName "M1.DoLemma (well-formedness)"} CheckWellFormed$$M1.__default.DoLemma(stmts#0: Seq
       where $Is(stmts#0, TSeq(Tclass.M1.Statement()))
         && $IsAlloc(stmts#0, TSeq(Tclass.M1.Statement()), $Heap), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.DoLemma (call)"} Call$$M1.__default.DoLemma(stmts#0: Seq
       where $Is(stmts#0, TSeq(Tclass.M1.Statement()))
         && $IsAlloc(stmts#0, TSeq(Tclass.M1.Statement()), $Heap), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap));
  // user-defined preconditions
  requires {:id "id963"} M1.__default.Legal#canCall(stmts#0)
     ==> M1.__default.Legal(stmts#0) || Seq#Length(stmts#0) != 0;
  requires {:id "id964"} M1.__default.ValidState#canCall(st#0)
     ==> M1.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M1.__default.WellFounded(p#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#0)
           ==> M1.__default.WellFounded(p#0));
  requires {:id "id965"} M1.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.do($LS($LZ), stmts#0, st#0, env#0))
     && M1.__default.do#canCall(stmts#0, st#0, env#0)
     && (M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
        M1.__default.do($LS($LZ), stmts#0, st#0, env#0))
       ==> M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> M1.__default.Extends#canCall(st#0, st'#0)
             && (M1.__default.Extends(st#0, st'#0)
               ==> 
              M1.Expression.exprError_q(expr'#0)
               ==> $IsA#M1.Reason(M1.Expression.r(expr'#0)))));
  ensures {:id "id966"} M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
    M1.__default.do($LS($LS($LZ)), stmts#0, st#0, env#0));
  free ensures {:id "id967"} M1.__default.ValidState#canCall(st'#0)
     && 
    M1.__default.ValidState(st'#0)
     && (forall p#1: Box :: 
      { M1.__default.WellFounded(p#1) } 
        { Set#IsMember(M1.__default.DomSt(st'#0), p#1) } 
      $IsBox(p#1, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st'#0), p#1)
         ==> M1.__default.WellFounded(p#1));
  free ensures {:id "id968"} M1.__default.Extends#canCall(st#0, st'#0)
     && 
    M1.__default.Extends(st#0, st'#0)
     && 
    Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0))
     && (forall p#2: Box :: 
      { M1.__default.GetSt(p#2, st#0) } 
        { M1.__default.GetSt(p#2, st'#0) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st#0), p#2)
         ==> M1.__default.GetSt(p#2, st'#0) == M1.__default.GetSt(p#2, st#0))
     && (forall p#3: Box :: 
      { M1.__default.Oracle(p#3, st#0) } 
        { M1.__default.GetSt(p#3, st'#0) } 
        { Set#IsMember(M1.__default.DomSt(st'#0), p#3) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
      $IsBox(p#3, Tclass.M1.Path())
         ==> 
        !Set#IsMember(M1.__default.DomSt(st#0), p#3)
           && Set#IsMember(M1.__default.DomSt(st'#0), p#3)
         ==> M1.__default.GetSt(p#3, st'#0) == M1.__default.Oracle(p#3, st#0));
  ensures {:id "id969"} M1.Expression.exprError_q(expr'#0)
     ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M1.DoLemma (correctness)"} Impl$$M1.__default.DoLemma(stmts#0: Seq
       where $Is(stmts#0, TSeq(Tclass.M1.Statement()))
         && $IsAlloc(stmts#0, TSeq(Tclass.M1.Statement()), $Heap), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap), 
    $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id970"} M1.__default.Legal#canCall(stmts#0)
     && 
    M1.__default.Legal(stmts#0)
     && Seq#Length(stmts#0) != 0;
  free requires {:id "id971"} M1.__default.ValidState#canCall(st#0)
     && 
    M1.__default.ValidState(st#0)
     && (forall p#4: Box :: 
      { M1.__default.WellFounded(p#4) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#4) } 
      $IsBox(p#4, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st#0), p#4)
         ==> M1.__default.WellFounded(p#4));
  requires {:id "id972"} M1.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.do($LS($LZ), stmts#0, st#0, env#0))
     && M1.__default.do#canCall(stmts#0, st#0, env#0)
     && (M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
        M1.__default.do($LS($LZ), stmts#0, st#0, env#0))
       ==> M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> M1.__default.Extends#canCall(st#0, st'#0)
             && (M1.__default.Extends(st#0, st'#0)
               ==> 
              M1.Expression.exprError_q(expr'#0)
               ==> $IsA#M1.Reason(M1.Expression.r(expr'#0)))));
  ensures {:id "id973"} $_reverifyPost
     ==> M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
      M1.__default.do($LS($LS($LZ)), stmts#0, st#0, env#0));
  ensures {:id "id974"} $_reverifyPost
     ==> 
    M1.__default.ValidState#canCall(st'#0)
     ==> M1.__default.ValidState(st'#0)
       || (forall p#5: Box :: 
        { M1.__default.WellFounded(p#5) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#5) } 
        $IsBox(p#5, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st'#0), p#5)
           ==> M1.__default.WellFounded(p#5));
  ensures {:id "id975"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0));
  ensures {:id "id976"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || (forall p#6: Box :: 
        { M1.__default.GetSt(p#6, st#0) } 
          { M1.__default.GetSt(p#6, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#6) } 
        $IsBox(p#6, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#6)
           ==> M1.__default.GetSt(p#6, st'#0) == M1.__default.GetSt(p#6, st#0));
  ensures {:id "id977"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || (forall p#7: Box :: 
        { M1.__default.Oracle(p#7, st#0) } 
          { M1.__default.GetSt(p#7, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#7) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#7) } 
        $IsBox(p#7, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st#0), p#7)
             && Set#IsMember(M1.__default.DomSt(st'#0), p#7)
           ==> M1.__default.GetSt(p#7, st'#0) == M1.__default.Oracle(p#7, st#0));
  ensures {:id "id978"} $_reverifyPost
     ==> 
    M1.Expression.exprError_q(expr'#0)
     ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.DoLemma (correctness)"} Impl$$M1.__default.DoLemma(stmts#0: Seq, st#0: DatatypeType, env#0: Box)
   returns (expr'#0: DatatypeType, st'#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var result#0: DatatypeType
     where $Is(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()))
       && $IsAlloc(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), $Heap);
  var ##stmts#2: Seq;
  var ##st#4: DatatypeType;
  var ##env#2: Box;
  var $rhs#0: DatatypeType;
  var $rhs#1: DatatypeType;
  var defass#stmt#0: bool;
  var stmt#0: DatatypeType
     where defass#stmt#0
       ==> $Is(stmt#0, Tclass.M1.Statement())
         && $IsAlloc(stmt#0, Tclass.M1.Statement(), $Heap);
  var expr'#0_0: DatatypeType
     where $Is(expr'#0_0, Tclass.M1.Expression())
       && $IsAlloc(expr'#0_0, Tclass.M1.Expression(), $Heap);
  var st'#0_0: DatatypeType
     where $Is(st'#0_0, Tclass.M1.State()) && $IsAlloc(st'#0_0, Tclass.M1.State(), $Heap);
  var $rhs##0_0: DatatypeType;
  var $rhs##0_1: DatatypeType;
  var expr##0_0: DatatypeType;
  var st##0_0: DatatypeType;
  var env##0_0: Box;
  var ##expr#0_0: DatatypeType;
  var defass#env'#0_0_0: bool;
  var env'#0_0_0: Box
     where defass#env'#0_0_0
       ==> $IsBox(env'#0_0_0, Tclass.M1.Env())
         && $IsAllocBox(env'#0_0_0, Tclass.M1.Env(), $Heap);
  var ##id#0_0_0: Box;
  var ##expr#0_0_0: DatatypeType;
  var ##env#0_0_0: Box;
  var ##stmts#0_0_0: Seq;
  var _v4#0_0_0_0: DatatypeType
     where $Is(_v4#0_0_0_0, Tclass.M1.Expression())
       && $IsAlloc(_v4#0_0_0_0, Tclass.M1.Expression(), $Heap);
  var st''#0_0_0_0: DatatypeType
     where $Is(st''#0_0_0_0, Tclass.M1.State())
       && $IsAlloc(st''#0_0_0_0, Tclass.M1.State(), $Heap);
  var $rhs##0_0_0_0: DatatypeType;
  var $rhs##0_0_0_1: DatatypeType;
  var stmts##0_0_0_0: Seq;
  var st##0_0_0_0: DatatypeType;
  var env##0_0_0_0: Box;
  var st0##0_0_0_0: DatatypeType;
  var st1##0_0_0_0: DatatypeType;
  var st2##0_0_0_0: DatatypeType;
  var _v5#1_0: DatatypeType
     where $Is(_v5#1_0, Tclass.M1.Expression())
       && $IsAlloc(_v5#1_0, Tclass.M1.Expression(), $Heap);
  var _v6#1_0: DatatypeType
     where $Is(_v6#1_0, Tclass.M1.State()) && $IsAlloc(_v6#1_0, Tclass.M1.State(), $Heap);
  var $rhs##1_0: DatatypeType;
  var $rhs##1_1: DatatypeType;
  var expr##1_0: DatatypeType;
  var st##1_0: DatatypeType;
  var env##1_0: Box;

    // AddMethodImpl: DoLemma, Impl$$M1.__default.DoLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(336,16)
    assume true;
    ##stmts#2 := stmts#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#2, TSeq(Tclass.M1.Statement()), $Heap);
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#4, Tclass.M1.State(), $Heap);
    ##env#2 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#2, Tclass.M1.Env(), $Heap);
    assume true;
    assume true;
    assume M1.__default.Legal(##stmts#2) && M1.__default.ValidEnv(##env#2);
    assume M1.__default.do#canCall(stmts#0, st#0, env#0);
    assume M1.Tuple.Pair_q(M1.__default.do($LS($LZ), stmts#0, st#0, env#0));
    assume M1.__default.do#canCall(stmts#0, st#0, env#0);
    result#0 := M1.__default.do($LS($LZ), stmts#0, st#0, env#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(337,16)
    assume true;
    assume true;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#0 := $Unbox(M1.Tuple.fst(result#0)): DatatypeType;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#1 := $Unbox(M1.Tuple.snd(result#0)): DatatypeType;
    expr'#0 := $rhs#0;
    st'#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(338,14)
    assume true;
    assume {:id "id984"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(stmts#0);
    assume true;
    stmt#0 := $Unbox(Seq#Index(stmts#0, LitInt(0))): DatatypeType;
    defass#stmt#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](339,5)
    assume {:id "id986"} defass#stmt#0;
    assume true;
    if (M1.Statement.stmtVariable_q(stmt#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](340,34)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Expression
        // TrCallStmt: Adding lhs with type State
        // TrCallStmt: Before ProcessCallStmt
        assume {:id "id987"} defass#stmt#0;
        assume {:id "id988"} M1.Statement.stmtVariable_q(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        expr##0_0 := M1.Statement.expr(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##0_0 := env#0;
        call {:id "id989"} $rhs##0_0, $rhs##0_1 := Call$$M1.__default.EvalLemma(expr##0_0, st##0_0, env##0_0);
        // TrCallStmt: After ProcessCallStmt
        expr'#0_0 := $rhs##0_0;
        st'#0_0 := $rhs##0_1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](341,7)
        ##expr#0_0 := expr'#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##expr#0_0, Tclass.M1.Expression(), $Heap);
        assume M1.__default.Value#canCall(expr'#0_0);
        assume M1.__default.Value#canCall(expr'#0_0);
        if (M1.__default.Value(expr'#0_0))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(342,18)
            assume true;
            assume {:id "id992"} defass#stmt#0;
            assume {:id "id993"} M1.Statement.stmtVariable_q(stmt#0);
            ##id#0_0_0 := M1.Statement.id(stmt#0);
            // assume allocatedness for argument to function
            assume $IsAllocBox(##id#0_0_0, Tclass.M1.Identifier(), $Heap);
            ##expr#0_0_0 := expr'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##expr#0_0_0, Tclass.M1.Expression(), $Heap);
            ##env#0_0_0 := env#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##env#0_0_0, Tclass.M1.Env(), $Heap);
            assume true;
            assume true;
            assume M1.__default.ValidEnv(##env#0_0_0) && M1.__default.Value(##expr#0_0_0);
            assume M1.__default.SetEnv#canCall(M1.Statement.id(stmt#0), expr'#0_0, env#0);
            assume M1.__default.SetEnv#canCall(M1.Statement.id(stmt#0), expr'#0_0, env#0);
            env'#0_0_0 := M1.__default.SetEnv(M1.Statement.id(stmt#0), expr'#0_0, env#0);
            defass#env'#0_0_0 := true;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](343,9)
            assume {:id "id995"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(stmts#0);
            ##stmts#0_0_0 := Seq#Drop(stmts#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stmts#0_0_0, TSeq(Tclass.M1.Statement()), $Heap);
            assume M1.__default.Legal#canCall(Seq#Drop(stmts#0, LitInt(1)));
            assume M1.__default.Legal#canCall(Seq#Drop(stmts#0, LitInt(1)));
            if (M1.__default.Legal(Seq#Drop(stmts#0, LitInt(1))))
            {
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](344,33)
                assume true;
                assume true;
                // TrCallStmt: Adding lhs with type Expression
                // TrCallStmt: Adding lhs with type State
                // TrCallStmt: Before ProcessCallStmt
                assume {:id "id996"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(stmts#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                stmts##0_0_0_0 := Seq#Drop(stmts#0, LitInt(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##0_0_0_0 := st'#0_0;
                assume {:id "id997"} defass#env'#0_0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                env##0_0_0_0 := env'#0_0_0;
                assume {:id "id998"} Seq#Rank(stmts##0_0_0_0) < Seq#Rank(stmts#0);
                call {:id "id999"} $rhs##0_0_0_0, $rhs##0_0_0_1 := Call$$M1.__default.DoLemma(stmts##0_0_0_0, st##0_0_0_0, env##0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                _v4#0_0_0_0 := $rhs##0_0_0_0;
                st''#0_0_0_0 := $rhs##0_0_0_1;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](345,34)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                st0##0_0_0_0 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                st1##0_0_0_0 := st'#0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                st2##0_0_0_0 := st''#0_0_0_0;
                call {:id "id1002"} Call$$M1.__default.Lemma__ExtendsTransitive(st0##0_0_0_0, st1##0_0_0_0, st2##0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
            }
            else
            {
            }
        }
        else
        {
        }
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](350,7)
        assume {:id "id1003"} defass#stmt#0;
        if (!M1.Statement.stmtVariable_q(stmt#0))
        {
            assume {:id "id1004"} defass#stmt#0;
        }

        assume true;
        assume {:id "id1005"} M1.Statement.stmtVariable_q(stmt#0) || M1.Statement.stmtReturn_q(stmt#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](351,28)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Expression
        // TrCallStmt: Adding lhs with type State
        // TrCallStmt: Before ProcessCallStmt
        assume {:id "id1006"} defass#stmt#0;
        assume {:id "id1007"} M1.Statement.stmtReturn_q(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        expr##1_0 := M1.Statement.ret(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##1_0 := env#0;
        call {:id "id1008"} $rhs##1_0, $rhs##1_1 := Call$$M1.__default.EvalLemma(expr##1_0, st##1_0, env##1_0);
        // TrCallStmt: After ProcessCallStmt
        _v5#1_0 := $rhs##1_0;
        _v6#1_0 := $rhs##1_1;
    }
}



procedure {:verboseName "M1.EvalLemma (well-formedness)"} CheckWellFormed$$M1.__default.EvalLemma(expr#0: DatatypeType
       where $Is(expr#0, Tclass.M1.Expression())
         && $IsAlloc(expr#0, Tclass.M1.Expression(), $Heap)
         && $IsA#M1.Expression(expr#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.EvalLemma (call)"} Call$$M1.__default.EvalLemma(expr#0: DatatypeType
       where $Is(expr#0, Tclass.M1.Expression())
         && $IsAlloc(expr#0, Tclass.M1.Expression(), $Heap)
         && $IsA#M1.Expression(expr#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap));
  // user-defined preconditions
  requires {:id "id1018"} M1.__default.ValidState#canCall(st#0)
     ==> M1.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M1.__default.WellFounded(p#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#0)
           ==> M1.__default.WellFounded(p#0));
  requires {:id "id1019"} M1.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.eval($LS($LZ), expr#0, st#0, env#0))
     && M1.__default.eval#canCall(expr#0, st#0, env#0)
     && (M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
        M1.__default.eval($LS($LZ), expr#0, st#0, env#0))
       ==> M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> M1.__default.Extends#canCall(st#0, st'#0)
             && (M1.__default.Extends(st#0, st'#0)
               ==> 
              M1.Expression.exprError_q(expr'#0)
               ==> $IsA#M1.Reason(M1.Expression.r(expr'#0)))));
  ensures {:id "id1020"} M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
    M1.__default.eval($LS($LS($LZ)), expr#0, st#0, env#0));
  free ensures {:id "id1021"} M1.__default.ValidState#canCall(st'#0)
     && 
    M1.__default.ValidState(st'#0)
     && (forall p#1: Box :: 
      { M1.__default.WellFounded(p#1) } 
        { Set#IsMember(M1.__default.DomSt(st'#0), p#1) } 
      $IsBox(p#1, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st'#0), p#1)
         ==> M1.__default.WellFounded(p#1));
  free ensures {:id "id1022"} M1.__default.Extends#canCall(st#0, st'#0)
     && 
    M1.__default.Extends(st#0, st'#0)
     && 
    Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0))
     && (forall p#2: Box :: 
      { M1.__default.GetSt(p#2, st#0) } 
        { M1.__default.GetSt(p#2, st'#0) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st#0), p#2)
         ==> M1.__default.GetSt(p#2, st'#0) == M1.__default.GetSt(p#2, st#0))
     && (forall p#3: Box :: 
      { M1.__default.Oracle(p#3, st#0) } 
        { M1.__default.GetSt(p#3, st'#0) } 
        { Set#IsMember(M1.__default.DomSt(st'#0), p#3) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#3) } 
      $IsBox(p#3, Tclass.M1.Path())
         ==> 
        !Set#IsMember(M1.__default.DomSt(st#0), p#3)
           && Set#IsMember(M1.__default.DomSt(st'#0), p#3)
         ==> M1.__default.GetSt(p#3, st'#0) == M1.__default.Oracle(p#3, st#0));
  ensures {:id "id1023"} M1.Expression.exprError_q(expr'#0)
     ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M1.EvalLemma (correctness)"} Impl$$M1.__default.EvalLemma(expr#0: DatatypeType
       where $Is(expr#0, Tclass.M1.Expression())
         && $IsAlloc(expr#0, Tclass.M1.Expression(), $Heap)
         && $IsA#M1.Expression(expr#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.M1.State())
         && $IsAlloc(st#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(st#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M1.Expression())
         && $IsAlloc(expr'#0, Tclass.M1.Expression(), $Heap), 
    st'#0: DatatypeType
       where $Is(st'#0, Tclass.M1.State()) && $IsAlloc(st'#0, Tclass.M1.State(), $Heap), 
    $_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1024"} M1.__default.ValidState#canCall(st#0)
     && 
    M1.__default.ValidState(st#0)
     && (forall p#4: Box :: 
      { M1.__default.WellFounded(p#4) } 
        { Set#IsMember(M1.__default.DomSt(st#0), p#4) } 
      $IsBox(p#4, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(st#0), p#4)
         ==> M1.__default.WellFounded(p#4));
  requires {:id "id1025"} M1.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.eval($LS($LZ), expr#0, st#0, env#0))
     && M1.__default.eval#canCall(expr#0, st#0, env#0)
     && (M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
        M1.__default.eval($LS($LZ), expr#0, st#0, env#0))
       ==> M1.__default.ValidState#canCall(st'#0)
         && (M1.__default.ValidState(st'#0)
           ==> M1.__default.Extends#canCall(st#0, st'#0)
             && (M1.__default.Extends(st#0, st'#0)
               ==> 
              M1.Expression.exprError_q(expr'#0)
               ==> $IsA#M1.Reason(M1.Expression.r(expr'#0)))));
  ensures {:id "id1026"} $_reverifyPost
     ==> M1.Tuple#Equal(#M1.Tuple.Pair($Box(expr'#0), $Box(st'#0)), 
      M1.__default.eval($LS($LS($LZ)), expr#0, st#0, env#0));
  ensures {:id "id1027"} $_reverifyPost
     ==> 
    M1.__default.ValidState#canCall(st'#0)
     ==> M1.__default.ValidState(st'#0)
       || (forall p#5: Box :: 
        { M1.__default.WellFounded(p#5) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#5) } 
        $IsBox(p#5, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st'#0), p#5)
           ==> M1.__default.WellFounded(p#5));
  ensures {:id "id1028"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || Set#Subset(M1.__default.DomSt(st#0), M1.__default.DomSt(st'#0));
  ensures {:id "id1029"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || (forall p#6: Box :: 
        { M1.__default.GetSt(p#6, st#0) } 
          { M1.__default.GetSt(p#6, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#6) } 
        $IsBox(p#6, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(st#0), p#6)
           ==> M1.__default.GetSt(p#6, st'#0) == M1.__default.GetSt(p#6, st#0));
  ensures {:id "id1030"} $_reverifyPost
     ==> 
    M1.__default.Extends#canCall(st#0, st'#0)
     ==> M1.__default.Extends(st#0, st'#0)
       || (forall p#7: Box :: 
        { M1.__default.Oracle(p#7, st#0) } 
          { M1.__default.GetSt(p#7, st'#0) } 
          { Set#IsMember(M1.__default.DomSt(st'#0), p#7) } 
          { Set#IsMember(M1.__default.DomSt(st#0), p#7) } 
        $IsBox(p#7, Tclass.M1.Path())
           ==> 
          !Set#IsMember(M1.__default.DomSt(st#0), p#7)
             && Set#IsMember(M1.__default.DomSt(st'#0), p#7)
           ==> M1.__default.GetSt(p#7, st'#0) == M1.__default.Oracle(p#7, st#0));
  ensures {:id "id1031"} $_reverifyPost
     ==> 
    M1.Expression.exprError_q(expr'#0)
     ==> M1.Reason#Equal(M1.Expression.r(expr'#0), #M1.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.EvalLemma (correctness)"} Impl$$M1.__default.EvalLemma(expr#0: DatatypeType, st#0: DatatypeType, env#0: Box)
   returns (expr'#0: DatatypeType, st'#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var result#0: DatatypeType
     where $Is(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()))
       && $IsAlloc(result#0, Tclass.M1.Tuple(Tclass.M1.Expression(), Tclass.M1.State()), $Heap);
  var ##expr#1: DatatypeType;
  var ##st#4: DatatypeType;
  var ##env#2: Box;
  var $rhs#0: DatatypeType;
  var $rhs#1: DatatypeType;
  var ##expr#2: DatatypeType;
  var cond'#1_1_0_0: DatatypeType
     where $Is(cond'#1_1_0_0, Tclass.M1.Expression())
       && $IsAlloc(cond'#1_1_0_0, Tclass.M1.Expression(), $Heap);
  var st'#1_1_0_0: DatatypeType
     where $Is(st'#1_1_0_0, Tclass.M1.State())
       && $IsAlloc(st'#1_1_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_0_0: DatatypeType;
  var $rhs##1_1_0_1: DatatypeType;
  var expr##1_1_0_0: DatatypeType;
  var st##1_1_0_0: DatatypeType;
  var env##1_1_0_0: Box;
  var _v7#1_1_0_0_0: DatatypeType
     where $Is(_v7#1_1_0_0_0, Tclass.M1.Expression())
       && $IsAlloc(_v7#1_1_0_0_0, Tclass.M1.Expression(), $Heap);
  var st''#1_1_0_0_0: DatatypeType
     where $Is(st''#1_1_0_0_0, Tclass.M1.State())
       && $IsAlloc(st''#1_1_0_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_0_0_0: DatatypeType;
  var $rhs##1_1_0_0_1: DatatypeType;
  var expr##1_1_0_0_0: DatatypeType;
  var st##1_1_0_0_0: DatatypeType;
  var env##1_1_0_0_0: Box;
  var st0##1_1_0_0_0: DatatypeType;
  var st1##1_1_0_0_0: DatatypeType;
  var st2##1_1_0_0_0: DatatypeType;
  var _v8#1_1_0_1_0_0: DatatypeType
     where $Is(_v8#1_1_0_1_0_0, Tclass.M1.Expression())
       && $IsAlloc(_v8#1_1_0_1_0_0, Tclass.M1.Expression(), $Heap);
  var st''#1_1_0_1_0_0: DatatypeType
     where $Is(st''#1_1_0_1_0_0, Tclass.M1.State())
       && $IsAlloc(st''#1_1_0_1_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_0_1_0_0: DatatypeType;
  var $rhs##1_1_0_1_0_1: DatatypeType;
  var expr##1_1_0_1_0_0: DatatypeType;
  var st##1_1_0_1_0_0: DatatypeType;
  var env##1_1_0_1_0_0: Box;
  var st0##1_1_0_1_0_0: DatatypeType;
  var st1##1_1_0_1_0_0: DatatypeType;
  var st2##1_1_0_1_0_0: DatatypeType;
  var conj0'#1_1_1_0_0: DatatypeType
     where $Is(conj0'#1_1_1_0_0, Tclass.M1.Expression())
       && $IsAlloc(conj0'#1_1_1_0_0, Tclass.M1.Expression(), $Heap);
  var st'#1_1_1_0_0: DatatypeType
     where $Is(st'#1_1_1_0_0, Tclass.M1.State())
       && $IsAlloc(st'#1_1_1_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_1_0_0: DatatypeType;
  var $rhs##1_1_1_0_1: DatatypeType;
  var expr##1_1_1_0_0: DatatypeType;
  var st##1_1_1_0_0: DatatypeType;
  var env##1_1_1_0_0: Box;
  var _v9#1_1_1_0_0_0: DatatypeType
     where $Is(_v9#1_1_1_0_0_0, Tclass.M1.Expression())
       && $IsAlloc(_v9#1_1_1_0_0_0, Tclass.M1.Expression(), $Heap);
  var st''#1_1_1_0_0_0: DatatypeType
     where $Is(st''#1_1_1_0_0_0, Tclass.M1.State())
       && $IsAlloc(st''#1_1_1_0_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_1_0_0_0: DatatypeType;
  var $rhs##1_1_1_0_0_1: DatatypeType;
  var expr##1_1_1_0_0_0: DatatypeType;
  var st##1_1_1_0_0_0: DatatypeType;
  var env##1_1_1_0_0_0: Box;
  var st0##1_1_1_0_0_0: DatatypeType;
  var st1##1_1_1_0_0_0: DatatypeType;
  var st2##1_1_1_0_0_0: DatatypeType;
  var disj0'#1_1_1_1_0_0: DatatypeType
     where $Is(disj0'#1_1_1_1_0_0, Tclass.M1.Expression())
       && $IsAlloc(disj0'#1_1_1_1_0_0, Tclass.M1.Expression(), $Heap);
  var st'#1_1_1_1_0_0: DatatypeType
     where $Is(st'#1_1_1_1_0_0, Tclass.M1.State())
       && $IsAlloc(st'#1_1_1_1_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_1_1_0_0: DatatypeType;
  var $rhs##1_1_1_1_0_1: DatatypeType;
  var expr##1_1_1_1_0_0: DatatypeType;
  var st##1_1_1_1_0_0: DatatypeType;
  var env##1_1_1_1_0_0: Box;
  var _v10#1_1_1_1_0_1_0_0: DatatypeType
     where $Is(_v10#1_1_1_1_0_1_0_0, Tclass.M1.Expression())
       && $IsAlloc(_v10#1_1_1_1_0_1_0_0, Tclass.M1.Expression(), $Heap);
  var st''#1_1_1_1_0_1_0_0: DatatypeType
     where $Is(st''#1_1_1_1_0_1_0_0, Tclass.M1.State())
       && $IsAlloc(st''#1_1_1_1_0_1_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_1_1_0_1_0_0: DatatypeType;
  var $rhs##1_1_1_1_0_1_0_1: DatatypeType;
  var expr##1_1_1_1_0_1_0_0: DatatypeType;
  var st##1_1_1_1_0_1_0_0: DatatypeType;
  var env##1_1_1_1_0_1_0_0: Box;
  var st0##1_1_1_1_0_1_0_0: DatatypeType;
  var st1##1_1_1_1_0_1_0_0: DatatypeType;
  var st2##1_1_1_1_0_1_0_0: DatatypeType;
  var fun'#1_1_1_1_1_0_0: DatatypeType
     where $Is(fun'#1_1_1_1_1_0_0, Tclass.M1.Expression())
       && $IsAlloc(fun'#1_1_1_1_1_0_0, Tclass.M1.Expression(), $Heap);
  var st'#1_1_1_1_1_0_0: DatatypeType
     where $Is(st'#1_1_1_1_1_0_0, Tclass.M1.State())
       && $IsAlloc(st'#1_1_1_1_1_0_0, Tclass.M1.State(), $Heap);
  var $rhs##1_1_1_1_1_0_0: DatatypeType;
  var $rhs##1_1_1_1_1_0_1: DatatypeType;
  var expr##1_1_1_1_1_0_0: DatatypeType;
  var st##1_1_1_1_1_0_0: DatatypeType;
  var env##1_1_1_1_1_0_0: Box;
  var args'#1_1_1_1_1_0_0: Seq
     where $Is(args'#1_1_1_1_1_0_0, TSeq(Tclass.M1.Expression()))
       && $IsAlloc(args'#1_1_1_1_1_0_0, TSeq(Tclass.M1.Expression()), $Heap);
  var sts'#1_1_1_1_1_0_0: Set
     where $Is(sts'#1_1_1_1_1_0_0, TSet(Tclass.M1.State()))
       && $IsAlloc(sts'#1_1_1_1_1_0_0, TSet(Tclass.M1.State()), $Heap);
  var $rhs##1_1_1_1_1_0_2: Seq;
  var $rhs##1_1_1_1_1_0_3: Set;
  var context##1_1_1_1_1_0_0: DatatypeType;
  var args##1_1_1_1_1_0_0: Seq;
  var stOrig##1_1_1_1_1_0_0: DatatypeType;
  var env##1_1_1_1_1_0_1: Box;
  var sts''#1_1_1_1_1_0_0: Set
     where $Is(sts''#1_1_1_1_1_0_0, TSet(Tclass.M1.State()))
       && $IsAlloc(sts''#1_1_1_1_1_0_0, TSet(Tclass.M1.State()), $Heap);
  var ##sts#1_1_1_1_1_0_0: Set;
  var stCombined#1_1_1_1_1_0_0_0: DatatypeType
     where $Is(stCombined#1_1_1_1_1_0_0_0, Tclass.M1.State())
       && $IsAlloc(stCombined#1_1_1_1_1_0_0_0, Tclass.M1.State(), $Heap);
  var ##sts#1_1_1_1_1_0_0_0: Set;
  var sts##1_1_1_1_1_0_0_0: Set;
  var parent##1_1_1_1_1_0_0_0: DatatypeType;
  var ##prim#1_1_1_1_1_0_0_0_0_0: DatatypeType;
  var ##prim#1_1_1_1_1_0_0_0_0_1: DatatypeType;
  var ##args#1_1_1_1_1_0_0_0_0_0: Seq;
  var ##st#1_1_1_1_1_0_0_0_0_0: DatatypeType;
  var cmd#1_1_1_1_1_0_0_0_0_0_0: Seq
     where $Is(cmd#1_1_1_1_1_0_0_0_0_0_0, TSeq(TChar))
       && $IsAlloc(cmd#1_1_1_1_1_0_0_0_0_0_0, TSeq(TChar), $Heap);
  var deps#1_1_1_1_1_0_0_0_0_0_0: Set
     where $Is(deps#1_1_1_1_1_0_0_0_0_0_0, TSet(Tclass.M1.Path()))
       && $IsAlloc(deps#1_1_1_1_1_0_0_0_0_0_0, TSet(Tclass.M1.Path()), $Heap);
  var exp#1_1_1_1_1_0_0_0_0_0_0: Set
     where $Is(exp#1_1_1_1_1_0_0_0_0_0_0, TSet(TSeq(TChar)))
       && $IsAlloc(exp#1_1_1_1_1_0_0_0_0_0_0, TSet(TSeq(TChar)), $Heap);
  var $rhs#1_1_1_1_1_0_0_0_0_0_0: Seq;
  var $rhs#1_1_1_1_1_0_0_0_0_0_1: Set;
  var $rhs#1_1_1_1_1_0_0_0_0_0_2: Set;
  var cmd##1_1_1_1_1_0_0_0_0_0_0: Seq;
  var deps##1_1_1_1_1_0_0_0_0_0_0: Set;
  var exps##1_1_1_1_1_0_0_0_0_0_0: Set;
  var st##1_1_1_1_1_0_0_0_0_0_0: DatatypeType;
  var resultExec#1_1_1_1_1_0_0_0_0_0_0: DatatypeType
     where $Is(resultExec#1_1_1_1_1_0_0_0_0_0_0, 
        Tclass.M1.Tuple(TSet(Tclass.M1.Path()), Tclass.M1.State()))
       && $IsAlloc(resultExec#1_1_1_1_1_0_0_0_0_0_0, 
        Tclass.M1.Tuple(TSet(Tclass.M1.Path()), Tclass.M1.State()), 
        $Heap);
  var ##cmd#1_1_1_1_1_0_0_0_0_0_0: Seq;
  var ##deps#1_1_1_1_1_0_0_0_0_0_0: Set;
  var ##exps#1_1_1_1_1_0_0_0_0_0_0: Set;
  var ##st#1_1_1_1_1_0_0_0_0_0_0: DatatypeType;
  var stExec#1_1_1_1_1_0_0_0_0_0_0: DatatypeType
     where $Is(stExec#1_1_1_1_1_0_0_0_0_0_0, Tclass.M1.State())
       && $IsAlloc(stExec#1_1_1_1_1_0_0_0_0_0_0, Tclass.M1.State(), $Heap);
  var st0##1_1_1_1_1_0_0_0_0_0_0: DatatypeType;
  var st1##1_1_1_1_1_0_0_0_0_0_0: DatatypeType;
  var st2##1_1_1_1_1_0_0_0_0_0_0: DatatypeType;

    // AddMethodImpl: EvalLemma, Impl$$M1.__default.EvalLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(364,16)
    assume true;
    ##expr#1 := expr#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##expr#1, Tclass.M1.Expression(), $Heap);
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##st#4, Tclass.M1.State(), $Heap);
    ##env#2 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#2, Tclass.M1.Env(), $Heap);
    assume true;
    assume M1.__default.ValidEnv(##env#2);
    assume M1.__default.eval#canCall(expr#0, st#0, env#0);
    assume M1.Tuple.Pair_q(M1.__default.eval($LS($LZ), expr#0, st#0, env#0));
    assume M1.__default.eval#canCall(expr#0, st#0, env#0);
    result#0 := M1.__default.eval($LS($LZ), expr#0, st#0, env#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(365,16)
    assume true;
    assume true;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#0 := $Unbox(M1.Tuple.fst(result#0)): DatatypeType;
    assume M1.Tuple.Pair_q(result#0);
    assume M1.Tuple.Pair_q(result#0);
    $rhs#1 := $Unbox(M1.Tuple.snd(result#0)): DatatypeType;
    expr'#0 := $rhs#0;
    st'#0 := $rhs#1;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](366,5)
    ##expr#2 := expr#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##expr#2, Tclass.M1.Expression(), $Heap);
    assume M1.__default.Value#canCall(expr#0);
    assume M1.__default.Value#canCall(expr#0);
    if (M1.__default.Value(expr#0))
    {
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](367,12)
        assume true;
        if (M1.Expression.exprIdentifier_q(expr#0))
        {
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](368,12)
            assume true;
            if (M1.Expression.exprIf_q(expr#0))
            {
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](369,34)
                assume true;
                assume true;
                // TrCallStmt: Adding lhs with type Expression
                // TrCallStmt: Adding lhs with type State
                // TrCallStmt: Before ProcessCallStmt
                assume {:id "id1037"} M1.Expression.exprIf_q(expr#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                expr##1_1_0_0 := M1.Expression.cond(expr#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##1_1_0_0 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                env##1_1_0_0 := env#0;
                assume {:id "id1038"} DtRank(expr##1_1_0_0) < DtRank(expr#0);
                call {:id "id1039"} $rhs##1_1_0_0, $rhs##1_1_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_0_0, st##1_1_0_0, env##1_1_0_0);
                // TrCallStmt: After ProcessCallStmt
                cond'#1_1_0_0 := $rhs##1_1_0_0;
                st'#1_1_0_0 := $rhs##1_1_0_1;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](370,7)
                if (M1.Expression.exprLiteral_q(cond'#1_1_0_0))
                {
                    assume {:id "id1042"} M1.Expression.exprLiteral_q(cond'#1_1_0_0);
                }

                assume M1.Expression.exprLiteral_q(cond'#1_1_0_0)
                   ==> $IsA#M1.Literal(M1.Expression.lit(cond'#1_1_0_0));
                if (M1.Expression.exprLiteral_q(cond'#1_1_0_0)
                   && M1.Literal#Equal(M1.Expression.lit(cond'#1_1_0_0), #M1.Literal.litTrue()))
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](371,33)
                    assume true;
                    assume true;
                    // TrCallStmt: Adding lhs with type Expression
                    // TrCallStmt: Adding lhs with type State
                    // TrCallStmt: Before ProcessCallStmt
                    assume {:id "id1043"} M1.Expression.exprIf_q(expr#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    expr##1_1_0_0_0 := M1.Expression.ifTrue(expr#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st##1_1_0_0_0 := st'#1_1_0_0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    env##1_1_0_0_0 := env#0;
                    assume {:id "id1044"} DtRank(expr##1_1_0_0_0) < DtRank(expr#0);
                    call {:id "id1045"} $rhs##1_1_0_0_0, $rhs##1_1_0_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_0_0_0, st##1_1_0_0_0, env##1_1_0_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    _v7#1_1_0_0_0 := $rhs##1_1_0_0_0;
                    st''#1_1_0_0_0 := $rhs##1_1_0_0_1;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](372,32)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st0##1_1_0_0_0 := st#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st1##1_1_0_0_0 := st'#1_1_0_0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st2##1_1_0_0_0 := st''#1_1_0_0_0;
                    call {:id "id1048"} Call$$M1.__default.Lemma__ExtendsTransitive(st0##1_1_0_0_0, st1##1_1_0_0_0, st2##1_1_0_0_0);
                    // TrCallStmt: After ProcessCallStmt
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](373,14)
                    if (M1.Expression.exprLiteral_q(cond'#1_1_0_0))
                    {
                        assume {:id "id1049"} M1.Expression.exprLiteral_q(cond'#1_1_0_0);
                    }

                    assume M1.Expression.exprLiteral_q(cond'#1_1_0_0)
                       ==> $IsA#M1.Literal(M1.Expression.lit(cond'#1_1_0_0));
                    if (M1.Expression.exprLiteral_q(cond'#1_1_0_0)
                       && M1.Literal#Equal(M1.Expression.lit(cond'#1_1_0_0), #M1.Literal.litFalse()))
                    {
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](374,33)
                        assume true;
                        assume true;
                        // TrCallStmt: Adding lhs with type Expression
                        // TrCallStmt: Adding lhs with type State
                        // TrCallStmt: Before ProcessCallStmt
                        assume {:id "id1050"} M1.Expression.exprIf_q(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        expr##1_1_0_1_0_0 := M1.Expression.ifFalse(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st##1_1_0_1_0_0 := st'#1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        env##1_1_0_1_0_0 := env#0;
                        assume {:id "id1051"} DtRank(expr##1_1_0_1_0_0) < DtRank(expr#0);
                        call {:id "id1052"} $rhs##1_1_0_1_0_0, $rhs##1_1_0_1_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_0_1_0_0, st##1_1_0_1_0_0, env##1_1_0_1_0_0);
                        // TrCallStmt: After ProcessCallStmt
                        _v8#1_1_0_1_0_0 := $rhs##1_1_0_1_0_0;
                        st''#1_1_0_1_0_0 := $rhs##1_1_0_1_0_1;
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](375,32)
                        // TrCallStmt: Before ProcessCallStmt
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st0##1_1_0_1_0_0 := st#0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st1##1_1_0_1_0_0 := st'#1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st2##1_1_0_1_0_0 := st''#1_1_0_1_0_0;
                        call {:id "id1055"} Call$$M1.__default.Lemma__ExtendsTransitive(st0##1_1_0_1_0_0, st1##1_1_0_1_0_0, st2##1_1_0_1_0_0);
                        // TrCallStmt: After ProcessCallStmt
                    }
                    else
                    {
                    }
                }
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](377,12)
                assume true;
                if (M1.Expression.exprAnd_q(expr#0))
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](378,35)
                    assume true;
                    assume true;
                    // TrCallStmt: Adding lhs with type Expression
                    // TrCallStmt: Adding lhs with type State
                    // TrCallStmt: Before ProcessCallStmt
                    assume {:id "id1056"} M1.Expression.exprAnd_q(expr#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    expr##1_1_1_0_0 := M1.Expression.conj0(expr#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st##1_1_1_0_0 := st#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    env##1_1_1_0_0 := env#0;
                    assume {:id "id1057"} DtRank(expr##1_1_1_0_0) < DtRank(expr#0);
                    call {:id "id1058"} $rhs##1_1_1_0_0, $rhs##1_1_1_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_1_0_0, st##1_1_1_0_0, env##1_1_1_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    conj0'#1_1_1_0_0 := $rhs##1_1_1_0_0;
                    st'#1_1_1_0_0 := $rhs##1_1_1_0_1;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](379,7)
                    if (M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0))
                    {
                        assume {:id "id1061"} M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0);
                    }

                    assume M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                       ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#1_1_1_0_0));
                    if (M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                       && M1.Literal#Equal(M1.Expression.lit(conj0'#1_1_1_0_0), #M1.Literal.litTrue()))
                    {
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](380,33)
                        assume true;
                        assume true;
                        // TrCallStmt: Adding lhs with type Expression
                        // TrCallStmt: Adding lhs with type State
                        // TrCallStmt: Before ProcessCallStmt
                        assume {:id "id1062"} M1.Expression.exprAnd_q(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        expr##1_1_1_0_0_0 := M1.Expression.conj1(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st##1_1_1_0_0_0 := st'#1_1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        env##1_1_1_0_0_0 := env#0;
                        assume {:id "id1063"} DtRank(expr##1_1_1_0_0_0) < DtRank(expr#0);
                        call {:id "id1064"} $rhs##1_1_1_0_0_0, $rhs##1_1_1_0_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_1_0_0_0, st##1_1_1_0_0_0, env##1_1_1_0_0_0);
                        // TrCallStmt: After ProcessCallStmt
                        _v9#1_1_1_0_0_0 := $rhs##1_1_1_0_0_0;
                        st''#1_1_1_0_0_0 := $rhs##1_1_1_0_0_1;
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](381,32)
                        // TrCallStmt: Before ProcessCallStmt
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st0##1_1_1_0_0_0 := st#0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st1##1_1_1_0_0_0 := st'#1_1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st2##1_1_1_0_0_0 := st''#1_1_1_0_0_0;
                        call {:id "id1067"} Call$$M1.__default.Lemma__ExtendsTransitive(st0##1_1_1_0_0_0, st1##1_1_1_0_0_0, st2##1_1_1_0_0_0);
                        // TrCallStmt: After ProcessCallStmt
                    }
                    else
                    {
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](382,14)
                        if (M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0))
                        {
                            assume {:id "id1068"} M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0);
                        }

                        assume M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                           ==> $IsA#M1.Literal(M1.Expression.lit(conj0'#1_1_1_0_0));
                        if (M1.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                           && M1.Literal#Equal(M1.Expression.lit(conj0'#1_1_1_0_0), #M1.Literal.litFalse()))
                        {
                        }
                        else
                        {
                        }
                    }
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](384,12)
                    assume true;
                    if (M1.Expression.exprOr_q(expr#0))
                    {
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](385,35)
                        assume true;
                        assume true;
                        // TrCallStmt: Adding lhs with type Expression
                        // TrCallStmt: Adding lhs with type State
                        // TrCallStmt: Before ProcessCallStmt
                        assume {:id "id1069"} M1.Expression.exprOr_q(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        expr##1_1_1_1_0_0 := M1.Expression.disj0(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st##1_1_1_1_0_0 := st#0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        env##1_1_1_1_0_0 := env#0;
                        assume {:id "id1070"} DtRank(expr##1_1_1_1_0_0) < DtRank(expr#0);
                        call {:id "id1071"} $rhs##1_1_1_1_0_0, $rhs##1_1_1_1_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_1_1_0_0, st##1_1_1_1_0_0, env##1_1_1_1_0_0);
                        // TrCallStmt: After ProcessCallStmt
                        disj0'#1_1_1_1_0_0 := $rhs##1_1_1_1_0_0;
                        st'#1_1_1_1_0_0 := $rhs##1_1_1_1_0_1;
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](386,7)
                        if (M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0))
                        {
                            assume {:id "id1074"} M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0);
                        }

                        assume M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                           ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#1_1_1_1_0_0));
                        if (M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                           && M1.Literal#Equal(M1.Expression.lit(disj0'#1_1_1_1_0_0), #M1.Literal.litTrue()))
                        {
                        }
                        else
                        {
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](387,14)
                            if (M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0))
                            {
                                assume {:id "id1075"} M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0);
                            }

                            assume M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                               ==> $IsA#M1.Literal(M1.Expression.lit(disj0'#1_1_1_1_0_0));
                            if (M1.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                               && M1.Literal#Equal(M1.Expression.lit(disj0'#1_1_1_1_0_0), #M1.Literal.litFalse()))
                            {
                                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](388,33)
                                assume true;
                                assume true;
                                // TrCallStmt: Adding lhs with type Expression
                                // TrCallStmt: Adding lhs with type State
                                // TrCallStmt: Before ProcessCallStmt
                                assume {:id "id1076"} M1.Expression.exprOr_q(expr#0);
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                expr##1_1_1_1_0_1_0_0 := M1.Expression.disj1(expr#0);
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st##1_1_1_1_0_1_0_0 := st'#1_1_1_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                env##1_1_1_1_0_1_0_0 := env#0;
                                assume {:id "id1077"} DtRank(expr##1_1_1_1_0_1_0_0) < DtRank(expr#0);
                                call {:id "id1078"} $rhs##1_1_1_1_0_1_0_0, $rhs##1_1_1_1_0_1_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_1_1_0_1_0_0, st##1_1_1_1_0_1_0_0, env##1_1_1_1_0_1_0_0);
                                // TrCallStmt: After ProcessCallStmt
                                _v10#1_1_1_1_0_1_0_0 := $rhs##1_1_1_1_0_1_0_0;
                                st''#1_1_1_1_0_1_0_0 := $rhs##1_1_1_1_0_1_0_1;
                                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](389,32)
                                // TrCallStmt: Before ProcessCallStmt
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st0##1_1_1_1_0_1_0_0 := st#0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st1##1_1_1_1_0_1_0_0 := st'#1_1_1_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st2##1_1_1_1_0_1_0_0 := st''#1_1_1_1_0_1_0_0;
                                call {:id "id1081"} Call$$M1.__default.Lemma__ExtendsTransitive(st0##1_1_1_1_0_1_0_0, st1##1_1_1_1_0_1_0_0, st2##1_1_1_1_0_1_0_0);
                                // TrCallStmt: After ProcessCallStmt
                            }
                            else
                            {
                            }
                        }
                    }
                    else
                    {
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](391,12)
                        assume true;
                        if (M1.Expression.exprInvocation_q(expr#0))
                        {
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](392,33)
                            assume true;
                            assume true;
                            // TrCallStmt: Adding lhs with type Expression
                            // TrCallStmt: Adding lhs with type State
                            // TrCallStmt: Before ProcessCallStmt
                            assume {:id "id1082"} M1.Expression.exprInvocation_q(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            expr##1_1_1_1_1_0_0 := M1.Expression.fun(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            st##1_1_1_1_1_0_0 := st#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            env##1_1_1_1_1_0_0 := env#0;
                            assume {:id "id1083"} DtRank(expr##1_1_1_1_1_0_0) < DtRank(expr#0);
                            call {:id "id1084"} $rhs##1_1_1_1_1_0_0, $rhs##1_1_1_1_1_0_1 := Call$$M1.__default.EvalLemma(expr##1_1_1_1_1_0_0, st##1_1_1_1_1_0_0, env##1_1_1_1_1_0_0);
                            // TrCallStmt: After ProcessCallStmt
                            fun'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_0;
                            st'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_1;
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](393,39)
                            assume true;
                            assume true;
                            // TrCallStmt: Adding lhs with type seq<Expression>
                            // TrCallStmt: Adding lhs with type set<State>
                            // TrCallStmt: Before ProcessCallStmt
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            context##1_1_1_1_1_0_0 := expr#0;
                            assume {:id "id1087"} M1.Expression.exprInvocation_q(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            args##1_1_1_1_1_0_0 := M1.Expression.args(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            stOrig##1_1_1_1_1_0_0 := st#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            env##1_1_1_1_1_0_1 := env#0;
                            assume {:id "id1088"} DtRank(context##1_1_1_1_1_0_0) <= DtRank(expr#0);
                            call {:id "id1089"} $rhs##1_1_1_1_1_0_2, $rhs##1_1_1_1_1_0_3 := Call$$M1.__default.EvalArgsLemma(context##1_1_1_1_1_0_0, args##1_1_1_1_1_0_0, stOrig##1_1_1_1_1_0_0, env##1_1_1_1_1_0_1);
                            // TrCallStmt: After ProcessCallStmt
                            args'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_2;
                            sts'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_3;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(394,17)
                            assume true;
                            assume true;
                            sts''#1_1_1_1_1_0_0 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(st'#1_1_1_1_1_0_0)), sts'#1_1_1_1_1_0_0);
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](395,7)
                            ##sts#1_1_1_1_1_0_0 := sts''#1_1_1_1_1_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##sts#1_1_1_1_1_0_0, TSet(Tclass.M1.State()), $Heap);
                            assume M1.__default.Compatible#canCall(sts''#1_1_1_1_1_0_0);
                            assume M1.__default.Compatible#canCall(sts''#1_1_1_1_1_0_0);
                            if (M1.__default.Compatible(sts''#1_1_1_1_1_0_0))
                            {
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(396,24)
                                assume true;
                                ##sts#1_1_1_1_1_0_0_0 := sts''#1_1_1_1_1_0_0;
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##sts#1_1_1_1_1_0_0_0, TSet(Tclass.M1.State()), $Heap);
                                assume true;
                                assume !Set#Equal(##sts#1_1_1_1_1_0_0_0, Set#Empty(): Set);
                                assume M1.__default.Combine#canCall(sts''#1_1_1_1_1_0_0);
                                assume M1.State.StateCons_q(M1.__default.Combine($LS($LZ), sts''#1_1_1_1_1_0_0));
                                assume M1.__default.Combine#canCall(sts''#1_1_1_1_1_0_0);
                                stCombined#1_1_1_1_1_0_0_0 := M1.__default.Combine($LS($LZ), sts''#1_1_1_1_1_0_0);
                                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](397,22)
                                // TrCallStmt: Before ProcessCallStmt
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                sts##1_1_1_1_1_0_0_0 := sts''#1_1_1_1_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                parent##1_1_1_1_1_0_0_0 := st#0;
                                call {:id "id1094"} Call$$M1.__default.Lemma__Combine(sts##1_1_1_1_1_0_0_0, parent##1_1_1_1_1_0_0_0);
                                // TrCallStmt: After ProcessCallStmt
                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](398,9)
                                if (M1.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0))
                                {
                                    assume {:id "id1095"} M1.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0);
                                }

                                assume true;
                                if (M1.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0)
                                   && M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#1_1_1_1_1_0_0)))
                                {
                                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](399,11)
                                    assume {:id "id1096"} M1.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0);
                                    assume {:id "id1097"} M1.Literal.litPrimitive_q(M1.Expression.lit(fun'#1_1_1_1_1_0_0));
                                    assume true;
                                    if (M1.Primitive.primExec_q(M1.Literal.prim(M1.Expression.lit(fun'#1_1_1_1_1_0_0))))
                                    {
                                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](400,13)
                                        ##prim#1_1_1_1_1_0_0_0_0_0 := Lit(#M1.Primitive.primExec());
                                        // assume allocatedness for argument to function
                                        assume $IsAlloc(##prim#1_1_1_1_1_0_0_0_0_0, Tclass.M1.Primitive(), $Heap);
                                        assume M1.__default.Arity#canCall(Lit(#M1.Primitive.primExec()));
                                        if (Seq#Length(args'#1_1_1_1_1_0_0)
                                           == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec()))))
                                        {
                                            ##prim#1_1_1_1_1_0_0_0_0_1 := Lit(#M1.Primitive.primExec());
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##prim#1_1_1_1_1_0_0_0_0_1, Tclass.M1.Primitive(), $Heap);
                                            ##args#1_1_1_1_1_0_0_0_0_0 := args'#1_1_1_1_1_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##args#1_1_1_1_1_0_0_0_0_0, TSeq(Tclass.M1.Expression()), $Heap);
                                            ##st#1_1_1_1_1_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##st#1_1_1_1_1_0_0_0_0_0, Tclass.M1.State(), $Heap);
                                            assume true;
                                            assume M1.Primitive.primExec_q(##prim#1_1_1_1_1_0_0_0_0_1)
                                               ==> Seq#Length(##args#1_1_1_1_1_0_0_0_0_0) == LitInt(3);
                                            assume true;
                                            assume M1.Primitive.primCreatePath_q(##prim#1_1_1_1_1_0_0_0_0_1)
                                               ==> Seq#Length(##args#1_1_1_1_1_0_0_0_0_0) == LitInt(1);
                                            assume M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), args'#1_1_1_1_1_0_0, stCombined#1_1_1_1_1_0_0_0);
                                        }

                                        assume M1.__default.Arity#canCall(Lit(#M1.Primitive.primExec()))
                                           && (Seq#Length(args'#1_1_1_1_1_0_0)
                                               == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                             ==> M1.__default.ValidArgs#canCall(Lit(#M1.Primitive.primExec()), args'#1_1_1_1_1_0_0, stCombined#1_1_1_1_1_0_0_0));
                                        if (Seq#Length(args'#1_1_1_1_1_0_0)
                                             == LitInt(M1.__default.Arity(Lit(#M1.Primitive.primExec())))
                                           && M1.__default.ValidArgs(Lit(#M1.Primitive.primExec()), args'#1_1_1_1_1_0_0, stCombined#1_1_1_1_1_0_0_0))
                                        {
                                            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(401,34)
                                            assume true;
                                            assume true;
                                            assume true;
                                            assume {:id "id1098"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(args'#1_1_1_1_1_0_0);
                                            assume {:id "id1099"} M1.Expression.exprLiteral_q($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(0))): DatatypeType);
                                            assume {:id "id1100"} M1.Literal.litString_q(M1.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(0))): DatatypeType));
                                            assume true;
                                            $rhs#1_1_1_1_1_0_0_0_0_0_0 := M1.Literal.str(M1.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(0))): DatatypeType));
                                            assume {:id "id1102"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(args'#1_1_1_1_1_0_0);
                                            assume {:id "id1103"} M1.Expression.exprLiteral_q($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(1))): DatatypeType);
                                            assume {:id "id1104"} M1.Literal.litArrOfPaths_q(M1.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(1))): DatatypeType));
                                            assume true;
                                            $rhs#1_1_1_1_1_0_0_0_0_0_1 := M1.Literal.paths(M1.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(1))): DatatypeType));
                                            assume {:id "id1106"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(args'#1_1_1_1_1_0_0);
                                            assume {:id "id1107"} M1.Expression.exprLiteral_q($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(2))): DatatypeType);
                                            assume {:id "id1108"} M1.Literal.litArrOfStrings_q(M1.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(2))): DatatypeType));
                                            assume true;
                                            $rhs#1_1_1_1_1_0_0_0_0_0_2 := M1.Literal.strs(M1.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(2))): DatatypeType));
                                            cmd#1_1_1_1_1_0_0_0_0_0_0 := $rhs#1_1_1_1_1_0_0_0_0_0_0;
                                            deps#1_1_1_1_1_0_0_0_0_0_0 := $rhs#1_1_1_1_1_0_0_0_0_0_1;
                                            exp#1_1_1_1_1_0_0_0_0_0_0 := $rhs#1_1_1_1_1_0_0_0_0_0_2;
                                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](402,27)
                                            // TrCallStmt: Before ProcessCallStmt
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            cmd##1_1_1_1_1_0_0_0_0_0_0 := cmd#1_1_1_1_1_0_0_0_0_0_0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            deps##1_1_1_1_1_0_0_0_0_0_0 := deps#1_1_1_1_1_0_0_0_0_0_0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            exps##1_1_1_1_1_0_0_0_0_0_0 := exp#1_1_1_1_1_0_0_0_0_0_0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st##1_1_1_1_1_0_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            call {:id "id1113"} Call$$M1.__default.ExecProperty(cmd##1_1_1_1_1_0_0_0_0_0_0, deps##1_1_1_1_1_0_0_0_0_0_0, exps##1_1_1_1_1_0_0_0_0_0_0, st##1_1_1_1_1_0_0_0_0_0_0);
                                            // TrCallStmt: After ProcessCallStmt
                                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(403,30)
                                            assume true;
                                            ##cmd#1_1_1_1_1_0_0_0_0_0_0 := cmd#1_1_1_1_1_0_0_0_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##cmd#1_1_1_1_1_0_0_0_0_0_0, TSeq(TChar), $Heap);
                                            ##deps#1_1_1_1_1_0_0_0_0_0_0 := deps#1_1_1_1_1_0_0_0_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##deps#1_1_1_1_1_0_0_0_0_0_0, TSet(Tclass.M1.Path()), $Heap);
                                            ##exps#1_1_1_1_1_0_0_0_0_0_0 := exp#1_1_1_1_1_0_0_0_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##exps#1_1_1_1_1_0_0_0_0_0_0, TSet(TSeq(TChar)), $Heap);
                                            ##st#1_1_1_1_1_0_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##st#1_1_1_1_1_0_0_0_0_0_0, Tclass.M1.State(), $Heap);
                                            assume M1.__default.exec#canCall(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                              deps#1_1_1_1_1_0_0_0_0_0_0, 
                                              exp#1_1_1_1_1_0_0_0_0_0_0, 
                                              stCombined#1_1_1_1_1_0_0_0);
                                            assume M1.Tuple.Pair_q(M1.__default.exec(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                                deps#1_1_1_1_1_0_0_0_0_0_0, 
                                                exp#1_1_1_1_1_0_0_0_0_0_0, 
                                                stCombined#1_1_1_1_1_0_0_0));
                                            assume M1.__default.exec#canCall(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                              deps#1_1_1_1_1_0_0_0_0_0_0, 
                                              exp#1_1_1_1_1_0_0_0_0_0_0, 
                                              stCombined#1_1_1_1_1_0_0_0);
                                            resultExec#1_1_1_1_1_0_0_0_0_0_0 := M1.__default.exec(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                              deps#1_1_1_1_1_0_0_0_0_0_0, 
                                              exp#1_1_1_1_1_0_0_0_0_0_0, 
                                              stCombined#1_1_1_1_1_0_0_0);
                                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(404,26)
                                            assume true;
                                            assume M1.Tuple.Pair_q(resultExec#1_1_1_1_1_0_0_0_0_0_0);
                                            assume M1.Tuple.Pair_q(resultExec#1_1_1_1_1_0_0_0_0_0_0);
                                            stExec#1_1_1_1_1_0_0_0_0_0_0 := $Unbox(M1.Tuple.snd(resultExec#1_1_1_1_1_0_0_0_0_0_0)): DatatypeType;
                                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](405,38)
                                            // TrCallStmt: Before ProcessCallStmt
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st0##1_1_1_1_1_0_0_0_0_0_0 := st#0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st1##1_1_1_1_1_0_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st2##1_1_1_1_1_0_0_0_0_0_0 := stExec#1_1_1_1_1_0_0_0_0_0_0;
                                            call {:id "id1116"} Call$$M1.__default.Lemma__ExtendsTransitive(st0##1_1_1_1_1_0_0_0_0_0_0, st1##1_1_1_1_1_0_0_0_0_0_0, st2##1_1_1_1_1_0_0_0_0_0_0);
                                            // TrCallStmt: After ProcessCallStmt
                                        }
                                        else
                                        {
                                        }
                                    }
                                    else
                                    {
                                    }
                                }
                                else
                                {
                                }
                            }
                            else
                            {
                            }
                        }
                        else
                        {
                        }
                    }
                }
            }
        }
    }
}



procedure {:verboseName "M1.EvalArgsLemma (well-formedness)"} CheckWellFormed$$M1.__default.EvalArgsLemma(context#0: DatatypeType
       where $Is(context#0, Tclass.M1.Expression())
         && $IsAlloc(context#0, Tclass.M1.Expression(), $Heap)
         && $IsA#M1.Expression(context#0), 
    args#0: Seq
       where $Is(args#0, TSeq(Tclass.M1.Expression()))
         && $IsAlloc(args#0, TSeq(Tclass.M1.Expression()), $Heap), 
    stOrig#0: DatatypeType
       where $Is(stOrig#0, Tclass.M1.State())
         && $IsAlloc(stOrig#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(stOrig#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (args'#0: Seq
       where $Is(args'#0, TSeq(Tclass.M1.Expression()))
         && $IsAlloc(args'#0, TSeq(Tclass.M1.Expression()), $Heap), 
    sts'#0: Set
       where $Is(sts'#0, TSet(Tclass.M1.State()))
         && $IsAlloc(sts'#0, TSet(Tclass.M1.State()), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1.EvalArgsLemma (call)"} Call$$M1.__default.EvalArgsLemma(context#0: DatatypeType
       where $Is(context#0, Tclass.M1.Expression())
         && $IsAlloc(context#0, Tclass.M1.Expression(), $Heap)
         && $IsA#M1.Expression(context#0), 
    args#0: Seq
       where $Is(args#0, TSeq(Tclass.M1.Expression()))
         && $IsAlloc(args#0, TSeq(Tclass.M1.Expression()), $Heap), 
    stOrig#0: DatatypeType
       where $Is(stOrig#0, Tclass.M1.State())
         && $IsAlloc(stOrig#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(stOrig#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (args'#0: Seq
       where $Is(args'#0, TSeq(Tclass.M1.Expression()))
         && $IsAlloc(args'#0, TSeq(Tclass.M1.Expression()), $Heap), 
    sts'#0: Set
       where $Is(sts'#0, TSet(Tclass.M1.State()))
         && $IsAlloc(sts'#0, TSet(Tclass.M1.State()), $Heap));
  // user-defined preconditions
  requires {:id "id1129"} M1.__default.ValidState#canCall(stOrig#0)
     ==> M1.__default.ValidState(stOrig#0)
       || (forall p#0: Box :: 
        { M1.__default.WellFounded(p#0) } 
          { Set#IsMember(M1.__default.DomSt(stOrig#0), p#0) } 
        $IsBox(p#0, Tclass.M1.Path())
           ==> 
          Set#IsMember(M1.__default.DomSt(stOrig#0), p#0)
           ==> M1.__default.WellFounded(p#0));
  requires {:id "id1130"} M1.__default.ValidEnv(env#0);
  requires {:id "id1131"} (forall arg#1: DatatypeType :: 
    { Seq#Contains(args#0, $Box(arg#1)) } 
    $Is(arg#1, Tclass.M1.Expression())
       ==> 
      Seq#Contains(args#0, $Box(arg#1))
       ==> DtRank(arg#1) < DtRank(context#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
     && M1.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
     && (M1.Tuple#Equal(#M1.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
        M1.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
       ==> (forall st'#1: DatatypeType :: 
        { M1.__default.Extends(stOrig#0, st'#1) } 
          { M1.__default.ValidState(st'#1) } 
          { Set#IsMember(sts'#0, $Box(st'#1)) } 
        $Is(st'#1, Tclass.M1.State())
           ==> (Set#IsMember(sts'#0, $Box(st'#1)) ==> M1.__default.ValidState#canCall(st'#1))
             && (
              (Set#IsMember(sts'#0, $Box(st'#1))
               ==> M1.__default.ValidState(st'#1))
               ==> 
              Set#IsMember(sts'#0, $Box(st'#1))
               ==> M1.__default.Extends#canCall(stOrig#0, st'#1))));
  ensures {:id "id1132"} M1.Tuple#Equal(#M1.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
    M1.__default.evalArgs($LS($LS($LZ)), context#0, args#0, stOrig#0, env#0));
  ensures {:id "id1133"} (forall st'#1: DatatypeType :: 
    { M1.__default.Extends(stOrig#0, st'#1) } 
      { M1.__default.ValidState(st'#1) } 
      { Set#IsMember(sts'#0, $Box(st'#1)) } 
    $Is(st'#1, Tclass.M1.State())
       ==> (Set#IsMember(sts'#0, $Box(st'#1)) ==> M1.__default.ValidState(st'#1))
         && (Set#IsMember(sts'#0, $Box(st'#1)) ==> M1.__default.Extends(stOrig#0, st'#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M1.EvalArgsLemma (correctness)"} Impl$$M1.__default.EvalArgsLemma(context#0: DatatypeType
       where $Is(context#0, Tclass.M1.Expression())
         && $IsAlloc(context#0, Tclass.M1.Expression(), $Heap)
         && $IsA#M1.Expression(context#0), 
    args#0: Seq
       where $Is(args#0, TSeq(Tclass.M1.Expression()))
         && $IsAlloc(args#0, TSeq(Tclass.M1.Expression()), $Heap), 
    stOrig#0: DatatypeType
       where $Is(stOrig#0, Tclass.M1.State())
         && $IsAlloc(stOrig#0, Tclass.M1.State(), $Heap)
         && $IsA#M1.State(stOrig#0), 
    env#0: Box
       where $IsBox(env#0, Tclass.M1.Env()) && $IsAllocBox(env#0, Tclass.M1.Env(), $Heap))
   returns (args'#0: Seq
       where $Is(args'#0, TSeq(Tclass.M1.Expression()))
         && $IsAlloc(args'#0, TSeq(Tclass.M1.Expression()), $Heap), 
    sts'#0: Set
       where $Is(sts'#0, TSet(Tclass.M1.State()))
         && $IsAlloc(sts'#0, TSet(Tclass.M1.State()), $Heap), 
    $_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1134"} M1.__default.ValidState#canCall(stOrig#0)
     && 
    M1.__default.ValidState(stOrig#0)
     && (forall p#1: Box :: 
      { M1.__default.WellFounded(p#1) } 
        { Set#IsMember(M1.__default.DomSt(stOrig#0), p#1) } 
      $IsBox(p#1, Tclass.M1.Path())
         ==> 
        Set#IsMember(M1.__default.DomSt(stOrig#0), p#1)
         ==> M1.__default.WellFounded(p#1));
  requires {:id "id1135"} M1.__default.ValidEnv(env#0);
  requires {:id "id1136"} (forall arg#1: DatatypeType :: 
    { Seq#Contains(args#0, $Box(arg#1)) } 
    $Is(arg#1, Tclass.M1.Expression())
       ==> 
      Seq#Contains(args#0, $Box(arg#1))
       ==> DtRank(arg#1) < DtRank(context#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M1.Tuple(M1.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
     && M1.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
     && (M1.Tuple#Equal(#M1.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
        M1.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
       ==> (forall st'#1: DatatypeType :: 
        { M1.__default.Extends(stOrig#0, st'#1) } 
          { M1.__default.ValidState(st'#1) } 
          { Set#IsMember(sts'#0, $Box(st'#1)) } 
        $Is(st'#1, Tclass.M1.State())
           ==> (Set#IsMember(sts'#0, $Box(st'#1)) ==> M1.__default.ValidState#canCall(st'#1))
             && (
              (Set#IsMember(sts'#0, $Box(st'#1))
               ==> M1.__default.ValidState(st'#1))
               ==> 
              Set#IsMember(sts'#0, $Box(st'#1))
               ==> M1.__default.Extends#canCall(stOrig#0, st'#1))));
  ensures {:id "id1137"} $_reverifyPost
     ==> M1.Tuple#Equal(#M1.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
      M1.__default.evalArgs($LS($LS($LZ)), context#0, args#0, stOrig#0, env#0));
  ensures {:id "id1138"} $_reverifyPost
     ==> (forall st'#1: DatatypeType :: 
      { M1.__default.Extends(stOrig#0, st'#1) } 
        { M1.__default.ValidState(st'#1) } 
        { Set#IsMember(sts'#0, $Box(st'#1)) } 
      $Is(st'#1, Tclass.M1.State())
         ==> (Set#IsMember(sts'#0, $Box(st'#1)) ==> M1.__default.ValidState(st'#1))
           && (Set#IsMember(sts'#0, $Box(st'#1)) ==> M1.__default.Extends(stOrig#0, st'#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1.EvalArgsLemma (correctness)"} Impl$$M1.__default.EvalArgsLemma(context#0: DatatypeType, args#0: Seq, stOrig#0: DatatypeType, env#0: Box)
   returns (args'#0: Seq, sts'#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: Seq;
  var $rhs#0_1: Set;
  var rArg#1_0: DatatypeType
     where $Is(rArg#1_0, Tclass.M1.Expression())
       && $IsAlloc(rArg#1_0, Tclass.M1.Expression(), $Heap);
  var rSts#1_0: DatatypeType
     where $Is(rSts#1_0, Tclass.M1.State()) && $IsAlloc(rSts#1_0, Tclass.M1.State(), $Heap);
  var $rhs##1_0: DatatypeType;
  var $rhs##1_1: DatatypeType;
  var expr##1_0: DatatypeType;
  var st##1_0: DatatypeType;
  var env##1_0: Box;
  var rrArg#1_0: Seq
     where $Is(rrArg#1_0, TSeq(Tclass.M1.Expression()))
       && $IsAlloc(rrArg#1_0, TSeq(Tclass.M1.Expression()), $Heap);
  var rrSts#1_0: Set
     where $Is(rrSts#1_0, TSet(Tclass.M1.State()))
       && $IsAlloc(rrSts#1_0, TSet(Tclass.M1.State()), $Heap);
  var $rhs##1_2: Seq;
  var $rhs##1_3: Set;
  var context##1_0: DatatypeType;
  var args##1_0: Seq;
  var stOrig##1_0: DatatypeType;
  var env##1_1: Box;
  var $rhs#1_0: Seq;
  var $rhs#1_1: Set;

    // AddMethodImpl: EvalArgsLemma, Impl$$M1.__default.EvalArgsLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](422,5)
    assume true;
    if (Seq#Equal(args#0, Seq#Empty(): Seq))
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(423,19)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := Lit(Seq#Empty(): Seq);
        assume true;
        $rhs#0_1 := Lit(Set#Empty(): Set);
        args'#0 := $rhs#0_0;
        sts'#0 := $rhs#0_1;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](425,34)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Expression
        // TrCallStmt: Adding lhs with type State
        // TrCallStmt: Before ProcessCallStmt
        assume {:id "id1143"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(args#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        expr##1_0 := $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := stOrig#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##1_0 := env#0;
        assume {:id "id1144"} DtRank(expr##1_0) < DtRank(context#0);
        call {:id "id1145"} $rhs##1_0, $rhs##1_1 := Call$$M1.__default.EvalLemma(expr##1_0, st##1_0, env##1_0);
        // TrCallStmt: After ProcessCallStmt
        rArg#1_0 := $rhs##1_0;
        rSts#1_0 := $rhs##1_1;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy[M1](426,40)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type seq<Expression>
        // TrCallStmt: Adding lhs with type set<State>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        context##1_0 := context#0;
        assume {:id "id1148"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(args#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        args##1_0 := Seq#Drop(args#0, LitInt(1));
        assume true;
        // ProcessCallStmt: CheckSubrange
        stOrig##1_0 := stOrig#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##1_1 := env#0;
        assume {:id "id1149"} 0 <= Seq#Length(args#0)
           || DtRank(context##1_0) < DtRank(context#0)
           || Seq#Length(args##1_0) == Seq#Length(args#0);
        assume {:id "id1150"} DtRank(context##1_0) < DtRank(context#0)
           || (DtRank(context##1_0) == DtRank(context#0)
             && Seq#Length(args##1_0) < Seq#Length(args#0));
        call {:id "id1151"} $rhs##1_2, $rhs##1_3 := Call$$M1.__default.EvalArgsLemma(context##1_0, args##1_0, stOrig##1_0, env##1_1);
        // TrCallStmt: After ProcessCallStmt
        rrArg#1_0 := $rhs##1_2;
        rrSts#1_0 := $rhs##1_3;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(427,19)
        assume true;
        assume true;
        assume true;
        $rhs#1_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(rArg#1_0)), rrArg#1_0);
        assume true;
        $rhs#1_1 := Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(rSts#1_0)), rrSts#1_0);
        args'#0 := $rhs#1_0;
        sts'#0 := $rhs#1_1;
    }
}



// Constructor function declaration
function #M1.State.StateCons(Map) : DatatypeType;

const unique ##M1.State.StateCons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Map :: 
  { #M1.State.StateCons(a#0#0#0) } 
  DatatypeCtorId(#M1.State.StateCons(a#0#0#0)) == ##M1.State.StateCons);
}

function M1.State.StateCons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.State.StateCons_q(d) } 
  M1.State.StateCons_q(d) <==> DatatypeCtorId(d) == ##M1.State.StateCons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.State.StateCons_q(d) } 
  M1.State.StateCons_q(d)
     ==> (exists a#1#0#0: Map :: d == #M1.State.StateCons(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: Map :: 
  { $Is(#M1.State.StateCons(a#2#0#0), Tclass.M1.State()) } 
  $Is(#M1.State.StateCons(a#2#0#0), Tclass.M1.State())
     <==> $Is(a#2#0#0, TMap(Tclass.M1.Path(), Tclass.M1.Artifact())));

// Constructor $IsAlloc
axiom (forall a#2#0#0: Map, $h: Heap :: 
  { $IsAlloc(#M1.State.StateCons(a#2#0#0), Tclass.M1.State(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.State.StateCons(a#2#0#0), Tclass.M1.State(), $h)
       <==> $IsAlloc(a#2#0#0, TMap(Tclass.M1.Path(), Tclass.M1.Artifact()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.State.m(d), TMap(Tclass.M1.Path(), Tclass.M1.Artifact()), $h) } 
  $IsGoodHeap($h) && M1.State.StateCons_q(d) && $IsAlloc(d, Tclass.M1.State(), $h)
     ==> $IsAlloc(M1.State.m(d), TMap(Tclass.M1.Path(), Tclass.M1.Artifact()), $h));

// Constructor literal
axiom (forall a#3#0#0: Map :: 
  { #M1.State.StateCons(Lit(a#3#0#0)) } 
  #M1.State.StateCons(Lit(a#3#0#0)) == Lit(#M1.State.StateCons(a#3#0#0)));

function M1.State.m(DatatypeType) : Map;

// Constructor injectivity
axiom (forall a#4#0#0: Map :: 
  { #M1.State.StateCons(a#4#0#0) } 
  M1.State.m(#M1.State.StateCons(a#4#0#0)) == a#4#0#0);

// Inductive map key rank
axiom (forall a#5#0#0: Map, d: DatatypeType :: 
  { Set#IsMember(Map#Domain(a#5#0#0), $Box(d)), #M1.State.StateCons(a#5#0#0) } 
  Set#IsMember(Map#Domain(a#5#0#0), $Box(d))
     ==> DtRank(d) < DtRank(#M1.State.StateCons(a#5#0#0)));

// Inductive map value rank
axiom (forall a#6#0#0: Map, bx: Box :: 
  { Set#IsMember(Map#Domain(a#6#0#0), bx), #M1.State.StateCons(a#6#0#0) } 
  Set#IsMember(Map#Domain(a#6#0#0), bx)
     ==> DtRank($Unbox(Map#Elements(a#6#0#0)[bx]): DatatypeType)
       < DtRank(#M1.State.StateCons(a#6#0#0)));

// Depth-one case-split function
function $IsA#M1.State(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.State(d) } 
  $IsA#M1.State(d) ==> M1.State.StateCons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M1.State.StateCons_q(d), $Is(d, Tclass.M1.State()) } 
  $Is(d, Tclass.M1.State()) ==> M1.State.StateCons_q(d));

// Datatype extensional equality declaration
function M1.State#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.State.StateCons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.State#Equal(a, b) } 
  M1.State#Equal(a, b) <==> Map#Equal(M1.State.m(a), M1.State.m(b)));

// Datatype extensionality axiom: M1.State
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.State#Equal(a, b) } 
  M1.State#Equal(a, b) <==> a == b);

const unique class.M1.State: ClassName;

const unique class.M1.Env: ClassName;

// Constructor function declaration
function #M1.Program.Program(Seq) : DatatypeType;

const unique ##M1.Program.Program: DtCtorId
uses {
// Constructor identifier
axiom (forall a#7#0#0: Seq :: 
  { #M1.Program.Program(a#7#0#0) } 
  DatatypeCtorId(#M1.Program.Program(a#7#0#0)) == ##M1.Program.Program);
}

function M1.Program.Program_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Program.Program_q(d) } 
  M1.Program.Program_q(d) <==> DatatypeCtorId(d) == ##M1.Program.Program);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Program.Program_q(d) } 
  M1.Program.Program_q(d)
     ==> (exists a#8#0#0: Seq :: d == #M1.Program.Program(a#8#0#0)));

// Constructor $Is
axiom (forall a#9#0#0: Seq :: 
  { $Is(#M1.Program.Program(a#9#0#0), Tclass.M1.Program()) } 
  $Is(#M1.Program.Program(a#9#0#0), Tclass.M1.Program())
     <==> $Is(a#9#0#0, TSeq(Tclass.M1.Statement())));

// Constructor $IsAlloc
axiom (forall a#9#0#0: Seq, $h: Heap :: 
  { $IsAlloc(#M1.Program.Program(a#9#0#0), Tclass.M1.Program(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Program.Program(a#9#0#0), Tclass.M1.Program(), $h)
       <==> $IsAlloc(a#9#0#0, TSeq(Tclass.M1.Statement()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Program.stmts(d), TSeq(Tclass.M1.Statement()), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Program.Program_q(d)
       && $IsAlloc(d, Tclass.M1.Program(), $h)
     ==> $IsAlloc(M1.Program.stmts(d), TSeq(Tclass.M1.Statement()), $h));

// Constructor literal
axiom (forall a#10#0#0: Seq :: 
  { #M1.Program.Program(Lit(a#10#0#0)) } 
  #M1.Program.Program(Lit(a#10#0#0)) == Lit(#M1.Program.Program(a#10#0#0)));

function M1.Program.stmts(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#11#0#0: Seq :: 
  { #M1.Program.Program(a#11#0#0) } 
  M1.Program.stmts(#M1.Program.Program(a#11#0#0)) == a#11#0#0);

// Inductive seq element rank
axiom (forall a#12#0#0: Seq, i: int :: 
  { Seq#Index(a#12#0#0, i), #M1.Program.Program(a#12#0#0) } 
  0 <= i && i < Seq#Length(a#12#0#0)
     ==> DtRank($Unbox(Seq#Index(a#12#0#0, i)): DatatypeType)
       < DtRank(#M1.Program.Program(a#12#0#0)));

// Inductive seq rank
axiom (forall a#13#0#0: Seq :: 
  { #M1.Program.Program(a#13#0#0) } 
  Seq#Rank(a#13#0#0) < DtRank(#M1.Program.Program(a#13#0#0)));

// Depth-one case-split function
function $IsA#M1.Program(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.Program(d) } 
  $IsA#M1.Program(d) ==> M1.Program.Program_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M1.Program.Program_q(d), $Is(d, Tclass.M1.Program()) } 
  $Is(d, Tclass.M1.Program()) ==> M1.Program.Program_q(d));

// Datatype extensional equality declaration
function M1.Program#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.Program.Program
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Program#Equal(a, b) } 
  M1.Program#Equal(a, b) <==> Seq#Equal(M1.Program.stmts(a), M1.Program.stmts(b)));

// Datatype extensionality axiom: M1.Program
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Program#Equal(a, b) } 
  M1.Program#Equal(a, b) <==> a == b);

const unique class.M1.Program: ClassName;

// Constructor function declaration
function #M1.Statement.stmtVariable(Box, DatatypeType) : DatatypeType;

const unique ##M1.Statement.stmtVariable: DtCtorId
uses {
// Constructor identifier
axiom (forall a#14#0#0: Box, a#14#1#0: DatatypeType :: 
  { #M1.Statement.stmtVariable(a#14#0#0, a#14#1#0) } 
  DatatypeCtorId(#M1.Statement.stmtVariable(a#14#0#0, a#14#1#0))
     == ##M1.Statement.stmtVariable);
}

function M1.Statement.stmtVariable_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Statement.stmtVariable_q(d) } 
  M1.Statement.stmtVariable_q(d)
     <==> DatatypeCtorId(d) == ##M1.Statement.stmtVariable);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Statement.stmtVariable_q(d) } 
  M1.Statement.stmtVariable_q(d)
     ==> (exists a#15#0#0: Box, a#15#1#0: DatatypeType :: 
      d == #M1.Statement.stmtVariable(a#15#0#0, a#15#1#0)));

// Constructor $Is
axiom (forall a#16#0#0: Box, a#16#1#0: DatatypeType :: 
  { $Is(#M1.Statement.stmtVariable(a#16#0#0, a#16#1#0), Tclass.M1.Statement()) } 
  $Is(#M1.Statement.stmtVariable(a#16#0#0, a#16#1#0), Tclass.M1.Statement())
     <==> $IsBox(a#16#0#0, Tclass.M1.Identifier())
       && $Is(a#16#1#0, Tclass.M1.Expression()));

// Constructor $IsAlloc
axiom (forall a#16#0#0: Box, a#16#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Statement.stmtVariable(a#16#0#0, a#16#1#0), Tclass.M1.Statement(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Statement.stmtVariable(a#16#0#0, a#16#1#0), Tclass.M1.Statement(), $h)
       <==> $IsAllocBox(a#16#0#0, Tclass.M1.Identifier(), $h)
         && $IsAlloc(a#16#1#0, Tclass.M1.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(M1.Statement.id(d), Tclass.M1.Identifier(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Statement.stmtVariable_q(d)
       && $IsAlloc(d, Tclass.M1.Statement(), $h)
     ==> $IsAllocBox(M1.Statement.id(d), Tclass.M1.Identifier(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Statement.expr(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Statement.stmtVariable_q(d)
       && $IsAlloc(d, Tclass.M1.Statement(), $h)
     ==> $IsAlloc(M1.Statement.expr(d), Tclass.M1.Expression(), $h));

// Constructor literal
axiom (forall a#17#0#0: Box, a#17#1#0: DatatypeType :: 
  { #M1.Statement.stmtVariable(Lit(a#17#0#0), Lit(a#17#1#0)) } 
  #M1.Statement.stmtVariable(Lit(a#17#0#0), Lit(a#17#1#0))
     == Lit(#M1.Statement.stmtVariable(a#17#0#0, a#17#1#0)));

function M1.Statement.id(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: DatatypeType :: 
  { #M1.Statement.stmtVariable(a#18#0#0, a#18#1#0) } 
  M1.Statement.id(#M1.Statement.stmtVariable(a#18#0#0, a#18#1#0)) == a#18#0#0);

function M1.Statement.expr(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#19#0#0: Box, a#19#1#0: DatatypeType :: 
  { #M1.Statement.stmtVariable(a#19#0#0, a#19#1#0) } 
  M1.Statement.expr(#M1.Statement.stmtVariable(a#19#0#0, a#19#1#0)) == a#19#1#0);

// Inductive rank
axiom (forall a#20#0#0: Box, a#20#1#0: DatatypeType :: 
  { #M1.Statement.stmtVariable(a#20#0#0, a#20#1#0) } 
  DtRank(a#20#1#0) < DtRank(#M1.Statement.stmtVariable(a#20#0#0, a#20#1#0)));

// Constructor function declaration
function #M1.Statement.stmtReturn(DatatypeType) : DatatypeType;

const unique ##M1.Statement.stmtReturn: DtCtorId
uses {
// Constructor identifier
axiom (forall a#21#0#0: DatatypeType :: 
  { #M1.Statement.stmtReturn(a#21#0#0) } 
  DatatypeCtorId(#M1.Statement.stmtReturn(a#21#0#0)) == ##M1.Statement.stmtReturn);
}

function M1.Statement.stmtReturn_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Statement.stmtReturn_q(d) } 
  M1.Statement.stmtReturn_q(d) <==> DatatypeCtorId(d) == ##M1.Statement.stmtReturn);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Statement.stmtReturn_q(d) } 
  M1.Statement.stmtReturn_q(d)
     ==> (exists a#22#0#0: DatatypeType :: d == #M1.Statement.stmtReturn(a#22#0#0)));

// Constructor $Is
axiom (forall a#23#0#0: DatatypeType :: 
  { $Is(#M1.Statement.stmtReturn(a#23#0#0), Tclass.M1.Statement()) } 
  $Is(#M1.Statement.stmtReturn(a#23#0#0), Tclass.M1.Statement())
     <==> $Is(a#23#0#0, Tclass.M1.Expression()));

// Constructor $IsAlloc
axiom (forall a#23#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Statement.stmtReturn(a#23#0#0), Tclass.M1.Statement(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Statement.stmtReturn(a#23#0#0), Tclass.M1.Statement(), $h)
       <==> $IsAlloc(a#23#0#0, Tclass.M1.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Statement.ret(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Statement.stmtReturn_q(d)
       && $IsAlloc(d, Tclass.M1.Statement(), $h)
     ==> $IsAlloc(M1.Statement.ret(d), Tclass.M1.Expression(), $h));

// Constructor literal
axiom (forall a#24#0#0: DatatypeType :: 
  { #M1.Statement.stmtReturn(Lit(a#24#0#0)) } 
  #M1.Statement.stmtReturn(Lit(a#24#0#0))
     == Lit(#M1.Statement.stmtReturn(a#24#0#0)));

function M1.Statement.ret(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#25#0#0: DatatypeType :: 
  { #M1.Statement.stmtReturn(a#25#0#0) } 
  M1.Statement.ret(#M1.Statement.stmtReturn(a#25#0#0)) == a#25#0#0);

// Inductive rank
axiom (forall a#26#0#0: DatatypeType :: 
  { #M1.Statement.stmtReturn(a#26#0#0) } 
  DtRank(a#26#0#0) < DtRank(#M1.Statement.stmtReturn(a#26#0#0)));

// Depth-one case-split function
function $IsA#M1.Statement(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.Statement(d) } 
  $IsA#M1.Statement(d)
     ==> M1.Statement.stmtVariable_q(d) || M1.Statement.stmtReturn_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M1.Statement.stmtReturn_q(d), $Is(d, Tclass.M1.Statement()) } 
    { M1.Statement.stmtVariable_q(d), $Is(d, Tclass.M1.Statement()) } 
  $Is(d, Tclass.M1.Statement())
     ==> M1.Statement.stmtVariable_q(d) || M1.Statement.stmtReturn_q(d));

// Datatype extensional equality declaration
function M1.Statement#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.Statement.stmtVariable
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Statement#Equal(a, b), M1.Statement.stmtVariable_q(a) } 
    { M1.Statement#Equal(a, b), M1.Statement.stmtVariable_q(b) } 
  M1.Statement.stmtVariable_q(a) && M1.Statement.stmtVariable_q(b)
     ==> (M1.Statement#Equal(a, b)
       <==> M1.Statement.id(a) == M1.Statement.id(b)
         && M1.Expression#Equal(M1.Statement.expr(a), M1.Statement.expr(b))));

// Datatype extensional equality definition: #M1.Statement.stmtReturn
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Statement#Equal(a, b), M1.Statement.stmtReturn_q(a) } 
    { M1.Statement#Equal(a, b), M1.Statement.stmtReturn_q(b) } 
  M1.Statement.stmtReturn_q(a) && M1.Statement.stmtReturn_q(b)
     ==> (M1.Statement#Equal(a, b)
       <==> M1.Expression#Equal(M1.Statement.ret(a), M1.Statement.ret(b))));

// Datatype extensionality axiom: M1.Statement
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Statement#Equal(a, b) } 
  M1.Statement#Equal(a, b) <==> a == b);

const unique class.M1.Statement: ClassName;

// Constructor function declaration
function #M1.Expression.exprLiteral(DatatypeType) : DatatypeType;

const unique ##M1.Expression.exprLiteral: DtCtorId
uses {
// Constructor identifier
axiom (forall a#27#0#0: DatatypeType :: 
  { #M1.Expression.exprLiteral(a#27#0#0) } 
  DatatypeCtorId(#M1.Expression.exprLiteral(a#27#0#0))
     == ##M1.Expression.exprLiteral);
}

function M1.Expression.exprLiteral_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprLiteral_q(d) } 
  M1.Expression.exprLiteral_q(d)
     <==> DatatypeCtorId(d) == ##M1.Expression.exprLiteral);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprLiteral_q(d) } 
  M1.Expression.exprLiteral_q(d)
     ==> (exists a#28#0#0: DatatypeType :: d == #M1.Expression.exprLiteral(a#28#0#0)));

function Tclass.M1.Literal() : Ty
uses {
// Tclass.M1.Literal Tag
axiom Tag(Tclass.M1.Literal()) == Tagclass.M1.Literal
   && TagFamily(Tclass.M1.Literal()) == tytagFamily$Literal;
}

const unique Tagclass.M1.Literal: TyTag;

// Box/unbox axiom for Tclass.M1.Literal
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M1.Literal()) } 
  $IsBox(bx, Tclass.M1.Literal())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.Literal()));

// Constructor $Is
axiom (forall a#29#0#0: DatatypeType :: 
  { $Is(#M1.Expression.exprLiteral(a#29#0#0), Tclass.M1.Expression()) } 
  $Is(#M1.Expression.exprLiteral(a#29#0#0), Tclass.M1.Expression())
     <==> $Is(a#29#0#0, Tclass.M1.Literal()));

// Constructor $IsAlloc
axiom (forall a#29#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Expression.exprLiteral(a#29#0#0), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Expression.exprLiteral(a#29#0#0), Tclass.M1.Expression(), $h)
       <==> $IsAlloc(a#29#0#0, Tclass.M1.Literal(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.lit(d), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprLiteral_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.lit(d), Tclass.M1.Literal(), $h));

// Constructor literal
axiom (forall a#30#0#0: DatatypeType :: 
  { #M1.Expression.exprLiteral(Lit(a#30#0#0)) } 
  #M1.Expression.exprLiteral(Lit(a#30#0#0))
     == Lit(#M1.Expression.exprLiteral(a#30#0#0)));

function M1.Expression.lit(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#31#0#0: DatatypeType :: 
  { #M1.Expression.exprLiteral(a#31#0#0) } 
  M1.Expression.lit(#M1.Expression.exprLiteral(a#31#0#0)) == a#31#0#0);

// Inductive rank
axiom (forall a#32#0#0: DatatypeType :: 
  { #M1.Expression.exprLiteral(a#32#0#0) } 
  DtRank(a#32#0#0) < DtRank(#M1.Expression.exprLiteral(a#32#0#0)));

// Constructor function declaration
function #M1.Expression.exprIdentifier(Box) : DatatypeType;

const unique ##M1.Expression.exprIdentifier: DtCtorId
uses {
// Constructor identifier
axiom (forall a#33#0#0: Box :: 
  { #M1.Expression.exprIdentifier(a#33#0#0) } 
  DatatypeCtorId(#M1.Expression.exprIdentifier(a#33#0#0))
     == ##M1.Expression.exprIdentifier);
}

function M1.Expression.exprIdentifier_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprIdentifier_q(d) } 
  M1.Expression.exprIdentifier_q(d)
     <==> DatatypeCtorId(d) == ##M1.Expression.exprIdentifier);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprIdentifier_q(d) } 
  M1.Expression.exprIdentifier_q(d)
     ==> (exists a#34#0#0: Box :: d == #M1.Expression.exprIdentifier(a#34#0#0)));

// Constructor $Is
axiom (forall a#35#0#0: Box :: 
  { $Is(#M1.Expression.exprIdentifier(a#35#0#0), Tclass.M1.Expression()) } 
  $Is(#M1.Expression.exprIdentifier(a#35#0#0), Tclass.M1.Expression())
     <==> $IsBox(a#35#0#0, Tclass.M1.Identifier()));

// Constructor $IsAlloc
axiom (forall a#35#0#0: Box, $h: Heap :: 
  { $IsAlloc(#M1.Expression.exprIdentifier(a#35#0#0), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Expression.exprIdentifier(a#35#0#0), Tclass.M1.Expression(), $h)
       <==> $IsAllocBox(a#35#0#0, Tclass.M1.Identifier(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(M1.Expression.id(d), Tclass.M1.Identifier(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprIdentifier_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAllocBox(M1.Expression.id(d), Tclass.M1.Identifier(), $h));

// Constructor literal
axiom (forall a#36#0#0: Box :: 
  { #M1.Expression.exprIdentifier(Lit(a#36#0#0)) } 
  #M1.Expression.exprIdentifier(Lit(a#36#0#0))
     == Lit(#M1.Expression.exprIdentifier(a#36#0#0)));

function M1.Expression.id(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#37#0#0: Box :: 
  { #M1.Expression.exprIdentifier(a#37#0#0) } 
  M1.Expression.id(#M1.Expression.exprIdentifier(a#37#0#0)) == a#37#0#0);

// Constructor function declaration
function #M1.Expression.exprIf(DatatypeType, DatatypeType, DatatypeType) : DatatypeType;

const unique ##M1.Expression.exprIf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#38#0#0: DatatypeType, a#38#1#0: DatatypeType, a#38#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(a#38#0#0, a#38#1#0, a#38#2#0) } 
  DatatypeCtorId(#M1.Expression.exprIf(a#38#0#0, a#38#1#0, a#38#2#0))
     == ##M1.Expression.exprIf);
}

function M1.Expression.exprIf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprIf_q(d) } 
  M1.Expression.exprIf_q(d) <==> DatatypeCtorId(d) == ##M1.Expression.exprIf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprIf_q(d) } 
  M1.Expression.exprIf_q(d)
     ==> (exists a#39#0#0: DatatypeType, a#39#1#0: DatatypeType, a#39#2#0: DatatypeType :: 
      d == #M1.Expression.exprIf(a#39#0#0, a#39#1#0, a#39#2#0)));

// Constructor $Is
axiom (forall a#40#0#0: DatatypeType, a#40#1#0: DatatypeType, a#40#2#0: DatatypeType :: 
  { $Is(#M1.Expression.exprIf(a#40#0#0, a#40#1#0, a#40#2#0), Tclass.M1.Expression()) } 
  $Is(#M1.Expression.exprIf(a#40#0#0, a#40#1#0, a#40#2#0), Tclass.M1.Expression())
     <==> $Is(a#40#0#0, Tclass.M1.Expression())
       && $Is(a#40#1#0, Tclass.M1.Expression())
       && $Is(a#40#2#0, Tclass.M1.Expression()));

// Constructor $IsAlloc
axiom (forall a#40#0#0: DatatypeType, a#40#1#0: DatatypeType, a#40#2#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Expression.exprIf(a#40#0#0, a#40#1#0, a#40#2#0), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Expression.exprIf(a#40#0#0, a#40#1#0, a#40#2#0), Tclass.M1.Expression(), $h)
       <==> $IsAlloc(a#40#0#0, Tclass.M1.Expression(), $h)
         && $IsAlloc(a#40#1#0, Tclass.M1.Expression(), $h)
         && $IsAlloc(a#40#2#0, Tclass.M1.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.cond(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprIf_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.cond(d), Tclass.M1.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.ifTrue(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprIf_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.ifTrue(d), Tclass.M1.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.ifFalse(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprIf_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.ifFalse(d), Tclass.M1.Expression(), $h));

// Constructor literal
axiom (forall a#41#0#0: DatatypeType, a#41#1#0: DatatypeType, a#41#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(Lit(a#41#0#0), Lit(a#41#1#0), Lit(a#41#2#0)) } 
  #M1.Expression.exprIf(Lit(a#41#0#0), Lit(a#41#1#0), Lit(a#41#2#0))
     == Lit(#M1.Expression.exprIf(a#41#0#0, a#41#1#0, a#41#2#0)));

function M1.Expression.cond(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#42#0#0: DatatypeType, a#42#1#0: DatatypeType, a#42#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(a#42#0#0, a#42#1#0, a#42#2#0) } 
  M1.Expression.cond(#M1.Expression.exprIf(a#42#0#0, a#42#1#0, a#42#2#0))
     == a#42#0#0);

// Inductive rank
axiom (forall a#43#0#0: DatatypeType, a#43#1#0: DatatypeType, a#43#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(a#43#0#0, a#43#1#0, a#43#2#0) } 
  DtRank(a#43#0#0) < DtRank(#M1.Expression.exprIf(a#43#0#0, a#43#1#0, a#43#2#0)));

function M1.Expression.ifTrue(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#44#0#0: DatatypeType, a#44#1#0: DatatypeType, a#44#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(a#44#0#0, a#44#1#0, a#44#2#0) } 
  M1.Expression.ifTrue(#M1.Expression.exprIf(a#44#0#0, a#44#1#0, a#44#2#0))
     == a#44#1#0);

// Inductive rank
axiom (forall a#45#0#0: DatatypeType, a#45#1#0: DatatypeType, a#45#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(a#45#0#0, a#45#1#0, a#45#2#0) } 
  DtRank(a#45#1#0) < DtRank(#M1.Expression.exprIf(a#45#0#0, a#45#1#0, a#45#2#0)));

function M1.Expression.ifFalse(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#46#0#0: DatatypeType, a#46#1#0: DatatypeType, a#46#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(a#46#0#0, a#46#1#0, a#46#2#0) } 
  M1.Expression.ifFalse(#M1.Expression.exprIf(a#46#0#0, a#46#1#0, a#46#2#0))
     == a#46#2#0);

// Inductive rank
axiom (forall a#47#0#0: DatatypeType, a#47#1#0: DatatypeType, a#47#2#0: DatatypeType :: 
  { #M1.Expression.exprIf(a#47#0#0, a#47#1#0, a#47#2#0) } 
  DtRank(a#47#2#0) < DtRank(#M1.Expression.exprIf(a#47#0#0, a#47#1#0, a#47#2#0)));

// Constructor function declaration
function #M1.Expression.exprAnd(DatatypeType, DatatypeType) : DatatypeType;

const unique ##M1.Expression.exprAnd: DtCtorId
uses {
// Constructor identifier
axiom (forall a#48#0#0: DatatypeType, a#48#1#0: DatatypeType :: 
  { #M1.Expression.exprAnd(a#48#0#0, a#48#1#0) } 
  DatatypeCtorId(#M1.Expression.exprAnd(a#48#0#0, a#48#1#0))
     == ##M1.Expression.exprAnd);
}

function M1.Expression.exprAnd_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprAnd_q(d) } 
  M1.Expression.exprAnd_q(d) <==> DatatypeCtorId(d) == ##M1.Expression.exprAnd);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprAnd_q(d) } 
  M1.Expression.exprAnd_q(d)
     ==> (exists a#49#0#0: DatatypeType, a#49#1#0: DatatypeType :: 
      d == #M1.Expression.exprAnd(a#49#0#0, a#49#1#0)));

// Constructor $Is
axiom (forall a#50#0#0: DatatypeType, a#50#1#0: DatatypeType :: 
  { $Is(#M1.Expression.exprAnd(a#50#0#0, a#50#1#0), Tclass.M1.Expression()) } 
  $Is(#M1.Expression.exprAnd(a#50#0#0, a#50#1#0), Tclass.M1.Expression())
     <==> $Is(a#50#0#0, Tclass.M1.Expression()) && $Is(a#50#1#0, Tclass.M1.Expression()));

// Constructor $IsAlloc
axiom (forall a#50#0#0: DatatypeType, a#50#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Expression.exprAnd(a#50#0#0, a#50#1#0), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Expression.exprAnd(a#50#0#0, a#50#1#0), Tclass.M1.Expression(), $h)
       <==> $IsAlloc(a#50#0#0, Tclass.M1.Expression(), $h)
         && $IsAlloc(a#50#1#0, Tclass.M1.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.conj0(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprAnd_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.conj0(d), Tclass.M1.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.conj1(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprAnd_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.conj1(d), Tclass.M1.Expression(), $h));

// Constructor literal
axiom (forall a#51#0#0: DatatypeType, a#51#1#0: DatatypeType :: 
  { #M1.Expression.exprAnd(Lit(a#51#0#0), Lit(a#51#1#0)) } 
  #M1.Expression.exprAnd(Lit(a#51#0#0), Lit(a#51#1#0))
     == Lit(#M1.Expression.exprAnd(a#51#0#0, a#51#1#0)));

function M1.Expression.conj0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#52#0#0: DatatypeType, a#52#1#0: DatatypeType :: 
  { #M1.Expression.exprAnd(a#52#0#0, a#52#1#0) } 
  M1.Expression.conj0(#M1.Expression.exprAnd(a#52#0#0, a#52#1#0)) == a#52#0#0);

// Inductive rank
axiom (forall a#53#0#0: DatatypeType, a#53#1#0: DatatypeType :: 
  { #M1.Expression.exprAnd(a#53#0#0, a#53#1#0) } 
  DtRank(a#53#0#0) < DtRank(#M1.Expression.exprAnd(a#53#0#0, a#53#1#0)));

function M1.Expression.conj1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#54#0#0: DatatypeType, a#54#1#0: DatatypeType :: 
  { #M1.Expression.exprAnd(a#54#0#0, a#54#1#0) } 
  M1.Expression.conj1(#M1.Expression.exprAnd(a#54#0#0, a#54#1#0)) == a#54#1#0);

// Inductive rank
axiom (forall a#55#0#0: DatatypeType, a#55#1#0: DatatypeType :: 
  { #M1.Expression.exprAnd(a#55#0#0, a#55#1#0) } 
  DtRank(a#55#1#0) < DtRank(#M1.Expression.exprAnd(a#55#0#0, a#55#1#0)));

// Constructor function declaration
function #M1.Expression.exprOr(DatatypeType, DatatypeType) : DatatypeType;

const unique ##M1.Expression.exprOr: DtCtorId
uses {
// Constructor identifier
axiom (forall a#56#0#0: DatatypeType, a#56#1#0: DatatypeType :: 
  { #M1.Expression.exprOr(a#56#0#0, a#56#1#0) } 
  DatatypeCtorId(#M1.Expression.exprOr(a#56#0#0, a#56#1#0))
     == ##M1.Expression.exprOr);
}

function M1.Expression.exprOr_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprOr_q(d) } 
  M1.Expression.exprOr_q(d) <==> DatatypeCtorId(d) == ##M1.Expression.exprOr);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprOr_q(d) } 
  M1.Expression.exprOr_q(d)
     ==> (exists a#57#0#0: DatatypeType, a#57#1#0: DatatypeType :: 
      d == #M1.Expression.exprOr(a#57#0#0, a#57#1#0)));

// Constructor $Is
axiom (forall a#58#0#0: DatatypeType, a#58#1#0: DatatypeType :: 
  { $Is(#M1.Expression.exprOr(a#58#0#0, a#58#1#0), Tclass.M1.Expression()) } 
  $Is(#M1.Expression.exprOr(a#58#0#0, a#58#1#0), Tclass.M1.Expression())
     <==> $Is(a#58#0#0, Tclass.M1.Expression()) && $Is(a#58#1#0, Tclass.M1.Expression()));

// Constructor $IsAlloc
axiom (forall a#58#0#0: DatatypeType, a#58#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Expression.exprOr(a#58#0#0, a#58#1#0), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Expression.exprOr(a#58#0#0, a#58#1#0), Tclass.M1.Expression(), $h)
       <==> $IsAlloc(a#58#0#0, Tclass.M1.Expression(), $h)
         && $IsAlloc(a#58#1#0, Tclass.M1.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.disj0(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprOr_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.disj0(d), Tclass.M1.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.disj1(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprOr_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.disj1(d), Tclass.M1.Expression(), $h));

// Constructor literal
axiom (forall a#59#0#0: DatatypeType, a#59#1#0: DatatypeType :: 
  { #M1.Expression.exprOr(Lit(a#59#0#0), Lit(a#59#1#0)) } 
  #M1.Expression.exprOr(Lit(a#59#0#0), Lit(a#59#1#0))
     == Lit(#M1.Expression.exprOr(a#59#0#0, a#59#1#0)));

function M1.Expression.disj0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#60#0#0: DatatypeType, a#60#1#0: DatatypeType :: 
  { #M1.Expression.exprOr(a#60#0#0, a#60#1#0) } 
  M1.Expression.disj0(#M1.Expression.exprOr(a#60#0#0, a#60#1#0)) == a#60#0#0);

// Inductive rank
axiom (forall a#61#0#0: DatatypeType, a#61#1#0: DatatypeType :: 
  { #M1.Expression.exprOr(a#61#0#0, a#61#1#0) } 
  DtRank(a#61#0#0) < DtRank(#M1.Expression.exprOr(a#61#0#0, a#61#1#0)));

function M1.Expression.disj1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#62#0#0: DatatypeType, a#62#1#0: DatatypeType :: 
  { #M1.Expression.exprOr(a#62#0#0, a#62#1#0) } 
  M1.Expression.disj1(#M1.Expression.exprOr(a#62#0#0, a#62#1#0)) == a#62#1#0);

// Inductive rank
axiom (forall a#63#0#0: DatatypeType, a#63#1#0: DatatypeType :: 
  { #M1.Expression.exprOr(a#63#0#0, a#63#1#0) } 
  DtRank(a#63#1#0) < DtRank(#M1.Expression.exprOr(a#63#0#0, a#63#1#0)));

// Constructor function declaration
function #M1.Expression.exprInvocation(DatatypeType, Seq) : DatatypeType;

const unique ##M1.Expression.exprInvocation: DtCtorId
uses {
// Constructor identifier
axiom (forall a#64#0#0: DatatypeType, a#64#1#0: Seq :: 
  { #M1.Expression.exprInvocation(a#64#0#0, a#64#1#0) } 
  DatatypeCtorId(#M1.Expression.exprInvocation(a#64#0#0, a#64#1#0))
     == ##M1.Expression.exprInvocation);
}

function M1.Expression.exprInvocation_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprInvocation_q(d) } 
  M1.Expression.exprInvocation_q(d)
     <==> DatatypeCtorId(d) == ##M1.Expression.exprInvocation);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprInvocation_q(d) } 
  M1.Expression.exprInvocation_q(d)
     ==> (exists a#65#0#0: DatatypeType, a#65#1#0: Seq :: 
      d == #M1.Expression.exprInvocation(a#65#0#0, a#65#1#0)));

// Constructor $Is
axiom (forall a#66#0#0: DatatypeType, a#66#1#0: Seq :: 
  { $Is(#M1.Expression.exprInvocation(a#66#0#0, a#66#1#0), Tclass.M1.Expression()) } 
  $Is(#M1.Expression.exprInvocation(a#66#0#0, a#66#1#0), Tclass.M1.Expression())
     <==> $Is(a#66#0#0, Tclass.M1.Expression())
       && $Is(a#66#1#0, TSeq(Tclass.M1.Expression())));

// Constructor $IsAlloc
axiom (forall a#66#0#0: DatatypeType, a#66#1#0: Seq, $h: Heap :: 
  { $IsAlloc(#M1.Expression.exprInvocation(a#66#0#0, a#66#1#0), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Expression.exprInvocation(a#66#0#0, a#66#1#0), Tclass.M1.Expression(), $h)
       <==> $IsAlloc(a#66#0#0, Tclass.M1.Expression(), $h)
         && $IsAlloc(a#66#1#0, TSeq(Tclass.M1.Expression()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.fun(d), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprInvocation_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.fun(d), Tclass.M1.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.args(d), TSeq(Tclass.M1.Expression()), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprInvocation_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.args(d), TSeq(Tclass.M1.Expression()), $h));

// Constructor literal
axiom (forall a#67#0#0: DatatypeType, a#67#1#0: Seq :: 
  { #M1.Expression.exprInvocation(Lit(a#67#0#0), Lit(a#67#1#0)) } 
  #M1.Expression.exprInvocation(Lit(a#67#0#0), Lit(a#67#1#0))
     == Lit(#M1.Expression.exprInvocation(a#67#0#0, a#67#1#0)));

function M1.Expression.fun(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#68#0#0: DatatypeType, a#68#1#0: Seq :: 
  { #M1.Expression.exprInvocation(a#68#0#0, a#68#1#0) } 
  M1.Expression.fun(#M1.Expression.exprInvocation(a#68#0#0, a#68#1#0)) == a#68#0#0);

// Inductive rank
axiom (forall a#69#0#0: DatatypeType, a#69#1#0: Seq :: 
  { #M1.Expression.exprInvocation(a#69#0#0, a#69#1#0) } 
  DtRank(a#69#0#0) < DtRank(#M1.Expression.exprInvocation(a#69#0#0, a#69#1#0)));

function M1.Expression.args(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#70#0#0: DatatypeType, a#70#1#0: Seq :: 
  { #M1.Expression.exprInvocation(a#70#0#0, a#70#1#0) } 
  M1.Expression.args(#M1.Expression.exprInvocation(a#70#0#0, a#70#1#0))
     == a#70#1#0);

// Inductive seq element rank
axiom (forall a#71#0#0: DatatypeType, a#71#1#0: Seq, i: int :: 
  { Seq#Index(a#71#1#0, i), #M1.Expression.exprInvocation(a#71#0#0, a#71#1#0) } 
  0 <= i && i < Seq#Length(a#71#1#0)
     ==> DtRank($Unbox(Seq#Index(a#71#1#0, i)): DatatypeType)
       < DtRank(#M1.Expression.exprInvocation(a#71#0#0, a#71#1#0)));

// Inductive seq rank
axiom (forall a#72#0#0: DatatypeType, a#72#1#0: Seq :: 
  { #M1.Expression.exprInvocation(a#72#0#0, a#72#1#0) } 
  Seq#Rank(a#72#1#0) < DtRank(#M1.Expression.exprInvocation(a#72#0#0, a#72#1#0)));

// Constructor function declaration
function #M1.Expression.exprError(DatatypeType) : DatatypeType;

const unique ##M1.Expression.exprError: DtCtorId
uses {
// Constructor identifier
axiom (forall a#73#0#0: DatatypeType :: 
  { #M1.Expression.exprError(a#73#0#0) } 
  DatatypeCtorId(#M1.Expression.exprError(a#73#0#0)) == ##M1.Expression.exprError);
}

function M1.Expression.exprError_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprError_q(d) } 
  M1.Expression.exprError_q(d) <==> DatatypeCtorId(d) == ##M1.Expression.exprError);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprError_q(d) } 
  M1.Expression.exprError_q(d)
     ==> (exists a#74#0#0: DatatypeType :: d == #M1.Expression.exprError(a#74#0#0)));

function Tclass.M1.Reason() : Ty
uses {
// Tclass.M1.Reason Tag
axiom Tag(Tclass.M1.Reason()) == Tagclass.M1.Reason
   && TagFamily(Tclass.M1.Reason()) == tytagFamily$Reason;
}

const unique Tagclass.M1.Reason: TyTag;

// Box/unbox axiom for Tclass.M1.Reason
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M1.Reason()) } 
  $IsBox(bx, Tclass.M1.Reason())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M1.Reason()));

// Constructor $Is
axiom (forall a#75#0#0: DatatypeType :: 
  { $Is(#M1.Expression.exprError(a#75#0#0), Tclass.M1.Expression()) } 
  $Is(#M1.Expression.exprError(a#75#0#0), Tclass.M1.Expression())
     <==> $Is(a#75#0#0, Tclass.M1.Reason()));

// Constructor $IsAlloc
axiom (forall a#75#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Expression.exprError(a#75#0#0), Tclass.M1.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Expression.exprError(a#75#0#0), Tclass.M1.Expression(), $h)
       <==> $IsAlloc(a#75#0#0, Tclass.M1.Reason(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Expression.r(d), Tclass.M1.Reason(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Expression.exprError_q(d)
       && $IsAlloc(d, Tclass.M1.Expression(), $h)
     ==> $IsAlloc(M1.Expression.r(d), Tclass.M1.Reason(), $h));

// Constructor literal
axiom (forall a#76#0#0: DatatypeType :: 
  { #M1.Expression.exprError(Lit(a#76#0#0)) } 
  #M1.Expression.exprError(Lit(a#76#0#0))
     == Lit(#M1.Expression.exprError(a#76#0#0)));

function M1.Expression.r(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#77#0#0: DatatypeType :: 
  { #M1.Expression.exprError(a#77#0#0) } 
  M1.Expression.r(#M1.Expression.exprError(a#77#0#0)) == a#77#0#0);

// Inductive rank
axiom (forall a#78#0#0: DatatypeType :: 
  { #M1.Expression.exprError(a#78#0#0) } 
  DtRank(a#78#0#0) < DtRank(#M1.Expression.exprError(a#78#0#0)));

// Depth-one case-split function
function $IsA#M1.Expression(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.Expression(d) } 
  $IsA#M1.Expression(d)
     ==> M1.Expression.exprLiteral_q(d)
       || M1.Expression.exprIdentifier_q(d)
       || M1.Expression.exprIf_q(d)
       || M1.Expression.exprAnd_q(d)
       || M1.Expression.exprOr_q(d)
       || M1.Expression.exprInvocation_q(d)
       || M1.Expression.exprError_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M1.Expression.exprError_q(d), $Is(d, Tclass.M1.Expression()) } 
    { M1.Expression.exprInvocation_q(d), $Is(d, Tclass.M1.Expression()) } 
    { M1.Expression.exprOr_q(d), $Is(d, Tclass.M1.Expression()) } 
    { M1.Expression.exprAnd_q(d), $Is(d, Tclass.M1.Expression()) } 
    { M1.Expression.exprIf_q(d), $Is(d, Tclass.M1.Expression()) } 
    { M1.Expression.exprIdentifier_q(d), $Is(d, Tclass.M1.Expression()) } 
    { M1.Expression.exprLiteral_q(d), $Is(d, Tclass.M1.Expression()) } 
  $Is(d, Tclass.M1.Expression())
     ==> M1.Expression.exprLiteral_q(d)
       || M1.Expression.exprIdentifier_q(d)
       || M1.Expression.exprIf_q(d)
       || M1.Expression.exprAnd_q(d)
       || M1.Expression.exprOr_q(d)
       || M1.Expression.exprInvocation_q(d)
       || M1.Expression.exprError_q(d));

// Datatype extensional equality declaration
function M1.Expression#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.Expression.exprLiteral
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b), M1.Expression.exprLiteral_q(a) } 
    { M1.Expression#Equal(a, b), M1.Expression.exprLiteral_q(b) } 
  M1.Expression.exprLiteral_q(a) && M1.Expression.exprLiteral_q(b)
     ==> (M1.Expression#Equal(a, b)
       <==> M1.Literal#Equal(M1.Expression.lit(a), M1.Expression.lit(b))));

// Datatype extensional equality definition: #M1.Expression.exprIdentifier
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b), M1.Expression.exprIdentifier_q(a) } 
    { M1.Expression#Equal(a, b), M1.Expression.exprIdentifier_q(b) } 
  M1.Expression.exprIdentifier_q(a) && M1.Expression.exprIdentifier_q(b)
     ==> (M1.Expression#Equal(a, b) <==> M1.Expression.id(a) == M1.Expression.id(b)));

// Datatype extensional equality definition: #M1.Expression.exprIf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b), M1.Expression.exprIf_q(a) } 
    { M1.Expression#Equal(a, b), M1.Expression.exprIf_q(b) } 
  M1.Expression.exprIf_q(a) && M1.Expression.exprIf_q(b)
     ==> (M1.Expression#Equal(a, b)
       <==> M1.Expression#Equal(M1.Expression.cond(a), M1.Expression.cond(b))
         && M1.Expression#Equal(M1.Expression.ifTrue(a), M1.Expression.ifTrue(b))
         && M1.Expression#Equal(M1.Expression.ifFalse(a), M1.Expression.ifFalse(b))));

// Datatype extensional equality definition: #M1.Expression.exprAnd
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b), M1.Expression.exprAnd_q(a) } 
    { M1.Expression#Equal(a, b), M1.Expression.exprAnd_q(b) } 
  M1.Expression.exprAnd_q(a) && M1.Expression.exprAnd_q(b)
     ==> (M1.Expression#Equal(a, b)
       <==> M1.Expression#Equal(M1.Expression.conj0(a), M1.Expression.conj0(b))
         && M1.Expression#Equal(M1.Expression.conj1(a), M1.Expression.conj1(b))));

// Datatype extensional equality definition: #M1.Expression.exprOr
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b), M1.Expression.exprOr_q(a) } 
    { M1.Expression#Equal(a, b), M1.Expression.exprOr_q(b) } 
  M1.Expression.exprOr_q(a) && M1.Expression.exprOr_q(b)
     ==> (M1.Expression#Equal(a, b)
       <==> M1.Expression#Equal(M1.Expression.disj0(a), M1.Expression.disj0(b))
         && M1.Expression#Equal(M1.Expression.disj1(a), M1.Expression.disj1(b))));

// Datatype extensional equality definition: #M1.Expression.exprInvocation
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b), M1.Expression.exprInvocation_q(a) } 
    { M1.Expression#Equal(a, b), M1.Expression.exprInvocation_q(b) } 
  M1.Expression.exprInvocation_q(a) && M1.Expression.exprInvocation_q(b)
     ==> (M1.Expression#Equal(a, b)
       <==> M1.Expression#Equal(M1.Expression.fun(a), M1.Expression.fun(b))
         && Seq#Equal(M1.Expression.args(a), M1.Expression.args(b))));

// Datatype extensional equality definition: #M1.Expression.exprError
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b), M1.Expression.exprError_q(a) } 
    { M1.Expression#Equal(a, b), M1.Expression.exprError_q(b) } 
  M1.Expression.exprError_q(a) && M1.Expression.exprError_q(b)
     ==> (M1.Expression#Equal(a, b)
       <==> M1.Reason#Equal(M1.Expression.r(a), M1.Expression.r(b))));

// Datatype extensionality axiom: M1.Expression
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Expression#Equal(a, b) } 
  M1.Expression#Equal(a, b) <==> a == b);

const unique class.M1.Expression: ClassName;

// Constructor function declaration
function #M1.Literal.litTrue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litTrue()) == ##M1.Literal.litTrue;
// Constructor $Is
axiom $Is(#M1.Literal.litTrue(), Tclass.M1.Literal());
// Constructor literal
axiom #M1.Literal.litTrue() == Lit(#M1.Literal.litTrue());
}

const unique ##M1.Literal.litTrue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litTrue()) == ##M1.Literal.litTrue;
}

function M1.Literal.litTrue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litTrue_q(d) } 
  M1.Literal.litTrue_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litTrue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litTrue_q(d) } 
  M1.Literal.litTrue_q(d) ==> d == #M1.Literal.litTrue());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M1.Literal.litTrue(), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#M1.Literal.litTrue(), Tclass.M1.Literal(), $h));

// Constructor function declaration
function #M1.Literal.litFalse() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litFalse()) == ##M1.Literal.litFalse;
// Constructor $Is
axiom $Is(#M1.Literal.litFalse(), Tclass.M1.Literal());
// Constructor literal
axiom #M1.Literal.litFalse() == Lit(#M1.Literal.litFalse());
}

const unique ##M1.Literal.litFalse: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litFalse()) == ##M1.Literal.litFalse;
}

function M1.Literal.litFalse_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litFalse_q(d) } 
  M1.Literal.litFalse_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litFalse);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litFalse_q(d) } 
  M1.Literal.litFalse_q(d) ==> d == #M1.Literal.litFalse());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M1.Literal.litFalse(), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#M1.Literal.litFalse(), Tclass.M1.Literal(), $h));

// Constructor function declaration
function #M1.Literal.litUndefined() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litUndefined()) == ##M1.Literal.litUndefined;
// Constructor $Is
axiom $Is(#M1.Literal.litUndefined(), Tclass.M1.Literal());
// Constructor literal
axiom #M1.Literal.litUndefined() == Lit(#M1.Literal.litUndefined());
}

const unique ##M1.Literal.litUndefined: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litUndefined()) == ##M1.Literal.litUndefined;
}

function M1.Literal.litUndefined_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litUndefined_q(d) } 
  M1.Literal.litUndefined_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litUndefined);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litUndefined_q(d) } 
  M1.Literal.litUndefined_q(d) ==> d == #M1.Literal.litUndefined());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M1.Literal.litUndefined(), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#M1.Literal.litUndefined(), Tclass.M1.Literal(), $h));

// Constructor function declaration
function #M1.Literal.litNull() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litNull()) == ##M1.Literal.litNull;
// Constructor $Is
axiom $Is(#M1.Literal.litNull(), Tclass.M1.Literal());
// Constructor literal
axiom #M1.Literal.litNull() == Lit(#M1.Literal.litNull());
}

const unique ##M1.Literal.litNull: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Literal.litNull()) == ##M1.Literal.litNull;
}

function M1.Literal.litNull_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litNull_q(d) } 
  M1.Literal.litNull_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litNull);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litNull_q(d) } 
  M1.Literal.litNull_q(d) ==> d == #M1.Literal.litNull());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M1.Literal.litNull(), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#M1.Literal.litNull(), Tclass.M1.Literal(), $h));

// Constructor function declaration
function #M1.Literal.litNumber(int) : DatatypeType;

const unique ##M1.Literal.litNumber: DtCtorId
uses {
// Constructor identifier
axiom (forall a#95#0#0: int :: 
  { #M1.Literal.litNumber(a#95#0#0) } 
  DatatypeCtorId(#M1.Literal.litNumber(a#95#0#0)) == ##M1.Literal.litNumber);
}

function M1.Literal.litNumber_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litNumber_q(d) } 
  M1.Literal.litNumber_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litNumber);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litNumber_q(d) } 
  M1.Literal.litNumber_q(d)
     ==> (exists a#96#0#0: int :: d == #M1.Literal.litNumber(a#96#0#0)));

// Constructor $Is
axiom (forall a#97#0#0: int :: 
  { $Is(#M1.Literal.litNumber(a#97#0#0), Tclass.M1.Literal()) } 
  $Is(#M1.Literal.litNumber(a#97#0#0), Tclass.M1.Literal())
     <==> $Is(a#97#0#0, TInt));

// Constructor $IsAlloc
axiom (forall a#97#0#0: int, $h: Heap :: 
  { $IsAlloc(#M1.Literal.litNumber(a#97#0#0), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Literal.litNumber(a#97#0#0), Tclass.M1.Literal(), $h)
       <==> $IsAlloc(a#97#0#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Literal.num(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      M1.Literal.litNumber_q(d)
       && $IsAlloc(d, Tclass.M1.Literal(), $h)
     ==> $IsAlloc(M1.Literal.num(d), TInt, $h));

// Constructor literal
axiom (forall a#98#0#0: int :: 
  { #M1.Literal.litNumber(LitInt(a#98#0#0)) } 
  #M1.Literal.litNumber(LitInt(a#98#0#0)) == Lit(#M1.Literal.litNumber(a#98#0#0)));

function M1.Literal.num(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#99#0#0: int :: 
  { #M1.Literal.litNumber(a#99#0#0) } 
  M1.Literal.num(#M1.Literal.litNumber(a#99#0#0)) == a#99#0#0);

// Constructor function declaration
function #M1.Literal.litString(Seq) : DatatypeType;

const unique ##M1.Literal.litString: DtCtorId
uses {
// Constructor identifier
axiom (forall a#100#0#0: Seq :: 
  { #M1.Literal.litString(a#100#0#0) } 
  DatatypeCtorId(#M1.Literal.litString(a#100#0#0)) == ##M1.Literal.litString);
}

function M1.Literal.litString_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litString_q(d) } 
  M1.Literal.litString_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litString);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litString_q(d) } 
  M1.Literal.litString_q(d)
     ==> (exists a#101#0#0: Seq :: d == #M1.Literal.litString(a#101#0#0)));

// Constructor $Is
axiom (forall a#102#0#0: Seq :: 
  { $Is(#M1.Literal.litString(a#102#0#0), Tclass.M1.Literal()) } 
  $Is(#M1.Literal.litString(a#102#0#0), Tclass.M1.Literal())
     <==> $Is(a#102#0#0, TSeq(TChar)));

// Constructor $IsAlloc
axiom (forall a#102#0#0: Seq, $h: Heap :: 
  { $IsAlloc(#M1.Literal.litString(a#102#0#0), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Literal.litString(a#102#0#0), Tclass.M1.Literal(), $h)
       <==> $IsAlloc(a#102#0#0, TSeq(TChar), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Literal.str(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Literal.litString_q(d)
       && $IsAlloc(d, Tclass.M1.Literal(), $h)
     ==> $IsAlloc(M1.Literal.str(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#103#0#0: Seq :: 
  { #M1.Literal.litString(Lit(a#103#0#0)) } 
  #M1.Literal.litString(Lit(a#103#0#0)) == Lit(#M1.Literal.litString(a#103#0#0)));

function M1.Literal.str(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#104#0#0: Seq :: 
  { #M1.Literal.litString(a#104#0#0) } 
  M1.Literal.str(#M1.Literal.litString(a#104#0#0)) == a#104#0#0);

// Inductive seq element rank
axiom (forall a#105#0#0: Seq, i: int :: 
  { Seq#Index(a#105#0#0, i), #M1.Literal.litString(a#105#0#0) } 
  0 <= i && i < Seq#Length(a#105#0#0)
     ==> DtRank($Unbox(Seq#Index(a#105#0#0, i)): DatatypeType)
       < DtRank(#M1.Literal.litString(a#105#0#0)));

// Inductive seq rank
axiom (forall a#106#0#0: Seq :: 
  { #M1.Literal.litString(a#106#0#0) } 
  Seq#Rank(a#106#0#0) < DtRank(#M1.Literal.litString(a#106#0#0)));

// Constructor function declaration
function #M1.Literal.litPrimitive(DatatypeType) : DatatypeType;

const unique ##M1.Literal.litPrimitive: DtCtorId
uses {
// Constructor identifier
axiom (forall a#107#0#0: DatatypeType :: 
  { #M1.Literal.litPrimitive(a#107#0#0) } 
  DatatypeCtorId(#M1.Literal.litPrimitive(a#107#0#0)) == ##M1.Literal.litPrimitive);
}

function M1.Literal.litPrimitive_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litPrimitive_q(d) } 
  M1.Literal.litPrimitive_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litPrimitive);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litPrimitive_q(d) } 
  M1.Literal.litPrimitive_q(d)
     ==> (exists a#108#0#0: DatatypeType :: d == #M1.Literal.litPrimitive(a#108#0#0)));

// Constructor $Is
axiom (forall a#109#0#0: DatatypeType :: 
  { $Is(#M1.Literal.litPrimitive(a#109#0#0), Tclass.M1.Literal()) } 
  $Is(#M1.Literal.litPrimitive(a#109#0#0), Tclass.M1.Literal())
     <==> $Is(a#109#0#0, Tclass.M1.Primitive()));

// Constructor $IsAlloc
axiom (forall a#109#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M1.Literal.litPrimitive(a#109#0#0), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Literal.litPrimitive(a#109#0#0), Tclass.M1.Literal(), $h)
       <==> $IsAlloc(a#109#0#0, Tclass.M1.Primitive(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Literal.prim(d), Tclass.M1.Primitive(), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Literal.litPrimitive_q(d)
       && $IsAlloc(d, Tclass.M1.Literal(), $h)
     ==> $IsAlloc(M1.Literal.prim(d), Tclass.M1.Primitive(), $h));

// Constructor literal
axiom (forall a#110#0#0: DatatypeType :: 
  { #M1.Literal.litPrimitive(Lit(a#110#0#0)) } 
  #M1.Literal.litPrimitive(Lit(a#110#0#0))
     == Lit(#M1.Literal.litPrimitive(a#110#0#0)));

function M1.Literal.prim(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#111#0#0: DatatypeType :: 
  { #M1.Literal.litPrimitive(a#111#0#0) } 
  M1.Literal.prim(#M1.Literal.litPrimitive(a#111#0#0)) == a#111#0#0);

// Inductive rank
axiom (forall a#112#0#0: DatatypeType :: 
  { #M1.Literal.litPrimitive(a#112#0#0) } 
  DtRank(a#112#0#0) < DtRank(#M1.Literal.litPrimitive(a#112#0#0)));

// Constructor function declaration
function #M1.Literal.litArrOfPaths(Set) : DatatypeType;

const unique ##M1.Literal.litArrOfPaths: DtCtorId
uses {
// Constructor identifier
axiom (forall a#113#0#0: Set :: 
  { #M1.Literal.litArrOfPaths(a#113#0#0) } 
  DatatypeCtorId(#M1.Literal.litArrOfPaths(a#113#0#0))
     == ##M1.Literal.litArrOfPaths);
}

function M1.Literal.litArrOfPaths_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litArrOfPaths_q(d) } 
  M1.Literal.litArrOfPaths_q(d)
     <==> DatatypeCtorId(d) == ##M1.Literal.litArrOfPaths);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litArrOfPaths_q(d) } 
  M1.Literal.litArrOfPaths_q(d)
     ==> (exists a#114#0#0: Set :: d == #M1.Literal.litArrOfPaths(a#114#0#0)));

// Constructor $Is
axiom (forall a#115#0#0: Set :: 
  { $Is(#M1.Literal.litArrOfPaths(a#115#0#0), Tclass.M1.Literal()) } 
  $Is(#M1.Literal.litArrOfPaths(a#115#0#0), Tclass.M1.Literal())
     <==> $Is(a#115#0#0, TSet(Tclass.M1.Path())));

// Constructor $IsAlloc
axiom (forall a#115#0#0: Set, $h: Heap :: 
  { $IsAlloc(#M1.Literal.litArrOfPaths(a#115#0#0), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Literal.litArrOfPaths(a#115#0#0), Tclass.M1.Literal(), $h)
       <==> $IsAlloc(a#115#0#0, TSet(Tclass.M1.Path()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Literal.paths(d), TSet(Tclass.M1.Path()), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Literal.litArrOfPaths_q(d)
       && $IsAlloc(d, Tclass.M1.Literal(), $h)
     ==> $IsAlloc(M1.Literal.paths(d), TSet(Tclass.M1.Path()), $h));

// Constructor literal
axiom (forall a#116#0#0: Set :: 
  { #M1.Literal.litArrOfPaths(Lit(a#116#0#0)) } 
  #M1.Literal.litArrOfPaths(Lit(a#116#0#0))
     == Lit(#M1.Literal.litArrOfPaths(a#116#0#0)));

function M1.Literal.paths(DatatypeType) : Set;

// Constructor injectivity
axiom (forall a#117#0#0: Set :: 
  { #M1.Literal.litArrOfPaths(a#117#0#0) } 
  M1.Literal.paths(#M1.Literal.litArrOfPaths(a#117#0#0)) == a#117#0#0);

// Inductive set element rank
axiom (forall a#118#0#0: Set, d: DatatypeType :: 
  { Set#IsMember(a#118#0#0, $Box(d)), #M1.Literal.litArrOfPaths(a#118#0#0) } 
  Set#IsMember(a#118#0#0, $Box(d))
     ==> DtRank(d) < DtRank(#M1.Literal.litArrOfPaths(a#118#0#0)));

// Constructor function declaration
function #M1.Literal.litArrOfStrings(Set) : DatatypeType;

const unique ##M1.Literal.litArrOfStrings: DtCtorId
uses {
// Constructor identifier
axiom (forall a#119#0#0: Set :: 
  { #M1.Literal.litArrOfStrings(a#119#0#0) } 
  DatatypeCtorId(#M1.Literal.litArrOfStrings(a#119#0#0))
     == ##M1.Literal.litArrOfStrings);
}

function M1.Literal.litArrOfStrings_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litArrOfStrings_q(d) } 
  M1.Literal.litArrOfStrings_q(d)
     <==> DatatypeCtorId(d) == ##M1.Literal.litArrOfStrings);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litArrOfStrings_q(d) } 
  M1.Literal.litArrOfStrings_q(d)
     ==> (exists a#120#0#0: Set :: d == #M1.Literal.litArrOfStrings(a#120#0#0)));

// Constructor $Is
axiom (forall a#121#0#0: Set :: 
  { $Is(#M1.Literal.litArrOfStrings(a#121#0#0), Tclass.M1.Literal()) } 
  $Is(#M1.Literal.litArrOfStrings(a#121#0#0), Tclass.M1.Literal())
     <==> $Is(a#121#0#0, TSet(TSeq(TChar))));

// Constructor $IsAlloc
axiom (forall a#121#0#0: Set, $h: Heap :: 
  { $IsAlloc(#M1.Literal.litArrOfStrings(a#121#0#0), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Literal.litArrOfStrings(a#121#0#0), Tclass.M1.Literal(), $h)
       <==> $IsAlloc(a#121#0#0, TSet(TSeq(TChar)), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Literal.strs(d), TSet(TSeq(TChar)), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Literal.litArrOfStrings_q(d)
       && $IsAlloc(d, Tclass.M1.Literal(), $h)
     ==> $IsAlloc(M1.Literal.strs(d), TSet(TSeq(TChar)), $h));

// Constructor literal
axiom (forall a#122#0#0: Set :: 
  { #M1.Literal.litArrOfStrings(Lit(a#122#0#0)) } 
  #M1.Literal.litArrOfStrings(Lit(a#122#0#0))
     == Lit(#M1.Literal.litArrOfStrings(a#122#0#0)));

function M1.Literal.strs(DatatypeType) : Set;

// Constructor injectivity
axiom (forall a#123#0#0: Set :: 
  { #M1.Literal.litArrOfStrings(a#123#0#0) } 
  M1.Literal.strs(#M1.Literal.litArrOfStrings(a#123#0#0)) == a#123#0#0);

// Inductive set element rank
axiom (forall a#124#0#0: Set, d: DatatypeType :: 
  { Set#IsMember(a#124#0#0, $Box(d)), #M1.Literal.litArrOfStrings(a#124#0#0) } 
  Set#IsMember(a#124#0#0, $Box(d))
     ==> DtRank(d) < DtRank(#M1.Literal.litArrOfStrings(a#124#0#0)));

// Constructor function declaration
function #M1.Literal.litArray(Seq) : DatatypeType;

const unique ##M1.Literal.litArray: DtCtorId
uses {
// Constructor identifier
axiom (forall a#125#0#0: Seq :: 
  { #M1.Literal.litArray(a#125#0#0) } 
  DatatypeCtorId(#M1.Literal.litArray(a#125#0#0)) == ##M1.Literal.litArray);
}

function M1.Literal.litArray_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Literal.litArray_q(d) } 
  M1.Literal.litArray_q(d) <==> DatatypeCtorId(d) == ##M1.Literal.litArray);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Literal.litArray_q(d) } 
  M1.Literal.litArray_q(d)
     ==> (exists a#126#0#0: Seq :: d == #M1.Literal.litArray(a#126#0#0)));

// Constructor $Is
axiom (forall a#127#0#0: Seq :: 
  { $Is(#M1.Literal.litArray(a#127#0#0), Tclass.M1.Literal()) } 
  $Is(#M1.Literal.litArray(a#127#0#0), Tclass.M1.Literal())
     <==> $Is(a#127#0#0, TSeq(Tclass.M1.Expression())));

// Constructor $IsAlloc
axiom (forall a#127#0#0: Seq, $h: Heap :: 
  { $IsAlloc(#M1.Literal.litArray(a#127#0#0), Tclass.M1.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Literal.litArray(a#127#0#0), Tclass.M1.Literal(), $h)
       <==> $IsAlloc(a#127#0#0, TSeq(Tclass.M1.Expression()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M1.Literal.arr(d), TSeq(Tclass.M1.Expression()), $h) } 
  $IsGoodHeap($h)
       && 
      M1.Literal.litArray_q(d)
       && $IsAlloc(d, Tclass.M1.Literal(), $h)
     ==> $IsAlloc(M1.Literal.arr(d), TSeq(Tclass.M1.Expression()), $h));

// Constructor literal
axiom (forall a#128#0#0: Seq :: 
  { #M1.Literal.litArray(Lit(a#128#0#0)) } 
  #M1.Literal.litArray(Lit(a#128#0#0)) == Lit(#M1.Literal.litArray(a#128#0#0)));

function M1.Literal.arr(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#129#0#0: Seq :: 
  { #M1.Literal.litArray(a#129#0#0) } 
  M1.Literal.arr(#M1.Literal.litArray(a#129#0#0)) == a#129#0#0);

// Inductive seq element rank
axiom (forall a#130#0#0: Seq, i: int :: 
  { Seq#Index(a#130#0#0, i), #M1.Literal.litArray(a#130#0#0) } 
  0 <= i && i < Seq#Length(a#130#0#0)
     ==> DtRank($Unbox(Seq#Index(a#130#0#0, i)): DatatypeType)
       < DtRank(#M1.Literal.litArray(a#130#0#0)));

// Inductive seq rank
axiom (forall a#131#0#0: Seq :: 
  { #M1.Literal.litArray(a#131#0#0) } 
  Seq#Rank(a#131#0#0) < DtRank(#M1.Literal.litArray(a#131#0#0)));

// Depth-one case-split function
function $IsA#M1.Literal(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.Literal(d) } 
  $IsA#M1.Literal(d)
     ==> M1.Literal.litTrue_q(d)
       || M1.Literal.litFalse_q(d)
       || M1.Literal.litUndefined_q(d)
       || M1.Literal.litNull_q(d)
       || M1.Literal.litNumber_q(d)
       || M1.Literal.litString_q(d)
       || M1.Literal.litPrimitive_q(d)
       || M1.Literal.litArrOfPaths_q(d)
       || M1.Literal.litArrOfStrings_q(d)
       || M1.Literal.litArray_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M1.Literal.litArray_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litArrOfStrings_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litArrOfPaths_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litPrimitive_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litString_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litNumber_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litNull_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litUndefined_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litFalse_q(d), $Is(d, Tclass.M1.Literal()) } 
    { M1.Literal.litTrue_q(d), $Is(d, Tclass.M1.Literal()) } 
  $Is(d, Tclass.M1.Literal())
     ==> M1.Literal.litTrue_q(d)
       || M1.Literal.litFalse_q(d)
       || M1.Literal.litUndefined_q(d)
       || M1.Literal.litNull_q(d)
       || M1.Literal.litNumber_q(d)
       || M1.Literal.litString_q(d)
       || M1.Literal.litPrimitive_q(d)
       || M1.Literal.litArrOfPaths_q(d)
       || M1.Literal.litArrOfStrings_q(d)
       || M1.Literal.litArray_q(d));

// Datatype extensional equality declaration
function M1.Literal#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.Literal.litTrue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litTrue_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litTrue_q(b) } 
  M1.Literal.litTrue_q(a) && M1.Literal.litTrue_q(b) ==> M1.Literal#Equal(a, b));

// Datatype extensional equality definition: #M1.Literal.litFalse
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litFalse_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litFalse_q(b) } 
  M1.Literal.litFalse_q(a) && M1.Literal.litFalse_q(b) ==> M1.Literal#Equal(a, b));

// Datatype extensional equality definition: #M1.Literal.litUndefined
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litUndefined_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litUndefined_q(b) } 
  M1.Literal.litUndefined_q(a) && M1.Literal.litUndefined_q(b)
     ==> M1.Literal#Equal(a, b));

// Datatype extensional equality definition: #M1.Literal.litNull
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litNull_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litNull_q(b) } 
  M1.Literal.litNull_q(a) && M1.Literal.litNull_q(b) ==> M1.Literal#Equal(a, b));

// Datatype extensional equality definition: #M1.Literal.litNumber
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litNumber_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litNumber_q(b) } 
  M1.Literal.litNumber_q(a) && M1.Literal.litNumber_q(b)
     ==> (M1.Literal#Equal(a, b) <==> M1.Literal.num(a) == M1.Literal.num(b)));

// Datatype extensional equality definition: #M1.Literal.litString
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litString_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litString_q(b) } 
  M1.Literal.litString_q(a) && M1.Literal.litString_q(b)
     ==> (M1.Literal#Equal(a, b) <==> Seq#Equal(M1.Literal.str(a), M1.Literal.str(b))));

// Datatype extensional equality definition: #M1.Literal.litPrimitive
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litPrimitive_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litPrimitive_q(b) } 
  M1.Literal.litPrimitive_q(a) && M1.Literal.litPrimitive_q(b)
     ==> (M1.Literal#Equal(a, b)
       <==> M1.Primitive#Equal(M1.Literal.prim(a), M1.Literal.prim(b))));

// Datatype extensional equality definition: #M1.Literal.litArrOfPaths
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litArrOfPaths_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litArrOfPaths_q(b) } 
  M1.Literal.litArrOfPaths_q(a) && M1.Literal.litArrOfPaths_q(b)
     ==> (M1.Literal#Equal(a, b)
       <==> Set#Equal(M1.Literal.paths(a), M1.Literal.paths(b))));

// Datatype extensional equality definition: #M1.Literal.litArrOfStrings
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litArrOfStrings_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litArrOfStrings_q(b) } 
  M1.Literal.litArrOfStrings_q(a) && M1.Literal.litArrOfStrings_q(b)
     ==> (M1.Literal#Equal(a, b) <==> Set#Equal(M1.Literal.strs(a), M1.Literal.strs(b))));

// Datatype extensional equality definition: #M1.Literal.litArray
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b), M1.Literal.litArray_q(a) } 
    { M1.Literal#Equal(a, b), M1.Literal.litArray_q(b) } 
  M1.Literal.litArray_q(a) && M1.Literal.litArray_q(b)
     ==> (M1.Literal#Equal(a, b) <==> Seq#Equal(M1.Literal.arr(a), M1.Literal.arr(b))));

// Datatype extensionality axiom: M1.Literal
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Literal#Equal(a, b) } 
  M1.Literal#Equal(a, b) <==> a == b);

const unique class.M1.Literal: ClassName;

// Constructor function declaration
function #M1.Primitive.primCreatePath() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Primitive.primCreatePath()) == ##M1.Primitive.primCreatePath;
// Constructor $Is
axiom $Is(#M1.Primitive.primCreatePath(), Tclass.M1.Primitive());
// Constructor literal
axiom #M1.Primitive.primCreatePath() == Lit(#M1.Primitive.primCreatePath());
}

const unique ##M1.Primitive.primCreatePath: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Primitive.primCreatePath()) == ##M1.Primitive.primCreatePath;
}

function M1.Primitive.primCreatePath_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Primitive.primCreatePath_q(d) } 
  M1.Primitive.primCreatePath_q(d)
     <==> DatatypeCtorId(d) == ##M1.Primitive.primCreatePath);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Primitive.primCreatePath_q(d) } 
  M1.Primitive.primCreatePath_q(d) ==> d == #M1.Primitive.primCreatePath());

// Constructor function declaration
function #M1.Primitive.primExec() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Primitive.primExec()) == ##M1.Primitive.primExec;
// Constructor $Is
axiom $Is(#M1.Primitive.primExec(), Tclass.M1.Primitive());
// Constructor literal
axiom #M1.Primitive.primExec() == Lit(#M1.Primitive.primExec());
}

const unique ##M1.Primitive.primExec: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Primitive.primExec()) == ##M1.Primitive.primExec;
}

function M1.Primitive.primExec_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Primitive.primExec_q(d) } 
  M1.Primitive.primExec_q(d) <==> DatatypeCtorId(d) == ##M1.Primitive.primExec);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Primitive.primExec_q(d) } 
  M1.Primitive.primExec_q(d) ==> d == #M1.Primitive.primExec());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.M1.Primitive(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.M1.Primitive())
     ==> $IsAlloc(d, Tclass.M1.Primitive(), $h));

// Depth-one case-split function
function $IsA#M1.Primitive(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.Primitive(d) } 
  $IsA#M1.Primitive(d)
     ==> M1.Primitive.primCreatePath_q(d) || M1.Primitive.primExec_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M1.Primitive.primExec_q(d), $Is(d, Tclass.M1.Primitive()) } 
    { M1.Primitive.primCreatePath_q(d), $Is(d, Tclass.M1.Primitive()) } 
  $Is(d, Tclass.M1.Primitive())
     ==> M1.Primitive.primCreatePath_q(d) || M1.Primitive.primExec_q(d));

// Datatype extensional equality declaration
function M1.Primitive#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.Primitive.primCreatePath
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Primitive#Equal(a, b), M1.Primitive.primCreatePath_q(a) } 
    { M1.Primitive#Equal(a, b), M1.Primitive.primCreatePath_q(b) } 
  M1.Primitive.primCreatePath_q(a) && M1.Primitive.primCreatePath_q(b)
     ==> M1.Primitive#Equal(a, b));

// Datatype extensional equality definition: #M1.Primitive.primExec
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Primitive#Equal(a, b), M1.Primitive.primExec_q(a) } 
    { M1.Primitive#Equal(a, b), M1.Primitive.primExec_q(b) } 
  M1.Primitive.primExec_q(a) && M1.Primitive.primExec_q(b)
     ==> M1.Primitive#Equal(a, b));

// Datatype extensionality axiom: M1.Primitive
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Primitive#Equal(a, b) } 
  M1.Primitive#Equal(a, b) <==> a == b);

const unique class.M1.Primitive: ClassName;

// Constructor function declaration
function #M1.Reason.rCompatibility() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Reason.rCompatibility()) == ##M1.Reason.rCompatibility;
// Constructor $Is
axiom $Is(#M1.Reason.rCompatibility(), Tclass.M1.Reason());
// Constructor literal
axiom #M1.Reason.rCompatibility() == Lit(#M1.Reason.rCompatibility());
}

const unique ##M1.Reason.rCompatibility: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Reason.rCompatibility()) == ##M1.Reason.rCompatibility;
}

function M1.Reason.rCompatibility_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Reason.rCompatibility_q(d) } 
  M1.Reason.rCompatibility_q(d)
     <==> DatatypeCtorId(d) == ##M1.Reason.rCompatibility);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Reason.rCompatibility_q(d) } 
  M1.Reason.rCompatibility_q(d) ==> d == #M1.Reason.rCompatibility());

// Constructor function declaration
function #M1.Reason.rValidity() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Reason.rValidity()) == ##M1.Reason.rValidity;
// Constructor $Is
axiom $Is(#M1.Reason.rValidity(), Tclass.M1.Reason());
// Constructor literal
axiom #M1.Reason.rValidity() == Lit(#M1.Reason.rValidity());
}

const unique ##M1.Reason.rValidity: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M1.Reason.rValidity()) == ##M1.Reason.rValidity;
}

function M1.Reason.rValidity_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Reason.rValidity_q(d) } 
  M1.Reason.rValidity_q(d) <==> DatatypeCtorId(d) == ##M1.Reason.rValidity);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Reason.rValidity_q(d) } 
  M1.Reason.rValidity_q(d) ==> d == #M1.Reason.rValidity());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.M1.Reason(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.M1.Reason())
     ==> $IsAlloc(d, Tclass.M1.Reason(), $h));

// Depth-one case-split function
function $IsA#M1.Reason(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.Reason(d) } 
  $IsA#M1.Reason(d) ==> M1.Reason.rCompatibility_q(d) || M1.Reason.rValidity_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M1.Reason.rValidity_q(d), $Is(d, Tclass.M1.Reason()) } 
    { M1.Reason.rCompatibility_q(d), $Is(d, Tclass.M1.Reason()) } 
  $Is(d, Tclass.M1.Reason())
     ==> M1.Reason.rCompatibility_q(d) || M1.Reason.rValidity_q(d));

// Datatype extensional equality declaration
function M1.Reason#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.Reason.rCompatibility
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Reason#Equal(a, b), M1.Reason.rCompatibility_q(a) } 
    { M1.Reason#Equal(a, b), M1.Reason.rCompatibility_q(b) } 
  M1.Reason.rCompatibility_q(a) && M1.Reason.rCompatibility_q(b)
     ==> M1.Reason#Equal(a, b));

// Datatype extensional equality definition: #M1.Reason.rValidity
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Reason#Equal(a, b), M1.Reason.rValidity_q(a) } 
    { M1.Reason#Equal(a, b), M1.Reason.rValidity_q(b) } 
  M1.Reason.rValidity_q(a) && M1.Reason.rValidity_q(b) ==> M1.Reason#Equal(a, b));

// Datatype extensionality axiom: M1.Reason
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Reason#Equal(a, b) } 
  M1.Reason#Equal(a, b) <==> a == b);

const unique class.M1.Reason: ClassName;

const unique class.M1.Path: ClassName;

const unique class.M1.Artifact: ClassName;

const unique class.M1.Identifier: ClassName;

// Constructor function declaration
function #M1.Tuple.Pair(Box, Box) : DatatypeType;

const unique ##M1.Tuple.Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#148#0#0: Box, a#148#1#0: Box :: 
  { #M1.Tuple.Pair(a#148#0#0, a#148#1#0) } 
  DatatypeCtorId(#M1.Tuple.Pair(a#148#0#0, a#148#1#0)) == ##M1.Tuple.Pair);
}

function M1.Tuple.Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M1.Tuple.Pair_q(d) } 
  M1.Tuple.Pair_q(d) <==> DatatypeCtorId(d) == ##M1.Tuple.Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M1.Tuple.Pair_q(d) } 
  M1.Tuple.Pair_q(d)
     ==> (exists a#149#0#0: Box, a#149#1#0: Box :: 
      d == #M1.Tuple.Pair(a#149#0#0, a#149#1#0)));

// Constructor $Is
axiom (forall M1.Tuple$A: Ty, M1.Tuple$B: Ty, a#150#0#0: Box, a#150#1#0: Box :: 
  { $Is(#M1.Tuple.Pair(a#150#0#0, a#150#1#0), Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) } 
  $Is(#M1.Tuple.Pair(a#150#0#0, a#150#1#0), Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B))
     <==> $IsBox(a#150#0#0, M1.Tuple$A) && $IsBox(a#150#1#0, M1.Tuple$B));

// Constructor $IsAlloc
axiom (forall M1.Tuple$A: Ty, M1.Tuple$B: Ty, a#150#0#0: Box, a#150#1#0: Box, $h: Heap :: 
  { $IsAlloc(#M1.Tuple.Pair(a#150#0#0, a#150#1#0), 
      Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M1.Tuple.Pair(a#150#0#0, a#150#1#0), 
        Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B), 
        $h)
       <==> $IsAllocBox(a#150#0#0, M1.Tuple$A, $h) && $IsAllocBox(a#150#1#0, M1.Tuple$B, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, M1.Tuple$A: Ty, $h: Heap :: 
  { $IsAllocBox(M1.Tuple.fst(d), M1.Tuple$A, $h) } 
  $IsGoodHeap($h)
       && 
      M1.Tuple.Pair_q(d)
       && (exists M1.Tuple$B: Ty :: 
        { $IsAlloc(d, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B), $h) } 
        $IsAlloc(d, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B), $h))
     ==> $IsAllocBox(M1.Tuple.fst(d), M1.Tuple$A, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, M1.Tuple$B: Ty, $h: Heap :: 
  { $IsAllocBox(M1.Tuple.snd(d), M1.Tuple$B, $h) } 
  $IsGoodHeap($h)
       && 
      M1.Tuple.Pair_q(d)
       && (exists M1.Tuple$A: Ty :: 
        { $IsAlloc(d, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B), $h) } 
        $IsAlloc(d, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B), $h))
     ==> $IsAllocBox(M1.Tuple.snd(d), M1.Tuple$B, $h));

// Constructor literal
axiom (forall a#151#0#0: Box, a#151#1#0: Box :: 
  { #M1.Tuple.Pair(Lit(a#151#0#0), Lit(a#151#1#0)) } 
  #M1.Tuple.Pair(Lit(a#151#0#0), Lit(a#151#1#0))
     == Lit(#M1.Tuple.Pair(a#151#0#0, a#151#1#0)));

function M1.Tuple.fst(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#152#0#0: Box, a#152#1#0: Box :: 
  { #M1.Tuple.Pair(a#152#0#0, a#152#1#0) } 
  M1.Tuple.fst(#M1.Tuple.Pair(a#152#0#0, a#152#1#0)) == a#152#0#0);

// Inductive rank
axiom (forall a#153#0#0: Box, a#153#1#0: Box :: 
  { #M1.Tuple.Pair(a#153#0#0, a#153#1#0) } 
  BoxRank(a#153#0#0) < DtRank(#M1.Tuple.Pair(a#153#0#0, a#153#1#0)));

function M1.Tuple.snd(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#154#0#0: Box, a#154#1#0: Box :: 
  { #M1.Tuple.Pair(a#154#0#0, a#154#1#0) } 
  M1.Tuple.snd(#M1.Tuple.Pair(a#154#0#0, a#154#1#0)) == a#154#1#0);

// Inductive rank
axiom (forall a#155#0#0: Box, a#155#1#0: Box :: 
  { #M1.Tuple.Pair(a#155#0#0, a#155#1#0) } 
  BoxRank(a#155#1#0) < DtRank(#M1.Tuple.Pair(a#155#0#0, a#155#1#0)));

// Depth-one case-split function
function $IsA#M1.Tuple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M1.Tuple(d) } 
  $IsA#M1.Tuple(d) ==> M1.Tuple.Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall M1.Tuple$A: Ty, M1.Tuple$B: Ty, d: DatatypeType :: 
  { M1.Tuple.Pair_q(d), $Is(d, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) } 
  $Is(d, Tclass.M1.Tuple(M1.Tuple$A, M1.Tuple$B)) ==> M1.Tuple.Pair_q(d));

// Datatype extensional equality declaration
function M1.Tuple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M1.Tuple.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Tuple#Equal(a, b) } 
  M1.Tuple#Equal(a, b)
     <==> M1.Tuple.fst(a) == M1.Tuple.fst(b) && M1.Tuple.snd(a) == M1.Tuple.snd(b));

// Datatype extensionality axiom: M1.Tuple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M1.Tuple#Equal(a, b) } 
  M1.Tuple#Equal(a, b) <==> a == b);

const unique class.M1.Tuple: ClassName;

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

const unique tytagFamily$_#Func5: TyTagFamily;

const unique tytagFamily$_#PartialFunc5: TyTagFamily;

const unique tytagFamily$_#TotalFunc5: TyTagFamily;

const unique tytagFamily$State: TyTagFamily;

const unique tytagFamily$Expression: TyTagFamily;

const unique tytagFamily$Primitive: TyTagFamily;

const unique tytagFamily$Program: TyTagFamily;

const unique tytagFamily$Tuple: TyTagFamily;

const unique tytagFamily$Statement: TyTagFamily;

const unique tytagFamily$Literal: TyTagFamily;

const unique tytagFamily$Reason: TyTagFamily;

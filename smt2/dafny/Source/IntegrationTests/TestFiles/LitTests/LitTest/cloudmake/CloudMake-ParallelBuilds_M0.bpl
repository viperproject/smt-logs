// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy

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

const unique class.M0.__default: ClassName;

// function declaration for M0._default.DomSt
function M0.__default.DomSt(st#0: Box) : Set
uses {
// consequence axiom for M0.__default.DomSt
axiom 0 <= $FunctionContextHeight
   ==> (forall st#0: Box :: 
    { M0.__default.DomSt(st#0) } 
    M0.__default.DomSt#canCall(st#0)
         || (0 < $FunctionContextHeight && $IsBox(st#0, Tclass.M0.State()))
       ==> $Is(M0.__default.DomSt(st#0), TSet(Tclass.M0.Path())));
}

function M0.__default.DomSt#canCall(st#0: Box) : bool;

function Tclass.M0.State() : Ty;

function Tclass.M0.Path() : Ty
uses {
axiom $AlwaysAllocated(Tclass.M0.Path());
}

function M0.__default.DomSt#requires(Box) : bool;

// #requires axiom for M0.__default.DomSt
axiom (forall st#0: Box :: 
  { M0.__default.DomSt#requires(st#0) } 
  $IsBox(st#0, Tclass.M0.State()) ==> M0.__default.DomSt#requires(st#0) == true);

procedure {:verboseName "M0.DomSt (well-formedness)"} CheckWellformed$$M0.__default.DomSt(st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.GetSt
function M0.__default.GetSt(p#0: Box, st#0: Box) : Box
uses {
// consequence axiom for M0.__default.GetSt
axiom 1 <= $FunctionContextHeight
   ==> (forall p#0: Box, st#0: Box :: 
    { M0.__default.GetSt(p#0, st#0) } 
    M0.__default.GetSt#canCall(p#0, st#0)
         || (1 < $FunctionContextHeight
           && 
          $IsBox(p#0, Tclass.M0.Path())
           && $IsBox(st#0, Tclass.M0.State())
           && Set#IsMember(M0.__default.DomSt(st#0), p#0))
       ==> $IsBox(M0.__default.GetSt(p#0, st#0), Tclass.M0.Artifact()));
// alloc consequence axiom for M0.__default.GetSt
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, p#0: Box, st#0: Box :: 
    { $IsAllocBox(M0.__default.GetSt(p#0, st#0), Tclass.M0.Artifact(), $Heap) } 
    (M0.__default.GetSt#canCall(p#0, st#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(p#0, Tclass.M0.Path())
             && $IsAllocBox(p#0, Tclass.M0.Path(), $Heap)
             && 
            $IsBox(st#0, Tclass.M0.State())
             && $IsAllocBox(st#0, Tclass.M0.State(), $Heap)
             && Set#IsMember(M0.__default.DomSt(st#0), p#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M0.__default.GetSt(p#0, st#0), Tclass.M0.Artifact(), $Heap));
}

function M0.__default.GetSt#canCall(p#0: Box, st#0: Box) : bool;

function Tclass.M0.Artifact() : Ty;

function M0.__default.GetSt#requires(Box, Box) : bool;

// #requires axiom for M0.__default.GetSt
axiom (forall p#0: Box, st#0: Box :: 
  { M0.__default.GetSt#requires(p#0, st#0) } 
  $IsBox(p#0, Tclass.M0.Path()) && $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.GetSt#requires(p#0, st#0)
       == Set#IsMember(M0.__default.DomSt(st#0), p#0));

procedure {:verboseName "M0.GetSt (well-formedness)"} CheckWellformed$$M0.__default.GetSt(p#0: Box where $IsBox(p#0, Tclass.M0.Path()), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.ValidState
function M0.__default.ValidState(st#0: Box) : bool
uses {
// definition axiom for M0.__default.ValidState (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall st#0: Box :: 
    { M0.__default.ValidState(st#0) } 
    M0.__default.ValidState#canCall(st#0)
         || (1 < $FunctionContextHeight && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall p#0: Box :: 
          { M0.__default.WellFounded(p#0) } 
            { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
          $IsBox(p#0, Tclass.M0.Path())
             ==> M0.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M0.__default.DomSt(st#0), p#0)
                 ==> M0.__default.WellFounded#canCall(p#0)))
         && M0.__default.ValidState(st#0)
           == (forall p#0: Box :: 
            { M0.__default.WellFounded(p#0) } 
              { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
            $IsBox(p#0, Tclass.M0.Path())
               ==> 
              Set#IsMember(M0.__default.DomSt(st#0), p#0)
               ==> M0.__default.WellFounded(p#0)));
// definition axiom for M0.__default.ValidState for all literals (revealed)
axiom {:id "id2"} 1 <= $FunctionContextHeight
   ==> (forall st#0: Box :: 
    {:weight 3} { M0.__default.ValidState(Lit(st#0)) } 
    M0.__default.ValidState#canCall(Lit(st#0))
         || (1 < $FunctionContextHeight && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall p#1: Box :: 
          { M0.__default.WellFounded(p#1) } 
            { Set#IsMember(M0.__default.DomSt(st#0), p#1) } 
          $IsBox(p#1, Tclass.M0.Path())
             ==> M0.__default.DomSt#canCall(Lit(st#0))
               && (Set#IsMember(M0.__default.DomSt(Lit(st#0)), p#1)
                 ==> M0.__default.WellFounded#canCall(p#1)))
         && M0.__default.ValidState(Lit(st#0))
           == (forall p#1: Box :: 
            { M0.__default.WellFounded(p#1) } 
              { Set#IsMember(M0.__default.DomSt(st#0), p#1) } 
            $IsBox(p#1, Tclass.M0.Path())
               ==> 
              Set#IsMember(M0.__default.DomSt(Lit(st#0)), p#1)
               ==> M0.__default.WellFounded(p#1)));
}

function M0.__default.ValidState#canCall(st#0: Box) : bool;

function M0.__default.ValidState#requires(Box) : bool;

// #requires axiom for M0.__default.ValidState
axiom (forall st#0: Box :: 
  { M0.__default.ValidState#requires(st#0) } 
  $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.ValidState#requires(st#0) == true);

procedure {:verboseName "M0.ValidState (well-formedness)"} CheckWellformed$$M0.__default.ValidState(st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.WellFounded
function M0.__default.WellFounded(p#0: Box) : bool;

function M0.__default.WellFounded#canCall(p#0: Box) : bool;

function M0.__default.WellFounded#requires(Box) : bool;

// #requires axiom for M0.__default.WellFounded
axiom (forall p#0: Box :: 
  { M0.__default.WellFounded#requires(p#0) } 
  $IsBox(p#0, Tclass.M0.Path()) ==> M0.__default.WellFounded#requires(p#0) == true);

procedure {:verboseName "M0.WellFounded (well-formedness)"} CheckWellformed$$M0.__default.WellFounded(p#0: Box where $IsBox(p#0, Tclass.M0.Path()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.Union
function M0.__default.Union(st#0: Box, st'#0: Box) : Box
uses {
// consequence axiom for M0.__default.Union
axiom 2 <= $FunctionContextHeight
   ==> (forall st#0: Box, st'#0: Box :: 
    { M0.__default.Union(st#0, st'#0) } 
    M0.__default.Union#canCall(st#0, st'#0)
         || (2 < $FunctionContextHeight
           && 
          $IsBox(st#0, Tclass.M0.State())
           && $IsBox(st'#0, Tclass.M0.State()))
       ==> (var result#0 := M0.__default.Union(st#0, st'#0); 
          Set#Equal(M0.__default.DomSt(result#0), 
              Set#Union(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0)))
             && (forall p#0: Box :: 
              { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
                { M0.__default.GetSt(p#0, result#0) } 
                { Set#IsMember(M0.__default.DomSt(result#0), p#0) } 
              $IsBox(p#0, Tclass.M0.Path())
                 ==> 
                Set#IsMember(M0.__default.DomSt(result#0), p#0)
                 ==> M0.__default.GetSt(p#0, result#0)
                   == M0.__default.GetSt(p#0, (if Set#IsMember(M0.__default.DomSt(st#0), p#0) then st#0 else st'#0))))
         && $IsBox(M0.__default.Union(st#0, st'#0), Tclass.M0.State()));
// alloc consequence axiom for M0.__default.Union
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, st#0: Box, st'#0: Box :: 
    { $IsAllocBox(M0.__default.Union(st#0, st'#0), Tclass.M0.State(), $Heap) } 
    (M0.__default.Union#canCall(st#0, st'#0)
           || (2 < $FunctionContextHeight
             && 
            $IsBox(st#0, Tclass.M0.State())
             && $IsAllocBox(st#0, Tclass.M0.State(), $Heap)
             && 
            $IsBox(st'#0, Tclass.M0.State())
             && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M0.__default.Union(st#0, st'#0), Tclass.M0.State(), $Heap));
}

function M0.__default.Union#canCall(st#0: Box, st'#0: Box) : bool;

function M0.__default.Union#requires(Box, Box) : bool;

// #requires axiom for M0.__default.Union
axiom (forall st#0: Box, st'#0: Box :: 
  { M0.__default.Union#requires(st#0, st'#0) } 
  $IsBox(st#0, Tclass.M0.State()) && $IsBox(st'#0, Tclass.M0.State())
     ==> M0.__default.Union#requires(st#0, st'#0) == true);

procedure {:verboseName "M0.Union (well-formedness)"} CheckWellformed$$M0.__default.Union(st#0: Box where $IsBox(st#0, Tclass.M0.State()), 
    st'#0: Box where $IsBox(st'#0, Tclass.M0.State()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id4"} (var result#1 := M0.__default.Union(st#0, st'#0); 
    Set#Equal(M0.__default.DomSt(result#1), 
      Set#Union(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))));
  ensures {:id "id5"} (var result#1 := M0.__default.Union(st#0, st'#0); 
    (forall p#1: Box :: 
      { Set#IsMember(M0.__default.DomSt(st#0), p#1) } 
        { M0.__default.GetSt(p#1, result#1) } 
        { Set#IsMember(M0.__default.DomSt(result#1), p#1) } 
      $IsBox(p#1, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(result#1), p#1)
         ==> M0.__default.GetSt(p#1, result#1)
           == M0.__default.GetSt(p#1, (if Set#IsMember(M0.__default.DomSt(st#0), p#1) then st#0 else st'#0))));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Union (well-formedness)"} CheckWellformed$$M0.__default.Union(st#0: Box, st'#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var result#Z#0: Box;
  var let#0#0#0: Box;
  var ##st#0: Box;
  var ##st'#0: Box;
  var ##st#1: Box;
  var ##st#2: Box;
  var ##st#3: Box;
  var p#2: Box;
  var ##st#4: Box;
  var ##p#0: Box;
  var ##st#5: Box;
  var ##p#1: Box;
  var ##st#6: Box;
  var ##st#7: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(M0.__default.Union(st#0, st'#0), Tclass.M0.State());
        havoc result#Z#0;
        ##st#0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
        ##st'#0 := st'#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.M0.State(), $Heap);
        assert {:id "id6"} st#0 == st#0 && st'#0 == st'#0;
        assume (st#0 == st#0 && st'#0 == st'#0) || M0.__default.Union#canCall(st#0, st'#0);
        assume {:id "id7"} let#0#0#0 == M0.__default.Union(st#0, st'#0);
        assume M0.__default.Union#canCall(st#0, st'#0);
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0#0#0, Tclass.M0.State());
        assume {:id "id8"} result#Z#0 == let#0#0#0;
        ##st#1 := result#Z#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
        assume M0.__default.DomSt#canCall(result#Z#0);
        ##st#2 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
        assume M0.__default.DomSt#canCall(st#0);
        ##st#3 := st'#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
        assume M0.__default.DomSt#canCall(st'#0);
        if (Set#Equal(M0.__default.DomSt(result#Z#0), 
          Set#Union(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))))
        {
            // Begin Comprehension WF check
            havoc p#2;
            if ($IsBox(p#2, Tclass.M0.Path()) && $IsAllocBox(p#2, Tclass.M0.Path(), $Heap))
            {
                ##st#4 := result#Z#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#4, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(result#Z#0);
                if (Set#IsMember(M0.__default.DomSt(result#Z#0), p#2))
                {
                    ##p#0 := p#2;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#0, Tclass.M0.Path(), $Heap);
                    ##st#5 := result#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#5, Tclass.M0.State(), $Heap);
                    assert {:id "id9"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#5), ##p#0);
                    assume Set#IsMember(M0.__default.DomSt(##st#5), ##p#0);
                    assume M0.__default.GetSt#canCall(p#2, result#Z#0);
                    ##p#1 := p#2;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#1, Tclass.M0.Path(), $Heap);
                    ##st#7 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#7, Tclass.M0.State(), $Heap);
                    assume M0.__default.DomSt#canCall(st#0);
                    if (Set#IsMember(M0.__default.DomSt(st#0), p#2))
                    {
                    }
                    else
                    {
                    }

                    ##st#6 := (if Set#IsMember(M0.__default.DomSt(st#0), p#2) then st#0 else st'#0);
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#6, Tclass.M0.State(), $Heap);
                    assert {:id "id10"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#6), ##p#1);
                    assume Set#IsMember(M0.__default.DomSt(##st#6), ##p#1);
                    assume M0.__default.GetSt#canCall(p#2, (if Set#IsMember(M0.__default.DomSt(st#0), p#2) then st#0 else st'#0));
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id11"} (var result#1 := M0.__default.Union(st#0, st'#0); 
          Set#Equal(M0.__default.DomSt(result#1), 
              Set#Union(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0)))
             && (forall p#1: Box :: 
              { Set#IsMember(M0.__default.DomSt(st#0), p#1) } 
                { M0.__default.GetSt(p#1, result#1) } 
                { Set#IsMember(M0.__default.DomSt(result#1), p#1) } 
              $IsBox(p#1, Tclass.M0.Path())
                 ==> 
                Set#IsMember(M0.__default.DomSt(result#1), p#1)
                 ==> M0.__default.GetSt(p#1, result#1)
                   == M0.__default.GetSt(p#1, (if Set#IsMember(M0.__default.DomSt(st#0), p#1) then st#0 else st'#0))));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for M0._default.Compatible
function M0.__default.Compatible(sts#0: Set) : bool
uses {
// definition axiom for M0.__default.Compatible (revealed)
axiom {:id "id12"} 2 <= $FunctionContextHeight
   ==> (forall sts#0: Set :: 
    { M0.__default.Compatible(sts#0) } 
    M0.__default.Compatible#canCall(sts#0)
         || (2 < $FunctionContextHeight && $Is(sts#0, TSet(Tclass.M0.State())))
       ==> (forall st#0: Box, st'#0: Box, p#0: Box :: 
          { M0.__default.GetSt(p#0, st'#0), M0.__default.GetSt(p#0, st#0) } 
            { M0.__default.GetSt(p#0, st'#0), M0.__default.DomSt(st#0) } 
            { M0.__default.GetSt(p#0, st'#0), Set#IsMember(sts#0, st#0) } 
            { M0.__default.GetSt(p#0, st#0), M0.__default.DomSt(st'#0) } 
            { M0.__default.GetSt(p#0, st#0), Set#IsMember(sts#0, st'#0) } 
            { Set#IsMember(M0.__default.DomSt(st'#0), p#0), M0.__default.DomSt(st#0) } 
            { Set#IsMember(M0.__default.DomSt(st'#0), p#0), Set#IsMember(sts#0, st#0) } 
            { M0.__default.DomSt(st'#0), Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
            { Set#IsMember(M0.__default.DomSt(st#0), p#0), Set#IsMember(sts#0, st'#0) } 
          $IsBox(st#0, Tclass.M0.State())
               && $IsBox(st'#0, Tclass.M0.State())
               && $IsBox(p#0, Tclass.M0.Path())
             ==> 
            Set#IsMember(sts#0, st#0)
             ==> 
            Set#IsMember(sts#0, st'#0)
             ==> M0.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M0.__default.DomSt(st#0), p#0)
                 ==> M0.__default.DomSt#canCall(st'#0)
                   && (Set#IsMember(M0.__default.DomSt(st'#0), p#0)
                     ==> M0.__default.GetSt#canCall(p#0, st#0) && M0.__default.GetSt#canCall(p#0, st'#0))))
         && M0.__default.Compatible(sts#0)
           == (forall st#0: Box, st'#0: Box, p#0: Box :: 
            { M0.__default.GetSt(p#0, st'#0), M0.__default.GetSt(p#0, st#0) } 
              { M0.__default.GetSt(p#0, st'#0), M0.__default.DomSt(st#0) } 
              { M0.__default.GetSt(p#0, st'#0), Set#IsMember(sts#0, st#0) } 
              { M0.__default.GetSt(p#0, st#0), M0.__default.DomSt(st'#0) } 
              { M0.__default.GetSt(p#0, st#0), Set#IsMember(sts#0, st'#0) } 
              { Set#IsMember(M0.__default.DomSt(st'#0), p#0), M0.__default.DomSt(st#0) } 
              { Set#IsMember(M0.__default.DomSt(st'#0), p#0), Set#IsMember(sts#0, st#0) } 
              { M0.__default.DomSt(st'#0), Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
              { Set#IsMember(M0.__default.DomSt(st#0), p#0), Set#IsMember(sts#0, st'#0) } 
            $IsBox(st#0, Tclass.M0.State())
                 && $IsBox(st'#0, Tclass.M0.State())
                 && $IsBox(p#0, Tclass.M0.Path())
               ==> 
              Set#IsMember(sts#0, st#0)
                 && Set#IsMember(sts#0, st'#0)
                 && Set#IsMember(M0.__default.DomSt(st#0), p#0)
                 && Set#IsMember(M0.__default.DomSt(st'#0), p#0)
               ==> M0.__default.GetSt(p#0, st#0) == M0.__default.GetSt(p#0, st'#0)));
// definition axiom for M0.__default.Compatible for all literals (revealed)
axiom {:id "id13"} 2 <= $FunctionContextHeight
   ==> (forall sts#0: Set :: 
    {:weight 3} { M0.__default.Compatible(Lit(sts#0)) } 
    M0.__default.Compatible#canCall(Lit(sts#0))
         || (2 < $FunctionContextHeight && $Is(sts#0, TSet(Tclass.M0.State())))
       ==> (forall st#1: Box, st'#1: Box, p#1: Box :: 
          { M0.__default.GetSt(p#1, st'#1), M0.__default.GetSt(p#1, st#1) } 
            { M0.__default.GetSt(p#1, st'#1), M0.__default.DomSt(st#1) } 
            { M0.__default.GetSt(p#1, st'#1), Set#IsMember(sts#0, st#1) } 
            { M0.__default.GetSt(p#1, st#1), M0.__default.DomSt(st'#1) } 
            { M0.__default.GetSt(p#1, st#1), Set#IsMember(sts#0, st'#1) } 
            { Set#IsMember(M0.__default.DomSt(st'#1), p#1), M0.__default.DomSt(st#1) } 
            { Set#IsMember(M0.__default.DomSt(st'#1), p#1), Set#IsMember(sts#0, st#1) } 
            { M0.__default.DomSt(st'#1), Set#IsMember(M0.__default.DomSt(st#1), p#1) } 
            { Set#IsMember(M0.__default.DomSt(st#1), p#1), Set#IsMember(sts#0, st'#1) } 
          $IsBox(st#1, Tclass.M0.State())
               && $IsBox(st'#1, Tclass.M0.State())
               && $IsBox(p#1, Tclass.M0.Path())
             ==> 
            Set#IsMember(Lit(sts#0), st#1)
             ==> 
            Set#IsMember(Lit(sts#0), st'#1)
             ==> M0.__default.DomSt#canCall(st#1)
               && (Set#IsMember(M0.__default.DomSt(st#1), p#1)
                 ==> M0.__default.DomSt#canCall(st'#1)
                   && (Set#IsMember(M0.__default.DomSt(st'#1), p#1)
                     ==> M0.__default.GetSt#canCall(p#1, st#1) && M0.__default.GetSt#canCall(p#1, st'#1))))
         && M0.__default.Compatible(Lit(sts#0))
           == (forall st#1: Box, st'#1: Box, p#1: Box :: 
            { M0.__default.GetSt(p#1, st'#1), M0.__default.GetSt(p#1, st#1) } 
              { M0.__default.GetSt(p#1, st'#1), M0.__default.DomSt(st#1) } 
              { M0.__default.GetSt(p#1, st'#1), Set#IsMember(sts#0, st#1) } 
              { M0.__default.GetSt(p#1, st#1), M0.__default.DomSt(st'#1) } 
              { M0.__default.GetSt(p#1, st#1), Set#IsMember(sts#0, st'#1) } 
              { Set#IsMember(M0.__default.DomSt(st'#1), p#1), M0.__default.DomSt(st#1) } 
              { Set#IsMember(M0.__default.DomSt(st'#1), p#1), Set#IsMember(sts#0, st#1) } 
              { M0.__default.DomSt(st'#1), Set#IsMember(M0.__default.DomSt(st#1), p#1) } 
              { Set#IsMember(M0.__default.DomSt(st#1), p#1), Set#IsMember(sts#0, st'#1) } 
            $IsBox(st#1, Tclass.M0.State())
                 && $IsBox(st'#1, Tclass.M0.State())
                 && $IsBox(p#1, Tclass.M0.Path())
               ==> 
              Set#IsMember(Lit(sts#0), st#1)
                 && Set#IsMember(Lit(sts#0), st'#1)
                 && Set#IsMember(M0.__default.DomSt(st#1), p#1)
                 && Set#IsMember(M0.__default.DomSt(st'#1), p#1)
               ==> M0.__default.GetSt(p#1, st#1) == M0.__default.GetSt(p#1, st'#1)));
}

function M0.__default.Compatible#canCall(sts#0: Set) : bool;

function M0.__default.Compatible#requires(Set) : bool;

// #requires axiom for M0.__default.Compatible
axiom (forall sts#0: Set :: 
  { M0.__default.Compatible#requires(sts#0) } 
  $Is(sts#0, TSet(Tclass.M0.State()))
     ==> M0.__default.Compatible#requires(sts#0) == true);

procedure {:verboseName "M0.Compatible (well-formedness)"} CheckWellformed$$M0.__default.Compatible(sts#0: Set where $Is(sts#0, TSet(Tclass.M0.State())));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Compatible (well-formedness)"} CheckWellformed$$M0.__default.Compatible(sts#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var st#2: Box;
  var st'#2: Box;
  var p#2: Box;
  var ##st#0: Box;
  var ##st#1: Box;
  var ##p#0: Box;
  var ##st#2: Box;
  var ##p#1: Box;
  var ##st#3: Box;


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
        havoc st#2;
        havoc st'#2;
        havoc p#2;
        if ($IsBox(st#2, Tclass.M0.State())
           && $IsAllocBox(st#2, Tclass.M0.State(), $Heap)
           && 
          $IsBox(st'#2, Tclass.M0.State())
           && $IsAllocBox(st'#2, Tclass.M0.State(), $Heap)
           && 
          $IsBox(p#2, Tclass.M0.Path())
           && $IsAllocBox(p#2, Tclass.M0.Path(), $Heap))
        {
            if (Set#IsMember(sts#0, st#2))
            {
            }

            if (Set#IsMember(sts#0, st#2) && Set#IsMember(sts#0, st'#2))
            {
                ##st#0 := st#2;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(st#2);
            }

            if (Set#IsMember(sts#0, st#2)
               && Set#IsMember(sts#0, st'#2)
               && Set#IsMember(M0.__default.DomSt(st#2), p#2))
            {
                ##st#1 := st'#2;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(st'#2);
            }

            if (Set#IsMember(sts#0, st#2)
               && Set#IsMember(sts#0, st'#2)
               && Set#IsMember(M0.__default.DomSt(st#2), p#2)
               && Set#IsMember(M0.__default.DomSt(st'#2), p#2))
            {
                ##p#0 := p#2;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##p#0, Tclass.M0.Path(), $Heap);
                ##st#2 := st#2;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
                assert {:id "id14"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#2), ##p#0);
                assume Set#IsMember(M0.__default.DomSt(##st#2), ##p#0);
                assume M0.__default.GetSt#canCall(p#2, st#2);
                ##p#1 := p#2;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##p#1, Tclass.M0.Path(), $Heap);
                ##st#3 := st'#2;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
                assert {:id "id15"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#3), ##p#1);
                assume Set#IsMember(M0.__default.DomSt(##st#3), ##p#1);
                assume M0.__default.GetSt#canCall(p#2, st'#2);
            }
        }

        // End Comprehension WF check
        assume {:id "id16"} M0.__default.Compatible(sts#0)
           == (forall st#3: Box, st'#3: Box, p#3: Box :: 
            { M0.__default.GetSt(p#3, st'#3), M0.__default.GetSt(p#3, st#3) } 
              { M0.__default.GetSt(p#3, st'#3), M0.__default.DomSt(st#3) } 
              { M0.__default.GetSt(p#3, st'#3), Set#IsMember(sts#0, st#3) } 
              { M0.__default.GetSt(p#3, st#3), M0.__default.DomSt(st'#3) } 
              { M0.__default.GetSt(p#3, st#3), Set#IsMember(sts#0, st'#3) } 
              { Set#IsMember(M0.__default.DomSt(st'#3), p#3), M0.__default.DomSt(st#3) } 
              { Set#IsMember(M0.__default.DomSt(st'#3), p#3), Set#IsMember(sts#0, st#3) } 
              { M0.__default.DomSt(st'#3), Set#IsMember(M0.__default.DomSt(st#3), p#3) } 
              { Set#IsMember(M0.__default.DomSt(st#3), p#3), Set#IsMember(sts#0, st'#3) } 
            $IsBox(st#3, Tclass.M0.State())
                 && $IsBox(st'#3, Tclass.M0.State())
                 && $IsBox(p#3, Tclass.M0.Path())
               ==> 
              Set#IsMember(sts#0, st#3)
                 && Set#IsMember(sts#0, st'#3)
                 && Set#IsMember(M0.__default.DomSt(st#3), p#3)
                 && Set#IsMember(M0.__default.DomSt(st'#3), p#3)
               ==> M0.__default.GetSt(p#3, st#3) == M0.__default.GetSt(p#3, st'#3));
        assume (forall st#3: Box, st'#3: Box, p#3: Box :: 
          { M0.__default.GetSt(p#3, st'#3), M0.__default.GetSt(p#3, st#3) } 
            { M0.__default.GetSt(p#3, st'#3), M0.__default.DomSt(st#3) } 
            { M0.__default.GetSt(p#3, st'#3), Set#IsMember(sts#0, st#3) } 
            { M0.__default.GetSt(p#3, st#3), M0.__default.DomSt(st'#3) } 
            { M0.__default.GetSt(p#3, st#3), Set#IsMember(sts#0, st'#3) } 
            { Set#IsMember(M0.__default.DomSt(st'#3), p#3), M0.__default.DomSt(st#3) } 
            { Set#IsMember(M0.__default.DomSt(st'#3), p#3), Set#IsMember(sts#0, st#3) } 
            { M0.__default.DomSt(st'#3), Set#IsMember(M0.__default.DomSt(st#3), p#3) } 
            { Set#IsMember(M0.__default.DomSt(st#3), p#3), Set#IsMember(sts#0, st'#3) } 
          $IsBox(st#3, Tclass.M0.State())
               && $IsBox(st'#3, Tclass.M0.State())
               && $IsBox(p#3, Tclass.M0.Path())
             ==> 
            Set#IsMember(sts#0, st#3)
             ==> 
            Set#IsMember(sts#0, st'#3)
             ==> M0.__default.DomSt#canCall(st#3)
               && (Set#IsMember(M0.__default.DomSt(st#3), p#3)
                 ==> M0.__default.DomSt#canCall(st'#3)
                   && (Set#IsMember(M0.__default.DomSt(st'#3), p#3)
                     ==> M0.__default.GetSt#canCall(p#3, st#3) && M0.__default.GetSt#canCall(p#3, st'#3))));
        // CheckWellformedWithResult: any expression
        assume $Is(M0.__default.Compatible(sts#0), TBool);
        return;

        assume false;
    }
}



// function declaration for M0._default.Combine
function M0.__default.Combine($ly: LayerType, sts#0: Set) : Box
uses {
// consequence axiom for M0.__default.Combine
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, sts#0: Set :: 
    { M0.__default.Combine($ly, sts#0) } 
    M0.__default.Combine#canCall(sts#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(sts#0, TSet(Tclass.M0.State()))
           && !Set#Equal(sts#0, Set#Empty(): Set))
       ==> $IsBox(M0.__default.Combine($ly, sts#0), Tclass.M0.State()));
// alloc consequence axiom for M0.__default.Combine
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, $ly: LayerType, sts#0: Set :: 
    { $IsAllocBox(M0.__default.Combine($ly, sts#0), Tclass.M0.State(), $Heap) } 
    (M0.__default.Combine#canCall(sts#0)
           || (3 < $FunctionContextHeight
             && 
            $Is(sts#0, TSet(Tclass.M0.State()))
             && $IsAlloc(sts#0, TSet(Tclass.M0.State()), $Heap)
             && !Set#Equal(sts#0, Set#Empty(): Set)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M0.__default.Combine($ly, sts#0), Tclass.M0.State(), $Heap));
// definition axiom for M0.__default.Combine (revealed)
axiom {:id "id17"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, sts#0: Set :: 
    { M0.__default.Combine($LS($ly), sts#0), $IsGoodHeap($Heap) } 
    M0.__default.Combine#canCall(sts#0)
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(sts#0, TSet(Tclass.M0.State()))
           && !Set#Equal(sts#0, Set#Empty(): Set))
       ==> $let#0$canCall(sts#0)
         && (!Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $let#0_st(sts#0)))
           ==> M0.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $let#0_st(sts#0))))
             && M0.__default.Union#canCall($let#0_st(sts#0), 
              M0.__default.Combine($ly, Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $let#0_st(sts#0))))))
         && M0.__default.Combine($LS($ly), sts#0)
           == (var st#0 := $let#0_st(sts#0); 
            (if Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#0))
               then st#0
               else M0.__default.Union(st#0, 
                M0.__default.Combine($ly, Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0)))))));
// definition axiom for M0.__default.Combine for all literals (revealed)
axiom {:id "id18"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, sts#0: Set :: 
    {:weight 3} { M0.__default.Combine($LS($ly), Lit(sts#0)), $IsGoodHeap($Heap) } 
    M0.__default.Combine#canCall(Lit(sts#0))
         || (3 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(sts#0, TSet(Tclass.M0.State()))
           && !Set#Equal(sts#0, Set#Empty(): Set))
       ==> $let#0$canCall(Lit(sts#0))
         && (!Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, $let#0_st(Lit(sts#0))))
           ==> M0.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $let#0_st(Lit(sts#0)))))
             && M0.__default.Union#canCall($let#0_st(Lit(sts#0)), 
              M0.__default.Combine($LS($ly), 
                Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, $let#0_st(Lit(sts#0)))))))
         && M0.__default.Combine($LS($ly), Lit(sts#0))
           == (var st#1 := $let#0_st(Lit(sts#0)); 
            (if Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#1))
               then st#1
               else M0.__default.Union(st#1, 
                M0.__default.Combine($LS($ly), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#1)))))));
}

function M0.__default.Combine#canCall(sts#0: Set) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, sts#0: Set :: 
  { M0.__default.Combine($LS($ly), sts#0) } 
  M0.__default.Combine($LS($ly), sts#0) == M0.__default.Combine($ly, sts#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, sts#0: Set :: 
  { M0.__default.Combine(AsFuelBottom($ly), sts#0) } 
  M0.__default.Combine($ly, sts#0) == M0.__default.Combine($LZ, sts#0));

function M0.__default.Combine#requires(LayerType, Set) : bool;

// #requires axiom for M0.__default.Combine
axiom (forall $ly: LayerType, $Heap: Heap, sts#0: Set :: 
  { M0.__default.Combine#requires($ly, sts#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(sts#0, TSet(Tclass.M0.State()))
     ==> M0.__default.Combine#requires($ly, sts#0) == !Set#Equal(sts#0, Set#Empty(): Set));

function $let#0_st(sts: Set) : Box;

function $let#0$canCall(sts: Set) : bool;

axiom (forall sts: Set :: 
  { $let#0_st(sts) } 
  $let#0$canCall(sts)
     ==> $IsBox($let#0_st(sts), Tclass.M0.State()) && Set#IsMember(sts, $let#0_st(sts)));

procedure {:verboseName "M0.Combine (well-formedness)"} CheckWellformed$$M0.__default.Combine(sts#0: Set where $Is(sts#0, TSet(Tclass.M0.State())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Combine (well-formedness)"} CheckWellformed$$M0.__default.Combine(sts#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var st#2: Box;
  var ##st#0: Box;
  var ##st'#0: Box;
  var ##sts#0: Set;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id19"} !Set#Equal(sts#0, Set#Empty(): Set);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(M0.__default.Combine($LS($LZ), sts#0), Tclass.M0.State());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc st#2;
        if ($IsBox(st#2, Tclass.M0.State()) && $IsAllocBox(st#2, Tclass.M0.State(), $Heap))
        {
        }

        assert {:id "id20"} (exists st#3: Box :: 
          $IsBox(st#3, Tclass.M0.State()) && Set#IsMember(sts#0, st#3));
        assume $IsBox(st#2, Tclass.M0.State()) && $IsAllocBox(st#2, Tclass.M0.State(), $Heap);
        assume Set#IsMember(sts#0, st#2);
        if (Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#2)))
        {
        }
        else
        {
            ##st#0 := st#2;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
            ##sts#0 := Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#2));
            // assume allocatedness for argument to function
            assume $IsAlloc(##sts#0, TSet(Tclass.M0.State()), $Heap);
            assert {:id "id21"} {:subsumption 0} !Set#Equal(##sts#0, Set#Empty(): Set);
            assume !Set#Equal(##sts#0, Set#Empty(): Set);
            assert {:id "id22"} Set#Subset(##sts#0, sts#0) && !Set#Subset(sts#0, ##sts#0);
            assume M0.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#2)));
            ##st'#0 := M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#2)));
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st'#0, Tclass.M0.State(), $Heap);
            assume M0.__default.Union#canCall(st#2, 
              M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#2))));
        }

        assume $let#0$canCall(sts#0);
        assume {:id "id23"} M0.__default.Combine($LS($LZ), sts#0)
           == (if Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#2))
             then st#2
             else M0.__default.Union(st#2, 
              M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#2)))));
        assume !Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#2))
           ==> M0.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#2)))
             && M0.__default.Union#canCall(st#2, 
              M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#2))));
        // CheckWellformedWithResult: any expression
        assume $IsBox(M0.__default.Combine($LS($LZ), sts#0), Tclass.M0.State());
        return;

        assume false;
    }
}



procedure {:verboseName "M0.Lemma_Combine (well-formedness)"} CheckWellFormed$$M0.__default.Lemma__Combine(sts#0: Set
       where $Is(sts#0, TSet(Tclass.M0.State()))
         && $IsAlloc(sts#0, TSet(Tclass.M0.State()), $Heap), 
    parent#0: Box
       where $IsBox(parent#0, Tclass.M0.State())
         && $IsAllocBox(parent#0, Tclass.M0.State(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Lemma_Combine (well-formedness)"} CheckWellFormed$$M0.__default.Lemma__Combine(sts#0: Set, parent#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var st#0: Box;
  var ##st#0: Box;
  var ##st#1: Box;
  var ##st'#0: Box;
  var ##st#2: Box;
  var ##sts#0: Set;
  var ##st#3: Box;
  var ##st'#1: Box;
  var ##sts#1: Set;


    // AddMethodImpl: Lemma_Combine, CheckWellFormed$$M0.__default.Lemma__Combine
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id24"} !Set#Equal(sts#0, Set#Empty(): Set);
    havoc st#0;
    assume $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap);
    if (*)
    {
        assume {:id "id25"} Set#IsMember(sts#0, st#0);
        ##st#0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
        assume M0.__default.ValidState#canCall(st#0);
        assume {:id "id26"} M0.__default.ValidState(st#0);
        ##st#1 := parent#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
        ##st'#0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.M0.State(), $Heap);
        assume M0.__default.Extends#canCall(parent#0, st#0);
        assume {:id "id27"} M0.__default.Extends(parent#0, st#0);
    }
    else
    {
        assume {:id "id28"} Set#IsMember(sts#0, st#0)
           ==> M0.__default.ValidState(st#0) && M0.__default.Extends(parent#0, st#0);
    }

    assume {:id "id29"} (forall st#1: Box :: 
      { M0.__default.Extends(parent#0, st#1) } 
        { M0.__default.ValidState(st#1) } 
        { Set#IsMember(sts#0, st#1) } 
      $IsBox(st#1, Tclass.M0.State())
         ==> (Set#IsMember(sts#0, st#1) ==> M0.__default.ValidState(st#1))
           && (Set#IsMember(sts#0, st#1) ==> M0.__default.Extends(parent#0, st#1)));
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##sts#0 := sts#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##sts#0, TSet(Tclass.M0.State()), $Heap);
    assert {:id "id30"} {:subsumption 0} !Set#Equal(##sts#0, Set#Empty(): Set);
    assume !Set#Equal(##sts#0, Set#Empty(): Set);
    assume M0.__default.Combine#canCall(sts#0);
    ##st#2 := M0.__default.Combine($LS($LZ), sts#0);
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(M0.__default.Combine($LS($LZ), sts#0));
    assume {:id "id31"} M0.__default.ValidState(M0.__default.Combine($LS($LZ), sts#0));
    ##st#3 := parent#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
    ##sts#1 := sts#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##sts#1, TSet(Tclass.M0.State()), $Heap);
    assert {:id "id32"} {:subsumption 0} !Set#Equal(##sts#1, Set#Empty(): Set);
    assume !Set#Equal(##sts#1, Set#Empty(): Set);
    assume M0.__default.Combine#canCall(sts#0);
    ##st'#1 := M0.__default.Combine($LS($LZ), sts#0);
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#1, Tclass.M0.State(), $Heap);
    assume M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0));
    assume {:id "id33"} M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0));
}



procedure {:verboseName "M0.Lemma_Combine (call)"} Call$$M0.__default.Lemma__Combine(sts#0: Set
       where $Is(sts#0, TSet(Tclass.M0.State()))
         && $IsAlloc(sts#0, TSet(Tclass.M0.State()), $Heap), 
    parent#0: Box
       where $IsBox(parent#0, Tclass.M0.State())
         && $IsAllocBox(parent#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id34"} !Set#Equal(sts#0, Set#Empty(): Set);
  requires {:id "id35"} (forall st#1: Box :: 
    { M0.__default.Extends(parent#0, st#1) } 
      { M0.__default.ValidState(st#1) } 
      { Set#IsMember(sts#0, st#1) } 
    $IsBox(st#1, Tclass.M0.State())
       ==> (Set#IsMember(sts#0, st#1) ==> M0.__default.ValidState(st#1))
         && (Set#IsMember(sts#0, st#1) ==> M0.__default.Extends(parent#0, st#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.Combine#canCall(sts#0)
     && M0.__default.ValidState#canCall(M0.__default.Combine($LS($LZ), sts#0))
     && (M0.__default.ValidState(M0.__default.Combine($LS($LZ), sts#0))
       ==> M0.__default.Combine#canCall(sts#0)
         && M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0)));
  free ensures {:id "id36"} M0.__default.ValidState#canCall(M0.__default.Combine($LS($LZ), sts#0))
     && 
    M0.__default.ValidState(M0.__default.Combine($LS($LZ), sts#0))
     && (forall p#0: Box :: 
      { M0.__default.WellFounded(p#0) } 
        { Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LZ), sts#0)), p#0) } 
      $IsBox(p#0, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LZ), sts#0)), p#0)
         ==> M0.__default.WellFounded(p#0));
  free ensures {:id "id37"} M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0))
     && 
    M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0))
     && 
    Set#Subset(M0.__default.DomSt(parent#0), 
      M0.__default.DomSt(M0.__default.Combine($LS($LZ), sts#0)))
     && (forall p#1: Box :: 
      { M0.__default.GetSt(p#1, parent#0) } 
        { M0.__default.GetSt(p#1, M0.__default.Combine($LS($LZ), sts#0)) } 
        { Set#IsMember(M0.__default.DomSt(parent#0), p#1) } 
      $IsBox(p#1, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(parent#0), p#1)
         ==> M0.__default.GetSt(p#1, M0.__default.Combine($LS($LZ), sts#0))
           == M0.__default.GetSt(p#1, parent#0))
     && (forall p#2: Box :: 
      { M0.__default.Oracle(p#2, parent#0) } 
        { M0.__default.GetSt(p#2, M0.__default.Combine($LS($LZ), sts#0)) } 
        { Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LZ), sts#0)), p#2) } 
        { Set#IsMember(M0.__default.DomSt(parent#0), p#2) } 
      $IsBox(p#2, Tclass.M0.Path())
         ==> 
        !Set#IsMember(M0.__default.DomSt(parent#0), p#2)
           && Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LZ), sts#0)), p#2)
         ==> M0.__default.GetSt(p#2, M0.__default.Combine($LS($LZ), sts#0))
           == M0.__default.Oracle(p#2, parent#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M0.Lemma_Combine (correctness)"} Impl$$M0.__default.Lemma__Combine(sts#0: Set
       where $Is(sts#0, TSet(Tclass.M0.State()))
         && $IsAlloc(sts#0, TSet(Tclass.M0.State()), $Heap), 
    parent#0: Box
       where $IsBox(parent#0, Tclass.M0.State())
         && $IsAllocBox(parent#0, Tclass.M0.State(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id38"} !Set#Equal(sts#0, Set#Empty(): Set);
  requires {:id "id39"} (forall st#1: Box :: 
    { M0.__default.Extends(parent#0, st#1) } 
      { M0.__default.ValidState(st#1) } 
      { Set#IsMember(sts#0, st#1) } 
    $IsBox(st#1, Tclass.M0.State())
       ==> (Set#IsMember(sts#0, st#1) ==> M0.__default.ValidState(st#1))
         && (Set#IsMember(sts#0, st#1) ==> M0.__default.Extends(parent#0, st#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.Combine#canCall(sts#0)
     && M0.__default.ValidState#canCall(M0.__default.Combine($LS($LZ), sts#0))
     && (M0.__default.ValidState(M0.__default.Combine($LS($LZ), sts#0))
       ==> M0.__default.Combine#canCall(sts#0)
         && M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0)));
  ensures {:id "id40"} M0.__default.ValidState#canCall(M0.__default.Combine($LS($LZ), sts#0))
     ==> M0.__default.ValidState(M0.__default.Combine($LS($LZ), sts#0))
       || (forall p#3: Box :: 
        { M0.__default.WellFounded(p#3) } 
          { Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)), p#3) } 
        $IsBox(p#3, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)), p#3)
           ==> M0.__default.WellFounded(p#3));
  ensures {:id "id41"} M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0))
     ==> M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0))
       || Set#Subset(M0.__default.DomSt(parent#0), 
        M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)));
  ensures {:id "id42"} M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0))
     ==> M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0))
       || (forall p#4: Box :: 
        { M0.__default.GetSt(p#4, parent#0) } 
          { M0.__default.GetSt(p#4, M0.__default.Combine($LS($LS($LZ)), sts#0)) } 
          { Set#IsMember(M0.__default.DomSt(parent#0), p#4) } 
        $IsBox(p#4, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(parent#0), p#4)
           ==> M0.__default.GetSt(p#4, M0.__default.Combine($LS($LS($LZ)), sts#0))
             == M0.__default.GetSt(p#4, parent#0));
  ensures {:id "id43"} M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0))
     ==> M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0))
       || (forall p#5: Box :: 
        { M0.__default.Oracle(p#5, parent#0) } 
          { M0.__default.GetSt(p#5, M0.__default.Combine($LS($LS($LZ)), sts#0)) } 
          { Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)), p#5) } 
          { Set#IsMember(M0.__default.DomSt(parent#0), p#5) } 
        $IsBox(p#5, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(parent#0), p#5)
             && Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)), p#5)
           ==> M0.__default.GetSt(p#5, M0.__default.Combine($LS($LS($LZ)), sts#0))
             == M0.__default.Oracle(p#5, parent#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Lemma_Combine (correctness)"} Impl$$M0.__default.Lemma__Combine(sts#0: Set, parent#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var st#0_0: Box;
  var ##sts#0_0: Set;
  var ##st#0_0: Box;
  var ##st'#0_0: Box;
  var ##sts#0_1: Set;
  var ##st#0_1: Box;
  var ##st'#0_1: Box;
  var ##sts#0_2: Set;

    // AddMethodImpl: Lemma_Combine, Impl$$M0.__default.Lemma__Combine
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#sts0#0: Set :: 
      { M0.__default.Combine($LS($LZ), $ih#sts0#0) } 
      $Is($ih#sts0#0, TSet(Tclass.M0.State()))
           && 
          !Set#Equal($ih#sts0#0, Set#Empty(): Set)
           && (forall st#2: Box :: 
            { M0.__default.Extends(parent#0, st#2) } 
              { M0.__default.ValidState(st#2) } 
              { Set#IsMember($ih#sts0#0, st#2) } 
            $IsBox(st#2, Tclass.M0.State())
               ==> (Set#IsMember($ih#sts0#0, st#2) ==> M0.__default.ValidState(st#2))
                 && (Set#IsMember($ih#sts0#0, st#2) ==> M0.__default.Extends(parent#0, st#2)))
           && 
          Set#Subset($ih#sts0#0, sts#0)
           && !Set#Subset(sts#0, $ih#sts0#0)
         ==> M0.__default.ValidState(M0.__default.Combine($LS($LZ), $ih#sts0#0))
           && M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), $ih#sts0#0)));
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(50,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc st#0_0;
        assume $IsBox(st#0_0, Tclass.M0.State());
        if (Set#IsMember(sts#0, st#0_0))
        {
            if (!Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0)))
            {
                ##sts#0_0 := sts#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##sts#0_0, TSet(Tclass.M0.State()), $Heap);
                assert {:id "id44"} {:subsumption 0} !Set#Equal(##sts#0_0, Set#Empty(): Set);
                assume M0.__default.Combine#canCall(sts#0);
                ##st#0_0 := st#0_0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#0_0, Tclass.M0.State(), $Heap);
                ##sts#0_1 := Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##sts#0_1, TSet(Tclass.M0.State()), $Heap);
                assert {:id "id45"} {:subsumption 0} !Set#Equal(##sts#0_1, Set#Empty(): Set);
                assume M0.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0)));
                ##st'#0_0 := M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0)));
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st'#0_0, Tclass.M0.State(), $Heap);
                assume M0.__default.Union#canCall(st#0_0, 
                  M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0))));
            }
        }

        assume Set#IsMember(sts#0, st#0_0)
           ==> 
          !Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0))
           ==> M0.__default.Combine#canCall(sts#0)
             && 
            M0.__default.Combine#canCall(Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0)))
             && M0.__default.Union#canCall(st#0_0, 
              M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0))));
        assume {:id "id46"} Set#IsMember(sts#0, st#0_0)
           && (Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0))
             || M0.__default.Combine($LS($LZ), sts#0)
               == M0.__default.Union(st#0_0, 
                M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_0)))));
        if (*)
        {
            ##st#0_1 := parent#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#0_1, Tclass.M0.State(), $Heap);
            ##sts#0_2 := sts#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##sts#0_2, TSet(Tclass.M0.State()), $Heap);
            assert {:id "id47"} {:subsumption 0} !Set#Equal(##sts#0_2, Set#Empty(): Set);
            assume M0.__default.Combine#canCall(sts#0);
            ##st'#0_1 := M0.__default.Combine($LS($LZ), sts#0);
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st'#0_1, Tclass.M0.State(), $Heap);
            assume M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0));
            assume M0.__default.Combine#canCall(sts#0)
               && M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0));
            assume {:id "id48"} M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0));
            assume false;
        }

        assert {:id "id49"} M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0))
           ==> M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0))
             || Set#Subset(M0.__default.DomSt(parent#0), 
              M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)));
        assert {:id "id50"} M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0))
           ==> M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0))
             || (forall p#0_0: Box :: 
              { M0.__default.GetSt(p#0_0, parent#0) } 
                { M0.__default.GetSt(p#0_0, M0.__default.Combine($LS($LS($LZ)), sts#0)) } 
                { Set#IsMember(M0.__default.DomSt(parent#0), p#0_0) } 
              $IsBox(p#0_0, Tclass.M0.Path())
                 ==> 
                Set#IsMember(M0.__default.DomSt(parent#0), p#0_0)
                 ==> M0.__default.GetSt(p#0_0, M0.__default.Combine($LS($LS($LZ)), sts#0))
                   == M0.__default.GetSt(p#0_0, parent#0));
        assert {:id "id51"} M0.__default.Extends#canCall(parent#0, M0.__default.Combine($LS($LZ), sts#0))
           ==> M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0))
             || (forall p#0_1: Box :: 
              { M0.__default.Oracle(p#0_1, parent#0) } 
                { M0.__default.GetSt(p#0_1, M0.__default.Combine($LS($LS($LZ)), sts#0)) } 
                { Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)), p#0_1) } 
                { Set#IsMember(M0.__default.DomSt(parent#0), p#0_1) } 
              $IsBox(p#0_1, Tclass.M0.Path())
                 ==> 
                !Set#IsMember(M0.__default.DomSt(parent#0), p#0_1)
                   && Set#IsMember(M0.__default.DomSt(M0.__default.Combine($LS($LS($LZ)), sts#0)), p#0_1)
                 ==> M0.__default.GetSt(p#0_1, M0.__default.Combine($LS($LS($LZ)), sts#0))
                   == M0.__default.Oracle(p#0_1, parent#0));
        assume false;
    }
    else
    {
        assume (forall st#0_1: Box :: 
          { Set#UnionOne(Set#Empty(): Set, st#0_1) } { Set#IsMember(sts#0, st#0_1) } 
          $IsBox(st#0_1, Tclass.M0.State())
               && 
              Set#IsMember(sts#0, st#0_1)
               && (Set#Equal(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_1))
                 || M0.__default.Combine($LS($LZ), sts#0)
                   == M0.__default.Union(st#0_1, 
                    M0.__default.Combine($LS($LZ), Set#Difference(sts#0, Set#UnionOne(Set#Empty(): Set, st#0_1)))))
             ==> M0.__default.Extends(parent#0, M0.__default.Combine($LS($LZ), sts#0)));
    }
}



// function declaration for M0._default.ValidEnv
function M0.__default.ValidEnv(env#0: Box) : bool;

function M0.__default.ValidEnv#canCall(env#0: Box) : bool;

function Tclass.M0.Env() : Ty;

function M0.__default.ValidEnv#requires(Box) : bool;

// #requires axiom for M0.__default.ValidEnv
axiom (forall env#0: Box :: 
  { M0.__default.ValidEnv#requires(env#0) } 
  $IsBox(env#0, Tclass.M0.Env()) ==> M0.__default.ValidEnv#requires(env#0) == true);

procedure {:verboseName "M0.ValidEnv (well-formedness)"} CheckWellformed$$M0.__default.ValidEnv(env#0: Box where $IsBox(env#0, Tclass.M0.Env()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.EmptyEnv
function M0.__default.EmptyEnv() : Box
uses {
// consequence axiom for M0.__default.EmptyEnv
axiom 1 <= $FunctionContextHeight
   ==> 
  M0.__default.EmptyEnv#canCall() || 1 < $FunctionContextHeight
   ==> M0.__default.ValidEnv(M0.__default.EmptyEnv())
     && $IsBox(M0.__default.EmptyEnv(), Tclass.M0.Env());
// alloc consequence axiom for M0.__default.EmptyEnv
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap :: 
    { $IsAllocBox(M0.__default.EmptyEnv(), Tclass.M0.Env(), $Heap) } 
    (M0.__default.EmptyEnv#canCall() || 1 < $FunctionContextHeight)
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M0.__default.EmptyEnv(), Tclass.M0.Env(), $Heap));
}

function M0.__default.EmptyEnv#canCall() : bool;

function M0.__default.EmptyEnv#requires() : bool
uses {
// #requires axiom for M0.__default.EmptyEnv
axiom M0.__default.EmptyEnv#requires() == true;
}

procedure {:verboseName "M0.EmptyEnv (well-formedness)"} CheckWellformed$$M0.__default.EmptyEnv();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id52"} M0.__default.ValidEnv(M0.__default.EmptyEnv());



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.EmptyEnv (well-formedness)"} CheckWellformed$$M0.__default.EmptyEnv()
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
        assume $IsBox(M0.__default.EmptyEnv(), Tclass.M0.Env());
        assert {:id "id53"} Lit(true);
        assume Lit(true) || M0.__default.EmptyEnv#canCall();
        ##env#0 := M0.__default.EmptyEnv();
        // assume allocatedness for argument to function
        assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
        assume M0.__default.ValidEnv#canCall(M0.__default.EmptyEnv());
        assume {:id "id54"} M0.__default.ValidEnv(M0.__default.EmptyEnv());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for M0._default.GetEnv
function M0.__default.GetEnv(id#0: Box, env#0: Box) : DatatypeType
uses {
// consequence axiom for M0.__default.GetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall id#0: Box, env#0: Box :: 
    { M0.__default.GetEnv(id#0, env#0) } 
    M0.__default.GetEnv#canCall(id#0, env#0)
         || (3 < $FunctionContextHeight
           && 
          $IsBox(id#0, Tclass.M0.Identifier())
           && $IsBox(env#0, Tclass.M0.Env())
           && M0.__default.ValidEnv(env#0))
       ==> M0.__default.Value(M0.__default.GetEnv(id#0, env#0))
         && $Is(M0.__default.GetEnv(id#0, env#0), Tclass.M0.Expression()));
// alloc consequence axiom for M0.__default.GetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, id#0: Box, env#0: Box :: 
    { $IsAlloc(M0.__default.GetEnv(id#0, env#0), Tclass.M0.Expression(), $Heap) } 
    (M0.__default.GetEnv#canCall(id#0, env#0)
           || (3 < $FunctionContextHeight
             && 
            $IsBox(id#0, Tclass.M0.Identifier())
             && $IsAllocBox(id#0, Tclass.M0.Identifier(), $Heap)
             && 
            $IsBox(env#0, Tclass.M0.Env())
             && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap)
             && M0.__default.ValidEnv(env#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M0.__default.GetEnv(id#0, env#0), Tclass.M0.Expression(), $Heap));
}

function M0.__default.GetEnv#canCall(id#0: Box, env#0: Box) : bool;

function Tclass.M0.Identifier() : Ty;

function Tclass.M0.Expression() : Ty
uses {
// Tclass.M0.Expression Tag
axiom Tag(Tclass.M0.Expression()) == Tagclass.M0.Expression
   && TagFamily(Tclass.M0.Expression()) == tytagFamily$Expression;
}

const unique Tagclass.M0.Expression: TyTag;

// Box/unbox axiom for Tclass.M0.Expression
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M0.Expression()) } 
  $IsBox(bx, Tclass.M0.Expression())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M0.Expression()));

function M0.__default.GetEnv#requires(Box, Box) : bool;

// #requires axiom for M0.__default.GetEnv
axiom (forall id#0: Box, env#0: Box :: 
  { M0.__default.GetEnv#requires(id#0, env#0) } 
  $IsBox(id#0, Tclass.M0.Identifier()) && $IsBox(env#0, Tclass.M0.Env())
     ==> M0.__default.GetEnv#requires(id#0, env#0) == M0.__default.ValidEnv(env#0));

procedure {:verboseName "M0.GetEnv (well-formedness)"} CheckWellformed$$M0.__default.GetEnv(id#0: Box where $IsBox(id#0, Tclass.M0.Identifier()), 
    env#0: Box where $IsBox(env#0, Tclass.M0.Env()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id55"} M0.__default.Value#canCall(M0.__default.GetEnv(id#0, env#0))
     ==> M0.__default.Value(M0.__default.GetEnv(id#0, env#0))
       || M0.Expression.exprLiteral_q(M0.__default.GetEnv(id#0, env#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.GetEnv (well-formedness)"} CheckWellformed$$M0.__default.GetEnv(id#0: Box, env#0: Box)
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
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id56"} M0.__default.ValidEnv(env#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(M0.__default.GetEnv(id#0, env#0), Tclass.M0.Expression());
        ##id#0 := id#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##id#0, Tclass.M0.Identifier(), $Heap);
        ##env#1 := env#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
        assert {:id "id57"} {:subsumption 0} M0.__default.ValidEnv(##env#1);
        assume M0.__default.ValidEnv(##env#1);
        assert {:id "id58"} id#0 == id#0 && env#0 == env#0;
        assume (id#0 == id#0 && env#0 == env#0) || M0.__default.GetEnv#canCall(id#0, env#0);
        ##expr#0 := M0.__default.GetEnv(id#0, env#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##expr#0, Tclass.M0.Expression(), $Heap);
        assume M0.__default.Value#canCall(M0.__default.GetEnv(id#0, env#0));
        assume {:id "id59"} M0.__default.Value(M0.__default.GetEnv(id#0, env#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for M0._default.SetEnv
function M0.__default.SetEnv(id#0: Box, expr#0: DatatypeType, env#0: Box) : Box
uses {
// consequence axiom for M0.__default.SetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall id#0: Box, expr#0: DatatypeType, env#0: Box :: 
    { M0.__default.SetEnv(id#0, expr#0, env#0) } 
    M0.__default.SetEnv#canCall(id#0, expr#0, env#0)
         || (3 < $FunctionContextHeight
           && 
          $IsBox(id#0, Tclass.M0.Identifier())
           && $Is(expr#0, Tclass.M0.Expression())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.ValidEnv(env#0)
           && M0.__default.Value(expr#0))
       ==> M0.__default.ValidEnv(M0.__default.SetEnv(id#0, expr#0, env#0))
         && $IsBox(M0.__default.SetEnv(id#0, expr#0, env#0), Tclass.M0.Env()));
// alloc consequence axiom for M0.__default.SetEnv
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, id#0: Box, expr#0: DatatypeType, env#0: Box :: 
    { $IsAllocBox(M0.__default.SetEnv(id#0, expr#0, env#0), Tclass.M0.Env(), $Heap) } 
    (M0.__default.SetEnv#canCall(id#0, expr#0, env#0)
           || (3 < $FunctionContextHeight
             && 
            $IsBox(id#0, Tclass.M0.Identifier())
             && $IsAllocBox(id#0, Tclass.M0.Identifier(), $Heap)
             && 
            $Is(expr#0, Tclass.M0.Expression())
             && $IsAlloc(expr#0, Tclass.M0.Expression(), $Heap)
             && 
            $IsBox(env#0, Tclass.M0.Env())
             && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap)
             && 
            M0.__default.ValidEnv(env#0)
             && M0.__default.Value(expr#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M0.__default.SetEnv(id#0, expr#0, env#0), Tclass.M0.Env(), $Heap));
}

function M0.__default.SetEnv#canCall(id#0: Box, expr#0: DatatypeType, env#0: Box) : bool;

function M0.__default.SetEnv#requires(Box, DatatypeType, Box) : bool;

// #requires axiom for M0.__default.SetEnv
axiom (forall id#0: Box, expr#0: DatatypeType, env#0: Box :: 
  { M0.__default.SetEnv#requires(id#0, expr#0, env#0) } 
  $IsBox(id#0, Tclass.M0.Identifier())
       && $Is(expr#0, Tclass.M0.Expression())
       && $IsBox(env#0, Tclass.M0.Env())
     ==> M0.__default.SetEnv#requires(id#0, expr#0, env#0)
       == (M0.__default.ValidEnv(env#0) && M0.__default.Value(expr#0)));

procedure {:verboseName "M0.SetEnv (well-formedness)"} CheckWellformed$$M0.__default.SetEnv(id#0: Box where $IsBox(id#0, Tclass.M0.Identifier()), 
    expr#0: DatatypeType where $Is(expr#0, Tclass.M0.Expression()), 
    env#0: Box where $IsBox(env#0, Tclass.M0.Env()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id60"} M0.__default.ValidEnv(M0.__default.SetEnv(id#0, expr#0, env#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.SetEnv (well-formedness)"} CheckWellformed$$M0.__default.SetEnv(id#0: Box, expr#0: DatatypeType, env#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##env#0: Box;
  var ##expr#0: DatatypeType;
  var ##env#1: Box;
  var ##id#0: Box;
  var ##expr#1: DatatypeType;
  var ##env#2: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id61"} M0.__default.ValidEnv(env#0);
    ##expr#0 := expr#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##expr#0, Tclass.M0.Expression(), $Heap);
    assume M0.__default.Value#canCall(expr#0);
    assume {:id "id62"} M0.__default.Value(expr#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(M0.__default.SetEnv(id#0, expr#0, env#0), Tclass.M0.Env());
        ##id#0 := id#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##id#0, Tclass.M0.Identifier(), $Heap);
        ##expr#1 := expr#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##expr#1, Tclass.M0.Expression(), $Heap);
        ##env#2 := env#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##env#2, Tclass.M0.Env(), $Heap);
        assert {:id "id63"} {:subsumption 0} M0.__default.ValidEnv(##env#2);
        assert {:id "id64"} {:subsumption 0} M0.__default.Value#canCall(##expr#1)
           ==> M0.__default.Value(##expr#1) || M0.Expression.exprLiteral_q(##expr#1);
        assume M0.__default.ValidEnv(##env#2) && M0.__default.Value(##expr#1);
        assert {:id "id65"} (id#0 == id#0 && M0.Expression#Equal(expr#0, expr#0) && env#0 == env#0)
           || DtRank(##expr#1) < DtRank(expr#0);
        assume (id#0 == id#0 && M0.Expression#Equal(expr#0, expr#0) && env#0 == env#0)
           || M0.__default.SetEnv#canCall(id#0, expr#0, env#0);
        ##env#1 := M0.__default.SetEnv(id#0, expr#0, env#0);
        // assume allocatedness for argument to function
        assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
        assume M0.__default.ValidEnv#canCall(M0.__default.SetEnv(id#0, expr#0, env#0));
        assume {:id "id66"} M0.__default.ValidEnv(M0.__default.SetEnv(id#0, expr#0, env#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for M0._default.exec
function M0.__default.exec(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box) : DatatypeType
uses {
// consequence axiom for M0.__default.exec
axiom 1 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    { M0.__default.exec(cmd#0, deps#0, exps#0, st#0) } 
    M0.__default.exec#canCall(cmd#0, deps#0, exps#0, st#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $IsBox(st#0, Tclass.M0.State()))
       ==> $Is(M0.__default.exec(cmd#0, deps#0, exps#0, st#0), 
        Tclass.M0.Tuple(TSet(Tclass.M0.Path()), Tclass.M0.State())));
// alloc consequence axiom for M0.__default.exec
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    { $IsAlloc(M0.__default.exec(cmd#0, deps#0, exps#0, st#0), 
        Tclass.M0.Tuple(TSet(Tclass.M0.Path()), Tclass.M0.State()), 
        $Heap) } 
    (M0.__default.exec#canCall(cmd#0, deps#0, exps#0, st#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(cmd#0, TSeq(TChar))
             && $IsAlloc(cmd#0, TSeq(TChar), $Heap)
             && 
            $Is(deps#0, TSet(Tclass.M0.Path()))
             && $IsAlloc(deps#0, TSet(Tclass.M0.Path()), $Heap)
             && 
            $Is(exps#0, TSet(TSeq(TChar)))
             && $IsAlloc(exps#0, TSet(TSeq(TChar)), $Heap)
             && 
            $IsBox(st#0, Tclass.M0.State())
             && $IsAllocBox(st#0, Tclass.M0.State(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M0.__default.exec(cmd#0, deps#0, exps#0, st#0), 
        Tclass.M0.Tuple(TSet(Tclass.M0.Path()), Tclass.M0.State()), 
        $Heap));
}

function M0.__default.exec#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box) : bool;

function Tclass.M0.Tuple(Ty, Ty) : Ty;

const unique Tagclass.M0.Tuple: TyTag;

// Tclass.M0.Tuple Tag
axiom (forall M0.Tuple$A: Ty, M0.Tuple$B: Ty :: 
  { Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B) } 
  Tag(Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) == Tagclass.M0.Tuple
     && TagFamily(Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) == tytagFamily$Tuple);

function Tclass.M0.Tuple_0(Ty) : Ty;

// Tclass.M0.Tuple injectivity 0
axiom (forall M0.Tuple$A: Ty, M0.Tuple$B: Ty :: 
  { Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B) } 
  Tclass.M0.Tuple_0(Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) == M0.Tuple$A);

function Tclass.M0.Tuple_1(Ty) : Ty;

// Tclass.M0.Tuple injectivity 1
axiom (forall M0.Tuple$A: Ty, M0.Tuple$B: Ty :: 
  { Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B) } 
  Tclass.M0.Tuple_1(Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) == M0.Tuple$B);

// Box/unbox axiom for Tclass.M0.Tuple
axiom (forall M0.Tuple$A: Ty, M0.Tuple$B: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) } 
  $IsBox(bx, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)));

function M0.__default.exec#requires(Seq, Set, Set, Box) : bool;

// #requires axiom for M0.__default.exec
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
  { M0.__default.exec#requires(cmd#0, deps#0, exps#0, st#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M0.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.exec#requires(cmd#0, deps#0, exps#0, st#0) == true);

procedure {:verboseName "M0.exec (well-formedness)"} CheckWellformed$$M0.__default.exec(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M0.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0.ExecProperty (well-formedness)"} CheckWellFormed$$M0.__default.ExecProperty(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)) && $IsAlloc(cmd#0, TSeq(TChar), $Heap), 
    deps#0: Set
       where $Is(deps#0, TSet(Tclass.M0.Path()))
         && $IsAlloc(deps#0, TSet(Tclass.M0.Path()), $Heap), 
    exps#0: Set
       where $Is(exps#0, TSet(TSeq(TChar))) && $IsAlloc(exps#0, TSet(TSeq(TChar)), $Heap), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0.ExecProperty (call)"} Call$$M0.__default.ExecProperty(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)) && $IsAlloc(cmd#0, TSeq(TChar), $Heap), 
    deps#0: Set
       where $Is(deps#0, TSet(Tclass.M0.Path()))
         && $IsAlloc(deps#0, TSet(Tclass.M0.Path()), $Heap), 
    exps#0: Set
       where $Is(exps#0, TSet(TSeq(TChar))) && $IsAlloc(exps#0, TSet(TSeq(TChar)), $Heap), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id73"} M0.__default.ValidState#canCall(st#0)
     ==> M0.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M0.__default.WellFounded(p#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#0)
           ==> M0.__default.WellFounded(p#0));
  requires {:id "id74"} Set#Subset(deps#0, M0.__default.DomSt(st#0));
  requires {:id "id75"} M0.__default.Pre#canCall(cmd#0, deps#0, exps#0, st#0)
     ==> M0.__default.Pre(cmd#0, deps#0, exps#0, st#0)
       || (forall e#0: Seq :: 
        { M0.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
        $Is(e#0, TSeq(TChar))
           ==> 
          Set#IsMember(exps#0, $Box(e#0))
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#0))
           ==> M0.__default.GetSt(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)
             == M0.__default.Oracle(M0.__default.Loc(cmd#0, deps#0, e#0), st#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.exec#canCall(cmd#0, deps#0, exps#0, st#0)
     && (var paths#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
        M0.Tuple.snd(M0.__default.exec(cmd#0, deps#0, exps#0, st#0)); 
      M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> M0.__default.Extends#canCall(st#0, st'#0)
             && (M0.__default.Extends(st#0, st'#0)
               ==> M0.__default.OneToOne#canCall(cmd#0, deps#0, exps#0, paths#0)
                 && (M0.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0)
                   ==> M0.__default.Post#canCall(cmd#0, deps#0, exps#0, st'#0)))));
  free ensures {:id "id76"} (var paths#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      M0.Tuple.snd(M0.__default.exec(cmd#0, deps#0, exps#0, st#0)); 
    M0.__default.ValidState#canCall(st'#0)
       && 
      M0.__default.ValidState(st'#0)
       && (forall p#1: Box :: 
        { M0.__default.WellFounded(p#1) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#1) } 
        $IsBox(p#1, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st'#0), p#1)
           ==> M0.__default.WellFounded(p#1)));
  free ensures {:id "id77"} (var paths#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      M0.Tuple.snd(M0.__default.exec(cmd#0, deps#0, exps#0, st#0)); 
    M0.__default.Extends#canCall(st#0, st'#0)
       && 
      M0.__default.Extends(st#0, st'#0)
       && 
      Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
       && (forall p#2: Box :: 
        { M0.__default.GetSt(p#2, st#0) } 
          { M0.__default.GetSt(p#2, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
        $IsBox(p#2, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#2)
           ==> M0.__default.GetSt(p#2, st'#0) == M0.__default.GetSt(p#2, st#0))
       && (forall p#3: Box :: 
        { M0.__default.Oracle(p#3, st#0) } 
          { M0.__default.GetSt(p#3, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#3) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#3) } 
        $IsBox(p#3, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st#0), p#3)
             && Set#IsMember(M0.__default.DomSt(st'#0), p#3)
           ==> M0.__default.GetSt(p#3, st'#0) == M0.__default.Oracle(p#3, st#0)));
  free ensures {:id "id78"} (var paths#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      M0.Tuple.snd(M0.__default.exec(cmd#0, deps#0, exps#0, st#0)); 
    M0.__default.OneToOne#canCall(cmd#0, deps#0, exps#0, paths#0)
       && 
      M0.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0)
       && (forall e#1: Seq :: 
        { M0.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
        $Is(e#1, TSeq(TChar))
           ==> 
          Set#IsMember(exps#0, $Box(e#1))
           ==> Set#IsMember(paths#0, M0.__default.Loc(cmd#0, deps#0, e#1))));
  free ensures {:id "id79"} (var paths#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.exec(cmd#0, deps#0, exps#0, st#0))): Set, 
      M0.Tuple.snd(M0.__default.exec(cmd#0, deps#0, exps#0, st#0)); 
    M0.__default.Post#canCall(cmd#0, deps#0, exps#0, st'#0)
       && 
      M0.__default.Post(cmd#0, deps#0, exps#0, st'#0)
       && (forall e#2: Seq :: 
        { M0.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
        $Is(e#2, TSeq(TChar))
           ==> (Set#IsMember(exps#0, $Box(e#2))
               ==> Set#IsMember(M0.__default.DomSt(st'#0), M0.__default.Loc(cmd#0, deps#0, e#2)))
             && (Set#IsMember(exps#0, $Box(e#2))
               ==> M0.__default.GetSt(M0.__default.Loc(cmd#0, deps#0, e#2), st'#0)
                 == M0.__default.Oracle(M0.__default.Loc(cmd#0, deps#0, e#2), st'#0))));
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for M0._default.Pre
function M0.__default.Pre(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box) : bool
uses {
// definition axiom for M0.__default.Pre (revealed)
axiom {:id "id80"} 2 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    { M0.__default.Pre(cmd#0, deps#0, exps#0, st#0) } 
    M0.__default.Pre#canCall(cmd#0, deps#0, exps#0, st#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall e#0: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
          $Is(e#0, TSeq(TChar))
             ==> 
            Set#IsMember(exps#0, $Box(e#0))
             ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#0)
               && M0.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#0))
                 ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)
                   && 
                  M0.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)))
         && M0.__default.Pre(cmd#0, deps#0, exps#0, st#0)
           == (forall e#0: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
            $Is(e#0, TSeq(TChar))
               ==> 
              Set#IsMember(exps#0, $Box(e#0))
               ==> 
              Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#0))
               ==> M0.__default.GetSt(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)
                 == M0.__default.Oracle(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)));
// definition axiom for M0.__default.Pre for decreasing-related literals (revealed)
axiom {:id "id81"} 2 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    {:weight 3} { M0.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0) } 
    M0.__default.Pre#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall e#1: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
          $Is(e#1, TSeq(TChar))
             ==> 
            Set#IsMember(Lit(exps#0), $Box(e#1))
             ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
               && M0.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1))
                 ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                   && 
                  M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)))
         && M0.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
           == (forall e#1: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
            $Is(e#1, TSeq(TChar))
               ==> 
              Set#IsMember(Lit(exps#0), $Box(e#1))
               ==> 
              Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1))
               ==> M0.__default.GetSt(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                 == M0.__default.Oracle(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)));
// definition axiom for M0.__default.Pre for all literals (revealed)
axiom {:id "id82"} 2 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    {:weight 3} { M0.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0)) } 
    M0.__default.Pre#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall e#2: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
          $Is(e#2, TSeq(TChar))
             ==> 
            Set#IsMember(Lit(exps#0), $Box(e#2))
             ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
               && M0.__default.DomSt#canCall(Lit(st#0))
               && (Set#IsMember(M0.__default.DomSt(Lit(st#0)), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2))
                 ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                   && 
                  M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))))
         && M0.__default.Pre(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
           == (forall e#2: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
            $Is(e#2, TSeq(TChar))
               ==> 
              Set#IsMember(Lit(exps#0), $Box(e#2))
               ==> 
              Set#IsMember(M0.__default.DomSt(Lit(st#0)), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2))
               ==> M0.__default.GetSt(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                 == M0.__default.Oracle(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))));
}

function M0.__default.Pre#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box) : bool;

function M0.__default.Pre#requires(Seq, Set, Set, Box) : bool;

// #requires axiom for M0.__default.Pre
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
  { M0.__default.Pre#requires(cmd#0, deps#0, exps#0, st#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M0.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.Pre#requires(cmd#0, deps#0, exps#0, st#0) == true);

procedure {:verboseName "M0.Pre (well-formedness)"} CheckWellformed$$M0.__default.Pre(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M0.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Pre (well-formedness)"} CheckWellformed$$M0.__default.Pre(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var e#3: Seq;
  var ##cmd#0: Seq;
  var ##deps#0: Set;
  var ##exp#0: Seq;
  var ##st#0: Box;
  var ##p#0: Box;
  var ##cmd#1: Seq;
  var ##deps#1: Set;
  var ##exp#1: Seq;
  var ##st#1: Box;
  var ##p#1: Box;
  var ##cmd#2: Seq;
  var ##deps#2: Set;
  var ##exp#2: Seq;
  var ##st#2: Box;


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
        havoc e#3;
        if ($Is(e#3, TSeq(TChar)) && $IsAlloc(e#3, TSeq(TChar), $Heap))
        {
            if (Set#IsMember(exps#0, $Box(e#3)))
            {
                ##cmd#0 := cmd#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##cmd#0, TSeq(TChar), $Heap);
                ##deps#0 := deps#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##deps#0, TSet(Tclass.M0.Path()), $Heap);
                ##exp#0 := e#3;
                // assume allocatedness for argument to function
                assume $IsAlloc(##exp#0, TSeq(TChar), $Heap);
                assume M0.__default.Loc#canCall(cmd#0, deps#0, e#3);
                ##st#0 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(st#0);
                if (Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#3)))
                {
                    ##cmd#1 := cmd#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##cmd#1, TSeq(TChar), $Heap);
                    ##deps#1 := deps#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##deps#1, TSet(Tclass.M0.Path()), $Heap);
                    ##exp#1 := e#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##exp#1, TSeq(TChar), $Heap);
                    assume M0.__default.Loc#canCall(cmd#0, deps#0, e#3);
                    ##p#0 := M0.__default.Loc(cmd#0, deps#0, e#3);
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#0, Tclass.M0.Path(), $Heap);
                    ##st#1 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
                    assert {:id "id83"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#1), ##p#0);
                    assume Set#IsMember(M0.__default.DomSt(##st#1), ##p#0);
                    assume M0.__default.GetSt#canCall(M0.__default.Loc(cmd#0, deps#0, e#3), st#0);
                    ##cmd#2 := cmd#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##cmd#2, TSeq(TChar), $Heap);
                    ##deps#2 := deps#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##deps#2, TSet(Tclass.M0.Path()), $Heap);
                    ##exp#2 := e#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##exp#2, TSeq(TChar), $Heap);
                    assume M0.__default.Loc#canCall(cmd#0, deps#0, e#3);
                    ##p#1 := M0.__default.Loc(cmd#0, deps#0, e#3);
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#1, Tclass.M0.Path(), $Heap);
                    ##st#2 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
                    assume M0.__default.Oracle#canCall(M0.__default.Loc(cmd#0, deps#0, e#3), st#0);
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id84"} M0.__default.Pre(cmd#0, deps#0, exps#0, st#0)
           == (forall e#4: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#4) } { Set#IsMember(exps#0, $Box(e#4)) } 
            $Is(e#4, TSeq(TChar))
               ==> 
              Set#IsMember(exps#0, $Box(e#4))
               ==> 
              Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#4))
               ==> M0.__default.GetSt(M0.__default.Loc(cmd#0, deps#0, e#4), st#0)
                 == M0.__default.Oracle(M0.__default.Loc(cmd#0, deps#0, e#4), st#0));
        assume (forall e#4: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#4) } { Set#IsMember(exps#0, $Box(e#4)) } 
          $Is(e#4, TSeq(TChar))
             ==> 
            Set#IsMember(exps#0, $Box(e#4))
             ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#4)
               && M0.__default.DomSt#canCall(st#0)
               && (Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#4))
                 ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#4)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(cmd#0, deps#0, e#4), st#0)
                   && 
                  M0.__default.Loc#canCall(cmd#0, deps#0, e#4)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(cmd#0, deps#0, e#4), st#0)));
        // CheckWellformedWithResult: any expression
        assume $Is(M0.__default.Pre(cmd#0, deps#0, exps#0, st#0), TBool);
        return;

        assume false;
    }
}



// function declaration for M0._default.OneToOne
function M0.__default.OneToOne(cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set) : bool
uses {
// definition axiom for M0.__default.OneToOne (revealed)
axiom {:id "id85"} 1 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set :: 
    { M0.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0) } 
    M0.__default.OneToOne#canCall(cmd#0, deps#0, exps#0, paths#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(paths#0, TSet(Tclass.M0.Path())))
       ==> (forall e#0: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
          $Is(e#0, TSeq(TChar))
             ==> 
            Set#IsMember(exps#0, $Box(e#0))
             ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#0))
         && M0.__default.OneToOne(cmd#0, deps#0, exps#0, paths#0)
           == (forall e#0: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
            $Is(e#0, TSeq(TChar))
               ==> 
              Set#IsMember(exps#0, $Box(e#0))
               ==> Set#IsMember(paths#0, M0.__default.Loc(cmd#0, deps#0, e#0))));
// definition axiom for M0.__default.OneToOne for all literals (revealed)
axiom {:id "id86"} 1 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set :: 
    {:weight 3} { M0.__default.OneToOne(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(paths#0)) } 
    M0.__default.OneToOne#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(paths#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $Is(paths#0, TSet(Tclass.M0.Path())))
       ==> (forall e#1: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
          $Is(e#1, TSeq(TChar))
             ==> 
            Set#IsMember(Lit(exps#0), $Box(e#1))
             ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1))
         && M0.__default.OneToOne(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(paths#0))
           == (forall e#1: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
            $Is(e#1, TSeq(TChar))
               ==> 
              Set#IsMember(Lit(exps#0), $Box(e#1))
               ==> Set#IsMember(Lit(paths#0), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1))));
}

function M0.__default.OneToOne#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set) : bool;

function M0.__default.OneToOne#requires(Seq, Set, Set, Set) : bool;

// #requires axiom for M0.__default.OneToOne
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, paths#0: Set :: 
  { M0.__default.OneToOne#requires(cmd#0, deps#0, exps#0, paths#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M0.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $Is(paths#0, TSet(Tclass.M0.Path()))
     ==> M0.__default.OneToOne#requires(cmd#0, deps#0, exps#0, paths#0) == true);

procedure {:verboseName "M0.OneToOne (well-formedness)"} CheckWellformed$$M0.__default.OneToOne(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M0.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    paths#0: Set where $Is(paths#0, TSet(Tclass.M0.Path())));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.Post
function M0.__default.Post(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box) : bool
uses {
// definition axiom for M0.__default.Post (revealed)
axiom {:id "id88"} 2 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    { M0.__default.Post(cmd#0, deps#0, exps#0, st#0) } 
    M0.__default.Post#canCall(cmd#0, deps#0, exps#0, st#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall e#0: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
          $Is(e#0, TSeq(TChar))
             ==> (Set#IsMember(exps#0, $Box(e#0))
                 ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#0) && M0.__default.DomSt#canCall(st#0))
               && (
                (Set#IsMember(exps#0, $Box(e#0))
                 ==> Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#0)))
                 ==> 
                Set#IsMember(exps#0, $Box(e#0))
                 ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)
                   && 
                  M0.__default.Loc#canCall(cmd#0, deps#0, e#0)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)))
         && M0.__default.Post(cmd#0, deps#0, exps#0, st#0)
           == (forall e#0: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#0) } { Set#IsMember(exps#0, $Box(e#0)) } 
            $Is(e#0, TSeq(TChar))
               ==> (Set#IsMember(exps#0, $Box(e#0))
                   ==> Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#0)))
                 && (Set#IsMember(exps#0, $Box(e#0))
                   ==> M0.__default.GetSt(M0.__default.Loc(cmd#0, deps#0, e#0), st#0)
                     == M0.__default.Oracle(M0.__default.Loc(cmd#0, deps#0, e#0), st#0))));
// definition axiom for M0.__default.Post for decreasing-related literals (revealed)
axiom {:id "id89"} 2 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    {:weight 3} { M0.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0) } 
    M0.__default.Post#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall e#1: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
          $Is(e#1, TSeq(TChar))
             ==> (Set#IsMember(Lit(exps#0), $Box(e#1))
                 ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M0.__default.DomSt#canCall(st#0))
               && (
                (Set#IsMember(Lit(exps#0), $Box(e#1))
                 ==> Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1)))
                 ==> 
                Set#IsMember(Lit(exps#0), $Box(e#1))
                 ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                   && 
                  M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#1)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)))
         && M0.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), st#0)
           == (forall e#1: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#1) } { Set#IsMember(exps#0, $Box(e#1)) } 
            $Is(e#1, TSeq(TChar))
               ==> (Set#IsMember(Lit(exps#0), $Box(e#1))
                   ==> Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1)))
                 && (Set#IsMember(Lit(exps#0), $Box(e#1))
                   ==> M0.__default.GetSt(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0)
                     == M0.__default.Oracle(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#1), st#0))));
// definition axiom for M0.__default.Post for all literals (revealed)
axiom {:id "id90"} 2 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
    {:weight 3} { M0.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0)) } 
    M0.__default.Post#canCall(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exps#0, TSet(TSeq(TChar)))
           && $IsBox(st#0, Tclass.M0.State()))
       ==> (forall e#2: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
          $Is(e#2, TSeq(TChar))
             ==> (Set#IsMember(Lit(exps#0), $Box(e#2))
                 ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M0.__default.DomSt#canCall(Lit(st#0)))
               && (
                (Set#IsMember(Lit(exps#0), $Box(e#2))
                 ==> Set#IsMember(M0.__default.DomSt(Lit(st#0)), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2)))
                 ==> 
                Set#IsMember(Lit(exps#0), $Box(e#2))
                 ==> M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                   && 
                  M0.__default.Loc#canCall(Lit(cmd#0), Lit(deps#0), e#2)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))))
         && M0.__default.Post(Lit(cmd#0), Lit(deps#0), Lit(exps#0), Lit(st#0))
           == (forall e#2: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#2) } { Set#IsMember(exps#0, $Box(e#2)) } 
            $Is(e#2, TSeq(TChar))
               ==> (Set#IsMember(Lit(exps#0), $Box(e#2))
                   ==> Set#IsMember(M0.__default.DomSt(Lit(st#0)), M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2)))
                 && (Set#IsMember(Lit(exps#0), $Box(e#2))
                   ==> M0.__default.GetSt(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0))
                     == M0.__default.Oracle(M0.__default.Loc(Lit(cmd#0), Lit(deps#0), e#2), Lit(st#0)))));
}

function M0.__default.Post#canCall(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box) : bool;

function M0.__default.Post#requires(Seq, Set, Set, Box) : bool;

// #requires axiom for M0.__default.Post
axiom (forall cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box :: 
  { M0.__default.Post#requires(cmd#0, deps#0, exps#0, st#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M0.Path()))
       && $Is(exps#0, TSet(TSeq(TChar)))
       && $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.Post#requires(cmd#0, deps#0, exps#0, st#0) == true);

procedure {:verboseName "M0.Post (well-formedness)"} CheckWellformed$$M0.__default.Post(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M0.Path())), 
    exps#0: Set where $Is(exps#0, TSet(TSeq(TChar))), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Post (well-formedness)"} CheckWellformed$$M0.__default.Post(cmd#0: Seq, deps#0: Set, exps#0: Set, st#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var e#3: Seq;
  var ##cmd#0: Seq;
  var ##deps#0: Set;
  var ##exp#0: Seq;
  var ##st#0: Box;
  var ##p#0: Box;
  var ##cmd#1: Seq;
  var ##deps#1: Set;
  var ##exp#1: Seq;
  var ##st#1: Box;
  var ##p#1: Box;
  var ##cmd#2: Seq;
  var ##deps#2: Set;
  var ##exp#2: Seq;
  var ##st#2: Box;


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
        havoc e#3;
        if ($Is(e#3, TSeq(TChar)) && $IsAlloc(e#3, TSeq(TChar), $Heap))
        {
            if (Set#IsMember(exps#0, $Box(e#3)))
            {
                ##cmd#0 := cmd#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##cmd#0, TSeq(TChar), $Heap);
                ##deps#0 := deps#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##deps#0, TSet(Tclass.M0.Path()), $Heap);
                ##exp#0 := e#3;
                // assume allocatedness for argument to function
                assume $IsAlloc(##exp#0, TSeq(TChar), $Heap);
                assume M0.__default.Loc#canCall(cmd#0, deps#0, e#3);
                ##st#0 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(st#0);
                if (Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#3)))
                {
                    ##cmd#1 := cmd#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##cmd#1, TSeq(TChar), $Heap);
                    ##deps#1 := deps#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##deps#1, TSet(Tclass.M0.Path()), $Heap);
                    ##exp#1 := e#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##exp#1, TSeq(TChar), $Heap);
                    assume M0.__default.Loc#canCall(cmd#0, deps#0, e#3);
                    ##p#0 := M0.__default.Loc(cmd#0, deps#0, e#3);
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#0, Tclass.M0.Path(), $Heap);
                    ##st#1 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
                    assert {:id "id91"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#1), ##p#0);
                    assume Set#IsMember(M0.__default.DomSt(##st#1), ##p#0);
                    assume M0.__default.GetSt#canCall(M0.__default.Loc(cmd#0, deps#0, e#3), st#0);
                    ##cmd#2 := cmd#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##cmd#2, TSeq(TChar), $Heap);
                    ##deps#2 := deps#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##deps#2, TSet(Tclass.M0.Path()), $Heap);
                    ##exp#2 := e#3;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##exp#2, TSeq(TChar), $Heap);
                    assume M0.__default.Loc#canCall(cmd#0, deps#0, e#3);
                    ##p#1 := M0.__default.Loc(cmd#0, deps#0, e#3);
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#1, Tclass.M0.Path(), $Heap);
                    ##st#2 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
                    assume M0.__default.Oracle#canCall(M0.__default.Loc(cmd#0, deps#0, e#3), st#0);
                }
            }
        }

        // End Comprehension WF check
        assume {:id "id92"} M0.__default.Post(cmd#0, deps#0, exps#0, st#0)
           == (forall e#4: Seq :: 
            { M0.__default.Loc(cmd#0, deps#0, e#4) } { Set#IsMember(exps#0, $Box(e#4)) } 
            $Is(e#4, TSeq(TChar))
               ==> (Set#IsMember(exps#0, $Box(e#4))
                   ==> Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#4)))
                 && (Set#IsMember(exps#0, $Box(e#4))
                   ==> M0.__default.GetSt(M0.__default.Loc(cmd#0, deps#0, e#4), st#0)
                     == M0.__default.Oracle(M0.__default.Loc(cmd#0, deps#0, e#4), st#0)));
        assume (forall e#4: Seq :: 
          { M0.__default.Loc(cmd#0, deps#0, e#4) } { Set#IsMember(exps#0, $Box(e#4)) } 
          $Is(e#4, TSeq(TChar))
             ==> (Set#IsMember(exps#0, $Box(e#4))
                 ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#4) && M0.__default.DomSt#canCall(st#0))
               && (
                (Set#IsMember(exps#0, $Box(e#4))
                 ==> Set#IsMember(M0.__default.DomSt(st#0), M0.__default.Loc(cmd#0, deps#0, e#4)))
                 ==> 
                Set#IsMember(exps#0, $Box(e#4))
                 ==> M0.__default.Loc#canCall(cmd#0, deps#0, e#4)
                   && M0.__default.GetSt#canCall(M0.__default.Loc(cmd#0, deps#0, e#4), st#0)
                   && 
                  M0.__default.Loc#canCall(cmd#0, deps#0, e#4)
                   && M0.__default.Oracle#canCall(M0.__default.Loc(cmd#0, deps#0, e#4), st#0)));
        // CheckWellformedWithResult: any expression
        assume $Is(M0.__default.Post(cmd#0, deps#0, exps#0, st#0), TBool);
        return;

        assume false;
    }
}



// function declaration for M0._default.Oracle
function M0.__default.Oracle(p#0: Box, st#0: Box) : Box
uses {
// consequence axiom for M0.__default.Oracle
axiom 0 <= $FunctionContextHeight
   ==> (forall p#0: Box, st#0: Box :: 
    { M0.__default.Oracle(p#0, st#0) } 
    M0.__default.Oracle#canCall(p#0, st#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(p#0, Tclass.M0.Path())
           && $IsBox(st#0, Tclass.M0.State()))
       ==> $IsBox(M0.__default.Oracle(p#0, st#0), Tclass.M0.Artifact()));
// alloc consequence axiom for M0.__default.Oracle
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, p#0: Box, st#0: Box :: 
    { $IsAllocBox(M0.__default.Oracle(p#0, st#0), Tclass.M0.Artifact(), $Heap) } 
    (M0.__default.Oracle#canCall(p#0, st#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(p#0, Tclass.M0.Path())
             && $IsAllocBox(p#0, Tclass.M0.Path(), $Heap)
             && 
            $IsBox(st#0, Tclass.M0.State())
             && $IsAllocBox(st#0, Tclass.M0.State(), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(M0.__default.Oracle(p#0, st#0), Tclass.M0.Artifact(), $Heap));
}

function M0.__default.Oracle#canCall(p#0: Box, st#0: Box) : bool;

function M0.__default.Oracle#requires(Box, Box) : bool;

// #requires axiom for M0.__default.Oracle
axiom (forall p#0: Box, st#0: Box :: 
  { M0.__default.Oracle#requires(p#0, st#0) } 
  $IsBox(p#0, Tclass.M0.Path()) && $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.Oracle#requires(p#0, st#0) == true);

procedure {:verboseName "M0.Oracle (well-formedness)"} CheckWellformed$$M0.__default.Oracle(p#0: Box where $IsBox(p#0, Tclass.M0.Path()), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0.OracleProperty (well-formedness)"} CheckWellFormed$$M0.__default.OracleProperty(p#0: Box
       where $IsBox(p#0, Tclass.M0.Path()) && $IsAllocBox(p#0, Tclass.M0.Path(), $Heap), 
    st0#0: Box
       where $IsBox(st0#0, Tclass.M0.State()) && $IsAllocBox(st0#0, Tclass.M0.State(), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.M0.State()) && $IsAllocBox(st1#0, Tclass.M0.State(), $Heap));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0.OracleProperty (call)"} Call$$M0.__default.OracleProperty(p#0: Box
       where $IsBox(p#0, Tclass.M0.Path()) && $IsAllocBox(p#0, Tclass.M0.Path(), $Heap), 
    st0#0: Box
       where $IsBox(st0#0, Tclass.M0.State()) && $IsAllocBox(st0#0, Tclass.M0.State(), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.M0.State()) && $IsAllocBox(st1#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id95"} M0.__default.Extends#canCall(st0#0, st1#0)
     ==> M0.__default.Extends(st0#0, st1#0)
       || Set#Subset(M0.__default.DomSt(st0#0), M0.__default.DomSt(st1#0));
  requires {:id "id96"} M0.__default.Extends#canCall(st0#0, st1#0)
     ==> M0.__default.Extends(st0#0, st1#0)
       || (forall p#1: Box :: 
        { M0.__default.GetSt(p#1, st0#0) } 
          { M0.__default.GetSt(p#1, st1#0) } 
          { Set#IsMember(M0.__default.DomSt(st0#0), p#1) } 
        $IsBox(p#1, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st0#0), p#1)
           ==> M0.__default.GetSt(p#1, st1#0) == M0.__default.GetSt(p#1, st0#0));
  requires {:id "id97"} M0.__default.Extends#canCall(st0#0, st1#0)
     ==> M0.__default.Extends(st0#0, st1#0)
       || (forall p#2: Box :: 
        { M0.__default.Oracle(p#2, st0#0) } 
          { M0.__default.GetSt(p#2, st1#0) } 
          { Set#IsMember(M0.__default.DomSt(st1#0), p#2) } 
          { Set#IsMember(M0.__default.DomSt(st0#0), p#2) } 
        $IsBox(p#2, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st0#0), p#2)
             && Set#IsMember(M0.__default.DomSt(st1#0), p#2)
           ==> M0.__default.GetSt(p#2, st1#0) == M0.__default.Oracle(p#2, st0#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.Oracle#canCall(p#0, st0#0)
     && M0.__default.Oracle#canCall(p#0, st1#0);
  ensures {:id "id98"} M0.__default.Oracle(p#0, st0#0) == M0.__default.Oracle(p#0, st1#0);
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for M0._default.Extends
function M0.__default.Extends(st#0: Box, st'#0: Box) : bool
uses {
// definition axiom for M0.__default.Extends (revealed)
axiom {:id "id99"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Box, st'#0: Box :: 
    { M0.__default.Extends(st#0, st'#0) } 
    M0.__default.Extends#canCall(st#0, st'#0)
         || (2 < $FunctionContextHeight
           && 
          $IsBox(st#0, Tclass.M0.State())
           && $IsBox(st'#0, Tclass.M0.State()))
       ==> M0.__default.DomSt#canCall(st#0)
         && M0.__default.DomSt#canCall(st'#0)
         && (Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
           ==> (forall p#0: Box :: 
              { M0.__default.GetSt(p#0, st#0) } 
                { M0.__default.GetSt(p#0, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
              $IsBox(p#0, Tclass.M0.Path())
                 ==> M0.__default.DomSt#canCall(st#0)
                   && (Set#IsMember(M0.__default.DomSt(st#0), p#0)
                     ==> M0.__default.GetSt#canCall(p#0, st'#0) && M0.__default.GetSt#canCall(p#0, st#0)))
             && ((forall p#0: Box :: 
                { M0.__default.GetSt(p#0, st#0) } 
                  { M0.__default.GetSt(p#0, st'#0) } 
                  { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
                $IsBox(p#0, Tclass.M0.Path())
                   ==> 
                  Set#IsMember(M0.__default.DomSt(st#0), p#0)
                   ==> M0.__default.GetSt(p#0, st'#0) == M0.__default.GetSt(p#0, st#0))
               ==> (forall p#1: Box :: 
                { M0.__default.Oracle(p#1, st#0) } 
                  { M0.__default.GetSt(p#1, st'#0) } 
                  { Set#IsMember(M0.__default.DomSt(st'#0), p#1) } 
                  { Set#IsMember(M0.__default.DomSt(st#0), p#1) } 
                $IsBox(p#1, Tclass.M0.Path())
                   ==> M0.__default.DomSt#canCall(st#0)
                     && (!Set#IsMember(M0.__default.DomSt(st#0), p#1)
                       ==> M0.__default.DomSt#canCall(st'#0)
                         && (Set#IsMember(M0.__default.DomSt(st'#0), p#1)
                           ==> M0.__default.GetSt#canCall(p#1, st'#0) && M0.__default.Oracle#canCall(p#1, st#0))))))
         && M0.__default.Extends(st#0, st'#0)
           == (
            Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
             && (forall p#0: Box :: 
              { M0.__default.GetSt(p#0, st#0) } 
                { M0.__default.GetSt(p#0, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
              $IsBox(p#0, Tclass.M0.Path())
                 ==> 
                Set#IsMember(M0.__default.DomSt(st#0), p#0)
                 ==> M0.__default.GetSt(p#0, st'#0) == M0.__default.GetSt(p#0, st#0))
             && (forall p#1: Box :: 
              { M0.__default.Oracle(p#1, st#0) } 
                { M0.__default.GetSt(p#1, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st'#0), p#1) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#1) } 
              $IsBox(p#1, Tclass.M0.Path())
                 ==> 
                !Set#IsMember(M0.__default.DomSt(st#0), p#1)
                   && Set#IsMember(M0.__default.DomSt(st'#0), p#1)
                 ==> M0.__default.GetSt(p#1, st'#0) == M0.__default.Oracle(p#1, st#0))));
// definition axiom for M0.__default.Extends for all literals (revealed)
axiom {:id "id100"} 2 <= $FunctionContextHeight
   ==> (forall st#0: Box, st'#0: Box :: 
    {:weight 3} { M0.__default.Extends(Lit(st#0), Lit(st'#0)) } 
    M0.__default.Extends#canCall(Lit(st#0), Lit(st'#0))
         || (2 < $FunctionContextHeight
           && 
          $IsBox(st#0, Tclass.M0.State())
           && $IsBox(st'#0, Tclass.M0.State()))
       ==> M0.__default.DomSt#canCall(Lit(st#0))
         && M0.__default.DomSt#canCall(Lit(st'#0))
         && (Set#Subset(M0.__default.DomSt(Lit(st#0)), M0.__default.DomSt(Lit(st'#0)))
           ==> (forall p#2: Box :: 
              { M0.__default.GetSt(p#2, st#0) } 
                { M0.__default.GetSt(p#2, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
              $IsBox(p#2, Tclass.M0.Path())
                 ==> M0.__default.DomSt#canCall(Lit(st#0))
                   && (Set#IsMember(M0.__default.DomSt(Lit(st#0)), p#2)
                     ==> M0.__default.GetSt#canCall(p#2, Lit(st'#0))
                       && M0.__default.GetSt#canCall(p#2, Lit(st#0))))
             && ((forall p#2: Box :: 
                { M0.__default.GetSt(p#2, st#0) } 
                  { M0.__default.GetSt(p#2, st'#0) } 
                  { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
                $IsBox(p#2, Tclass.M0.Path())
                   ==> 
                  Set#IsMember(M0.__default.DomSt(Lit(st#0)), p#2)
                   ==> M0.__default.GetSt(p#2, Lit(st'#0)) == M0.__default.GetSt(p#2, Lit(st#0)))
               ==> (forall p#3: Box :: 
                { M0.__default.Oracle(p#3, st#0) } 
                  { M0.__default.GetSt(p#3, st'#0) } 
                  { Set#IsMember(M0.__default.DomSt(st'#0), p#3) } 
                  { Set#IsMember(M0.__default.DomSt(st#0), p#3) } 
                $IsBox(p#3, Tclass.M0.Path())
                   ==> M0.__default.DomSt#canCall(Lit(st#0))
                     && (!Set#IsMember(M0.__default.DomSt(Lit(st#0)), p#3)
                       ==> M0.__default.DomSt#canCall(Lit(st'#0))
                         && (Set#IsMember(M0.__default.DomSt(Lit(st'#0)), p#3)
                           ==> M0.__default.GetSt#canCall(p#3, Lit(st'#0))
                             && M0.__default.Oracle#canCall(p#3, Lit(st#0)))))))
         && M0.__default.Extends(Lit(st#0), Lit(st'#0))
           == (
            Set#Subset(M0.__default.DomSt(Lit(st#0)), M0.__default.DomSt(Lit(st'#0)))
             && (forall p#2: Box :: 
              { M0.__default.GetSt(p#2, st#0) } 
                { M0.__default.GetSt(p#2, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
              $IsBox(p#2, Tclass.M0.Path())
                 ==> 
                Set#IsMember(M0.__default.DomSt(Lit(st#0)), p#2)
                 ==> M0.__default.GetSt(p#2, Lit(st'#0)) == M0.__default.GetSt(p#2, Lit(st#0)))
             && (forall p#3: Box :: 
              { M0.__default.Oracle(p#3, st#0) } 
                { M0.__default.GetSt(p#3, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st'#0), p#3) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#3) } 
              $IsBox(p#3, Tclass.M0.Path())
                 ==> 
                !Set#IsMember(M0.__default.DomSt(Lit(st#0)), p#3)
                   && Set#IsMember(M0.__default.DomSt(Lit(st'#0)), p#3)
                 ==> M0.__default.GetSt(p#3, Lit(st'#0)) == M0.__default.Oracle(p#3, Lit(st#0)))));
}

function M0.__default.Extends#canCall(st#0: Box, st'#0: Box) : bool;

function M0.__default.Extends#requires(Box, Box) : bool;

// #requires axiom for M0.__default.Extends
axiom (forall st#0: Box, st'#0: Box :: 
  { M0.__default.Extends#requires(st#0, st'#0) } 
  $IsBox(st#0, Tclass.M0.State()) && $IsBox(st'#0, Tclass.M0.State())
     ==> M0.__default.Extends#requires(st#0, st'#0) == true);

procedure {:verboseName "M0.Extends (well-formedness)"} CheckWellformed$$M0.__default.Extends(st#0: Box where $IsBox(st#0, Tclass.M0.State()), 
    st'#0: Box where $IsBox(st'#0, Tclass.M0.State()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Extends (well-formedness)"} CheckWellformed$$M0.__default.Extends(st#0: Box, st'#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##st#1: Box;
  var p#4: Box;
  var ##st#2: Box;
  var ##p#0: Box;
  var ##st#3: Box;
  var ##p#1: Box;
  var ##st#4: Box;
  var p#5: Box;
  var ##st#5: Box;
  var ##st#6: Box;
  var ##p#2: Box;
  var ##st#7: Box;
  var ##p#3: Box;
  var ##st#8: Box;


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
        ##st#0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
        assume M0.__default.DomSt#canCall(st#0);
        ##st#1 := st'#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
        assume M0.__default.DomSt#canCall(st'#0);
        if (Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0)))
        {
            // Begin Comprehension WF check
            havoc p#4;
            if ($IsBox(p#4, Tclass.M0.Path()) && $IsAllocBox(p#4, Tclass.M0.Path(), $Heap))
            {
                ##st#2 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(st#0);
                if (Set#IsMember(M0.__default.DomSt(st#0), p#4))
                {
                    ##p#0 := p#4;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#0, Tclass.M0.Path(), $Heap);
                    ##st#3 := st'#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
                    assert {:id "id101"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#3), ##p#0);
                    assume Set#IsMember(M0.__default.DomSt(##st#3), ##p#0);
                    assume M0.__default.GetSt#canCall(p#4, st'#0);
                    ##p#1 := p#4;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#1, Tclass.M0.Path(), $Heap);
                    ##st#4 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#4, Tclass.M0.State(), $Heap);
                    assert {:id "id102"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#4), ##p#1);
                    assume Set#IsMember(M0.__default.DomSt(##st#4), ##p#1);
                    assume M0.__default.GetSt#canCall(p#4, st#0);
                }
            }

            // End Comprehension WF check
        }

        if (Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
           && (forall p#6: Box :: 
            { M0.__default.GetSt(p#6, st#0) } 
              { M0.__default.GetSt(p#6, st'#0) } 
              { Set#IsMember(M0.__default.DomSt(st#0), p#6) } 
            $IsBox(p#6, Tclass.M0.Path())
               ==> 
              Set#IsMember(M0.__default.DomSt(st#0), p#6)
               ==> M0.__default.GetSt(p#6, st'#0) == M0.__default.GetSt(p#6, st#0)))
        {
            // Begin Comprehension WF check
            havoc p#5;
            if ($IsBox(p#5, Tclass.M0.Path()) && $IsAllocBox(p#5, Tclass.M0.Path(), $Heap))
            {
                ##st#5 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#5, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(st#0);
                if (!Set#IsMember(M0.__default.DomSt(st#0), p#5))
                {
                    ##st#6 := st'#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#6, Tclass.M0.State(), $Heap);
                    assume M0.__default.DomSt#canCall(st'#0);
                }

                if (!Set#IsMember(M0.__default.DomSt(st#0), p#5)
                   && Set#IsMember(M0.__default.DomSt(st'#0), p#5))
                {
                    ##p#2 := p#5;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#2, Tclass.M0.Path(), $Heap);
                    ##st#7 := st'#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#7, Tclass.M0.State(), $Heap);
                    assert {:id "id103"} {:subsumption 0} Set#IsMember(M0.__default.DomSt(##st#7), ##p#2);
                    assume Set#IsMember(M0.__default.DomSt(##st#7), ##p#2);
                    assume M0.__default.GetSt#canCall(p#5, st'#0);
                    ##p#3 := p#5;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##p#3, Tclass.M0.Path(), $Heap);
                    ##st#8 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#8, Tclass.M0.State(), $Heap);
                    assume M0.__default.Oracle#canCall(p#5, st#0);
                }
            }

            // End Comprehension WF check
        }

        assume {:id "id104"} M0.__default.Extends(st#0, st'#0)
           == (
            Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
             && (forall p#6: Box :: 
              { M0.__default.GetSt(p#6, st#0) } 
                { M0.__default.GetSt(p#6, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#6) } 
              $IsBox(p#6, Tclass.M0.Path())
                 ==> 
                Set#IsMember(M0.__default.DomSt(st#0), p#6)
                 ==> M0.__default.GetSt(p#6, st'#0) == M0.__default.GetSt(p#6, st#0))
             && (forall p#7: Box :: 
              { M0.__default.Oracle(p#7, st#0) } 
                { M0.__default.GetSt(p#7, st'#0) } 
                { Set#IsMember(M0.__default.DomSt(st'#0), p#7) } 
                { Set#IsMember(M0.__default.DomSt(st#0), p#7) } 
              $IsBox(p#7, Tclass.M0.Path())
                 ==> 
                !Set#IsMember(M0.__default.DomSt(st#0), p#7)
                   && Set#IsMember(M0.__default.DomSt(st'#0), p#7)
                 ==> M0.__default.GetSt(p#7, st'#0) == M0.__default.Oracle(p#7, st#0)));
        assume M0.__default.DomSt#canCall(st#0)
           && M0.__default.DomSt#canCall(st'#0)
           && (Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
             ==> (forall p#6: Box :: 
                { M0.__default.GetSt(p#6, st#0) } 
                  { M0.__default.GetSt(p#6, st'#0) } 
                  { Set#IsMember(M0.__default.DomSt(st#0), p#6) } 
                $IsBox(p#6, Tclass.M0.Path())
                   ==> M0.__default.DomSt#canCall(st#0)
                     && (Set#IsMember(M0.__default.DomSt(st#0), p#6)
                       ==> M0.__default.GetSt#canCall(p#6, st'#0) && M0.__default.GetSt#canCall(p#6, st#0)))
               && ((forall p#6: Box :: 
                  { M0.__default.GetSt(p#6, st#0) } 
                    { M0.__default.GetSt(p#6, st'#0) } 
                    { Set#IsMember(M0.__default.DomSt(st#0), p#6) } 
                  $IsBox(p#6, Tclass.M0.Path())
                     ==> 
                    Set#IsMember(M0.__default.DomSt(st#0), p#6)
                     ==> M0.__default.GetSt(p#6, st'#0) == M0.__default.GetSt(p#6, st#0))
                 ==> (forall p#7: Box :: 
                  { M0.__default.Oracle(p#7, st#0) } 
                    { M0.__default.GetSt(p#7, st'#0) } 
                    { Set#IsMember(M0.__default.DomSt(st'#0), p#7) } 
                    { Set#IsMember(M0.__default.DomSt(st#0), p#7) } 
                  $IsBox(p#7, Tclass.M0.Path())
                     ==> M0.__default.DomSt#canCall(st#0)
                       && (!Set#IsMember(M0.__default.DomSt(st#0), p#7)
                         ==> M0.__default.DomSt#canCall(st'#0)
                           && (Set#IsMember(M0.__default.DomSt(st'#0), p#7)
                             ==> M0.__default.GetSt#canCall(p#7, st'#0) && M0.__default.Oracle#canCall(p#7, st#0))))));
        // CheckWellformedWithResult: any expression
        assume $Is(M0.__default.Extends(st#0, st'#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "M0.Lemma_ExtendsTransitive (well-formedness)"} CheckWellFormed$$M0.__default.Lemma__ExtendsTransitive(st0#0: Box
       where $IsBox(st0#0, Tclass.M0.State()) && $IsAllocBox(st0#0, Tclass.M0.State(), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.M0.State()) && $IsAllocBox(st1#0, Tclass.M0.State(), $Heap), 
    st2#0: Box
       where $IsBox(st2#0, Tclass.M0.State()) && $IsAllocBox(st2#0, Tclass.M0.State(), $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0.Lemma_ExtendsTransitive (call)"} Call$$M0.__default.Lemma__ExtendsTransitive(st0#0: Box
       where $IsBox(st0#0, Tclass.M0.State()) && $IsAllocBox(st0#0, Tclass.M0.State(), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.M0.State()) && $IsAllocBox(st1#0, Tclass.M0.State(), $Heap), 
    st2#0: Box
       where $IsBox(st2#0, Tclass.M0.State()) && $IsAllocBox(st2#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id108"} M0.__default.Extends#canCall(st0#0, st1#0)
     ==> M0.__default.Extends(st0#0, st1#0)
       || Set#Subset(M0.__default.DomSt(st0#0), M0.__default.DomSt(st1#0));
  requires {:id "id109"} M0.__default.Extends#canCall(st0#0, st1#0)
     ==> M0.__default.Extends(st0#0, st1#0)
       || (forall p#0: Box :: 
        { M0.__default.GetSt(p#0, st0#0) } 
          { M0.__default.GetSt(p#0, st1#0) } 
          { Set#IsMember(M0.__default.DomSt(st0#0), p#0) } 
        $IsBox(p#0, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st0#0), p#0)
           ==> M0.__default.GetSt(p#0, st1#0) == M0.__default.GetSt(p#0, st0#0));
  requires {:id "id110"} M0.__default.Extends#canCall(st0#0, st1#0)
     ==> M0.__default.Extends(st0#0, st1#0)
       || (forall p#1: Box :: 
        { M0.__default.Oracle(p#1, st0#0) } 
          { M0.__default.GetSt(p#1, st1#0) } 
          { Set#IsMember(M0.__default.DomSt(st1#0), p#1) } 
          { Set#IsMember(M0.__default.DomSt(st0#0), p#1) } 
        $IsBox(p#1, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st0#0), p#1)
             && Set#IsMember(M0.__default.DomSt(st1#0), p#1)
           ==> M0.__default.GetSt(p#1, st1#0) == M0.__default.Oracle(p#1, st0#0));
  requires {:id "id111"} M0.__default.Extends#canCall(st1#0, st2#0)
     ==> M0.__default.Extends(st1#0, st2#0)
       || Set#Subset(M0.__default.DomSt(st1#0), M0.__default.DomSt(st2#0));
  requires {:id "id112"} M0.__default.Extends#canCall(st1#0, st2#0)
     ==> M0.__default.Extends(st1#0, st2#0)
       || (forall p#2: Box :: 
        { M0.__default.GetSt(p#2, st1#0) } 
          { M0.__default.GetSt(p#2, st2#0) } 
          { Set#IsMember(M0.__default.DomSt(st1#0), p#2) } 
        $IsBox(p#2, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st1#0), p#2)
           ==> M0.__default.GetSt(p#2, st2#0) == M0.__default.GetSt(p#2, st1#0));
  requires {:id "id113"} M0.__default.Extends#canCall(st1#0, st2#0)
     ==> M0.__default.Extends(st1#0, st2#0)
       || (forall p#3: Box :: 
        { M0.__default.Oracle(p#3, st1#0) } 
          { M0.__default.GetSt(p#3, st2#0) } 
          { Set#IsMember(M0.__default.DomSt(st2#0), p#3) } 
          { Set#IsMember(M0.__default.DomSt(st1#0), p#3) } 
        $IsBox(p#3, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st1#0), p#3)
             && Set#IsMember(M0.__default.DomSt(st2#0), p#3)
           ==> M0.__default.GetSt(p#3, st2#0) == M0.__default.Oracle(p#3, st1#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.Extends#canCall(st0#0, st2#0);
  free ensures {:id "id114"} M0.__default.Extends#canCall(st0#0, st2#0)
     && 
    M0.__default.Extends(st0#0, st2#0)
     && 
    Set#Subset(M0.__default.DomSt(st0#0), M0.__default.DomSt(st2#0))
     && (forall p#4: Box :: 
      { M0.__default.GetSt(p#4, st0#0) } 
        { M0.__default.GetSt(p#4, st2#0) } 
        { Set#IsMember(M0.__default.DomSt(st0#0), p#4) } 
      $IsBox(p#4, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st0#0), p#4)
         ==> M0.__default.GetSt(p#4, st2#0) == M0.__default.GetSt(p#4, st0#0))
     && (forall p#5: Box :: 
      { M0.__default.Oracle(p#5, st0#0) } 
        { M0.__default.GetSt(p#5, st2#0) } 
        { Set#IsMember(M0.__default.DomSt(st2#0), p#5) } 
        { Set#IsMember(M0.__default.DomSt(st0#0), p#5) } 
      $IsBox(p#5, Tclass.M0.Path())
         ==> 
        !Set#IsMember(M0.__default.DomSt(st0#0), p#5)
           && Set#IsMember(M0.__default.DomSt(st2#0), p#5)
         ==> M0.__default.GetSt(p#5, st2#0) == M0.__default.Oracle(p#5, st0#0));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M0.Lemma_ExtendsTransitive (correctness)"} Impl$$M0.__default.Lemma__ExtendsTransitive(st0#0: Box
       where $IsBox(st0#0, Tclass.M0.State()) && $IsAllocBox(st0#0, Tclass.M0.State(), $Heap), 
    st1#0: Box
       where $IsBox(st1#0, Tclass.M0.State()) && $IsAllocBox(st1#0, Tclass.M0.State(), $Heap), 
    st2#0: Box
       where $IsBox(st2#0, Tclass.M0.State()) && $IsAllocBox(st2#0, Tclass.M0.State(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id115"} M0.__default.Extends#canCall(st0#0, st1#0)
     && 
    M0.__default.Extends(st0#0, st1#0)
     && 
    Set#Subset(M0.__default.DomSt(st0#0), M0.__default.DomSt(st1#0))
     && (forall p#6: Box :: 
      { M0.__default.GetSt(p#6, st0#0) } 
        { M0.__default.GetSt(p#6, st1#0) } 
        { Set#IsMember(M0.__default.DomSt(st0#0), p#6) } 
      $IsBox(p#6, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st0#0), p#6)
         ==> M0.__default.GetSt(p#6, st1#0) == M0.__default.GetSt(p#6, st0#0))
     && (forall p#7: Box :: 
      { M0.__default.Oracle(p#7, st0#0) } 
        { M0.__default.GetSt(p#7, st1#0) } 
        { Set#IsMember(M0.__default.DomSt(st1#0), p#7) } 
        { Set#IsMember(M0.__default.DomSt(st0#0), p#7) } 
      $IsBox(p#7, Tclass.M0.Path())
         ==> 
        !Set#IsMember(M0.__default.DomSt(st0#0), p#7)
           && Set#IsMember(M0.__default.DomSt(st1#0), p#7)
         ==> M0.__default.GetSt(p#7, st1#0) == M0.__default.Oracle(p#7, st0#0));
  free requires {:id "id116"} M0.__default.Extends#canCall(st1#0, st2#0)
     && 
    M0.__default.Extends(st1#0, st2#0)
     && 
    Set#Subset(M0.__default.DomSt(st1#0), M0.__default.DomSt(st2#0))
     && (forall p#8: Box :: 
      { M0.__default.GetSt(p#8, st1#0) } 
        { M0.__default.GetSt(p#8, st2#0) } 
        { Set#IsMember(M0.__default.DomSt(st1#0), p#8) } 
      $IsBox(p#8, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st1#0), p#8)
         ==> M0.__default.GetSt(p#8, st2#0) == M0.__default.GetSt(p#8, st1#0))
     && (forall p#9: Box :: 
      { M0.__default.Oracle(p#9, st1#0) } 
        { M0.__default.GetSt(p#9, st2#0) } 
        { Set#IsMember(M0.__default.DomSt(st2#0), p#9) } 
        { Set#IsMember(M0.__default.DomSt(st1#0), p#9) } 
      $IsBox(p#9, Tclass.M0.Path())
         ==> 
        !Set#IsMember(M0.__default.DomSt(st1#0), p#9)
           && Set#IsMember(M0.__default.DomSt(st2#0), p#9)
         ==> M0.__default.GetSt(p#9, st2#0) == M0.__default.Oracle(p#9, st1#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.Extends#canCall(st0#0, st2#0);
  ensures {:id "id117"} M0.__default.Extends#canCall(st0#0, st2#0)
     ==> M0.__default.Extends(st0#0, st2#0)
       || Set#Subset(M0.__default.DomSt(st0#0), M0.__default.DomSt(st2#0));
  ensures {:id "id118"} M0.__default.Extends#canCall(st0#0, st2#0)
     ==> M0.__default.Extends(st0#0, st2#0)
       || (forall p#10: Box :: 
        { M0.__default.GetSt(p#10, st0#0) } 
          { M0.__default.GetSt(p#10, st2#0) } 
          { Set#IsMember(M0.__default.DomSt(st0#0), p#10) } 
        $IsBox(p#10, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st0#0), p#10)
           ==> M0.__default.GetSt(p#10, st2#0) == M0.__default.GetSt(p#10, st0#0));
  ensures {:id "id119"} M0.__default.Extends#canCall(st0#0, st2#0)
     ==> M0.__default.Extends(st0#0, st2#0)
       || (forall p#11: Box :: 
        { M0.__default.Oracle(p#11, st0#0) } 
          { M0.__default.GetSt(p#11, st2#0) } 
          { Set#IsMember(M0.__default.DomSt(st2#0), p#11) } 
          { Set#IsMember(M0.__default.DomSt(st0#0), p#11) } 
        $IsBox(p#11, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st0#0), p#11)
             && Set#IsMember(M0.__default.DomSt(st2#0), p#11)
           ==> M0.__default.GetSt(p#11, st2#0) == M0.__default.Oracle(p#11, st0#0));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Lemma_ExtendsTransitive (correctness)"} Impl$$M0.__default.Lemma__ExtendsTransitive(st0#0: Box, st1#0: Box, st2#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var p#0_0: Box;
  var p##0_0: Box;
  var st0##0_0: Box;
  var st1##0_0: Box;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: Lemma_ExtendsTransitive, Impl$$M0.__default.Lemma__ExtendsTransitive
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(123,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc p#0_0;
        assume $IsBox(p#0_0, Tclass.M0.Path());
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(123,30)
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
        call {:id "id120"} Call$$M0.__default.OracleProperty(p##0_0, st0##0_0, st1##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall p#0_1: Box :: 
          { M0.__default.Oracle(p#0_1, st1#0) } { M0.__default.Oracle(p#0_1, st0#0) } 
          $IsBox(p#0_1, Tclass.M0.Path()) && Lit(true)
             ==> M0.__default.Oracle(p#0_1, st0#0) == M0.__default.Oracle(p#0_1, st1#0));
    }
}



// function declaration for M0._default.Loc
function M0.__default.Loc(cmd#0: Seq, deps#0: Set, exp#0: Seq) : Box
uses {
// consequence axiom for M0.__default.Loc
axiom 0 <= $FunctionContextHeight
   ==> (forall cmd#0: Seq, deps#0: Set, exp#0: Seq :: 
    { M0.__default.Loc(cmd#0, deps#0, exp#0) } 
    M0.__default.Loc#canCall(cmd#0, deps#0, exp#0)
         || (0 < $FunctionContextHeight
           && 
          $Is(cmd#0, TSeq(TChar))
           && $Is(deps#0, TSet(Tclass.M0.Path()))
           && $Is(exp#0, TSeq(TChar)))
       ==> $IsBox(M0.__default.Loc(cmd#0, deps#0, exp#0), Tclass.M0.Path()));
}

function M0.__default.Loc#canCall(cmd#0: Seq, deps#0: Set, exp#0: Seq) : bool;

function M0.__default.Loc#requires(Seq, Set, Seq) : bool;

// #requires axiom for M0.__default.Loc
axiom (forall cmd#0: Seq, deps#0: Set, exp#0: Seq :: 
  { M0.__default.Loc#requires(cmd#0, deps#0, exp#0) } 
  $Is(cmd#0, TSeq(TChar))
       && $Is(deps#0, TSet(Tclass.M0.Path()))
       && $Is(exp#0, TSeq(TChar))
     ==> M0.__default.Loc#requires(cmd#0, deps#0, exp#0) == true);

procedure {:verboseName "M0.Loc (well-formedness)"} CheckWellformed$$M0.__default.Loc(cmd#0: Seq where $Is(cmd#0, TSeq(TChar)), 
    deps#0: Set where $Is(deps#0, TSet(Tclass.M0.Path())), 
    exp#0: Seq where $Is(exp#0, TSeq(TChar)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.Value
function M0.__default.Value(expr#0: DatatypeType) : bool
uses {
// definition axiom for M0.__default.Value (revealed)
axiom {:id "id121"} 2 <= $FunctionContextHeight
   ==> (forall expr#0: DatatypeType :: 
    { M0.__default.Value(expr#0) } 
    M0.__default.Value#canCall(expr#0)
         || (2 < $FunctionContextHeight && $Is(expr#0, Tclass.M0.Expression()))
       ==> M0.__default.Value(expr#0) == M0.Expression.exprLiteral_q(expr#0));
// definition axiom for M0.__default.Value for all literals (revealed)
axiom {:id "id122"} 2 <= $FunctionContextHeight
   ==> (forall expr#0: DatatypeType :: 
    {:weight 3} { M0.__default.Value(Lit(expr#0)) } 
    M0.__default.Value#canCall(Lit(expr#0))
         || (2 < $FunctionContextHeight && $Is(expr#0, Tclass.M0.Expression()))
       ==> M0.__default.Value(Lit(expr#0)) == Lit(M0.Expression.exprLiteral_q(Lit(expr#0))));
}

function M0.__default.Value#canCall(expr#0: DatatypeType) : bool;

function M0.__default.Value#requires(DatatypeType) : bool;

// #requires axiom for M0.__default.Value
axiom (forall expr#0: DatatypeType :: 
  { M0.__default.Value#requires(expr#0) } 
  $Is(expr#0, Tclass.M0.Expression())
     ==> M0.__default.Value#requires(expr#0) == true);

procedure {:verboseName "M0.Value (well-formedness)"} CheckWellformed$$M0.__default.Value(expr#0: DatatypeType where $Is(expr#0, Tclass.M0.Expression()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.build
function M0.__default.build(prog#0: DatatypeType, st#0: Box) : DatatypeType
uses {
// consequence axiom for M0.__default.build
axiom 6 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: Box :: 
    { M0.__default.build(prog#0, st#0) } 
    M0.__default.build#canCall(prog#0, st#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M0.Program())
           && $IsBox(st#0, Tclass.M0.State())
           && M0.__default.Legal(M0.Program.stmts(prog#0)))
       ==> $Is(M0.__default.build(prog#0, st#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State())));
// alloc consequence axiom for M0.__default.build
axiom 6 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, prog#0: DatatypeType, st#0: Box :: 
    { $IsAlloc(M0.__default.build(prog#0, st#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), 
        $Heap) } 
    (M0.__default.build#canCall(prog#0, st#0)
           || (6 < $FunctionContextHeight
             && 
            $Is(prog#0, Tclass.M0.Program())
             && $IsAlloc(prog#0, Tclass.M0.Program(), $Heap)
             && 
            $IsBox(st#0, Tclass.M0.State())
             && $IsAllocBox(st#0, Tclass.M0.State(), $Heap)
             && M0.__default.Legal(M0.Program.stmts(prog#0))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M0.__default.build(prog#0, st#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), 
        $Heap));
// definition axiom for M0.__default.build (revealed)
axiom {:id "id124"} 6 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: Box :: 
    { M0.__default.build(prog#0, st#0) } 
    M0.__default.build#canCall(prog#0, st#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M0.Program())
           && $IsBox(st#0, Tclass.M0.State())
           && M0.__default.Legal(M0.Program.stmts(prog#0)))
       ==> M0.Program.Program_q(prog#0)
         && M0.__default.EmptyEnv#canCall()
         && M0.__default.do#canCall(M0.Program.stmts(prog#0), st#0, M0.__default.EmptyEnv())
         && M0.__default.build(prog#0, st#0)
           == M0.__default.do($LS($LZ), M0.Program.stmts(prog#0), st#0, M0.__default.EmptyEnv()));
// definition axiom for M0.__default.build for decreasing-related literals (revealed)
axiom {:id "id125"} 6 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: Box :: 
    {:weight 3} { M0.__default.build(Lit(prog#0), st#0) } 
    M0.__default.build#canCall(Lit(prog#0), st#0)
         || (6 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M0.Program())
           && $IsBox(st#0, Tclass.M0.State())
           && Lit(M0.__default.Legal(Lit(M0.Program.stmts(Lit(prog#0))))))
       ==> M0.Program.Program_q(Lit(prog#0))
         && M0.__default.EmptyEnv#canCall()
         && M0.__default.do#canCall(Lit(M0.Program.stmts(Lit(prog#0))), st#0, M0.__default.EmptyEnv())
         && M0.__default.build(Lit(prog#0), st#0)
           == M0.__default.do($LS($LZ), Lit(M0.Program.stmts(Lit(prog#0))), st#0, M0.__default.EmptyEnv()));
// definition axiom for M0.__default.build for all literals (revealed)
axiom {:id "id126"} 6 <= $FunctionContextHeight
   ==> (forall prog#0: DatatypeType, st#0: Box :: 
    {:weight 3} { M0.__default.build(Lit(prog#0), Lit(st#0)) } 
    M0.__default.build#canCall(Lit(prog#0), Lit(st#0))
         || (6 < $FunctionContextHeight
           && 
          $Is(prog#0, Tclass.M0.Program())
           && $IsBox(st#0, Tclass.M0.State())
           && Lit(M0.__default.Legal(Lit(M0.Program.stmts(Lit(prog#0))))))
       ==> M0.Program.Program_q(Lit(prog#0))
         && M0.__default.EmptyEnv#canCall()
         && M0.__default.do#canCall(Lit(M0.Program.stmts(Lit(prog#0))), Lit(st#0), M0.__default.EmptyEnv())
         && M0.__default.build(Lit(prog#0), Lit(st#0))
           == M0.__default.do($LS($LZ), Lit(M0.Program.stmts(Lit(prog#0))), Lit(st#0), M0.__default.EmptyEnv()));
}

function M0.__default.build#canCall(prog#0: DatatypeType, st#0: Box) : bool;

function Tclass.M0.Program() : Ty
uses {
// Tclass.M0.Program Tag
axiom Tag(Tclass.M0.Program()) == Tagclass.M0.Program
   && TagFamily(Tclass.M0.Program()) == tytagFamily$Program;
}

const unique Tagclass.M0.Program: TyTag;

// Box/unbox axiom for Tclass.M0.Program
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M0.Program()) } 
  $IsBox(bx, Tclass.M0.Program())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M0.Program()));

function M0.__default.build#requires(DatatypeType, Box) : bool;

// #requires axiom for M0.__default.build
axiom (forall prog#0: DatatypeType, st#0: Box :: 
  { M0.__default.build#requires(prog#0, st#0) } 
  $Is(prog#0, Tclass.M0.Program()) && $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.build#requires(prog#0, st#0)
       == M0.__default.Legal(M0.Program.stmts(prog#0)));

procedure {:verboseName "M0.build (well-formedness)"} CheckWellformed$$M0.__default.build(prog#0: DatatypeType where $Is(prog#0, Tclass.M0.Program()), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.M0.Statement() : Ty
uses {
// Tclass.M0.Statement Tag
axiom Tag(Tclass.M0.Statement()) == Tagclass.M0.Statement
   && TagFamily(Tclass.M0.Statement()) == tytagFamily$Statement;
}

const unique Tagclass.M0.Statement: TyTag;

// Box/unbox axiom for Tclass.M0.Statement
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M0.Statement()) } 
  $IsBox(bx, Tclass.M0.Statement())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M0.Statement()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.build (well-formedness)"} CheckWellformed$$M0.__default.build(prog#0: DatatypeType, st#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##stmts#0: Seq;
  var ##stmts#1: Seq;
  var ##st#0: Box;
  var ##env#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume M0.Program.Program_q(prog#0);
    ##stmts#0 := M0.Program.stmts(prog#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#0, TSeq(Tclass.M0.Statement()), $Heap);
    assume M0.__default.Legal#canCall(M0.Program.stmts(prog#0));
    assume {:id "id127"} M0.__default.Legal(M0.Program.stmts(prog#0));
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(M0.__default.build(prog#0, st#0), 
          Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume M0.Program.Program_q(prog#0);
        ##stmts#1 := M0.Program.stmts(prog#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##stmts#1, TSeq(Tclass.M0.Statement()), $Heap);
        ##st#0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
        assume M0.__default.EmptyEnv#canCall();
        ##env#0 := M0.__default.EmptyEnv();
        // assume allocatedness for argument to function
        assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
        assert {:id "id128"} {:subsumption 0} M0.__default.Legal#canCall(##stmts#1)
           ==> M0.__default.Legal(##stmts#1) || Seq#Length(##stmts#1) != 0;
        assert {:id "id129"} {:subsumption 0} M0.__default.ValidEnv(##env#0);
        assume M0.__default.Legal(##stmts#1) && M0.__default.ValidEnv(##env#0);
        assume M0.__default.do#canCall(M0.Program.stmts(prog#0), st#0, M0.__default.EmptyEnv());
        assume M0.Tuple.Pair_q(M0.__default.do($LS($LZ), M0.Program.stmts(prog#0), st#0, M0.__default.EmptyEnv()));
        assume {:id "id130"} M0.__default.build(prog#0, st#0)
           == M0.__default.do($LS($LZ), M0.Program.stmts(prog#0), st#0, M0.__default.EmptyEnv());
        assume M0.Program.Program_q(prog#0)
           && M0.__default.EmptyEnv#canCall()
           && M0.__default.do#canCall(M0.Program.stmts(prog#0), st#0, M0.__default.EmptyEnv());
        // CheckWellformedWithResult: any expression
        assume $Is(M0.__default.build(prog#0, st#0), 
          Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
        return;

        assume false;
    }
}



// function declaration for M0._default.do
function M0.__default.do($ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box) : DatatypeType
uses {
// consequence axiom for M0.__default.do
axiom 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
    { M0.__default.do($ly, stmts#0, st#0, env#0) } 
    M0.__default.do#canCall(stmts#0, st#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M0.Statement()))
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.Legal(stmts#0)
           && M0.__default.ValidEnv(env#0))
       ==> $Is(M0.__default.do($ly, stmts#0, st#0, env#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State())));
// alloc consequence axiom for M0.__default.do
axiom 5 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
    { $IsAlloc(M0.__default.do($ly, stmts#0, st#0, env#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), 
        $Heap) } 
    (M0.__default.do#canCall(stmts#0, st#0, env#0)
           || (5 < $FunctionContextHeight
             && 
            $Is(stmts#0, TSeq(Tclass.M0.Statement()))
             && $IsAlloc(stmts#0, TSeq(Tclass.M0.Statement()), $Heap)
             && 
            $IsBox(st#0, Tclass.M0.State())
             && $IsAllocBox(st#0, Tclass.M0.State(), $Heap)
             && 
            $IsBox(env#0, Tclass.M0.Env())
             && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap)
             && 
            M0.__default.Legal(stmts#0)
             && M0.__default.ValidEnv(env#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M0.__default.do($ly, stmts#0, st#0, env#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), 
        $Heap));
// definition axiom for M0.__default.do (revealed)
axiom {:id "id131"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
    { M0.__default.do($LS($ly), stmts#0, st#0, env#0) } 
    M0.__default.do#canCall(stmts#0, st#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M0.Statement()))
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.Legal(stmts#0)
           && M0.__default.ValidEnv(env#0))
       ==> (var stmt#0 := $Unbox(Seq#Index(stmts#0, LitInt(0))): DatatypeType; 
          (M0.Statement.stmtVariable_q(stmt#0)
               ==> M0.__default.eval#canCall(M0.Statement.expr(stmt#0), st#0, env#0)
                 && (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#0), st#0, env#0))): DatatypeType, 
                    M0.Tuple.snd(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#0), st#0, env#0)); 
                  M0.__default.Value#canCall(expr'#0)
                     && (M0.__default.Value(expr'#0)
                       ==> M0.__default.SetEnv#canCall(M0.Statement.id(stmt#0), expr'#0, env#0)
                         && (var env'#0 := M0.__default.SetEnv(M0.Statement.id(stmt#0), expr'#0, env#0); 
                          M0.__default.Legal#canCall(Seq#Drop(stmts#0, LitInt(1)))
                             && (M0.__default.Legal(Seq#Drop(stmts#0, LitInt(1)))
                               ==> M0.__default.do#canCall(Seq#Drop(stmts#0, LitInt(1)), st'#0, env'#0))))))
             && (!M0.Statement.stmtVariable_q(stmt#0)
               ==> M0.__default.eval#canCall(M0.Statement.ret(stmt#0), st#0, env#0)))
         && M0.__default.do($LS($ly), stmts#0, st#0, env#0)
           == (var stmt#0 := $Unbox(Seq#Index(stmts#0, LitInt(0))): DatatypeType; 
            (if M0.Statement.stmtVariable_q(stmt#0)
               then (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#0), st#0, env#0))): DatatypeType, 
                  M0.Tuple.snd(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#0), st#0, env#0)); 
                (if M0.__default.Value(expr'#0)
                   then (var env'#0 := M0.__default.SetEnv(M0.Statement.id(stmt#0), expr'#0, env#0); 
                    (if M0.__default.Legal(Seq#Drop(stmts#0, LitInt(1)))
                       then M0.__default.do($ly, Seq#Drop(stmts#0, LitInt(1)), st'#0, env'#0)
                       else #M0.Tuple.Pair($Box(expr'#0), st'#0)))
                   else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0)))
               else M0.__default.eval($LS($LZ), M0.Statement.ret(stmt#0), st#0, env#0))));
// definition axiom for M0.__default.do for decreasing-related literals (revealed)
axiom {:id "id132"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
    {:weight 3} { M0.__default.do($LS($ly), Lit(stmts#0), st#0, env#0) } 
    M0.__default.do#canCall(Lit(stmts#0), st#0, env#0)
         || (5 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M0.Statement()))
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.Legal(Lit(stmts#0))
           && M0.__default.ValidEnv(env#0))
       ==> (var stmt#1 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
          (M0.Statement.stmtVariable_q(stmt#1)
               ==> M0.__default.eval#canCall(M0.Statement.expr(stmt#1), st#0, env#0)
                 && (var expr'#1, st'#1 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#1), st#0, env#0))): DatatypeType, 
                    M0.Tuple.snd(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#1), st#0, env#0)); 
                  M0.__default.Value#canCall(expr'#1)
                     && (M0.__default.Value(expr'#1)
                       ==> M0.__default.SetEnv#canCall(M0.Statement.id(stmt#1), expr'#1, env#0)
                         && (var env'#1 := M0.__default.SetEnv(M0.Statement.id(stmt#1), expr'#1, env#0); 
                          M0.__default.Legal#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                             && (Lit(M0.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1)))))
                               ==> M0.__default.do#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#1, env'#1))))))
             && (!M0.Statement.stmtVariable_q(stmt#1)
               ==> M0.__default.eval#canCall(M0.Statement.ret(stmt#1), st#0, env#0)))
         && M0.__default.do($LS($ly), Lit(stmts#0), st#0, env#0)
           == (var stmt#1 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
            (if M0.Statement.stmtVariable_q(stmt#1)
               then (var expr'#1, st'#1 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#1), st#0, env#0))): DatatypeType, 
                  M0.Tuple.snd(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#1), st#0, env#0)); 
                (if M0.__default.Value(expr'#1)
                   then (var env'#1 := M0.__default.SetEnv(M0.Statement.id(stmt#1), expr'#1, env#0); 
                    (if M0.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                       then M0.__default.do($LS($ly), Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#1, env'#1)
                       else #M0.Tuple.Pair($Box(expr'#1), st'#1)))
                   else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0)))
               else M0.__default.eval($LS($LZ), M0.Statement.ret(stmt#1), st#0, env#0))));
// definition axiom for M0.__default.do for all literals (revealed)
axiom {:id "id133"} 5 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
    {:weight 3} { M0.__default.do($LS($ly), Lit(stmts#0), Lit(st#0), Lit(env#0)) } 
    M0.__default.do#canCall(Lit(stmts#0), Lit(st#0), Lit(env#0))
         || (5 < $FunctionContextHeight
           && 
          $Is(stmts#0, TSeq(Tclass.M0.Statement()))
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.Legal(Lit(stmts#0))
           && M0.__default.ValidEnv(Lit(env#0)))
       ==> (var stmt#2 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
          (M0.Statement.stmtVariable_q(stmt#2)
               ==> M0.__default.eval#canCall(M0.Statement.expr(stmt#2), Lit(st#0), Lit(env#0))
                 && (var expr'#2, st'#2 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#2), Lit(st#0), Lit(env#0)))): DatatypeType, 
                    M0.Tuple.snd(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#2), Lit(st#0), Lit(env#0))); 
                  M0.__default.Value#canCall(expr'#2)
                     && (M0.__default.Value(expr'#2)
                       ==> M0.__default.SetEnv#canCall(M0.Statement.id(stmt#2), expr'#2, Lit(env#0))
                         && (var env'#2 := M0.__default.SetEnv(M0.Statement.id(stmt#2), expr'#2, Lit(env#0)); 
                          M0.__default.Legal#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                             && (Lit(M0.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1)))))
                               ==> M0.__default.do#canCall(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#2, env'#2))))))
             && (!M0.Statement.stmtVariable_q(stmt#2)
               ==> M0.__default.eval#canCall(M0.Statement.ret(stmt#2), Lit(st#0), Lit(env#0))))
         && M0.__default.do($LS($ly), Lit(stmts#0), Lit(st#0), Lit(env#0))
           == (var stmt#2 := $Unbox(Seq#Index(Lit(stmts#0), LitInt(0))): DatatypeType; 
            (if M0.Statement.stmtVariable_q(stmt#2)
               then (var expr'#2, st'#2 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#2), Lit(st#0), Lit(env#0)))): DatatypeType, 
                  M0.Tuple.snd(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#2), Lit(st#0), Lit(env#0))); 
                (if M0.__default.Value(expr'#2)
                   then (var env'#2 := M0.__default.SetEnv(M0.Statement.id(stmt#2), expr'#2, Lit(env#0)); 
                    (if M0.__default.Legal(Lit(Seq#Drop(Lit(stmts#0), LitInt(1))))
                       then M0.__default.do($LS($ly), Lit(Seq#Drop(Lit(stmts#0), LitInt(1))), st'#2, env'#2)
                       else #M0.Tuple.Pair($Box(expr'#2), st'#2)))
                   else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0))))
               else M0.__default.eval($LS($LZ), M0.Statement.ret(stmt#2), Lit(st#0), Lit(env#0)))));
}

function M0.__default.do#canCall(stmts#0: Seq, st#0: Box, env#0: Box) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
  { M0.__default.do($LS($ly), stmts#0, st#0, env#0) } 
  M0.__default.do($LS($ly), stmts#0, st#0, env#0)
     == M0.__default.do($ly, stmts#0, st#0, env#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
  { M0.__default.do(AsFuelBottom($ly), stmts#0, st#0, env#0) } 
  M0.__default.do($ly, stmts#0, st#0, env#0)
     == M0.__default.do($LZ, stmts#0, st#0, env#0));

function M0.__default.do#requires(LayerType, Seq, Box, Box) : bool;

// #requires axiom for M0.__default.do
axiom (forall $ly: LayerType, stmts#0: Seq, st#0: Box, env#0: Box :: 
  { M0.__default.do#requires($ly, stmts#0, st#0, env#0) } 
  $Is(stmts#0, TSeq(Tclass.M0.Statement()))
       && $IsBox(st#0, Tclass.M0.State())
       && $IsBox(env#0, Tclass.M0.Env())
     ==> M0.__default.do#requires($ly, stmts#0, st#0, env#0)
       == (M0.__default.Legal(stmts#0) && M0.__default.ValidEnv(env#0)));

procedure {:verboseName "M0.do (well-formedness)"} CheckWellformed$$M0.__default.do(stmts#0: Seq where $Is(stmts#0, TSeq(Tclass.M0.Statement())), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()), 
    env#0: Box where $IsBox(env#0, Tclass.M0.Env()));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.do (well-formedness)"} CheckWellformed$$M0.__default.do(stmts#0: Seq, st#0: Box, env#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##stmts#0: Seq;
  var ##env#0: Box;
  var stmt#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var expr'#Z#0: DatatypeType;
  var st'#Z#0: Box;
  var let#1#0#0: DatatypeType;
  var ##expr#0: DatatypeType;
  var ##st#0: Box;
  var ##env#1: Box;
  var ##expr#1: DatatypeType;
  var env'#Z#0: Box;
  var let#2#0#0: Box;
  var ##id#0: Box;
  var ##expr#2: DatatypeType;
  var ##env#2: Box;
  var ##stmts#1: Seq;
  var ##stmts#2: Seq;
  var ##st#1: Box;
  var ##env#3: Box;
  var ##expr#3: DatatypeType;
  var ##st#2: Box;
  var ##env#4: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##stmts#0 := stmts#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#0, TSeq(Tclass.M0.Statement()), $Heap);
    assume M0.__default.Legal#canCall(stmts#0);
    assume {:id "id134"} M0.__default.Legal(stmts#0);
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id135"} M0.__default.ValidEnv(env#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(M0.__default.do($LS($LZ), stmts#0, st#0, env#0), 
          Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc stmt#Z#0;
        assert {:id "id136"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(stmts#0);
        assume {:id "id137"} let#0#0#0 == $Unbox(Seq#Index(stmts#0, LitInt(0))): DatatypeType;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass.M0.Statement());
        assume {:id "id138"} stmt#Z#0 == let#0#0#0;
        if (M0.Statement.stmtVariable_q(stmt#Z#0))
        {
            havoc expr'#Z#0;
            havoc st'#Z#0;
            assert {:id "id139"} M0.Statement.stmtVariable_q(stmt#Z#0);
            ##expr#0 := M0.Statement.expr(stmt#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##expr#0, Tclass.M0.Expression(), $Heap);
            ##st#0 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
            ##env#1 := env#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
            assert {:id "id140"} {:subsumption 0} M0.__default.ValidEnv(##env#1);
            assume M0.__default.ValidEnv(##env#1);
            assume M0.__default.eval#canCall(M0.Statement.expr(stmt#Z#0), st#0, env#0);
            assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#Z#0), st#0, env#0));
            assume {:id "id141"} let#1#0#0
               == M0.__default.eval($LS($LZ), M0.Statement.expr(stmt#Z#0), st#0, env#0);
            assume M0.__default.eval#canCall(M0.Statement.expr(stmt#Z#0), st#0, env#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
            assume M0.Tuple.Pair_q(let#1#0#0);
            assume {:id "id142"} #M0.Tuple.Pair($Box(expr'#Z#0), st'#Z#0) == let#1#0#0;
            ##expr#1 := expr'#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##expr#1, Tclass.M0.Expression(), $Heap);
            assume M0.__default.Value#canCall(expr'#Z#0);
            if (M0.__default.Value(expr'#Z#0))
            {
                havoc env'#Z#0;
                assert {:id "id143"} M0.Statement.stmtVariable_q(stmt#Z#0);
                ##id#0 := M0.Statement.id(stmt#Z#0);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##id#0, Tclass.M0.Identifier(), $Heap);
                ##expr#2 := expr'#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##expr#2, Tclass.M0.Expression(), $Heap);
                ##env#2 := env#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##env#2, Tclass.M0.Env(), $Heap);
                assert {:id "id144"} {:subsumption 0} M0.__default.ValidEnv(##env#2);
                assert {:id "id145"} {:subsumption 0} M0.__default.Value#canCall(##expr#2)
                   ==> M0.__default.Value(##expr#2) || M0.Expression.exprLiteral_q(##expr#2);
                assume M0.__default.ValidEnv(##env#2) && M0.__default.Value(##expr#2);
                assume M0.__default.SetEnv#canCall(M0.Statement.id(stmt#Z#0), expr'#Z#0, env#0);
                assume {:id "id146"} let#2#0#0 == M0.__default.SetEnv(M0.Statement.id(stmt#Z#0), expr'#Z#0, env#0);
                assume M0.__default.SetEnv#canCall(M0.Statement.id(stmt#Z#0), expr'#Z#0, env#0);
                // CheckWellformedWithResult: any expression
                assume $IsBox(let#2#0#0, Tclass.M0.Env());
                assume {:id "id147"} env'#Z#0 == let#2#0#0;
                assert {:id "id148"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(stmts#0);
                ##stmts#1 := Seq#Drop(stmts#0, LitInt(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##stmts#1, TSeq(Tclass.M0.Statement()), $Heap);
                assume M0.__default.Legal#canCall(Seq#Drop(stmts#0, LitInt(1)));
                if (M0.__default.Legal(Seq#Drop(stmts#0, LitInt(1))))
                {
                    assert {:id "id149"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(stmts#0);
                    ##stmts#2 := Seq#Drop(stmts#0, LitInt(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##stmts#2, TSeq(Tclass.M0.Statement()), $Heap);
                    ##st#1 := st'#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
                    ##env#3 := env'#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##env#3, Tclass.M0.Env(), $Heap);
                    assert {:id "id150"} {:subsumption 0} M0.__default.Legal#canCall(##stmts#2)
                       ==> M0.__default.Legal(##stmts#2) || Seq#Length(##stmts#2) != 0;
                    assert {:id "id151"} {:subsumption 0} M0.__default.ValidEnv(##env#3);
                    assume M0.__default.Legal(##stmts#2) && M0.__default.ValidEnv(##env#3);
                    assert {:id "id152"} Seq#Rank(##stmts#2) < Seq#Rank(stmts#0);
                    assume M0.__default.do#canCall(Seq#Drop(stmts#0, LitInt(1)), st'#Z#0, env'#Z#0);
                    assume M0.Tuple.Pair_q(M0.__default.do($LS($LZ), Seq#Drop(stmts#0, LitInt(1)), st'#Z#0, env'#Z#0));
                    assume {:id "id153"} M0.__default.do($LS($LZ), stmts#0, st#0, env#0)
                       == M0.__default.do($LS($LZ), Seq#Drop(stmts#0, LitInt(1)), st'#Z#0, env'#Z#0);
                    assume M0.__default.do#canCall(Seq#Drop(stmts#0, LitInt(1)), st'#Z#0, env'#Z#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(M0.__default.do($LS($LZ), stmts#0, st#0, env#0), 
                      Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                    return;
                }
                else
                {
                    assume {:id "id154"} M0.__default.do($LS($LZ), stmts#0, st#0, env#0)
                       == #M0.Tuple.Pair($Box(expr'#Z#0), st'#Z#0);
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(M0.__default.do($LS($LZ), stmts#0, st#0, env#0), 
                      Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                    return;
                }
            }
            else
            {
                assume {:id "id155"} M0.__default.do($LS($LZ), stmts#0, st#0, env#0)
                   == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(M0.__default.do($LS($LZ), stmts#0, st#0, env#0), 
                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                return;
            }
        }
        else
        {
            assert {:id "id156"} M0.Statement.stmtReturn_q(stmt#Z#0);
            ##expr#3 := M0.Statement.ret(stmt#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##expr#3, Tclass.M0.Expression(), $Heap);
            ##st#2 := st#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
            ##env#4 := env#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##env#4, Tclass.M0.Env(), $Heap);
            assert {:id "id157"} {:subsumption 0} M0.__default.ValidEnv(##env#4);
            assume M0.__default.ValidEnv(##env#4);
            assume M0.__default.eval#canCall(M0.Statement.ret(stmt#Z#0), st#0, env#0);
            assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Statement.ret(stmt#Z#0), st#0, env#0));
            assume {:id "id158"} M0.__default.do($LS($LZ), stmts#0, st#0, env#0)
               == M0.__default.eval($LS($LZ), M0.Statement.ret(stmt#Z#0), st#0, env#0);
            assume M0.__default.eval#canCall(M0.Statement.ret(stmt#Z#0), st#0, env#0);
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.do($LS($LZ), stmts#0, st#0, env#0), 
              Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
            return;
        }

        assume false;
    }
}



// function declaration for M0._default.Legal
function M0.__default.Legal(stmts#0: Seq) : bool
uses {
// definition axiom for M0.__default.Legal (revealed)
axiom {:id "id159"} 3 <= $FunctionContextHeight
   ==> (forall stmts#0: Seq :: 
    { M0.__default.Legal(stmts#0) } 
    M0.__default.Legal#canCall(stmts#0)
         || (3 < $FunctionContextHeight && $Is(stmts#0, TSeq(Tclass.M0.Statement())))
       ==> M0.__default.Legal(stmts#0) == (Seq#Length(stmts#0) != 0));
// definition axiom for M0.__default.Legal for all literals (revealed)
axiom {:id "id160"} 3 <= $FunctionContextHeight
   ==> (forall stmts#0: Seq :: 
    {:weight 3} { M0.__default.Legal(Lit(stmts#0)) } 
    M0.__default.Legal#canCall(Lit(stmts#0))
         || (3 < $FunctionContextHeight && $Is(stmts#0, TSeq(Tclass.M0.Statement())))
       ==> M0.__default.Legal(Lit(stmts#0)) == (Seq#Length(Lit(stmts#0)) != 0));
}

function M0.__default.Legal#canCall(stmts#0: Seq) : bool;

function M0.__default.Legal#requires(Seq) : bool;

// #requires axiom for M0.__default.Legal
axiom (forall stmts#0: Seq :: 
  { M0.__default.Legal#requires(stmts#0) } 
  $Is(stmts#0, TSeq(Tclass.M0.Statement()))
     ==> M0.__default.Legal#requires(stmts#0) == true);

procedure {:verboseName "M0.Legal (well-formedness)"} CheckWellformed$$M0.__default.Legal(stmts#0: Seq where $Is(stmts#0, TSeq(Tclass.M0.Statement())));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for M0._default.eval
function M0.__default.eval($ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box) : DatatypeType
uses {
// consequence axiom for M0.__default.eval
axiom 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
    { M0.__default.eval($ly, expr#0, st#0, env#0) } 
    M0.__default.eval#canCall(expr#0, st#0, env#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M0.Expression())
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && M0.__default.ValidEnv(env#0))
       ==> $Is(M0.__default.eval($ly, expr#0, st#0, env#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State())));
// alloc consequence axiom for M0.__default.eval
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
    { $IsAlloc(M0.__default.eval($ly, expr#0, st#0, env#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), 
        $Heap) } 
    (M0.__default.eval#canCall(expr#0, st#0, env#0)
           || (4 < $FunctionContextHeight
             && 
            $Is(expr#0, Tclass.M0.Expression())
             && $IsAlloc(expr#0, Tclass.M0.Expression(), $Heap)
             && 
            $IsBox(st#0, Tclass.M0.State())
             && $IsAllocBox(st#0, Tclass.M0.State(), $Heap)
             && 
            $IsBox(env#0, Tclass.M0.Env())
             && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap)
             && M0.__default.ValidEnv(env#0)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M0.__default.eval($ly, expr#0, st#0, env#0), 
        Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), 
        $Heap));
// definition axiom for M0.__default.eval (revealed)
axiom {:id "id162"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
    { M0.__default.eval($LS($ly), expr#0, st#0, env#0) } 
    M0.__default.eval#canCall(expr#0, st#0, env#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M0.Expression())
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && M0.__default.ValidEnv(env#0))
       ==> M0.__default.Value#canCall(expr#0)
         && (!M0.__default.Value(expr#0)
           ==> (M0.Expression.exprIdentifier_q(expr#0)
               ==> M0.__default.GetEnv#canCall(M0.Expression.id(expr#0), env#0))
             && (!M0.Expression.exprIdentifier_q(expr#0)
               ==> (M0.Expression.exprIf_q(expr#0)
                   ==> M0.__default.eval#canCall(M0.Expression.cond(expr#0), st#0, env#0)
                     && (var cond'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.cond(expr#0), st#0, env#0))): DatatypeType, 
                        M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.cond(expr#0), st#0, env#0)); 
                      (M0.Expression.exprLiteral_q(cond'#0)
                           ==> $IsA#M0.Literal(M0.Expression.lit(cond'#0)))
                         && (M0.Expression.exprLiteral_q(cond'#0)
                             && M0.Literal#Equal(M0.Expression.lit(cond'#0), #M0.Literal.litTrue())
                           ==> M0.__default.eval#canCall(M0.Expression.ifTrue(expr#0), st'#0, env#0))
                         && (!(M0.Expression.exprLiteral_q(cond'#0)
                             && M0.Literal#Equal(M0.Expression.lit(cond'#0), #M0.Literal.litTrue()))
                           ==> (M0.Expression.exprLiteral_q(cond'#0)
                               ==> $IsA#M0.Literal(M0.Expression.lit(cond'#0)))
                             && (M0.Expression.exprLiteral_q(cond'#0)
                                 && M0.Literal#Equal(M0.Expression.lit(cond'#0), #M0.Literal.litFalse())
                               ==> M0.__default.eval#canCall(M0.Expression.ifFalse(expr#0), st'#0, env#0)))))
                 && (!M0.Expression.exprIf_q(expr#0)
                   ==> (M0.Expression.exprAnd_q(expr#0)
                       ==> M0.__default.eval#canCall(M0.Expression.conj0(expr#0), st#0, env#0)
                         && (var conj0'#0, st'#1 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.conj0(expr#0), st#0, env#0))): DatatypeType, 
                            M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.conj0(expr#0), st#0, env#0)); 
                          (M0.Expression.exprLiteral_q(conj0'#0)
                               ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#0)))
                             && (M0.Expression.exprLiteral_q(conj0'#0)
                                 && M0.Literal#Equal(M0.Expression.lit(conj0'#0), #M0.Literal.litTrue())
                               ==> M0.__default.eval#canCall(M0.Expression.conj1(expr#0), st'#1, env#0))
                             && (!(M0.Expression.exprLiteral_q(conj0'#0)
                                 && M0.Literal#Equal(M0.Expression.lit(conj0'#0), #M0.Literal.litTrue()))
                               ==> 
                              M0.Expression.exprLiteral_q(conj0'#0)
                               ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#0)))))
                     && (!M0.Expression.exprAnd_q(expr#0)
                       ==> (M0.Expression.exprOr_q(expr#0)
                           ==> M0.__default.eval#canCall(M0.Expression.disj0(expr#0), st#0, env#0)
                             && (var disj0'#0, st'#2 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.disj0(expr#0), st#0, env#0))): DatatypeType, 
                                M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.disj0(expr#0), st#0, env#0)); 
                              (M0.Expression.exprLiteral_q(disj0'#0)
                                   ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#0)))
                                 && (!(M0.Expression.exprLiteral_q(disj0'#0)
                                     && M0.Literal#Equal(M0.Expression.lit(disj0'#0), #M0.Literal.litTrue()))
                                   ==> (M0.Expression.exprLiteral_q(disj0'#0)
                                       ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#0)))
                                     && (M0.Expression.exprLiteral_q(disj0'#0)
                                         && M0.Literal#Equal(M0.Expression.lit(disj0'#0), #M0.Literal.litFalse())
                                       ==> M0.__default.eval#canCall(M0.Expression.disj1(expr#0), st'#2, env#0)))))
                         && (!M0.Expression.exprOr_q(expr#0)
                           ==> 
                          M0.Expression.exprInvocation_q(expr#0)
                           ==> M0.__default.eval#canCall(M0.Expression.fun(expr#0), st#0, env#0)
                             && (var fun'#0, st'#3 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.fun(expr#0), st#0, env#0))): DatatypeType, 
                                M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.fun(expr#0), st#0, env#0)); 
                              M0.__default.evalArgs#canCall(expr#0, M0.Expression.args(expr#0), st#0, env#0)
                                 && (var args'#0, sts'#0 := $Unbox(M0.Tuple.fst(M0.__default.evalArgs($ly, expr#0, M0.Expression.args(expr#0), st#0, env#0))): Seq, 
                                    $Unbox(M0.Tuple.snd(M0.__default.evalArgs($ly, expr#0, M0.Expression.args(expr#0), st#0, env#0))): Set; 
                                  (var sts''#0 := Set#Union(Set#UnionOne(Set#Empty(): Set, st'#3), sts'#0); 
                                    M0.__default.Compatible#canCall(sts''#0)
                                       && (M0.__default.Compatible(sts''#0)
                                         ==> M0.__default.Combine#canCall(sts''#0)
                                           && (var stCombined#0 := M0.__default.Combine($LS($LZ), sts''#0); 
                                            M0.Expression.exprLiteral_q(fun'#0)
                                                 && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#0))
                                               ==> 
                                              M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#0)))
                                               ==> M0.__default.Arity#canCall(Lit(#M0.Primitive.primExec()))
                                                 && (Seq#Length(args'#0) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                                   ==> M0.__default.ValidArgs#canCall(Lit(#M0.Primitive.primExec()), args'#0, stCombined#0))
                                                 && (Seq#Length(args'#0) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                                     && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#0, stCombined#0)
                                                   ==> M0.__default.exec#canCall(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(0))): DatatypeType)), 
                                                      M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(1))): DatatypeType)), 
                                                      M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(2))): DatatypeType)), 
                                                      stCombined#0)
                                                     && (var ps#0 := M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(0))): DatatypeType)), 
                                                          M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(1))): DatatypeType)), 
                                                          M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(2))): DatatypeType)), 
                                                          stCombined#0); 
                                                      M0.Tuple.Pair_q(ps#0) && M0.Tuple.Pair_q(ps#0)))))))))))))
         && M0.__default.eval($LS($ly), expr#0, st#0, env#0)
           == (if M0.__default.Value(expr#0)
             then #M0.Tuple.Pair($Box(expr#0), st#0)
             else (if M0.Expression.exprIdentifier_q(expr#0)
               then #M0.Tuple.Pair($Box(M0.__default.GetEnv(M0.Expression.id(expr#0), env#0)), st#0)
               else (if M0.Expression.exprIf_q(expr#0)
                 then (var cond'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.cond(expr#0), st#0, env#0))): DatatypeType, 
                    M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.cond(expr#0), st#0, env#0)); 
                  (if M0.Expression.exprLiteral_q(cond'#0)
                       && M0.Literal#Equal(M0.Expression.lit(cond'#0), #M0.Literal.litTrue())
                     then M0.__default.eval($ly, M0.Expression.ifTrue(expr#0), st'#0, env#0)
                     else (if M0.Expression.exprLiteral_q(cond'#0)
                         && M0.Literal#Equal(M0.Expression.lit(cond'#0), #M0.Literal.litFalse())
                       then M0.__default.eval($ly, M0.Expression.ifFalse(expr#0), st'#0, env#0)
                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))
                 else (if M0.Expression.exprAnd_q(expr#0)
                   then (var conj0'#0, st'#1 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.conj0(expr#0), st#0, env#0))): DatatypeType, 
                      M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.conj0(expr#0), st#0, env#0)); 
                    (if M0.Expression.exprLiteral_q(conj0'#0)
                         && M0.Literal#Equal(M0.Expression.lit(conj0'#0), #M0.Literal.litTrue())
                       then M0.__default.eval($ly, M0.Expression.conj1(expr#0), st'#1, env#0)
                       else (if M0.Expression.exprLiteral_q(conj0'#0)
                           && M0.Literal#Equal(M0.Expression.lit(conj0'#0), #M0.Literal.litFalse())
                         then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litFalse())))), st'#1)
                         else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))
                   else (if M0.Expression.exprOr_q(expr#0)
                     then (var disj0'#0, st'#2 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.disj0(expr#0), st#0, env#0))): DatatypeType, 
                        M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.disj0(expr#0), st#0, env#0)); 
                      (if M0.Expression.exprLiteral_q(disj0'#0)
                           && M0.Literal#Equal(M0.Expression.lit(disj0'#0), #M0.Literal.litTrue())
                         then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litTrue())))), st'#2)
                         else (if M0.Expression.exprLiteral_q(disj0'#0)
                             && M0.Literal#Equal(M0.Expression.lit(disj0'#0), #M0.Literal.litFalse())
                           then M0.__default.eval($ly, M0.Expression.disj1(expr#0), st'#2, env#0)
                           else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))
                     else (if M0.Expression.exprInvocation_q(expr#0)
                       then (var fun'#0, st'#3 := $Unbox(M0.Tuple.fst(M0.__default.eval($ly, M0.Expression.fun(expr#0), st#0, env#0))): DatatypeType, 
                          M0.Tuple.snd(M0.__default.eval($ly, M0.Expression.fun(expr#0), st#0, env#0)); 
                        (var args'#0, sts'#0 := $Unbox(M0.Tuple.fst(M0.__default.evalArgs($ly, expr#0, M0.Expression.args(expr#0), st#0, env#0))): Seq, 
                            $Unbox(M0.Tuple.snd(M0.__default.evalArgs($ly, expr#0, M0.Expression.args(expr#0), st#0, env#0))): Set; 
                          (var sts''#0 := Set#Union(Set#UnionOne(Set#Empty(): Set, st'#3), sts'#0); 
                            (if !M0.__default.Compatible(sts''#0)
                               then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rCompatibility())))), st#0)
                               else (var stCombined#0 := M0.__default.Combine($LS($LZ), sts''#0); 
                                (if M0.Expression.exprLiteral_q(fun'#0)
                                     && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#0))
                                   then (if M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#0)))
                                     then (if Seq#Length(args'#0) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                         && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#0, stCombined#0)
                                       then (var ps#0 := M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(0))): DatatypeType)), 
                                            M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(1))): DatatypeType)), 
                                            M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#0, LitInt(2))): DatatypeType)), 
                                            stCombined#0); 
                                        #M0.Tuple.Pair($Box(#M0.Expression.exprLiteral(#M0.Literal.litArrOfPaths($Unbox(M0.Tuple.fst(ps#0)): Set))), 
                                          M0.Tuple.snd(ps#0)))
                                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))
                                     else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))
                                   else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0)))))))
                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))))));
// definition axiom for M0.__default.eval for decreasing-related literals (revealed)
axiom {:id "id163"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
    {:weight 3} { M0.__default.eval($LS($ly), Lit(expr#0), st#0, env#0) } 
    M0.__default.eval#canCall(Lit(expr#0), st#0, env#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M0.Expression())
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && M0.__default.ValidEnv(env#0))
       ==> M0.__default.Value#canCall(Lit(expr#0))
         && (!Lit(M0.__default.Value(Lit(expr#0)))
           ==> (Lit(M0.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> M0.__default.GetEnv#canCall(Lit(M0.Expression.id(Lit(expr#0))), env#0))
             && (!Lit(M0.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> (Lit(M0.Expression.exprIf_q(Lit(expr#0)))
                   ==> M0.__default.eval#canCall(Lit(M0.Expression.cond(Lit(expr#0))), st#0, env#0)
                     && (var cond'#1, st'#4 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                        M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), st#0, env#0)); 
                      (M0.Expression.exprLiteral_q(cond'#1)
                           ==> $IsA#M0.Literal(M0.Expression.lit(cond'#1)))
                         && (M0.Expression.exprLiteral_q(cond'#1)
                             && M0.Literal#Equal(M0.Expression.lit(cond'#1), #M0.Literal.litTrue())
                           ==> M0.__default.eval#canCall(Lit(M0.Expression.ifTrue(Lit(expr#0))), st'#4, env#0))
                         && (!(M0.Expression.exprLiteral_q(cond'#1)
                             && M0.Literal#Equal(M0.Expression.lit(cond'#1), #M0.Literal.litTrue()))
                           ==> (M0.Expression.exprLiteral_q(cond'#1)
                               ==> $IsA#M0.Literal(M0.Expression.lit(cond'#1)))
                             && (M0.Expression.exprLiteral_q(cond'#1)
                                 && M0.Literal#Equal(M0.Expression.lit(cond'#1), #M0.Literal.litFalse())
                               ==> M0.__default.eval#canCall(Lit(M0.Expression.ifFalse(Lit(expr#0))), st'#4, env#0)))))
                 && (!Lit(M0.Expression.exprIf_q(Lit(expr#0)))
                   ==> (Lit(M0.Expression.exprAnd_q(Lit(expr#0)))
                       ==> M0.__default.eval#canCall(Lit(M0.Expression.conj0(Lit(expr#0))), st#0, env#0)
                         && (var conj0'#1, st'#5 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                            M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), st#0, env#0)); 
                          (M0.Expression.exprLiteral_q(conj0'#1)
                               ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#1)))
                             && (M0.Expression.exprLiteral_q(conj0'#1)
                                 && M0.Literal#Equal(M0.Expression.lit(conj0'#1), #M0.Literal.litTrue())
                               ==> M0.__default.eval#canCall(Lit(M0.Expression.conj1(Lit(expr#0))), st'#5, env#0))
                             && (!(M0.Expression.exprLiteral_q(conj0'#1)
                                 && M0.Literal#Equal(M0.Expression.lit(conj0'#1), #M0.Literal.litTrue()))
                               ==> 
                              M0.Expression.exprLiteral_q(conj0'#1)
                               ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#1)))))
                     && (!Lit(M0.Expression.exprAnd_q(Lit(expr#0)))
                       ==> (Lit(M0.Expression.exprOr_q(Lit(expr#0)))
                           ==> M0.__default.eval#canCall(Lit(M0.Expression.disj0(Lit(expr#0))), st#0, env#0)
                             && (var disj0'#1, st'#6 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                                M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), st#0, env#0)); 
                              (M0.Expression.exprLiteral_q(disj0'#1)
                                   ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#1)))
                                 && (!(M0.Expression.exprLiteral_q(disj0'#1)
                                     && M0.Literal#Equal(M0.Expression.lit(disj0'#1), #M0.Literal.litTrue()))
                                   ==> (M0.Expression.exprLiteral_q(disj0'#1)
                                       ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#1)))
                                     && (M0.Expression.exprLiteral_q(disj0'#1)
                                         && M0.Literal#Equal(M0.Expression.lit(disj0'#1), #M0.Literal.litFalse())
                                       ==> M0.__default.eval#canCall(Lit(M0.Expression.disj1(Lit(expr#0))), st'#6, env#0)))))
                         && (!Lit(M0.Expression.exprOr_q(Lit(expr#0)))
                           ==> 
                          Lit(M0.Expression.exprInvocation_q(Lit(expr#0)))
                           ==> M0.__default.eval#canCall(Lit(M0.Expression.fun(Lit(expr#0))), st#0, env#0)
                             && (var fun'#1, st'#7 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                                M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), st#0, env#0)); 
                              M0.__default.evalArgs#canCall(Lit(expr#0), Lit(M0.Expression.args(Lit(expr#0))), st#0, env#0)
                                 && (var args'#1, sts'#1 := $Unbox(M0.Tuple.fst(M0.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M0.Expression.args(Lit(expr#0))), st#0, env#0))): Seq, 
                                    $Unbox(M0.Tuple.snd(M0.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M0.Expression.args(Lit(expr#0))), st#0, env#0))): Set; 
                                  (var sts''#1 := Set#Union(Set#UnionOne(Set#Empty(): Set, st'#7), sts'#1); 
                                    M0.__default.Compatible#canCall(sts''#1)
                                       && (M0.__default.Compatible(sts''#1)
                                         ==> M0.__default.Combine#canCall(sts''#1)
                                           && (var stCombined#1 := M0.__default.Combine($LS($LZ), sts''#1); 
                                            M0.Expression.exprLiteral_q(fun'#1)
                                                 && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#1))
                                               ==> 
                                              M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#1)))
                                               ==> M0.__default.Arity#canCall(Lit(#M0.Primitive.primExec()))
                                                 && (Seq#Length(args'#1) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                                   ==> M0.__default.ValidArgs#canCall(Lit(#M0.Primitive.primExec()), args'#1, stCombined#1))
                                                 && (Seq#Length(args'#1) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                                     && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#1, stCombined#1)
                                                   ==> M0.__default.exec#canCall(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(0))): DatatypeType)), 
                                                      M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(1))): DatatypeType)), 
                                                      M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(2))): DatatypeType)), 
                                                      stCombined#1)
                                                     && (var ps#1 := M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(0))): DatatypeType)), 
                                                          M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(1))): DatatypeType)), 
                                                          M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(2))): DatatypeType)), 
                                                          stCombined#1); 
                                                      M0.Tuple.Pair_q(ps#1) && M0.Tuple.Pair_q(ps#1)))))))))))))
         && M0.__default.eval($LS($ly), Lit(expr#0), st#0, env#0)
           == (if M0.__default.Value(Lit(expr#0))
             then #M0.Tuple.Pair($Box(Lit(expr#0)), st#0)
             else (if M0.Expression.exprIdentifier_q(Lit(expr#0))
               then #M0.Tuple.Pair($Box(M0.__default.GetEnv(Lit(M0.Expression.id(Lit(expr#0))), env#0)), st#0)
               else (if M0.Expression.exprIf_q(Lit(expr#0))
                 then (var cond'#1, st'#4 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                    M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), st#0, env#0)); 
                  (if M0.Expression.exprLiteral_q(cond'#1)
                       && M0.Literal#Equal(M0.Expression.lit(cond'#1), #M0.Literal.litTrue())
                     then M0.__default.eval($LS($ly), Lit(M0.Expression.ifTrue(Lit(expr#0))), st'#4, env#0)
                     else (if M0.Expression.exprLiteral_q(cond'#1)
                         && M0.Literal#Equal(M0.Expression.lit(cond'#1), #M0.Literal.litFalse())
                       then M0.__default.eval($LS($ly), Lit(M0.Expression.ifFalse(Lit(expr#0))), st'#4, env#0)
                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))
                 else (if M0.Expression.exprAnd_q(Lit(expr#0))
                   then (var conj0'#1, st'#5 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                      M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), st#0, env#0)); 
                    (if M0.Expression.exprLiteral_q(conj0'#1)
                         && M0.Literal#Equal(M0.Expression.lit(conj0'#1), #M0.Literal.litTrue())
                       then M0.__default.eval($LS($ly), Lit(M0.Expression.conj1(Lit(expr#0))), st'#5, env#0)
                       else (if M0.Expression.exprLiteral_q(conj0'#1)
                           && M0.Literal#Equal(M0.Expression.lit(conj0'#1), #M0.Literal.litFalse())
                         then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litFalse())))), st'#5)
                         else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))
                   else (if M0.Expression.exprOr_q(Lit(expr#0))
                     then (var disj0'#1, st'#6 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                        M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), st#0, env#0)); 
                      (if M0.Expression.exprLiteral_q(disj0'#1)
                           && M0.Literal#Equal(M0.Expression.lit(disj0'#1), #M0.Literal.litTrue())
                         then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litTrue())))), st'#6)
                         else (if M0.Expression.exprLiteral_q(disj0'#1)
                             && M0.Literal#Equal(M0.Expression.lit(disj0'#1), #M0.Literal.litFalse())
                           then M0.__default.eval($LS($ly), Lit(M0.Expression.disj1(Lit(expr#0))), st'#6, env#0)
                           else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))
                     else (if M0.Expression.exprInvocation_q(Lit(expr#0))
                       then (var fun'#1, st'#7 := $Unbox(M0.Tuple.fst(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), st#0, env#0))): DatatypeType, 
                          M0.Tuple.snd(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), st#0, env#0)); 
                        (var args'#1, sts'#1 := $Unbox(M0.Tuple.fst(M0.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M0.Expression.args(Lit(expr#0))), st#0, env#0))): Seq, 
                            $Unbox(M0.Tuple.snd(M0.__default.evalArgs($LS($ly), Lit(expr#0), Lit(M0.Expression.args(Lit(expr#0))), st#0, env#0))): Set; 
                          (var sts''#1 := Set#Union(Set#UnionOne(Set#Empty(): Set, st'#7), sts'#1); 
                            (if !M0.__default.Compatible(sts''#1)
                               then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rCompatibility())))), st#0)
                               else (var stCombined#1 := M0.__default.Combine($LS($LZ), sts''#1); 
                                (if M0.Expression.exprLiteral_q(fun'#1)
                                     && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#1))
                                   then (if M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#1)))
                                     then (if Seq#Length(args'#1) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                         && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#1, stCombined#1)
                                       then (var ps#1 := M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(0))): DatatypeType)), 
                                            M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(1))): DatatypeType)), 
                                            M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#1, LitInt(2))): DatatypeType)), 
                                            stCombined#1); 
                                        #M0.Tuple.Pair($Box(#M0.Expression.exprLiteral(#M0.Literal.litArrOfPaths($Unbox(M0.Tuple.fst(ps#1)): Set))), 
                                          M0.Tuple.snd(ps#1)))
                                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))
                                     else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))
                                   else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0)))))))
                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0))))))));
// definition axiom for M0.__default.eval for all literals (revealed)
axiom {:id "id164"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
    {:weight 3} { M0.__default.eval($LS($ly), Lit(expr#0), Lit(st#0), Lit(env#0)) } 
    M0.__default.eval#canCall(Lit(expr#0), Lit(st#0), Lit(env#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(expr#0, Tclass.M0.Expression())
           && $IsBox(st#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && M0.__default.ValidEnv(Lit(env#0)))
       ==> M0.__default.Value#canCall(Lit(expr#0))
         && (!Lit(M0.__default.Value(Lit(expr#0)))
           ==> (Lit(M0.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> M0.__default.GetEnv#canCall(Lit(M0.Expression.id(Lit(expr#0))), Lit(env#0)))
             && (!Lit(M0.Expression.exprIdentifier_q(Lit(expr#0)))
               ==> (Lit(M0.Expression.exprIf_q(Lit(expr#0)))
                   ==> M0.__default.eval#canCall(Lit(M0.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))
                     && (var cond'#2, st'#8 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                        M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                      (M0.Expression.exprLiteral_q(cond'#2)
                           ==> $IsA#M0.Literal(M0.Expression.lit(cond'#2)))
                         && (M0.Expression.exprLiteral_q(cond'#2)
                             && M0.Literal#Equal(M0.Expression.lit(cond'#2), #M0.Literal.litTrue())
                           ==> M0.__default.eval#canCall(Lit(M0.Expression.ifTrue(Lit(expr#0))), st'#8, Lit(env#0)))
                         && (!(M0.Expression.exprLiteral_q(cond'#2)
                             && M0.Literal#Equal(M0.Expression.lit(cond'#2), #M0.Literal.litTrue()))
                           ==> (M0.Expression.exprLiteral_q(cond'#2)
                               ==> $IsA#M0.Literal(M0.Expression.lit(cond'#2)))
                             && (M0.Expression.exprLiteral_q(cond'#2)
                                 && M0.Literal#Equal(M0.Expression.lit(cond'#2), #M0.Literal.litFalse())
                               ==> M0.__default.eval#canCall(Lit(M0.Expression.ifFalse(Lit(expr#0))), st'#8, Lit(env#0))))))
                 && (!Lit(M0.Expression.exprIf_q(Lit(expr#0)))
                   ==> (Lit(M0.Expression.exprAnd_q(Lit(expr#0)))
                       ==> M0.__default.eval#canCall(Lit(M0.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))
                         && (var conj0'#2, st'#9 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                            M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                          (M0.Expression.exprLiteral_q(conj0'#2)
                               ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#2)))
                             && (M0.Expression.exprLiteral_q(conj0'#2)
                                 && M0.Literal#Equal(M0.Expression.lit(conj0'#2), #M0.Literal.litTrue())
                               ==> M0.__default.eval#canCall(Lit(M0.Expression.conj1(Lit(expr#0))), st'#9, Lit(env#0)))
                             && (!(M0.Expression.exprLiteral_q(conj0'#2)
                                 && M0.Literal#Equal(M0.Expression.lit(conj0'#2), #M0.Literal.litTrue()))
                               ==> 
                              M0.Expression.exprLiteral_q(conj0'#2)
                               ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#2)))))
                     && (!Lit(M0.Expression.exprAnd_q(Lit(expr#0)))
                       ==> (Lit(M0.Expression.exprOr_q(Lit(expr#0)))
                           ==> M0.__default.eval#canCall(Lit(M0.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))
                             && (var disj0'#2, st'#10 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                                M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                              (M0.Expression.exprLiteral_q(disj0'#2)
                                   ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#2)))
                                 && (!(M0.Expression.exprLiteral_q(disj0'#2)
                                     && M0.Literal#Equal(M0.Expression.lit(disj0'#2), #M0.Literal.litTrue()))
                                   ==> (M0.Expression.exprLiteral_q(disj0'#2)
                                       ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#2)))
                                     && (M0.Expression.exprLiteral_q(disj0'#2)
                                         && M0.Literal#Equal(M0.Expression.lit(disj0'#2), #M0.Literal.litFalse())
                                       ==> M0.__default.eval#canCall(Lit(M0.Expression.disj1(Lit(expr#0))), st'#10, Lit(env#0))))))
                         && (!Lit(M0.Expression.exprOr_q(Lit(expr#0)))
                           ==> 
                          Lit(M0.Expression.exprInvocation_q(Lit(expr#0)))
                           ==> M0.__default.eval#canCall(Lit(M0.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))
                             && (var fun'#2, st'#11 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                                M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                              M0.__default.evalArgs#canCall(Lit(expr#0), Lit(M0.Expression.args(Lit(expr#0))), Lit(st#0), Lit(env#0))
                                 && (var args'#2, sts'#2 := $Unbox(M0.Tuple.fst(Lit(M0.__default.evalArgs($LS($ly), 
                                            Lit(expr#0), 
                                            Lit(M0.Expression.args(Lit(expr#0))), 
                                            Lit(st#0), 
                                            Lit(env#0))))): Seq, 
                                    $Unbox(M0.Tuple.snd(Lit(M0.__default.evalArgs($LS($ly), 
                                            Lit(expr#0), 
                                            Lit(M0.Expression.args(Lit(expr#0))), 
                                            Lit(st#0), 
                                            Lit(env#0))))): Set; 
                                  (var sts''#2 := Set#Union(Set#UnionOne(Set#Empty(): Set, st'#11), sts'#2); 
                                    M0.__default.Compatible#canCall(sts''#2)
                                       && (M0.__default.Compatible(sts''#2)
                                         ==> M0.__default.Combine#canCall(sts''#2)
                                           && (var stCombined#2 := M0.__default.Combine($LS($LZ), sts''#2); 
                                            M0.Expression.exprLiteral_q(fun'#2)
                                                 && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#2))
                                               ==> 
                                              M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#2)))
                                               ==> M0.__default.Arity#canCall(Lit(#M0.Primitive.primExec()))
                                                 && (Seq#Length(args'#2) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                                   ==> M0.__default.ValidArgs#canCall(Lit(#M0.Primitive.primExec()), args'#2, stCombined#2))
                                                 && (Seq#Length(args'#2) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                                     && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#2, stCombined#2)
                                                   ==> M0.__default.exec#canCall(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(0))): DatatypeType)), 
                                                      M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(1))): DatatypeType)), 
                                                      M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(2))): DatatypeType)), 
                                                      stCombined#2)
                                                     && (var ps#2 := M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(0))): DatatypeType)), 
                                                          M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(1))): DatatypeType)), 
                                                          M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(2))): DatatypeType)), 
                                                          stCombined#2); 
                                                      M0.Tuple.Pair_q(ps#2) && M0.Tuple.Pair_q(ps#2)))))))))))))
         && M0.__default.eval($LS($ly), Lit(expr#0), Lit(st#0), Lit(env#0))
           == (if M0.__default.Value(Lit(expr#0))
             then #M0.Tuple.Pair($Box(Lit(expr#0)), Lit(st#0))
             else (if M0.Expression.exprIdentifier_q(Lit(expr#0))
               then #M0.Tuple.Pair($Box(M0.__default.GetEnv(Lit(M0.Expression.id(Lit(expr#0))), Lit(env#0))), 
                Lit(st#0))
               else (if M0.Expression.exprIf_q(Lit(expr#0))
                 then (var cond'#2, st'#8 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                    M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.cond(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                  (if M0.Expression.exprLiteral_q(cond'#2)
                       && M0.Literal#Equal(M0.Expression.lit(cond'#2), #M0.Literal.litTrue())
                     then M0.__default.eval($LS($ly), Lit(M0.Expression.ifTrue(Lit(expr#0))), st'#8, Lit(env#0))
                     else (if M0.Expression.exprLiteral_q(cond'#2)
                         && M0.Literal#Equal(M0.Expression.lit(cond'#2), #M0.Literal.litFalse())
                       then M0.__default.eval($LS($ly), Lit(M0.Expression.ifFalse(Lit(expr#0))), st'#8, Lit(env#0))
                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0)))))
                 else (if M0.Expression.exprAnd_q(Lit(expr#0))
                   then (var conj0'#2, st'#9 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                      M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.conj0(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                    (if M0.Expression.exprLiteral_q(conj0'#2)
                         && M0.Literal#Equal(M0.Expression.lit(conj0'#2), #M0.Literal.litTrue())
                       then M0.__default.eval($LS($ly), Lit(M0.Expression.conj1(Lit(expr#0))), st'#9, Lit(env#0))
                       else (if M0.Expression.exprLiteral_q(conj0'#2)
                           && M0.Literal#Equal(M0.Expression.lit(conj0'#2), #M0.Literal.litFalse())
                         then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litFalse())))), st'#9)
                         else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0)))))
                   else (if M0.Expression.exprOr_q(Lit(expr#0))
                     then (var disj0'#2, st'#10 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                        M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.disj0(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                      (if M0.Expression.exprLiteral_q(disj0'#2)
                           && M0.Literal#Equal(M0.Expression.lit(disj0'#2), #M0.Literal.litTrue())
                         then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litTrue())))), st'#10)
                         else (if M0.Expression.exprLiteral_q(disj0'#2)
                             && M0.Literal#Equal(M0.Expression.lit(disj0'#2), #M0.Literal.litFalse())
                           then M0.__default.eval($LS($ly), Lit(M0.Expression.disj1(Lit(expr#0))), st'#10, Lit(env#0))
                           else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0)))))
                     else (if M0.Expression.exprInvocation_q(Lit(expr#0))
                       then (var fun'#2, st'#11 := $Unbox(M0.Tuple.fst(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0))))): DatatypeType, 
                          M0.Tuple.snd(Lit(M0.__default.eval($LS($ly), Lit(M0.Expression.fun(Lit(expr#0))), Lit(st#0), Lit(env#0)))); 
                        (var args'#2, sts'#2 := $Unbox(M0.Tuple.fst(Lit(M0.__default.evalArgs($LS($ly), 
                                    Lit(expr#0), 
                                    Lit(M0.Expression.args(Lit(expr#0))), 
                                    Lit(st#0), 
                                    Lit(env#0))))): Seq, 
                            $Unbox(M0.Tuple.snd(Lit(M0.__default.evalArgs($LS($ly), 
                                    Lit(expr#0), 
                                    Lit(M0.Expression.args(Lit(expr#0))), 
                                    Lit(st#0), 
                                    Lit(env#0))))): Set; 
                          (var sts''#2 := Set#Union(Set#UnionOne(Set#Empty(): Set, st'#11), sts'#2); 
                            (if !M0.__default.Compatible(sts''#2)
                               then #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rCompatibility())))), Lit(st#0))
                               else (var stCombined#2 := M0.__default.Combine($LS($LZ), sts''#2); 
                                (if M0.Expression.exprLiteral_q(fun'#2)
                                     && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#2))
                                   then (if M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#2)))
                                     then (if Seq#Length(args'#2) == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                         && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#2, stCombined#2)
                                       then (var ps#2 := M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(0))): DatatypeType)), 
                                            M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(1))): DatatypeType)), 
                                            M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#2, LitInt(2))): DatatypeType)), 
                                            stCombined#2); 
                                        #M0.Tuple.Pair($Box(#M0.Expression.exprLiteral(#M0.Literal.litArrOfPaths($Unbox(M0.Tuple.fst(ps#2)): Set))), 
                                          M0.Tuple.snd(ps#2)))
                                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0)))
                                     else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0)))
                                   else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0))))))))
                       else #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), Lit(st#0)))))))));
}

function M0.__default.eval#canCall(expr#0: DatatypeType, st#0: Box, env#0: Box) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
  { M0.__default.eval($LS($ly), expr#0, st#0, env#0) } 
  M0.__default.eval($LS($ly), expr#0, st#0, env#0)
     == M0.__default.eval($ly, expr#0, st#0, env#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
  { M0.__default.eval(AsFuelBottom($ly), expr#0, st#0, env#0) } 
  M0.__default.eval($ly, expr#0, st#0, env#0)
     == M0.__default.eval($LZ, expr#0, st#0, env#0));

function M0.__default.eval#requires(LayerType, DatatypeType, Box, Box) : bool;

// #requires axiom for M0.__default.eval
axiom (forall $ly: LayerType, expr#0: DatatypeType, st#0: Box, env#0: Box :: 
  { M0.__default.eval#requires($ly, expr#0, st#0, env#0) } 
  $Is(expr#0, Tclass.M0.Expression())
       && $IsBox(st#0, Tclass.M0.State())
       && $IsBox(env#0, Tclass.M0.Env())
     ==> M0.__default.eval#requires($ly, expr#0, st#0, env#0)
       == M0.__default.ValidEnv(env#0));

procedure {:verboseName "M0.eval (well-formedness)"} CheckWellformed$$M0.__default.eval(expr#0: DatatypeType where $Is(expr#0, Tclass.M0.Expression()), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()), 
    env#0: Box where $IsBox(env#0, Tclass.M0.Env()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.M0.Primitive() : Ty
uses {
// Tclass.M0.Primitive Tag
axiom Tag(Tclass.M0.Primitive()) == Tagclass.M0.Primitive
   && TagFamily(Tclass.M0.Primitive()) == tytagFamily$Primitive;
}

const unique Tagclass.M0.Primitive: TyTag;

// Box/unbox axiom for Tclass.M0.Primitive
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M0.Primitive()) } 
  $IsBox(bx, Tclass.M0.Primitive())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M0.Primitive()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.eval (well-formedness)"} CheckWellformed$$M0.__default.eval(expr#0: DatatypeType, st#0: Box, env#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##env#0: Box;
  var ##expr#0: DatatypeType;
  var ##id#0: Box;
  var ##env#1: Box;
  var cond'#Z#0: DatatypeType;
  var st'#Z#0: Box;
  var let#0#0#0: DatatypeType;
  var ##expr#1: DatatypeType;
  var ##st#0: Box;
  var ##env#2: Box;
  var ##expr#2: DatatypeType;
  var ##st#1: Box;
  var ##env#3: Box;
  var ##expr#3: DatatypeType;
  var ##st#2: Box;
  var ##env#4: Box;
  var conj0'#Z#0: DatatypeType;
  var st'#Z#1: Box;
  var let#1#0#0: DatatypeType;
  var ##expr#4: DatatypeType;
  var ##st#3: Box;
  var ##env#5: Box;
  var ##expr#5: DatatypeType;
  var ##st#4: Box;
  var ##env#6: Box;
  var disj0'#Z#0: DatatypeType;
  var st'#Z#2: Box;
  var let#2#0#0: DatatypeType;
  var ##expr#6: DatatypeType;
  var ##st#5: Box;
  var ##env#7: Box;
  var ##expr#7: DatatypeType;
  var ##st#6: Box;
  var ##env#8: Box;
  var fun'#Z#0: DatatypeType;
  var st'#Z#3: Box;
  var let#3#0#0: DatatypeType;
  var ##expr#8: DatatypeType;
  var ##st#7: Box;
  var ##env#9: Box;
  var args'#Z#0: Seq;
  var sts'#Z#0: Set;
  var let#4#0#0: DatatypeType;
  var ##context#0: DatatypeType;
  var ##args#0: Seq;
  var ##stOrig#0: Box;
  var ##env#10: Box;
  var sts''#Z#0: Set;
  var let#5#0#0: Set;
  var ##sts#0: Set;
  var stCombined#Z#0: Box;
  var let#6#0#0: Box;
  var ##sts#1: Set;
  var ##prim#0: DatatypeType;
  var ##prim#1: DatatypeType;
  var ##args#1: Seq;
  var ##st#8: Box;
  var ps#Z#0: DatatypeType;
  var let#7#0#0: DatatypeType;
  var ##cmd#0: Seq;
  var ##deps#0: Set;
  var ##exps#0: Set;
  var ##st#9: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id165"} M0.__default.ValidEnv(env#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
          Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##expr#0 := expr#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##expr#0, Tclass.M0.Expression(), $Heap);
        assume M0.__default.Value#canCall(expr#0);
        if (M0.__default.Value(expr#0))
        {
            assume {:id "id166"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
               == #M0.Tuple.Pair($Box(expr#0), st#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
              Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
            return;
        }
        else
        {
            if (M0.Expression.exprIdentifier_q(expr#0))
            {
                assert {:id "id167"} M0.Expression.exprIdentifier_q(expr#0);
                ##id#0 := M0.Expression.id(expr#0);
                // assume allocatedness for argument to function
                assume $IsAllocBox(##id#0, Tclass.M0.Identifier(), $Heap);
                ##env#1 := env#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
                assert {:id "id168"} {:subsumption 0} M0.__default.ValidEnv(##env#1);
                assume M0.__default.ValidEnv(##env#1);
                assume M0.__default.GetEnv#canCall(M0.Expression.id(expr#0), env#0);
                assume {:id "id169"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                   == #M0.Tuple.Pair($Box(M0.__default.GetEnv(M0.Expression.id(expr#0), env#0)), st#0);
                assume M0.__default.GetEnv#canCall(M0.Expression.id(expr#0), env#0);
                // CheckWellformedWithResult: any expression
                assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                return;
            }
            else
            {
                if (M0.Expression.exprIf_q(expr#0))
                {
                    havoc cond'#Z#0;
                    havoc st'#Z#0;
                    assert {:id "id170"} M0.Expression.exprIf_q(expr#0);
                    ##expr#1 := M0.Expression.cond(expr#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##expr#1, Tclass.M0.Expression(), $Heap);
                    ##st#0 := st#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
                    ##env#2 := env#0;
                    // assume allocatedness for argument to function
                    assume $IsAllocBox(##env#2, Tclass.M0.Env(), $Heap);
                    assert {:id "id171"} {:subsumption 0} M0.__default.ValidEnv(##env#2);
                    assume M0.__default.ValidEnv(##env#2);
                    assert {:id "id172"} DtRank(##expr#1) < DtRank(expr#0);
                    assume M0.__default.eval#canCall(M0.Expression.cond(expr#0), st#0, env#0);
                    assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.cond(expr#0), st#0, env#0));
                    assume {:id "id173"} let#0#0#0
                       == M0.__default.eval($LS($LZ), M0.Expression.cond(expr#0), st#0, env#0);
                    assume M0.__default.eval#canCall(M0.Expression.cond(expr#0), st#0, env#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(let#0#0#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                    assume M0.Tuple.Pair_q(let#0#0#0);
                    assume {:id "id174"} #M0.Tuple.Pair($Box(cond'#Z#0), st'#Z#0) == let#0#0#0;
                    if (M0.Expression.exprLiteral_q(cond'#Z#0))
                    {
                        assert {:id "id175"} M0.Expression.exprLiteral_q(cond'#Z#0);
                    }

                    if (M0.Expression.exprLiteral_q(cond'#Z#0)
                       && M0.Literal#Equal(M0.Expression.lit(cond'#Z#0), #M0.Literal.litTrue()))
                    {
                        assert {:id "id176"} M0.Expression.exprIf_q(expr#0);
                        ##expr#2 := M0.Expression.ifTrue(expr#0);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##expr#2, Tclass.M0.Expression(), $Heap);
                        ##st#1 := st'#Z#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
                        ##env#3 := env#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##env#3, Tclass.M0.Env(), $Heap);
                        assert {:id "id177"} {:subsumption 0} M0.__default.ValidEnv(##env#3);
                        assume M0.__default.ValidEnv(##env#3);
                        assert {:id "id178"} DtRank(##expr#2) < DtRank(expr#0);
                        assume M0.__default.eval#canCall(M0.Expression.ifTrue(expr#0), st'#Z#0, env#0);
                        assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.ifTrue(expr#0), st'#Z#0, env#0));
                        assume {:id "id179"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                           == M0.__default.eval($LS($LZ), M0.Expression.ifTrue(expr#0), st'#Z#0, env#0);
                        assume M0.__default.eval#canCall(M0.Expression.ifTrue(expr#0), st'#Z#0, env#0);
                        // CheckWellformedWithResult: any expression
                        assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                          Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                        return;
                    }
                    else
                    {
                        if (M0.Expression.exprLiteral_q(cond'#Z#0))
                        {
                            assert {:id "id180"} M0.Expression.exprLiteral_q(cond'#Z#0);
                        }

                        if (M0.Expression.exprLiteral_q(cond'#Z#0)
                           && M0.Literal#Equal(M0.Expression.lit(cond'#Z#0), #M0.Literal.litFalse()))
                        {
                            assert {:id "id181"} M0.Expression.exprIf_q(expr#0);
                            ##expr#3 := M0.Expression.ifFalse(expr#0);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##expr#3, Tclass.M0.Expression(), $Heap);
                            ##st#2 := st'#Z#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
                            ##env#4 := env#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##env#4, Tclass.M0.Env(), $Heap);
                            assert {:id "id182"} {:subsumption 0} M0.__default.ValidEnv(##env#4);
                            assume M0.__default.ValidEnv(##env#4);
                            assert {:id "id183"} DtRank(##expr#3) < DtRank(expr#0);
                            assume M0.__default.eval#canCall(M0.Expression.ifFalse(expr#0), st'#Z#0, env#0);
                            assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.ifFalse(expr#0), st'#Z#0, env#0));
                            assume {:id "id184"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                               == M0.__default.eval($LS($LZ), M0.Expression.ifFalse(expr#0), st'#Z#0, env#0);
                            assume M0.__default.eval#canCall(M0.Expression.ifFalse(expr#0), st'#Z#0, env#0);
                            // CheckWellformedWithResult: any expression
                            assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                              Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                            return;
                        }
                        else
                        {
                            assume {:id "id185"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                               == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                            assume true;
                            // CheckWellformedWithResult: any expression
                            assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                              Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                            return;
                        }
                    }
                }
                else
                {
                    if (M0.Expression.exprAnd_q(expr#0))
                    {
                        havoc conj0'#Z#0;
                        havoc st'#Z#1;
                        assert {:id "id186"} M0.Expression.exprAnd_q(expr#0);
                        ##expr#4 := M0.Expression.conj0(expr#0);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##expr#4, Tclass.M0.Expression(), $Heap);
                        ##st#3 := st#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
                        ##env#5 := env#0;
                        // assume allocatedness for argument to function
                        assume $IsAllocBox(##env#5, Tclass.M0.Env(), $Heap);
                        assert {:id "id187"} {:subsumption 0} M0.__default.ValidEnv(##env#5);
                        assume M0.__default.ValidEnv(##env#5);
                        assert {:id "id188"} DtRank(##expr#4) < DtRank(expr#0);
                        assume M0.__default.eval#canCall(M0.Expression.conj0(expr#0), st#0, env#0);
                        assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.conj0(expr#0), st#0, env#0));
                        assume {:id "id189"} let#1#0#0
                           == M0.__default.eval($LS($LZ), M0.Expression.conj0(expr#0), st#0, env#0);
                        assume M0.__default.eval#canCall(M0.Expression.conj0(expr#0), st#0, env#0);
                        // CheckWellformedWithResult: any expression
                        assume $Is(let#1#0#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                        assume M0.Tuple.Pair_q(let#1#0#0);
                        assume {:id "id190"} #M0.Tuple.Pair($Box(conj0'#Z#0), st'#Z#1) == let#1#0#0;
                        if (M0.Expression.exprLiteral_q(conj0'#Z#0))
                        {
                            assert {:id "id191"} M0.Expression.exprLiteral_q(conj0'#Z#0);
                        }

                        if (M0.Expression.exprLiteral_q(conj0'#Z#0)
                           && M0.Literal#Equal(M0.Expression.lit(conj0'#Z#0), #M0.Literal.litTrue()))
                        {
                            assert {:id "id192"} M0.Expression.exprAnd_q(expr#0);
                            ##expr#5 := M0.Expression.conj1(expr#0);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##expr#5, Tclass.M0.Expression(), $Heap);
                            ##st#4 := st'#Z#1;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##st#4, Tclass.M0.State(), $Heap);
                            ##env#6 := env#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##env#6, Tclass.M0.Env(), $Heap);
                            assert {:id "id193"} {:subsumption 0} M0.__default.ValidEnv(##env#6);
                            assume M0.__default.ValidEnv(##env#6);
                            assert {:id "id194"} DtRank(##expr#5) < DtRank(expr#0);
                            assume M0.__default.eval#canCall(M0.Expression.conj1(expr#0), st'#Z#1, env#0);
                            assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.conj1(expr#0), st'#Z#1, env#0));
                            assume {:id "id195"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                               == M0.__default.eval($LS($LZ), M0.Expression.conj1(expr#0), st'#Z#1, env#0);
                            assume M0.__default.eval#canCall(M0.Expression.conj1(expr#0), st'#Z#1, env#0);
                            // CheckWellformedWithResult: any expression
                            assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                              Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                            return;
                        }
                        else
                        {
                            if (M0.Expression.exprLiteral_q(conj0'#Z#0))
                            {
                                assert {:id "id196"} M0.Expression.exprLiteral_q(conj0'#Z#0);
                            }

                            if (M0.Expression.exprLiteral_q(conj0'#Z#0)
                               && M0.Literal#Equal(M0.Expression.lit(conj0'#Z#0), #M0.Literal.litFalse()))
                            {
                                assume {:id "id197"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                   == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litFalse())))), st'#Z#1);
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                return;
                            }
                            else
                            {
                                assume {:id "id198"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                   == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                return;
                            }
                        }
                    }
                    else
                    {
                        if (M0.Expression.exprOr_q(expr#0))
                        {
                            havoc disj0'#Z#0;
                            havoc st'#Z#2;
                            assert {:id "id199"} M0.Expression.exprOr_q(expr#0);
                            ##expr#6 := M0.Expression.disj0(expr#0);
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##expr#6, Tclass.M0.Expression(), $Heap);
                            ##st#5 := st#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##st#5, Tclass.M0.State(), $Heap);
                            ##env#7 := env#0;
                            // assume allocatedness for argument to function
                            assume $IsAllocBox(##env#7, Tclass.M0.Env(), $Heap);
                            assert {:id "id200"} {:subsumption 0} M0.__default.ValidEnv(##env#7);
                            assume M0.__default.ValidEnv(##env#7);
                            assert {:id "id201"} DtRank(##expr#6) < DtRank(expr#0);
                            assume M0.__default.eval#canCall(M0.Expression.disj0(expr#0), st#0, env#0);
                            assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.disj0(expr#0), st#0, env#0));
                            assume {:id "id202"} let#2#0#0
                               == M0.__default.eval($LS($LZ), M0.Expression.disj0(expr#0), st#0, env#0);
                            assume M0.__default.eval#canCall(M0.Expression.disj0(expr#0), st#0, env#0);
                            // CheckWellformedWithResult: any expression
                            assume $Is(let#2#0#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                            assume M0.Tuple.Pair_q(let#2#0#0);
                            assume {:id "id203"} #M0.Tuple.Pair($Box(disj0'#Z#0), st'#Z#2) == let#2#0#0;
                            if (M0.Expression.exprLiteral_q(disj0'#Z#0))
                            {
                                assert {:id "id204"} M0.Expression.exprLiteral_q(disj0'#Z#0);
                            }

                            if (M0.Expression.exprLiteral_q(disj0'#Z#0)
                               && M0.Literal#Equal(M0.Expression.lit(disj0'#Z#0), #M0.Literal.litTrue()))
                            {
                                assume {:id "id205"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                   == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprLiteral(Lit(#M0.Literal.litTrue())))), st'#Z#2);
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                return;
                            }
                            else
                            {
                                if (M0.Expression.exprLiteral_q(disj0'#Z#0))
                                {
                                    assert {:id "id206"} M0.Expression.exprLiteral_q(disj0'#Z#0);
                                }

                                if (M0.Expression.exprLiteral_q(disj0'#Z#0)
                                   && M0.Literal#Equal(M0.Expression.lit(disj0'#Z#0), #M0.Literal.litFalse()))
                                {
                                    assert {:id "id207"} M0.Expression.exprOr_q(expr#0);
                                    ##expr#7 := M0.Expression.disj1(expr#0);
                                    // assume allocatedness for argument to function
                                    assume $IsAlloc(##expr#7, Tclass.M0.Expression(), $Heap);
                                    ##st#6 := st'#Z#2;
                                    // assume allocatedness for argument to function
                                    assume $IsAllocBox(##st#6, Tclass.M0.State(), $Heap);
                                    ##env#8 := env#0;
                                    // assume allocatedness for argument to function
                                    assume $IsAllocBox(##env#8, Tclass.M0.Env(), $Heap);
                                    assert {:id "id208"} {:subsumption 0} M0.__default.ValidEnv(##env#8);
                                    assume M0.__default.ValidEnv(##env#8);
                                    assert {:id "id209"} DtRank(##expr#7) < DtRank(expr#0);
                                    assume M0.__default.eval#canCall(M0.Expression.disj1(expr#0), st'#Z#2, env#0);
                                    assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.disj1(expr#0), st'#Z#2, env#0));
                                    assume {:id "id210"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                       == M0.__default.eval($LS($LZ), M0.Expression.disj1(expr#0), st'#Z#2, env#0);
                                    assume M0.__default.eval#canCall(M0.Expression.disj1(expr#0), st'#Z#2, env#0);
                                    // CheckWellformedWithResult: any expression
                                    assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                      Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                    return;
                                }
                                else
                                {
                                    assume {:id "id211"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                       == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                                    assume true;
                                    // CheckWellformedWithResult: any expression
                                    assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                      Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                    return;
                                }
                            }
                        }
                        else
                        {
                            if (M0.Expression.exprInvocation_q(expr#0))
                            {
                                havoc fun'#Z#0;
                                havoc st'#Z#3;
                                assert {:id "id212"} M0.Expression.exprInvocation_q(expr#0);
                                ##expr#8 := M0.Expression.fun(expr#0);
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##expr#8, Tclass.M0.Expression(), $Heap);
                                ##st#7 := st#0;
                                // assume allocatedness for argument to function
                                assume $IsAllocBox(##st#7, Tclass.M0.State(), $Heap);
                                ##env#9 := env#0;
                                // assume allocatedness for argument to function
                                assume $IsAllocBox(##env#9, Tclass.M0.Env(), $Heap);
                                assert {:id "id213"} {:subsumption 0} M0.__default.ValidEnv(##env#9);
                                assume M0.__default.ValidEnv(##env#9);
                                assert {:id "id214"} DtRank(##expr#8) < DtRank(expr#0);
                                assume M0.__default.eval#canCall(M0.Expression.fun(expr#0), st#0, env#0);
                                assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), M0.Expression.fun(expr#0), st#0, env#0));
                                assume {:id "id215"} let#3#0#0 == M0.__default.eval($LS($LZ), M0.Expression.fun(expr#0), st#0, env#0);
                                assume M0.__default.eval#canCall(M0.Expression.fun(expr#0), st#0, env#0);
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#3#0#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                assume M0.Tuple.Pair_q(let#3#0#0);
                                assume {:id "id216"} #M0.Tuple.Pair($Box(fun'#Z#0), st'#Z#3) == let#3#0#0;
                                havoc args'#Z#0;
                                havoc sts'#Z#0;
                                ##context#0 := expr#0;
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##context#0, Tclass.M0.Expression(), $Heap);
                                assert {:id "id217"} M0.Expression.exprInvocation_q(expr#0);
                                ##args#0 := M0.Expression.args(expr#0);
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##args#0, TSeq(Tclass.M0.Expression()), $Heap);
                                ##stOrig#0 := st#0;
                                // assume allocatedness for argument to function
                                assume $IsAllocBox(##stOrig#0, Tclass.M0.State(), $Heap);
                                ##env#10 := env#0;
                                // assume allocatedness for argument to function
                                assume $IsAllocBox(##env#10, Tclass.M0.Env(), $Heap);
                                assert {:id "id218"} {:subsumption 0} M0.__default.ValidEnv(##env#10);
                                assert {:id "id219"} {:subsumption 0} (forall arg#0: DatatypeType :: 
                                  { Seq#Contains(##args#0, $Box(arg#0)) } 
                                  $Is(arg#0, Tclass.M0.Expression())
                                     ==> 
                                    Seq#Contains(##args#0, $Box(arg#0))
                                     ==> DtRank(arg#0) < DtRank(##context#0));
                                assume M0.__default.ValidEnv(##env#10)
                                   && (forall arg#0: DatatypeType :: 
                                    { Seq#Contains(##args#0, $Box(arg#0)) } 
                                    $Is(arg#0, Tclass.M0.Expression())
                                       ==> 
                                      Seq#Contains(##args#0, $Box(arg#0))
                                       ==> DtRank(arg#0) < DtRank(##context#0));
                                assert {:id "id220"} DtRank(##context#0) <= DtRank(expr#0);
                                assume M0.__default.evalArgs#canCall(expr#0, M0.Expression.args(expr#0), st#0, env#0);
                                assume M0.Tuple.Pair_q(M0.__default.evalArgs($LS($LZ), expr#0, M0.Expression.args(expr#0), st#0, env#0));
                                assume {:id "id221"} let#4#0#0
                                   == M0.__default.evalArgs($LS($LZ), expr#0, M0.Expression.args(expr#0), st#0, env#0);
                                assume M0.__default.evalArgs#canCall(expr#0, M0.Expression.args(expr#0), st#0, env#0);
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#4#0#0, 
                                  Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State())));
                                assume M0.Tuple.Pair_q(let#4#0#0);
                                assume {:id "id222"} #M0.Tuple.Pair($Box(args'#Z#0), $Box(sts'#Z#0)) == let#4#0#0;
                                havoc sts''#Z#0;
                                assume {:id "id223"} let#5#0#0 == Set#Union(Set#UnionOne(Set#Empty(): Set, st'#Z#3), sts'#Z#0);
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#5#0#0, TSet(Tclass.M0.State()));
                                assume {:id "id224"} sts''#Z#0 == let#5#0#0;
                                ##sts#0 := sts''#Z#0;
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##sts#0, TSet(Tclass.M0.State()), $Heap);
                                assume M0.__default.Compatible#canCall(sts''#Z#0);
                                if (!M0.__default.Compatible(sts''#Z#0))
                                {
                                    assume {:id "id225"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                       == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rCompatibility())))), st#0);
                                    assume true;
                                    // CheckWellformedWithResult: any expression
                                    assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                      Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                    return;
                                }
                                else
                                {
                                    havoc stCombined#Z#0;
                                    ##sts#1 := sts''#Z#0;
                                    // assume allocatedness for argument to function
                                    assume $IsAlloc(##sts#1, TSet(Tclass.M0.State()), $Heap);
                                    assert {:id "id226"} {:subsumption 0} !Set#Equal(##sts#1, Set#Empty(): Set);
                                    assume !Set#Equal(##sts#1, Set#Empty(): Set);
                                    assume M0.__default.Combine#canCall(sts''#Z#0);
                                    assume {:id "id227"} let#6#0#0 == M0.__default.Combine($LS($LZ), sts''#Z#0);
                                    assume M0.__default.Combine#canCall(sts''#Z#0);
                                    // CheckWellformedWithResult: any expression
                                    assume $IsBox(let#6#0#0, Tclass.M0.State());
                                    assume {:id "id228"} stCombined#Z#0 == let#6#0#0;
                                    if (M0.Expression.exprLiteral_q(fun'#Z#0))
                                    {
                                        assert {:id "id229"} M0.Expression.exprLiteral_q(fun'#Z#0);
                                    }

                                    if (M0.Expression.exprLiteral_q(fun'#Z#0)
                                       && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#Z#0)))
                                    {
                                        assert {:id "id230"} M0.Expression.exprLiteral_q(fun'#Z#0);
                                        assert {:id "id231"} M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#Z#0));
                                        if (M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#Z#0))))
                                        {
                                            ##prim#0 := Lit(#M0.Primitive.primExec());
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##prim#0, Tclass.M0.Primitive(), $Heap);
                                            assume M0.__default.Arity#canCall(Lit(#M0.Primitive.primExec()));
                                            if (Seq#Length(args'#Z#0)
                                               == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec()))))
                                            {
                                                ##prim#1 := Lit(#M0.Primitive.primExec());
                                                // assume allocatedness for argument to function
                                                assume $IsAlloc(##prim#1, Tclass.M0.Primitive(), $Heap);
                                                ##args#1 := args'#Z#0;
                                                // assume allocatedness for argument to function
                                                assume $IsAlloc(##args#1, TSeq(Tclass.M0.Expression()), $Heap);
                                                ##st#8 := stCombined#Z#0;
                                                // assume allocatedness for argument to function
                                                assume $IsAllocBox(##st#8, Tclass.M0.State(), $Heap);
                                                assert {:id "id232"} {:subsumption 0} M0.Primitive.primExec_q(##prim#1) ==> Seq#Length(##args#1) == LitInt(3);
                                                assume M0.Primitive.primExec_q(##prim#1) ==> Seq#Length(##args#1) == LitInt(3);
                                                assert {:id "id233"} {:subsumption 0} M0.Primitive.primCreatePath_q(##prim#1) ==> Seq#Length(##args#1) == LitInt(1);
                                                assume M0.Primitive.primCreatePath_q(##prim#1) ==> Seq#Length(##args#1) == LitInt(1);
                                                assume M0.__default.ValidArgs#canCall(Lit(#M0.Primitive.primExec()), args'#Z#0, stCombined#Z#0);
                                            }

                                            if (Seq#Length(args'#Z#0)
                                                 == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                               && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#Z#0, stCombined#Z#0))
                                            {
                                                havoc ps#Z#0;
                                                assert {:id "id234"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(args'#Z#0);
                                                assert {:id "id235"} M0.Expression.exprLiteral_q($Unbox(Seq#Index(args'#Z#0, LitInt(0))): DatatypeType);
                                                assert {:id "id236"} M0.Literal.litString_q(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(0))): DatatypeType));
                                                ##cmd#0 := M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(0))): DatatypeType));
                                                // assume allocatedness for argument to function
                                                assume $IsAlloc(##cmd#0, TSeq(TChar), $Heap);
                                                assert {:id "id237"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(args'#Z#0);
                                                assert {:id "id238"} M0.Expression.exprLiteral_q($Unbox(Seq#Index(args'#Z#0, LitInt(1))): DatatypeType);
                                                assert {:id "id239"} M0.Literal.litArrOfPaths_q(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(1))): DatatypeType));
                                                ##deps#0 := M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(1))): DatatypeType));
                                                // assume allocatedness for argument to function
                                                assume $IsAlloc(##deps#0, TSet(Tclass.M0.Path()), $Heap);
                                                assert {:id "id240"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(args'#Z#0);
                                                assert {:id "id241"} M0.Expression.exprLiteral_q($Unbox(Seq#Index(args'#Z#0, LitInt(2))): DatatypeType);
                                                assert {:id "id242"} M0.Literal.litArrOfStrings_q(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(2))): DatatypeType));
                                                ##exps#0 := M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(2))): DatatypeType));
                                                // assume allocatedness for argument to function
                                                assume $IsAlloc(##exps#0, TSet(TSeq(TChar)), $Heap);
                                                ##st#9 := stCombined#Z#0;
                                                // assume allocatedness for argument to function
                                                assume $IsAllocBox(##st#9, Tclass.M0.State(), $Heap);
                                                assume M0.__default.exec#canCall(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(0))): DatatypeType)), 
                                                  M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(1))): DatatypeType)), 
                                                  M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(2))): DatatypeType)), 
                                                  stCombined#Z#0);
                                                assume M0.Tuple.Pair_q(M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(0))): DatatypeType)), 
                                                    M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(1))): DatatypeType)), 
                                                    M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(2))): DatatypeType)), 
                                                    stCombined#Z#0));
                                                assume {:id "id243"} let#7#0#0
                                                   == M0.__default.exec(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(0))): DatatypeType)), 
                                                    M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(1))): DatatypeType)), 
                                                    M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(2))): DatatypeType)), 
                                                    stCombined#Z#0);
                                                assume M0.__default.exec#canCall(M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(0))): DatatypeType)), 
                                                  M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(1))): DatatypeType)), 
                                                  M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#Z#0, LitInt(2))): DatatypeType)), 
                                                  stCombined#Z#0);
                                                // CheckWellformedWithResult: any expression
                                                assume $Is(let#7#0#0, Tclass.M0.Tuple(TSet(Tclass.M0.Path()), Tclass.M0.State()));
                                                assume {:id "id244"} ps#Z#0 == let#7#0#0;
                                                assume M0.Tuple.Pair_q(ps#Z#0);
                                                assume M0.Tuple.Pair_q(ps#Z#0);
                                                assume {:id "id245"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                                   == #M0.Tuple.Pair($Box(#M0.Expression.exprLiteral(#M0.Literal.litArrOfPaths($Unbox(M0.Tuple.fst(ps#Z#0)): Set))), 
                                                    M0.Tuple.snd(ps#Z#0));
                                                assume M0.Tuple.Pair_q(ps#Z#0) && M0.Tuple.Pair_q(ps#Z#0);
                                                // CheckWellformedWithResult: any expression
                                                assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                                return;
                                            }
                                            else
                                            {
                                                assume {:id "id246"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                                   == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                                                assume true;
                                                // CheckWellformedWithResult: any expression
                                                assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                                return;
                                            }
                                        }
                                        else
                                        {
                                            assume {:id "id247"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                               == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                                            assume true;
                                            // CheckWellformedWithResult: any expression
                                            assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                              Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                            return;
                                        }
                                    }
                                    else
                                    {
                                        assume {:id "id248"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                           == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                                        assume true;
                                        // CheckWellformedWithResult: any expression
                                        assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                          Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                        return;
                                    }
                                }
                            }
                            else
                            {
                                assume {:id "id249"} M0.__default.eval($LS($LZ), expr#0, st#0, env#0)
                                   == #M0.Tuple.Pair($Box(Lit(#M0.Expression.exprError(Lit(#M0.Reason.rValidity())))), st#0);
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(M0.__default.eval($LS($LZ), expr#0, st#0, env#0), 
                                  Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
                                return;
                            }
                        }
                    }
                }
            }
        }

        assume false;
    }
}



// function declaration for M0._default.evalArgs
function M0.__default.evalArgs($ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box)
   : DatatypeType
uses {
// consequence axiom for M0.__default.evalArgs
axiom 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box :: 
    { M0.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0) } 
    M0.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M0.Expression())
           && $Is(args#0, TSeq(Tclass.M0.Expression()))
           && $IsBox(stOrig#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.ValidEnv(env#0)
           && (forall arg#0: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#0)) } 
            $Is(arg#0, Tclass.M0.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#0))
               ==> DtRank(arg#0) < DtRank(context#0)))
       ==> $Is(M0.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0), 
        Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State()))));
// alloc consequence axiom for M0.__default.evalArgs
axiom 4 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      $ly: LayerType, 
      context#0: DatatypeType, 
      args#0: Seq, 
      stOrig#0: Box, 
      env#0: Box :: 
    { $IsAlloc(M0.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0), 
        Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State())), 
        $Heap) } 
    (M0.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
           || (4 < $FunctionContextHeight
             && 
            $Is(context#0, Tclass.M0.Expression())
             && $IsAlloc(context#0, Tclass.M0.Expression(), $Heap)
             && 
            $Is(args#0, TSeq(Tclass.M0.Expression()))
             && $IsAlloc(args#0, TSeq(Tclass.M0.Expression()), $Heap)
             && 
            $IsBox(stOrig#0, Tclass.M0.State())
             && $IsAllocBox(stOrig#0, Tclass.M0.State(), $Heap)
             && 
            $IsBox(env#0, Tclass.M0.Env())
             && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap)
             && 
            M0.__default.ValidEnv(env#0)
             && (forall arg#0: DatatypeType :: 
              { Seq#Contains(args#0, $Box(arg#0)) } 
              $Is(arg#0, Tclass.M0.Expression())
                 ==> 
                Seq#Contains(args#0, $Box(arg#0))
                 ==> DtRank(arg#0) < DtRank(context#0))))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(M0.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0), 
        Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State())), 
        $Heap));
// definition axiom for M0.__default.evalArgs (revealed)
axiom {:id "id250"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box :: 
    { M0.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0) } 
    M0.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M0.Expression())
           && $Is(args#0, TSeq(Tclass.M0.Expression()))
           && $IsBox(stOrig#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.ValidEnv(env#0)
           && (forall arg#1: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#1)) } 
            $Is(arg#1, Tclass.M0.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#1))
               ==> DtRank(arg#1) < DtRank(context#0)))
       ==> (!Seq#Equal(args#0, Seq#Empty(): Seq)
           ==> M0.__default.eval#canCall($Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0)
             && (var r#0 := M0.__default.eval($ly, $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0); 
              M0.__default.evalArgs#canCall(context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0)
                 && (var rr#0 := M0.__default.evalArgs($ly, context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0); 
                  M0.Tuple.Pair_q(r#0)
                     && M0.Tuple.Pair_q(rr#0)
                     && 
                    M0.Tuple.Pair_q(r#0)
                     && M0.Tuple.Pair_q(rr#0))))
         && M0.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0)
           == (if Seq#Equal(args#0, Seq#Empty(): Seq)
             then #M0.Tuple.Pair($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(Set#Empty(): Set)))
             else (var r#0 := M0.__default.eval($ly, $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0); 
              (var rr#0 := M0.__default.evalArgs($ly, context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0); 
                #M0.Tuple.Pair($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, M0.Tuple.fst(r#0)), $Unbox(M0.Tuple.fst(rr#0)): Seq)), 
                  $Box(Set#Union(Set#UnionOne(Set#Empty(): Set, M0.Tuple.snd(r#0)), 
                      $Unbox(M0.Tuple.snd(rr#0)): Set)))))));
// definition axiom for M0.__default.evalArgs for decreasing-related literals (revealed)
axiom {:id "id251"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box :: 
    {:weight 3} { M0.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), stOrig#0, env#0) } 
    M0.__default.evalArgs#canCall(Lit(context#0), Lit(args#0), stOrig#0, env#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M0.Expression())
           && $Is(args#0, TSeq(Tclass.M0.Expression()))
           && $IsBox(stOrig#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.ValidEnv(env#0)
           && (forall arg#2: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#2)) } 
            $Is(arg#2, Tclass.M0.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#2))
               ==> DtRank(arg#2) < DtRank(context#0)))
       ==> (!Seq#Equal(args#0, Seq#Empty(): Seq)
           ==> M0.__default.eval#canCall($Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, stOrig#0, env#0)
             && (var r#1 := M0.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  stOrig#0, 
                  env#0); 
              M0.__default.evalArgs#canCall(Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), stOrig#0, env#0)
                 && (var rr#1 := M0.__default.evalArgs($LS($ly), Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), stOrig#0, env#0); 
                  M0.Tuple.Pair_q(r#1)
                     && M0.Tuple.Pair_q(rr#1)
                     && 
                    M0.Tuple.Pair_q(r#1)
                     && M0.Tuple.Pair_q(rr#1))))
         && M0.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), stOrig#0, env#0)
           == (if Seq#Equal(args#0, Seq#Empty(): Seq)
             then #M0.Tuple.Pair($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(Set#Empty(): Set)))
             else (var r#1 := M0.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  stOrig#0, 
                  env#0); 
              (var rr#1 := M0.__default.evalArgs($LS($ly), Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), stOrig#0, env#0); 
                #M0.Tuple.Pair($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, M0.Tuple.fst(r#1)), $Unbox(M0.Tuple.fst(rr#1)): Seq)), 
                  $Box(Set#Union(Set#UnionOne(Set#Empty(): Set, M0.Tuple.snd(r#1)), 
                      $Unbox(M0.Tuple.snd(rr#1)): Set)))))));
// definition axiom for M0.__default.evalArgs for all literals (revealed)
axiom {:id "id252"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box :: 
    {:weight 3} { M0.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), Lit(stOrig#0), Lit(env#0)) } 
    M0.__default.evalArgs#canCall(Lit(context#0), Lit(args#0), Lit(stOrig#0), Lit(env#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(context#0, Tclass.M0.Expression())
           && $Is(args#0, TSeq(Tclass.M0.Expression()))
           && $IsBox(stOrig#0, Tclass.M0.State())
           && $IsBox(env#0, Tclass.M0.Env())
           && 
          M0.__default.ValidEnv(Lit(env#0))
           && (forall arg#3: DatatypeType :: 
            { Seq#Contains(args#0, $Box(arg#3)) } 
            $Is(arg#3, Tclass.M0.Expression())
               ==> 
              Seq#Contains(args#0, $Box(arg#3))
               ==> DtRank(arg#3) < DtRank(context#0)))
       ==> (!Seq#Equal(args#0, Seq#Empty(): Seq)
           ==> M0.__default.eval#canCall($Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
              Lit(stOrig#0), 
              Lit(env#0))
             && (var r#2 := M0.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  Lit(stOrig#0), 
                  Lit(env#0)); 
              M0.__default.evalArgs#canCall(Lit(context#0), Lit(Seq#Drop(Lit(args#0), LitInt(1))), Lit(stOrig#0), Lit(env#0))
                 && (var rr#2 := Lit(M0.__default.evalArgs($LS($ly), 
                        Lit(context#0), 
                        Lit(Seq#Drop(Lit(args#0), LitInt(1))), 
                        Lit(stOrig#0), 
                        Lit(env#0))); 
                  M0.Tuple.Pair_q(r#2)
                     && M0.Tuple.Pair_q(rr#2)
                     && 
                    M0.Tuple.Pair_q(r#2)
                     && M0.Tuple.Pair_q(rr#2))))
         && M0.__default.evalArgs($LS($ly), Lit(context#0), Lit(args#0), Lit(stOrig#0), Lit(env#0))
           == (if Seq#Equal(args#0, Seq#Empty(): Seq)
             then #M0.Tuple.Pair($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(Set#Empty(): Set)))
             else (var r#2 := M0.__default.eval($LS($ly), 
                  $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                  Lit(stOrig#0), 
                  Lit(env#0)); 
              (var rr#2 := Lit(M0.__default.evalArgs($LS($ly), 
                      Lit(context#0), 
                      Lit(Seq#Drop(Lit(args#0), LitInt(1))), 
                      Lit(stOrig#0), 
                      Lit(env#0))); 
                #M0.Tuple.Pair($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, M0.Tuple.fst(r#2)), $Unbox(M0.Tuple.fst(rr#2)): Seq)), 
                  $Box(Set#Union(Set#UnionOne(Set#Empty(): Set, M0.Tuple.snd(r#2)), 
                      $Unbox(M0.Tuple.snd(rr#2)): Set)))))));
}

function M0.__default.evalArgs#canCall(context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box :: 
  { M0.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0) } 
  M0.__default.evalArgs($LS($ly), context#0, args#0, stOrig#0, env#0)
     == M0.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box :: 
  { M0.__default.evalArgs(AsFuelBottom($ly), context#0, args#0, stOrig#0, env#0) } 
  M0.__default.evalArgs($ly, context#0, args#0, stOrig#0, env#0)
     == M0.__default.evalArgs($LZ, context#0, args#0, stOrig#0, env#0));

function M0.__default.evalArgs#requires(LayerType, DatatypeType, Seq, Box, Box) : bool;

// #requires axiom for M0.__default.evalArgs
axiom (forall $ly: LayerType, context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box :: 
  { M0.__default.evalArgs#requires($ly, context#0, args#0, stOrig#0, env#0) } 
  $Is(context#0, Tclass.M0.Expression())
       && $Is(args#0, TSeq(Tclass.M0.Expression()))
       && $IsBox(stOrig#0, Tclass.M0.State())
       && $IsBox(env#0, Tclass.M0.Env())
     ==> M0.__default.evalArgs#requires($ly, context#0, args#0, stOrig#0, env#0)
       == (M0.__default.ValidEnv(env#0)
         && (forall arg#1: DatatypeType :: 
          { Seq#Contains(args#0, $Box(arg#1)) } 
          $Is(arg#1, Tclass.M0.Expression())
             ==> 
            Seq#Contains(args#0, $Box(arg#1))
             ==> DtRank(arg#1) < DtRank(context#0))));

procedure {:verboseName "M0.evalArgs (well-formedness)"} CheckWellformed$$M0.__default.evalArgs(context#0: DatatypeType where $Is(context#0, Tclass.M0.Expression()), 
    args#0: Seq where $Is(args#0, TSeq(Tclass.M0.Expression())), 
    stOrig#0: Box where $IsBox(stOrig#0, Tclass.M0.State()), 
    env#0: Box where $IsBox(env#0, Tclass.M0.Env()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.evalArgs (well-formedness)"} CheckWellformed$$M0.__default.evalArgs(context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##env#0: Box;
  var arg#4: DatatypeType;
  var r#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##expr#0: DatatypeType;
  var ##st#0: Box;
  var ##env#1: Box;
  var rr#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##context#0: DatatypeType;
  var ##args#0: Seq;
  var ##stOrig#0: Box;
  var ##env#2: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id253"} M0.__default.ValidEnv(env#0);
    havoc arg#4;
    assume $Is(arg#4, Tclass.M0.Expression())
       && $IsAlloc(arg#4, Tclass.M0.Expression(), $Heap);
    if (*)
    {
        assume {:id "id254"} Seq#Contains(args#0, $Box(arg#4));
        assume {:id "id255"} DtRank(arg#4) < DtRank(context#0);
    }
    else
    {
        assume {:id "id256"} Seq#Contains(args#0, $Box(arg#4)) ==> DtRank(arg#4) < DtRank(context#0);
    }

    assume {:id "id257"} (forall arg#0: DatatypeType :: 
      { Seq#Contains(args#0, $Box(arg#0)) } 
      $Is(arg#0, Tclass.M0.Expression())
         ==> 
        Seq#Contains(args#0, $Box(arg#0))
         ==> DtRank(arg#0) < DtRank(context#0));
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0), 
          Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State())));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Seq#Equal(args#0, Seq#Empty(): Seq))
        {
            assume {:id "id258"} M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0)
               == Lit(#M0.Tuple.Pair($Box(Lit(Seq#Empty(): Seq)), $Box(Lit(Set#Empty(): Set))));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0), 
              Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State())));
            return;
        }
        else
        {
            havoc r#Z#0;
            assert {:id "id259"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(args#0);
            ##expr#0 := $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##expr#0, Tclass.M0.Expression(), $Heap);
            ##st#0 := stOrig#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
            ##env#1 := env#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
            assert {:id "id260"} {:subsumption 0} M0.__default.ValidEnv(##env#1);
            assume M0.__default.ValidEnv(##env#1);
            assert {:id "id261"} DtRank(##expr#0) < DtRank(context#0);
            assume M0.__default.eval#canCall($Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0);
            assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0));
            assume {:id "id262"} let#0#0#0
               == M0.__default.eval($LS($LZ), $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0);
            assume M0.__default.eval#canCall($Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, stOrig#0, env#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
            assume {:id "id263"} r#Z#0 == let#0#0#0;
            havoc rr#Z#0;
            ##context#0 := context#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##context#0, Tclass.M0.Expression(), $Heap);
            assert {:id "id264"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(args#0);
            ##args#0 := Seq#Drop(args#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##args#0, TSeq(Tclass.M0.Expression()), $Heap);
            ##stOrig#0 := stOrig#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##stOrig#0, Tclass.M0.State(), $Heap);
            ##env#2 := env#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##env#2, Tclass.M0.Env(), $Heap);
            assert {:id "id265"} {:subsumption 0} M0.__default.ValidEnv(##env#2);
            assert {:id "id266"} {:subsumption 0} (forall arg#5: DatatypeType :: 
              { Seq#Contains(##args#0, $Box(arg#5)) } 
              $Is(arg#5, Tclass.M0.Expression())
                 ==> 
                Seq#Contains(##args#0, $Box(arg#5))
                 ==> DtRank(arg#5) < DtRank(##context#0));
            assume M0.__default.ValidEnv(##env#2)
               && (forall arg#5: DatatypeType :: 
                { Seq#Contains(##args#0, $Box(arg#5)) } 
                $Is(arg#5, Tclass.M0.Expression())
                   ==> 
                  Seq#Contains(##args#0, $Box(arg#5))
                   ==> DtRank(arg#5) < DtRank(##context#0));
            assert {:id "id267"} 0 <= Seq#Length(args#0)
               || DtRank(##context#0) < DtRank(context#0)
               || Seq#Length(##args#0) == Seq#Length(args#0);
            assert {:id "id268"} DtRank(##context#0) < DtRank(context#0)
               || (DtRank(##context#0) == DtRank(context#0)
                 && Seq#Length(##args#0) < Seq#Length(args#0));
            assume M0.__default.evalArgs#canCall(context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0);
            assume M0.Tuple.Pair_q(M0.__default.evalArgs($LS($LZ), context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0));
            assume {:id "id269"} let#1#0#0
               == M0.__default.evalArgs($LS($LZ), context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0);
            assume M0.__default.evalArgs#canCall(context#0, Seq#Drop(args#0, LitInt(1)), stOrig#0, env#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, 
              Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State())));
            assume {:id "id270"} rr#Z#0 == let#1#0#0;
            assume M0.Tuple.Pair_q(r#Z#0);
            assume M0.Tuple.Pair_q(rr#Z#0);
            assume M0.Tuple.Pair_q(r#Z#0);
            assume M0.Tuple.Pair_q(rr#Z#0);
            assume {:id "id271"} M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0)
               == #M0.Tuple.Pair($Box(Seq#Append(Seq#Build(Seq#Empty(): Seq, M0.Tuple.fst(r#Z#0)), 
                    $Unbox(M0.Tuple.fst(rr#Z#0)): Seq)), 
                $Box(Set#Union(Set#UnionOne(Set#Empty(): Set, M0.Tuple.snd(r#Z#0)), 
                    $Unbox(M0.Tuple.snd(rr#Z#0)): Set)));
            assume M0.Tuple.Pair_q(r#Z#0)
               && M0.Tuple.Pair_q(rr#Z#0)
               && 
              M0.Tuple.Pair_q(r#Z#0)
               && M0.Tuple.Pair_q(rr#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0), 
              Tclass.M0.Tuple(TSeq(Tclass.M0.Expression()), TSet(Tclass.M0.State())));
            return;
        }

        assume false;
    }
}



// function declaration for M0._default.Arity
function M0.__default.Arity(prim#0: DatatypeType) : int
uses {
// consequence axiom for M0.__default.Arity
axiom 1 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType :: 
    { M0.__default.Arity(prim#0) } 
    M0.__default.Arity#canCall(prim#0)
         || (1 < $FunctionContextHeight && $Is(prim#0, Tclass.M0.Primitive()))
       ==> LitInt(0) <= M0.__default.Arity(prim#0));
// definition axiom for M0.__default.Arity (revealed)
axiom {:id "id272"} 1 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType :: 
    { M0.__default.Arity(prim#0) } 
    M0.__default.Arity#canCall(prim#0)
         || (1 < $FunctionContextHeight && $Is(prim#0, Tclass.M0.Primitive()))
       ==> M0.__default.Arity(prim#0)
         == (if M0.Primitive.primCreatePath_q(prim#0) then 1 else 3));
// definition axiom for M0.__default.Arity for all literals (revealed)
axiom {:id "id273"} 1 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType :: 
    {:weight 3} { M0.__default.Arity(Lit(prim#0)) } 
    M0.__default.Arity#canCall(Lit(prim#0))
         || (1 < $FunctionContextHeight && $Is(prim#0, Tclass.M0.Primitive()))
       ==> M0.__default.Arity(Lit(prim#0))
         == (if M0.Primitive.primCreatePath_q(Lit(prim#0)) then 1 else 3));
}

function M0.__default.Arity#canCall(prim#0: DatatypeType) : bool;

function M0.__default.Arity#requires(DatatypeType) : bool;

// #requires axiom for M0.__default.Arity
axiom (forall prim#0: DatatypeType :: 
  { M0.__default.Arity#requires(prim#0) } 
  $Is(prim#0, Tclass.M0.Primitive())
     ==> M0.__default.Arity#requires(prim#0) == true);

procedure {:verboseName "M0.Arity (well-formedness)"} CheckWellformed$$M0.__default.Arity(prim#0: DatatypeType where $Is(prim#0, Tclass.M0.Primitive()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.Arity (well-formedness)"} CheckWellformed$$M0.__default.Arity(prim#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= M0.__default.Arity(prim#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (prim#0 == #M0.Primitive.primCreatePath())
        {
            assert {:id "id276"} $Is(LitInt(1), Tclass._System.nat());
            assume {:id "id277"} M0.__default.Arity(prim#0) == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.Arity(prim#0), Tclass._System.nat());
            return;
        }
        else if (prim#0 == #M0.Primitive.primExec())
        {
            assert {:id "id274"} $Is(LitInt(3), Tclass._System.nat());
            assume {:id "id275"} M0.__default.Arity(prim#0) == LitInt(3);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.Arity(prim#0), Tclass._System.nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for M0._default.ValidArgs
function M0.__default.ValidArgs(prim#0: DatatypeType, args#0: Seq, st#0: Box) : bool
uses {
// definition axiom for M0.__default.ValidArgs (revealed)
axiom {:id "id278"} 3 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType, args#0: Seq, st#0: Box :: 
    { M0.__default.ValidArgs(prim#0, args#0, st#0) } 
    M0.__default.ValidArgs#canCall(prim#0, args#0, st#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(prim#0, Tclass.M0.Primitive())
           && $Is(args#0, TSeq(Tclass.M0.Expression()))
           && $IsBox(st#0, Tclass.M0.State())
           && 
          (M0.Primitive.primExec_q(prim#0) ==> Seq#Length(args#0) == LitInt(3))
           && (M0.Primitive.primCreatePath_q(prim#0) ==> Seq#Length(args#0) == LitInt(1)))
       ==> (!M0.Primitive.primCreatePath_q(prim#0)
           ==> (var cmd#1, deps#1, exps#1 := $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(args#0, LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(args#0, LitInt(2))): DatatypeType; 
            M0.Expression.exprLiteral_q(cmd#1)
               ==> 
              M0.Literal.litString_q(M0.Expression.lit(cmd#1))
               ==> 
              M0.Expression.exprLiteral_q(deps#1)
               ==> 
              M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#1))
               ==> 
              M0.Expression.exprLiteral_q(exps#1)
               ==> 
              M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#1))
               ==> M0.__default.DomSt#canCall(st#0)
                 && (Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#1)), M0.__default.DomSt(st#0))
                   ==> M0.__default.Pre#canCall(M0.Literal.str(M0.Expression.lit(cmd#1)), 
                    M0.Literal.paths(M0.Expression.lit(deps#1)), 
                    M0.Literal.strs(M0.Expression.lit(exps#1)), 
                    st#0))))
         && M0.__default.ValidArgs(prim#0, args#0, st#0)
           == (if M0.Primitive.primCreatePath_q(prim#0)
             then false
             else (var cmd#0, deps#0, exps#0 := $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType, 
                $Unbox(Seq#Index(args#0, LitInt(1))): DatatypeType, 
                $Unbox(Seq#Index(args#0, LitInt(2))): DatatypeType; 
              M0.Expression.exprLiteral_q(cmd#0)
                 && M0.Literal.litString_q(M0.Expression.lit(cmd#0))
                 && M0.Expression.exprLiteral_q(deps#0)
                 && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#0))
                 && M0.Expression.exprLiteral_q(exps#0)
                 && M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#0))
                 && Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#0)), M0.__default.DomSt(st#0))
                 && M0.__default.Pre(M0.Literal.str(M0.Expression.lit(cmd#0)), 
                  M0.Literal.paths(M0.Expression.lit(deps#0)), 
                  M0.Literal.strs(M0.Expression.lit(exps#0)), 
                  st#0))));
// definition axiom for M0.__default.ValidArgs for decreasing-related literals (revealed)
axiom {:id "id279"} 3 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType, args#0: Seq, st#0: Box :: 
    {:weight 3} { M0.__default.ValidArgs(Lit(prim#0), Lit(args#0), st#0) } 
    M0.__default.ValidArgs#canCall(Lit(prim#0), Lit(args#0), st#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(prim#0, Tclass.M0.Primitive())
           && $Is(args#0, TSeq(Tclass.M0.Expression()))
           && $IsBox(st#0, Tclass.M0.State())
           && 
          (M0.Primitive.primExec_q(Lit(prim#0)) ==> Seq#Length(Lit(args#0)) == LitInt(3))
           && (M0.Primitive.primCreatePath_q(Lit(prim#0))
             ==> Seq#Length(Lit(args#0)) == LitInt(1)))
       ==> (!Lit(M0.Primitive.primCreatePath_q(Lit(prim#0)))
           ==> (var cmd#3, deps#3, exps#3 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
            M0.Expression.exprLiteral_q(cmd#3)
               ==> 
              M0.Literal.litString_q(M0.Expression.lit(cmd#3))
               ==> 
              M0.Expression.exprLiteral_q(deps#3)
               ==> 
              M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#3))
               ==> 
              M0.Expression.exprLiteral_q(exps#3)
               ==> 
              M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#3))
               ==> M0.__default.DomSt#canCall(st#0)
                 && (Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#3)), M0.__default.DomSt(st#0))
                   ==> M0.__default.Pre#canCall(M0.Literal.str(M0.Expression.lit(cmd#3)), 
                    M0.Literal.paths(M0.Expression.lit(deps#3)), 
                    M0.Literal.strs(M0.Expression.lit(exps#3)), 
                    st#0))))
         && M0.__default.ValidArgs(Lit(prim#0), Lit(args#0), st#0)
           == (if M0.Primitive.primCreatePath_q(Lit(prim#0))
             then false
             else (var cmd#2, deps#2, exps#2 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
              M0.Expression.exprLiteral_q(cmd#2)
                 && M0.Literal.litString_q(M0.Expression.lit(cmd#2))
                 && M0.Expression.exprLiteral_q(deps#2)
                 && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#2))
                 && M0.Expression.exprLiteral_q(exps#2)
                 && M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#2))
                 && Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#2)), M0.__default.DomSt(st#0))
                 && M0.__default.Pre(M0.Literal.str(M0.Expression.lit(cmd#2)), 
                  M0.Literal.paths(M0.Expression.lit(deps#2)), 
                  M0.Literal.strs(M0.Expression.lit(exps#2)), 
                  st#0))));
// definition axiom for M0.__default.ValidArgs for all literals (revealed)
axiom {:id "id280"} 3 <= $FunctionContextHeight
   ==> (forall prim#0: DatatypeType, args#0: Seq, st#0: Box :: 
    {:weight 3} { M0.__default.ValidArgs(Lit(prim#0), Lit(args#0), Lit(st#0)) } 
    M0.__default.ValidArgs#canCall(Lit(prim#0), Lit(args#0), Lit(st#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(prim#0, Tclass.M0.Primitive())
           && $Is(args#0, TSeq(Tclass.M0.Expression()))
           && $IsBox(st#0, Tclass.M0.State())
           && 
          (M0.Primitive.primExec_q(Lit(prim#0)) ==> Seq#Length(Lit(args#0)) == LitInt(3))
           && (M0.Primitive.primCreatePath_q(Lit(prim#0))
             ==> Seq#Length(Lit(args#0)) == LitInt(1)))
       ==> (!Lit(M0.Primitive.primCreatePath_q(Lit(prim#0)))
           ==> (var cmd#5, deps#5, exps#5 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
              $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
            M0.Expression.exprLiteral_q(cmd#5)
               ==> 
              M0.Literal.litString_q(M0.Expression.lit(cmd#5))
               ==> 
              M0.Expression.exprLiteral_q(deps#5)
               ==> 
              M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#5))
               ==> 
              M0.Expression.exprLiteral_q(exps#5)
               ==> 
              M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#5))
               ==> M0.__default.DomSt#canCall(Lit(st#0))
                 && (Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#5)), M0.__default.DomSt(Lit(st#0)))
                   ==> M0.__default.Pre#canCall(M0.Literal.str(M0.Expression.lit(cmd#5)), 
                    M0.Literal.paths(M0.Expression.lit(deps#5)), 
                    M0.Literal.strs(M0.Expression.lit(exps#5)), 
                    Lit(st#0)))))
         && M0.__default.ValidArgs(Lit(prim#0), Lit(args#0), Lit(st#0))
           == (if M0.Primitive.primCreatePath_q(Lit(prim#0))
             then false
             else (var cmd#4, deps#4, exps#4 := $Unbox(Seq#Index(Lit(args#0), LitInt(0))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(1))): DatatypeType, 
                $Unbox(Seq#Index(Lit(args#0), LitInt(2))): DatatypeType; 
              M0.Expression.exprLiteral_q(cmd#4)
                 && M0.Literal.litString_q(M0.Expression.lit(cmd#4))
                 && M0.Expression.exprLiteral_q(deps#4)
                 && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#4))
                 && M0.Expression.exprLiteral_q(exps#4)
                 && M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#4))
                 && Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#4)), M0.__default.DomSt(Lit(st#0)))
                 && M0.__default.Pre(M0.Literal.str(M0.Expression.lit(cmd#4)), 
                  M0.Literal.paths(M0.Expression.lit(deps#4)), 
                  M0.Literal.strs(M0.Expression.lit(exps#4)), 
                  Lit(st#0)))));
}

function M0.__default.ValidArgs#canCall(prim#0: DatatypeType, args#0: Seq, st#0: Box) : bool;

function M0.__default.ValidArgs#requires(DatatypeType, Seq, Box) : bool;

// #requires axiom for M0.__default.ValidArgs
axiom (forall prim#0: DatatypeType, args#0: Seq, st#0: Box :: 
  { M0.__default.ValidArgs#requires(prim#0, args#0, st#0) } 
  $Is(prim#0, Tclass.M0.Primitive())
       && $Is(args#0, TSeq(Tclass.M0.Expression()))
       && $IsBox(st#0, Tclass.M0.State())
     ==> M0.__default.ValidArgs#requires(prim#0, args#0, st#0)
       == ((M0.Primitive.primExec_q(prim#0) ==> Seq#Length(args#0) == LitInt(3))
         && (M0.Primitive.primCreatePath_q(prim#0) ==> Seq#Length(args#0) == LitInt(1))));

procedure {:verboseName "M0.ValidArgs (well-formedness)"} CheckWellformed$$M0.__default.ValidArgs(prim#0: DatatypeType where $Is(prim#0, Tclass.M0.Primitive()), 
    args#0: Seq where $Is(args#0, TSeq(Tclass.M0.Expression())), 
    st#0: Box where $IsBox(st#0, Tclass.M0.State()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.ValidArgs (well-formedness)"} CheckWellformed$$M0.__default.ValidArgs(prim#0: DatatypeType, args#0: Seq, st#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;
  var cmd#Z#0: DatatypeType;
  var deps#Z#0: DatatypeType;
  var exps#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var let#0#1#0: DatatypeType;
  var let#0#2#0: DatatypeType;
  var ##st#0: Box;
  var ##cmd#0: Seq;
  var ##deps#0: Set;
  var ##exps#0: Set;
  var ##st#1: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    if (*)
    {
        assume {:id "id281"} M0.Primitive.primExec_q(prim#0);
        assume {:id "id282"} Seq#Length(args#0) == LitInt(3);
    }
    else
    {
        assume {:id "id283"} M0.Primitive.primExec_q(prim#0) ==> Seq#Length(args#0) == LitInt(3);
    }

    if (*)
    {
        assume {:id "id284"} M0.Primitive.primCreatePath_q(prim#0);
        assume {:id "id285"} Seq#Length(args#0) == LitInt(1);
    }
    else
    {
        assume {:id "id286"} M0.Primitive.primCreatePath_q(prim#0) ==> Seq#Length(args#0) == LitInt(1);
    }

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
        if (prim#0 == #M0.Primitive.primCreatePath())
        {
            assume {:id "id308"} M0.__default.ValidArgs(prim#0, args#0, st#0) == Lit(false);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.ValidArgs(prim#0, args#0, st#0), TBool);
            return;
        }
        else if (prim#0 == #M0.Primitive.primExec())
        {
            havoc cmd#Z#0;
            havoc deps#Z#0;
            havoc exps#Z#0;
            assert {:id "id287"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(args#0);
            assume {:id "id288"} let#0#0#0 == $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.M0.Expression());
            assume {:id "id289"} cmd#Z#0 == let#0#0#0;
            assert {:id "id290"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(args#0);
            assume {:id "id291"} let#0#1#0 == $Unbox(Seq#Index(args#0, LitInt(1))): DatatypeType;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#1#0, Tclass.M0.Expression());
            assume {:id "id292"} deps#Z#0 == let#0#1#0;
            assert {:id "id293"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(args#0);
            assume {:id "id294"} let#0#2#0 == $Unbox(Seq#Index(args#0, LitInt(2))): DatatypeType;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#2#0, Tclass.M0.Expression());
            assume {:id "id295"} exps#Z#0 == let#0#2#0;
            if (M0.Expression.exprLiteral_q(cmd#Z#0))
            {
                assert {:id "id296"} M0.Expression.exprLiteral_q(cmd#Z#0);
            }

            if (M0.Expression.exprLiteral_q(cmd#Z#0)
               && M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0)))
            {
            }

            if (M0.Expression.exprLiteral_q(cmd#Z#0)
               && M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0))
               && M0.Expression.exprLiteral_q(deps#Z#0))
            {
                assert {:id "id297"} M0.Expression.exprLiteral_q(deps#Z#0);
            }

            if (M0.Expression.exprLiteral_q(cmd#Z#0)
               && M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0))
               && M0.Expression.exprLiteral_q(deps#Z#0)
               && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0)))
            {
            }

            if (M0.Expression.exprLiteral_q(cmd#Z#0)
               && M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0))
               && M0.Expression.exprLiteral_q(deps#Z#0)
               && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0))
               && M0.Expression.exprLiteral_q(exps#Z#0))
            {
                assert {:id "id298"} M0.Expression.exprLiteral_q(exps#Z#0);
            }

            if (M0.Expression.exprLiteral_q(cmd#Z#0)
               && M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0))
               && M0.Expression.exprLiteral_q(deps#Z#0)
               && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0))
               && M0.Expression.exprLiteral_q(exps#Z#0)
               && M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#Z#0)))
            {
                assert {:id "id299"} M0.Expression.exprLiteral_q(deps#Z#0);
                assert {:id "id300"} M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0));
                ##st#0 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
                assume M0.__default.DomSt#canCall(st#0);
            }

            if (M0.Expression.exprLiteral_q(cmd#Z#0)
               && M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0))
               && M0.Expression.exprLiteral_q(deps#Z#0)
               && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0))
               && M0.Expression.exprLiteral_q(exps#Z#0)
               && M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#Z#0))
               && Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#Z#0)), M0.__default.DomSt(st#0)))
            {
                assert {:id "id301"} M0.Expression.exprLiteral_q(cmd#Z#0);
                assert {:id "id302"} M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0));
                ##cmd#0 := M0.Literal.str(M0.Expression.lit(cmd#Z#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##cmd#0, TSeq(TChar), $Heap);
                assert {:id "id303"} M0.Expression.exprLiteral_q(deps#Z#0);
                assert {:id "id304"} M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0));
                ##deps#0 := M0.Literal.paths(M0.Expression.lit(deps#Z#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##deps#0, TSet(Tclass.M0.Path()), $Heap);
                assert {:id "id305"} M0.Expression.exprLiteral_q(exps#Z#0);
                assert {:id "id306"} M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#Z#0));
                ##exps#0 := M0.Literal.strs(M0.Expression.lit(exps#Z#0));
                // assume allocatedness for argument to function
                assume $IsAlloc(##exps#0, TSet(TSeq(TChar)), $Heap);
                ##st#1 := st#0;
                // assume allocatedness for argument to function
                assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
                assume M0.__default.Pre#canCall(M0.Literal.str(M0.Expression.lit(cmd#Z#0)), 
                  M0.Literal.paths(M0.Expression.lit(deps#Z#0)), 
                  M0.Literal.strs(M0.Expression.lit(exps#Z#0)), 
                  st#0);
            }

            assume {:id "id307"} M0.__default.ValidArgs(prim#0, args#0, st#0)
               == (
                M0.Expression.exprLiteral_q(cmd#Z#0)
                 && M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0))
                 && M0.Expression.exprLiteral_q(deps#Z#0)
                 && M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0))
                 && M0.Expression.exprLiteral_q(exps#Z#0)
                 && M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#Z#0))
                 && Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#Z#0)), M0.__default.DomSt(st#0))
                 && M0.__default.Pre(M0.Literal.str(M0.Expression.lit(cmd#Z#0)), 
                  M0.Literal.paths(M0.Expression.lit(deps#Z#0)), 
                  M0.Literal.strs(M0.Expression.lit(exps#Z#0)), 
                  st#0));
            assume M0.Expression.exprLiteral_q(cmd#Z#0)
               ==> 
              M0.Literal.litString_q(M0.Expression.lit(cmd#Z#0))
               ==> 
              M0.Expression.exprLiteral_q(deps#Z#0)
               ==> 
              M0.Literal.litArrOfPaths_q(M0.Expression.lit(deps#Z#0))
               ==> 
              M0.Expression.exprLiteral_q(exps#Z#0)
               ==> 
              M0.Literal.litArrOfStrings_q(M0.Expression.lit(exps#Z#0))
               ==> M0.__default.DomSt#canCall(st#0)
                 && (Set#Subset(M0.Literal.paths(M0.Expression.lit(deps#Z#0)), M0.__default.DomSt(st#0))
                   ==> M0.__default.Pre#canCall(M0.Literal.str(M0.Expression.lit(cmd#Z#0)), 
                    M0.Literal.paths(M0.Expression.lit(deps#Z#0)), 
                    M0.Literal.strs(M0.Expression.lit(exps#Z#0)), 
                    st#0));
            // CheckWellformedWithResult: any expression
            assume $Is(M0.__default.ValidArgs(prim#0, args#0, st#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "M0.ParallelBuildsTheorem (well-formedness)"} CheckWellFormed$$M0.__default.ParallelBuildsTheorem(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M0.Program())
         && $IsAlloc(prog#0, Tclass.M0.Program(), $Heap)
         && $IsA#M0.Program(prog#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap));
  free requires 8 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.ParallelBuildsTheorem (well-formedness)"} CheckWellFormed$$M0.__default.ParallelBuildsTheorem(prog#0: DatatypeType, st#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##stmts#0: Seq;
  var ##st#0: Box;
  var expr'#Z#0: DatatypeType;
  var st'#Z#0: Box;
  var let#0#0#0: DatatypeType;
  var ##prog#0: DatatypeType;
  var ##st#1: Box;
  var ##st#2: Box;


    // AddMethodImpl: ParallelBuildsTheorem, CheckWellFormed$$M0.__default.ParallelBuildsTheorem
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume M0.Program.Program_q(prog#0);
    ##stmts#0 := M0.Program.stmts(prog#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#0, TSeq(Tclass.M0.Statement()), $Heap);
    assume M0.__default.Legal#canCall(M0.Program.stmts(prog#0));
    assume {:id "id309"} M0.__default.Legal(M0.Program.stmts(prog#0));
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st#0);
    assume {:id "id310"} M0.__default.ValidState(st#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc expr'#Z#0;
    havoc st'#Z#0;
    ##prog#0 := prog#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##prog#0, Tclass.M0.Program(), $Heap);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
    assert {:id "id311"} {:subsumption 0} M0.__default.Legal#canCall(M0.Program.stmts(##prog#0))
       ==> M0.__default.Legal(M0.Program.stmts(##prog#0))
         || Seq#Length(M0.Program.stmts(##prog#0)) != 0;
    assume M0.__default.Legal(M0.Program.stmts(##prog#0));
    assume M0.__default.build#canCall(prog#0, st#0);
    assume M0.Tuple.Pair_q(M0.__default.build(prog#0, st#0));
    assume {:id "id312"} let#0#0#0 == M0.__default.build(prog#0, st#0);
    assume M0.__default.build#canCall(prog#0, st#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()));
    assume M0.Tuple.Pair_q(let#0#0#0);
    assume {:id "id313"} #M0.Tuple.Pair($Box(expr'#Z#0), st'#Z#0) == let#0#0#0;
    ##st#2 := st'#Z#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st'#Z#0);
    if (M0.__default.ValidState(st'#Z#0))
    {
        if (M0.Expression.exprError_q(expr'#Z#0))
        {
            assert {:id "id314"} M0.Expression.exprError_q(expr'#Z#0);
        }
    }

    assume {:id "id315"} (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.build(prog#0, st#0))): DatatypeType, 
        M0.Tuple.snd(M0.__default.build(prog#0, st#0)); 
      M0.__default.ValidState(st'#0)
         && (M0.Expression.exprError_q(expr'#0)
           ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity())));
}



procedure {:verboseName "M0.ParallelBuildsTheorem (call)"} Call$$M0.__default.ParallelBuildsTheorem(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M0.Program())
         && $IsAlloc(prog#0, Tclass.M0.Program(), $Heap)
         && $IsA#M0.Program(prog#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id316"} M0.__default.Legal#canCall(M0.Program.stmts(prog#0))
     ==> M0.__default.Legal(M0.Program.stmts(prog#0))
       || Seq#Length(M0.Program.stmts(prog#0)) != 0;
  requires {:id "id317"} M0.__default.ValidState#canCall(st#0)
     ==> M0.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M0.__default.WellFounded(p#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#0)
           ==> M0.__default.WellFounded(p#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.build#canCall(prog#0, st#0)
     && (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.build(prog#0, st#0))): DatatypeType, 
        M0.Tuple.snd(M0.__default.build(prog#0, st#0)); 
      M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> 
          M0.Expression.exprError_q(expr'#0)
           ==> $IsA#M0.Reason(M0.Expression.r(expr'#0))));
  free ensures {:id "id318"} (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.build(prog#0, st#0))): DatatypeType, 
      M0.Tuple.snd(M0.__default.build(prog#0, st#0)); 
    M0.__default.ValidState#canCall(st'#0)
       && 
      M0.__default.ValidState(st'#0)
       && (forall p#1: Box :: 
        { M0.__default.WellFounded(p#1) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#1) } 
        $IsBox(p#1, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st'#0), p#1)
           ==> M0.__default.WellFounded(p#1)));
  ensures {:id "id319"} (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.build(prog#0, st#0))): DatatypeType, 
      M0.Tuple.snd(M0.__default.build(prog#0, st#0)); 
    M0.Expression.exprError_q(expr'#0)
       ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity()));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M0.ParallelBuildsTheorem (correctness)"} Impl$$M0.__default.ParallelBuildsTheorem(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M0.Program())
         && $IsAlloc(prog#0, Tclass.M0.Program(), $Heap)
         && $IsA#M0.Program(prog#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 8 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id320"} M0.__default.Legal#canCall(M0.Program.stmts(prog#0))
     && 
    M0.__default.Legal(M0.Program.stmts(prog#0))
     && Seq#Length(M0.Program.stmts(prog#0)) != 0;
  free requires {:id "id321"} M0.__default.ValidState#canCall(st#0)
     && 
    M0.__default.ValidState(st#0)
     && (forall p#2: Box :: 
      { M0.__default.WellFounded(p#2) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st#0), p#2)
         ==> M0.__default.WellFounded(p#2));
  modifies $Heap;
  // user-defined postconditions
  free ensures M0.__default.build#canCall(prog#0, st#0)
     && (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.build(prog#0, st#0))): DatatypeType, 
        M0.Tuple.snd(M0.__default.build(prog#0, st#0)); 
      M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> 
          M0.Expression.exprError_q(expr'#0)
           ==> $IsA#M0.Reason(M0.Expression.r(expr'#0))));
  ensures {:id "id322"} (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.build(prog#0, st#0))): DatatypeType, 
      M0.Tuple.snd(M0.__default.build(prog#0, st#0)); 
    M0.__default.ValidState#canCall(st'#0)
       ==> M0.__default.ValidState(st'#0)
         || (forall p#3: Box :: 
          { M0.__default.WellFounded(p#3) } 
            { Set#IsMember(M0.__default.DomSt(st'#0), p#3) } 
          $IsBox(p#3, Tclass.M0.Path())
             ==> 
            Set#IsMember(M0.__default.DomSt(st'#0), p#3)
             ==> M0.__default.WellFounded(p#3)));
  ensures {:id "id323"} (var expr'#0, st'#0 := $Unbox(M0.Tuple.fst(M0.__default.build(prog#0, st#0))): DatatypeType, 
      M0.Tuple.snd(M0.__default.build(prog#0, st#0)); 
    M0.Expression.exprError_q(expr'#0)
       ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity()));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.ParallelBuildsTheorem (correctness)"} Impl$$M0.__default.ParallelBuildsTheorem(prog#0: DatatypeType, st#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _v0#0: DatatypeType
     where $Is(_v0#0, Tclass.M0.Expression())
       && $IsAlloc(_v0#0, Tclass.M0.Expression(), $Heap);
  var defass#_v1#0: bool;
  var _v1#0: Box
     where defass#_v1#0
       ==> $IsBox(_v1#0, Tclass.M0.State()) && $IsAllocBox(_v1#0, Tclass.M0.State(), $Heap);
  var $rhs##0: DatatypeType;
  var $rhs##1: Box;
  var prog##0: DatatypeType;
  var st##0: Box;

    // AddMethodImpl: ParallelBuildsTheorem, Impl$$M0.__default.ParallelBuildsTheorem
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(312,27)
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
    call {:id "id324"} $rhs##0, $rhs##1 := Call$$M0.__default.BuildLemma(prog##0, st##0);
    // TrCallStmt: After ProcessCallStmt
    _v0#0 := $rhs##0;
    _v1#0 := $rhs##1;
    defass#_v1#0 := true;
}



procedure {:verboseName "M0.BuildLemma (well-formedness)"} CheckWellFormed$$M0.__default.BuildLemma(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M0.Program())
         && $IsAlloc(prog#0, Tclass.M0.Program(), $Heap)
         && $IsA#M0.Program(prog#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.BuildLemma (well-formedness)"} CheckWellFormed$$M0.__default.BuildLemma(prog#0: DatatypeType, st#0: Box) returns (expr'#0: DatatypeType, st'#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##stmts#0: Seq;
  var ##st#0: Box;
  var ##prog#0: DatatypeType;
  var ##st#1: Box;
  var ##st#2: Box;
  var ##st#3: Box;
  var ##st'#0: Box;


    // AddMethodImpl: BuildLemma, CheckWellFormed$$M0.__default.BuildLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume M0.Program.Program_q(prog#0);
    ##stmts#0 := M0.Program.stmts(prog#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#0, TSeq(Tclass.M0.Statement()), $Heap);
    assume M0.__default.Legal#canCall(M0.Program.stmts(prog#0));
    assume {:id "id327"} M0.__default.Legal(M0.Program.stmts(prog#0));
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st#0);
    assume {:id "id328"} M0.__default.ValidState(st#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc expr'#0, st'#0;
    ##prog#0 := prog#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##prog#0, Tclass.M0.Program(), $Heap);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
    assert {:id "id329"} {:subsumption 0} M0.__default.Legal#canCall(M0.Program.stmts(##prog#0))
       ==> M0.__default.Legal(M0.Program.stmts(##prog#0))
         || Seq#Length(M0.Program.stmts(##prog#0)) != 0;
    assume M0.__default.Legal(M0.Program.stmts(##prog#0));
    assume M0.__default.build#canCall(prog#0, st#0);
    assume M0.Tuple.Pair_q(M0.__default.build(prog#0, st#0));
    assume {:id "id330"} M0.Tuple#Equal(M0.__default.build(prog#0, st#0), #M0.Tuple.Pair($Box(expr'#0), st'#0));
    ##st#2 := st'#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st'#0);
    assume {:id "id331"} M0.__default.ValidState(st'#0);
    ##st#3 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
    ##st'#0 := st'#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.M0.State(), $Heap);
    assume M0.__default.Extends#canCall(st#0, st'#0);
    assume {:id "id332"} M0.__default.Extends(st#0, st'#0);
    if (M0.Expression.exprError_q(expr'#0))
    {
        assert {:id "id333"} M0.Expression.exprError_q(expr'#0);
    }

    assume {:id "id334"} M0.Expression.exprError_q(expr'#0)
       ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
}



procedure {:verboseName "M0.BuildLemma (call)"} Call$$M0.__default.BuildLemma(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M0.Program())
         && $IsAlloc(prog#0, Tclass.M0.Program(), $Heap)
         && $IsA#M0.Program(prog#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id335"} M0.__default.Legal#canCall(M0.Program.stmts(prog#0))
     ==> M0.__default.Legal(M0.Program.stmts(prog#0))
       || Seq#Length(M0.Program.stmts(prog#0)) != 0;
  requires {:id "id336"} M0.__default.ValidState#canCall(st#0)
     ==> M0.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M0.__default.WellFounded(p#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#0)
           ==> M0.__default.WellFounded(p#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.build(prog#0, st#0))
     && M0.__default.build#canCall(prog#0, st#0)
     && (M0.Tuple#Equal(M0.__default.build(prog#0, st#0), #M0.Tuple.Pair($Box(expr'#0), st'#0))
       ==> M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> M0.__default.Extends#canCall(st#0, st'#0)
             && (M0.__default.Extends(st#0, st'#0)
               ==> 
              M0.Expression.exprError_q(expr'#0)
               ==> $IsA#M0.Reason(M0.Expression.r(expr'#0)))));
  ensures {:id "id337"} M0.Tuple#Equal(M0.__default.build(prog#0, st#0), #M0.Tuple.Pair($Box(expr'#0), st'#0));
  free ensures {:id "id338"} M0.__default.ValidState#canCall(st'#0)
     && 
    M0.__default.ValidState(st'#0)
     && (forall p#1: Box :: 
      { M0.__default.WellFounded(p#1) } 
        { Set#IsMember(M0.__default.DomSt(st'#0), p#1) } 
      $IsBox(p#1, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st'#0), p#1)
         ==> M0.__default.WellFounded(p#1));
  free ensures {:id "id339"} M0.__default.Extends#canCall(st#0, st'#0)
     && 
    M0.__default.Extends(st#0, st'#0)
     && 
    Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
     && (forall p#2: Box :: 
      { M0.__default.GetSt(p#2, st#0) } 
        { M0.__default.GetSt(p#2, st'#0) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st#0), p#2)
         ==> M0.__default.GetSt(p#2, st'#0) == M0.__default.GetSt(p#2, st#0))
     && (forall p#3: Box :: 
      { M0.__default.Oracle(p#3, st#0) } 
        { M0.__default.GetSt(p#3, st'#0) } 
        { Set#IsMember(M0.__default.DomSt(st'#0), p#3) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#3) } 
      $IsBox(p#3, Tclass.M0.Path())
         ==> 
        !Set#IsMember(M0.__default.DomSt(st#0), p#3)
           && Set#IsMember(M0.__default.DomSt(st'#0), p#3)
         ==> M0.__default.GetSt(p#3, st'#0) == M0.__default.Oracle(p#3, st#0));
  ensures {:id "id340"} M0.Expression.exprError_q(expr'#0)
     ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M0.BuildLemma (correctness)"} Impl$$M0.__default.BuildLemma(prog#0: DatatypeType
       where $Is(prog#0, Tclass.M0.Program())
         && $IsAlloc(prog#0, Tclass.M0.Program(), $Heap)
         && $IsA#M0.Program(prog#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    defass#st'#0: bool, 
    st'#0: Box
       where defass#st'#0
         ==> $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap), 
    $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id341"} M0.__default.Legal#canCall(M0.Program.stmts(prog#0))
     && 
    M0.__default.Legal(M0.Program.stmts(prog#0))
     && Seq#Length(M0.Program.stmts(prog#0)) != 0;
  free requires {:id "id342"} M0.__default.ValidState#canCall(st#0)
     && 
    M0.__default.ValidState(st#0)
     && (forall p#4: Box :: 
      { M0.__default.WellFounded(p#4) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#4) } 
      $IsBox(p#4, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st#0), p#4)
         ==> M0.__default.WellFounded(p#4));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.build(prog#0, st#0))
     && M0.__default.build#canCall(prog#0, st#0)
     && (M0.Tuple#Equal(M0.__default.build(prog#0, st#0), #M0.Tuple.Pair($Box(expr'#0), st'#0))
       ==> M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> M0.__default.Extends#canCall(st#0, st'#0)
             && (M0.__default.Extends(st#0, st'#0)
               ==> 
              M0.Expression.exprError_q(expr'#0)
               ==> $IsA#M0.Reason(M0.Expression.r(expr'#0)))));
  ensures {:id "id343"} M0.Tuple#Equal(M0.__default.build(prog#0, st#0), #M0.Tuple.Pair($Box(expr'#0), st'#0));
  ensures {:id "id344"} M0.__default.ValidState#canCall(st'#0)
     ==> M0.__default.ValidState(st'#0)
       || (forall p#5: Box :: 
        { M0.__default.WellFounded(p#5) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#5) } 
        $IsBox(p#5, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st'#0), p#5)
           ==> M0.__default.WellFounded(p#5));
  ensures {:id "id345"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0));
  ensures {:id "id346"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || (forall p#6: Box :: 
        { M0.__default.GetSt(p#6, st#0) } 
          { M0.__default.GetSt(p#6, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#6) } 
        $IsBox(p#6, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#6)
           ==> M0.__default.GetSt(p#6, st'#0) == M0.__default.GetSt(p#6, st#0));
  ensures {:id "id347"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || (forall p#7: Box :: 
        { M0.__default.Oracle(p#7, st#0) } 
          { M0.__default.GetSt(p#7, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#7) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#7) } 
        $IsBox(p#7, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st#0), p#7)
             && Set#IsMember(M0.__default.DomSt(st'#0), p#7)
           ==> M0.__default.GetSt(p#7, st'#0) == M0.__default.Oracle(p#7, st#0));
  ensures {:id "id348"} M0.Expression.exprError_q(expr'#0)
     ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.BuildLemma (correctness)"} Impl$$M0.__default.BuildLemma(prog#0: DatatypeType, st#0: Box)
   returns (expr'#0: DatatypeType, defass#st'#0: bool, st'#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#result#0: bool;
  var result#0: DatatypeType
     where defass#result#0
       ==> $Is(result#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()))
         && $IsAlloc(result#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), $Heap);
  var ##prog#1: DatatypeType;
  var ##st#4: Box;
  var $rhs#0: DatatypeType;
  var $rhs#1: Box;
  var _v2#0: DatatypeType
     where $Is(_v2#0, Tclass.M0.Expression())
       && $IsAlloc(_v2#0, Tclass.M0.Expression(), $Heap);
  var defass#_v3#0: bool;
  var _v3#0: Box
     where defass#_v3#0
       ==> $IsBox(_v3#0, Tclass.M0.State()) && $IsAllocBox(_v3#0, Tclass.M0.State(), $Heap);
  var $rhs##0: DatatypeType;
  var $rhs##1: Box;
  var stmts##0: Seq;
  var st##0: Box;
  var env##0: Box;

    // AddMethodImpl: BuildLemma, Impl$$M0.__default.BuildLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(323,16)
    assume true;
    ##prog#1 := prog#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##prog#1, Tclass.M0.Program(), $Heap);
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#4, Tclass.M0.State(), $Heap);
    assert {:id "id349"} {:subsumption 0} M0.__default.Legal#canCall(M0.Program.stmts(##prog#1))
       ==> M0.__default.Legal(M0.Program.stmts(##prog#1))
         || Seq#Length(M0.Program.stmts(##prog#1)) != 0;
    assume M0.__default.Legal(M0.Program.stmts(##prog#1));
    assume M0.__default.build#canCall(prog#0, st#0);
    assume M0.Tuple.Pair_q(M0.__default.build(prog#0, st#0));
    assume M0.__default.build#canCall(prog#0, st#0);
    result#0 := M0.__default.build(prog#0, st#0);
    defass#result#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(324,16)
    assume true;
    assume true;
    assert {:id "id351"} defass#result#0;
    assume M0.Tuple.Pair_q(result#0);
    assume M0.Tuple.Pair_q(result#0);
    $rhs#0 := $Unbox(M0.Tuple.fst(result#0)): DatatypeType;
    assert {:id "id353"} defass#result#0;
    assume M0.Tuple.Pair_q(result#0);
    assume M0.Tuple.Pair_q(result#0);
    $rhs#1 := M0.Tuple.snd(result#0);
    expr'#0 := $rhs#0;
    st'#0 := $rhs#1;
    defass#st'#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(325,24)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Expression
    // TrCallStmt: Adding lhs with type State
    // TrCallStmt: Before ProcessCallStmt
    assume M0.Program.Program_q(prog#0);
    assume M0.Program.Program_q(prog#0);
    // ProcessCallStmt: CheckSubrange
    stmts##0 := M0.Program.stmts(prog#0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    st##0 := st#0;
    assume M0.__default.EmptyEnv#canCall();
    assume M0.__default.EmptyEnv#canCall();
    // ProcessCallStmt: CheckSubrange
    env##0 := M0.__default.EmptyEnv();
    call {:id "id357"} $rhs##0, $rhs##1 := Call$$M0.__default.DoLemma(stmts##0, st##0, env##0);
    // TrCallStmt: After ProcessCallStmt
    _v2#0 := $rhs##0;
    _v3#0 := $rhs##1;
    defass#_v3#0 := true;
    assert {:id "id360"} defass#st'#0;
}



procedure {:verboseName "M0.DoLemma (well-formedness)"} CheckWellFormed$$M0.__default.DoLemma(stmts#0: Seq
       where $Is(stmts#0, TSeq(Tclass.M0.Statement()))
         && $IsAlloc(stmts#0, TSeq(Tclass.M0.Statement()), $Heap), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.DoLemma (well-formedness)"} CheckWellFormed$$M0.__default.DoLemma(stmts#0: Seq, st#0: Box, env#0: Box) returns (expr'#0: DatatypeType, st'#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##stmts#0: Seq;
  var ##st#0: Box;
  var ##env#0: Box;
  var ##stmts#1: Seq;
  var ##st#1: Box;
  var ##env#1: Box;
  var ##st#2: Box;
  var ##st#3: Box;
  var ##st'#0: Box;


    // AddMethodImpl: DoLemma, CheckWellFormed$$M0.__default.DoLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##stmts#0 := stmts#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#0, TSeq(Tclass.M0.Statement()), $Heap);
    assume M0.__default.Legal#canCall(stmts#0);
    assume {:id "id361"} M0.__default.Legal(stmts#0);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st#0);
    assume {:id "id362"} M0.__default.ValidState(st#0);
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id363"} M0.__default.ValidEnv(env#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc expr'#0, st'#0;
    ##stmts#1 := stmts#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#1, TSeq(Tclass.M0.Statement()), $Heap);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
    ##env#1 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
    assert {:id "id364"} {:subsumption 0} M0.__default.Legal#canCall(##stmts#1)
       ==> M0.__default.Legal(##stmts#1) || Seq#Length(##stmts#1) != 0;
    assert {:id "id365"} {:subsumption 0} M0.__default.ValidEnv(##env#1);
    assume M0.__default.Legal(##stmts#1) && M0.__default.ValidEnv(##env#1);
    assume M0.__default.do#canCall(stmts#0, st#0, env#0);
    assume M0.Tuple.Pair_q(M0.__default.do($LS($LZ), stmts#0, st#0, env#0));
    assume {:id "id366"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
      M0.__default.do($LS($LZ), stmts#0, st#0, env#0));
    ##st#2 := st'#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st'#0);
    assume {:id "id367"} M0.__default.ValidState(st'#0);
    ##st#3 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
    ##st'#0 := st'#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.M0.State(), $Heap);
    assume M0.__default.Extends#canCall(st#0, st'#0);
    assume {:id "id368"} M0.__default.Extends(st#0, st'#0);
    if (M0.Expression.exprError_q(expr'#0))
    {
        assert {:id "id369"} M0.Expression.exprError_q(expr'#0);
    }

    assume {:id "id370"} M0.Expression.exprError_q(expr'#0)
       ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
}



procedure {:verboseName "M0.DoLemma (call)"} Call$$M0.__default.DoLemma(stmts#0: Seq
       where $Is(stmts#0, TSeq(Tclass.M0.Statement()))
         && $IsAlloc(stmts#0, TSeq(Tclass.M0.Statement()), $Heap), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id371"} M0.__default.Legal#canCall(stmts#0)
     ==> M0.__default.Legal(stmts#0) || Seq#Length(stmts#0) != 0;
  requires {:id "id372"} M0.__default.ValidState#canCall(st#0)
     ==> M0.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M0.__default.WellFounded(p#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#0)
           ==> M0.__default.WellFounded(p#0));
  requires {:id "id373"} M0.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.do($LS($LZ), stmts#0, st#0, env#0))
     && M0.__default.do#canCall(stmts#0, st#0, env#0)
     && (M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
        M0.__default.do($LS($LZ), stmts#0, st#0, env#0))
       ==> M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> M0.__default.Extends#canCall(st#0, st'#0)
             && (M0.__default.Extends(st#0, st'#0)
               ==> 
              M0.Expression.exprError_q(expr'#0)
               ==> $IsA#M0.Reason(M0.Expression.r(expr'#0)))));
  ensures {:id "id374"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
    M0.__default.do($LS($LS($LZ)), stmts#0, st#0, env#0));
  free ensures {:id "id375"} M0.__default.ValidState#canCall(st'#0)
     && 
    M0.__default.ValidState(st'#0)
     && (forall p#1: Box :: 
      { M0.__default.WellFounded(p#1) } 
        { Set#IsMember(M0.__default.DomSt(st'#0), p#1) } 
      $IsBox(p#1, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st'#0), p#1)
         ==> M0.__default.WellFounded(p#1));
  free ensures {:id "id376"} M0.__default.Extends#canCall(st#0, st'#0)
     && 
    M0.__default.Extends(st#0, st'#0)
     && 
    Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
     && (forall p#2: Box :: 
      { M0.__default.GetSt(p#2, st#0) } 
        { M0.__default.GetSt(p#2, st'#0) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st#0), p#2)
         ==> M0.__default.GetSt(p#2, st'#0) == M0.__default.GetSt(p#2, st#0))
     && (forall p#3: Box :: 
      { M0.__default.Oracle(p#3, st#0) } 
        { M0.__default.GetSt(p#3, st'#0) } 
        { Set#IsMember(M0.__default.DomSt(st'#0), p#3) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#3) } 
      $IsBox(p#3, Tclass.M0.Path())
         ==> 
        !Set#IsMember(M0.__default.DomSt(st#0), p#3)
           && Set#IsMember(M0.__default.DomSt(st'#0), p#3)
         ==> M0.__default.GetSt(p#3, st'#0) == M0.__default.Oracle(p#3, st#0));
  ensures {:id "id377"} M0.Expression.exprError_q(expr'#0)
     ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M0.DoLemma (correctness)"} Impl$$M0.__default.DoLemma(stmts#0: Seq
       where $Is(stmts#0, TSeq(Tclass.M0.Statement()))
         && $IsAlloc(stmts#0, TSeq(Tclass.M0.Statement()), $Heap), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    defass#st'#0: bool, 
    st'#0: Box
       where defass#st'#0
         ==> $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap), 
    $_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id378"} M0.__default.Legal#canCall(stmts#0)
     && 
    M0.__default.Legal(stmts#0)
     && Seq#Length(stmts#0) != 0;
  free requires {:id "id379"} M0.__default.ValidState#canCall(st#0)
     && 
    M0.__default.ValidState(st#0)
     && (forall p#4: Box :: 
      { M0.__default.WellFounded(p#4) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#4) } 
      $IsBox(p#4, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st#0), p#4)
         ==> M0.__default.WellFounded(p#4));
  requires {:id "id380"} M0.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.do($LS($LZ), stmts#0, st#0, env#0))
     && M0.__default.do#canCall(stmts#0, st#0, env#0)
     && (M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
        M0.__default.do($LS($LZ), stmts#0, st#0, env#0))
       ==> M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> M0.__default.Extends#canCall(st#0, st'#0)
             && (M0.__default.Extends(st#0, st'#0)
               ==> 
              M0.Expression.exprError_q(expr'#0)
               ==> $IsA#M0.Reason(M0.Expression.r(expr'#0)))));
  ensures {:id "id381"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
    M0.__default.do($LS($LS($LZ)), stmts#0, st#0, env#0));
  ensures {:id "id382"} M0.__default.ValidState#canCall(st'#0)
     ==> M0.__default.ValidState(st'#0)
       || (forall p#5: Box :: 
        { M0.__default.WellFounded(p#5) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#5) } 
        $IsBox(p#5, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st'#0), p#5)
           ==> M0.__default.WellFounded(p#5));
  ensures {:id "id383"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0));
  ensures {:id "id384"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || (forall p#6: Box :: 
        { M0.__default.GetSt(p#6, st#0) } 
          { M0.__default.GetSt(p#6, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#6) } 
        $IsBox(p#6, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#6)
           ==> M0.__default.GetSt(p#6, st'#0) == M0.__default.GetSt(p#6, st#0));
  ensures {:id "id385"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || (forall p#7: Box :: 
        { M0.__default.Oracle(p#7, st#0) } 
          { M0.__default.GetSt(p#7, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#7) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#7) } 
        $IsBox(p#7, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st#0), p#7)
             && Set#IsMember(M0.__default.DomSt(st'#0), p#7)
           ==> M0.__default.GetSt(p#7, st'#0) == M0.__default.Oracle(p#7, st#0));
  ensures {:id "id386"} M0.Expression.exprError_q(expr'#0)
     ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.DoLemma (correctness)"} Impl$$M0.__default.DoLemma(stmts#0: Seq, st#0: Box, env#0: Box)
   returns (expr'#0: DatatypeType, defass#st'#0: bool, st'#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#result#0: bool;
  var result#0: DatatypeType
     where defass#result#0
       ==> $Is(result#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()))
         && $IsAlloc(result#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), $Heap);
  var ##stmts#2: Seq;
  var ##st#4: Box;
  var ##env#2: Box;
  var $rhs#0: DatatypeType;
  var $rhs#1: Box;
  var defass#stmt#0: bool;
  var stmt#0: DatatypeType
     where defass#stmt#0
       ==> $Is(stmt#0, Tclass.M0.Statement())
         && $IsAlloc(stmt#0, Tclass.M0.Statement(), $Heap);
  var expr'#0_0: DatatypeType
     where $Is(expr'#0_0, Tclass.M0.Expression())
       && $IsAlloc(expr'#0_0, Tclass.M0.Expression(), $Heap);
  var defass#st'#0_0: bool;
  var st'#0_0: Box
     where defass#st'#0_0
       ==> $IsBox(st'#0_0, Tclass.M0.State())
         && $IsAllocBox(st'#0_0, Tclass.M0.State(), $Heap);
  var $rhs##0_0: DatatypeType;
  var $rhs##0_1: Box;
  var expr##0_0: DatatypeType;
  var st##0_0: Box;
  var env##0_0: Box;
  var ##expr#0_0: DatatypeType;
  var defass#env'#0_0_0: bool;
  var env'#0_0_0: Box
     where defass#env'#0_0_0
       ==> $IsBox(env'#0_0_0, Tclass.M0.Env())
         && $IsAllocBox(env'#0_0_0, Tclass.M0.Env(), $Heap);
  var ##id#0_0_0: Box;
  var ##expr#0_0_0: DatatypeType;
  var ##env#0_0_0: Box;
  var ##stmts#0_0_0: Seq;
  var _v4#0_0_0_0: DatatypeType
     where $Is(_v4#0_0_0_0, Tclass.M0.Expression())
       && $IsAlloc(_v4#0_0_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st''#0_0_0_0: bool;
  var st''#0_0_0_0: Box
     where defass#st''#0_0_0_0
       ==> $IsBox(st''#0_0_0_0, Tclass.M0.State())
         && $IsAllocBox(st''#0_0_0_0, Tclass.M0.State(), $Heap);
  var $rhs##0_0_0_0: DatatypeType;
  var $rhs##0_0_0_1: Box;
  var stmts##0_0_0_0: Seq;
  var st##0_0_0_0: Box;
  var env##0_0_0_0: Box;
  var st0##0_0_0_0: Box;
  var st1##0_0_0_0: Box;
  var st2##0_0_0_0: Box;
  var _v5#1_0: DatatypeType
     where $Is(_v5#1_0, Tclass.M0.Expression())
       && $IsAlloc(_v5#1_0, Tclass.M0.Expression(), $Heap);
  var defass#_v6#1_0: bool;
  var _v6#1_0: Box
     where defass#_v6#1_0
       ==> $IsBox(_v6#1_0, Tclass.M0.State())
         && $IsAllocBox(_v6#1_0, Tclass.M0.State(), $Heap);
  var $rhs##1_0: DatatypeType;
  var $rhs##1_1: Box;
  var expr##1_0: DatatypeType;
  var st##1_0: Box;
  var env##1_0: Box;

    // AddMethodImpl: DoLemma, Impl$$M0.__default.DoLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(336,16)
    assume true;
    ##stmts#2 := stmts#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##stmts#2, TSeq(Tclass.M0.Statement()), $Heap);
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#4, Tclass.M0.State(), $Heap);
    ##env#2 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#2, Tclass.M0.Env(), $Heap);
    assert {:id "id387"} {:subsumption 0} M0.__default.Legal#canCall(##stmts#2)
       ==> M0.__default.Legal(##stmts#2) || Seq#Length(##stmts#2) != 0;
    assert {:id "id388"} {:subsumption 0} M0.__default.ValidEnv(##env#2);
    assume M0.__default.Legal(##stmts#2) && M0.__default.ValidEnv(##env#2);
    assume M0.__default.do#canCall(stmts#0, st#0, env#0);
    assume M0.Tuple.Pair_q(M0.__default.do($LS($LZ), stmts#0, st#0, env#0));
    assume M0.__default.do#canCall(stmts#0, st#0, env#0);
    result#0 := M0.__default.do($LS($LZ), stmts#0, st#0, env#0);
    defass#result#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(337,16)
    assume true;
    assume true;
    assert {:id "id390"} defass#result#0;
    assume M0.Tuple.Pair_q(result#0);
    assume M0.Tuple.Pair_q(result#0);
    $rhs#0 := $Unbox(M0.Tuple.fst(result#0)): DatatypeType;
    assert {:id "id392"} defass#result#0;
    assume M0.Tuple.Pair_q(result#0);
    assume M0.Tuple.Pair_q(result#0);
    $rhs#1 := M0.Tuple.snd(result#0);
    expr'#0 := $rhs#0;
    st'#0 := $rhs#1;
    defass#st'#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(338,14)
    assume true;
    assert {:id "id396"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(stmts#0);
    assume true;
    stmt#0 := $Unbox(Seq#Index(stmts#0, LitInt(0))): DatatypeType;
    defass#stmt#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(339,5)
    assert {:id "id398"} defass#stmt#0;
    assume true;
    if (M0.Statement.stmtVariable_q(stmt#0))
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(340,34)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Expression
        // TrCallStmt: Adding lhs with type State
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id399"} defass#stmt#0;
        assert {:id "id400"} M0.Statement.stmtVariable_q(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        expr##0_0 := M0.Statement.expr(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##0_0 := env#0;
        call {:id "id401"} $rhs##0_0, $rhs##0_1 := Call$$M0.__default.EvalLemma(expr##0_0, st##0_0, env##0_0);
        // TrCallStmt: After ProcessCallStmt
        expr'#0_0 := $rhs##0_0;
        st'#0_0 := $rhs##0_1;
        defass#st'#0_0 := true;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(341,7)
        ##expr#0_0 := expr'#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##expr#0_0, Tclass.M0.Expression(), $Heap);
        assume M0.__default.Value#canCall(expr'#0_0);
        assume M0.__default.Value#canCall(expr'#0_0);
        if (M0.__default.Value(expr'#0_0))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(342,18)
            assume true;
            assert {:id "id404"} defass#stmt#0;
            assert {:id "id405"} M0.Statement.stmtVariable_q(stmt#0);
            ##id#0_0_0 := M0.Statement.id(stmt#0);
            // assume allocatedness for argument to function
            assume $IsAllocBox(##id#0_0_0, Tclass.M0.Identifier(), $Heap);
            ##expr#0_0_0 := expr'#0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##expr#0_0_0, Tclass.M0.Expression(), $Heap);
            ##env#0_0_0 := env#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##env#0_0_0, Tclass.M0.Env(), $Heap);
            assert {:id "id406"} {:subsumption 0} M0.__default.ValidEnv(##env#0_0_0);
            assert {:id "id407"} {:subsumption 0} M0.__default.Value#canCall(##expr#0_0_0)
               ==> M0.__default.Value(##expr#0_0_0) || M0.Expression.exprLiteral_q(##expr#0_0_0);
            assume M0.__default.ValidEnv(##env#0_0_0) && M0.__default.Value(##expr#0_0_0);
            assume M0.__default.SetEnv#canCall(M0.Statement.id(stmt#0), expr'#0_0, env#0);
            assume M0.__default.SetEnv#canCall(M0.Statement.id(stmt#0), expr'#0_0, env#0);
            env'#0_0_0 := M0.__default.SetEnv(M0.Statement.id(stmt#0), expr'#0_0, env#0);
            defass#env'#0_0_0 := true;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(343,9)
            assert {:id "id409"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(stmts#0);
            ##stmts#0_0_0 := Seq#Drop(stmts#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##stmts#0_0_0, TSeq(Tclass.M0.Statement()), $Heap);
            assume M0.__default.Legal#canCall(Seq#Drop(stmts#0, LitInt(1)));
            assume M0.__default.Legal#canCall(Seq#Drop(stmts#0, LitInt(1)));
            if (M0.__default.Legal(Seq#Drop(stmts#0, LitInt(1))))
            {
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(344,33)
                assume true;
                assume true;
                // TrCallStmt: Adding lhs with type Expression
                // TrCallStmt: Adding lhs with type State
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id410"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(stmts#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                stmts##0_0_0_0 := Seq#Drop(stmts#0, LitInt(1));
                assert {:id "id411"} defass#st'#0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##0_0_0_0 := st'#0_0;
                assert {:id "id412"} defass#env'#0_0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                env##0_0_0_0 := env'#0_0_0;
                assert {:id "id413"} Seq#Rank(stmts##0_0_0_0) < Seq#Rank(stmts#0);
                call {:id "id414"} $rhs##0_0_0_0, $rhs##0_0_0_1 := Call$$M0.__default.DoLemma(stmts##0_0_0_0, st##0_0_0_0, env##0_0_0_0);
                // TrCallStmt: After ProcessCallStmt
                _v4#0_0_0_0 := $rhs##0_0_0_0;
                st''#0_0_0_0 := $rhs##0_0_0_1;
                defass#st''#0_0_0_0 := true;
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(345,34)
                // TrCallStmt: Before ProcessCallStmt
                assume true;
                // ProcessCallStmt: CheckSubrange
                st0##0_0_0_0 := st#0;
                assert {:id "id417"} defass#st'#0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                st1##0_0_0_0 := st'#0_0;
                assert {:id "id418"} defass#st''#0_0_0_0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                st2##0_0_0_0 := st''#0_0_0_0;
                call {:id "id419"} Call$$M0.__default.Lemma__ExtendsTransitive(st0##0_0_0_0, st1##0_0_0_0, st2##0_0_0_0);
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
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(350,7)
        assert {:id "id420"} defass#stmt#0;
        if (!M0.Statement.stmtVariable_q(stmt#0))
        {
            assert {:id "id421"} defass#stmt#0;
        }

        assume true;
        assert {:id "id422"} M0.Statement.stmtVariable_q(stmt#0) || M0.Statement.stmtReturn_q(stmt#0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(351,28)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Expression
        // TrCallStmt: Adding lhs with type State
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id423"} defass#stmt#0;
        assert {:id "id424"} M0.Statement.stmtReturn_q(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        expr##1_0 := M0.Statement.ret(stmt#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##1_0 := env#0;
        call {:id "id425"} $rhs##1_0, $rhs##1_1 := Call$$M0.__default.EvalLemma(expr##1_0, st##1_0, env##1_0);
        // TrCallStmt: After ProcessCallStmt
        _v5#1_0 := $rhs##1_0;
        _v6#1_0 := $rhs##1_1;
        defass#_v6#1_0 := true;
    }

    assert {:id "id428"} defass#st'#0;
}



procedure {:verboseName "M0.EvalLemma (well-formedness)"} CheckWellFormed$$M0.__default.EvalLemma(expr#0: DatatypeType
       where $Is(expr#0, Tclass.M0.Expression())
         && $IsAlloc(expr#0, Tclass.M0.Expression(), $Heap)
         && $IsA#M0.Expression(expr#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.EvalLemma (well-formedness)"} CheckWellFormed$$M0.__default.EvalLemma(expr#0: DatatypeType, st#0: Box, env#0: Box)
   returns (expr'#0: DatatypeType, st'#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##env#0: Box;
  var ##expr#0: DatatypeType;
  var ##st#1: Box;
  var ##env#1: Box;
  var ##st#2: Box;
  var ##st#3: Box;
  var ##st'#0: Box;


    // AddMethodImpl: EvalLemma, CheckWellFormed$$M0.__default.EvalLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##st#0 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st#0);
    assume {:id "id429"} M0.__default.ValidState(st#0);
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id430"} M0.__default.ValidEnv(env#0);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc expr'#0, st'#0;
    ##expr#0 := expr#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##expr#0, Tclass.M0.Expression(), $Heap);
    ##st#1 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
    ##env#1 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
    assert {:id "id431"} {:subsumption 0} M0.__default.ValidEnv(##env#1);
    assume M0.__default.ValidEnv(##env#1);
    assume M0.__default.eval#canCall(expr#0, st#0, env#0);
    assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), expr#0, st#0, env#0));
    assume {:id "id432"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
      M0.__default.eval($LS($LZ), expr#0, st#0, env#0));
    ##st#2 := st'#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(st'#0);
    assume {:id "id433"} M0.__default.ValidState(st'#0);
    ##st#3 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#3, Tclass.M0.State(), $Heap);
    ##st'#0 := st'#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st'#0, Tclass.M0.State(), $Heap);
    assume M0.__default.Extends#canCall(st#0, st'#0);
    assume {:id "id434"} M0.__default.Extends(st#0, st'#0);
    if (M0.Expression.exprError_q(expr'#0))
    {
        assert {:id "id435"} M0.Expression.exprError_q(expr'#0);
    }

    assume {:id "id436"} M0.Expression.exprError_q(expr'#0)
       ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
}



procedure {:verboseName "M0.EvalLemma (call)"} Call$$M0.__default.EvalLemma(expr#0: DatatypeType
       where $Is(expr#0, Tclass.M0.Expression())
         && $IsAlloc(expr#0, Tclass.M0.Expression(), $Heap)
         && $IsA#M0.Expression(expr#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    st'#0: Box
       where $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap));
  // user-defined preconditions
  requires {:id "id437"} M0.__default.ValidState#canCall(st#0)
     ==> M0.__default.ValidState(st#0)
       || (forall p#0: Box :: 
        { M0.__default.WellFounded(p#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#0) } 
        $IsBox(p#0, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#0)
           ==> M0.__default.WellFounded(p#0));
  requires {:id "id438"} M0.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.eval($LS($LZ), expr#0, st#0, env#0))
     && M0.__default.eval#canCall(expr#0, st#0, env#0)
     && (M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
        M0.__default.eval($LS($LZ), expr#0, st#0, env#0))
       ==> M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> M0.__default.Extends#canCall(st#0, st'#0)
             && (M0.__default.Extends(st#0, st'#0)
               ==> 
              M0.Expression.exprError_q(expr'#0)
               ==> $IsA#M0.Reason(M0.Expression.r(expr'#0)))));
  ensures {:id "id439"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
    M0.__default.eval($LS($LS($LZ)), expr#0, st#0, env#0));
  free ensures {:id "id440"} M0.__default.ValidState#canCall(st'#0)
     && 
    M0.__default.ValidState(st'#0)
     && (forall p#1: Box :: 
      { M0.__default.WellFounded(p#1) } 
        { Set#IsMember(M0.__default.DomSt(st'#0), p#1) } 
      $IsBox(p#1, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st'#0), p#1)
         ==> M0.__default.WellFounded(p#1));
  free ensures {:id "id441"} M0.__default.Extends#canCall(st#0, st'#0)
     && 
    M0.__default.Extends(st#0, st'#0)
     && 
    Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0))
     && (forall p#2: Box :: 
      { M0.__default.GetSt(p#2, st#0) } 
        { M0.__default.GetSt(p#2, st'#0) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#2) } 
      $IsBox(p#2, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st#0), p#2)
         ==> M0.__default.GetSt(p#2, st'#0) == M0.__default.GetSt(p#2, st#0))
     && (forall p#3: Box :: 
      { M0.__default.Oracle(p#3, st#0) } 
        { M0.__default.GetSt(p#3, st'#0) } 
        { Set#IsMember(M0.__default.DomSt(st'#0), p#3) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#3) } 
      $IsBox(p#3, Tclass.M0.Path())
         ==> 
        !Set#IsMember(M0.__default.DomSt(st#0), p#3)
           && Set#IsMember(M0.__default.DomSt(st'#0), p#3)
         ==> M0.__default.GetSt(p#3, st'#0) == M0.__default.Oracle(p#3, st#0));
  ensures {:id "id442"} M0.Expression.exprError_q(expr'#0)
     ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M0.EvalLemma (correctness)"} Impl$$M0.__default.EvalLemma(expr#0: DatatypeType
       where $Is(expr#0, Tclass.M0.Expression())
         && $IsAlloc(expr#0, Tclass.M0.Expression(), $Heap)
         && $IsA#M0.Expression(expr#0), 
    st#0: Box
       where $IsBox(st#0, Tclass.M0.State()) && $IsAllocBox(st#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (expr'#0: DatatypeType
       where $Is(expr'#0, Tclass.M0.Expression())
         && $IsAlloc(expr'#0, Tclass.M0.Expression(), $Heap), 
    defass#st'#0: bool, 
    st'#0: Box
       where defass#st'#0
         ==> $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id443"} M0.__default.ValidState#canCall(st#0)
     && 
    M0.__default.ValidState(st#0)
     && (forall p#4: Box :: 
      { M0.__default.WellFounded(p#4) } 
        { Set#IsMember(M0.__default.DomSt(st#0), p#4) } 
      $IsBox(p#4, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(st#0), p#4)
         ==> M0.__default.WellFounded(p#4));
  requires {:id "id444"} M0.__default.ValidEnv(env#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.eval($LS($LZ), expr#0, st#0, env#0))
     && M0.__default.eval#canCall(expr#0, st#0, env#0)
     && (M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
        M0.__default.eval($LS($LZ), expr#0, st#0, env#0))
       ==> M0.__default.ValidState#canCall(st'#0)
         && (M0.__default.ValidState(st'#0)
           ==> M0.__default.Extends#canCall(st#0, st'#0)
             && (M0.__default.Extends(st#0, st'#0)
               ==> 
              M0.Expression.exprError_q(expr'#0)
               ==> $IsA#M0.Reason(M0.Expression.r(expr'#0)))));
  ensures {:id "id445"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(expr'#0), st'#0), 
    M0.__default.eval($LS($LS($LZ)), expr#0, st#0, env#0));
  ensures {:id "id446"} M0.__default.ValidState#canCall(st'#0)
     ==> M0.__default.ValidState(st'#0)
       || (forall p#5: Box :: 
        { M0.__default.WellFounded(p#5) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#5) } 
        $IsBox(p#5, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st'#0), p#5)
           ==> M0.__default.WellFounded(p#5));
  ensures {:id "id447"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || Set#Subset(M0.__default.DomSt(st#0), M0.__default.DomSt(st'#0));
  ensures {:id "id448"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || (forall p#6: Box :: 
        { M0.__default.GetSt(p#6, st#0) } 
          { M0.__default.GetSt(p#6, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#6) } 
        $IsBox(p#6, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(st#0), p#6)
           ==> M0.__default.GetSt(p#6, st'#0) == M0.__default.GetSt(p#6, st#0));
  ensures {:id "id449"} M0.__default.Extends#canCall(st#0, st'#0)
     ==> M0.__default.Extends(st#0, st'#0)
       || (forall p#7: Box :: 
        { M0.__default.Oracle(p#7, st#0) } 
          { M0.__default.GetSt(p#7, st'#0) } 
          { Set#IsMember(M0.__default.DomSt(st'#0), p#7) } 
          { Set#IsMember(M0.__default.DomSt(st#0), p#7) } 
        $IsBox(p#7, Tclass.M0.Path())
           ==> 
          !Set#IsMember(M0.__default.DomSt(st#0), p#7)
             && Set#IsMember(M0.__default.DomSt(st'#0), p#7)
           ==> M0.__default.GetSt(p#7, st'#0) == M0.__default.Oracle(p#7, st#0));
  ensures {:id "id450"} M0.Expression.exprError_q(expr'#0)
     ==> M0.Reason#Equal(M0.Expression.r(expr'#0), #M0.Reason.rValidity());
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.EvalLemma (correctness)"} Impl$$M0.__default.EvalLemma(expr#0: DatatypeType, st#0: Box, env#0: Box)
   returns (expr'#0: DatatypeType, defass#st'#0: bool, st'#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#result#0: bool;
  var result#0: DatatypeType
     where defass#result#0
       ==> $Is(result#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()))
         && $IsAlloc(result#0, Tclass.M0.Tuple(Tclass.M0.Expression(), Tclass.M0.State()), $Heap);
  var ##expr#1: DatatypeType;
  var ##st#4: Box;
  var ##env#2: Box;
  var $rhs#0: DatatypeType;
  var $rhs#1: Box;
  var ##expr#2: DatatypeType;
  var cond'#1_1_0_0: DatatypeType
     where $Is(cond'#1_1_0_0, Tclass.M0.Expression())
       && $IsAlloc(cond'#1_1_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st'#1_1_0_0: bool;
  var st'#1_1_0_0: Box
     where defass#st'#1_1_0_0
       ==> $IsBox(st'#1_1_0_0, Tclass.M0.State())
         && $IsAllocBox(st'#1_1_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_0_0: DatatypeType;
  var $rhs##1_1_0_1: Box;
  var expr##1_1_0_0: DatatypeType;
  var st##1_1_0_0: Box;
  var env##1_1_0_0: Box;
  var _v7#1_1_0_0_0: DatatypeType
     where $Is(_v7#1_1_0_0_0, Tclass.M0.Expression())
       && $IsAlloc(_v7#1_1_0_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st''#1_1_0_0_0: bool;
  var st''#1_1_0_0_0: Box
     where defass#st''#1_1_0_0_0
       ==> $IsBox(st''#1_1_0_0_0, Tclass.M0.State())
         && $IsAllocBox(st''#1_1_0_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_0_0_0: DatatypeType;
  var $rhs##1_1_0_0_1: Box;
  var expr##1_1_0_0_0: DatatypeType;
  var st##1_1_0_0_0: Box;
  var env##1_1_0_0_0: Box;
  var st0##1_1_0_0_0: Box;
  var st1##1_1_0_0_0: Box;
  var st2##1_1_0_0_0: Box;
  var _v8#1_1_0_1_0_0: DatatypeType
     where $Is(_v8#1_1_0_1_0_0, Tclass.M0.Expression())
       && $IsAlloc(_v8#1_1_0_1_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st''#1_1_0_1_0_0: bool;
  var st''#1_1_0_1_0_0: Box
     where defass#st''#1_1_0_1_0_0
       ==> $IsBox(st''#1_1_0_1_0_0, Tclass.M0.State())
         && $IsAllocBox(st''#1_1_0_1_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_0_1_0_0: DatatypeType;
  var $rhs##1_1_0_1_0_1: Box;
  var expr##1_1_0_1_0_0: DatatypeType;
  var st##1_1_0_1_0_0: Box;
  var env##1_1_0_1_0_0: Box;
  var st0##1_1_0_1_0_0: Box;
  var st1##1_1_0_1_0_0: Box;
  var st2##1_1_0_1_0_0: Box;
  var conj0'#1_1_1_0_0: DatatypeType
     where $Is(conj0'#1_1_1_0_0, Tclass.M0.Expression())
       && $IsAlloc(conj0'#1_1_1_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st'#1_1_1_0_0: bool;
  var st'#1_1_1_0_0: Box
     where defass#st'#1_1_1_0_0
       ==> $IsBox(st'#1_1_1_0_0, Tclass.M0.State())
         && $IsAllocBox(st'#1_1_1_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_1_0_0: DatatypeType;
  var $rhs##1_1_1_0_1: Box;
  var expr##1_1_1_0_0: DatatypeType;
  var st##1_1_1_0_0: Box;
  var env##1_1_1_0_0: Box;
  var _v9#1_1_1_0_0_0: DatatypeType
     where $Is(_v9#1_1_1_0_0_0, Tclass.M0.Expression())
       && $IsAlloc(_v9#1_1_1_0_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st''#1_1_1_0_0_0: bool;
  var st''#1_1_1_0_0_0: Box
     where defass#st''#1_1_1_0_0_0
       ==> $IsBox(st''#1_1_1_0_0_0, Tclass.M0.State())
         && $IsAllocBox(st''#1_1_1_0_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_1_0_0_0: DatatypeType;
  var $rhs##1_1_1_0_0_1: Box;
  var expr##1_1_1_0_0_0: DatatypeType;
  var st##1_1_1_0_0_0: Box;
  var env##1_1_1_0_0_0: Box;
  var st0##1_1_1_0_0_0: Box;
  var st1##1_1_1_0_0_0: Box;
  var st2##1_1_1_0_0_0: Box;
  var disj0'#1_1_1_1_0_0: DatatypeType
     where $Is(disj0'#1_1_1_1_0_0, Tclass.M0.Expression())
       && $IsAlloc(disj0'#1_1_1_1_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st'#1_1_1_1_0_0: bool;
  var st'#1_1_1_1_0_0: Box
     where defass#st'#1_1_1_1_0_0
       ==> $IsBox(st'#1_1_1_1_0_0, Tclass.M0.State())
         && $IsAllocBox(st'#1_1_1_1_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_1_1_0_0: DatatypeType;
  var $rhs##1_1_1_1_0_1: Box;
  var expr##1_1_1_1_0_0: DatatypeType;
  var st##1_1_1_1_0_0: Box;
  var env##1_1_1_1_0_0: Box;
  var _v10#1_1_1_1_0_1_0_0: DatatypeType
     where $Is(_v10#1_1_1_1_0_1_0_0, Tclass.M0.Expression())
       && $IsAlloc(_v10#1_1_1_1_0_1_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st''#1_1_1_1_0_1_0_0: bool;
  var st''#1_1_1_1_0_1_0_0: Box
     where defass#st''#1_1_1_1_0_1_0_0
       ==> $IsBox(st''#1_1_1_1_0_1_0_0, Tclass.M0.State())
         && $IsAllocBox(st''#1_1_1_1_0_1_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_1_1_0_1_0_0: DatatypeType;
  var $rhs##1_1_1_1_0_1_0_1: Box;
  var expr##1_1_1_1_0_1_0_0: DatatypeType;
  var st##1_1_1_1_0_1_0_0: Box;
  var env##1_1_1_1_0_1_0_0: Box;
  var st0##1_1_1_1_0_1_0_0: Box;
  var st1##1_1_1_1_0_1_0_0: Box;
  var st2##1_1_1_1_0_1_0_0: Box;
  var fun'#1_1_1_1_1_0_0: DatatypeType
     where $Is(fun'#1_1_1_1_1_0_0, Tclass.M0.Expression())
       && $IsAlloc(fun'#1_1_1_1_1_0_0, Tclass.M0.Expression(), $Heap);
  var defass#st'#1_1_1_1_1_0_0: bool;
  var st'#1_1_1_1_1_0_0: Box
     where defass#st'#1_1_1_1_1_0_0
       ==> $IsBox(st'#1_1_1_1_1_0_0, Tclass.M0.State())
         && $IsAllocBox(st'#1_1_1_1_1_0_0, Tclass.M0.State(), $Heap);
  var $rhs##1_1_1_1_1_0_0: DatatypeType;
  var $rhs##1_1_1_1_1_0_1: Box;
  var expr##1_1_1_1_1_0_0: DatatypeType;
  var st##1_1_1_1_1_0_0: Box;
  var env##1_1_1_1_1_0_0: Box;
  var args'#1_1_1_1_1_0_0: Seq
     where $Is(args'#1_1_1_1_1_0_0, TSeq(Tclass.M0.Expression()))
       && $IsAlloc(args'#1_1_1_1_1_0_0, TSeq(Tclass.M0.Expression()), $Heap);
  var sts'#1_1_1_1_1_0_0: Set
     where $Is(sts'#1_1_1_1_1_0_0, TSet(Tclass.M0.State()))
       && $IsAlloc(sts'#1_1_1_1_1_0_0, TSet(Tclass.M0.State()), $Heap);
  var $rhs##1_1_1_1_1_0_2: Seq;
  var $rhs##1_1_1_1_1_0_3: Set;
  var context##1_1_1_1_1_0_0: DatatypeType;
  var args##1_1_1_1_1_0_0: Seq;
  var stOrig##1_1_1_1_1_0_0: Box;
  var env##1_1_1_1_1_0_1: Box;
  var sts''#1_1_1_1_1_0_0: Set
     where $Is(sts''#1_1_1_1_1_0_0, TSet(Tclass.M0.State()))
       && $IsAlloc(sts''#1_1_1_1_1_0_0, TSet(Tclass.M0.State()), $Heap);
  var ##sts#1_1_1_1_1_0_0: Set;
  var defass#stCombined#1_1_1_1_1_0_0_0: bool;
  var stCombined#1_1_1_1_1_0_0_0: Box
     where defass#stCombined#1_1_1_1_1_0_0_0
       ==> $IsBox(stCombined#1_1_1_1_1_0_0_0, Tclass.M0.State())
         && $IsAllocBox(stCombined#1_1_1_1_1_0_0_0, Tclass.M0.State(), $Heap);
  var ##sts#1_1_1_1_1_0_0_0: Set;
  var sts##1_1_1_1_1_0_0_0: Set;
  var parent##1_1_1_1_1_0_0_0: Box;
  var ##prim#1_1_1_1_1_0_0_0_0_0: DatatypeType;
  var ##prim#1_1_1_1_1_0_0_0_0_1: DatatypeType;
  var ##args#1_1_1_1_1_0_0_0_0_0: Seq;
  var ##st#1_1_1_1_1_0_0_0_0_0: Box;
  var cmd#1_1_1_1_1_0_0_0_0_0_0: Seq
     where $Is(cmd#1_1_1_1_1_0_0_0_0_0_0, TSeq(TChar))
       && $IsAlloc(cmd#1_1_1_1_1_0_0_0_0_0_0, TSeq(TChar), $Heap);
  var deps#1_1_1_1_1_0_0_0_0_0_0: Set
     where $Is(deps#1_1_1_1_1_0_0_0_0_0_0, TSet(Tclass.M0.Path()))
       && $IsAlloc(deps#1_1_1_1_1_0_0_0_0_0_0, TSet(Tclass.M0.Path()), $Heap);
  var exp#1_1_1_1_1_0_0_0_0_0_0: Set
     where $Is(exp#1_1_1_1_1_0_0_0_0_0_0, TSet(TSeq(TChar)))
       && $IsAlloc(exp#1_1_1_1_1_0_0_0_0_0_0, TSet(TSeq(TChar)), $Heap);
  var $rhs#1_1_1_1_1_0_0_0_0_0_0: Seq;
  var $rhs#1_1_1_1_1_0_0_0_0_0_1: Set;
  var $rhs#1_1_1_1_1_0_0_0_0_0_2: Set;
  var cmd##1_1_1_1_1_0_0_0_0_0_0: Seq;
  var deps##1_1_1_1_1_0_0_0_0_0_0: Set;
  var exps##1_1_1_1_1_0_0_0_0_0_0: Set;
  var st##1_1_1_1_1_0_0_0_0_0_0: Box;
  var defass#resultExec#1_1_1_1_1_0_0_0_0_0_0: bool;
  var resultExec#1_1_1_1_1_0_0_0_0_0_0: DatatypeType
     where defass#resultExec#1_1_1_1_1_0_0_0_0_0_0
       ==> $Is(resultExec#1_1_1_1_1_0_0_0_0_0_0, 
          Tclass.M0.Tuple(TSet(Tclass.M0.Path()), Tclass.M0.State()))
         && $IsAlloc(resultExec#1_1_1_1_1_0_0_0_0_0_0, 
          Tclass.M0.Tuple(TSet(Tclass.M0.Path()), Tclass.M0.State()), 
          $Heap);
  var ##cmd#1_1_1_1_1_0_0_0_0_0_0: Seq;
  var ##deps#1_1_1_1_1_0_0_0_0_0_0: Set;
  var ##exps#1_1_1_1_1_0_0_0_0_0_0: Set;
  var ##st#1_1_1_1_1_0_0_0_0_0_0: Box;
  var defass#stExec#1_1_1_1_1_0_0_0_0_0_0: bool;
  var stExec#1_1_1_1_1_0_0_0_0_0_0: Box
     where defass#stExec#1_1_1_1_1_0_0_0_0_0_0
       ==> $IsBox(stExec#1_1_1_1_1_0_0_0_0_0_0, Tclass.M0.State())
         && $IsAllocBox(stExec#1_1_1_1_1_0_0_0_0_0_0, Tclass.M0.State(), $Heap);
  var st0##1_1_1_1_1_0_0_0_0_0_0: Box;
  var st1##1_1_1_1_1_0_0_0_0_0_0: Box;
  var st2##1_1_1_1_1_0_0_0_0_0_0: Box;

    // AddMethodImpl: EvalLemma, Impl$$M0.__default.EvalLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(364,16)
    assume true;
    ##expr#1 := expr#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##expr#1, Tclass.M0.Expression(), $Heap);
    ##st#4 := st#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#4, Tclass.M0.State(), $Heap);
    ##env#2 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#2, Tclass.M0.Env(), $Heap);
    assert {:id "id451"} {:subsumption 0} M0.__default.ValidEnv(##env#2);
    assume M0.__default.ValidEnv(##env#2);
    assume M0.__default.eval#canCall(expr#0, st#0, env#0);
    assume M0.Tuple.Pair_q(M0.__default.eval($LS($LZ), expr#0, st#0, env#0));
    assume M0.__default.eval#canCall(expr#0, st#0, env#0);
    result#0 := M0.__default.eval($LS($LZ), expr#0, st#0, env#0);
    defass#result#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(365,16)
    assume true;
    assume true;
    assert {:id "id453"} defass#result#0;
    assume M0.Tuple.Pair_q(result#0);
    assume M0.Tuple.Pair_q(result#0);
    $rhs#0 := $Unbox(M0.Tuple.fst(result#0)): DatatypeType;
    assert {:id "id455"} defass#result#0;
    assume M0.Tuple.Pair_q(result#0);
    assume M0.Tuple.Pair_q(result#0);
    $rhs#1 := M0.Tuple.snd(result#0);
    expr'#0 := $rhs#0;
    st'#0 := $rhs#1;
    defass#st'#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(366,5)
    ##expr#2 := expr#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##expr#2, Tclass.M0.Expression(), $Heap);
    assume M0.__default.Value#canCall(expr#0);
    assume M0.__default.Value#canCall(expr#0);
    if (M0.__default.Value(expr#0))
    {
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(367,12)
        assume true;
        if (M0.Expression.exprIdentifier_q(expr#0))
        {
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(368,12)
            assume true;
            if (M0.Expression.exprIf_q(expr#0))
            {
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(369,34)
                assume true;
                assume true;
                // TrCallStmt: Adding lhs with type Expression
                // TrCallStmt: Adding lhs with type State
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id459"} M0.Expression.exprIf_q(expr#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                expr##1_1_0_0 := M0.Expression.cond(expr#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                st##1_1_0_0 := st#0;
                assume true;
                // ProcessCallStmt: CheckSubrange
                env##1_1_0_0 := env#0;
                assert {:id "id460"} DtRank(expr##1_1_0_0) < DtRank(expr#0);
                call {:id "id461"} $rhs##1_1_0_0, $rhs##1_1_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_0_0, st##1_1_0_0, env##1_1_0_0);
                // TrCallStmt: After ProcessCallStmt
                cond'#1_1_0_0 := $rhs##1_1_0_0;
                st'#1_1_0_0 := $rhs##1_1_0_1;
                defass#st'#1_1_0_0 := true;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(370,7)
                if (M0.Expression.exprLiteral_q(cond'#1_1_0_0))
                {
                    assert {:id "id464"} M0.Expression.exprLiteral_q(cond'#1_1_0_0);
                }

                assume M0.Expression.exprLiteral_q(cond'#1_1_0_0)
                   ==> $IsA#M0.Literal(M0.Expression.lit(cond'#1_1_0_0));
                if (M0.Expression.exprLiteral_q(cond'#1_1_0_0)
                   && M0.Literal#Equal(M0.Expression.lit(cond'#1_1_0_0), #M0.Literal.litTrue()))
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(371,33)
                    assume true;
                    assume true;
                    // TrCallStmt: Adding lhs with type Expression
                    // TrCallStmt: Adding lhs with type State
                    // TrCallStmt: Before ProcessCallStmt
                    assert {:id "id465"} M0.Expression.exprIf_q(expr#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    expr##1_1_0_0_0 := M0.Expression.ifTrue(expr#0);
                    assert {:id "id466"} defass#st'#1_1_0_0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st##1_1_0_0_0 := st'#1_1_0_0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    env##1_1_0_0_0 := env#0;
                    assert {:id "id467"} DtRank(expr##1_1_0_0_0) < DtRank(expr#0);
                    call {:id "id468"} $rhs##1_1_0_0_0, $rhs##1_1_0_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_0_0_0, st##1_1_0_0_0, env##1_1_0_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    _v7#1_1_0_0_0 := $rhs##1_1_0_0_0;
                    st''#1_1_0_0_0 := $rhs##1_1_0_0_1;
                    defass#st''#1_1_0_0_0 := true;
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(372,32)
                    // TrCallStmt: Before ProcessCallStmt
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st0##1_1_0_0_0 := st#0;
                    assert {:id "id471"} defass#st'#1_1_0_0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st1##1_1_0_0_0 := st'#1_1_0_0;
                    assert {:id "id472"} defass#st''#1_1_0_0_0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st2##1_1_0_0_0 := st''#1_1_0_0_0;
                    call {:id "id473"} Call$$M0.__default.Lemma__ExtendsTransitive(st0##1_1_0_0_0, st1##1_1_0_0_0, st2##1_1_0_0_0);
                    // TrCallStmt: After ProcessCallStmt
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(373,14)
                    if (M0.Expression.exprLiteral_q(cond'#1_1_0_0))
                    {
                        assert {:id "id474"} M0.Expression.exprLiteral_q(cond'#1_1_0_0);
                    }

                    assume M0.Expression.exprLiteral_q(cond'#1_1_0_0)
                       ==> $IsA#M0.Literal(M0.Expression.lit(cond'#1_1_0_0));
                    if (M0.Expression.exprLiteral_q(cond'#1_1_0_0)
                       && M0.Literal#Equal(M0.Expression.lit(cond'#1_1_0_0), #M0.Literal.litFalse()))
                    {
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(374,33)
                        assume true;
                        assume true;
                        // TrCallStmt: Adding lhs with type Expression
                        // TrCallStmt: Adding lhs with type State
                        // TrCallStmt: Before ProcessCallStmt
                        assert {:id "id475"} M0.Expression.exprIf_q(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        expr##1_1_0_1_0_0 := M0.Expression.ifFalse(expr#0);
                        assert {:id "id476"} defass#st'#1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st##1_1_0_1_0_0 := st'#1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        env##1_1_0_1_0_0 := env#0;
                        assert {:id "id477"} DtRank(expr##1_1_0_1_0_0) < DtRank(expr#0);
                        call {:id "id478"} $rhs##1_1_0_1_0_0, $rhs##1_1_0_1_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_0_1_0_0, st##1_1_0_1_0_0, env##1_1_0_1_0_0);
                        // TrCallStmt: After ProcessCallStmt
                        _v8#1_1_0_1_0_0 := $rhs##1_1_0_1_0_0;
                        st''#1_1_0_1_0_0 := $rhs##1_1_0_1_0_1;
                        defass#st''#1_1_0_1_0_0 := true;
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(375,32)
                        // TrCallStmt: Before ProcessCallStmt
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st0##1_1_0_1_0_0 := st#0;
                        assert {:id "id481"} defass#st'#1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st1##1_1_0_1_0_0 := st'#1_1_0_0;
                        assert {:id "id482"} defass#st''#1_1_0_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st2##1_1_0_1_0_0 := st''#1_1_0_1_0_0;
                        call {:id "id483"} Call$$M0.__default.Lemma__ExtendsTransitive(st0##1_1_0_1_0_0, st1##1_1_0_1_0_0, st2##1_1_0_1_0_0);
                        // TrCallStmt: After ProcessCallStmt
                    }
                    else
                    {
                    }
                }
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(377,12)
                assume true;
                if (M0.Expression.exprAnd_q(expr#0))
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(378,35)
                    assume true;
                    assume true;
                    // TrCallStmt: Adding lhs with type Expression
                    // TrCallStmt: Adding lhs with type State
                    // TrCallStmt: Before ProcessCallStmt
                    assert {:id "id484"} M0.Expression.exprAnd_q(expr#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    expr##1_1_1_0_0 := M0.Expression.conj0(expr#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    st##1_1_1_0_0 := st#0;
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    env##1_1_1_0_0 := env#0;
                    assert {:id "id485"} DtRank(expr##1_1_1_0_0) < DtRank(expr#0);
                    call {:id "id486"} $rhs##1_1_1_0_0, $rhs##1_1_1_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_1_0_0, st##1_1_1_0_0, env##1_1_1_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    conj0'#1_1_1_0_0 := $rhs##1_1_1_0_0;
                    st'#1_1_1_0_0 := $rhs##1_1_1_0_1;
                    defass#st'#1_1_1_0_0 := true;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(379,7)
                    if (M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0))
                    {
                        assert {:id "id489"} M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0);
                    }

                    assume M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                       ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#1_1_1_0_0));
                    if (M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                       && M0.Literal#Equal(M0.Expression.lit(conj0'#1_1_1_0_0), #M0.Literal.litTrue()))
                    {
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(380,33)
                        assume true;
                        assume true;
                        // TrCallStmt: Adding lhs with type Expression
                        // TrCallStmt: Adding lhs with type State
                        // TrCallStmt: Before ProcessCallStmt
                        assert {:id "id490"} M0.Expression.exprAnd_q(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        expr##1_1_1_0_0_0 := M0.Expression.conj1(expr#0);
                        assert {:id "id491"} defass#st'#1_1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st##1_1_1_0_0_0 := st'#1_1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        env##1_1_1_0_0_0 := env#0;
                        assert {:id "id492"} DtRank(expr##1_1_1_0_0_0) < DtRank(expr#0);
                        call {:id "id493"} $rhs##1_1_1_0_0_0, $rhs##1_1_1_0_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_1_0_0_0, st##1_1_1_0_0_0, env##1_1_1_0_0_0);
                        // TrCallStmt: After ProcessCallStmt
                        _v9#1_1_1_0_0_0 := $rhs##1_1_1_0_0_0;
                        st''#1_1_1_0_0_0 := $rhs##1_1_1_0_0_1;
                        defass#st''#1_1_1_0_0_0 := true;
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(381,32)
                        // TrCallStmt: Before ProcessCallStmt
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st0##1_1_1_0_0_0 := st#0;
                        assert {:id "id496"} defass#st'#1_1_1_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st1##1_1_1_0_0_0 := st'#1_1_1_0_0;
                        assert {:id "id497"} defass#st''#1_1_1_0_0_0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st2##1_1_1_0_0_0 := st''#1_1_1_0_0_0;
                        call {:id "id498"} Call$$M0.__default.Lemma__ExtendsTransitive(st0##1_1_1_0_0_0, st1##1_1_1_0_0_0, st2##1_1_1_0_0_0);
                        // TrCallStmt: After ProcessCallStmt
                    }
                    else
                    {
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(382,14)
                        if (M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0))
                        {
                            assert {:id "id499"} M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0);
                        }

                        assume M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                           ==> $IsA#M0.Literal(M0.Expression.lit(conj0'#1_1_1_0_0));
                        if (M0.Expression.exprLiteral_q(conj0'#1_1_1_0_0)
                           && M0.Literal#Equal(M0.Expression.lit(conj0'#1_1_1_0_0), #M0.Literal.litFalse()))
                        {
                        }
                        else
                        {
                        }
                    }
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(384,12)
                    assume true;
                    if (M0.Expression.exprOr_q(expr#0))
                    {
                        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(385,35)
                        assume true;
                        assume true;
                        // TrCallStmt: Adding lhs with type Expression
                        // TrCallStmt: Adding lhs with type State
                        // TrCallStmt: Before ProcessCallStmt
                        assert {:id "id500"} M0.Expression.exprOr_q(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        expr##1_1_1_1_0_0 := M0.Expression.disj0(expr#0);
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        st##1_1_1_1_0_0 := st#0;
                        assume true;
                        // ProcessCallStmt: CheckSubrange
                        env##1_1_1_1_0_0 := env#0;
                        assert {:id "id501"} DtRank(expr##1_1_1_1_0_0) < DtRank(expr#0);
                        call {:id "id502"} $rhs##1_1_1_1_0_0, $rhs##1_1_1_1_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_1_1_0_0, st##1_1_1_1_0_0, env##1_1_1_1_0_0);
                        // TrCallStmt: After ProcessCallStmt
                        disj0'#1_1_1_1_0_0 := $rhs##1_1_1_1_0_0;
                        st'#1_1_1_1_0_0 := $rhs##1_1_1_1_0_1;
                        defass#st'#1_1_1_1_0_0 := true;
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(386,7)
                        if (M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0))
                        {
                            assert {:id "id505"} M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0);
                        }

                        assume M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                           ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#1_1_1_1_0_0));
                        if (M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                           && M0.Literal#Equal(M0.Expression.lit(disj0'#1_1_1_1_0_0), #M0.Literal.litTrue()))
                        {
                        }
                        else
                        {
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(387,14)
                            if (M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0))
                            {
                                assert {:id "id506"} M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0);
                            }

                            assume M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                               ==> $IsA#M0.Literal(M0.Expression.lit(disj0'#1_1_1_1_0_0));
                            if (M0.Expression.exprLiteral_q(disj0'#1_1_1_1_0_0)
                               && M0.Literal#Equal(M0.Expression.lit(disj0'#1_1_1_1_0_0), #M0.Literal.litFalse()))
                            {
                                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(388,33)
                                assume true;
                                assume true;
                                // TrCallStmt: Adding lhs with type Expression
                                // TrCallStmt: Adding lhs with type State
                                // TrCallStmt: Before ProcessCallStmt
                                assert {:id "id507"} M0.Expression.exprOr_q(expr#0);
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                expr##1_1_1_1_0_1_0_0 := M0.Expression.disj1(expr#0);
                                assert {:id "id508"} defass#st'#1_1_1_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st##1_1_1_1_0_1_0_0 := st'#1_1_1_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                env##1_1_1_1_0_1_0_0 := env#0;
                                assert {:id "id509"} DtRank(expr##1_1_1_1_0_1_0_0) < DtRank(expr#0);
                                call {:id "id510"} $rhs##1_1_1_1_0_1_0_0, $rhs##1_1_1_1_0_1_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_1_1_0_1_0_0, st##1_1_1_1_0_1_0_0, env##1_1_1_1_0_1_0_0);
                                // TrCallStmt: After ProcessCallStmt
                                _v10#1_1_1_1_0_1_0_0 := $rhs##1_1_1_1_0_1_0_0;
                                st''#1_1_1_1_0_1_0_0 := $rhs##1_1_1_1_0_1_0_1;
                                defass#st''#1_1_1_1_0_1_0_0 := true;
                                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(389,32)
                                // TrCallStmt: Before ProcessCallStmt
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st0##1_1_1_1_0_1_0_0 := st#0;
                                assert {:id "id513"} defass#st'#1_1_1_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st1##1_1_1_1_0_1_0_0 := st'#1_1_1_1_0_0;
                                assert {:id "id514"} defass#st''#1_1_1_1_0_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                st2##1_1_1_1_0_1_0_0 := st''#1_1_1_1_0_1_0_0;
                                call {:id "id515"} Call$$M0.__default.Lemma__ExtendsTransitive(st0##1_1_1_1_0_1_0_0, st1##1_1_1_1_0_1_0_0, st2##1_1_1_1_0_1_0_0);
                                // TrCallStmt: After ProcessCallStmt
                            }
                            else
                            {
                            }
                        }
                    }
                    else
                    {
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(391,12)
                        assume true;
                        if (M0.Expression.exprInvocation_q(expr#0))
                        {
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(392,33)
                            assume true;
                            assume true;
                            // TrCallStmt: Adding lhs with type Expression
                            // TrCallStmt: Adding lhs with type State
                            // TrCallStmt: Before ProcessCallStmt
                            assert {:id "id516"} M0.Expression.exprInvocation_q(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            expr##1_1_1_1_1_0_0 := M0.Expression.fun(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            st##1_1_1_1_1_0_0 := st#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            env##1_1_1_1_1_0_0 := env#0;
                            assert {:id "id517"} DtRank(expr##1_1_1_1_1_0_0) < DtRank(expr#0);
                            call {:id "id518"} $rhs##1_1_1_1_1_0_0, $rhs##1_1_1_1_1_0_1 := Call$$M0.__default.EvalLemma(expr##1_1_1_1_1_0_0, st##1_1_1_1_1_0_0, env##1_1_1_1_1_0_0);
                            // TrCallStmt: After ProcessCallStmt
                            fun'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_0;
                            st'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_1;
                            defass#st'#1_1_1_1_1_0_0 := true;
                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(393,39)
                            assume true;
                            assume true;
                            // TrCallStmt: Adding lhs with type seq<Expression>
                            // TrCallStmt: Adding lhs with type set<State>
                            // TrCallStmt: Before ProcessCallStmt
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            context##1_1_1_1_1_0_0 := expr#0;
                            assert {:id "id521"} M0.Expression.exprInvocation_q(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            args##1_1_1_1_1_0_0 := M0.Expression.args(expr#0);
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            stOrig##1_1_1_1_1_0_0 := st#0;
                            assume true;
                            // ProcessCallStmt: CheckSubrange
                            env##1_1_1_1_1_0_1 := env#0;
                            assert {:id "id522"} DtRank(context##1_1_1_1_1_0_0) <= DtRank(expr#0);
                            call {:id "id523"} $rhs##1_1_1_1_1_0_2, $rhs##1_1_1_1_1_0_3 := Call$$M0.__default.EvalArgsLemma(context##1_1_1_1_1_0_0, args##1_1_1_1_1_0_0, stOrig##1_1_1_1_1_0_0, env##1_1_1_1_1_0_1);
                            // TrCallStmt: After ProcessCallStmt
                            args'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_2;
                            sts'#1_1_1_1_1_0_0 := $rhs##1_1_1_1_1_0_3;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(394,17)
                            assume true;
                            assert {:id "id526"} defass#st'#1_1_1_1_1_0_0;
                            assume true;
                            sts''#1_1_1_1_1_0_0 := Set#Union(Set#UnionOne(Set#Empty(): Set, st'#1_1_1_1_1_0_0), sts'#1_1_1_1_1_0_0);
                            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(395,7)
                            ##sts#1_1_1_1_1_0_0 := sts''#1_1_1_1_1_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##sts#1_1_1_1_1_0_0, TSet(Tclass.M0.State()), $Heap);
                            assume M0.__default.Compatible#canCall(sts''#1_1_1_1_1_0_0);
                            assume M0.__default.Compatible#canCall(sts''#1_1_1_1_1_0_0);
                            if (M0.__default.Compatible(sts''#1_1_1_1_1_0_0))
                            {
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(396,24)
                                assume true;
                                ##sts#1_1_1_1_1_0_0_0 := sts''#1_1_1_1_1_0_0;
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##sts#1_1_1_1_1_0_0_0, TSet(Tclass.M0.State()), $Heap);
                                assert {:id "id528"} {:subsumption 0} !Set#Equal(##sts#1_1_1_1_1_0_0_0, Set#Empty(): Set);
                                assume !Set#Equal(##sts#1_1_1_1_1_0_0_0, Set#Empty(): Set);
                                assume M0.__default.Combine#canCall(sts''#1_1_1_1_1_0_0);
                                assume M0.__default.Combine#canCall(sts''#1_1_1_1_1_0_0);
                                stCombined#1_1_1_1_1_0_0_0 := M0.__default.Combine($LS($LZ), sts''#1_1_1_1_1_0_0);
                                defass#stCombined#1_1_1_1_1_0_0_0 := true;
                                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(397,22)
                                // TrCallStmt: Before ProcessCallStmt
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                sts##1_1_1_1_1_0_0_0 := sts''#1_1_1_1_1_0_0;
                                assume true;
                                // ProcessCallStmt: CheckSubrange
                                parent##1_1_1_1_1_0_0_0 := st#0;
                                call {:id "id530"} Call$$M0.__default.Lemma__Combine(sts##1_1_1_1_1_0_0_0, parent##1_1_1_1_1_0_0_0);
                                // TrCallStmt: After ProcessCallStmt
                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(398,9)
                                if (M0.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0))
                                {
                                    assert {:id "id531"} M0.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0);
                                }

                                assume true;
                                if (M0.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0)
                                   && M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#1_1_1_1_1_0_0)))
                                {
                                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(399,11)
                                    assert {:id "id532"} M0.Expression.exprLiteral_q(fun'#1_1_1_1_1_0_0);
                                    assert {:id "id533"} M0.Literal.litPrimitive_q(M0.Expression.lit(fun'#1_1_1_1_1_0_0));
                                    assume true;
                                    if (M0.Primitive.primExec_q(M0.Literal.prim(M0.Expression.lit(fun'#1_1_1_1_1_0_0))))
                                    {
                                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(400,13)
                                        ##prim#1_1_1_1_1_0_0_0_0_0 := Lit(#M0.Primitive.primExec());
                                        // assume allocatedness for argument to function
                                        assume $IsAlloc(##prim#1_1_1_1_1_0_0_0_0_0, Tclass.M0.Primitive(), $Heap);
                                        assume M0.__default.Arity#canCall(Lit(#M0.Primitive.primExec()));
                                        if (Seq#Length(args'#1_1_1_1_1_0_0)
                                           == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec()))))
                                        {
                                            ##prim#1_1_1_1_1_0_0_0_0_1 := Lit(#M0.Primitive.primExec());
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##prim#1_1_1_1_1_0_0_0_0_1, Tclass.M0.Primitive(), $Heap);
                                            ##args#1_1_1_1_1_0_0_0_0_0 := args'#1_1_1_1_1_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##args#1_1_1_1_1_0_0_0_0_0, TSeq(Tclass.M0.Expression()), $Heap);
                                            assert {:id "id534"} defass#stCombined#1_1_1_1_1_0_0_0;
                                            ##st#1_1_1_1_1_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAllocBox(##st#1_1_1_1_1_0_0_0_0_0, Tclass.M0.State(), $Heap);
                                            assert {:id "id535"} {:subsumption 0} M0.Primitive.primExec_q(##prim#1_1_1_1_1_0_0_0_0_1)
                                               ==> Seq#Length(##args#1_1_1_1_1_0_0_0_0_0) == LitInt(3);
                                            assume M0.Primitive.primExec_q(##prim#1_1_1_1_1_0_0_0_0_1)
                                               ==> Seq#Length(##args#1_1_1_1_1_0_0_0_0_0) == LitInt(3);
                                            assert {:id "id536"} {:subsumption 0} M0.Primitive.primCreatePath_q(##prim#1_1_1_1_1_0_0_0_0_1)
                                               ==> Seq#Length(##args#1_1_1_1_1_0_0_0_0_0) == LitInt(1);
                                            assume M0.Primitive.primCreatePath_q(##prim#1_1_1_1_1_0_0_0_0_1)
                                               ==> Seq#Length(##args#1_1_1_1_1_0_0_0_0_0) == LitInt(1);
                                            assume M0.__default.ValidArgs#canCall(Lit(#M0.Primitive.primExec()), args'#1_1_1_1_1_0_0, stCombined#1_1_1_1_1_0_0_0);
                                        }

                                        assume M0.__default.Arity#canCall(Lit(#M0.Primitive.primExec()))
                                           && (Seq#Length(args'#1_1_1_1_1_0_0)
                                               == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                             ==> M0.__default.ValidArgs#canCall(Lit(#M0.Primitive.primExec()), args'#1_1_1_1_1_0_0, stCombined#1_1_1_1_1_0_0_0));
                                        if (Seq#Length(args'#1_1_1_1_1_0_0)
                                             == LitInt(M0.__default.Arity(Lit(#M0.Primitive.primExec())))
                                           && M0.__default.ValidArgs(Lit(#M0.Primitive.primExec()), args'#1_1_1_1_1_0_0, stCombined#1_1_1_1_1_0_0_0))
                                        {
                                            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(401,34)
                                            assume true;
                                            assume true;
                                            assume true;
                                            assert {:id "id537"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(args'#1_1_1_1_1_0_0);
                                            assert {:id "id538"} M0.Expression.exprLiteral_q($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(0))): DatatypeType);
                                            assert {:id "id539"} M0.Literal.litString_q(M0.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(0))): DatatypeType));
                                            assume true;
                                            $rhs#1_1_1_1_1_0_0_0_0_0_0 := M0.Literal.str(M0.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(0))): DatatypeType));
                                            assert {:id "id541"} 0 <= LitInt(1) && LitInt(1) < Seq#Length(args'#1_1_1_1_1_0_0);
                                            assert {:id "id542"} M0.Expression.exprLiteral_q($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(1))): DatatypeType);
                                            assert {:id "id543"} M0.Literal.litArrOfPaths_q(M0.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(1))): DatatypeType));
                                            assume true;
                                            $rhs#1_1_1_1_1_0_0_0_0_0_1 := M0.Literal.paths(M0.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(1))): DatatypeType));
                                            assert {:id "id545"} 0 <= LitInt(2) && LitInt(2) < Seq#Length(args'#1_1_1_1_1_0_0);
                                            assert {:id "id546"} M0.Expression.exprLiteral_q($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(2))): DatatypeType);
                                            assert {:id "id547"} M0.Literal.litArrOfStrings_q(M0.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(2))): DatatypeType));
                                            assume true;
                                            $rhs#1_1_1_1_1_0_0_0_0_0_2 := M0.Literal.strs(M0.Expression.lit($Unbox(Seq#Index(args'#1_1_1_1_1_0_0, LitInt(2))): DatatypeType));
                                            cmd#1_1_1_1_1_0_0_0_0_0_0 := $rhs#1_1_1_1_1_0_0_0_0_0_0;
                                            deps#1_1_1_1_1_0_0_0_0_0_0 := $rhs#1_1_1_1_1_0_0_0_0_0_1;
                                            exp#1_1_1_1_1_0_0_0_0_0_0 := $rhs#1_1_1_1_1_0_0_0_0_0_2;
                                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(402,27)
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
                                            assert {:id "id552"} defass#stCombined#1_1_1_1_1_0_0_0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st##1_1_1_1_1_0_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            call {:id "id553"} Call$$M0.__default.ExecProperty(cmd##1_1_1_1_1_0_0_0_0_0_0, deps##1_1_1_1_1_0_0_0_0_0_0, exps##1_1_1_1_1_0_0_0_0_0_0, st##1_1_1_1_1_0_0_0_0_0_0);
                                            // TrCallStmt: After ProcessCallStmt
                                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(403,30)
                                            assume true;
                                            ##cmd#1_1_1_1_1_0_0_0_0_0_0 := cmd#1_1_1_1_1_0_0_0_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##cmd#1_1_1_1_1_0_0_0_0_0_0, TSeq(TChar), $Heap);
                                            ##deps#1_1_1_1_1_0_0_0_0_0_0 := deps#1_1_1_1_1_0_0_0_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##deps#1_1_1_1_1_0_0_0_0_0_0, TSet(Tclass.M0.Path()), $Heap);
                                            ##exps#1_1_1_1_1_0_0_0_0_0_0 := exp#1_1_1_1_1_0_0_0_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAlloc(##exps#1_1_1_1_1_0_0_0_0_0_0, TSet(TSeq(TChar)), $Heap);
                                            assert {:id "id554"} defass#stCombined#1_1_1_1_1_0_0_0;
                                            ##st#1_1_1_1_1_0_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            // assume allocatedness for argument to function
                                            assume $IsAllocBox(##st#1_1_1_1_1_0_0_0_0_0_0, Tclass.M0.State(), $Heap);
                                            assume M0.__default.exec#canCall(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                              deps#1_1_1_1_1_0_0_0_0_0_0, 
                                              exp#1_1_1_1_1_0_0_0_0_0_0, 
                                              stCombined#1_1_1_1_1_0_0_0);
                                            assume M0.Tuple.Pair_q(M0.__default.exec(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                                deps#1_1_1_1_1_0_0_0_0_0_0, 
                                                exp#1_1_1_1_1_0_0_0_0_0_0, 
                                                stCombined#1_1_1_1_1_0_0_0));
                                            assume M0.__default.exec#canCall(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                              deps#1_1_1_1_1_0_0_0_0_0_0, 
                                              exp#1_1_1_1_1_0_0_0_0_0_0, 
                                              stCombined#1_1_1_1_1_0_0_0);
                                            resultExec#1_1_1_1_1_0_0_0_0_0_0 := M0.__default.exec(cmd#1_1_1_1_1_0_0_0_0_0_0, 
                                              deps#1_1_1_1_1_0_0_0_0_0_0, 
                                              exp#1_1_1_1_1_0_0_0_0_0_0, 
                                              stCombined#1_1_1_1_1_0_0_0);
                                            defass#resultExec#1_1_1_1_1_0_0_0_0_0_0 := true;
                                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(404,26)
                                            assume true;
                                            assert {:id "id556"} defass#resultExec#1_1_1_1_1_0_0_0_0_0_0;
                                            assume M0.Tuple.Pair_q(resultExec#1_1_1_1_1_0_0_0_0_0_0);
                                            assume M0.Tuple.Pair_q(resultExec#1_1_1_1_1_0_0_0_0_0_0);
                                            stExec#1_1_1_1_1_0_0_0_0_0_0 := M0.Tuple.snd(resultExec#1_1_1_1_1_0_0_0_0_0_0);
                                            defass#stExec#1_1_1_1_1_0_0_0_0_0_0 := true;
                                            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(405,38)
                                            // TrCallStmt: Before ProcessCallStmt
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st0##1_1_1_1_1_0_0_0_0_0_0 := st#0;
                                            assert {:id "id558"} defass#stCombined#1_1_1_1_1_0_0_0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st1##1_1_1_1_1_0_0_0_0_0_0 := stCombined#1_1_1_1_1_0_0_0;
                                            assert {:id "id559"} defass#stExec#1_1_1_1_1_0_0_0_0_0_0;
                                            assume true;
                                            // ProcessCallStmt: CheckSubrange
                                            st2##1_1_1_1_1_0_0_0_0_0_0 := stExec#1_1_1_1_1_0_0_0_0_0_0;
                                            call {:id "id560"} Call$$M0.__default.Lemma__ExtendsTransitive(st0##1_1_1_1_1_0_0_0_0_0_0, st1##1_1_1_1_1_0_0_0_0_0_0, st2##1_1_1_1_1_0_0_0_0_0_0);
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

    assert {:id "id561"} defass#st'#0;
}



procedure {:verboseName "M0.EvalArgsLemma (well-formedness)"} CheckWellFormed$$M0.__default.EvalArgsLemma(context#0: DatatypeType
       where $Is(context#0, Tclass.M0.Expression())
         && $IsAlloc(context#0, Tclass.M0.Expression(), $Heap)
         && $IsA#M0.Expression(context#0), 
    args#0: Seq
       where $Is(args#0, TSeq(Tclass.M0.Expression()))
         && $IsAlloc(args#0, TSeq(Tclass.M0.Expression()), $Heap), 
    stOrig#0: Box
       where $IsBox(stOrig#0, Tclass.M0.State())
         && $IsAllocBox(stOrig#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (args'#0: Seq
       where $Is(args'#0, TSeq(Tclass.M0.Expression()))
         && $IsAlloc(args'#0, TSeq(Tclass.M0.Expression()), $Heap), 
    sts'#0: Set
       where $Is(sts'#0, TSet(Tclass.M0.State()))
         && $IsAlloc(sts'#0, TSet(Tclass.M0.State()), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.EvalArgsLemma (well-formedness)"} CheckWellFormed$$M0.__default.EvalArgsLemma(context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box)
   returns (args'#0: Seq, sts'#0: Set)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##st#0: Box;
  var ##env#0: Box;
  var arg#0: DatatypeType;
  var ##context#0: DatatypeType;
  var ##args#0: Seq;
  var ##stOrig#0: Box;
  var ##env#1: Box;
  var st'#0: Box;
  var ##st#1: Box;
  var ##st#2: Box;
  var ##st'#0: Box;


    // AddMethodImpl: EvalArgsLemma, CheckWellFormed$$M0.__default.EvalArgsLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##st#0 := stOrig#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##st#0, Tclass.M0.State(), $Heap);
    assume M0.__default.ValidState#canCall(stOrig#0);
    assume {:id "id562"} M0.__default.ValidState(stOrig#0);
    ##env#0 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#0, Tclass.M0.Env(), $Heap);
    assume M0.__default.ValidEnv#canCall(env#0);
    assume {:id "id563"} M0.__default.ValidEnv(env#0);
    havoc arg#0;
    assume $Is(arg#0, Tclass.M0.Expression())
       && $IsAlloc(arg#0, Tclass.M0.Expression(), $Heap);
    if (*)
    {
        assume {:id "id564"} Seq#Contains(args#0, $Box(arg#0));
        assume {:id "id565"} DtRank(arg#0) < DtRank(context#0);
    }
    else
    {
        assume {:id "id566"} Seq#Contains(args#0, $Box(arg#0)) ==> DtRank(arg#0) < DtRank(context#0);
    }

    assume {:id "id567"} (forall arg#1: DatatypeType :: 
      { Seq#Contains(args#0, $Box(arg#1)) } 
      $Is(arg#1, Tclass.M0.Expression())
         ==> 
        Seq#Contains(args#0, $Box(arg#1))
         ==> DtRank(arg#1) < DtRank(context#0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc args'#0, sts'#0;
    ##context#0 := context#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##context#0, Tclass.M0.Expression(), $Heap);
    ##args#0 := args#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##args#0, TSeq(Tclass.M0.Expression()), $Heap);
    ##stOrig#0 := stOrig#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##stOrig#0, Tclass.M0.State(), $Heap);
    ##env#1 := env#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##env#1, Tclass.M0.Env(), $Heap);
    assert {:id "id568"} {:subsumption 0} M0.__default.ValidEnv(##env#1);
    assert {:id "id569"} {:subsumption 0} (forall arg#2: DatatypeType :: 
      { Seq#Contains(##args#0, $Box(arg#2)) } 
      $Is(arg#2, Tclass.M0.Expression())
         ==> 
        Seq#Contains(##args#0, $Box(arg#2))
         ==> DtRank(arg#2) < DtRank(##context#0));
    assume M0.__default.ValidEnv(##env#1)
       && (forall arg#2: DatatypeType :: 
        { Seq#Contains(##args#0, $Box(arg#2)) } 
        $Is(arg#2, Tclass.M0.Expression())
           ==> 
          Seq#Contains(##args#0, $Box(arg#2))
           ==> DtRank(arg#2) < DtRank(##context#0));
    assume M0.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0);
    assume M0.Tuple.Pair_q(M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0));
    assume {:id "id570"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
      M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0));
    havoc st'#0;
    assume $IsBox(st'#0, Tclass.M0.State()) && $IsAllocBox(st'#0, Tclass.M0.State(), $Heap);
    if (*)
    {
        assume {:id "id571"} Set#IsMember(sts'#0, st'#0);
        ##st#1 := st'#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#1, Tclass.M0.State(), $Heap);
        assume M0.__default.ValidState#canCall(st'#0);
        assume {:id "id572"} M0.__default.ValidState(st'#0);
        ##st#2 := stOrig#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st#2, Tclass.M0.State(), $Heap);
        ##st'#0 := st'#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##st'#0, Tclass.M0.State(), $Heap);
        assume M0.__default.Extends#canCall(stOrig#0, st'#0);
        assume {:id "id573"} M0.__default.Extends(stOrig#0, st'#0);
    }
    else
    {
        assume {:id "id574"} Set#IsMember(sts'#0, st'#0)
           ==> M0.__default.ValidState(st'#0) && M0.__default.Extends(stOrig#0, st'#0);
    }

    assume {:id "id575"} (forall st'#1: Box :: 
      { M0.__default.Extends(stOrig#0, st'#1) } 
        { M0.__default.ValidState(st'#1) } 
        { Set#IsMember(sts'#0, st'#1) } 
      $IsBox(st'#1, Tclass.M0.State())
         ==> (Set#IsMember(sts'#0, st'#1) ==> M0.__default.ValidState(st'#1))
           && (Set#IsMember(sts'#0, st'#1) ==> M0.__default.Extends(stOrig#0, st'#1)));
}



procedure {:verboseName "M0.EvalArgsLemma (call)"} Call$$M0.__default.EvalArgsLemma(context#0: DatatypeType
       where $Is(context#0, Tclass.M0.Expression())
         && $IsAlloc(context#0, Tclass.M0.Expression(), $Heap)
         && $IsA#M0.Expression(context#0), 
    args#0: Seq
       where $Is(args#0, TSeq(Tclass.M0.Expression()))
         && $IsAlloc(args#0, TSeq(Tclass.M0.Expression()), $Heap), 
    stOrig#0: Box
       where $IsBox(stOrig#0, Tclass.M0.State())
         && $IsAllocBox(stOrig#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (args'#0: Seq
       where $Is(args'#0, TSeq(Tclass.M0.Expression()))
         && $IsAlloc(args'#0, TSeq(Tclass.M0.Expression()), $Heap), 
    sts'#0: Set
       where $Is(sts'#0, TSet(Tclass.M0.State()))
         && $IsAlloc(sts'#0, TSet(Tclass.M0.State()), $Heap));
  // user-defined preconditions
  requires {:id "id576"} M0.__default.ValidState#canCall(stOrig#0)
     ==> M0.__default.ValidState(stOrig#0)
       || (forall p#0: Box :: 
        { M0.__default.WellFounded(p#0) } 
          { Set#IsMember(M0.__default.DomSt(stOrig#0), p#0) } 
        $IsBox(p#0, Tclass.M0.Path())
           ==> 
          Set#IsMember(M0.__default.DomSt(stOrig#0), p#0)
           ==> M0.__default.WellFounded(p#0));
  requires {:id "id577"} M0.__default.ValidEnv(env#0);
  requires {:id "id578"} (forall arg#1: DatatypeType :: 
    { Seq#Contains(args#0, $Box(arg#1)) } 
    $Is(arg#1, Tclass.M0.Expression())
       ==> 
      Seq#Contains(args#0, $Box(arg#1))
       ==> DtRank(arg#1) < DtRank(context#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
     && M0.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
     && (M0.Tuple#Equal(#M0.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
        M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
       ==> (forall st'#1: Box :: 
        { M0.__default.Extends(stOrig#0, st'#1) } 
          { M0.__default.ValidState(st'#1) } 
          { Set#IsMember(sts'#0, st'#1) } 
        $IsBox(st'#1, Tclass.M0.State())
           ==> (Set#IsMember(sts'#0, st'#1) ==> M0.__default.ValidState#canCall(st'#1))
             && (
              (Set#IsMember(sts'#0, st'#1)
               ==> M0.__default.ValidState(st'#1))
               ==> 
              Set#IsMember(sts'#0, st'#1)
               ==> M0.__default.Extends#canCall(stOrig#0, st'#1))));
  ensures {:id "id579"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
    M0.__default.evalArgs($LS($LS($LZ)), context#0, args#0, stOrig#0, env#0));
  ensures {:id "id580"} (forall st'#1: Box :: 
    { M0.__default.Extends(stOrig#0, st'#1) } 
      { M0.__default.ValidState(st'#1) } 
      { Set#IsMember(sts'#0, st'#1) } 
    $IsBox(st'#1, Tclass.M0.State())
       ==> (Set#IsMember(sts'#0, st'#1) ==> M0.__default.ValidState(st'#1))
         && (Set#IsMember(sts'#0, st'#1) ==> M0.__default.Extends(stOrig#0, st'#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "M0.EvalArgsLemma (correctness)"} Impl$$M0.__default.EvalArgsLemma(context#0: DatatypeType
       where $Is(context#0, Tclass.M0.Expression())
         && $IsAlloc(context#0, Tclass.M0.Expression(), $Heap)
         && $IsA#M0.Expression(context#0), 
    args#0: Seq
       where $Is(args#0, TSeq(Tclass.M0.Expression()))
         && $IsAlloc(args#0, TSeq(Tclass.M0.Expression()), $Heap), 
    stOrig#0: Box
       where $IsBox(stOrig#0, Tclass.M0.State())
         && $IsAllocBox(stOrig#0, Tclass.M0.State(), $Heap), 
    env#0: Box
       where $IsBox(env#0, Tclass.M0.Env()) && $IsAllocBox(env#0, Tclass.M0.Env(), $Heap))
   returns (args'#0: Seq
       where $Is(args'#0, TSeq(Tclass.M0.Expression()))
         && $IsAlloc(args'#0, TSeq(Tclass.M0.Expression()), $Heap), 
    sts'#0: Set
       where $Is(sts'#0, TSet(Tclass.M0.State()))
         && $IsAlloc(sts'#0, TSet(Tclass.M0.State()), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id581"} M0.__default.ValidState#canCall(stOrig#0)
     && 
    M0.__default.ValidState(stOrig#0)
     && (forall p#1: Box :: 
      { M0.__default.WellFounded(p#1) } 
        { Set#IsMember(M0.__default.DomSt(stOrig#0), p#1) } 
      $IsBox(p#1, Tclass.M0.Path())
         ==> 
        Set#IsMember(M0.__default.DomSt(stOrig#0), p#1)
         ==> M0.__default.WellFounded(p#1));
  requires {:id "id582"} M0.__default.ValidEnv(env#0);
  requires {:id "id583"} (forall arg#1: DatatypeType :: 
    { Seq#Contains(args#0, $Box(arg#1)) } 
    $Is(arg#1, Tclass.M0.Expression())
       ==> 
      Seq#Contains(args#0, $Box(arg#1))
       ==> DtRank(arg#1) < DtRank(context#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#M0.Tuple(M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
     && M0.__default.evalArgs#canCall(context#0, args#0, stOrig#0, env#0)
     && (M0.Tuple#Equal(#M0.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
        M0.__default.evalArgs($LS($LZ), context#0, args#0, stOrig#0, env#0))
       ==> (forall st'#1: Box :: 
        { M0.__default.Extends(stOrig#0, st'#1) } 
          { M0.__default.ValidState(st'#1) } 
          { Set#IsMember(sts'#0, st'#1) } 
        $IsBox(st'#1, Tclass.M0.State())
           ==> (Set#IsMember(sts'#0, st'#1) ==> M0.__default.ValidState#canCall(st'#1))
             && (
              (Set#IsMember(sts'#0, st'#1)
               ==> M0.__default.ValidState(st'#1))
               ==> 
              Set#IsMember(sts'#0, st'#1)
               ==> M0.__default.Extends#canCall(stOrig#0, st'#1))));
  ensures {:id "id584"} M0.Tuple#Equal(#M0.Tuple.Pair($Box(args'#0), $Box(sts'#0)), 
    M0.__default.evalArgs($LS($LS($LZ)), context#0, args#0, stOrig#0, env#0));
  ensures {:id "id585"} (forall st'#1: Box :: 
    { M0.__default.Extends(stOrig#0, st'#1) } 
      { M0.__default.ValidState(st'#1) } 
      { Set#IsMember(sts'#0, st'#1) } 
    $IsBox(st'#1, Tclass.M0.State())
       ==> (Set#IsMember(sts'#0, st'#1) ==> M0.__default.ValidState(st'#1))
         && (Set#IsMember(sts'#0, st'#1) ==> M0.__default.Extends(stOrig#0, st'#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0.EvalArgsLemma (correctness)"} Impl$$M0.__default.EvalArgsLemma(context#0: DatatypeType, args#0: Seq, stOrig#0: Box, env#0: Box)
   returns (args'#0: Seq, sts'#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: Seq;
  var $rhs#0_1: Set;
  var rArg#1_0: DatatypeType
     where $Is(rArg#1_0, Tclass.M0.Expression())
       && $IsAlloc(rArg#1_0, Tclass.M0.Expression(), $Heap);
  var defass#rSts#1_0: bool;
  var rSts#1_0: Box
     where defass#rSts#1_0
       ==> $IsBox(rSts#1_0, Tclass.M0.State())
         && $IsAllocBox(rSts#1_0, Tclass.M0.State(), $Heap);
  var $rhs##1_0: DatatypeType;
  var $rhs##1_1: Box;
  var expr##1_0: DatatypeType;
  var st##1_0: Box;
  var env##1_0: Box;
  var rrArg#1_0: Seq
     where $Is(rrArg#1_0, TSeq(Tclass.M0.Expression()))
       && $IsAlloc(rrArg#1_0, TSeq(Tclass.M0.Expression()), $Heap);
  var rrSts#1_0: Set
     where $Is(rrSts#1_0, TSet(Tclass.M0.State()))
       && $IsAlloc(rrSts#1_0, TSet(Tclass.M0.State()), $Heap);
  var $rhs##1_2: Seq;
  var $rhs##1_3: Set;
  var context##1_0: DatatypeType;
  var args##1_0: Seq;
  var stOrig##1_0: Box;
  var env##1_1: Box;
  var $rhs#1_0: Seq;
  var $rhs#1_1: Set;

    // AddMethodImpl: EvalArgsLemma, Impl$$M0.__default.EvalArgsLemma
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(422,5)
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
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(425,34)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type Expression
        // TrCallStmt: Adding lhs with type State
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id590"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(args#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        expr##1_0 := $Unbox(Seq#Index(args#0, LitInt(0))): DatatypeType;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := stOrig#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##1_0 := env#0;
        assert {:id "id591"} DtRank(expr##1_0) < DtRank(context#0);
        call {:id "id592"} $rhs##1_0, $rhs##1_1 := Call$$M0.__default.EvalLemma(expr##1_0, st##1_0, env##1_0);
        // TrCallStmt: After ProcessCallStmt
        rArg#1_0 := $rhs##1_0;
        rSts#1_0 := $rhs##1_1;
        defass#rSts#1_0 := true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(426,40)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type seq<Expression>
        // TrCallStmt: Adding lhs with type set<State>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        context##1_0 := context#0;
        assert {:id "id595"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(args#0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        args##1_0 := Seq#Drop(args#0, LitInt(1));
        assume true;
        // ProcessCallStmt: CheckSubrange
        stOrig##1_0 := stOrig#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        env##1_1 := env#0;
        assert {:id "id596"} 0 <= Seq#Length(args#0)
           || DtRank(context##1_0) < DtRank(context#0)
           || Seq#Length(args##1_0) == Seq#Length(args#0);
        assert {:id "id597"} DtRank(context##1_0) < DtRank(context#0)
           || (DtRank(context##1_0) == DtRank(context#0)
             && Seq#Length(args##1_0) < Seq#Length(args#0));
        call {:id "id598"} $rhs##1_2, $rhs##1_3 := Call$$M0.__default.EvalArgsLemma(context##1_0, args##1_0, stOrig##1_0, env##1_1);
        // TrCallStmt: After ProcessCallStmt
        rrArg#1_0 := $rhs##1_2;
        rrSts#1_0 := $rhs##1_3;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/cloudmake/CloudMake-ParallelBuilds.dfy(427,19)
        assume true;
        assume true;
        assume true;
        $rhs#1_0 := Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(rArg#1_0)), rrArg#1_0);
        assert {:id "id602"} defass#rSts#1_0;
        assume true;
        $rhs#1_1 := Set#Union(Set#UnionOne(Set#Empty(): Set, rSts#1_0), rrSts#1_0);
        args'#0 := $rhs#1_0;
        sts'#0 := $rhs#1_1;
    }
}



const unique class.M0.State: ClassName;

const unique class.M0.Env: ClassName;

// Constructor function declaration
function #M0.Program.Program(Seq) : DatatypeType;

const unique ##M0.Program.Program: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Seq :: 
  { #M0.Program.Program(a#0#0#0) } 
  DatatypeCtorId(#M0.Program.Program(a#0#0#0)) == ##M0.Program.Program);
}

function M0.Program.Program_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Program.Program_q(d) } 
  M0.Program.Program_q(d) <==> DatatypeCtorId(d) == ##M0.Program.Program);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Program.Program_q(d) } 
  M0.Program.Program_q(d)
     ==> (exists a#1#0#0: Seq :: d == #M0.Program.Program(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: Seq :: 
  { $Is(#M0.Program.Program(a#2#0#0), Tclass.M0.Program()) } 
  $Is(#M0.Program.Program(a#2#0#0), Tclass.M0.Program())
     <==> $Is(a#2#0#0, TSeq(Tclass.M0.Statement())));

// Constructor $IsAlloc
axiom (forall a#2#0#0: Seq, $h: Heap :: 
  { $IsAlloc(#M0.Program.Program(a#2#0#0), Tclass.M0.Program(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Program.Program(a#2#0#0), Tclass.M0.Program(), $h)
       <==> $IsAlloc(a#2#0#0, TSeq(Tclass.M0.Statement()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Program.stmts(d), TSeq(Tclass.M0.Statement()), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Program.Program_q(d)
       && $IsAlloc(d, Tclass.M0.Program(), $h)
     ==> $IsAlloc(M0.Program.stmts(d), TSeq(Tclass.M0.Statement()), $h));

// Constructor literal
axiom (forall a#3#0#0: Seq :: 
  { #M0.Program.Program(Lit(a#3#0#0)) } 
  #M0.Program.Program(Lit(a#3#0#0)) == Lit(#M0.Program.Program(a#3#0#0)));

function M0.Program.stmts(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#4#0#0: Seq :: 
  { #M0.Program.Program(a#4#0#0) } 
  M0.Program.stmts(#M0.Program.Program(a#4#0#0)) == a#4#0#0);

// Inductive seq element rank
axiom (forall a#5#0#0: Seq, i: int :: 
  { Seq#Index(a#5#0#0, i), #M0.Program.Program(a#5#0#0) } 
  0 <= i && i < Seq#Length(a#5#0#0)
     ==> DtRank($Unbox(Seq#Index(a#5#0#0, i)): DatatypeType)
       < DtRank(#M0.Program.Program(a#5#0#0)));

// Inductive seq rank
axiom (forall a#6#0#0: Seq :: 
  { #M0.Program.Program(a#6#0#0) } 
  Seq#Rank(a#6#0#0) < DtRank(#M0.Program.Program(a#6#0#0)));

// Depth-one case-split function
function $IsA#M0.Program(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M0.Program(d) } 
  $IsA#M0.Program(d) ==> M0.Program.Program_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M0.Program.Program_q(d), $Is(d, Tclass.M0.Program()) } 
  $Is(d, Tclass.M0.Program()) ==> M0.Program.Program_q(d));

// Datatype extensional equality declaration
function M0.Program#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M0.Program.Program
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Program#Equal(a, b) } 
  M0.Program#Equal(a, b) <==> Seq#Equal(M0.Program.stmts(a), M0.Program.stmts(b)));

// Datatype extensionality axiom: M0.Program
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Program#Equal(a, b) } 
  M0.Program#Equal(a, b) <==> a == b);

const unique class.M0.Program: ClassName;

// Constructor function declaration
function #M0.Statement.stmtVariable(Box, DatatypeType) : DatatypeType;

const unique ##M0.Statement.stmtVariable: DtCtorId
uses {
// Constructor identifier
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #M0.Statement.stmtVariable(a#7#0#0, a#7#1#0) } 
  DatatypeCtorId(#M0.Statement.stmtVariable(a#7#0#0, a#7#1#0))
     == ##M0.Statement.stmtVariable);
}

function M0.Statement.stmtVariable_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Statement.stmtVariable_q(d) } 
  M0.Statement.stmtVariable_q(d)
     <==> DatatypeCtorId(d) == ##M0.Statement.stmtVariable);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Statement.stmtVariable_q(d) } 
  M0.Statement.stmtVariable_q(d)
     ==> (exists a#8#0#0: Box, a#8#1#0: DatatypeType :: 
      d == #M0.Statement.stmtVariable(a#8#0#0, a#8#1#0)));

// Constructor $Is
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { $Is(#M0.Statement.stmtVariable(a#9#0#0, a#9#1#0), Tclass.M0.Statement()) } 
  $Is(#M0.Statement.stmtVariable(a#9#0#0, a#9#1#0), Tclass.M0.Statement())
     <==> $IsBox(a#9#0#0, Tclass.M0.Identifier()) && $Is(a#9#1#0, Tclass.M0.Expression()));

// Constructor $IsAlloc
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Statement.stmtVariable(a#9#0#0, a#9#1#0), Tclass.M0.Statement(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Statement.stmtVariable(a#9#0#0, a#9#1#0), Tclass.M0.Statement(), $h)
       <==> $IsAllocBox(a#9#0#0, Tclass.M0.Identifier(), $h)
         && $IsAlloc(a#9#1#0, Tclass.M0.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(M0.Statement.id(d), Tclass.M0.Identifier(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Statement.stmtVariable_q(d)
       && $IsAlloc(d, Tclass.M0.Statement(), $h)
     ==> $IsAllocBox(M0.Statement.id(d), Tclass.M0.Identifier(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Statement.expr(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Statement.stmtVariable_q(d)
       && $IsAlloc(d, Tclass.M0.Statement(), $h)
     ==> $IsAlloc(M0.Statement.expr(d), Tclass.M0.Expression(), $h));

// Constructor literal
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #M0.Statement.stmtVariable(Lit(a#10#0#0), Lit(a#10#1#0)) } 
  #M0.Statement.stmtVariable(Lit(a#10#0#0), Lit(a#10#1#0))
     == Lit(#M0.Statement.stmtVariable(a#10#0#0, a#10#1#0)));

function M0.Statement.id(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #M0.Statement.stmtVariable(a#11#0#0, a#11#1#0) } 
  M0.Statement.id(#M0.Statement.stmtVariable(a#11#0#0, a#11#1#0)) == a#11#0#0);

function M0.Statement.expr(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: Box, a#12#1#0: DatatypeType :: 
  { #M0.Statement.stmtVariable(a#12#0#0, a#12#1#0) } 
  M0.Statement.expr(#M0.Statement.stmtVariable(a#12#0#0, a#12#1#0)) == a#12#1#0);

// Inductive rank
axiom (forall a#13#0#0: Box, a#13#1#0: DatatypeType :: 
  { #M0.Statement.stmtVariable(a#13#0#0, a#13#1#0) } 
  DtRank(a#13#1#0) < DtRank(#M0.Statement.stmtVariable(a#13#0#0, a#13#1#0)));

// Constructor function declaration
function #M0.Statement.stmtReturn(DatatypeType) : DatatypeType;

const unique ##M0.Statement.stmtReturn: DtCtorId
uses {
// Constructor identifier
axiom (forall a#14#0#0: DatatypeType :: 
  { #M0.Statement.stmtReturn(a#14#0#0) } 
  DatatypeCtorId(#M0.Statement.stmtReturn(a#14#0#0)) == ##M0.Statement.stmtReturn);
}

function M0.Statement.stmtReturn_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Statement.stmtReturn_q(d) } 
  M0.Statement.stmtReturn_q(d) <==> DatatypeCtorId(d) == ##M0.Statement.stmtReturn);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Statement.stmtReturn_q(d) } 
  M0.Statement.stmtReturn_q(d)
     ==> (exists a#15#0#0: DatatypeType :: d == #M0.Statement.stmtReturn(a#15#0#0)));

// Constructor $Is
axiom (forall a#16#0#0: DatatypeType :: 
  { $Is(#M0.Statement.stmtReturn(a#16#0#0), Tclass.M0.Statement()) } 
  $Is(#M0.Statement.stmtReturn(a#16#0#0), Tclass.M0.Statement())
     <==> $Is(a#16#0#0, Tclass.M0.Expression()));

// Constructor $IsAlloc
axiom (forall a#16#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Statement.stmtReturn(a#16#0#0), Tclass.M0.Statement(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Statement.stmtReturn(a#16#0#0), Tclass.M0.Statement(), $h)
       <==> $IsAlloc(a#16#0#0, Tclass.M0.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Statement.ret(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Statement.stmtReturn_q(d)
       && $IsAlloc(d, Tclass.M0.Statement(), $h)
     ==> $IsAlloc(M0.Statement.ret(d), Tclass.M0.Expression(), $h));

// Constructor literal
axiom (forall a#17#0#0: DatatypeType :: 
  { #M0.Statement.stmtReturn(Lit(a#17#0#0)) } 
  #M0.Statement.stmtReturn(Lit(a#17#0#0))
     == Lit(#M0.Statement.stmtReturn(a#17#0#0)));

function M0.Statement.ret(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#18#0#0: DatatypeType :: 
  { #M0.Statement.stmtReturn(a#18#0#0) } 
  M0.Statement.ret(#M0.Statement.stmtReturn(a#18#0#0)) == a#18#0#0);

// Inductive rank
axiom (forall a#19#0#0: DatatypeType :: 
  { #M0.Statement.stmtReturn(a#19#0#0) } 
  DtRank(a#19#0#0) < DtRank(#M0.Statement.stmtReturn(a#19#0#0)));

// Depth-one case-split function
function $IsA#M0.Statement(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M0.Statement(d) } 
  $IsA#M0.Statement(d)
     ==> M0.Statement.stmtVariable_q(d) || M0.Statement.stmtReturn_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M0.Statement.stmtReturn_q(d), $Is(d, Tclass.M0.Statement()) } 
    { M0.Statement.stmtVariable_q(d), $Is(d, Tclass.M0.Statement()) } 
  $Is(d, Tclass.M0.Statement())
     ==> M0.Statement.stmtVariable_q(d) || M0.Statement.stmtReturn_q(d));

// Datatype extensional equality declaration
function M0.Statement#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M0.Statement.stmtVariable
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Statement#Equal(a, b), M0.Statement.stmtVariable_q(a) } 
    { M0.Statement#Equal(a, b), M0.Statement.stmtVariable_q(b) } 
  M0.Statement.stmtVariable_q(a) && M0.Statement.stmtVariable_q(b)
     ==> (M0.Statement#Equal(a, b)
       <==> M0.Statement.id(a) == M0.Statement.id(b)
         && M0.Expression#Equal(M0.Statement.expr(a), M0.Statement.expr(b))));

// Datatype extensional equality definition: #M0.Statement.stmtReturn
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Statement#Equal(a, b), M0.Statement.stmtReturn_q(a) } 
    { M0.Statement#Equal(a, b), M0.Statement.stmtReturn_q(b) } 
  M0.Statement.stmtReturn_q(a) && M0.Statement.stmtReturn_q(b)
     ==> (M0.Statement#Equal(a, b)
       <==> M0.Expression#Equal(M0.Statement.ret(a), M0.Statement.ret(b))));

// Datatype extensionality axiom: M0.Statement
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Statement#Equal(a, b) } 
  M0.Statement#Equal(a, b) <==> a == b);

const unique class.M0.Statement: ClassName;

// Constructor function declaration
function #M0.Expression.exprLiteral(DatatypeType) : DatatypeType;

const unique ##M0.Expression.exprLiteral: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: DatatypeType :: 
  { #M0.Expression.exprLiteral(a#20#0#0) } 
  DatatypeCtorId(#M0.Expression.exprLiteral(a#20#0#0))
     == ##M0.Expression.exprLiteral);
}

function M0.Expression.exprLiteral_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprLiteral_q(d) } 
  M0.Expression.exprLiteral_q(d)
     <==> DatatypeCtorId(d) == ##M0.Expression.exprLiteral);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprLiteral_q(d) } 
  M0.Expression.exprLiteral_q(d)
     ==> (exists a#21#0#0: DatatypeType :: d == #M0.Expression.exprLiteral(a#21#0#0)));

function Tclass.M0.Literal() : Ty
uses {
// Tclass.M0.Literal Tag
axiom Tag(Tclass.M0.Literal()) == Tagclass.M0.Literal
   && TagFamily(Tclass.M0.Literal()) == tytagFamily$Literal;
}

const unique Tagclass.M0.Literal: TyTag;

// Box/unbox axiom for Tclass.M0.Literal
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M0.Literal()) } 
  $IsBox(bx, Tclass.M0.Literal())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M0.Literal()));

// Constructor $Is
axiom (forall a#22#0#0: DatatypeType :: 
  { $Is(#M0.Expression.exprLiteral(a#22#0#0), Tclass.M0.Expression()) } 
  $Is(#M0.Expression.exprLiteral(a#22#0#0), Tclass.M0.Expression())
     <==> $Is(a#22#0#0, Tclass.M0.Literal()));

// Constructor $IsAlloc
axiom (forall a#22#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Expression.exprLiteral(a#22#0#0), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Expression.exprLiteral(a#22#0#0), Tclass.M0.Expression(), $h)
       <==> $IsAlloc(a#22#0#0, Tclass.M0.Literal(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.lit(d), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprLiteral_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.lit(d), Tclass.M0.Literal(), $h));

// Constructor literal
axiom (forall a#23#0#0: DatatypeType :: 
  { #M0.Expression.exprLiteral(Lit(a#23#0#0)) } 
  #M0.Expression.exprLiteral(Lit(a#23#0#0))
     == Lit(#M0.Expression.exprLiteral(a#23#0#0)));

function M0.Expression.lit(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType :: 
  { #M0.Expression.exprLiteral(a#24#0#0) } 
  M0.Expression.lit(#M0.Expression.exprLiteral(a#24#0#0)) == a#24#0#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType :: 
  { #M0.Expression.exprLiteral(a#25#0#0) } 
  DtRank(a#25#0#0) < DtRank(#M0.Expression.exprLiteral(a#25#0#0)));

// Constructor function declaration
function #M0.Expression.exprIdentifier(Box) : DatatypeType;

const unique ##M0.Expression.exprIdentifier: DtCtorId
uses {
// Constructor identifier
axiom (forall a#26#0#0: Box :: 
  { #M0.Expression.exprIdentifier(a#26#0#0) } 
  DatatypeCtorId(#M0.Expression.exprIdentifier(a#26#0#0))
     == ##M0.Expression.exprIdentifier);
}

function M0.Expression.exprIdentifier_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprIdentifier_q(d) } 
  M0.Expression.exprIdentifier_q(d)
     <==> DatatypeCtorId(d) == ##M0.Expression.exprIdentifier);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprIdentifier_q(d) } 
  M0.Expression.exprIdentifier_q(d)
     ==> (exists a#27#0#0: Box :: d == #M0.Expression.exprIdentifier(a#27#0#0)));

// Constructor $Is
axiom (forall a#28#0#0: Box :: 
  { $Is(#M0.Expression.exprIdentifier(a#28#0#0), Tclass.M0.Expression()) } 
  $Is(#M0.Expression.exprIdentifier(a#28#0#0), Tclass.M0.Expression())
     <==> $IsBox(a#28#0#0, Tclass.M0.Identifier()));

// Constructor $IsAlloc
axiom (forall a#28#0#0: Box, $h: Heap :: 
  { $IsAlloc(#M0.Expression.exprIdentifier(a#28#0#0), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Expression.exprIdentifier(a#28#0#0), Tclass.M0.Expression(), $h)
       <==> $IsAllocBox(a#28#0#0, Tclass.M0.Identifier(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(M0.Expression.id(d), Tclass.M0.Identifier(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprIdentifier_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAllocBox(M0.Expression.id(d), Tclass.M0.Identifier(), $h));

// Constructor literal
axiom (forall a#29#0#0: Box :: 
  { #M0.Expression.exprIdentifier(Lit(a#29#0#0)) } 
  #M0.Expression.exprIdentifier(Lit(a#29#0#0))
     == Lit(#M0.Expression.exprIdentifier(a#29#0#0)));

function M0.Expression.id(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#30#0#0: Box :: 
  { #M0.Expression.exprIdentifier(a#30#0#0) } 
  M0.Expression.id(#M0.Expression.exprIdentifier(a#30#0#0)) == a#30#0#0);

// Constructor function declaration
function #M0.Expression.exprIf(DatatypeType, DatatypeType, DatatypeType) : DatatypeType;

const unique ##M0.Expression.exprIf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#31#0#0: DatatypeType, a#31#1#0: DatatypeType, a#31#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(a#31#0#0, a#31#1#0, a#31#2#0) } 
  DatatypeCtorId(#M0.Expression.exprIf(a#31#0#0, a#31#1#0, a#31#2#0))
     == ##M0.Expression.exprIf);
}

function M0.Expression.exprIf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprIf_q(d) } 
  M0.Expression.exprIf_q(d) <==> DatatypeCtorId(d) == ##M0.Expression.exprIf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprIf_q(d) } 
  M0.Expression.exprIf_q(d)
     ==> (exists a#32#0#0: DatatypeType, a#32#1#0: DatatypeType, a#32#2#0: DatatypeType :: 
      d == #M0.Expression.exprIf(a#32#0#0, a#32#1#0, a#32#2#0)));

// Constructor $Is
axiom (forall a#33#0#0: DatatypeType, a#33#1#0: DatatypeType, a#33#2#0: DatatypeType :: 
  { $Is(#M0.Expression.exprIf(a#33#0#0, a#33#1#0, a#33#2#0), Tclass.M0.Expression()) } 
  $Is(#M0.Expression.exprIf(a#33#0#0, a#33#1#0, a#33#2#0), Tclass.M0.Expression())
     <==> $Is(a#33#0#0, Tclass.M0.Expression())
       && $Is(a#33#1#0, Tclass.M0.Expression())
       && $Is(a#33#2#0, Tclass.M0.Expression()));

// Constructor $IsAlloc
axiom (forall a#33#0#0: DatatypeType, a#33#1#0: DatatypeType, a#33#2#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Expression.exprIf(a#33#0#0, a#33#1#0, a#33#2#0), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Expression.exprIf(a#33#0#0, a#33#1#0, a#33#2#0), Tclass.M0.Expression(), $h)
       <==> $IsAlloc(a#33#0#0, Tclass.M0.Expression(), $h)
         && $IsAlloc(a#33#1#0, Tclass.M0.Expression(), $h)
         && $IsAlloc(a#33#2#0, Tclass.M0.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.cond(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprIf_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.cond(d), Tclass.M0.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.ifTrue(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprIf_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.ifTrue(d), Tclass.M0.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.ifFalse(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprIf_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.ifFalse(d), Tclass.M0.Expression(), $h));

// Constructor literal
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType, a#34#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(Lit(a#34#0#0), Lit(a#34#1#0), Lit(a#34#2#0)) } 
  #M0.Expression.exprIf(Lit(a#34#0#0), Lit(a#34#1#0), Lit(a#34#2#0))
     == Lit(#M0.Expression.exprIf(a#34#0#0, a#34#1#0, a#34#2#0)));

function M0.Expression.cond(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: DatatypeType, a#35#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(a#35#0#0, a#35#1#0, a#35#2#0) } 
  M0.Expression.cond(#M0.Expression.exprIf(a#35#0#0, a#35#1#0, a#35#2#0))
     == a#35#0#0);

// Inductive rank
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: DatatypeType, a#36#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(a#36#0#0, a#36#1#0, a#36#2#0) } 
  DtRank(a#36#0#0) < DtRank(#M0.Expression.exprIf(a#36#0#0, a#36#1#0, a#36#2#0)));

function M0.Expression.ifTrue(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#37#0#0: DatatypeType, a#37#1#0: DatatypeType, a#37#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(a#37#0#0, a#37#1#0, a#37#2#0) } 
  M0.Expression.ifTrue(#M0.Expression.exprIf(a#37#0#0, a#37#1#0, a#37#2#0))
     == a#37#1#0);

// Inductive rank
axiom (forall a#38#0#0: DatatypeType, a#38#1#0: DatatypeType, a#38#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(a#38#0#0, a#38#1#0, a#38#2#0) } 
  DtRank(a#38#1#0) < DtRank(#M0.Expression.exprIf(a#38#0#0, a#38#1#0, a#38#2#0)));

function M0.Expression.ifFalse(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#39#0#0: DatatypeType, a#39#1#0: DatatypeType, a#39#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(a#39#0#0, a#39#1#0, a#39#2#0) } 
  M0.Expression.ifFalse(#M0.Expression.exprIf(a#39#0#0, a#39#1#0, a#39#2#0))
     == a#39#2#0);

// Inductive rank
axiom (forall a#40#0#0: DatatypeType, a#40#1#0: DatatypeType, a#40#2#0: DatatypeType :: 
  { #M0.Expression.exprIf(a#40#0#0, a#40#1#0, a#40#2#0) } 
  DtRank(a#40#2#0) < DtRank(#M0.Expression.exprIf(a#40#0#0, a#40#1#0, a#40#2#0)));

// Constructor function declaration
function #M0.Expression.exprAnd(DatatypeType, DatatypeType) : DatatypeType;

const unique ##M0.Expression.exprAnd: DtCtorId
uses {
// Constructor identifier
axiom (forall a#41#0#0: DatatypeType, a#41#1#0: DatatypeType :: 
  { #M0.Expression.exprAnd(a#41#0#0, a#41#1#0) } 
  DatatypeCtorId(#M0.Expression.exprAnd(a#41#0#0, a#41#1#0))
     == ##M0.Expression.exprAnd);
}

function M0.Expression.exprAnd_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprAnd_q(d) } 
  M0.Expression.exprAnd_q(d) <==> DatatypeCtorId(d) == ##M0.Expression.exprAnd);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprAnd_q(d) } 
  M0.Expression.exprAnd_q(d)
     ==> (exists a#42#0#0: DatatypeType, a#42#1#0: DatatypeType :: 
      d == #M0.Expression.exprAnd(a#42#0#0, a#42#1#0)));

// Constructor $Is
axiom (forall a#43#0#0: DatatypeType, a#43#1#0: DatatypeType :: 
  { $Is(#M0.Expression.exprAnd(a#43#0#0, a#43#1#0), Tclass.M0.Expression()) } 
  $Is(#M0.Expression.exprAnd(a#43#0#0, a#43#1#0), Tclass.M0.Expression())
     <==> $Is(a#43#0#0, Tclass.M0.Expression()) && $Is(a#43#1#0, Tclass.M0.Expression()));

// Constructor $IsAlloc
axiom (forall a#43#0#0: DatatypeType, a#43#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Expression.exprAnd(a#43#0#0, a#43#1#0), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Expression.exprAnd(a#43#0#0, a#43#1#0), Tclass.M0.Expression(), $h)
       <==> $IsAlloc(a#43#0#0, Tclass.M0.Expression(), $h)
         && $IsAlloc(a#43#1#0, Tclass.M0.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.conj0(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprAnd_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.conj0(d), Tclass.M0.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.conj1(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprAnd_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.conj1(d), Tclass.M0.Expression(), $h));

// Constructor literal
axiom (forall a#44#0#0: DatatypeType, a#44#1#0: DatatypeType :: 
  { #M0.Expression.exprAnd(Lit(a#44#0#0), Lit(a#44#1#0)) } 
  #M0.Expression.exprAnd(Lit(a#44#0#0), Lit(a#44#1#0))
     == Lit(#M0.Expression.exprAnd(a#44#0#0, a#44#1#0)));

function M0.Expression.conj0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#45#0#0: DatatypeType, a#45#1#0: DatatypeType :: 
  { #M0.Expression.exprAnd(a#45#0#0, a#45#1#0) } 
  M0.Expression.conj0(#M0.Expression.exprAnd(a#45#0#0, a#45#1#0)) == a#45#0#0);

// Inductive rank
axiom (forall a#46#0#0: DatatypeType, a#46#1#0: DatatypeType :: 
  { #M0.Expression.exprAnd(a#46#0#0, a#46#1#0) } 
  DtRank(a#46#0#0) < DtRank(#M0.Expression.exprAnd(a#46#0#0, a#46#1#0)));

function M0.Expression.conj1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#47#0#0: DatatypeType, a#47#1#0: DatatypeType :: 
  { #M0.Expression.exprAnd(a#47#0#0, a#47#1#0) } 
  M0.Expression.conj1(#M0.Expression.exprAnd(a#47#0#0, a#47#1#0)) == a#47#1#0);

// Inductive rank
axiom (forall a#48#0#0: DatatypeType, a#48#1#0: DatatypeType :: 
  { #M0.Expression.exprAnd(a#48#0#0, a#48#1#0) } 
  DtRank(a#48#1#0) < DtRank(#M0.Expression.exprAnd(a#48#0#0, a#48#1#0)));

// Constructor function declaration
function #M0.Expression.exprOr(DatatypeType, DatatypeType) : DatatypeType;

const unique ##M0.Expression.exprOr: DtCtorId
uses {
// Constructor identifier
axiom (forall a#49#0#0: DatatypeType, a#49#1#0: DatatypeType :: 
  { #M0.Expression.exprOr(a#49#0#0, a#49#1#0) } 
  DatatypeCtorId(#M0.Expression.exprOr(a#49#0#0, a#49#1#0))
     == ##M0.Expression.exprOr);
}

function M0.Expression.exprOr_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprOr_q(d) } 
  M0.Expression.exprOr_q(d) <==> DatatypeCtorId(d) == ##M0.Expression.exprOr);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprOr_q(d) } 
  M0.Expression.exprOr_q(d)
     ==> (exists a#50#0#0: DatatypeType, a#50#1#0: DatatypeType :: 
      d == #M0.Expression.exprOr(a#50#0#0, a#50#1#0)));

// Constructor $Is
axiom (forall a#51#0#0: DatatypeType, a#51#1#0: DatatypeType :: 
  { $Is(#M0.Expression.exprOr(a#51#0#0, a#51#1#0), Tclass.M0.Expression()) } 
  $Is(#M0.Expression.exprOr(a#51#0#0, a#51#1#0), Tclass.M0.Expression())
     <==> $Is(a#51#0#0, Tclass.M0.Expression()) && $Is(a#51#1#0, Tclass.M0.Expression()));

// Constructor $IsAlloc
axiom (forall a#51#0#0: DatatypeType, a#51#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Expression.exprOr(a#51#0#0, a#51#1#0), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Expression.exprOr(a#51#0#0, a#51#1#0), Tclass.M0.Expression(), $h)
       <==> $IsAlloc(a#51#0#0, Tclass.M0.Expression(), $h)
         && $IsAlloc(a#51#1#0, Tclass.M0.Expression(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.disj0(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprOr_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.disj0(d), Tclass.M0.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.disj1(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprOr_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.disj1(d), Tclass.M0.Expression(), $h));

// Constructor literal
axiom (forall a#52#0#0: DatatypeType, a#52#1#0: DatatypeType :: 
  { #M0.Expression.exprOr(Lit(a#52#0#0), Lit(a#52#1#0)) } 
  #M0.Expression.exprOr(Lit(a#52#0#0), Lit(a#52#1#0))
     == Lit(#M0.Expression.exprOr(a#52#0#0, a#52#1#0)));

function M0.Expression.disj0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#53#0#0: DatatypeType, a#53#1#0: DatatypeType :: 
  { #M0.Expression.exprOr(a#53#0#0, a#53#1#0) } 
  M0.Expression.disj0(#M0.Expression.exprOr(a#53#0#0, a#53#1#0)) == a#53#0#0);

// Inductive rank
axiom (forall a#54#0#0: DatatypeType, a#54#1#0: DatatypeType :: 
  { #M0.Expression.exprOr(a#54#0#0, a#54#1#0) } 
  DtRank(a#54#0#0) < DtRank(#M0.Expression.exprOr(a#54#0#0, a#54#1#0)));

function M0.Expression.disj1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#55#0#0: DatatypeType, a#55#1#0: DatatypeType :: 
  { #M0.Expression.exprOr(a#55#0#0, a#55#1#0) } 
  M0.Expression.disj1(#M0.Expression.exprOr(a#55#0#0, a#55#1#0)) == a#55#1#0);

// Inductive rank
axiom (forall a#56#0#0: DatatypeType, a#56#1#0: DatatypeType :: 
  { #M0.Expression.exprOr(a#56#0#0, a#56#1#0) } 
  DtRank(a#56#1#0) < DtRank(#M0.Expression.exprOr(a#56#0#0, a#56#1#0)));

// Constructor function declaration
function #M0.Expression.exprInvocation(DatatypeType, Seq) : DatatypeType;

const unique ##M0.Expression.exprInvocation: DtCtorId
uses {
// Constructor identifier
axiom (forall a#57#0#0: DatatypeType, a#57#1#0: Seq :: 
  { #M0.Expression.exprInvocation(a#57#0#0, a#57#1#0) } 
  DatatypeCtorId(#M0.Expression.exprInvocation(a#57#0#0, a#57#1#0))
     == ##M0.Expression.exprInvocation);
}

function M0.Expression.exprInvocation_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprInvocation_q(d) } 
  M0.Expression.exprInvocation_q(d)
     <==> DatatypeCtorId(d) == ##M0.Expression.exprInvocation);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprInvocation_q(d) } 
  M0.Expression.exprInvocation_q(d)
     ==> (exists a#58#0#0: DatatypeType, a#58#1#0: Seq :: 
      d == #M0.Expression.exprInvocation(a#58#0#0, a#58#1#0)));

// Constructor $Is
axiom (forall a#59#0#0: DatatypeType, a#59#1#0: Seq :: 
  { $Is(#M0.Expression.exprInvocation(a#59#0#0, a#59#1#0), Tclass.M0.Expression()) } 
  $Is(#M0.Expression.exprInvocation(a#59#0#0, a#59#1#0), Tclass.M0.Expression())
     <==> $Is(a#59#0#0, Tclass.M0.Expression())
       && $Is(a#59#1#0, TSeq(Tclass.M0.Expression())));

// Constructor $IsAlloc
axiom (forall a#59#0#0: DatatypeType, a#59#1#0: Seq, $h: Heap :: 
  { $IsAlloc(#M0.Expression.exprInvocation(a#59#0#0, a#59#1#0), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Expression.exprInvocation(a#59#0#0, a#59#1#0), Tclass.M0.Expression(), $h)
       <==> $IsAlloc(a#59#0#0, Tclass.M0.Expression(), $h)
         && $IsAlloc(a#59#1#0, TSeq(Tclass.M0.Expression()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.fun(d), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprInvocation_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.fun(d), Tclass.M0.Expression(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.args(d), TSeq(Tclass.M0.Expression()), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprInvocation_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.args(d), TSeq(Tclass.M0.Expression()), $h));

// Constructor literal
axiom (forall a#60#0#0: DatatypeType, a#60#1#0: Seq :: 
  { #M0.Expression.exprInvocation(Lit(a#60#0#0), Lit(a#60#1#0)) } 
  #M0.Expression.exprInvocation(Lit(a#60#0#0), Lit(a#60#1#0))
     == Lit(#M0.Expression.exprInvocation(a#60#0#0, a#60#1#0)));

function M0.Expression.fun(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#61#0#0: DatatypeType, a#61#1#0: Seq :: 
  { #M0.Expression.exprInvocation(a#61#0#0, a#61#1#0) } 
  M0.Expression.fun(#M0.Expression.exprInvocation(a#61#0#0, a#61#1#0)) == a#61#0#0);

// Inductive rank
axiom (forall a#62#0#0: DatatypeType, a#62#1#0: Seq :: 
  { #M0.Expression.exprInvocation(a#62#0#0, a#62#1#0) } 
  DtRank(a#62#0#0) < DtRank(#M0.Expression.exprInvocation(a#62#0#0, a#62#1#0)));

function M0.Expression.args(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#63#0#0: DatatypeType, a#63#1#0: Seq :: 
  { #M0.Expression.exprInvocation(a#63#0#0, a#63#1#0) } 
  M0.Expression.args(#M0.Expression.exprInvocation(a#63#0#0, a#63#1#0))
     == a#63#1#0);

// Inductive seq element rank
axiom (forall a#64#0#0: DatatypeType, a#64#1#0: Seq, i: int :: 
  { Seq#Index(a#64#1#0, i), #M0.Expression.exprInvocation(a#64#0#0, a#64#1#0) } 
  0 <= i && i < Seq#Length(a#64#1#0)
     ==> DtRank($Unbox(Seq#Index(a#64#1#0, i)): DatatypeType)
       < DtRank(#M0.Expression.exprInvocation(a#64#0#0, a#64#1#0)));

// Inductive seq rank
axiom (forall a#65#0#0: DatatypeType, a#65#1#0: Seq :: 
  { #M0.Expression.exprInvocation(a#65#0#0, a#65#1#0) } 
  Seq#Rank(a#65#1#0) < DtRank(#M0.Expression.exprInvocation(a#65#0#0, a#65#1#0)));

// Constructor function declaration
function #M0.Expression.exprError(DatatypeType) : DatatypeType;

const unique ##M0.Expression.exprError: DtCtorId
uses {
// Constructor identifier
axiom (forall a#66#0#0: DatatypeType :: 
  { #M0.Expression.exprError(a#66#0#0) } 
  DatatypeCtorId(#M0.Expression.exprError(a#66#0#0)) == ##M0.Expression.exprError);
}

function M0.Expression.exprError_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprError_q(d) } 
  M0.Expression.exprError_q(d) <==> DatatypeCtorId(d) == ##M0.Expression.exprError);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprError_q(d) } 
  M0.Expression.exprError_q(d)
     ==> (exists a#67#0#0: DatatypeType :: d == #M0.Expression.exprError(a#67#0#0)));

function Tclass.M0.Reason() : Ty
uses {
// Tclass.M0.Reason Tag
axiom Tag(Tclass.M0.Reason()) == Tagclass.M0.Reason
   && TagFamily(Tclass.M0.Reason()) == tytagFamily$Reason;
}

const unique Tagclass.M0.Reason: TyTag;

// Box/unbox axiom for Tclass.M0.Reason
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M0.Reason()) } 
  $IsBox(bx, Tclass.M0.Reason())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M0.Reason()));

// Constructor $Is
axiom (forall a#68#0#0: DatatypeType :: 
  { $Is(#M0.Expression.exprError(a#68#0#0), Tclass.M0.Expression()) } 
  $Is(#M0.Expression.exprError(a#68#0#0), Tclass.M0.Expression())
     <==> $Is(a#68#0#0, Tclass.M0.Reason()));

// Constructor $IsAlloc
axiom (forall a#68#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Expression.exprError(a#68#0#0), Tclass.M0.Expression(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Expression.exprError(a#68#0#0), Tclass.M0.Expression(), $h)
       <==> $IsAlloc(a#68#0#0, Tclass.M0.Reason(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Expression.r(d), Tclass.M0.Reason(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Expression.exprError_q(d)
       && $IsAlloc(d, Tclass.M0.Expression(), $h)
     ==> $IsAlloc(M0.Expression.r(d), Tclass.M0.Reason(), $h));

// Constructor literal
axiom (forall a#69#0#0: DatatypeType :: 
  { #M0.Expression.exprError(Lit(a#69#0#0)) } 
  #M0.Expression.exprError(Lit(a#69#0#0))
     == Lit(#M0.Expression.exprError(a#69#0#0)));

function M0.Expression.r(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#70#0#0: DatatypeType :: 
  { #M0.Expression.exprError(a#70#0#0) } 
  M0.Expression.r(#M0.Expression.exprError(a#70#0#0)) == a#70#0#0);

// Inductive rank
axiom (forall a#71#0#0: DatatypeType :: 
  { #M0.Expression.exprError(a#71#0#0) } 
  DtRank(a#71#0#0) < DtRank(#M0.Expression.exprError(a#71#0#0)));

// Depth-one case-split function
function $IsA#M0.Expression(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M0.Expression(d) } 
  $IsA#M0.Expression(d)
     ==> M0.Expression.exprLiteral_q(d)
       || M0.Expression.exprIdentifier_q(d)
       || M0.Expression.exprIf_q(d)
       || M0.Expression.exprAnd_q(d)
       || M0.Expression.exprOr_q(d)
       || M0.Expression.exprInvocation_q(d)
       || M0.Expression.exprError_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M0.Expression.exprError_q(d), $Is(d, Tclass.M0.Expression()) } 
    { M0.Expression.exprInvocation_q(d), $Is(d, Tclass.M0.Expression()) } 
    { M0.Expression.exprOr_q(d), $Is(d, Tclass.M0.Expression()) } 
    { M0.Expression.exprAnd_q(d), $Is(d, Tclass.M0.Expression()) } 
    { M0.Expression.exprIf_q(d), $Is(d, Tclass.M0.Expression()) } 
    { M0.Expression.exprIdentifier_q(d), $Is(d, Tclass.M0.Expression()) } 
    { M0.Expression.exprLiteral_q(d), $Is(d, Tclass.M0.Expression()) } 
  $Is(d, Tclass.M0.Expression())
     ==> M0.Expression.exprLiteral_q(d)
       || M0.Expression.exprIdentifier_q(d)
       || M0.Expression.exprIf_q(d)
       || M0.Expression.exprAnd_q(d)
       || M0.Expression.exprOr_q(d)
       || M0.Expression.exprInvocation_q(d)
       || M0.Expression.exprError_q(d));

// Datatype extensional equality declaration
function M0.Expression#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M0.Expression.exprLiteral
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b), M0.Expression.exprLiteral_q(a) } 
    { M0.Expression#Equal(a, b), M0.Expression.exprLiteral_q(b) } 
  M0.Expression.exprLiteral_q(a) && M0.Expression.exprLiteral_q(b)
     ==> (M0.Expression#Equal(a, b)
       <==> M0.Literal#Equal(M0.Expression.lit(a), M0.Expression.lit(b))));

// Datatype extensional equality definition: #M0.Expression.exprIdentifier
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b), M0.Expression.exprIdentifier_q(a) } 
    { M0.Expression#Equal(a, b), M0.Expression.exprIdentifier_q(b) } 
  M0.Expression.exprIdentifier_q(a) && M0.Expression.exprIdentifier_q(b)
     ==> (M0.Expression#Equal(a, b) <==> M0.Expression.id(a) == M0.Expression.id(b)));

// Datatype extensional equality definition: #M0.Expression.exprIf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b), M0.Expression.exprIf_q(a) } 
    { M0.Expression#Equal(a, b), M0.Expression.exprIf_q(b) } 
  M0.Expression.exprIf_q(a) && M0.Expression.exprIf_q(b)
     ==> (M0.Expression#Equal(a, b)
       <==> M0.Expression#Equal(M0.Expression.cond(a), M0.Expression.cond(b))
         && M0.Expression#Equal(M0.Expression.ifTrue(a), M0.Expression.ifTrue(b))
         && M0.Expression#Equal(M0.Expression.ifFalse(a), M0.Expression.ifFalse(b))));

// Datatype extensional equality definition: #M0.Expression.exprAnd
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b), M0.Expression.exprAnd_q(a) } 
    { M0.Expression#Equal(a, b), M0.Expression.exprAnd_q(b) } 
  M0.Expression.exprAnd_q(a) && M0.Expression.exprAnd_q(b)
     ==> (M0.Expression#Equal(a, b)
       <==> M0.Expression#Equal(M0.Expression.conj0(a), M0.Expression.conj0(b))
         && M0.Expression#Equal(M0.Expression.conj1(a), M0.Expression.conj1(b))));

// Datatype extensional equality definition: #M0.Expression.exprOr
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b), M0.Expression.exprOr_q(a) } 
    { M0.Expression#Equal(a, b), M0.Expression.exprOr_q(b) } 
  M0.Expression.exprOr_q(a) && M0.Expression.exprOr_q(b)
     ==> (M0.Expression#Equal(a, b)
       <==> M0.Expression#Equal(M0.Expression.disj0(a), M0.Expression.disj0(b))
         && M0.Expression#Equal(M0.Expression.disj1(a), M0.Expression.disj1(b))));

// Datatype extensional equality definition: #M0.Expression.exprInvocation
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b), M0.Expression.exprInvocation_q(a) } 
    { M0.Expression#Equal(a, b), M0.Expression.exprInvocation_q(b) } 
  M0.Expression.exprInvocation_q(a) && M0.Expression.exprInvocation_q(b)
     ==> (M0.Expression#Equal(a, b)
       <==> M0.Expression#Equal(M0.Expression.fun(a), M0.Expression.fun(b))
         && Seq#Equal(M0.Expression.args(a), M0.Expression.args(b))));

// Datatype extensional equality definition: #M0.Expression.exprError
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b), M0.Expression.exprError_q(a) } 
    { M0.Expression#Equal(a, b), M0.Expression.exprError_q(b) } 
  M0.Expression.exprError_q(a) && M0.Expression.exprError_q(b)
     ==> (M0.Expression#Equal(a, b)
       <==> M0.Reason#Equal(M0.Expression.r(a), M0.Expression.r(b))));

// Datatype extensionality axiom: M0.Expression
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Expression#Equal(a, b) } 
  M0.Expression#Equal(a, b) <==> a == b);

const unique class.M0.Expression: ClassName;

// Constructor function declaration
function #M0.Literal.litTrue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litTrue()) == ##M0.Literal.litTrue;
// Constructor $Is
axiom $Is(#M0.Literal.litTrue(), Tclass.M0.Literal());
// Constructor literal
axiom #M0.Literal.litTrue() == Lit(#M0.Literal.litTrue());
}

const unique ##M0.Literal.litTrue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litTrue()) == ##M0.Literal.litTrue;
}

function M0.Literal.litTrue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litTrue_q(d) } 
  M0.Literal.litTrue_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litTrue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litTrue_q(d) } 
  M0.Literal.litTrue_q(d) ==> d == #M0.Literal.litTrue());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M0.Literal.litTrue(), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#M0.Literal.litTrue(), Tclass.M0.Literal(), $h));

// Constructor function declaration
function #M0.Literal.litFalse() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litFalse()) == ##M0.Literal.litFalse;
// Constructor $Is
axiom $Is(#M0.Literal.litFalse(), Tclass.M0.Literal());
// Constructor literal
axiom #M0.Literal.litFalse() == Lit(#M0.Literal.litFalse());
}

const unique ##M0.Literal.litFalse: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litFalse()) == ##M0.Literal.litFalse;
}

function M0.Literal.litFalse_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litFalse_q(d) } 
  M0.Literal.litFalse_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litFalse);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litFalse_q(d) } 
  M0.Literal.litFalse_q(d) ==> d == #M0.Literal.litFalse());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M0.Literal.litFalse(), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#M0.Literal.litFalse(), Tclass.M0.Literal(), $h));

// Constructor function declaration
function #M0.Literal.litUndefined() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litUndefined()) == ##M0.Literal.litUndefined;
// Constructor $Is
axiom $Is(#M0.Literal.litUndefined(), Tclass.M0.Literal());
// Constructor literal
axiom #M0.Literal.litUndefined() == Lit(#M0.Literal.litUndefined());
}

const unique ##M0.Literal.litUndefined: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litUndefined()) == ##M0.Literal.litUndefined;
}

function M0.Literal.litUndefined_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litUndefined_q(d) } 
  M0.Literal.litUndefined_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litUndefined);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litUndefined_q(d) } 
  M0.Literal.litUndefined_q(d) ==> d == #M0.Literal.litUndefined());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M0.Literal.litUndefined(), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#M0.Literal.litUndefined(), Tclass.M0.Literal(), $h));

// Constructor function declaration
function #M0.Literal.litNull() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litNull()) == ##M0.Literal.litNull;
// Constructor $Is
axiom $Is(#M0.Literal.litNull(), Tclass.M0.Literal());
// Constructor literal
axiom #M0.Literal.litNull() == Lit(#M0.Literal.litNull());
}

const unique ##M0.Literal.litNull: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Literal.litNull()) == ##M0.Literal.litNull;
}

function M0.Literal.litNull_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litNull_q(d) } 
  M0.Literal.litNull_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litNull);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litNull_q(d) } 
  M0.Literal.litNull_q(d) ==> d == #M0.Literal.litNull());

// Constructor $IsAlloc
axiom (forall $h: Heap :: 
  { $IsAlloc(#M0.Literal.litNull(), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#M0.Literal.litNull(), Tclass.M0.Literal(), $h));

// Constructor function declaration
function #M0.Literal.litNumber(int) : DatatypeType;

const unique ##M0.Literal.litNumber: DtCtorId
uses {
// Constructor identifier
axiom (forall a#88#0#0: int :: 
  { #M0.Literal.litNumber(a#88#0#0) } 
  DatatypeCtorId(#M0.Literal.litNumber(a#88#0#0)) == ##M0.Literal.litNumber);
}

function M0.Literal.litNumber_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litNumber_q(d) } 
  M0.Literal.litNumber_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litNumber);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litNumber_q(d) } 
  M0.Literal.litNumber_q(d)
     ==> (exists a#89#0#0: int :: d == #M0.Literal.litNumber(a#89#0#0)));

// Constructor $Is
axiom (forall a#90#0#0: int :: 
  { $Is(#M0.Literal.litNumber(a#90#0#0), Tclass.M0.Literal()) } 
  $Is(#M0.Literal.litNumber(a#90#0#0), Tclass.M0.Literal())
     <==> $Is(a#90#0#0, TInt));

// Constructor $IsAlloc
axiom (forall a#90#0#0: int, $h: Heap :: 
  { $IsAlloc(#M0.Literal.litNumber(a#90#0#0), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Literal.litNumber(a#90#0#0), Tclass.M0.Literal(), $h)
       <==> $IsAlloc(a#90#0#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Literal.num(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      M0.Literal.litNumber_q(d)
       && $IsAlloc(d, Tclass.M0.Literal(), $h)
     ==> $IsAlloc(M0.Literal.num(d), TInt, $h));

// Constructor literal
axiom (forall a#91#0#0: int :: 
  { #M0.Literal.litNumber(LitInt(a#91#0#0)) } 
  #M0.Literal.litNumber(LitInt(a#91#0#0)) == Lit(#M0.Literal.litNumber(a#91#0#0)));

function M0.Literal.num(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#92#0#0: int :: 
  { #M0.Literal.litNumber(a#92#0#0) } 
  M0.Literal.num(#M0.Literal.litNumber(a#92#0#0)) == a#92#0#0);

// Constructor function declaration
function #M0.Literal.litString(Seq) : DatatypeType;

const unique ##M0.Literal.litString: DtCtorId
uses {
// Constructor identifier
axiom (forall a#93#0#0: Seq :: 
  { #M0.Literal.litString(a#93#0#0) } 
  DatatypeCtorId(#M0.Literal.litString(a#93#0#0)) == ##M0.Literal.litString);
}

function M0.Literal.litString_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litString_q(d) } 
  M0.Literal.litString_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litString);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litString_q(d) } 
  M0.Literal.litString_q(d)
     ==> (exists a#94#0#0: Seq :: d == #M0.Literal.litString(a#94#0#0)));

// Constructor $Is
axiom (forall a#95#0#0: Seq :: 
  { $Is(#M0.Literal.litString(a#95#0#0), Tclass.M0.Literal()) } 
  $Is(#M0.Literal.litString(a#95#0#0), Tclass.M0.Literal())
     <==> $Is(a#95#0#0, TSeq(TChar)));

// Constructor $IsAlloc
axiom (forall a#95#0#0: Seq, $h: Heap :: 
  { $IsAlloc(#M0.Literal.litString(a#95#0#0), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Literal.litString(a#95#0#0), Tclass.M0.Literal(), $h)
       <==> $IsAlloc(a#95#0#0, TSeq(TChar), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Literal.str(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Literal.litString_q(d)
       && $IsAlloc(d, Tclass.M0.Literal(), $h)
     ==> $IsAlloc(M0.Literal.str(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#96#0#0: Seq :: 
  { #M0.Literal.litString(Lit(a#96#0#0)) } 
  #M0.Literal.litString(Lit(a#96#0#0)) == Lit(#M0.Literal.litString(a#96#0#0)));

function M0.Literal.str(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#97#0#0: Seq :: 
  { #M0.Literal.litString(a#97#0#0) } 
  M0.Literal.str(#M0.Literal.litString(a#97#0#0)) == a#97#0#0);

// Inductive seq element rank
axiom (forall a#98#0#0: Seq, i: int :: 
  { Seq#Index(a#98#0#0, i), #M0.Literal.litString(a#98#0#0) } 
  0 <= i && i < Seq#Length(a#98#0#0)
     ==> DtRank($Unbox(Seq#Index(a#98#0#0, i)): DatatypeType)
       < DtRank(#M0.Literal.litString(a#98#0#0)));

// Inductive seq rank
axiom (forall a#99#0#0: Seq :: 
  { #M0.Literal.litString(a#99#0#0) } 
  Seq#Rank(a#99#0#0) < DtRank(#M0.Literal.litString(a#99#0#0)));

// Constructor function declaration
function #M0.Literal.litPrimitive(DatatypeType) : DatatypeType;

const unique ##M0.Literal.litPrimitive: DtCtorId
uses {
// Constructor identifier
axiom (forall a#100#0#0: DatatypeType :: 
  { #M0.Literal.litPrimitive(a#100#0#0) } 
  DatatypeCtorId(#M0.Literal.litPrimitive(a#100#0#0)) == ##M0.Literal.litPrimitive);
}

function M0.Literal.litPrimitive_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litPrimitive_q(d) } 
  M0.Literal.litPrimitive_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litPrimitive);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litPrimitive_q(d) } 
  M0.Literal.litPrimitive_q(d)
     ==> (exists a#101#0#0: DatatypeType :: d == #M0.Literal.litPrimitive(a#101#0#0)));

// Constructor $Is
axiom (forall a#102#0#0: DatatypeType :: 
  { $Is(#M0.Literal.litPrimitive(a#102#0#0), Tclass.M0.Literal()) } 
  $Is(#M0.Literal.litPrimitive(a#102#0#0), Tclass.M0.Literal())
     <==> $Is(a#102#0#0, Tclass.M0.Primitive()));

// Constructor $IsAlloc
axiom (forall a#102#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#M0.Literal.litPrimitive(a#102#0#0), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Literal.litPrimitive(a#102#0#0), Tclass.M0.Literal(), $h)
       <==> $IsAlloc(a#102#0#0, Tclass.M0.Primitive(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Literal.prim(d), Tclass.M0.Primitive(), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Literal.litPrimitive_q(d)
       && $IsAlloc(d, Tclass.M0.Literal(), $h)
     ==> $IsAlloc(M0.Literal.prim(d), Tclass.M0.Primitive(), $h));

// Constructor literal
axiom (forall a#103#0#0: DatatypeType :: 
  { #M0.Literal.litPrimitive(Lit(a#103#0#0)) } 
  #M0.Literal.litPrimitive(Lit(a#103#0#0))
     == Lit(#M0.Literal.litPrimitive(a#103#0#0)));

function M0.Literal.prim(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#104#0#0: DatatypeType :: 
  { #M0.Literal.litPrimitive(a#104#0#0) } 
  M0.Literal.prim(#M0.Literal.litPrimitive(a#104#0#0)) == a#104#0#0);

// Inductive rank
axiom (forall a#105#0#0: DatatypeType :: 
  { #M0.Literal.litPrimitive(a#105#0#0) } 
  DtRank(a#105#0#0) < DtRank(#M0.Literal.litPrimitive(a#105#0#0)));

// Constructor function declaration
function #M0.Literal.litArrOfPaths(Set) : DatatypeType;

const unique ##M0.Literal.litArrOfPaths: DtCtorId
uses {
// Constructor identifier
axiom (forall a#106#0#0: Set :: 
  { #M0.Literal.litArrOfPaths(a#106#0#0) } 
  DatatypeCtorId(#M0.Literal.litArrOfPaths(a#106#0#0))
     == ##M0.Literal.litArrOfPaths);
}

function M0.Literal.litArrOfPaths_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litArrOfPaths_q(d) } 
  M0.Literal.litArrOfPaths_q(d)
     <==> DatatypeCtorId(d) == ##M0.Literal.litArrOfPaths);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litArrOfPaths_q(d) } 
  M0.Literal.litArrOfPaths_q(d)
     ==> (exists a#107#0#0: Set :: d == #M0.Literal.litArrOfPaths(a#107#0#0)));

// Constructor $Is
axiom (forall a#108#0#0: Set :: 
  { $Is(#M0.Literal.litArrOfPaths(a#108#0#0), Tclass.M0.Literal()) } 
  $Is(#M0.Literal.litArrOfPaths(a#108#0#0), Tclass.M0.Literal())
     <==> $Is(a#108#0#0, TSet(Tclass.M0.Path())));

// Constructor $IsAlloc
axiom (forall a#108#0#0: Set, $h: Heap :: 
  { $IsAlloc(#M0.Literal.litArrOfPaths(a#108#0#0), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Literal.litArrOfPaths(a#108#0#0), Tclass.M0.Literal(), $h)
       <==> $IsAlloc(a#108#0#0, TSet(Tclass.M0.Path()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Literal.paths(d), TSet(Tclass.M0.Path()), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Literal.litArrOfPaths_q(d)
       && $IsAlloc(d, Tclass.M0.Literal(), $h)
     ==> $IsAlloc(M0.Literal.paths(d), TSet(Tclass.M0.Path()), $h));

// Constructor literal
axiom (forall a#109#0#0: Set :: 
  { #M0.Literal.litArrOfPaths(Lit(a#109#0#0)) } 
  #M0.Literal.litArrOfPaths(Lit(a#109#0#0))
     == Lit(#M0.Literal.litArrOfPaths(a#109#0#0)));

function M0.Literal.paths(DatatypeType) : Set;

// Constructor injectivity
axiom (forall a#110#0#0: Set :: 
  { #M0.Literal.litArrOfPaths(a#110#0#0) } 
  M0.Literal.paths(#M0.Literal.litArrOfPaths(a#110#0#0)) == a#110#0#0);

// Inductive set element rank
axiom (forall a#111#0#0: Set, d: DatatypeType :: 
  { Set#IsMember(a#111#0#0, $Box(d)), #M0.Literal.litArrOfPaths(a#111#0#0) } 
  Set#IsMember(a#111#0#0, $Box(d))
     ==> DtRank(d) < DtRank(#M0.Literal.litArrOfPaths(a#111#0#0)));

// Constructor function declaration
function #M0.Literal.litArrOfStrings(Set) : DatatypeType;

const unique ##M0.Literal.litArrOfStrings: DtCtorId
uses {
// Constructor identifier
axiom (forall a#112#0#0: Set :: 
  { #M0.Literal.litArrOfStrings(a#112#0#0) } 
  DatatypeCtorId(#M0.Literal.litArrOfStrings(a#112#0#0))
     == ##M0.Literal.litArrOfStrings);
}

function M0.Literal.litArrOfStrings_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litArrOfStrings_q(d) } 
  M0.Literal.litArrOfStrings_q(d)
     <==> DatatypeCtorId(d) == ##M0.Literal.litArrOfStrings);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litArrOfStrings_q(d) } 
  M0.Literal.litArrOfStrings_q(d)
     ==> (exists a#113#0#0: Set :: d == #M0.Literal.litArrOfStrings(a#113#0#0)));

// Constructor $Is
axiom (forall a#114#0#0: Set :: 
  { $Is(#M0.Literal.litArrOfStrings(a#114#0#0), Tclass.M0.Literal()) } 
  $Is(#M0.Literal.litArrOfStrings(a#114#0#0), Tclass.M0.Literal())
     <==> $Is(a#114#0#0, TSet(TSeq(TChar))));

// Constructor $IsAlloc
axiom (forall a#114#0#0: Set, $h: Heap :: 
  { $IsAlloc(#M0.Literal.litArrOfStrings(a#114#0#0), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Literal.litArrOfStrings(a#114#0#0), Tclass.M0.Literal(), $h)
       <==> $IsAlloc(a#114#0#0, TSet(TSeq(TChar)), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Literal.strs(d), TSet(TSeq(TChar)), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Literal.litArrOfStrings_q(d)
       && $IsAlloc(d, Tclass.M0.Literal(), $h)
     ==> $IsAlloc(M0.Literal.strs(d), TSet(TSeq(TChar)), $h));

// Constructor literal
axiom (forall a#115#0#0: Set :: 
  { #M0.Literal.litArrOfStrings(Lit(a#115#0#0)) } 
  #M0.Literal.litArrOfStrings(Lit(a#115#0#0))
     == Lit(#M0.Literal.litArrOfStrings(a#115#0#0)));

function M0.Literal.strs(DatatypeType) : Set;

// Constructor injectivity
axiom (forall a#116#0#0: Set :: 
  { #M0.Literal.litArrOfStrings(a#116#0#0) } 
  M0.Literal.strs(#M0.Literal.litArrOfStrings(a#116#0#0)) == a#116#0#0);

// Inductive set element rank
axiom (forall a#117#0#0: Set, d: DatatypeType :: 
  { Set#IsMember(a#117#0#0, $Box(d)), #M0.Literal.litArrOfStrings(a#117#0#0) } 
  Set#IsMember(a#117#0#0, $Box(d))
     ==> DtRank(d) < DtRank(#M0.Literal.litArrOfStrings(a#117#0#0)));

// Constructor function declaration
function #M0.Literal.litArray(Seq) : DatatypeType;

const unique ##M0.Literal.litArray: DtCtorId
uses {
// Constructor identifier
axiom (forall a#118#0#0: Seq :: 
  { #M0.Literal.litArray(a#118#0#0) } 
  DatatypeCtorId(#M0.Literal.litArray(a#118#0#0)) == ##M0.Literal.litArray);
}

function M0.Literal.litArray_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Literal.litArray_q(d) } 
  M0.Literal.litArray_q(d) <==> DatatypeCtorId(d) == ##M0.Literal.litArray);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Literal.litArray_q(d) } 
  M0.Literal.litArray_q(d)
     ==> (exists a#119#0#0: Seq :: d == #M0.Literal.litArray(a#119#0#0)));

// Constructor $Is
axiom (forall a#120#0#0: Seq :: 
  { $Is(#M0.Literal.litArray(a#120#0#0), Tclass.M0.Literal()) } 
  $Is(#M0.Literal.litArray(a#120#0#0), Tclass.M0.Literal())
     <==> $Is(a#120#0#0, TSeq(Tclass.M0.Expression())));

// Constructor $IsAlloc
axiom (forall a#120#0#0: Seq, $h: Heap :: 
  { $IsAlloc(#M0.Literal.litArray(a#120#0#0), Tclass.M0.Literal(), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Literal.litArray(a#120#0#0), Tclass.M0.Literal(), $h)
       <==> $IsAlloc(a#120#0#0, TSeq(Tclass.M0.Expression()), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(M0.Literal.arr(d), TSeq(Tclass.M0.Expression()), $h) } 
  $IsGoodHeap($h)
       && 
      M0.Literal.litArray_q(d)
       && $IsAlloc(d, Tclass.M0.Literal(), $h)
     ==> $IsAlloc(M0.Literal.arr(d), TSeq(Tclass.M0.Expression()), $h));

// Constructor literal
axiom (forall a#121#0#0: Seq :: 
  { #M0.Literal.litArray(Lit(a#121#0#0)) } 
  #M0.Literal.litArray(Lit(a#121#0#0)) == Lit(#M0.Literal.litArray(a#121#0#0)));

function M0.Literal.arr(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#122#0#0: Seq :: 
  { #M0.Literal.litArray(a#122#0#0) } 
  M0.Literal.arr(#M0.Literal.litArray(a#122#0#0)) == a#122#0#0);

// Inductive seq element rank
axiom (forall a#123#0#0: Seq, i: int :: 
  { Seq#Index(a#123#0#0, i), #M0.Literal.litArray(a#123#0#0) } 
  0 <= i && i < Seq#Length(a#123#0#0)
     ==> DtRank($Unbox(Seq#Index(a#123#0#0, i)): DatatypeType)
       < DtRank(#M0.Literal.litArray(a#123#0#0)));

// Inductive seq rank
axiom (forall a#124#0#0: Seq :: 
  { #M0.Literal.litArray(a#124#0#0) } 
  Seq#Rank(a#124#0#0) < DtRank(#M0.Literal.litArray(a#124#0#0)));

// Depth-one case-split function
function $IsA#M0.Literal(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M0.Literal(d) } 
  $IsA#M0.Literal(d)
     ==> M0.Literal.litTrue_q(d)
       || M0.Literal.litFalse_q(d)
       || M0.Literal.litUndefined_q(d)
       || M0.Literal.litNull_q(d)
       || M0.Literal.litNumber_q(d)
       || M0.Literal.litString_q(d)
       || M0.Literal.litPrimitive_q(d)
       || M0.Literal.litArrOfPaths_q(d)
       || M0.Literal.litArrOfStrings_q(d)
       || M0.Literal.litArray_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M0.Literal.litArray_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litArrOfStrings_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litArrOfPaths_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litPrimitive_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litString_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litNumber_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litNull_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litUndefined_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litFalse_q(d), $Is(d, Tclass.M0.Literal()) } 
    { M0.Literal.litTrue_q(d), $Is(d, Tclass.M0.Literal()) } 
  $Is(d, Tclass.M0.Literal())
     ==> M0.Literal.litTrue_q(d)
       || M0.Literal.litFalse_q(d)
       || M0.Literal.litUndefined_q(d)
       || M0.Literal.litNull_q(d)
       || M0.Literal.litNumber_q(d)
       || M0.Literal.litString_q(d)
       || M0.Literal.litPrimitive_q(d)
       || M0.Literal.litArrOfPaths_q(d)
       || M0.Literal.litArrOfStrings_q(d)
       || M0.Literal.litArray_q(d));

// Datatype extensional equality declaration
function M0.Literal#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M0.Literal.litTrue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litTrue_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litTrue_q(b) } 
  M0.Literal.litTrue_q(a) && M0.Literal.litTrue_q(b) ==> M0.Literal#Equal(a, b));

// Datatype extensional equality definition: #M0.Literal.litFalse
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litFalse_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litFalse_q(b) } 
  M0.Literal.litFalse_q(a) && M0.Literal.litFalse_q(b) ==> M0.Literal#Equal(a, b));

// Datatype extensional equality definition: #M0.Literal.litUndefined
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litUndefined_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litUndefined_q(b) } 
  M0.Literal.litUndefined_q(a) && M0.Literal.litUndefined_q(b)
     ==> M0.Literal#Equal(a, b));

// Datatype extensional equality definition: #M0.Literal.litNull
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litNull_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litNull_q(b) } 
  M0.Literal.litNull_q(a) && M0.Literal.litNull_q(b) ==> M0.Literal#Equal(a, b));

// Datatype extensional equality definition: #M0.Literal.litNumber
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litNumber_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litNumber_q(b) } 
  M0.Literal.litNumber_q(a) && M0.Literal.litNumber_q(b)
     ==> (M0.Literal#Equal(a, b) <==> M0.Literal.num(a) == M0.Literal.num(b)));

// Datatype extensional equality definition: #M0.Literal.litString
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litString_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litString_q(b) } 
  M0.Literal.litString_q(a) && M0.Literal.litString_q(b)
     ==> (M0.Literal#Equal(a, b) <==> Seq#Equal(M0.Literal.str(a), M0.Literal.str(b))));

// Datatype extensional equality definition: #M0.Literal.litPrimitive
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litPrimitive_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litPrimitive_q(b) } 
  M0.Literal.litPrimitive_q(a) && M0.Literal.litPrimitive_q(b)
     ==> (M0.Literal#Equal(a, b)
       <==> M0.Primitive#Equal(M0.Literal.prim(a), M0.Literal.prim(b))));

// Datatype extensional equality definition: #M0.Literal.litArrOfPaths
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litArrOfPaths_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litArrOfPaths_q(b) } 
  M0.Literal.litArrOfPaths_q(a) && M0.Literal.litArrOfPaths_q(b)
     ==> (M0.Literal#Equal(a, b)
       <==> Set#Equal(M0.Literal.paths(a), M0.Literal.paths(b))));

// Datatype extensional equality definition: #M0.Literal.litArrOfStrings
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litArrOfStrings_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litArrOfStrings_q(b) } 
  M0.Literal.litArrOfStrings_q(a) && M0.Literal.litArrOfStrings_q(b)
     ==> (M0.Literal#Equal(a, b) <==> Set#Equal(M0.Literal.strs(a), M0.Literal.strs(b))));

// Datatype extensional equality definition: #M0.Literal.litArray
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b), M0.Literal.litArray_q(a) } 
    { M0.Literal#Equal(a, b), M0.Literal.litArray_q(b) } 
  M0.Literal.litArray_q(a) && M0.Literal.litArray_q(b)
     ==> (M0.Literal#Equal(a, b) <==> Seq#Equal(M0.Literal.arr(a), M0.Literal.arr(b))));

// Datatype extensionality axiom: M0.Literal
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Literal#Equal(a, b) } 
  M0.Literal#Equal(a, b) <==> a == b);

const unique class.M0.Literal: ClassName;

// Constructor function declaration
function #M0.Primitive.primCreatePath() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Primitive.primCreatePath()) == ##M0.Primitive.primCreatePath;
// Constructor $Is
axiom $Is(#M0.Primitive.primCreatePath(), Tclass.M0.Primitive());
// Constructor literal
axiom #M0.Primitive.primCreatePath() == Lit(#M0.Primitive.primCreatePath());
}

const unique ##M0.Primitive.primCreatePath: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Primitive.primCreatePath()) == ##M0.Primitive.primCreatePath;
}

function M0.Primitive.primCreatePath_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Primitive.primCreatePath_q(d) } 
  M0.Primitive.primCreatePath_q(d)
     <==> DatatypeCtorId(d) == ##M0.Primitive.primCreatePath);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Primitive.primCreatePath_q(d) } 
  M0.Primitive.primCreatePath_q(d) ==> d == #M0.Primitive.primCreatePath());

// Constructor function declaration
function #M0.Primitive.primExec() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Primitive.primExec()) == ##M0.Primitive.primExec;
// Constructor $Is
axiom $Is(#M0.Primitive.primExec(), Tclass.M0.Primitive());
// Constructor literal
axiom #M0.Primitive.primExec() == Lit(#M0.Primitive.primExec());
}

const unique ##M0.Primitive.primExec: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Primitive.primExec()) == ##M0.Primitive.primExec;
}

function M0.Primitive.primExec_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Primitive.primExec_q(d) } 
  M0.Primitive.primExec_q(d) <==> DatatypeCtorId(d) == ##M0.Primitive.primExec);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Primitive.primExec_q(d) } 
  M0.Primitive.primExec_q(d) ==> d == #M0.Primitive.primExec());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.M0.Primitive(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.M0.Primitive())
     ==> $IsAlloc(d, Tclass.M0.Primitive(), $h));

// Depth-one case-split function
function $IsA#M0.Primitive(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M0.Primitive(d) } 
  $IsA#M0.Primitive(d)
     ==> M0.Primitive.primCreatePath_q(d) || M0.Primitive.primExec_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M0.Primitive.primExec_q(d), $Is(d, Tclass.M0.Primitive()) } 
    { M0.Primitive.primCreatePath_q(d), $Is(d, Tclass.M0.Primitive()) } 
  $Is(d, Tclass.M0.Primitive())
     ==> M0.Primitive.primCreatePath_q(d) || M0.Primitive.primExec_q(d));

// Datatype extensional equality declaration
function M0.Primitive#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M0.Primitive.primCreatePath
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Primitive#Equal(a, b), M0.Primitive.primCreatePath_q(a) } 
    { M0.Primitive#Equal(a, b), M0.Primitive.primCreatePath_q(b) } 
  M0.Primitive.primCreatePath_q(a) && M0.Primitive.primCreatePath_q(b)
     ==> M0.Primitive#Equal(a, b));

// Datatype extensional equality definition: #M0.Primitive.primExec
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Primitive#Equal(a, b), M0.Primitive.primExec_q(a) } 
    { M0.Primitive#Equal(a, b), M0.Primitive.primExec_q(b) } 
  M0.Primitive.primExec_q(a) && M0.Primitive.primExec_q(b)
     ==> M0.Primitive#Equal(a, b));

// Datatype extensionality axiom: M0.Primitive
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Primitive#Equal(a, b) } 
  M0.Primitive#Equal(a, b) <==> a == b);

const unique class.M0.Primitive: ClassName;

// Constructor function declaration
function #M0.Reason.rCompatibility() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Reason.rCompatibility()) == ##M0.Reason.rCompatibility;
// Constructor $Is
axiom $Is(#M0.Reason.rCompatibility(), Tclass.M0.Reason());
// Constructor literal
axiom #M0.Reason.rCompatibility() == Lit(#M0.Reason.rCompatibility());
}

const unique ##M0.Reason.rCompatibility: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Reason.rCompatibility()) == ##M0.Reason.rCompatibility;
}

function M0.Reason.rCompatibility_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Reason.rCompatibility_q(d) } 
  M0.Reason.rCompatibility_q(d)
     <==> DatatypeCtorId(d) == ##M0.Reason.rCompatibility);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Reason.rCompatibility_q(d) } 
  M0.Reason.rCompatibility_q(d) ==> d == #M0.Reason.rCompatibility());

// Constructor function declaration
function #M0.Reason.rValidity() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Reason.rValidity()) == ##M0.Reason.rValidity;
// Constructor $Is
axiom $Is(#M0.Reason.rValidity(), Tclass.M0.Reason());
// Constructor literal
axiom #M0.Reason.rValidity() == Lit(#M0.Reason.rValidity());
}

const unique ##M0.Reason.rValidity: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M0.Reason.rValidity()) == ##M0.Reason.rValidity;
}

function M0.Reason.rValidity_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Reason.rValidity_q(d) } 
  M0.Reason.rValidity_q(d) <==> DatatypeCtorId(d) == ##M0.Reason.rValidity);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Reason.rValidity_q(d) } 
  M0.Reason.rValidity_q(d) ==> d == #M0.Reason.rValidity());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.M0.Reason(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.M0.Reason())
     ==> $IsAlloc(d, Tclass.M0.Reason(), $h));

// Depth-one case-split function
function $IsA#M0.Reason(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M0.Reason(d) } 
  $IsA#M0.Reason(d) ==> M0.Reason.rCompatibility_q(d) || M0.Reason.rValidity_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M0.Reason.rValidity_q(d), $Is(d, Tclass.M0.Reason()) } 
    { M0.Reason.rCompatibility_q(d), $Is(d, Tclass.M0.Reason()) } 
  $Is(d, Tclass.M0.Reason())
     ==> M0.Reason.rCompatibility_q(d) || M0.Reason.rValidity_q(d));

// Datatype extensional equality declaration
function M0.Reason#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M0.Reason.rCompatibility
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Reason#Equal(a, b), M0.Reason.rCompatibility_q(a) } 
    { M0.Reason#Equal(a, b), M0.Reason.rCompatibility_q(b) } 
  M0.Reason.rCompatibility_q(a) && M0.Reason.rCompatibility_q(b)
     ==> M0.Reason#Equal(a, b));

// Datatype extensional equality definition: #M0.Reason.rValidity
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Reason#Equal(a, b), M0.Reason.rValidity_q(a) } 
    { M0.Reason#Equal(a, b), M0.Reason.rValidity_q(b) } 
  M0.Reason.rValidity_q(a) && M0.Reason.rValidity_q(b) ==> M0.Reason#Equal(a, b));

// Datatype extensionality axiom: M0.Reason
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Reason#Equal(a, b) } 
  M0.Reason#Equal(a, b) <==> a == b);

const unique class.M0.Reason: ClassName;

const unique class.M0.Path: ClassName;

const unique class.M0.Artifact: ClassName;

const unique class.M0.Identifier: ClassName;

// Constructor function declaration
function #M0.Tuple.Pair(Box, Box) : DatatypeType;

const unique ##M0.Tuple.Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#141#0#0: Box, a#141#1#0: Box :: 
  { #M0.Tuple.Pair(a#141#0#0, a#141#1#0) } 
  DatatypeCtorId(#M0.Tuple.Pair(a#141#0#0, a#141#1#0)) == ##M0.Tuple.Pair);
}

function M0.Tuple.Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M0.Tuple.Pair_q(d) } 
  M0.Tuple.Pair_q(d) <==> DatatypeCtorId(d) == ##M0.Tuple.Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M0.Tuple.Pair_q(d) } 
  M0.Tuple.Pair_q(d)
     ==> (exists a#142#0#0: Box, a#142#1#0: Box :: 
      d == #M0.Tuple.Pair(a#142#0#0, a#142#1#0)));

// Constructor $Is
axiom (forall M0.Tuple$A: Ty, M0.Tuple$B: Ty, a#143#0#0: Box, a#143#1#0: Box :: 
  { $Is(#M0.Tuple.Pair(a#143#0#0, a#143#1#0), Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) } 
  $Is(#M0.Tuple.Pair(a#143#0#0, a#143#1#0), Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B))
     <==> $IsBox(a#143#0#0, M0.Tuple$A) && $IsBox(a#143#1#0, M0.Tuple$B));

// Constructor $IsAlloc
axiom (forall M0.Tuple$A: Ty, M0.Tuple$B: Ty, a#143#0#0: Box, a#143#1#0: Box, $h: Heap :: 
  { $IsAlloc(#M0.Tuple.Pair(a#143#0#0, a#143#1#0), 
      Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#M0.Tuple.Pair(a#143#0#0, a#143#1#0), 
        Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B), 
        $h)
       <==> $IsAllocBox(a#143#0#0, M0.Tuple$A, $h) && $IsAllocBox(a#143#1#0, M0.Tuple$B, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, M0.Tuple$A: Ty, $h: Heap :: 
  { $IsAllocBox(M0.Tuple.fst(d), M0.Tuple$A, $h) } 
  $IsGoodHeap($h)
       && 
      M0.Tuple.Pair_q(d)
       && (exists M0.Tuple$B: Ty :: 
        { $IsAlloc(d, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B), $h) } 
        $IsAlloc(d, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B), $h))
     ==> $IsAllocBox(M0.Tuple.fst(d), M0.Tuple$A, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, M0.Tuple$B: Ty, $h: Heap :: 
  { $IsAllocBox(M0.Tuple.snd(d), M0.Tuple$B, $h) } 
  $IsGoodHeap($h)
       && 
      M0.Tuple.Pair_q(d)
       && (exists M0.Tuple$A: Ty :: 
        { $IsAlloc(d, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B), $h) } 
        $IsAlloc(d, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B), $h))
     ==> $IsAllocBox(M0.Tuple.snd(d), M0.Tuple$B, $h));

// Constructor literal
axiom (forall a#144#0#0: Box, a#144#1#0: Box :: 
  { #M0.Tuple.Pair(Lit(a#144#0#0), Lit(a#144#1#0)) } 
  #M0.Tuple.Pair(Lit(a#144#0#0), Lit(a#144#1#0))
     == Lit(#M0.Tuple.Pair(a#144#0#0, a#144#1#0)));

function M0.Tuple.fst(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#145#0#0: Box, a#145#1#0: Box :: 
  { #M0.Tuple.Pair(a#145#0#0, a#145#1#0) } 
  M0.Tuple.fst(#M0.Tuple.Pair(a#145#0#0, a#145#1#0)) == a#145#0#0);

// Inductive rank
axiom (forall a#146#0#0: Box, a#146#1#0: Box :: 
  { #M0.Tuple.Pair(a#146#0#0, a#146#1#0) } 
  BoxRank(a#146#0#0) < DtRank(#M0.Tuple.Pair(a#146#0#0, a#146#1#0)));

function M0.Tuple.snd(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#147#0#0: Box, a#147#1#0: Box :: 
  { #M0.Tuple.Pair(a#147#0#0, a#147#1#0) } 
  M0.Tuple.snd(#M0.Tuple.Pair(a#147#0#0, a#147#1#0)) == a#147#1#0);

// Inductive rank
axiom (forall a#148#0#0: Box, a#148#1#0: Box :: 
  { #M0.Tuple.Pair(a#148#0#0, a#148#1#0) } 
  BoxRank(a#148#1#0) < DtRank(#M0.Tuple.Pair(a#148#0#0, a#148#1#0)));

// Depth-one case-split function
function $IsA#M0.Tuple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M0.Tuple(d) } 
  $IsA#M0.Tuple(d) ==> M0.Tuple.Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall M0.Tuple$A: Ty, M0.Tuple$B: Ty, d: DatatypeType :: 
  { M0.Tuple.Pair_q(d), $Is(d, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) } 
  $Is(d, Tclass.M0.Tuple(M0.Tuple$A, M0.Tuple$B)) ==> M0.Tuple.Pair_q(d));

// Datatype extensional equality declaration
function M0.Tuple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M0.Tuple.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Tuple#Equal(a, b) } 
  M0.Tuple#Equal(a, b)
     <==> M0.Tuple.fst(a) == M0.Tuple.fst(b) && M0.Tuple.snd(a) == M0.Tuple.snd(b));

// Datatype extensionality axiom: M0.Tuple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M0.Tuple#Equal(a, b) } 
  M0.Tuple#Equal(a, b) <==> a == b);

const unique class.M0.Tuple: ClassName;

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

const unique tytagFamily$Expression: TyTagFamily;

const unique tytagFamily$Tuple: TyTagFamily;

const unique tytagFamily$Program: TyTagFamily;

const unique tytagFamily$Statement: TyTagFamily;

const unique tytagFamily$Primitive: TyTagFamily;

const unique tytagFamily$Literal: TyTagFamily;

const unique tytagFamily$Reason: TyTagFamily;

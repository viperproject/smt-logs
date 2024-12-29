// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy

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

const unique class._System.array2?: ClassName;

function Tclass._System.array2?(Ty) : Ty;

const unique Tagclass._System.array2?: TyTag;

// Tclass._System.array2? Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tag(Tclass._System.array2?(_System.array2$arg)) == Tagclass._System.array2?
     && TagFamily(Tclass._System.array2?(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2?_0(Ty) : Ty;

// Tclass._System.array2? injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tclass._System.array2?_0(Tclass._System.array2?(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2?
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2?(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2?(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2?(_System.array2$arg)));

axiom (forall o: ref :: { _System.array2.Length0(o) } 0 <= _System.array2.Length0(o));

axiom (forall o: ref :: { _System.array2.Length1(o) } 0 <= _System.array2.Length1(o));

// array2.: Type axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
     ==> $IsBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg));

// array2.: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg, $h));

// $Is axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array2?(_System.array2$arg)) } 
  $Is($o, Tclass._System.array2?(_System.array2$arg))
     <==> $o == null || dtype($o) == Tclass._System.array2?(_System.array2$arg));

// $IsAlloc axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array2.Length0(ref) : int;

// array2.Length0: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length0($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length0($o), TInt));

// array2.Length0: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length0($o), TInt, $h));

function _System.array2.Length1(ref) : int;

// array2.Length1: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length1($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length1($o), TInt));

// array2.Length1: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length1($o), TInt, $h));

function Tclass._System.array2(Ty) : Ty;

const unique Tagclass._System.array2: TyTag;

// Tclass._System.array2 Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tag(Tclass._System.array2(_System.array2$arg)) == Tagclass._System.array2
     && TagFamily(Tclass._System.array2(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2_0(Ty) : Ty;

// Tclass._System.array2 injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tclass._System.array2_0(Tclass._System.array2(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2(_System.array2$arg)));

// $Is axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array2(_System.array2$arg)) } 
    { $Is(c#0, Tclass._System.array2?(_System.array2$arg)) } 
  $Is(c#0, Tclass._System.array2(_System.array2$arg))
     <==> $Is(c#0, Tclass._System.array2?(_System.array2$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.M0
function _module.__default.M0($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool
uses {
// definition axiom for _module.__default.M0 (revealed)
axiom {:id "id167"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
    { _module.__default.M0($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
    _module.__default.M0#canCall($prevHeap, $Heap, u#0, s#0, t#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(u#0, Tclass._module.C())
           && $Is(s#0, TSet(Tclass._module.C()))
           && $Is(t#0, TSeq(Tclass._module.C())))
       ==> _module.__default.M0($prevHeap, $Heap, u#0, s#0, t#0)
         == (
          (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              (exists $i: int :: 
                0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))));
}

function _module.__default.M0#canCall($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool;

function Tclass._module.C() : Ty
uses {
// Tclass._module.C Tag
axiom Tag(Tclass._module.C()) == Tagclass._module.C
   && TagFamily(Tclass._module.C()) == tytagFamily$C;
}

const unique Tagclass._module.C: TyTag;

// Box/unbox axiom for Tclass._module.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C()) } 
  $IsBox(bx, Tclass._module.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C()));

// frame axiom for _module.__default.M0
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.M0($prevHeap, $h1, u#0, s#0, t#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.M0#canCall($prevHeap, $h0, u#0, s#0, t#0)
         || (
          $Is(u#0, Tclass._module.C())
           && $Is(s#0, TSet(Tclass._module.C()))
           && $Is(t#0, TSeq(Tclass._module.C()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == u#0
             || Set#IsMember(s#0, $Box($o))
             || (exists $i: int :: 
              0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.M0($prevHeap, $h0, u#0, s#0, t#0)
       == _module.__default.M0($prevHeap, $h1, u#0, s#0, t#0));

function _module.__default.M0#requires(Heap, Heap, ref, Set, Seq) : bool;

// #requires axiom for _module.__default.M0
axiom (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { _module.__default.M0#requires($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(u#0, Tclass._module.C())
       && $Is(s#0, TSet(Tclass._module.C()))
       && $Is(t#0, TSeq(Tclass._module.C()))
     ==> _module.__default.M0#requires($prevHeap, $Heap, u#0, s#0, t#0)
       == (
        $IsAlloc(u#0, Tclass._module.C(), $prevHeap)
         && $IsAlloc(s#0, TSet(Tclass._module.C()), $prevHeap)
         && $IsAlloc(t#0, TSeq(Tclass._module.C()), $prevHeap)));

procedure {:verboseName "M0 (well-formedness)"} CheckWellformed$$_module.__default.M0(previous$Heap: Heap, 
    current$Heap: Heap, 
    u#0: ref
       where $Is(u#0, Tclass._module.C()) && $IsAlloc(u#0, Tclass._module.C(), previous$Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C()))
         && $IsAlloc(s#0, TSet(Tclass._module.C()), previous$Heap), 
    t#0: Seq
       where $Is(t#0, TSeq(Tclass._module.C()))
         && $IsAlloc(t#0, TSeq(Tclass._module.C()), previous$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



function Tclass._module.C?() : Ty
uses {
// Tclass._module.C? Tag
axiom Tag(Tclass._module.C?()) == Tagclass._module.C?
   && TagFamily(Tclass._module.C?()) == tytagFamily$C;
}

const unique Tagclass._module.C?: TyTag;

// Box/unbox axiom for Tclass._module.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C?()) } 
  $IsBox(bx, Tclass._module.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (well-formedness)"} CheckWellformed$$_module.__default.M0(previous$Heap: Heap, current$Heap: Heap, u#0: ref, s#0: Set, t#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _s2s_0#0: ref;
  var $unchanged#x0: ref;
  var $unchanged#x1: int;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == u#0
           || Set#IsMember(s#0, $Box($o))
           || (exists $i: int :: 
            0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Begin Comprehension WF check
    havoc _s2s_0#0;
    if ($Is(_s2s_0#0, Tclass._module.C?())
       && $IsAlloc(_s2s_0#0, Tclass._module.C?(), $Heap))
    {
        if (Seq#Contains(t#0, $Box(_s2s_0#0)))
        {
        }
    }

    // End Comprehension WF check
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id168"} $IsAlloc(u#0, Tclass._module.C(), old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == u#0
             ==> $_ReadsFrame[$o, $f]);
        if ((forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            havoc $unchanged#x0;
            assert {:id "id169"} Set#IsMember(s#0, $Box($unchanged#x0))
               ==> $IsAlloc($unchanged#x0, Tclass._module.C(), old($Heap));
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(s#0, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        if ((forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            havoc $unchanged#x1;
            assert {:id "id170"} 0 <= $unchanged#x1 && $unchanged#x1 < Seq#Length(t#0)
               ==> $IsAlloc($Unbox(Seq#Index(t#0, $unchanged#x1)): ref, Tclass._module.C(), old($Heap));
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && (exists $i: int :: 
                    0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        assume {:id "id171"} _module.__default.M0(old($Heap), $Heap, u#0, s#0, t#0)
           == (
            (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                Set#IsMember(s#0, $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                (exists $i: int :: 
                  0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.M0(old($Heap), $Heap, u#0, s#0, t#0), TBool);
        assert {:id "id172"} b$reqreads#0;
        assert {:id "id173"} b$reqreads#1;
        assert {:id "id174"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module._default.M1
function _module.__default.M1($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool
uses {
// definition axiom for _module.__default.M1 (revealed)
axiom {:id "id175"} 0 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
    { _module.__default.M1($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
    _module.__default.M1#canCall($prevHeap, $Heap, u#0, s#0, t#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?())))
       ==> _module.__default.M1($prevHeap, $Heap, u#0, s#0, t#0)
         == (
          (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              (exists $i: int :: 
                0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))));
}

function _module.__default.M1#canCall($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool;

// frame axiom for _module.__default.M1
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.M1($prevHeap, $h1, u#0, s#0, t#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.M1#canCall($prevHeap, $h0, u#0, s#0, t#0)
         || (
          $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == u#0
             || Set#IsMember(s#0, $Box($o))
             || (exists $i: int :: 
              0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.M1($prevHeap, $h0, u#0, s#0, t#0)
       == _module.__default.M1($prevHeap, $h1, u#0, s#0, t#0));

function _module.__default.M1#requires(Heap, Heap, ref, Set, Seq) : bool;

// #requires axiom for _module.__default.M1
axiom (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { _module.__default.M1#requires($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(u#0, Tclass._module.C?())
       && $Is(s#0, TSet(Tclass._module.C?()))
       && $Is(t#0, TSeq(Tclass._module.C?()))
     ==> _module.__default.M1#requires($prevHeap, $Heap, u#0, s#0, t#0)
       == (
        $IsAlloc(u#0, Tclass._module.C?(), $prevHeap)
         && $IsAlloc(s#0, TSet(Tclass._module.C?()), $prevHeap)
         && $IsAlloc(t#0, TSeq(Tclass._module.C?()), $prevHeap)));

procedure {:verboseName "M1 (well-formedness)"} CheckWellformed$$_module.__default.M1(previous$Heap: Heap, 
    current$Heap: Heap, 
    u#0: ref
       where $Is(u#0, Tclass._module.C?())
         && $IsAlloc(u#0, Tclass._module.C?(), previous$Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C?()))
         && $IsAlloc(s#0, TSet(Tclass._module.C?()), previous$Heap), 
    t#0: Seq
       where $Is(t#0, TSeq(Tclass._module.C?()))
         && $IsAlloc(t#0, TSeq(Tclass._module.C?()), previous$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (well-formedness)"} CheckWellformed$$_module.__default.M1(previous$Heap: Heap, current$Heap: Heap, u#0: ref, s#0: Set, t#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _s2s_0#0: ref;
  var $unchanged#x0: ref;
  var $unchanged#x1: int;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == u#0
           || Set#IsMember(s#0, $Box($o))
           || (exists $i: int :: 
            0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Begin Comprehension WF check
    havoc _s2s_0#0;
    if ($Is(_s2s_0#0, Tclass._module.C?())
       && $IsAlloc(_s2s_0#0, Tclass._module.C?(), $Heap))
    {
        if (Seq#Contains(t#0, $Box(_s2s_0#0)))
        {
        }
    }

    // End Comprehension WF check
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id176"} u#0 != null;
        assert {:id "id177"} u#0 != null ==> $IsAlloc(u#0, Tclass._module.C?(), old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == u#0
             ==> $_ReadsFrame[$o, $f]);
        if ((forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            havoc $unchanged#x0;
            assert {:id "id178"} Set#IsMember(s#0, $Box($unchanged#x0)) ==> $unchanged#x0 != null;
            assert {:id "id179"} Set#IsMember(s#0, $Box($unchanged#x0)) && $unchanged#x0 != null
               ==> $IsAlloc($unchanged#x0, Tclass._module.C?(), old($Heap));
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(s#0, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        if ((forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            havoc $unchanged#x1;
            assert {:id "id180"} 0 <= $unchanged#x1 && $unchanged#x1 < Seq#Length(t#0)
               ==> $Unbox(Seq#Index(t#0, $unchanged#x1)): ref != null;
            assert {:id "id181"} 0 <= $unchanged#x1
                 && $unchanged#x1 < Seq#Length(t#0)
                 && $Unbox(Seq#Index(t#0, $unchanged#x1)): ref != null
               ==> $IsAlloc($Unbox(Seq#Index(t#0, $unchanged#x1)): ref, Tclass._module.C?(), old($Heap));
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && (exists $i: int :: 
                    0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        assume {:id "id182"} _module.__default.M1(old($Heap), $Heap, u#0, s#0, t#0)
           == (
            (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                Set#IsMember(s#0, $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                (exists $i: int :: 
                  0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.M1(old($Heap), $Heap, u#0, s#0, t#0), TBool);
        assert {:id "id183"} b$reqreads#0;
        assert {:id "id184"} b$reqreads#1;
        assert {:id "id185"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module._default.N0
function _module.__default.N0($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool
uses {
// definition axiom for _module.__default.N0 (revealed)
axiom {:id "id186"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
    { _module.__default.N0($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
    _module.__default.N0#canCall($prevHeap, $Heap, u#0, s#0, t#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(u#0, Tclass._module.C())
           && $Is(s#0, TSet(Tclass._module.C()))
           && $Is(t#0, TSeq(Tclass._module.C())))
       ==> _module.__default.N0($prevHeap, $Heap, u#0, s#0, t#0)
         == (
          (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              (exists $i: int :: 
                0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))));
}

function _module.__default.N0#canCall($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool;

// frame axiom for _module.__default.N0
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.N0($prevHeap, $h1, u#0, s#0, t#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.N0#canCall($prevHeap, $h0, u#0, s#0, t#0)
         || (
          $Is(u#0, Tclass._module.C())
           && $Is(s#0, TSet(Tclass._module.C()))
           && $Is(t#0, TSeq(Tclass._module.C()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == u#0
             || Set#IsMember(s#0, $Box($o))
             || (exists $i: int :: 
              0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.N0($prevHeap, $h0, u#0, s#0, t#0)
       == _module.__default.N0($prevHeap, $h1, u#0, s#0, t#0));

function _module.__default.N0#requires(Heap, Heap, ref, Set, Seq) : bool;

// #requires axiom for _module.__default.N0
axiom (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { _module.__default.N0#requires($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(u#0, Tclass._module.C())
       && $Is(s#0, TSet(Tclass._module.C()))
       && $Is(t#0, TSeq(Tclass._module.C()))
     ==> _module.__default.N0#requires($prevHeap, $Heap, u#0, s#0, t#0) == true);

procedure {:verboseName "N0 (well-formedness)"} CheckWellformed$$_module.__default.N0(previous$Heap: Heap, 
    current$Heap: Heap, 
    u#0: ref
       where $Is(u#0, Tclass._module.C()) && $IsAlloc(u#0, Tclass._module.C(), current$Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C()))
         && $IsAlloc(s#0, TSet(Tclass._module.C()), current$Heap), 
    t#0: Seq
       where $Is(t#0, TSeq(Tclass._module.C()))
         && $IsAlloc(t#0, TSeq(Tclass._module.C()), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N0 (well-formedness)"} CheckWellformed$$_module.__default.N0(previous$Heap: Heap, current$Heap: Heap, u#0: ref, s#0: Set, t#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _s2s_0#0: ref;
  var $unchanged#x0: ref;
  var $unchanged#x1: int;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == u#0
           || Set#IsMember(s#0, $Box($o))
           || (exists $i: int :: 
            0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Begin Comprehension WF check
    havoc _s2s_0#0;
    if ($Is(_s2s_0#0, Tclass._module.C?())
       && $IsAlloc(_s2s_0#0, Tclass._module.C?(), $Heap))
    {
        if (Seq#Contains(t#0, $Box(_s2s_0#0)))
        {
        }
    }

    // End Comprehension WF check
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id187"} $IsAlloc(u#0, Tclass._module.C(), old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == u#0
             ==> $_ReadsFrame[$o, $f]);
        if ((forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            havoc $unchanged#x0;
            assert {:id "id188"} Set#IsMember(s#0, $Box($unchanged#x0))
               ==> $IsAlloc($unchanged#x0, Tclass._module.C(), old($Heap));
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(s#0, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        if ((forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            havoc $unchanged#x1;
            assert {:id "id189"} 0 <= $unchanged#x1 && $unchanged#x1 < Seq#Length(t#0)
               ==> $IsAlloc($Unbox(Seq#Index(t#0, $unchanged#x1)): ref, Tclass._module.C(), old($Heap));
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && (exists $i: int :: 
                    0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        assume {:id "id190"} _module.__default.N0(old($Heap), $Heap, u#0, s#0, t#0)
           == (
            (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                Set#IsMember(s#0, $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                (exists $i: int :: 
                  0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.N0(old($Heap), $Heap, u#0, s#0, t#0), TBool);
        assert {:id "id191"} b$reqreads#0;
        assert {:id "id192"} b$reqreads#1;
        assert {:id "id193"} b$reqreads#2;
        return;

        assume false;
    }
}



// function declaration for _module._default.N1
function _module.__default.N1($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool
uses {
// definition axiom for _module.__default.N1 (revealed)
axiom {:id "id194"} 0 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
    { _module.__default.N1($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
    _module.__default.N1#canCall($prevHeap, $Heap, u#0, s#0, t#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?())))
       ==> _module.__default.N1($prevHeap, $Heap, u#0, s#0, t#0)
         == (true
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))));
}

function _module.__default.N1#canCall($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool;

// frame axiom for _module.__default.N1
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.N1($prevHeap, $h1, u#0, s#0, t#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.N1#canCall($prevHeap, $h0, u#0, s#0, t#0)
         || (
          $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == u#0 ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.N1($prevHeap, $h0, u#0, s#0, t#0)
       == _module.__default.N1($prevHeap, $h1, u#0, s#0, t#0));

function _module.__default.N1#requires(Heap, Heap, ref, Set, Seq) : bool;

// #requires axiom for _module.__default.N1
axiom (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { _module.__default.N1#requires($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(u#0, Tclass._module.C?())
       && $Is(s#0, TSet(Tclass._module.C?()))
       && $Is(t#0, TSeq(Tclass._module.C?()))
     ==> _module.__default.N1#requires($prevHeap, $Heap, u#0, s#0, t#0) == true);

procedure {:verboseName "N1 (well-formedness)"} CheckWellformed$$_module.__default.N1(previous$Heap: Heap, 
    current$Heap: Heap, 
    u#0: ref
       where $Is(u#0, Tclass._module.C?())
         && $IsAlloc(u#0, Tclass._module.C?(), current$Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C?()))
         && $IsAlloc(s#0, TSet(Tclass._module.C?()), current$Heap), 
    t#0: Seq
       where $Is(t#0, TSeq(Tclass._module.C?()))
         && $IsAlloc(t#0, TSeq(Tclass._module.C?()), current$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N1 (well-formedness)"} CheckWellformed$$_module.__default.N1(previous$Heap: Heap, current$Heap: Heap, u#0: ref, s#0: Set, t#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == u#0);
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
        if (Lit(true))
        {
            assert {:id "id195"} u#0 != null;
            assert {:id "id196"} u#0 != null ==> $IsAlloc(u#0, Tclass._module.C?(), old($Heap));
            b$reqreads#0 := (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == u#0
                 ==> $_ReadsFrame[$o, $f]);
        }

        assume {:id "id197"} _module.__default.N1(old($Heap), $Heap, u#0, s#0, t#0)
           == (true
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == u#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.N1(old($Heap), $Heap, u#0, s#0, t#0), TBool);
        assert {:id "id198"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module._default.N2
function _module.__default.N2($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool
uses {
// definition axiom for _module.__default.N2 (revealed)
axiom {:id "id199"} 0 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
    { _module.__default.N2($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
    _module.__default.N2#canCall($prevHeap, $Heap, u#0, s#0, t#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?())))
       ==> _module.__default.N2($prevHeap, $Heap, u#0, s#0, t#0)
         == (true
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))));
}

function _module.__default.N2#canCall($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool;

// frame axiom for _module.__default.N2
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.N2($prevHeap, $h1, u#0, s#0, t#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.N2#canCall($prevHeap, $h0, u#0, s#0, t#0)
         || (
          $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && Set#IsMember(s#0, $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.N2($prevHeap, $h0, u#0, s#0, t#0)
       == _module.__default.N2($prevHeap, $h1, u#0, s#0, t#0));

function _module.__default.N2#requires(Heap, Heap, ref, Set, Seq) : bool;

// #requires axiom for _module.__default.N2
axiom (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { _module.__default.N2#requires($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(u#0, Tclass._module.C?())
       && $Is(s#0, TSet(Tclass._module.C?()))
       && $Is(t#0, TSeq(Tclass._module.C?()))
     ==> _module.__default.N2#requires($prevHeap, $Heap, u#0, s#0, t#0) == true);

procedure {:verboseName "N2 (well-formedness)"} CheckWellformed$$_module.__default.N2(previous$Heap: Heap, 
    current$Heap: Heap, 
    u#0: ref
       where $Is(u#0, Tclass._module.C?())
         && $IsAlloc(u#0, Tclass._module.C?(), current$Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C?()))
         && $IsAlloc(s#0, TSet(Tclass._module.C?()), current$Heap), 
    t#0: Seq
       where $Is(t#0, TSeq(Tclass._module.C?()))
         && $IsAlloc(t#0, TSeq(Tclass._module.C?()), current$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N2 (well-formedness)"} CheckWellformed$$_module.__default.N2(previous$Heap: Heap, current$Heap: Heap, u#0: ref, s#0: Set, t#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $unchanged#x0: ref;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember(s#0, $Box($o)));
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
        if (Lit(true))
        {
            havoc $unchanged#x0;
            assert {:id "id200"} Set#IsMember(s#0, $Box($unchanged#x0)) ==> $unchanged#x0 != null;
            assert {:id "id201"} Set#IsMember(s#0, $Box($unchanged#x0)) && $unchanged#x0 != null
               ==> $IsAlloc($unchanged#x0, Tclass._module.C?(), old($Heap));
            b$reqreads#0 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(s#0, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        assume {:id "id202"} _module.__default.N2(old($Heap), $Heap, u#0, s#0, t#0)
           == (true
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                Set#IsMember(s#0, $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.N2(old($Heap), $Heap, u#0, s#0, t#0), TBool);
        assert {:id "id203"} b$reqreads#0;
        return;

        assume false;
    }
}



// function declaration for _module._default.N3
function _module.__default.N3($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool
uses {
// definition axiom for _module.__default.N3 (revealed)
axiom {:id "id204"} 0 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
    { _module.__default.N3($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
    _module.__default.N3#canCall($prevHeap, $Heap, u#0, s#0, t#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?())))
       ==> _module.__default.N3($prevHeap, $Heap, u#0, s#0, t#0)
         == (true
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              (exists $i: int :: 
                0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))));
}

function _module.__default.N3#canCall($prevHeap: Heap, $heap: Heap, u#0: ref, s#0: Set, t#0: Seq) : bool;

// frame axiom for _module.__default.N3
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.__default.N3($prevHeap, $h1, u#0, s#0, t#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && (_module.__default.N3#canCall($prevHeap, $h0, u#0, s#0, t#0)
         || (
          $Is(u#0, Tclass._module.C?())
           && $Is(s#0, TSet(Tclass._module.C?()))
           && $Is(t#0, TSeq(Tclass._module.C?()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (exists $i: int :: 
            0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.__default.N3($prevHeap, $h0, u#0, s#0, t#0)
       == _module.__default.N3($prevHeap, $h1, u#0, s#0, t#0));

function _module.__default.N3#requires(Heap, Heap, ref, Set, Seq) : bool;

// #requires axiom for _module.__default.N3
axiom (forall $prevHeap: Heap, $Heap: Heap, u#0: ref, s#0: Set, t#0: Seq :: 
  { _module.__default.N3#requires($prevHeap, $Heap, u#0, s#0, t#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && $Is(u#0, Tclass._module.C?())
       && $Is(s#0, TSet(Tclass._module.C?()))
       && $Is(t#0, TSeq(Tclass._module.C?()))
     ==> _module.__default.N3#requires($prevHeap, $Heap, u#0, s#0, t#0) == true);

procedure {:verboseName "N3 (well-formedness)"} CheckWellformed$$_module.__default.N3(previous$Heap: Heap, 
    current$Heap: Heap, 
    u#0: ref
       where $Is(u#0, Tclass._module.C?())
         && $IsAlloc(u#0, Tclass._module.C?(), current$Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C?()))
         && $IsAlloc(s#0, TSet(Tclass._module.C?()), current$Heap), 
    t#0: Seq
       where $Is(t#0, TSeq(Tclass._module.C?()))
         && $IsAlloc(t#0, TSeq(Tclass._module.C?()), current$Heap));
  free requires 0 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N3 (well-formedness)"} CheckWellformed$$_module.__default.N3(previous$Heap: Heap, current$Heap: Heap, u#0: ref, s#0: Set, t#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _s2s_0#0: ref;
  var $unchanged#x0: int;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> (exists $i: int :: 
          0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Begin Comprehension WF check
    havoc _s2s_0#0;
    if ($Is(_s2s_0#0, Tclass._module.C?())
       && $IsAlloc(_s2s_0#0, Tclass._module.C?(), $Heap))
    {
        if (Seq#Contains(t#0, $Box(_s2s_0#0)))
        {
        }
    }

    // End Comprehension WF check
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Lit(true))
        {
            havoc $unchanged#x0;
            assert {:id "id205"} 0 <= $unchanged#x0 && $unchanged#x0 < Seq#Length(t#0)
               ==> $Unbox(Seq#Index(t#0, $unchanged#x0)): ref != null;
            assert {:id "id206"} 0 <= $unchanged#x0
                 && $unchanged#x0 < Seq#Length(t#0)
                 && $Unbox(Seq#Index(t#0, $unchanged#x0)): ref != null
               ==> $IsAlloc($Unbox(Seq#Index(t#0, $unchanged#x0)): ref, Tclass._module.C?(), old($Heap));
            b$reqreads#0 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && (exists $i: int :: 
                    0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        assume {:id "id207"} _module.__default.N3(old($Heap), $Heap, u#0, s#0, t#0)
           == (true
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                (exists $i: int :: 
                  0 <= $i && $i < Seq#Length(t#0) && Seq#Index(t#0, $i) == $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.N3(old($Heap), $Heap, u#0, s#0, t#0), TBool);
        assert {:id "id208"} b$reqreads#0;
        return;

        assume false;
    }
}



const unique class._module.C?: ClassName;

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C?()) } 
  $Is($o, Tclass._module.C?()) <==> $o == null || dtype($o) == Tclass._module.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C?(), $h) } 
  $IsAlloc($o, Tclass._module.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.C.x: Field
uses {
axiom FDim(_module.C.x) == 0
   && FieldOfDecl(class._module.C?, field$x) == _module.C.x
   && !$IsGhostField(_module.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.x)): int, TInt, $h));

const _module.C.z: Field
uses {
axiom FDim(_module.C.z) == 0
   && FieldOfDecl(class._module.C?, field$z) == _module.C.z
   && !$IsGhostField(_module.C.z);
}

// C.z: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.z)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.z)): int, TInt));

// C.z: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.z)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.z)): int, TInt, $h));

procedure {:verboseName "C.M (well-formedness)"} CheckWellFormed$$_module.C.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.M (call)"} Call$$_module.C.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap));
  // user-defined preconditions
  requires {:id "id210"} $Unbox(read($Heap, this, _module.C.x)): int == LitInt(6);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.M (correctness)"} Impl$$_module.C.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id211"} $Unbox(read($Heap, this, _module.C.x)): int == LitInt(6);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.M (correctness)"} Impl$$_module.C.M(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $Heap_at_0: Heap;
  var $Heap_at_1: Heap;
  var $rhs#1: int;
  var $Heap_at_2: Heap;
  var $Heap_at_3: Heap;
  var $rhs#2: int;
  var $Heap_at_4: Heap;
  var $Heap_at_5: Heap;
  var $rhs#3: int;
  var $Heap_at_6: Heap;
  var $rhs#4: int;

    // AddMethodImpl: M, Impl$$_module.C.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(12,7)
    assume true;
    assert {:id "id212"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#0 := LitInt(10);
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap_at_0 := $Heap;
    $Heap_at_1 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(15,7)
    assume true;
    assert {:id "id215"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.C.x)): int + 1;
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);

  after_0:
    $Heap_at_2 := $Heap;
    push;
    $Heap_at_3 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(19,9)
    assume true;
    assert {:id "id218"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#2 := $Unbox(read($Heap, this, _module.C.x)): int + 1;
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#2));
    assume $IsGoodHeap($Heap);

  after_3:
    $Heap_at_4 := $Heap;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(21,7)
    assume true;
    assert {:id "id221"} Lit(true);

  after_4:
    pop;

  after_2:
    $Heap_at_5 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(24,7)
    assume true;
    assert {:id "id222"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#3 := $Unbox(read($Heap, this, _module.C.x)): int + 1;
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#3));
    assume $IsGoodHeap($Heap);

  after_5:
    $Heap_at_6 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(26,7)
    assume true;
    assert {:id "id225"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#4 := $Unbox(read($Heap, this, _module.C.x)): int + 1;
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#4));
    assume $IsGoodHeap($Heap);

  after_6:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(27,5)
    assert {:id "id228"} $IsAlloc(this, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id229"} $Unbox(read(old($Heap), this, _module.C.x)): int == LitInt(6);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(29,5)
    assert {:id "id230"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
    assert {:id "id231"} $IsAlloc(this, Tclass._module.C(), $Heap_at_1);
    if ($Unbox(read($Heap_at_0, this, _module.C.x)): int
       == $Unbox(read($Heap_at_1, this, _module.C.x)): int)
    {
        assert {:id "id232"} $IsAlloc(this, Tclass._module.C(), $Heap_at_1);
    }

    assume true;
    assert {:id "id233"} {:subsumption 0} $Unbox(read($Heap_at_0, this, _module.C.x)): int
       == $Unbox(read($Heap_at_1, this, _module.C.x)): int;
    assert {:id "id234"} {:subsumption 0} $Unbox(read($Heap_at_1, this, _module.C.x)): int == LitInt(10);
    assume {:id "id235"} $Unbox(read($Heap_at_0, this, _module.C.x)): int
         == $Unbox(read($Heap_at_1, this, _module.C.x)): int
       && $Unbox(read($Heap_at_1, this, _module.C.x)): int == LitInt(10);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(30,5)
    assert {:id "id236"} $IsAlloc(this, Tclass._module.C(), $Heap_at_2);
    assert {:id "id237"} $IsAlloc(this, Tclass._module.C(), $Heap_at_3);
    if ($Unbox(read($Heap_at_2, this, _module.C.x)): int
       == $Unbox(read($Heap_at_3, this, _module.C.x)): int)
    {
        assert {:id "id238"} $IsAlloc(this, Tclass._module.C(), $Heap_at_3);
    }

    assume true;
    assert {:id "id239"} {:subsumption 0} $Unbox(read($Heap_at_2, this, _module.C.x)): int
       == $Unbox(read($Heap_at_3, this, _module.C.x)): int;
    assert {:id "id240"} {:subsumption 0} $Unbox(read($Heap_at_3, this, _module.C.x)): int == LitInt(11);
    assume {:id "id241"} $Unbox(read($Heap_at_2, this, _module.C.x)): int
         == $Unbox(read($Heap_at_3, this, _module.C.x)): int
       && $Unbox(read($Heap_at_3, this, _module.C.x)): int == LitInt(11);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(31,5)
    assert {:id "id242"} $IsAlloc(this, Tclass._module.C(), $Heap_at_4);
    if ($Unbox(read($Heap_at_4, this, _module.C.x)): int == LitInt(12))
    {
        assert {:id "id243"} $IsAlloc(this, Tclass._module.C(), $Heap_at_5);
    }

    assume true;
    assert {:id "id244"} {:subsumption 0} $Unbox(read($Heap_at_4, this, _module.C.x)): int == LitInt(12);
    assert {:id "id245"} {:subsumption 0} LitInt(12) == $Unbox(read($Heap_at_5, this, _module.C.x)): int;
    assume {:id "id246"} $Unbox(read($Heap_at_4, this, _module.C.x)): int == LitInt(12)
       && LitInt(12) == $Unbox(read($Heap_at_5, this, _module.C.x)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(32,5)
    assert {:id "id247"} $IsAlloc(this, Tclass._module.C(), $Heap_at_6);
    assume true;
    assert {:id "id248"} $Unbox(read($Heap_at_6, this, _module.C.x)): int == LitInt(13);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(33,5)
    assume true;
    assert {:id "id249"} $Unbox(read($Heap, this, _module.C.x)): int == LitInt(14);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(34,5)
    assert {:id "id250"} $IsAlloc(this, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id251"} $Unbox(read($Heap, this, _module.C.x)): int
       == $Unbox(read(old($Heap), this, _module.C.x)): int;
}



procedure {:verboseName "C.Lets (well-formedness)"} CheckWellFormed$$_module.C.Lets(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    i#0: int, 
    whoKnows#0: bool)
   returns (o#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.Lets (call)"} Call$$_module.C.Lets(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    i#0: int, 
    whoKnows#0: bool)
   returns (o#0: int);
  // user-defined preconditions
  requires {:id "id254"} $Unbox(read($Heap, this, _module.C.x)): int == i#0;
  requires {:id "id255"} i#0 == LitInt(10);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id256"} Mul(LitInt(4), o#0) == LitInt(24);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.Lets (correctness)"} Impl$$_module.C.Lets(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    i#0: int, 
    whoKnows#0: bool)
   returns (o#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id257"} $Unbox(read($Heap, this, _module.C.x)): int == i#0;
  requires {:id "id258"} i#0 == LitInt(10);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id259"} Mul(LitInt(4), o#0) == LitInt(24);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function $let#0_six() : int;

function $let#0$canCall() : bool
uses {
axiom $let#0$canCall() ==> $let#0_six() == LitInt(6);
}

function $let#1_k($heap: Heap, $heap$old: Heap, $Heap_at_0: Heap, $Heap_at_1: Heap, this: ref)
   : int;

function $let#1$canCall($heap: Heap, $heap$old: Heap, $Heap_at_0: Heap, $Heap_at_1: Heap, this: ref)
   : bool;

axiom (forall $heap: Heap, $heap$old: Heap, $Heap_at_0: Heap, $Heap_at_1: Heap, this: ref :: 
  { $let#1_k($heap, $heap$old, $Heap_at_0, $Heap_at_1, this) } 
  $let#1$canCall($heap, $heap$old, $Heap_at_0, $Heap_at_1, this)
     ==> $let#1_k($heap, $heap$old, $Heap_at_0, $Heap_at_1, this)
       == $Unbox(read($heap, this, _module.C.x)): int
         + $Unbox(read($heap$old, this, _module.C.x)): int
         + $Unbox(read($Heap_at_0, this, _module.C.x)): int
         + $Unbox(read($Heap_at_1, this, _module.C.x)): int);

function $let#2_six() : int;

function $let#2$canCall() : bool
uses {
axiom $let#2$canCall() ==> $let#2_six() == LitInt(6);
}

function $let#3_twelve() : int;

function $let#3$canCall() : bool
uses {
axiom $let#3$canCall() ==> $let#3_twelve() == LitInt(12);
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.Lets (correctness)"} Impl$$_module.C.Lets(this: ref, i#0: int, whoKnows#0: bool) returns (o#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $Heap_at_0: Heap;
  var $rhs#1: int;
  var six#0: int;
  var $Heap_at_1: Heap;
  var $rhs#2: int;
  var k#0: int;
  var k#1: int;
  var m#0: int;
  var k#3: int;
  var six#2: int;
  var twelve#0: int;

    // AddMethodImpl: Lets, Impl$$_module.C.Lets
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(42,7)
    assume true;
    assert {:id "id260"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.C.x)): int + 3;
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(44,7)
    assume true;
    assert {:id "id263"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.C.x)): int + 5;
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);

  after_0:
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(45,7)
    assume true;
    assume true;
    o#0 := i#0 - 4;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(46,5)
    havoc six#0;
    if (true)
    {
    }

    assert {:id "id267"} ($Is(LitInt(6), TInt) && LitInt(6) == LitInt(6))
       || 
      ($Is(LitInt(0), TInt) && LitInt(0) == LitInt(6))
       || (exists six#1: int :: six#1 == LitInt(6));
    assume true;
    assume six#0 == LitInt(6);
    assume $let#0$canCall();
    assume $let#0$canCall();
    assert {:id "id268"} o#0 == (var six#1 := $let#0_six(); six#1);
    $Heap_at_1 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(48,7)
    assume true;
    assert {:id "id269"} $_ModifiesFrame[this, _module.C.x];
    assume true;
    $rhs#2 := LitInt(2);
    $Heap := update($Heap, this, _module.C.x, $Box($rhs#2));
    assume $IsGoodHeap($Heap);

  after_1:
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(49,17)
    havoc k#1;
    if (true)
    {
        assert {:id "id272"} $IsAlloc(this, Tclass._module.C(), old($Heap));
        assert {:id "id273"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assert {:id "id274"} $IsAlloc(this, Tclass._module.C(), $Heap_at_1);
        assume true;
    }

    assert {:id "id275"} ($Is($Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int, 
          TInt)
         && $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int
           == $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int)
       || 
      ($Is(LitInt(0), TInt)
         && LitInt(0)
           == $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int)
       || (exists $as#k0#0: int :: 
        $as#k0#0
           == $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int);
    havoc k#0;
    assume {:id "id276"} k#0
       == $Unbox(read($Heap, this, _module.C.x)): int
         + $Unbox(read(old($Heap), this, _module.C.x)): int
         + $Unbox(read($Heap_at_0, this, _module.C.x)): int
         + $Unbox(read($Heap_at_1, this, _module.C.x)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(50,5)
    assume true;
    assert {:id "id277"} k#0 == LitInt(2 + 10 + 13 + 18);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(51,17)
    assume true;
    havoc k#3;
    if (true)
    {
        assert {:id "id278"} $IsAlloc(this, Tclass._module.C(), old($Heap));
        assert {:id "id279"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assert {:id "id280"} $IsAlloc(this, Tclass._module.C(), $Heap_at_1);
    }

    assert {:id "id281"} ($Is($Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int, 
          TInt)
         && $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int
           == $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int)
       || 
      ($Is(LitInt(0), TInt)
         && LitInt(0)
           == $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int)
       || (exists k#2: int :: 
        k#2
           == $Unbox(read($Heap, this, _module.C.x)): int
             + $Unbox(read(old($Heap), this, _module.C.x)): int
             + $Unbox(read($Heap_at_0, this, _module.C.x)): int
             + $Unbox(read($Heap_at_1, this, _module.C.x)): int);
    assume true;
    assume k#3
       == $Unbox(read($Heap, this, _module.C.x)): int
         + $Unbox(read(old($Heap), this, _module.C.x)): int
         + $Unbox(read($Heap_at_0, this, _module.C.x)): int
         + $Unbox(read($Heap_at_1, this, _module.C.x)): int;
    assume $let#1$canCall($Heap, old($Heap), $Heap_at_0, $Heap_at_1, this);
    assume $let#1$canCall($Heap, old($Heap), $Heap_at_0, $Heap_at_1, this);
    m#0 := (var k#2 := $let#1_k($Heap, old($Heap), $Heap_at_0, $Heap_at_1, this); k#2);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(53,5)
    assume true;
    assert {:id "id283"} m#0 == LitInt(2 + 10 + 13 + 18);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(54,5)
    havoc six#2;
    if (true)
    {
    }

    assert {:id "id284"} ($Is(LitInt(6), TInt) && LitInt(6) == LitInt(6))
       || 
      ($Is(LitInt(0), TInt) && LitInt(0) == LitInt(6))
       || (exists six#3: int :: six#3 == LitInt(6));
    assume true;
    assume six#2 == LitInt(6);
    assume $let#2$canCall();
    assume $let#2$canCall();
    assert {:id "id285"} o#0 == (var six#3 := $let#2_six(); six#3);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(55,5)
    havoc twelve#0;
    if (true)
    {
    }

    assert {:id "id286"} ($Is(LitInt(12), TInt) && LitInt(12) == LitInt(12))
       || 
      ($Is(LitInt(0), TInt) && LitInt(0) == LitInt(12))
       || (exists twelve#1: int :: twelve#1 == LitInt(12));
    assume true;
    assume twelve#0 == LitInt(12);
    assume $let#3$canCall();
    assume $let#3$canCall();
    assert {:id "id287"} o#0 == 18 - (var twelve#1 := $let#3_twelve(); twelve#1);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(56,5)
    assume true;
    assert {:id "id288"} whoKnows#0;
}



procedure {:verboseName "C.Unchanged (well-formedness)"} CheckWellFormed$$_module.C.Unchanged(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    y#0: int, 
    c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.C()) && $IsAlloc(d#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.Unchanged (call)"} Call$$_module.C.Unchanged(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    y#0: int, 
    c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.C()) && $IsAlloc(d#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.Unchanged (correctness)"} Impl$$_module.C.Unchanged(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    y#0: int, 
    c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.C()) && $IsAlloc(d#0, Tclass._module.C(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.Unchanged (correctness)"} Impl$$_module.C.Unchanged(this: ref, y#0: int, c#0: ref, d#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: int;
  var $rhs#1_0: int;
  var $Heap_at_0: Heap;
  var $rhs#0: int;
  var $Heap_at_1: Heap;
  var $unchanged#x2_0: ref;
  var $unchanged#x3_0: ref;
  var $unchanged#x3_1: ref;
  var $unchanged#x3_2: ref;

    // AddMethodImpl: Unchanged, Impl$$_module.C.Unchanged
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this || $o == c#0 || $o == d#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(62,5)
    assume true;
    if (y#0 < 5)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(63,9)
        assume true;
        assert {:id "id289"} $_ModifiesFrame[this, _module.C.x];
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, this, _module.C.x)): int + 1;
        $Heap := update($Heap, this, _module.C.x, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(64,7)
        if (c#0 != this)
        {
            assert {:id "id292"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
        }

        assume true;
        assert {:id "id293"} {:subsumption 0} c#0 != this
           ==> (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
        assume {:id "id294"} c#0 != this
           ==> (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
        pop;
    }
    else
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(66,11)
        assert {:id "id295"} c#0 != null;
        assume true;
        assert {:id "id296"} $_ModifiesFrame[c#0, _module.C.x];
        assert {:id "id297"} c#0 != null;
        assume true;
        $rhs#1_0 := $Unbox(read($Heap, c#0, _module.C.x)): int + 2;
        $Heap := update($Heap, c#0, _module.C.x, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(67,7)
        if (c#0 != this)
        {
            assert {:id "id300"} $IsAlloc(this, Tclass._module.C(), old($Heap));
        }

        assume true;
        assert {:id "id301"} {:subsumption 0} c#0 != this
           ==> (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
        assume {:id "id302"} c#0 != this
           ==> (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
        pop;
    }

    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(70,9)
    assert {:id "id303"} d#0 != null;
    assume true;
    assert {:id "id304"} $_ModifiesFrame[d#0, _module.C.x];
    assert {:id "id305"} d#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, d#0, _module.C.x)): int + 1;
    $Heap := update($Heap, d#0, _module.C.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);

  after_0:
    $Heap_at_1 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(72,5)
    if (*)
    {
        if (d#0 != this)
        {
        }

        assume true;
        assume {:id "id325"} d#0 != this && d#0 != c#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(74,7)
        assert {:id "id326"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assert {:id "id327"} $IsAlloc(c#0, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id328"} {:subsumption 0} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == this ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
        assert {:id "id329"} {:subsumption 0} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
        assume {:id "id330"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            $o == this || $o == c#0
             ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id322"} d#0 != this;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(76,7)
        assert {:id "id323"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id324"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            $o == this && ($f == _module.C.x || $f == alloc)
             ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id319"} d#0 != c#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(78,7)
        assert {:id "id320"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id321"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            $o == this && ($f == _module.C.x || $f == alloc)
             ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id312"} d#0 != c#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(80,7)
        havoc $unchanged#x3_0;
        assert {:id "id313"} Set#IsMember(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), $Box($unchanged#x3_0))
           ==> $IsAlloc($unchanged#x3_0, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id314"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(81,7)
        havoc $unchanged#x3_1;
        assert {:id "id315"} Set#IsMember(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), $Box(d#0)), 
            $Box($unchanged#x3_1))
           ==> $IsAlloc($unchanged#x3_1, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id316"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            ($o == this || $o == d#0) && ($f == _module.C.z || $f == alloc)
             ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(82,7)
        havoc $unchanged#x3_2;
        assert {:id "id317"} Set#IsMember(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(this)), $Box(d#0)), 
            $Box($unchanged#x3_2))
           ==> $IsAlloc($unchanged#x3_2, Tclass._module.C(), old($Heap));
        assume true;
        assert {:id "id318"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            ($o == this || $o == d#0) && ($f == _module.C.z || $f == alloc)
             ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id309"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(84,7)
        havoc $unchanged#x2_0;
        assert {:id "id310"} Set#IsMember(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(c#0)), $Box(d#0)), 
            $Box($unchanged#x2_0))
           ==> $IsAlloc($unchanged#x2_0, Tclass._module.C(), $Heap_at_1);
        assume true;
        assert {:id "id311"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            $o == c#0 || $o == d#0
             ==> read($Heap, $o, $f) == read($Heap_at_1, $o, $f));
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !
          (d#0 != this
           && d#0 != c#0)
           && d#0 == this
           && d#0 == c#0
           && d#0 == c#0
           && !Lit(true);
        assert {:id "id308"} false;
    }

  after_1:
}



procedure {:verboseName "C.Fresh (well-formedness)"} CheckWellFormed$$_module.C.Fresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    y#0: int, 
    b#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.Fresh (call)"} Call$$_module.C.Fresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    y#0: int, 
    b#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.Fresh (correctness)"} Impl$$_module.C.Fresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    y#0: int, 
    b#0: bool)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.Fresh (correctness)"} Impl$$_module.C.Fresh(this: ref, y#0: int, b#0: bool) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap);
  var $nw: ref;
  var $rhs#2_0: int;
  var $Heap_at_1: Heap;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.C()) && $IsAlloc(d#0, Tclass._module.C(), $Heap);
  var $Heap_at_2: Heap;
  var defass#e#5_0: bool;
  var e#5_0: ref
     where defass#e#5_0
       ==> $Is(e#5_0, Tclass._module.C()) && $IsAlloc(e#5_0, Tclass._module.C(), $Heap);

    // AddMethodImpl: Fresh, Impl$$_module.C.Fresh
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(91,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;

  after_0:
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(92,5)
    assume true;
    if (b#0)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(93,9)
        assume true;
        assume true;
        c#0 := this;
        defass#c#0 := true;
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(95,5)
    assume true;
    if (y#0 < 5)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(96,7)
        assert {:id "id333"} defass#c#0;
        if (c#0 != this)
        {
            assert {:id "id334"} defass#c#0;
        }

        assume true;
        assert {:id "id335"} {:subsumption 0} c#0 != this ==> c#0 != null && !$Unbox(read(old($Heap), c#0, alloc)): bool;
        assume {:id "id336"} c#0 != this ==> c#0 != null && !$Unbox(read(old($Heap), c#0, alloc)): bool;
        pop;
    }
    else
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(98,11)
        assert {:id "id337"} defass#c#0;
        assert {:id "id338"} c#0 != null;
        assume true;
        assert {:id "id339"} $_ModifiesFrame[c#0, _module.C.x];
        assert {:id "id340"} defass#c#0;
        assert {:id "id341"} c#0 != null;
        assume true;
        $rhs#2_0 := $Unbox(read($Heap, c#0, _module.C.x)): int + 2;
        $Heap := update($Heap, c#0, _module.C.x, $Box($rhs#2_0));
        assume $IsGoodHeap($Heap);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(99,7)
        assert {:id "id344"} defass#c#0;
        if (c#0 != this)
        {
            assert {:id "id345"} defass#c#0;
        }

        assume true;
        assert {:id "id346"} {:subsumption 0} c#0 != this ==> c#0 != null && !$Unbox(read(old($Heap), c#0, alloc)): bool;
        assume {:id "id347"} c#0 != this ==> c#0 != null && !$Unbox(read(old($Heap), c#0, alloc)): bool;
        pop;
    }

    $Heap_at_1 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(102,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    d#0 := $nw;
    defass#d#0 := true;

  after_1:
    $Heap_at_2 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(104,5)
    if (*)
    {
        assume true;
        assume {:id "id372"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(106,7)
        assert {:id "id373"} defass#d#0;
        assume true;
        assert {:id "id374"} d#0 != null && !$Unbox(read(old($Heap), d#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id369"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(108,7)
        assert {:id "id370"} defass#d#0;
        assume true;
        assert {:id "id371"} d#0 != null && !$Unbox(read($Heap_at_1, d#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id366"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(110,7)
        assert {:id "id367"} defass#d#0;
        assume true;
        assert {:id "id368"} d#0 != null && !$Unbox(read($Heap_at_2, d#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id363"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(112,7)
        assert {:id "id364"} defass#c#0;
        assume true;
        assert {:id "id365"} c#0 != null && !$Unbox(read($Heap_at_1, c#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id356"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(114,13)
        assume true;
        assert {:id "id357"} defass#d#0;
        assume true;
        e#5_0 := d#0;
        defass#e#5_0 := true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(115,7)
        assert {:id "id359"} defass#e#5_0;
        assume true;
        assert {:id "id360"} e#5_0 != null && !$Unbox(read($Heap_at_1, e#5_0, alloc)): bool;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(116,7)
        assert {:id "id361"} defass#e#5_0;
        assume true;
        assert {:id "id362"} e#5_0 != null && !$Unbox(read($Heap_at_2, e#5_0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id353"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(118,7)
        assert {:id "id354"} defass#c#0;
        assume true;
        assert {:id "id355"} c#0 != null && !$Unbox(read($Heap_at_0, c#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id350"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(120,7)
        if (!b#0)
        {
            assert {:id "id351"} defass#c#0;
        }

        assume true;
        assert {:id "id352"} b#0 || (c#0 != null && !$Unbox(read($Heap_at_0, c#0, alloc)): bool);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true);
        assert {:id "id349"} false;
    }

  after_2:
}



const _module.C.cc: Field
uses {
axiom FDim(_module.C.cc) == 0
   && FieldOfDecl(class._module.C?, field$cc) == _module.C.cc
   && !$IsGhostField(_module.C.cc);
}

// C.cc: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.cc)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.cc)): ref, Tclass._module.C?()));

// C.cc: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.cc)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.cc)): ref, Tclass._module.C?(), $h));

procedure {:verboseName "C.FreshAgain (well-formedness)"} CheckWellFormed$$_module.C.FreshAgain(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    b#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.FreshAgain (call)"} Call$$_module.C.FreshAgain(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    b#0: bool);
  // user-defined preconditions
  requires {:id "id376"} $Unbox(read($Heap, this, _module.C.cc)): ref != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.FreshAgain (correctness)"} Impl$$_module.C.FreshAgain(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    b#0: bool)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id377"} $Unbox(read($Heap, this, _module.C.cc)): ref != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.FreshAgain (correctness)"} Impl$$_module.C.FreshAgain(this: ref, b#0: bool) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var $rhs#0_0: ref;
  var $nw: ref;
  var $Heap_at_1: Heap;

    // AddMethodImpl: FreshAgain, Impl$$_module.C.FreshAgain
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(130,5)
    assume true;
    if (b#0)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(131,10)
        assume true;
        assert {:id "id378"} $_ModifiesFrame[this, _module.C.cc];
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._module.C?());
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        $Heap := update($Heap, $nw, alloc, $Box(true));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        $rhs#0_0 := $nw;
        $Heap := update($Heap, this, _module.C.cc, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        pop;
    }
    else
    {
    }

  after_0:
    $Heap_at_1 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(134,5)
    if (*)
    {
        assume true;
        assume {:id "id392"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(136,7)
        assert {:id "id393"} $IsAlloc(this, Tclass._module.C(), old($Heap));
        if ($Unbox(read($Heap, this, _module.C.cc)): ref
           != $Unbox(read(old($Heap), this, _module.C.cc)): ref)
        {
        }

        assume true;
        assert {:id "id394"} $Unbox(read($Heap, this, _module.C.cc)): ref
             == $Unbox(read(old($Heap), this, _module.C.cc)): ref
           || ($Unbox(read($Heap, this, _module.C.cc)): ref != null
             && !$Unbox(read($Heap_at_0, $Unbox(read($Heap, this, _module.C.cc)): ref, alloc)): bool);
    }
    else if (*)
    {
        assume true;
        assume {:id "id390"} b#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(138,7)
        assume true;
        assert {:id "id391"} $Unbox(read($Heap, this, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_0, $Unbox(read($Heap, this, _module.C.cc)): ref, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id388"} b#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(140,7)
        assume true;
        assert {:id "id389"} $Unbox(read($Heap, this, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_1, $Unbox(read($Heap, this, _module.C.cc)): ref, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id385"} b#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(142,7)
        assert {:id "id386"} $IsAlloc(this, Tclass._module.C(), old($Heap));
        assume true;
        assert {:id "id387"} $Unbox(read(old($Heap), this, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_0, $Unbox(read(old($Heap), this, _module.C.cc)): ref, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id382"} b#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(144,7)
        assert {:id "id383"} $IsAlloc(this, Tclass._module.C(), $Heap_at_1);
        assume true;
        assert {:id "id384"} $Unbox(read($Heap_at_1, this, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_0, $Unbox(read($Heap_at_1, this, _module.C.cc)): ref, alloc)): bool;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !b#0 && !b#0 && !b#0 && !b#0;
        assert {:id "id381"} false;
    }

  after_1:
}



procedure {:verboseName "C.DefinednessOld (well-formedness)"} CheckWellFormed$$_module.C.DefinednessOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap), 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.DefinednessOld (well-formedness)"} CheckWellFormed$$_module.C.DefinednessOld(this: ref, m#0: ref, arr#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddMethodImpl: DefinednessOld, CheckWellFormed$$_module.C.DefinednessOld
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    if ($Unbox(read($Heap, this, _module.C.cc)): ref == m#0)
    {
        newtype$check#0 := null;
    }

    assume {:id "id395"} $Unbox(read($Heap, this, _module.C.cc)): ref == m#0 && m#0 != null;
    assert {:id "id396"} arr#0 != null;
    assume {:id "id397"} _System.array.Length(arr#0) == LitInt(100);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "C.DefinednessOld (call)"} Call$$_module.C.DefinednessOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap), 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap));
  // user-defined preconditions
  requires {:id "id398"} $Unbox(read($Heap, this, _module.C.cc)): ref == m#0;
  requires {:id "id399"} m#0 != null;
  requires {:id "id400"} _System.array.Length(arr#0) == LitInt(100);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.DefinednessOld (correctness)"} Impl$$_module.C.DefinednessOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap), 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(TInt))
         && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id401"} $Unbox(read($Heap, this, _module.C.cc)): ref == m#0;
  requires {:id "id402"} m#0 != null;
  requires {:id "id403"} _System.array.Length(arr#0) == LitInt(100);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.DefinednessOld (correctness)"} Impl$$_module.C.DefinednessOld(this: ref, m#0: ref, arr#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.C()) && $IsAlloc(n#0, Tclass._module.C(), $Heap);
  var $nw: ref;
  var $rhs#0: ref;
  var $rhs#1: ref;
  var brr#0: ref
     where $Is(brr#0, Tclass._System.array(TInt))
       && $IsAlloc(brr#0, Tclass._System.array(TInt), $Heap);
  var $Heap_at_1: Heap;
  var a#0_0: int;
  var a#1_0: int;
  var a#2_0: int;
  var a#3_0: int;
  var u#4_0: int;
  var u#5_0: int;
  var u#6_0: int;

    // AddMethodImpl: DefinednessOld, Impl$$_module.C.DefinednessOld
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(152,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;

  after_0:
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(153,10)
    assert {:id "id405"} defass#n#0;
    assert {:id "id406"} n#0 != null;
    assume true;
    assert {:id "id407"} $_ModifiesFrame[n#0, _module.C.cc];
    assume true;
    $rhs#0 := this;
    $Heap := update($Heap, n#0, _module.C.cc, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(154,13)
    assume true;
    assert {:id "id410"} $_ModifiesFrame[this, _module.C.cc];
    assert {:id "id411"} defass#n#0;
    assume true;
    $rhs#1 := n#0;
    $Heap := update($Heap, this, _module.C.cc, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(155,13)
    assume true;
    assert {:id "id414"} 0 <= LitInt(120);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(120);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    brr#0 := $nw;
    $Heap_at_1 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(157,5)
    if (*)
    {
        assume true;
        assume {:id "id462"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(160,7)
        assert {:id "id463"} defass#n#0;
        assert {:id "id464"} defass#n#0;
        assume true;
        assert {:id "id465"} n#0 == n#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(161,7)
        assert {:id "id466"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id467"} $Unbox(read($Heap_at_0, this, _module.C.cc)): ref == m#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(162,7)
        assert {:id "id468"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assert {:id "id469"} {:subsumption 0} $Unbox(read($Heap_at_0, this, _module.C.cc)): ref != null;
        assert {:id "id470"} $IsAlloc($Unbox(read($Heap_at_0, this, _module.C.cc)): ref, 
          Tclass._module.C?(), 
          $Heap_at_0);
        assert {:id "id471"} {:subsumption 0} m#0 != null;
        assume true;
        assert {:id "id472"} $Unbox(read($Heap_at_0, $Unbox(read($Heap_at_0, this, _module.C.cc)): ref, _module.C.x)): int
           == $Unbox(read($Heap, m#0, _module.C.x)): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id457"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(164,13)
        assume true;
        assert {:id "id458"} defass#n#0;
        assert {:id "id459"} n#0 != null;
        assert {:id "id460"} $IsAlloc(n#0, Tclass._module.C(), old($Heap));
        assume true;
        u#6_0 := $Unbox(read(old($Heap), n#0, _module.C.x)): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id452"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(166,13)
        assume true;
        assert {:id "id453"} defass#n#0;
        assert {:id "id454"} n#0 != null;
        assert {:id "id455"} $IsAlloc(n#0, Tclass._module.C(), $Heap_at_0);
        assume true;
        u#5_0 := $Unbox(read($Heap_at_0, n#0, _module.C.x)): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id445"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(168,13)
        assume true;
        assert {:id "id446"} defass#n#0;
        assert {:id "id447"} n#0 != null;
        assert {:id "id448"} $IsAlloc(n#0, Tclass._module.C(), $Heap_at_1);
        assume true;
        u#4_0 := $Unbox(read($Heap_at_1, n#0, _module.C.x)): int;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(169,7)
        assert {:id "id450"} {:subsumption 0} $Unbox(read($Heap, this, _module.C.cc)): ref != null;
        assume true;
        assert {:id "id451"} u#4_0
           == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.C.cc)): ref, _module.C.x)): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id432"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(171,13)
        assume true;
        assert {:id "id433"} arr#0 != null;
        assert {:id "id434"} $IsAlloc(arr#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id435"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(arr#0);
        assume true;
        a#3_0 := $Unbox(read(old($Heap), arr#0, IndexField(LitInt(0)))): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(172,9)
        assume true;
        assert {:id "id437"} arr#0 != null;
        assert {:id "id438"} $IsAlloc(arr#0, Tclass._System.array?(TInt), $Heap_at_0);
        assert {:id "id439"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(arr#0);
        assume true;
        a#3_0 := $Unbox(read($Heap_at_0, arr#0, IndexField(LitInt(0)))): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(173,9)
        assume true;
        assert {:id "id441"} arr#0 != null;
        assert {:id "id442"} $IsAlloc(arr#0, Tclass._System.array?(TInt), $Heap_at_1);
        assert {:id "id443"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(arr#0);
        assume true;
        a#3_0 := $Unbox(read($Heap_at_1, arr#0, IndexField(LitInt(0)))): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id427"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(175,13)
        assume true;
        assert {:id "id428"} brr#0 != null;
        assert {:id "id429"} $IsAlloc(brr#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id430"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(brr#0);
        assume true;
        a#2_0 := $Unbox(read(old($Heap), brr#0, IndexField(LitInt(0)))): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id422"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(177,13)
        assume true;
        assert {:id "id423"} brr#0 != null;
        assert {:id "id424"} $IsAlloc(brr#0, Tclass._System.array?(TInt), $Heap_at_0);
        assert {:id "id425"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(brr#0);
        assume true;
        a#1_0 := $Unbox(read($Heap_at_0, brr#0, IndexField(LitInt(0)))): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id417"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(179,13)
        assume true;
        assert {:id "id418"} brr#0 != null;
        assert {:id "id419"} $IsAlloc(brr#0, Tclass._System.array?(TInt), $Heap_at_1);
        assert {:id "id420"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(brr#0);
        assume true;
        a#0_0 := $Unbox(read($Heap_at_1, brr#0, IndexField(LitInt(0)))): int;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true)
           && !Lit(true);
        assert {:id "id416"} false;
    }

  after_1:
}



procedure {:verboseName "C.DefinednessUnchanged (well-formedness)"} CheckWellFormed$$_module.C.DefinednessUnchanged(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C()))
         && $IsAlloc(s#0, TSet(Tclass._module.C()), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.DefinednessUnchanged (call)"} Call$$_module.C.DefinednessUnchanged(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C()))
         && $IsAlloc(s#0, TSet(Tclass._module.C()), $Heap));
  // user-defined preconditions
  requires {:id "id474"} $Unbox(read($Heap, this, _module.C.cc)): ref == m#0;
  requires {:id "id475"} m#0 != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.DefinednessUnchanged (correctness)"} Impl$$_module.C.DefinednessUnchanged(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C()))
         && $IsAlloc(s#0, TSet(Tclass._module.C()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id476"} $Unbox(read($Heap, this, _module.C.cc)): ref == m#0;
  requires {:id "id477"} m#0 != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.DefinednessUnchanged (correctness)"} Impl$$_module.C.DefinednessUnchanged(this: ref, m#0: ref, s#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.C()) && $IsAlloc(n#0, Tclass._module.C(), $Heap);
  var $nw: ref;
  var $rhs#0: ref;
  var $rhs#1: ref;
  var s'#0: Set
     where $Is(s'#0, TSet(Tclass._module.C()))
       && $IsAlloc(s'#0, TSet(Tclass._module.C()), $Heap);
  var $Heap_at_1: Heap;
  var v#0_0: bool;
  var $unchanged#x0_0: ref;
  var $unchanged#x1_0: ref;
  var v#2_0: bool;
  var $rhs#2_0: int;
  var v#3_0: bool;
  var v#4_0: bool;

    // AddMethodImpl: DefinednessUnchanged, Impl$$_module.C.DefinednessUnchanged
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(187,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;

  after_0:
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(188,10)
    assert {:id "id479"} defass#n#0;
    assert {:id "id480"} n#0 != null;
    assume true;
    assert {:id "id481"} $_ModifiesFrame[n#0, _module.C.cc];
    assume true;
    $rhs#0 := this;
    $Heap := update($Heap, n#0, _module.C.cc, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(189,13)
    assume true;
    assert {:id "id484"} $_ModifiesFrame[this, _module.C.cc];
    assert {:id "id485"} defass#n#0;
    assume true;
    $rhs#1 := n#0;
    $Heap := update($Heap, this, _module.C.cc, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(190,12)
    assume true;
    assert {:id "id488"} defass#n#0;
    assume true;
    s'#0 := Set#Union(s#0, Set#UnionOne(Set#Empty(): Set, $Box(n#0)));
    $Heap_at_1 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(192,5)
    if (*)
    {
        assume true;
        assume {:id "id517"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(195,13)
        assume true;
        assert {:id "id518"} defass#n#0;
        assert {:id "id519"} $IsAlloc(n#0, Tclass._module.C(), old($Heap));
        assume true;
        v#4_0 := (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == n#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id513"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(197,13)
        assume true;
        assert {:id "id514"} defass#n#0;
        assert {:id "id515"} $IsAlloc(n#0, Tclass._module.C(), $Heap_at_0);
        assume true;
        v#3_0 := (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == n#0 ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id497"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(199,13)
        assume true;
        assert {:id "id498"} defass#n#0;
        assert {:id "id499"} $IsAlloc(n#0, Tclass._module.C(), $Heap_at_1);
        assume true;
        v#2_0 := (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == n#0 ==> read($Heap, $o, $f) == read($Heap_at_1, $o, $f));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(200,7)
        assume true;
        assert {:id "id501"} v#2_0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(201,7)
        assert {:id "id502"} $Unbox(read($Heap, this, _module.C.cc)): ref != null;
        assert {:id "id503"} $Unbox(read($Heap, this, _module.C.cc)): ref != null
           ==> $IsAlloc($Unbox(read($Heap, this, _module.C.cc)): ref, Tclass._module.C?(), $Heap_at_1);
        assume true;
        assert {:id "id504"} (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            $o == $Unbox(read($Heap, this, _module.C.cc)): ref
             ==> read($Heap, $o, $f) == read($Heap_at_1, $o, $f));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(202,12)
        assert {:id "id505"} $Unbox(read($Heap, this, _module.C.cc)): ref != null;
        assume true;
        assert {:id "id506"} $_ModifiesFrame[$Unbox(read($Heap, this, _module.C.cc)): ref, _module.C.x];
        assert {:id "id507"} $Unbox(read($Heap, this, _module.C.cc)): ref != null;
        assume true;
        $rhs#2_0 := $Unbox(read($Heap, $Unbox(read($Heap, this, _module.C.cc)): ref, _module.C.x)): int
           + 1;
        $Heap := update($Heap, $Unbox(read($Heap, this, _module.C.cc)): ref, _module.C.x, $Box($rhs#2_0));
        assume $IsGoodHeap($Heap);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(203,7)
        assert {:id "id510"} defass#n#0;
        assert {:id "id511"} $IsAlloc(n#0, Tclass._module.C(), $Heap_at_1);
        assume true;
        assert {:id "id512"} !(forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == n#0 ==> read($Heap, $o, $f) == read($Heap_at_1, $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id494"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(205,7)
        if (!Set#IsMember(s#0, $Box(this)))
        {
            havoc $unchanged#x1_0;
            assert {:id "id495"} Set#IsMember(s#0, $Box($unchanged#x1_0))
               ==> $IsAlloc($unchanged#x1_0, Tclass._module.C(), $Heap_at_0);
        }

        assume true;
        assert {:id "id496"} Set#IsMember(s#0, $Box(this))
           || (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
    }
    else if (*)
    {
        assume true;
        assume {:id "id491"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(207,13)
        assume true;
        havoc $unchanged#x0_0;
        assert {:id "id492"} Set#IsMember(s'#0, $Box($unchanged#x0_0))
           ==> $IsAlloc($unchanged#x0_0, Tclass._module.C(), $Heap_at_0);
        assume true;
        v#0_0 := (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null
             ==> 
            Set#IsMember(s'#0, $Box($o))
             ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id490"} false;
    }

  after_1:
}



procedure {:verboseName "C.DefinednessFresh (well-formedness)"} CheckWellFormed$$_module.C.DefinednessFresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.DefinednessFresh (call)"} Call$$_module.C.DefinednessFresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap));
  // user-defined preconditions
  requires {:id "id522"} $Unbox(read($Heap, this, _module.C.cc)): ref == m#0;
  requires {:id "id523"} m#0 != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.DefinednessFresh (correctness)"} Impl$$_module.C.DefinednessFresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap), 
    m#0: ref
       where $Is(m#0, Tclass._module.C?()) && $IsAlloc(m#0, Tclass._module.C?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id524"} $Unbox(read($Heap, this, _module.C.cc)): ref == m#0;
  requires {:id "id525"} m#0 != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.DefinednessFresh (correctness)"} Impl$$_module.C.DefinednessFresh(this: ref, m#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.C()) && $IsAlloc(n#0, Tclass._module.C(), $Heap);
  var $nw: ref;
  var $rhs#0: ref;
  var $rhs#1: ref;
  var brr#0: ref
     where $Is(brr#0, Tclass._System.array(TInt))
       && $IsAlloc(brr#0, Tclass._System.array(TInt), $Heap);
  var $Heap_at_1: Heap;

    // AddMethodImpl: DefinednessFresh, Impl$$_module.C.DefinednessFresh
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(215,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    n#0 := $nw;
    defass#n#0 := true;

  after_0:
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(216,10)
    assert {:id "id527"} defass#n#0;
    assert {:id "id528"} n#0 != null;
    assume true;
    assert {:id "id529"} $_ModifiesFrame[n#0, _module.C.cc];
    assume true;
    $rhs#0 := this;
    $Heap := update($Heap, n#0, _module.C.cc, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(217,13)
    assume true;
    assert {:id "id532"} $_ModifiesFrame[this, _module.C.cc];
    assert {:id "id533"} defass#n#0;
    assume true;
    $rhs#1 := n#0;
    $Heap := update($Heap, this, _module.C.cc, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(218,13)
    assume true;
    assert {:id "id536"} 0 <= LitInt(120);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(120);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    brr#0 := $nw;
    $Heap_at_1 := $Heap;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(220,5)
    if (*)
    {
        assume true;
        assume {:id "id549"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(223,7)
        assert {:id "id550"} defass#n#0;
        assert {:id "id551"} {:subsumption 0} n#0 != null;
        assume true;
        assert {:id "id552"} !($Unbox(read($Heap, n#0, _module.C.cc)): ref != null
           && !$Unbox(read(old($Heap), $Unbox(read($Heap, n#0, _module.C.cc)): ref, alloc)): bool);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(224,7)
        assert {:id "id553"} defass#n#0;
        assert {:id "id554"} {:subsumption 0} n#0 != null;
        assume true;
        assert {:id "id555"} !($Unbox(read($Heap, n#0, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_0, $Unbox(read($Heap, n#0, _module.C.cc)): ref, alloc)): bool);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(225,7)
        assert {:id "id556"} defass#n#0;
        assert {:id "id557"} {:subsumption 0} n#0 != null;
        assume true;
        assert {:id "id558"} !($Unbox(read($Heap, n#0, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_1, $Unbox(read($Heap, n#0, _module.C.cc)): ref, alloc)): bool);
    }
    else if (*)
    {
        assume true;
        assume {:id "id539"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(227,7)
        assert {:id "id540"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id541"} $Unbox(read($Heap_at_0, this, _module.C.cc)): ref == m#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(228,7)
        assert {:id "id542"} $IsAlloc(this, Tclass._module.C(), $Heap_at_0);
        assume true;
        assert {:id "id543"} !($Unbox(read($Heap_at_0, this, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_1, $Unbox(read($Heap_at_0, this, _module.C.cc)): ref, alloc)): bool);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(229,7)
        assert {:id "id544"} $IsAlloc(this, Tclass._module.C(), $Heap_at_1);
        assert {:id "id545"} defass#n#0;
        assume true;
        assert {:id "id546"} $Unbox(read($Heap_at_1, this, _module.C.cc)): ref == n#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/LabelsOldAt.dfy(230,7)
        assert {:id "id547"} $IsAlloc(this, Tclass._module.C(), $Heap_at_1);
        assume true;
        assert {:id "id548"} $Unbox(read($Heap_at_1, this, _module.C.cc)): ref != null
           && !$Unbox(read($Heap_at_0, $Unbox(read($Heap_at_1, this, _module.C.cc)): ref, alloc)): bool;
    }
    else
    {
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true);
        assert {:id "id538"} false;
    }

  after_1:
}



// function declaration for _module.C.FOld
function _module.C.FOld($prevHeap: Heap, $heap: Heap, this: ref, c#0: ref, c'#0: ref) : bool
uses {
// definition axiom for _module.C.FOld (revealed)
axiom {:id "id559"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
    { _module.C.FOld($prevHeap, $Heap, this, c#0, c'#0), $IsGoodHeap($Heap) } 
    _module.C.FOld#canCall($prevHeap, $Heap, this, c#0, c'#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.C())
           && $IsAlloc(this, Tclass._module.C(), $prevHeap)
           && $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C()))
       ==> _module.C.FOld($prevHeap, $Heap, this, c#0, c'#0)
         == (
          $Unbox(read($prevHeap, this, _module.C.x)): int == LitInt(3)
           && $Unbox(read($prevHeap, c#0, _module.C.x)): int == LitInt(3)
           && $Unbox(read($prevHeap, c'#0, _module.C.x)): int == LitInt(3)));
// definition axiom for _module.C.FOld for decreasing-related literals (revealed)
axiom {:id "id560"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
    {:weight 3} { _module.C.FOld($prevHeap, $Heap, this, Lit(c#0), Lit(c'#0)), $IsGoodHeap($Heap) } 
    _module.C.FOld#canCall($prevHeap, $Heap, this, Lit(c#0), Lit(c'#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.C())
           && $IsAlloc(this, Tclass._module.C(), $prevHeap)
           && $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C()))
       ==> _module.C.FOld($prevHeap, $Heap, this, Lit(c#0), Lit(c'#0))
         == (
          $Unbox(read($prevHeap, this, _module.C.x)): int == LitInt(3)
           && $Unbox(read($prevHeap, Lit(c#0), _module.C.x)): int == LitInt(3)
           && $Unbox(read($prevHeap, Lit(c'#0), _module.C.x)): int == LitInt(3)));
// definition axiom for _module.C.FOld for all literals (revealed)
axiom {:id "id561"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
    {:weight 3} { _module.C.FOld($prevHeap, $Heap, Lit(this), Lit(c#0), Lit(c'#0)), $IsGoodHeap($Heap) } 
    _module.C.FOld#canCall($prevHeap, $Heap, Lit(this), Lit(c#0), Lit(c'#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.C())
           && $IsAlloc(this, Tclass._module.C(), $prevHeap)
           && $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C()))
       ==> _module.C.FOld($prevHeap, $Heap, Lit(this), Lit(c#0), Lit(c'#0))
         == (
          $Unbox(read($prevHeap, Lit(this), _module.C.x)): int == LitInt(3)
           && $Unbox(read($prevHeap, Lit(c#0), _module.C.x)): int == LitInt(3)
           && $Unbox(read($prevHeap, Lit(c'#0), _module.C.x)): int == LitInt(3)));
}

function _module.C.FOld#canCall($prevHeap: Heap, $heap: Heap, this: ref, c#0: ref, c'#0: ref) : bool;

// frame axiom for _module.C.FOld
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref, c#0: ref, c'#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.C.FOld($prevHeap, $h1, this, c#0, c'#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.C())
       && (_module.C.FOld#canCall($prevHeap, $h0, this, c#0, c'#0)
         || ($Is(c#0, Tclass._module.C()) && $Is(c'#0, Tclass._module.C())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> _module.C.FOld($prevHeap, $h0, this, c#0, c'#0)
       == _module.C.FOld($prevHeap, $h1, this, c#0, c'#0));

function _module.C.FOld#requires(Heap, Heap, ref, ref, ref) : bool;

// #requires axiom for _module.C.FOld
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
  { _module.C.FOld#requires($prevHeap, $Heap, this, c#0, c'#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.C())
       && $IsAlloc(this, Tclass._module.C(), $prevHeap)
       && $Is(c#0, Tclass._module.C())
       && $Is(c'#0, Tclass._module.C())
     ==> _module.C.FOld#requires($prevHeap, $Heap, this, c#0, c'#0)
       == $IsAlloc(c#0, Tclass._module.C(), $prevHeap));

procedure {:verboseName "C.FOld (well-formedness)"} CheckWellformed$$_module.C.FOld(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), previous$Heap), 
    c'#0: ref
       where $Is(c'#0, Tclass._module.C())
         && $IsAlloc(c'#0, Tclass._module.C(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.FOld (well-formedness)"} CheckWellformed$$_module.C.FOld(previous$Heap: Heap, current$Heap: Heap, this: ref, c#0: ref, c'#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;


    $Heap := current$Heap;
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
        assert {:id "id562"} $IsAlloc(this, Tclass._module.C(), old($Heap));
        if ($Unbox(read(old($Heap), this, _module.C.x)): int == LitInt(3))
        {
            assert {:id "id563"} c#0 != null;
            assert {:id "id564"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
        }

        if ($Unbox(read(old($Heap), this, _module.C.x)): int == LitInt(3)
           && $Unbox(read(old($Heap), c#0, _module.C.x)): int == LitInt(3))
        {
            assert {:id "id565"} c'#0 != null;
            assert {:id "id566"} $IsAlloc(c'#0, Tclass._module.C(), old($Heap));
        }

        assume {:id "id567"} _module.C.FOld(old($Heap), $Heap, this, c#0, c'#0)
           == (
            $Unbox(read(old($Heap), this, _module.C.x)): int == LitInt(3)
             && $Unbox(read(old($Heap), c#0, _module.C.x)): int == LitInt(3)
             && $Unbox(read(old($Heap), c'#0, _module.C.x)): int == LitInt(3));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.C.FOld(old($Heap), $Heap, this, c#0, c'#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module.C.FUnchanged
function _module.C.FUnchanged($prevHeap: Heap, 
    $heap: Heap, 
    this: ref, 
    x#0: int, 
    c#0: ref, 
    c'#0: ref, 
    s#0: Set, 
    s'#0: Set)
   : bool
uses {
// definition axiom for _module.C.FUnchanged (revealed)
axiom {:id "id568"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, 
      $Heap: Heap, 
      this: ref, 
      x#0: int, 
      c#0: ref, 
      c'#0: ref, 
      s#0: Set, 
      s'#0: Set :: 
    { _module.C.FUnchanged($prevHeap, $Heap, this, x#0, c#0, c'#0, s#0, s'#0), $IsGoodHeap($Heap) } 
    _module.C.FUnchanged#canCall($prevHeap, $Heap, this, x#0, c#0, c'#0, s#0, s'#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.C())
           && $IsAlloc(this, Tclass._module.C(), $prevHeap)
           && $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C())
           && $Is(s#0, TSet(Tclass._module.C()))
           && $Is(s'#0, TSet(Tclass._module.C())))
       ==> _module.C.FUnchanged($prevHeap, $Heap, this, x#0, c#0, c'#0, s#0, s'#0)
         == (
          (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == this ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (x#0 == LitInt(7)
             ==> (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == c'#0 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f)))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read($prevHeap, $o, $f))
           && (x#0 == LitInt(9)
             ==> (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                Set#IsMember(s'#0, $Box($o))
                 ==> read($Heap, $o, $f) == read($prevHeap, $o, $f)))));
}

function _module.C.FUnchanged#canCall($prevHeap: Heap, 
    $heap: Heap, 
    this: ref, 
    x#0: int, 
    c#0: ref, 
    c'#0: ref, 
    s#0: Set, 
    s'#0: Set)
   : bool;

// frame axiom for _module.C.FUnchanged
axiom (forall $prevHeap: Heap, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref, 
    x#0: int, 
    c#0: ref, 
    c'#0: ref, 
    s#0: Set, 
    s'#0: Set :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.C.FUnchanged($prevHeap, $h1, this, x#0, c#0, c'#0, s#0, s'#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.C())
       && (_module.C.FUnchanged#canCall($prevHeap, $h0, this, x#0, c#0, c'#0, s#0, s'#0)
         || (
          $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C())
           && $Is(s#0, TSet(Tclass._module.C()))
           && $Is(s'#0, TSet(Tclass._module.C()))))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || $o == c#0
             || $o == c'#0
             || Set#IsMember(s#0, $Box($o))
             || Set#IsMember(s'#0, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.C.FUnchanged($prevHeap, $h0, this, x#0, c#0, c'#0, s#0, s'#0)
       == _module.C.FUnchanged($prevHeap, $h1, this, x#0, c#0, c'#0, s#0, s'#0));

function _module.C.FUnchanged#requires(Heap, Heap, ref, int, ref, ref, Set, Set) : bool;

// #requires axiom for _module.C.FUnchanged
axiom (forall $prevHeap: Heap, 
    $Heap: Heap, 
    this: ref, 
    x#0: int, 
    c#0: ref, 
    c'#0: ref, 
    s#0: Set, 
    s'#0: Set :: 
  { _module.C.FUnchanged#requires($prevHeap, $Heap, this, x#0, c#0, c'#0, s#0, s'#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.C())
       && $IsAlloc(this, Tclass._module.C(), $prevHeap)
       && $Is(c#0, Tclass._module.C())
       && $Is(c'#0, Tclass._module.C())
       && $Is(s#0, TSet(Tclass._module.C()))
       && $Is(s'#0, TSet(Tclass._module.C()))
     ==> _module.C.FUnchanged#requires($prevHeap, $Heap, this, x#0, c#0, c'#0, s#0, s'#0)
       == (
        $IsAlloc(x#0, TInt, $prevHeap)
         && $IsAlloc(c#0, Tclass._module.C(), $prevHeap)
         && $IsAlloc(s#0, TSet(Tclass._module.C()), $prevHeap)));

procedure {:verboseName "C.FUnchanged (well-formedness)"} CheckWellformed$$_module.C.FUnchanged(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), previous$Heap), 
    x#0: int, 
    c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), previous$Heap), 
    c'#0: ref
       where $Is(c'#0, Tclass._module.C())
         && $IsAlloc(c'#0, Tclass._module.C(), current$Heap), 
    s#0: Set
       where $Is(s#0, TSet(Tclass._module.C()))
         && $IsAlloc(s#0, TSet(Tclass._module.C()), previous$Heap), 
    s'#0: Set
       where $Is(s'#0, TSet(Tclass._module.C()))
         && $IsAlloc(s'#0, TSet(Tclass._module.C()), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.FUnchanged (well-formedness)"} CheckWellformed$$_module.C.FUnchanged(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref, 
    x#0: int, 
    c#0: ref, 
    c'#0: ref, 
    s#0: Set, 
    s'#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var $unchanged#x0: ref;
  var $unchanged#x1: ref;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;

    $Heap := current$Heap;
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || $o == c#0
           || $o == c'#0
           || Set#IsMember(s#0, $Box($o))
           || Set#IsMember(s'#0, $Box($o)));
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
        assert {:id "id569"} $IsAlloc(this, Tclass._module.C(), old($Heap));
        b$reqreads#0 := (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
             ==> $_ReadsFrame[$o, $f]);
        if ((forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            assert {:id "id570"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
            b$reqreads#1 := (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == c#0
                 ==> $_ReadsFrame[$o, $f]);
        }

        if ((forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            if (x#0 == LitInt(7))
            {
                assert {:id "id571"} $IsAlloc(c'#0, Tclass._module.C(), old($Heap));
                b$reqreads#2 := (forall $o: ref, $f: Field :: 
                  $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == c'#0
                     ==> $_ReadsFrame[$o, $f]);
            }
        }

        if ((forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (x#0 == LitInt(7)
             ==> (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == c'#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))))
        {
            havoc $unchanged#x0;
            assert {:id "id572"} Set#IsMember(s#0, $Box($unchanged#x0))
               ==> $IsAlloc($unchanged#x0, Tclass._module.C(), old($Heap));
            b$reqreads#3 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && Set#IsMember(s#0, $Box($o))
                 ==> $_ReadsFrame[$o, $f]);
        }

        if ((forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
           && (x#0 == LitInt(7)
             ==> (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == c'#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
           && (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null
               ==> 
              Set#IsMember(s#0, $Box($o))
               ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
        {
            if (x#0 == LitInt(9))
            {
                havoc $unchanged#x1;
                assert {:id "id573"} Set#IsMember(s'#0, $Box($unchanged#x1))
                   ==> $IsAlloc($unchanged#x1, Tclass._module.C(), old($Heap));
                b$reqreads#4 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && Set#IsMember(s'#0, $Box($o))
                     ==> $_ReadsFrame[$o, $f]);
            }
        }

        assume {:id "id574"} _module.C.FUnchanged(old($Heap), $Heap, this, x#0, c#0, c'#0, s#0, s'#0)
           == (
            (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == this ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (x#0 == LitInt(7)
               ==> (forall $o: ref, $f: Field :: 
                { read($Heap, $o, $f) } 
                $o != null ==> $o == c'#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)))
             && (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null
                 ==> 
                Set#IsMember(s#0, $Box($o))
                 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))
             && (x#0 == LitInt(9)
               ==> (forall $o: ref, $f: Field :: 
                { read($Heap, $o, $f) } 
                $o != null
                   ==> 
                  Set#IsMember(s'#0, $Box($o))
                   ==> read($Heap, $o, $f) == read(old($Heap), $o, $f))));
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.C.FUnchanged(old($Heap), $Heap, this, x#0, c#0, c'#0, s#0, s'#0), TBool);
        assert {:id "id575"} b$reqreads#0;
        assert {:id "id576"} b$reqreads#1;
        assert {:id "id577"} b$reqreads#2;
        assert {:id "id578"} b$reqreads#3;
        assert {:id "id579"} b$reqreads#4;
        return;

        assume false;
    }
}



// function declaration for _module.C.FFresh
function _module.C.FFresh($prevHeap: Heap, $heap: Heap, this: ref, c#0: ref, c'#0: ref) : bool
uses {
// definition axiom for _module.C.FFresh (revealed)
axiom {:id "id580"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
    { _module.C.FFresh($prevHeap, $Heap, this, c#0, c'#0), $IsGoodHeap($Heap) } 
    _module.C.FFresh#canCall($prevHeap, $Heap, this, c#0, c'#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.C())
           && $IsAlloc(this, Tclass._module.C(), $prevHeap)
           && $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C()))
       ==> _module.C.FFresh($prevHeap, $Heap, this, c#0, c'#0)
         == (
          this != null
           && !$Unbox(read($prevHeap, this, alloc)): bool
           && 
          c#0 != null
           && !$Unbox(read($prevHeap, c#0, alloc)): bool
           && 
          c'#0 != null
           && !$Unbox(read($prevHeap, c'#0, alloc)): bool));
// definition axiom for _module.C.FFresh for decreasing-related literals (revealed)
axiom {:id "id581"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
    {:weight 3} { _module.C.FFresh($prevHeap, $Heap, this, Lit(c#0), Lit(c'#0)), $IsGoodHeap($Heap) } 
    _module.C.FFresh#canCall($prevHeap, $Heap, this, Lit(c#0), Lit(c'#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.C())
           && $IsAlloc(this, Tclass._module.C(), $prevHeap)
           && $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C()))
       ==> _module.C.FFresh($prevHeap, $Heap, this, Lit(c#0), Lit(c'#0))
         == (
          this != null
           && !$Unbox(read($prevHeap, this, alloc)): bool
           && 
          Lit(c#0) != null
           && !$Unbox(read($prevHeap, Lit(c#0), alloc)): bool
           && 
          Lit(c'#0) != null
           && !$Unbox(read($prevHeap, Lit(c'#0), alloc)): bool));
// definition axiom for _module.C.FFresh for all literals (revealed)
axiom {:id "id582"} 1 <= $FunctionContextHeight
   ==> (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
    {:weight 3} { _module.C.FFresh($prevHeap, $Heap, Lit(this), Lit(c#0), Lit(c'#0)), $IsGoodHeap($Heap) } 
    _module.C.FFresh#canCall($prevHeap, $Heap, Lit(this), Lit(c#0), Lit(c'#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($prevHeap)
           && $IsGoodHeap($Heap)
           && $HeapSucc($prevHeap, $Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.C())
           && $IsAlloc(this, Tclass._module.C(), $prevHeap)
           && $Is(c#0, Tclass._module.C())
           && $Is(c'#0, Tclass._module.C()))
       ==> _module.C.FFresh($prevHeap, $Heap, Lit(this), Lit(c#0), Lit(c'#0))
         == (
          Lit(this) != null
           && !$Unbox(read($prevHeap, Lit(this), alloc)): bool
           && 
          Lit(c#0) != null
           && !$Unbox(read($prevHeap, Lit(c#0), alloc)): bool
           && 
          Lit(c'#0) != null
           && !$Unbox(read($prevHeap, Lit(c'#0), alloc)): bool));
}

function _module.C.FFresh#canCall($prevHeap: Heap, $heap: Heap, this: ref, c#0: ref, c'#0: ref) : bool;

// frame axiom for _module.C.FFresh
axiom (forall $prevHeap: Heap, $h0: Heap, $h1: Heap, this: ref, c#0: ref, c'#0: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.C.FFresh($prevHeap, $h1, this, c#0, c'#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.C())
       && (_module.C.FFresh#canCall($prevHeap, $h0, this, c#0, c'#0)
         || ($Is(c#0, Tclass._module.C()) && $Is(c'#0, Tclass._module.C())))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: true)
     ==> _module.C.FFresh($prevHeap, $h0, this, c#0, c'#0)
       == _module.C.FFresh($prevHeap, $h1, this, c#0, c'#0));

function _module.C.FFresh#requires(Heap, Heap, ref, ref, ref) : bool;

// #requires axiom for _module.C.FFresh
axiom (forall $prevHeap: Heap, $Heap: Heap, this: ref, c#0: ref, c'#0: ref :: 
  { _module.C.FFresh#requires($prevHeap, $Heap, this, c#0, c'#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($prevHeap)
       && $IsGoodHeap($Heap)
       && $HeapSucc($prevHeap, $Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.C())
       && $IsAlloc(this, Tclass._module.C(), $prevHeap)
       && $Is(c#0, Tclass._module.C())
       && $Is(c'#0, Tclass._module.C())
     ==> _module.C.FFresh#requires($prevHeap, $Heap, this, c#0, c'#0)
       == $IsAlloc(c#0, Tclass._module.C(), $prevHeap));

procedure {:verboseName "C.FFresh (well-formedness)"} CheckWellformed$$_module.C.FFresh(previous$Heap: Heap, 
    current$Heap: Heap, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), previous$Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), previous$Heap), 
    c'#0: ref
       where $Is(c'#0, Tclass._module.C())
         && $IsAlloc(c'#0, Tclass._module.C(), current$Heap));
  free requires 1 == $FunctionContextHeight;
  free requires previous$Heap == $Heap
     && 
    $HeapSucc(previous$Heap, current$Heap)
     && $IsGoodHeap(current$Heap);
  modifies $Heap;



// $Is axiom for non-null type _module.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C()) } { $Is(c#0, Tclass._module.C?()) } 
  $Is(c#0, Tclass._module.C()) <==> $Is(c#0, Tclass._module.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C?(), $h));

const unique class.FreeVariableRegressionTests.__default: ClassName;

const unique class.FreeVariableRegressionTests.C?: ClassName;

function Tclass.FreeVariableRegressionTests.C?() : Ty
uses {
// Tclass.FreeVariableRegressionTests.C? Tag
axiom Tag(Tclass.FreeVariableRegressionTests.C?())
     == Tagclass.FreeVariableRegressionTests.C?
   && TagFamily(Tclass.FreeVariableRegressionTests.C?()) == tytagFamily$C;
}

const unique Tagclass.FreeVariableRegressionTests.C?: TyTag;

// Box/unbox axiom for Tclass.FreeVariableRegressionTests.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.FreeVariableRegressionTests.C?()) } 
  $IsBox(bx, Tclass.FreeVariableRegressionTests.C?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.FreeVariableRegressionTests.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.FreeVariableRegressionTests.C?()) } 
  $Is($o, Tclass.FreeVariableRegressionTests.C?())
     <==> $o == null || dtype($o) == Tclass.FreeVariableRegressionTests.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.FreeVariableRegressionTests.C?(), $h) } 
  $IsAlloc($o, Tclass.FreeVariableRegressionTests.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const FreeVariableRegressionTests.C.x: Field
uses {
axiom FDim(FreeVariableRegressionTests.C.x) == 0
   && FieldOfDecl(class.FreeVariableRegressionTests.C?, field$x)
     == FreeVariableRegressionTests.C.x
   && !$IsGhostField(FreeVariableRegressionTests.C.x);
}

// C.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, FreeVariableRegressionTests.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.FreeVariableRegressionTests.C?()
     ==> $Is($Unbox(read($h, $o, FreeVariableRegressionTests.C.x)): int, TInt));

// C.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, FreeVariableRegressionTests.C.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.FreeVariableRegressionTests.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, FreeVariableRegressionTests.C.x)): int, TInt, $h));

function Tclass.FreeVariableRegressionTests.C() : Ty
uses {
// Tclass.FreeVariableRegressionTests.C Tag
axiom Tag(Tclass.FreeVariableRegressionTests.C())
     == Tagclass.FreeVariableRegressionTests.C
   && TagFamily(Tclass.FreeVariableRegressionTests.C()) == tytagFamily$C;
}

const unique Tagclass.FreeVariableRegressionTests.C: TyTag;

// Box/unbox axiom for Tclass.FreeVariableRegressionTests.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.FreeVariableRegressionTests.C()) } 
  $IsBox(bx, Tclass.FreeVariableRegressionTests.C())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.FreeVariableRegressionTests.C()));

// $Is axiom for non-null type FreeVariableRegressionTests.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.FreeVariableRegressionTests.C()) } 
    { $Is(c#0, Tclass.FreeVariableRegressionTests.C?()) } 
  $Is(c#0, Tclass.FreeVariableRegressionTests.C())
     <==> $Is(c#0, Tclass.FreeVariableRegressionTests.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type FreeVariableRegressionTests.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.C(), $h) } 
    { $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.C?(), $h) } 
  $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.C(), $h)
     <==> $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.C?(), $h));

// Constructor function declaration
function #FreeVariableRegressionTests.Color.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#FreeVariableRegressionTests.Color.Red())
   == ##FreeVariableRegressionTests.Color.Red;
// Constructor $Is
axiom $Is(#FreeVariableRegressionTests.Color.Red(), 
  Tclass.FreeVariableRegressionTests.Color());
// Constructor literal
axiom #FreeVariableRegressionTests.Color.Red()
   == Lit(#FreeVariableRegressionTests.Color.Red());
}

const unique ##FreeVariableRegressionTests.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#FreeVariableRegressionTests.Color.Red())
   == ##FreeVariableRegressionTests.Color.Red;
}

function FreeVariableRegressionTests.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { FreeVariableRegressionTests.Color.Red_q(d) } 
  FreeVariableRegressionTests.Color.Red_q(d)
     <==> DatatypeCtorId(d) == ##FreeVariableRegressionTests.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { FreeVariableRegressionTests.Color.Red_q(d) } 
  FreeVariableRegressionTests.Color.Red_q(d)
     ==> d == #FreeVariableRegressionTests.Color.Red());

function Tclass.FreeVariableRegressionTests.Color() : Ty
uses {
// Tclass.FreeVariableRegressionTests.Color Tag
axiom Tag(Tclass.FreeVariableRegressionTests.Color())
     == Tagclass.FreeVariableRegressionTests.Color
   && TagFamily(Tclass.FreeVariableRegressionTests.Color()) == tytagFamily$Color;
}

const unique Tagclass.FreeVariableRegressionTests.Color: TyTag;

// Box/unbox axiom for Tclass.FreeVariableRegressionTests.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.FreeVariableRegressionTests.Color()) } 
  $IsBox(bx, Tclass.FreeVariableRegressionTests.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.FreeVariableRegressionTests.Color()));

// Constructor function declaration
function #FreeVariableRegressionTests.Color.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#FreeVariableRegressionTests.Color.Blue())
   == ##FreeVariableRegressionTests.Color.Blue;
// Constructor $Is
axiom $Is(#FreeVariableRegressionTests.Color.Blue(), 
  Tclass.FreeVariableRegressionTests.Color());
// Constructor literal
axiom #FreeVariableRegressionTests.Color.Blue()
   == Lit(#FreeVariableRegressionTests.Color.Blue());
}

const unique ##FreeVariableRegressionTests.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#FreeVariableRegressionTests.Color.Blue())
   == ##FreeVariableRegressionTests.Color.Blue;
}

function FreeVariableRegressionTests.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { FreeVariableRegressionTests.Color.Blue_q(d) } 
  FreeVariableRegressionTests.Color.Blue_q(d)
     <==> DatatypeCtorId(d) == ##FreeVariableRegressionTests.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { FreeVariableRegressionTests.Color.Blue_q(d) } 
  FreeVariableRegressionTests.Color.Blue_q(d)
     ==> d == #FreeVariableRegressionTests.Color.Blue());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.FreeVariableRegressionTests.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.FreeVariableRegressionTests.Color())
     ==> $IsAlloc(d, Tclass.FreeVariableRegressionTests.Color(), $h));

// Depth-one case-split function
function $IsA#FreeVariableRegressionTests.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#FreeVariableRegressionTests.Color(d) } 
  $IsA#FreeVariableRegressionTests.Color(d)
     ==> FreeVariableRegressionTests.Color.Red_q(d)
       || FreeVariableRegressionTests.Color.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { FreeVariableRegressionTests.Color.Blue_q(d), $Is(d, Tclass.FreeVariableRegressionTests.Color()) } 
    { FreeVariableRegressionTests.Color.Red_q(d), $Is(d, Tclass.FreeVariableRegressionTests.Color()) } 
  $Is(d, Tclass.FreeVariableRegressionTests.Color())
     ==> FreeVariableRegressionTests.Color.Red_q(d)
       || FreeVariableRegressionTests.Color.Blue_q(d));

// Datatype extensional equality declaration
function FreeVariableRegressionTests.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #FreeVariableRegressionTests.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { FreeVariableRegressionTests.Color#Equal(a, b), FreeVariableRegressionTests.Color.Red_q(a) } 
    { FreeVariableRegressionTests.Color#Equal(a, b), FreeVariableRegressionTests.Color.Red_q(b) } 
  FreeVariableRegressionTests.Color.Red_q(a)
       && FreeVariableRegressionTests.Color.Red_q(b)
     ==> FreeVariableRegressionTests.Color#Equal(a, b));

// Datatype extensional equality definition: #FreeVariableRegressionTests.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { FreeVariableRegressionTests.Color#Equal(a, b), FreeVariableRegressionTests.Color.Blue_q(a) } 
    { FreeVariableRegressionTests.Color#Equal(a, b), FreeVariableRegressionTests.Color.Blue_q(b) } 
  FreeVariableRegressionTests.Color.Blue_q(a)
       && FreeVariableRegressionTests.Color.Blue_q(b)
     ==> FreeVariableRegressionTests.Color#Equal(a, b));

// Datatype extensionality axiom: FreeVariableRegressionTests.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { FreeVariableRegressionTests.Color#Equal(a, b) } 
  FreeVariableRegressionTests.Color#Equal(a, b) <==> a == b);

const unique class.FreeVariableRegressionTests.Color: ClassName;

procedure {:verboseName "FreeVariableRegressionTests.Color.DatatypeSaysEight (well-formedness)"} CheckWellFormed$$FreeVariableRegressionTests.Color.DatatypeSaysEight(this: DatatypeType
       where $Is(this, Tclass.FreeVariableRegressionTests.Color())
         && $IsAlloc(this, Tclass.FreeVariableRegressionTests.Color(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass.FreeVariableRegressionTests.C())
         && $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FreeVariableRegressionTests.Color.DatatypeSaysEight (call)"} Call$$FreeVariableRegressionTests.Color.DatatypeSaysEight(this: DatatypeType
       where $Is(this, Tclass.FreeVariableRegressionTests.Color())
         && $IsAlloc(this, Tclass.FreeVariableRegressionTests.Color(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass.FreeVariableRegressionTests.C())
         && $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.C(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id584"} $Unbox(read($Heap, c#0, FreeVariableRegressionTests.C.x)): int == LitInt(8);
  // frame condition
  free ensures old($Heap) == $Heap;



const unique class.FreeVariableRegressionTests.D?: ClassName;

function Tclass.FreeVariableRegressionTests.D?() : Ty
uses {
// Tclass.FreeVariableRegressionTests.D? Tag
axiom Tag(Tclass.FreeVariableRegressionTests.D?())
     == Tagclass.FreeVariableRegressionTests.D?
   && TagFamily(Tclass.FreeVariableRegressionTests.D?()) == tytagFamily$D;
}

const unique Tagclass.FreeVariableRegressionTests.D?: TyTag;

// Box/unbox axiom for Tclass.FreeVariableRegressionTests.D?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.FreeVariableRegressionTests.D?()) } 
  $IsBox(bx, Tclass.FreeVariableRegressionTests.D?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.FreeVariableRegressionTests.D?()));

// $Is axiom for class D
axiom (forall $o: ref :: 
  { $Is($o, Tclass.FreeVariableRegressionTests.D?()) } 
  $Is($o, Tclass.FreeVariableRegressionTests.D?())
     <==> $o == null || dtype($o) == Tclass.FreeVariableRegressionTests.D?());

// $IsAlloc axiom for class D
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.FreeVariableRegressionTests.D?(), $h) } 
  $IsAlloc($o, Tclass.FreeVariableRegressionTests.D?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.FreeVariableRegressionTests.D() : Ty
uses {
// Tclass.FreeVariableRegressionTests.D Tag
axiom Tag(Tclass.FreeVariableRegressionTests.D())
     == Tagclass.FreeVariableRegressionTests.D
   && TagFamily(Tclass.FreeVariableRegressionTests.D()) == tytagFamily$D;
}

const unique Tagclass.FreeVariableRegressionTests.D: TyTag;

// Box/unbox axiom for Tclass.FreeVariableRegressionTests.D
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.FreeVariableRegressionTests.D()) } 
  $IsBox(bx, Tclass.FreeVariableRegressionTests.D())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.FreeVariableRegressionTests.D()));

// $Is axiom for non-null type FreeVariableRegressionTests.D
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.FreeVariableRegressionTests.D()) } 
    { $Is(c#0, Tclass.FreeVariableRegressionTests.D?()) } 
  $Is(c#0, Tclass.FreeVariableRegressionTests.D())
     <==> $Is(c#0, Tclass.FreeVariableRegressionTests.D?()) && c#0 != null);

// $IsAlloc axiom for non-null type FreeVariableRegressionTests.D
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.D(), $h) } 
    { $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.D?(), $h) } 
  $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.D(), $h)
     <==> $IsAlloc(c#0, Tclass.FreeVariableRegressionTests.D?(), $h));

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

const unique tytagFamily$_#Func5: TyTagFamily;

const unique tytagFamily$_#PartialFunc5: TyTagFamily;

const unique tytagFamily$_#TotalFunc5: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique tytagFamily$D: TyTagFamily;

const unique field$x: NameFamily;

const unique field$z: NameFamily;

const unique field$cc: NameFamily;

// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy

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

procedure {:verboseName "L0 (well-formedness)"} CheckWellFormed$$_module.__default.L0(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "L0 (call)"} Call$$_module.__default.L0(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "L0 (correctness)"} Impl$$_module.__default.L0(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L0 (correctness)"} Impl$$_module.__default.L0(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: L0, Impl$$_module.__default.L0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(25,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(2);
    i#0 := $rhs#0;
    j#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(26,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id5"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id6"} $w$loop#0 ==> i#0 <= n#0;
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
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id4"} LitInt(0) <= i#0 && i#0 <= n#0;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(28,3)
    assume true;
    assert {:id "id7"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(29,3)
    assume true;
    assert {:id "id8"} j#0 == LitInt(2);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(30,3)
    assume true;
    assert {:id "id9"} n#0 == LitInt(0);
}



procedure {:verboseName "L1 (well-formedness)"} CheckWellFormed$$_module.__default.L1(n#0: int where LitInt(0) <= n#0) returns (i#0: int, j#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "L1 (call)"} Call$$_module.__default.L1(n#0: int where LitInt(0) <= n#0) returns (i#0: int, j#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "L1 (correctness)"} Impl$$_module.__default.L1(n#0: int where LitInt(0) <= n#0)
   returns (i#0: int, j#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L1 (correctness)"} Impl$$_module.__default.L1(n#0: int) returns (i#0: int, j#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: L1, Impl$$_module.__default.L1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(34,8)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(2);
    i#0 := $rhs#0;
    j#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(35,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id15"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id16"} $w$loop#0 ==> i#0 <= n#0;
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
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id14"} LitInt(0) <= i#0 && i#0 <= n#0;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(37,3)
    assume true;
    assert {:id "id17"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(38,3)
    assume true;
    assert {:id "id18"} j#0 == LitInt(2);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(39,3)
    assume true;
    assert {:id "id19"} n#0 == LitInt(0);
}



procedure {:verboseName "L2 (well-formedness)"} CheckWellFormed$$_module.__default.L2(n#0: int) returns (r#0: int, s#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "L2 (call)"} Call$$_module.__default.L2(n#0: int) returns (r#0: int, s#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "L2 (correctness)"} Impl$$_module.__default.L2(n#0: int) returns (r#0: int, s#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L2 (correctness)"} Impl$$_module.__default.L2(n#0: int) returns (r#0: int, s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: L2, Impl$$_module.__default.L2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(44,5)
    assume true;
    assume true;
    r#0 := s#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(45,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(46,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
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
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(47,3)
    assume true;
    assert {:id "id22"} r#0 == s#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(48,3)
    assume true;
    assert {:id "id23"} i#0 == LitInt(0);
}



procedure {:verboseName "L3 (well-formedness)"} CheckWellFormed$$_module.__default.L3(n#0: int) returns (r#0: int, s#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "L3 (call)"} Call$$_module.__default.L3(n#0: int) returns (r#0: int, s#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "L3 (correctness)"} Impl$$_module.__default.L3(n#0: int) returns (r#0: int, s#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L3 (correctness)"} Impl$$_module.__default.L3(n#0: int) returns (r#0: int, s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var kn#0: int;
  var kr#0: int;
  var ks#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: L3, Impl$$_module.__default.L3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(53,18)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := n#0;
    assume true;
    $rhs#1 := r#0;
    assume true;
    $rhs#2 := s#0;
    kn#0 := $rhs#0;
    kr#0 := $rhs#1;
    ks#0 := $rhs#2;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(54,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(55,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 + s#0 - i#0;
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
      free invariant n#0 + s#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 + s#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, s#0;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(56,3)
    assume true;
    assert {:id "id31"} kn#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(57,3)
    assume true;
    assert {:id "id32"} i#0 == LitInt(0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(58,3)
    assume true;
    assert {:id "id33"} kr#0 == r#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(59,3)
    assume true;
    assert {:id "id34"} ks#0 == s#0;
}



procedure {:verboseName "L4 (well-formedness)"} CheckWellFormed$$_module.__default.L4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int)
   returns (r#0: int, s#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "L4 (call)"} Call$$_module.__default.L4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int)
   returns (r#0: int, s#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "L4 (correctness)"} Impl$$_module.__default.L4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int)
   returns (r#0: int, s#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L4 (correctness)"} Impl$$_module.__default.L4(a#0: ref, n#0: int) returns (r#0: int, s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ks#0: int;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: L4, Impl$$_module.__default.L4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(65,10)
    assume true;
    assume true;
    ks#0 := s#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(66,5)
    assume true;
    assume true;
    r#0 := n#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(67,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(68,3)
    // Assume Fuel Constant
    if (r#0 < 3)
    {
    }
    else
    {
    }

    assert {:id "id38"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && Set#IsMember((if r#0 < 3
               then Set#UnionOne(Set#Empty(): Set, $Box(a#0))
               else Set#Empty(): Set), 
            $Box($o))
         ==> $_ModifiesFrame[$o, $f]);
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> Set#IsMember((if r#0 < 3
             then Set#UnionOne(Set#Empty(): Set, $Box(a#0))
             else Set#Empty(): Set), 
          $Box($o)));
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 + s#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant n#0 + s#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 + s#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, s#0, $Heap;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(70,3)
    assume true;
    assert {:id "id39"} i#0 == LitInt(0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(71,3)
    assume true;
    assert {:id "id40"} r#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(72,3)
    assume true;
    assert {:id "id41"} s#0 == ks#0;
}



procedure {:verboseName "L5 (well-formedness)"} CheckWellFormed$$_module.__default.L5(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int)
   returns (r#0: int, s#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "L5 (call)"} Call$$_module.__default.L5(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int)
   returns (r#0: int, s#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "L5 (correctness)"} Impl$$_module.__default.L5(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int)
   returns (r#0: int, s#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L5 (correctness)"} Impl$$_module.__default.L5(a#0: ref, n#0: int) returns (r#0: int, s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ks#0: int;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: L5, Impl$$_module.__default.L5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(77,10)
    assume true;
    assume true;
    ks#0 := s#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(78,5)
    assume true;
    assume true;
    r#0 := n#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(79,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(80,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := r#0;
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
      free invariant r#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 + s#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, s#0, r#0;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(82,3)
    assume true;
    assert {:id "id45"} r#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(83,3)
    assume true;
    assert {:id "id46"} s#0 == ks#0;
}



procedure {:verboseName "L6 (well-formedness)"} CheckWellFormed$$_module.__default.L6();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "L6 (call)"} Call$$_module.__default.L6();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "L6 (correctness)"} Impl$$_module.__default.L6() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "L6 (correctness)"} Impl$$_module.__default.L6() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var j#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;

    // AddMethodImpl: L6, Impl$$_module.__default.L6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(87,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(2);
    i#0 := $rhs#0;
    j#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(88,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        if (*)
        {
            assume true;
            if (!Lit(false))
            {
                break;
            }
        }

        havoc ;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(89,3)
    assume true;
    assert {:id "id51"} i#0 == LitInt(0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(90,3)
    assume true;
    assert {:id "id52"} j#0 == LitInt(0);
}



procedure {:verboseName "M0 (well-formedness)"} CheckWellFormed$$_module.__default.M0(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (well-formedness)"} CheckWellFormed$$_module.__default.M0(a#0: ref, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M0, CheckWellFormed$$_module.__default.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assert {:id "id53"} a#0 != null;
    assume {:id "id54"} _System.array.Length(a#0) == LitInt(10);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M0 (call)"} Call$$_module.__default.M0(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id55"} _System.array.Length(a#0) == LitInt(10);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id56"} _System.array.Length(a#0) == LitInt(10);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(a#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M0, Impl$$_module.__default.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(105,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(106,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id59"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id60"} $w$loop#0 ==> i#0 <= n#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id58"} LitInt(0) <= i#0 && i#0 <= n#0;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(108,3)
    assume true;
    assert {:id "id61"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(109,3)
    assert {:id "id62"} a#0 != null;
    assert {:id "id63"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assert {:id "id64"} a#0 != null;
    assert {:id "id65"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id66"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id67"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(110,3)
    assume true;
    assert {:id "id68"} n#0 == LitInt(0);
}



procedure {:verboseName "M1 (well-formedness)"} CheckWellFormed$$_module.__default.M1(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (well-formedness)"} CheckWellFormed$$_module.__default.M1(a#0: ref, b#0: ref, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M1, CheckWellFormed$$_module.__default.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assume {:id "id69"} a#0 != b#0;
    assert {:id "id70"} a#0 != null;
    assume {:id "id71"} _System.array.Length(a#0) == LitInt(10);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M1 (call)"} Call$$_module.__default.M1(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id72"} a#0 != b#0;
  requires {:id "id73"} _System.array.Length(a#0) == LitInt(10);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id74"} a#0 != b#0;
  requires {:id "id75"} _System.array.Length(a#0) == LitInt(10);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1(a#0: ref, b#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M1, Impl$$_module.__default.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(117,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(118,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id78"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id79"} $w$loop#0 ==> i#0 <= n#0;
      invariant {:id "id80"} $w$loop#0 ==> a#0 != b#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id77"} LitInt(0) <= i#0 && i#0 <= n#0 && a#0 != b#0;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(120,3)
    assume true;
    assert {:id "id81"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(121,3)
    assert {:id "id82"} a#0 != null;
    assert {:id "id83"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assert {:id "id84"} a#0 != null;
    assert {:id "id85"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id86"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id87"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(122,3)
    assume true;
    assert {:id "id88"} n#0 == LitInt(0);
}



procedure {:verboseName "M2 (well-formedness)"} CheckWellFormed$$_module.__default.M2(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M2 (well-formedness)"} CheckWellFormed$$_module.__default.M2(a#0: ref, b#0: ref, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M2, CheckWellFormed$$_module.__default.M2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assume {:id "id89"} a#0 != b#0;
    assert {:id "id90"} a#0 != null;
    if (LitInt(10) <= _System.array.Length(a#0))
    {
        assert {:id "id91"} a#0 != null;
        assert {:id "id92"} b#0 != null;
    }

    assume {:id "id93"} LitInt(10) <= _System.array.Length(a#0)
       && _System.array.Length(a#0) == _System.array.Length(b#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M2 (call)"} Call$$_module.__default.M2(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id94"} a#0 != b#0;
  requires {:id "id95"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id96"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id97"} a#0 != b#0;
  requires {:id "id98"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id99"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2(a#0: ref, b#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M2, Impl$$_module.__default.M2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(129,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(130,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id102"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id103"} $w$loop#0 ==> i#0 <= n#0;
      invariant {:id "id104"} $w$loop#0 ==> a#0 != b#0;
      free invariant true;
      invariant {:id "id111"} $w$loop#0
         ==> $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
           == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id101"} LitInt(0) <= i#0 && i#0 <= n#0 && a#0 != b#0;
            assert {:id "id105"} a#0 != null;
            assert {:id "id106"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assert {:id "id107"} a#0 != null;
            assert {:id "id108"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id109"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assume true;
            assume {:id "id110"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
               == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(133,3)
    assume true;
    assert {:id "id112"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(134,3)
    assert {:id "id113"} a#0 != null;
    assert {:id "id114"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assert {:id "id115"} a#0 != null;
    assert {:id "id116"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id117"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id118"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(135,3)
    assert {:id "id119"} b#0 != null;
    assert {:id "id120"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assert {:id "id121"} b#0 != null;
    assert {:id "id122"} $IsAlloc(b#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id123"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assume true;
    assert {:id "id124"} $Unbox(read($Heap, b#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), b#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(136,3)
    assert {:id "id125"} a#0 != null;
    assert {:id "id126"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assert {:id "id127"} a#0 != null;
    assert {:id "id128"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id129"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assume true;
    assert {:id "id130"} $Unbox(read($Heap, a#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(137,3)
    assume true;
    assert {:id "id131"} n#0 == LitInt(0);
}



procedure {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3(a#0: ref, b#0: ref, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M3, CheckWellFormed$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assume {:id "id132"} a#0 != b#0;
    assert {:id "id133"} a#0 != null;
    if (LitInt(10) <= _System.array.Length(a#0))
    {
        assert {:id "id134"} a#0 != null;
        assert {:id "id135"} b#0 != null;
    }

    assume {:id "id136"} LitInt(10) <= _System.array.Length(a#0)
       && _System.array.Length(a#0) == _System.array.Length(b#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M3 (call)"} Call$$_module.__default.M3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id137"} a#0 != b#0;
  requires {:id "id138"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id139"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id140"} a#0 != b#0;
  requires {:id "id141"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id142"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(a#0: ref, b#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M3, Impl$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(144,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(145,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id145"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id146"} $w$loop#0 ==> i#0 <= n#0;
      invariant {:id "id147"} $w$loop#0 ==> a#0 != b#0;
      free invariant true;
      invariant {:id "id154"} $w$loop#0
         ==> $Unbox(read($Heap, b#0, IndexField(LitInt(0)))): int
           == $Unbox(read(old($Heap), b#0, IndexField(LitInt(0)))): int;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id144"} LitInt(0) <= i#0 && i#0 <= n#0 && a#0 != b#0;
            assert {:id "id148"} b#0 != null;
            assert {:id "id149"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(b#0);
            assert {:id "id150"} b#0 != null;
            assert {:id "id151"} $IsAlloc(b#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id152"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(b#0);
            assume true;
            assume {:id "id153"} $Unbox(read($Heap, b#0, IndexField(LitInt(0)))): int
               == $Unbox(read(old($Heap), b#0, IndexField(LitInt(0)))): int;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(148,3)
    assume true;
    assert {:id "id155"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(149,3)
    assert {:id "id156"} a#0 != null;
    assert {:id "id157"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assert {:id "id158"} a#0 != null;
    assert {:id "id159"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id160"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id161"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(150,3)
    assert {:id "id162"} b#0 != null;
    assert {:id "id163"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assert {:id "id164"} b#0 != null;
    assert {:id "id165"} $IsAlloc(b#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id166"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assume true;
    assert {:id "id167"} $Unbox(read($Heap, b#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), b#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(151,3)
    assume true;
    assert {:id "id168"} n#0 == LitInt(0);
}



procedure {:verboseName "M4 (well-formedness)"} CheckWellFormed$$_module.__default.M4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M4 (well-formedness)"} CheckWellFormed$$_module.__default.M4(a#0: ref, b#0: ref, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M4, CheckWellFormed$$_module.__default.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0 || $o == b#0);
    assume {:id "id169"} a#0 != b#0;
    assert {:id "id170"} a#0 != null;
    if (LitInt(10) <= _System.array.Length(a#0))
    {
        assert {:id "id171"} a#0 != null;
        assert {:id "id172"} b#0 != null;
    }

    assume {:id "id173"} LitInt(10) <= _System.array.Length(a#0)
       && _System.array.Length(a#0) == _System.array.Length(b#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M4 (call)"} Call$$_module.__default.M4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id174"} a#0 != b#0;
  requires {:id "id175"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id176"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id177"} a#0 != b#0;
  requires {:id "id178"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id179"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(a#0: ref, b#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M4, Impl$$_module.__default.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0 || $o == b#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(158,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(159,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id182"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id183"} $w$loop#0 ==> i#0 <= n#0;
      invariant {:id "id184"} $w$loop#0 ==> a#0 != b#0;
      free invariant true;
      invariant {:id "id191"} $w$loop#0
         ==> $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
           == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0 || $o == b#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id181"} LitInt(0) <= i#0 && i#0 <= n#0 && a#0 != b#0;
            assert {:id "id185"} a#0 != null;
            assert {:id "id186"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assert {:id "id187"} a#0 != null;
            assert {:id "id188"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id189"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assume true;
            assume {:id "id190"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
               == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(162,3)
    assume true;
    assert {:id "id192"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(163,3)
    assert {:id "id193"} a#0 != null;
    assert {:id "id194"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assert {:id "id195"} a#0 != null;
    assert {:id "id196"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id197"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id198"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(164,3)
    assert {:id "id199"} b#0 != null;
    assert {:id "id200"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assert {:id "id201"} b#0 != null;
    assert {:id "id202"} $IsAlloc(b#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id203"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assume true;
    assert {:id "id204"} $Unbox(read($Heap, b#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), b#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(165,3)
    assert {:id "id205"} a#0 != null;
    assert {:id "id206"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assert {:id "id207"} a#0 != null;
    assert {:id "id208"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id209"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assume true;
    assert {:id "id210"} $Unbox(read($Heap, a#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(1)))): int;
}



procedure {:verboseName "M5 (well-formedness)"} CheckWellFormed$$_module.__default.M5(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M5 (well-formedness)"} CheckWellFormed$$_module.__default.M5(a#0: ref, b#0: ref, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M5, CheckWellFormed$$_module.__default.M5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0 || $o == b#0);
    assume {:id "id211"} a#0 != b#0;
    assert {:id "id212"} a#0 != null;
    if (LitInt(10) <= _System.array.Length(a#0))
    {
        assert {:id "id213"} a#0 != null;
        assert {:id "id214"} b#0 != null;
    }

    assume {:id "id215"} LitInt(10) <= _System.array.Length(a#0)
       && _System.array.Length(a#0) == _System.array.Length(b#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M5 (call)"} Call$$_module.__default.M5(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id216"} a#0 != b#0;
  requires {:id "id217"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id218"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M5 (correctness)"} Impl$$_module.__default.M5(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id219"} a#0 != b#0;
  requires {:id "id220"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id221"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M5 (correctness)"} Impl$$_module.__default.M5(a#0: ref, b#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M5, Impl$$_module.__default.M5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0 || $o == b#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(172,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(173,3)
    // Assume Fuel Constant
    assert {:id "id223"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == a#0
         ==> $_ModifiesFrame[$o, $f]);
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id225"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id226"} $w$loop#0 ==> i#0 <= n#0;
      invariant {:id "id227"} $w$loop#0 ==> a#0 != b#0;
      free invariant true;
      invariant {:id "id234"} $w$loop#0
         ==> $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
           == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0 || $o == b#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id224"} LitInt(0) <= i#0 && i#0 <= n#0 && a#0 != b#0;
            assert {:id "id228"} a#0 != null;
            assert {:id "id229"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assert {:id "id230"} a#0 != null;
            assert {:id "id231"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id232"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assume true;
            assume {:id "id233"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
               == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(177,3)
    assume true;
    assert {:id "id235"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(178,3)
    assert {:id "id236"} a#0 != null;
    assert {:id "id237"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assert {:id "id238"} a#0 != null;
    assert {:id "id239"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id240"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id241"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(179,3)
    assert {:id "id242"} b#0 != null;
    assert {:id "id243"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assert {:id "id244"} b#0 != null;
    assert {:id "id245"} $IsAlloc(b#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id246"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assume true;
    assert {:id "id247"} $Unbox(read($Heap, b#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), b#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(180,3)
    assert {:id "id248"} a#0 != null;
    assert {:id "id249"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assert {:id "id250"} a#0 != null;
    assert {:id "id251"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id252"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assume true;
    assert {:id "id253"} $Unbox(read($Heap, a#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(181,3)
    assume true;
    assert {:id "id254"} n#0 == LitInt(0);
}



procedure {:verboseName "M6 (well-formedness)"} CheckWellFormed$$_module.__default.M6(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M6 (well-formedness)"} CheckWellFormed$$_module.__default.M6(a#0: ref, b#0: ref, n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M6, CheckWellFormed$$_module.__default.M6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0 || $o == b#0);
    assume {:id "id255"} a#0 != b#0;
    assert {:id "id256"} a#0 != null;
    if (LitInt(10) <= _System.array.Length(a#0))
    {
        assert {:id "id257"} a#0 != null;
        assert {:id "id258"} b#0 != null;
    }

    assume {:id "id259"} LitInt(10) <= _System.array.Length(a#0)
       && _System.array.Length(a#0) == _System.array.Length(b#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M6 (call)"} Call$$_module.__default.M6(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  // user-defined preconditions
  requires {:id "id260"} a#0 != b#0;
  requires {:id "id261"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id262"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M6 (correctness)"} Impl$$_module.__default.M6(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    b#0: ref
       where $Is(b#0, Tclass._System.array(TInt))
         && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id263"} a#0 != b#0;
  requires {:id "id264"} LitInt(10) <= _System.array.Length(a#0);
  requires {:id "id265"} _System.array.Length(a#0) == _System.array.Length(b#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0 || $o == b#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M6 (correctness)"} Impl$$_module.__default.M6(a#0: ref, b#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M6, Impl$$_module.__default.M6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0 || $o == b#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(188,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(189,3)
    // Assume Fuel Constant
    assert {:id "id267"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == a#0
         ==> $_ModifiesFrame[$o, $f]);
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id269"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id270"} $w$loop#0 ==> i#0 <= n#0;
      invariant {:id "id271"} $w$loop#0 ==> a#0 != b#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0 || $o == b#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            if (LitInt(0) <= i#0 && i#0 <= n#0)
            {
            }

            assume true;
            assume {:id "id268"} LitInt(0) <= i#0 && i#0 <= n#0 && a#0 != b#0;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(192,3)
    assume true;
    assert {:id "id272"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(193,3)
    assert {:id "id273"} a#0 != null;
    assert {:id "id274"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assert {:id "id275"} a#0 != null;
    assert {:id "id276"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id277"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    assert {:id "id278"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(194,3)
    assert {:id "id279"} b#0 != null;
    assert {:id "id280"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assert {:id "id281"} b#0 != null;
    assert {:id "id282"} $IsAlloc(b#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id283"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(b#0);
    assume true;
    assert {:id "id284"} $Unbox(read($Heap, b#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), b#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(195,3)
    assert {:id "id285"} a#0 != null;
    assert {:id "id286"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assert {:id "id287"} a#0 != null;
    assert {:id "id288"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
    assert {:id "id289"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) < _System.array.Length(a#0);
    assume true;
    assert {:id "id290"} $Unbox(read($Heap, a#0, IndexField(LitInt(1)))): int
       == $Unbox(read(old($Heap), a#0, IndexField(LitInt(1)))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(196,3)
    assume true;
    assert {:id "id291"} n#0 == LitInt(0);
}



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

procedure {:verboseName "M7 (well-formedness)"} CheckWellFormed$$_module.__default.M7(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M7 (call)"} Call$$_module.__default.M7(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M7 (correctness)"} Impl$$_module.__default.M7(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M7 (correctness)"} Impl$$_module.__default.M7(c#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M7, Impl$$_module.__default.M7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(202,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(203,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id294"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id295"} $w$loop#0 ==> i#0 <= n#0;
      free invariant true;
      invariant {:id "id298"} $w$loop#0
         ==> (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id293"} LitInt(0) <= i#0 && i#0 <= n#0;
            assert {:id "id296"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
            assume true;
            assume {:id "id297"} (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(206,3)
    assume true;
    assert {:id "id299"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(207,3)
    assert {:id "id300"} {:subsumption 0} c#0 != null;
    assert {:id "id301"} {:subsumption 0} c#0 != null;
    assert {:id "id302"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id303"} $Unbox(read($Heap, c#0, _module.C.y)): int
       == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(208,3)
    assume true;
    assert {:id "id304"} n#0 == LitInt(0);
}



procedure {:verboseName "M8 (well-formedness)"} CheckWellFormed$$_module.__default.M8(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M8 (call)"} Call$$_module.__default.M8(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M8 (correctness)"} Impl$$_module.__default.M8(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M8 (correctness)"} Impl$$_module.__default.M8(c#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M8, Impl$$_module.__default.M8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(214,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(216,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id307"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id308"} $w$loop#0 ==> i#0 <= n#0;
      free invariant true;
      invariant {:id "id311"} $w$loop#0
         ==> (forall $o: ref, $f: Field :: 
          { read($Heap, $o, $f) } 
          $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id306"} LitInt(0) <= i#0 && i#0 <= n#0;
            assert {:id "id309"} $IsAlloc(c#0, Tclass._module.C(), $Heap_at_0);
            assume true;
            assume {:id "id310"} (forall $o: ref, $f: Field :: 
              { read($Heap, $o, $f) } 
              $o != null ==> $o == c#0 ==> read($Heap, $o, $f) == read($Heap_at_0, $o, $f));
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(219,3)
    assume true;
    assert {:id "id312"} i#0 == n#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(220,3)
    assert {:id "id313"} {:subsumption 0} c#0 != null;
    assert {:id "id314"} {:subsumption 0} c#0 != null;
    assert {:id "id315"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id316"} $Unbox(read($Heap, c#0, _module.C.y)): int
       == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(221,3)
    assume true;
    assert {:id "id317"} n#0 == LitInt(0);
}



procedure {:verboseName "M9 (well-formedness)"} CheckWellFormed$$_module.__default.M9(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M9 (call)"} Call$$_module.__default.M9(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M9 (correctness)"} Impl$$_module.__default.M9(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M9 (correctness)"} Impl$$_module.__default.M9(c#0: ref, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M9, Impl$$_module.__default.M9
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(227,9)
    assume true;
    assert {:id "id318"} c#0 != null;
    assume true;
    k#0 := $Unbox(read($Heap, c#0, _module.C.y)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(228,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(229,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id322"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id323"} $w$loop#0 ==> i#0 <= n#0;
      free invariant true;
      invariant {:id "id327"} $w$loop#0 ==> k#0 == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id321"} LitInt(0) <= i#0 && i#0 <= n#0;
            assert {:id "id324"} {:subsumption 0} c#0 != null;
            assert {:id "id325"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
            assume true;
            assume {:id "id326"} k#0 == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (n#0 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(232,3)
    assert {:id "id328"} {:subsumption 0} c#0 != null;
    assert {:id "id329"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id330"} k#0 == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(233,3)
    assert {:id "id331"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id332"} k#0 == $Unbox(read($Heap, c#0, _module.C.y)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(234,3)
    assume true;
    assert {:id "id333"} n#0 == LitInt(0);
}



procedure {:verboseName "M10 (well-formedness)"} CheckWellFormed$$_module.__default.M10(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M10 (call)"} Call$$_module.__default.M10(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M10 (correctness)"} Impl$$_module.__default.M10(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M10 (correctness)"} Impl$$_module.__default.M10(c#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M10, Impl$$_module.__default.M10
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(240,9)
    assume true;
    assert {:id "id334"} c#0 != null;
    assume true;
    k#0 := $Unbox(read($Heap, c#0, _module.C.y)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(241,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(242,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := $Unbox(read($Heap, c#0, _module.C.m)): int;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant $Unbox(read($Heap, c#0, _module.C.m)): int <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id337"} c#0 != null;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (100 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(244,3)
    assert {:id "id338"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id339"} k#0 == $Unbox(read($Heap, c#0, _module.C.y)): int;
}



procedure {:verboseName "M11 (well-formedness)"} CheckWellFormed$$_module.__default.M11(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M11 (call)"} Call$$_module.__default.M11(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M11 (correctness)"} Impl$$_module.__default.M11(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function _module.C.u(this: ref) : int
uses {
// C.u: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.C.u($o) } 
    $o != null && dtype($o) == Tclass._module.C?() ==> $Is(_module.C.u($o), TInt));
// C.u: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.C.u($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.C?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.C.u($o), TInt, $h));
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M11 (correctness)"} Impl$$_module.__default.M11(c#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M11, Impl$$_module.__default.M11
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(250,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(251,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _module.C.u(c#0) - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant _module.C.u(c#0) - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id341"} c#0 != null;
            assume true;
            assume false;
        }

        if (*)
        {
            assert {:id "id342"} c#0 != null;
            assume true;
            if (_module.C.u(c#0) <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(252,3)
    assert {:id "id343"} {:subsumption 0} c#0 != null;
    assert {:id "id344"} {:subsumption 0} c#0 != null;
    assert {:id "id345"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id346"} $Unbox(read($Heap, c#0, _module.C.y)): int
       == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(253,3)
    assert {:id "id347"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id348"} i#0 == _module.C.u(c#0);
}



procedure {:verboseName "M12 (well-formedness)"} CheckWellFormed$$_module.__default.M12(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M12 (call)"} Call$$_module.__default.M12(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M12 (correctness)"} Impl$$_module.__default.M12(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M12 (correctness)"} Impl$$_module.__default.M12(c#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M12, Impl$$_module.__default.M12
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(259,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(260,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := $Unbox(read($Heap, c#0, _module.C.y)): int - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant $Unbox(read($Heap, c#0, _module.C.y)): int - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id350"} c#0 != null;
            assume true;
            assume false;
        }

        if (*)
        {
            assert {:id "id351"} c#0 != null;
            assume true;
            if ($Unbox(read($Heap, c#0, _module.C.y)): int <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(261,3)
    assert {:id "id352"} {:subsumption 0} c#0 != null;
    assert {:id "id353"} {:subsumption 0} c#0 != null;
    assert {:id "id354"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id355"} $Unbox(read($Heap, c#0, _module.C.y)): int
       == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
}



procedure {:verboseName "M13 (well-formedness)"} CheckWellFormed$$_module.__default.M13(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M13 (call)"} Call$$_module.__default.M13(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M13 (correctness)"} Impl$$_module.__default.M13(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M13 (correctness)"} Impl$$_module.__default.M13(c#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: M13, Impl$$_module.__default.M13
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(267,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(268,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id358"} $w$loop#0 ==> $IsAllocBox($Box(c#0), Tclass._module.C(), $Heap);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id357"} $IsAllocBox($Box(c#0), Tclass._module.C(), $Heap);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(270,3)
    assert {:id "id359"} {:subsumption 0} c#0 != null;
    assert {:id "id360"} {:subsumption 0} c#0 != null;
    assert {:id "id361"} $IsAlloc(c#0, Tclass._module.C(), old($Heap));
    assume true;
    assert {:id "id362"} $Unbox(read($Heap, c#0, _module.C.y)): int
       == $Unbox(read(old($Heap), c#0, _module.C.y)): int;
}



procedure {:verboseName "H0a (well-formedness)"} CheckWellFormed$$_module.__default.H0a()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "H0a (call)"} Call$$_module.__default.H0a()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H0a (correctness)"} Impl$$_module.__default.H0a()
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H0a (correctness)"} Impl$$_module.__default.H0a() returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $nw: ref;
  var defass#k0#0: bool;
  var k0#0: ref
     where defass#k0#0
       ==> $Is(k0#0, Tclass._module.C()) && $IsAlloc(k0#0, Tclass._module.C(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H0a, Impl$$_module.__default.H0a
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(276,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(277,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(278,10)
    assume true;
    assert {:id "id365"} defass#k#0;
    assume true;
    k0#0 := k#0;
    defass#k0#0 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(279,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id369"} $w$loop#0 ==> k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
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
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id367"} defass#k#0;
            assume true;
            assume {:id "id368"} k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(281,3)
    assert {:id "id370"} defass#k#0;
    assume true;
    assert {:id "id371"} k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(284,3)
    assert {:id "id372"} defass#k#0;
    assert {:id "id373"} defass#k0#0;
    assume true;
    assert {:id "id374"} k#0 == k0#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(285,3)
    assume true;
    assert {:id "id375"} i#0 == LitInt(7);
    assert {:id "id376"} defass#k#0;
}



procedure {:verboseName "H0b (well-formedness)"} CheckWellFormed$$_module.__default.H0b()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "H0b (call)"} Call$$_module.__default.H0b()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H0b (correctness)"} Impl$$_module.__default.H0b()
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H0b (correctness)"} Impl$$_module.__default.H0b() returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap);
  var $nw: ref;
  var defass#k0#0: bool;
  var k0#0: ref
     where defass#k0#0
       ==> $Is(k0#0, Tclass._module.C()) && $IsAlloc(k0#0, Tclass._module.C(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H0b, Impl$$_module.__default.H0b
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(289,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(290,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(291,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(292,10)
    assume true;
    assert {:id "id380"} defass#k#0;
    assume true;
    k0#0 := k#0;
    defass#k0#0 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(293,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id384"} $w$loop#0 ==> k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
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
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id382"} defass#k#0;
            assume true;
            assume {:id "id383"} k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(295,3)
    assert {:id "id385"} defass#k#0;
    assume true;
    assert {:id "id386"} k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(296,3)
    assert {:id "id387"} defass#k#0;
    assert {:id "id388"} defass#k0#0;
    if (k#0 != k0#0)
    {
        assert {:id "id389"} defass#k#0;
        assert {:id "id390"} defass#c#0;
    }

    assume true;
    assert {:id "id391"} k#0 == k0#0 || k#0 == c#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(297,3)
    assert {:id "id392"} defass#k#0;
    assert {:id "id393"} defass#k0#0;
    assume true;
    assert {:id "id394"} k#0 == k0#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(298,3)
    assume true;
    assert {:id "id395"} i#0 == LitInt(7);
    assert {:id "id396"} defass#k#0;
}



procedure {:verboseName "H0c (well-formedness)"} CheckWellFormed$$_module.__default.H0c()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "H0c (call)"} Call$$_module.__default.H0c()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H0c (correctness)"} Impl$$_module.__default.H0c()
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H0c (correctness)"} Impl$$_module.__default.H0c() returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $nw: ref;
  var defass#k0#0: bool;
  var k0#0: ref
     where defass#k0#0
       ==> $Is(k0#0, Tclass._module.C()) && $IsAlloc(k0#0, Tclass._module.C(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H0c, Impl$$_module.__default.H0c
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(302,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(303,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(304,10)
    assume true;
    assert {:id "id399"} defass#k#0;
    assume true;
    k0#0 := k#0;
    defass#k0#0 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(305,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id403"} $w$loop#0 ==> k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
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
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id401"} defass#k#0;
            assume true;
            assume {:id "id402"} k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
            assume true;
            assume false;
        }

        if (*)
        {
            if (i#0 < 7)
            {
                assert {:id "id404"} defass#k#0;
                assert {:id "id405"} k#0 != null;
                assert {:id "id406"} defass#k#0;
                assert {:id "id407"} k#0 != null;
            }

            assume true;
            if (!(i#0 < 7
               && $Unbox(read($Heap, k#0, _module.C.y)): int
                 == $Unbox(read($Heap, k#0, _module.C.y)): int))
            {
                break;
            }
        }

        havoc i#0, k#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(307,3)
    assert {:id "id408"} defass#k#0;
    assume true;
    assert {:id "id409"} k#0 != null && !$Unbox(read(old($Heap), k#0, alloc)): bool;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(308,3)
    assert {:id "id410"} defass#k#0;
    assert {:id "id411"} defass#k0#0;
    assume true;
    assert {:id "id412"} k#0 == k0#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(309,3)
    assume true;
    assert {:id "id413"} i#0 == LitInt(7);
    assert {:id "id414"} defass#k#0;
}



procedure {:verboseName "H1 (well-formedness)"} CheckWellFormed$$_module.__default.H1(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H1 (well-formedness)"} CheckWellFormed$$_module.__default.H1(a#0: ref) returns (k#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: H1, CheckWellFormed$$_module.__default.H1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assert {:id "id415"} a#0 != null;
    assume {:id "id416"} _System.array.Length(a#0) == LitInt(10);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
}



procedure {:verboseName "H1 (call)"} Call$$_module.__default.H1(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  // user-defined preconditions
  requires {:id "id417"} _System.array.Length(a#0) == LitInt(10);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H1 (correctness)"} Impl$$_module.__default.H1(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id418"} _System.array.Length(a#0) == LitInt(10);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H1 (correctness)"} Impl$$_module.__default.H1(a#0: ref) returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $nw: ref;
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H1, Impl$$_module.__default.H1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(316,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(317,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(318,7)
    assert {:id "id421"} defass#k#0;
    assert {:id "id422"} k#0 != null;
    assume true;
    assert {:id "id423"} $_ModifiesFrame[k#0, _module.C.y];
    assume true;
    $rhs#0 := LitInt(12);
    $Heap := update($Heap, k#0, _module.C.y, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(319,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id432"} $w$loop#0
         ==> $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
           == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id426"} a#0 != null;
            assert {:id "id427"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assert {:id "id428"} a#0 != null;
            assert {:id "id429"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id430"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            assume true;
            assume {:id "id431"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int
               == $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(321,3)
    assert {:id "id433"} defass#k#0;
    assert {:id "id434"} {:subsumption 0} k#0 != null;
    assume true;
    assert {:id "id435"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(12);
    assert {:id "id436"} defass#k#0;
}



procedure {:verboseName "H2 (well-formedness)"} CheckWellFormed$$_module.__default.H2(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H2 (well-formedness)"} CheckWellFormed$$_module.__default.H2(a#0: ref) returns (k#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: H2, CheckWellFormed$$_module.__default.H2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    assert {:id "id437"} a#0 != null;
    assume {:id "id438"} _System.array.Length(a#0) == LitInt(10);
    assert {:id "id439"} a#0 != null;
    assert {:id "id440"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume {:id "id441"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
}



procedure {:verboseName "H2 (call)"} Call$$_module.__default.H2(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  // user-defined preconditions
  requires {:id "id442"} _System.array.Length(a#0) == LitInt(10);
  requires {:id "id443"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H2 (correctness)"} Impl$$_module.__default.H2(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id444"} _System.array.Length(a#0) == LitInt(10);
  requires {:id "id445"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H2 (correctness)"} Impl$$_module.__default.H2(a#0: ref) returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $nw: ref;
  var $Heap_at_0: Heap;
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H2, Impl$$_module.__default.H2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(328,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(329,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    $Heap_at_0 := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(331,7)
    assert {:id "id448"} defass#k#0;
    assert {:id "id449"} k#0 != null;
    assume true;
    assert {:id "id450"} $_ModifiesFrame[k#0, _module.C.y];
    assume true;
    $rhs#0 := LitInt(12);
    $Heap := update($Heap, k#0, _module.C.y, $Box($rhs#0));
    assume $IsGoodHeap($Heap);

  after_0:
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(332,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id460"} $w$loop#0
         ==> $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int == LitInt(8);
      invariant {:id "id461"} $w$loop#0
         ==> LitInt(8) == $Unbox(read($Heap_at_0, a#0, IndexField(LitInt(0)))): int;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == a#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id453"} a#0 != null;
            assert {:id "id454"} $IsAlloc(a#0, Tclass._System.array?(TInt), old($Heap));
            assert {:id "id455"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            if ($Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int == LitInt(8))
            {
                assert {:id "id456"} a#0 != null;
                assert {:id "id457"} $IsAlloc(a#0, Tclass._System.array?(TInt), $Heap_at_0);
                assert {:id "id458"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
            }

            assume true;
            assume {:id "id459"} $Unbox(read(old($Heap), a#0, IndexField(LitInt(0)))): int == LitInt(8)
               && LitInt(8) == $Unbox(read($Heap_at_0, a#0, IndexField(LitInt(0)))): int;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(334,3)
    assert {:id "id462"} defass#k#0;
    assert {:id "id463"} {:subsumption 0} k#0 != null;
    assume true;
    assert {:id "id464"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(12);
    assert {:id "id465"} defass#k#0;
}



procedure {:verboseName "H3 (well-formedness)"} CheckWellFormed$$_module.__default.H3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H3 (well-formedness)"} CheckWellFormed$$_module.__default.H3(a#0: ref) returns (k#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: H3, CheckWellFormed$$_module.__default.H3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id466"} a#0 != null;
    assume {:id "id467"} _System.array.Length(a#0) == LitInt(10);
    assert {:id "id468"} a#0 != null;
    assert {:id "id469"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume {:id "id470"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
}



procedure {:verboseName "H3 (call)"} Call$$_module.__default.H3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  // user-defined preconditions
  requires {:id "id471"} _System.array.Length(a#0) == LitInt(10);
  requires {:id "id472"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H3 (correctness)"} Impl$$_module.__default.H3(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id473"} _System.array.Length(a#0) == LitInt(10);
  requires {:id "id474"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H3 (correctness)"} Impl$$_module.__default.H3(a#0: ref) returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $nw: ref;
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H3, Impl$$_module.__default.H3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(340,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(341,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(342,7)
    assert {:id "id477"} defass#k#0;
    assert {:id "id478"} k#0 != null;
    assume true;
    assert {:id "id479"} $_ModifiesFrame[k#0, _module.C.y];
    assume true;
    $rhs#0 := LitInt(12);
    $Heap := update($Heap, k#0, _module.C.y, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(343,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id483"} $w$loop#0 ==> i#0 <= LitInt(7);
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
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id482"} i#0 <= LitInt(7);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(345,3)
    assert {:id "id484"} defass#k#0;
    assert {:id "id485"} {:subsumption 0} k#0 != null;
    assume true;
    assert {:id "id486"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(12);
    assert {:id "id487"} defass#k#0;
}



procedure {:verboseName "H4 (well-formedness)"} CheckWellFormed$$_module.__default.H4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H4 (well-formedness)"} CheckWellFormed$$_module.__default.H4(a#0: ref) returns (k#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: H4, CheckWellFormed$$_module.__default.H4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id488"} a#0 != null;
    assume {:id "id489"} _System.array.Length(a#0) == LitInt(10);
    assert {:id "id490"} a#0 != null;
    assert {:id "id491"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume {:id "id492"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
}



procedure {:verboseName "H4 (call)"} Call$$_module.__default.H4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  // user-defined preconditions
  requires {:id "id493"} _System.array.Length(a#0) == LitInt(10);
  requires {:id "id494"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H4 (correctness)"} Impl$$_module.__default.H4(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap))
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id495"} _System.array.Length(a#0) == LitInt(10);
  requires {:id "id496"} $Unbox(read($Heap, a#0, IndexField(LitInt(0)))): int == LitInt(8);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H4 (correctness)"} Impl$$_module.__default.H4(a#0: ref) returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $nw: ref;
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H4, Impl$$_module.__default.H4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(351,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(352,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(353,7)
    assert {:id "id499"} defass#k#0;
    assert {:id "id500"} k#0 != null;
    assume true;
    assert {:id "id501"} $_ModifiesFrame[k#0, _module.C.y];
    assume true;
    $rhs#0 := LitInt(12);
    $Heap := update($Heap, k#0, _module.C.y, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(354,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id508"} $w$loop#0
         ==> Mod($Unbox(read($Heap, k#0, _module.C.y)): int, LitInt(2)) == LitInt(0);
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
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id504"} defass#k#0;
            assert {:id "id505"} {:subsumption 0} k#0 != null;
            assert {:id "id506"} {:subsumption 0} LitInt(2) != 0;
            assume true;
            assume {:id "id507"} Mod($Unbox(read($Heap, k#0, _module.C.y)): int, LitInt(2)) == LitInt(0);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(356,3)
    assert {:id "id509"} defass#k#0;
    assert {:id "id510"} {:subsumption 0} k#0 != null;
    assume true;
    assert {:id "id511"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(12);
    assert {:id "id512"} defass#k#0;
}



procedure {:verboseName "H5 (well-formedness)"} CheckWellFormed$$_module.__default.H5()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "H5 (call)"} Call$$_module.__default.H5()
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H5 (correctness)"} Impl$$_module.__default.H5()
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H5 (correctness)"} Impl$$_module.__default.H5() returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $nw: ref;
  var $rhs#0: int;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H5, Impl$$_module.__default.H5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(361,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(362,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    k#0 := $nw;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(363,7)
    assert {:id "id515"} defass#k#0;
    assert {:id "id516"} k#0 != null;
    assume true;
    assert {:id "id517"} $_ModifiesFrame[k#0, _module.C.y];
    assume true;
    $rhs#0 := LitInt(12);
    $Heap := update($Heap, k#0, _module.C.y, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(364,9)
    assume true;
    assert {:id "id520"} defass#k#0;
    assume true;
    c#0 := k#0;
    defass#c#0 := true;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(365,3)
    // Assume Fuel Constant
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id526"} $w$loop#0
         ==> Mod($Unbox(read($Heap, k#0, _module.C.y)): int, LitInt(2)) == LitInt(0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id522"} defass#k#0;
            assert {:id "id523"} {:subsumption 0} k#0 != null;
            assert {:id "id524"} {:subsumption 0} LitInt(2) != 0;
            assume true;
            assume {:id "id525"} Mod($Unbox(read($Heap, k#0, _module.C.y)): int, LitInt(2)) == LitInt(0);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(368,3)
    assert {:id "id527"} defass#c#0;
    assert {:id "id528"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id529"} $Unbox(read($Heap, c#0, _module.C.y)): int == LitInt(12);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(369,3)
    assert {:id "id530"} defass#k#0;
    assert {:id "id531"} {:subsumption 0} k#0 != null;
    assume true;
    assert {:id "id532"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(12);
    assert {:id "id533"} defass#k#0;
}



procedure {:verboseName "H6 (well-formedness)"} CheckWellFormed$$_module.__default.H6(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H6 (well-formedness)"} CheckWellFormed$$_module.__default.H6(c#0: ref) returns (k#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: H6, CheckWellFormed$$_module.__default.H6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id534"} c#0 != null;
    assume {:id "id535"} $Unbox(read($Heap, c#0, _module.C.y)): int == LitInt(3);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
}



procedure {:verboseName "H6 (call)"} Call$$_module.__default.H6(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  // user-defined preconditions
  requires {:id "id536"} $Unbox(read($Heap, c#0, _module.C.y)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H6 (correctness)"} Impl$$_module.__default.H6(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id537"} $Unbox(read($Heap, c#0, _module.C.y)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H6 (correctness)"} Impl$$_module.__default.H6(c#0: ref) returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H6, Impl$$_module.__default.H6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(375,5)
    assume true;
    assume true;
    k#0 := c#0;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(376,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(377,3)
    // Assume Fuel Constant
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id543"} $w$loop#0 ==> $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(3);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id540"} defass#k#0;
            assert {:id "id541"} {:subsumption 0} k#0 != null;
            assume true;
            assume {:id "id542"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(3);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(380,3)
    assert {:id "id544"} defass#k#0;
    assume true;
    assert {:id "id545"} $IsAllocBox($Box(k#0), Tclass._module.C(), old($Heap));
    assert {:id "id546"} defass#k#0;
}



procedure {:verboseName "H7 (well-formedness)"} CheckWellFormed$$_module.__default.H7(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H7 (well-formedness)"} CheckWellFormed$$_module.__default.H7(c#0: ref) returns (k#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: H7, CheckWellFormed$$_module.__default.H7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id547"} c#0 != null;
    assume {:id "id548"} _module.C.u(c#0) == LitInt(3);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
}



procedure {:verboseName "H7 (call)"} Call$$_module.__default.H7(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  // user-defined preconditions
  requires {:id "id549"} _module.C.u(c#0) == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "H7 (correctness)"} Impl$$_module.__default.H7(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id550"} _module.C.u(c#0) == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "H7 (correctness)"} Impl$$_module.__default.H7(c#0: ref) returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: H7, Impl$$_module.__default.H7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(386,5)
    assume true;
    assume true;
    k#0 := c#0;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(387,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(388,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id556"} $w$loop#0 ==> _module.C.u(k#0) == LitInt(3);
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
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id553"} defass#k#0;
            assert {:id "id554"} {:subsumption 0} k#0 != null;
            assume true;
            assume {:id "id555"} _module.C.u(k#0) == LitInt(3);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(390,3)
    assert {:id "id557"} defass#k#0;
    assume true;
    assert {:id "id558"} $IsAllocBox($Box(k#0), Tclass._module.C(), old($Heap));
    assert {:id "id559"} defass#k#0;
}



procedure {:verboseName "E0 (well-formedness)"} CheckWellFormed$$_module.__default.E0(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "E0 (call)"} Call$$_module.__default.E0(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "E0 (correctness)"} Impl$$_module.__default.E0(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (defass#k#0: bool, 
    k#0: ref
       where defass#k#0
         ==> $Is(k#0, Tclass._module.C()) && $IsAlloc(k#0, Tclass._module.C(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "E0 (correctness)"} Impl$$_module.__default.E0(c#0: ref) returns (defass#k#0: bool, k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: E0, Impl$$_module.__default.E0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(398,5)
    assume true;
    assume true;
    k#0 := c#0;
    defass#k#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(399,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(400,3)
    // Assume Fuel Constant
    assert {:id "id562"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == c#0
         ==> $_ModifiesFrame[$o, $f]);
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id566"} $w$loop#0 ==> $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(3);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id563"} defass#k#0;
            assert {:id "id564"} {:subsumption 0} k#0 != null;
            assume true;
            assume {:id "id565"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(3);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }

    assert {:id "id567"} defass#k#0;
}



procedure {:verboseName "W0 (well-formedness)"} CheckWellFormed$$_module.__default.W0(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C?()) && $IsAlloc(k#0, Tclass._module.C?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "W0 (well-formedness)"} CheckWellFormed$$_module.__default.W0(c#0: ref) returns (k#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: W0, CheckWellFormed$$_module.__default.W0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    assert {:id "id568"} c#0 != null;
    assume {:id "id569"} $Unbox(read($Heap, c#0, _module.C.y)): int == LitInt(3);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc k#0;
}



procedure {:verboseName "W0 (call)"} Call$$_module.__default.W0(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C?()) && $IsAlloc(k#0, Tclass._module.C?(), $Heap));
  // user-defined preconditions
  requires {:id "id570"} $Unbox(read($Heap, c#0, _module.C.y)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "W0 (correctness)"} Impl$$_module.__default.W0(c#0: ref
       where $Is(c#0, Tclass._module.C()) && $IsAlloc(c#0, Tclass._module.C(), $Heap))
   returns (k#0: ref
       where $Is(k#0, Tclass._module.C?()) && $IsAlloc(k#0, Tclass._module.C?(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id571"} $Unbox(read($Heap, c#0, _module.C.y)): int == LitInt(3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "W0 (correctness)"} Impl$$_module.__default.W0(c#0: ref) returns (k#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: W0, Impl$$_module.__default.W0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(411,5)
    assume true;
    assume true;
    k#0 := c#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(412,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(413,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id576"} $w$loop#0 ==> $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(3);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id574"} {:subsumption 0} k#0 != null;
            assume true;
            assume {:id "id575"} $Unbox(read($Heap, k#0, _module.C.y)): int == LitInt(3);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (7 <= i#0)
            {
                break;
            }
        }

        havoc i#0, k#0, $Heap;
        $w$loop#0 := false;
        assume true;
    }
}



procedure {:verboseName "F0 (well-formedness)"} CheckWellFormed$$_module.__default.F0(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "F0 (call)"} Call$$_module.__default.F0(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "F0 (correctness)"} Impl$$_module.__default.F0(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap), 
    y#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F0 (correctness)"} Impl$$_module.__default.F0(S#0: Set, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0_0: int;

    // AddMethodImpl: F0, Impl$$_module.__default.F0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(497,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc s#0_0;
        assume true;
        assume true;
        assume {:id "id577"} Set#IsMember(S#0, $Box(s#0_0));
        if (*)
        {
            assume true;
            assume {:id "id578"} s#0_0 < 0;
            assume false;
        }

        assume false;
    }
    else
    {
        assume (forall s#0_1: int :: 
          { Set#IsMember(S#0, $Box(s#0_1)) } 
          Set#IsMember(S#0, $Box(s#0_1)) ==> s#0_1 < 0);
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(499,3)
    if (Set#IsMember(S#0, $Box(y#0)))
    {
    }

    assume true;
    assert {:id "id579"} {:subsumption 0} Set#IsMember(S#0, $Box(y#0)) ==> y#0 < 0;
    assume {:id "id580"} Set#IsMember(S#0, $Box(y#0)) ==> y#0 < 0;
}



procedure {:verboseName "F1 (well-formedness)"} CheckWellFormed$$_module.__default.F1(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "F1 (call)"} Call$$_module.__default.F1(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "F1 (correctness)"} Impl$$_module.__default.F1(S#0: Set where $Is(S#0, TSet(TInt)) && $IsAlloc(S#0, TSet(TInt), $Heap), 
    y#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F1 (correctness)"} Impl$$_module.__default.F1(S#0: Set, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0_0: int;

    // AddMethodImpl: F1, Impl$$_module.__default.F1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(504,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc s#0_0;
        assume true;
        assume true;
        assume {:id "id581"} Set#IsMember(S#0, $Box(s#0_0));
        if (*)
        {
            assume true;
            assume {:id "id582"} s#0_0 < 0;
            assume false;
        }

        assume false;
    }
    else
    {
        assume (forall s#0_1: int :: 
          { Set#IsMember(S#0, $Box(s#0_1)) } 
          Set#IsMember(S#0, $Box(s#0_1)) ==> s#0_1 < 0);
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(506,3)
    if (Set#IsMember(S#0, $Box(y#0)))
    {
    }

    assume true;
    assert {:id "id583"} {:subsumption 0} Set#IsMember(S#0, $Box(y#0)) ==> y#0 == LitInt(-18);
    assume {:id "id584"} Set#IsMember(S#0, $Box(y#0)) ==> y#0 == LitInt(-18);
}



// function declaration for _module._default.P
function _module.__default.P(y#0: int) : bool;

function _module.__default.P#canCall(y#0: int) : bool;

function _module.__default.P#requires(int) : bool;

// #requires axiom for _module.__default.P
axiom (forall y#0: int :: 
  { _module.__default.P#requires(y#0) } 
  _module.__default.P#requires(y#0) == true);

procedure {:verboseName "P (well-formedness)"} CheckWellformed$$_module.__default.P(y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "F2 (well-formedness)"} CheckWellFormed$$_module.__default.F2();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "F2 (call)"} Call$$_module.__default.F2();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "F2 (correctness)"} Impl$$_module.__default.F2() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GuardAlwaysHoldsOnEntry_BodyLessLoop (well-formedness)"} CheckWellFormed$$_module.__default.GuardAlwaysHoldsOnEntry__BodyLessLoop();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GuardAlwaysHoldsOnEntry_BodyLessLoop (call)"} Call$$_module.__default.GuardAlwaysHoldsOnEntry__BodyLessLoop();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GuardAlwaysHoldsOnEntry_BodyLessLoop (correctness)"} Impl$$_module.__default.GuardAlwaysHoldsOnEntry__BodyLessLoop() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GuardAlwaysHoldsOnEntry_BodyLessLoop (correctness)"} Impl$$_module.__default.GuardAlwaysHoldsOnEntry__BodyLessLoop() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: GuardAlwaysHoldsOnEntry_BodyLessLoop, Impl$$_module.__default.GuardAlwaysHoldsOnEntry__BodyLessLoop
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(530,9)
    assume true;
    assume true;
    x#0 := LitInt(20);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(531,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 20 - x#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id591"} $w$loop#0 ==> Mod(x#0, LitInt(2)) == LitInt(0);
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
      free invariant 20 - x#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id589"} {:subsumption 0} LitInt(2) != 0;
            assume true;
            assume {:id "id590"} Mod(x#0, LitInt(2)) == LitInt(0);
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if (20 <= x#0)
            {
                break;
            }
        }

        havoc x#0;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(533,3)
    assume true;
    assert {:id "id592"} x#0 == LitInt(20);
}



procedure {:verboseName "GuardAlwaysHoldsOnEntry_LoopWithBody (well-formedness)"} CheckWellFormed$$_module.__default.GuardAlwaysHoldsOnEntry__LoopWithBody();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GuardAlwaysHoldsOnEntry_LoopWithBody (call)"} Call$$_module.__default.GuardAlwaysHoldsOnEntry__LoopWithBody();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GuardAlwaysHoldsOnEntry_LoopWithBody (correctness)"} Impl$$_module.__default.GuardAlwaysHoldsOnEntry__LoopWithBody() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GuardAlwaysHoldsOnEntry_LoopWithBody (correctness)"} Impl$$_module.__default.GuardAlwaysHoldsOnEntry__LoopWithBody() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: GuardAlwaysHoldsOnEntry_LoopWithBody, Impl$$_module.__default.GuardAlwaysHoldsOnEntry__LoopWithBody
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(539,9)
    assume true;
    assume true;
    x#0 := LitInt(20);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(540,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 20 - x#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id596"} $w$loop#0 ==> Mod(x#0, LitInt(2)) == LitInt(0);
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
      free invariant 20 - x#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id594"} {:subsumption 0} LitInt(2) != 0;
            assume true;
            assume {:id "id595"} Mod(x#0, LitInt(2)) == LitInt(0);
            assume true;
            assume false;
        }

        assume true;
        if (20 <= x#0)
        {
            break;
        }

        $decr$loop#00 := 20 - x#0;
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(543,5)
        assume true;
        assert {:id "id597"} Lit(false);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(540,3)
        assert {:id "id598"} 0 <= $decr$loop#00 || 20 - x#0 == $decr$loop#00;
        assert {:id "id599"} 20 - x#0 < $decr$loop#00;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(545,3)
    assume true;
    assert {:id "id600"} x#0 == LitInt(20);
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

const _module.C.y: Field
uses {
axiom FDim(_module.C.y) == 0
   && FieldOfDecl(class._module.C?, field$y) == _module.C.y
   && !$IsGhostField(_module.C.y);
}

// C.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.y)): int, TInt));

// C.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.y)): int, TInt, $h));

const _module.C.m: Field
uses {
axiom FDim(_module.C.m) == 0
   && FieldOfDecl(class._module.C?, field$m) == _module.C.m
   && !$IsGhostField(_module.C.m);
}

// C.m: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.m)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.m)): int, Tclass._System.nat()));

// C.m: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.m)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.m)): int, Tclass._System.nat(), $h));

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

const unique class._module.FineGrained?: ClassName;

function Tclass._module.FineGrained?() : Ty
uses {
// Tclass._module.FineGrained? Tag
axiom Tag(Tclass._module.FineGrained?()) == Tagclass._module.FineGrained?
   && TagFamily(Tclass._module.FineGrained?()) == tytagFamily$FineGrained;
}

const unique Tagclass._module.FineGrained?: TyTag;

// Box/unbox axiom for Tclass._module.FineGrained?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.FineGrained?()) } 
  $IsBox(bx, Tclass._module.FineGrained?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.FineGrained?()));

// $Is axiom for class FineGrained
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.FineGrained?()) } 
  $Is($o, Tclass._module.FineGrained?())
     <==> $o == null || dtype($o) == Tclass._module.FineGrained?());

// $IsAlloc axiom for class FineGrained
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.FineGrained?(), $h) } 
  $IsAlloc($o, Tclass._module.FineGrained?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.FineGrained.f: Field
uses {
axiom FDim(_module.FineGrained.f) == 0
   && FieldOfDecl(class._module.FineGrained?, field$f) == _module.FineGrained.f
   && !$IsGhostField(_module.FineGrained.f);
}

// FineGrained.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.FineGrained.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.FineGrained?()
     ==> $Is($Unbox(read($h, $o, _module.FineGrained.f)): int, TInt));

// FineGrained.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.FineGrained.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.FineGrained?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.FineGrained.f)): int, TInt, $h));

const _module.FineGrained.g: Field
uses {
axiom FDim(_module.FineGrained.g) == 0
   && FieldOfDecl(class._module.FineGrained?, field$g) == _module.FineGrained.g
   && !$IsGhostField(_module.FineGrained.g);
}

// FineGrained.g: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.FineGrained.g)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.FineGrained?()
     ==> $Is($Unbox(read($h, $o, _module.FineGrained.g)): int, TInt));

// FineGrained.g: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.FineGrained.g)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.FineGrained?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.FineGrained.g)): int, TInt, $h));

function Tclass._module.FineGrained() : Ty
uses {
// Tclass._module.FineGrained Tag
axiom Tag(Tclass._module.FineGrained()) == Tagclass._module.FineGrained
   && TagFamily(Tclass._module.FineGrained()) == tytagFamily$FineGrained;
}

const unique Tagclass._module.FineGrained: TyTag;

// Box/unbox axiom for Tclass._module.FineGrained
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.FineGrained()) } 
  $IsBox(bx, Tclass._module.FineGrained())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.FineGrained()));

procedure {:verboseName "FineGrained.R0 (well-formedness)"} CheckWellFormed$$_module.FineGrained.R0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FineGrained.R0 (well-formedness)"} CheckWellFormed$$_module.FineGrained.R0(this: ref, x#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: R0, CheckWellFormed$$_module.FineGrained.R0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.FineGrained.f);
    assume {:id "id601"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
    assert {:id "id602"} this != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume (forall $o: ref, $f: Field :: 
      { read($Heap, $o, $f) } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
           || ($o == this && $f == _module.FineGrained.f));
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "FineGrained.R0 (call)"} Call$$_module.FineGrained.R0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id603"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == this && $f == _module.FineGrained.f));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FineGrained.R0 (correctness)"} Impl$$_module.FineGrained.R0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id604"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // frame condition: field granularity
  free ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || ($o == this && $f == _module.FineGrained.f));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FineGrained.R0 (correctness)"} Impl$$_module.FineGrained.R0(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: R0, Impl$$_module.FineGrained.R0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.FineGrained.f);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(427,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := $Unbox(read($Heap, this, _module.FineGrained.f)): int - 0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id606"} $w$loop#0 ==> $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || ($o == this && $f == _module.FineGrained.f));
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant $Unbox(read($Heap, this, _module.FineGrained.f)): int - 0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id605"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if ($Unbox(read($Heap, this, _module.FineGrained.f)): int <= 0)
            {
                break;
            }
        }

        havoc $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(429,5)
    assert {:id "id607"} $IsAlloc(this, Tclass._module.FineGrained(), old($Heap));
    assume true;
    assert {:id "id608"} $Unbox(read($Heap, this, _module.FineGrained.g)): int
       == $Unbox(read(old($Heap), this, _module.FineGrained.g)): int;
}



procedure {:verboseName "FineGrained.R1 (well-formedness)"} CheckWellFormed$$_module.FineGrained.R1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FineGrained.R1 (call)"} Call$$_module.FineGrained.R1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id610"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FineGrained.R1 (correctness)"} Impl$$_module.FineGrained.R1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id611"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FineGrained.R1 (correctness)"} Impl$$_module.FineGrained.R1(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;

    // AddMethodImpl: R1, Impl$$_module.FineGrained.R1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(436,5)
    // Assume Fuel Constant
    assert {:id "id612"} this != null;
    assert {:id "id613"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == this
           && $f == _module.FineGrained.f
         ==> $_ModifiesFrame[$o, $f]);
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.FineGrained.f);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := $Unbox(read($Heap, this, _module.FineGrained.f)): int - 0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id615"} $w$loop#0 ==> $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant $Unbox(read($Heap, this, _module.FineGrained.f)): int - 0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id614"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
            assume true;
            assume false;
        }

        if (*)
        {
            assume true;
            if ($Unbox(read($Heap, this, _module.FineGrained.f)): int <= 0)
            {
                break;
            }
        }

        havoc $Heap;
        $w$loop#0 := false;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(439,5)
    assert {:id "id616"} $IsAlloc(this, Tclass._module.FineGrained(), old($Heap));
    assume true;
    assert {:id "id617"} $Unbox(read($Heap, this, _module.FineGrained.g)): int
       == $Unbox(read(old($Heap), this, _module.FineGrained.g)): int;
}



procedure {:verboseName "FineGrained.R2 (well-formedness)"} CheckWellFormed$$_module.FineGrained.R2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FineGrained.R2 (call)"} Call$$_module.FineGrained.R2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id619"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FineGrained.R2 (correctness)"} Impl$$_module.FineGrained.R2(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id620"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FineGrained.R2 (correctness)"} Impl$$_module.FineGrained.R2(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var i#0_0: int;
  var prev#0_0: int;
  var $rhs#0_0: int;
  var $rhs#0_1: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $Frame$loop#0_0: [ref,Field]bool;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $rhs#0_2: int;

    // AddMethodImpl: R2, Impl$$_module.FineGrained.R2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(446,5)
    // Assume Fuel Constant
    assert {:id "id621"} this != null;
    assert {:id "id622"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && 
          $o == this
           && $f == _module.FineGrained.f
         ==> $_ModifiesFrame[$o, $f]);
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this && $f == _module.FineGrained.f);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := $Unbox(read($Heap, this, _module.FineGrained.f)): int;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id624"} $w$loop#0 ==> $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant $Unbox(read($Heap, this, _module.FineGrained.f)): int <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id623"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
            assume true;
            assume false;
        }

        assume true;
        if ($Unbox(read($Heap, this, _module.FineGrained.f)): int <= 0)
        {
            break;
        }

        $decr$loop#00 := $Unbox(read($Heap, this, _module.FineGrained.f)): int;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(451,19)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := LitInt(0);
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, this, _module.FineGrained.f)): int;
        i#0_0 := $rhs#0_0;
        prev#0_0 := $rhs#0_1;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(452,7)
        // Assume Fuel Constant
        assert {:id "id629"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
             ==> $Frame$loop#0[$o, $f]);
        $Frame$loop#0_0 := (lambda $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := 7 - i#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o] || $o == this);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $Frame$loop#0_0[$o, $f]);
          free invariant 7 - i#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume false;
            }

            if (*)
            {
                assume true;
                if (7 <= i#0_0)
                {
                    break;
                }
            }

            havoc i#0_0, $Heap;
            $w$loop#0_0 := false;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(454,9)
        assume true;
        assert {:id "id630"} $Frame$loop#0[this, _module.FineGrained.f];
        assume true;
        $rhs#0_2 := prev#0_0 - 1;
        $Heap := update($Heap, this, _module.FineGrained.f, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(446,5)
        assert {:id "id633"} 0 <= $decr$loop#00
           || $Unbox(read($Heap, this, _module.FineGrained.f)): int == $decr$loop#00;
        assert {:id "id634"} $Unbox(read($Heap, this, _module.FineGrained.f)): int < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "FineGrained.R3 (well-formedness)"} CheckWellFormed$$_module.FineGrained.R3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FineGrained.R3 (call)"} Call$$_module.FineGrained.R3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id636"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FineGrained.R3 (correctness)"} Impl$$_module.FineGrained.R3(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id637"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FineGrained.R3 (correctness)"} Impl$$_module.FineGrained.R3(this: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var i#0_0: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $Frame$loop#0_0: [ref,Field]bool;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $rhs#0_0: int;

    // AddMethodImpl: R3, Impl$$_module.FineGrained.R3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(462,5)
    // Assume Fuel Constant
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := $Unbox(read($Heap, this, _module.FineGrained.f)): int;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id639"} $w$loop#0 ==> $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant $Unbox(read($Heap, this, _module.FineGrained.f)): int <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id638"} $Unbox(read($Heap, this, _module.FineGrained.f)): int <= x#0;
            assume true;
            assume false;
        }

        assume true;
        if ($Unbox(read($Heap, this, _module.FineGrained.f)): int <= 0)
        {
            break;
        }

        $decr$loop#00 := $Unbox(read($Heap, this, _module.FineGrained.f)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(467,13)
        assume true;
        assume true;
        i#0_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(468,7)
        // Assume Fuel Constant
        assert {:id "id641"} this != null;
        assert {:id "id642"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && 
              $o == this
               && $f == _module.FineGrained.f
             ==> $Frame$loop#0[$o, $f]);
        $Frame$loop#0_0 := (lambda $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool
             ==> $o == this && $f == _module.FineGrained.f);
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := 7 - i#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o] || $o == this);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $Frame$loop#0_0[$o, $f]);
          free invariant 7 - i#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume false;
            }

            if (*)
            {
                assume true;
                if (7 <= i#0_0)
                {
                    break;
                }
            }

            havoc i#0_0, $Heap;
            $w$loop#0_0 := false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(470,7)
        assert {:id "id643"} $IsAlloc(this, Tclass._module.FineGrained(), old($Heap));
        assume true;
        assert {:id "id644"} $Unbox(read($Heap, this, _module.FineGrained.g)): int
           == $Unbox(read(old($Heap), this, _module.FineGrained.g)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(471,9)
        assume true;
        assert {:id "id645"} $Frame$loop#0[this, _module.FineGrained.f];
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, this, _module.FineGrained.f)): int - 1;
        $Heap := update($Heap, this, _module.FineGrained.f, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(462,5)
        assert {:id "id648"} 0 <= $decr$loop#00
           || $Unbox(read($Heap, this, _module.FineGrained.f)): int == $decr$loop#00;
        assert {:id "id649"} $Unbox(read($Heap, this, _module.FineGrained.f)): int < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "FineGrained.R4 (well-formedness)"} CheckWellFormed$$_module.FineGrained.R4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.FineGrained())
         && $IsAlloc(c#0, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FineGrained.R4 (call)"} Call$$_module.FineGrained.R4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.FineGrained())
         && $IsAlloc(c#0, Tclass._module.FineGrained(), $Heap), 
    x#0: int);
  // user-defined preconditions
  requires {:id "id651"} this != c#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FineGrained.R4 (correctness)"} Impl$$_module.FineGrained.R4(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.FineGrained())
         && $IsAlloc(this, Tclass._module.FineGrained(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.FineGrained())
         && $IsAlloc(c#0, Tclass._module.FineGrained(), $Heap), 
    x#0: int)
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id652"} this != c#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FineGrained.R4 (correctness)"} Impl$$_module.FineGrained.R4(this: ref, c#0: ref, x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $Frame$loop#0: [ref,Field]bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var j#0_0: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $Frame$loop#0_0: [ref,Field]bool;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;

    // AddMethodImpl: R4, Impl$$_module.FineGrained.R4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(479,11)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(480,5)
    // Assume Fuel Constant
    $Frame$loop#0 := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 7 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id655"} $w$loop#0 ==> i#0 <= LitInt(7);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $Frame$loop#0[$o, $f]);
      free invariant 7 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id654"} i#0 <= LitInt(7);
            assume true;
            assume false;
        }

        assume true;
        if (7 <= i#0)
        {
            break;
        }

        $decr$loop#00 := 7 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(484,13)
        assume true;
        assume true;
        j#0_0 := LitInt(0);
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(485,7)
        // Assume Fuel Constant
        assert {:id "id657"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == c#0
             ==> $Frame$loop#0[$o, $f]);
        $Frame$loop#0_0 := (lambda $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := 7 - j#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o] || $o == this || $o == c#0);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $Frame$loop#0_0[$o, $f]);
          free invariant 7 - j#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume false;
            }

            if (*)
            {
                assume true;
                if (7 <= j#0_0)
                {
                    break;
                }
            }

            havoc j#0_0, $Heap;
            $w$loop#0_0 := false;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(487,7)
        assert {:id "id658"} $IsAlloc(this, Tclass._module.FineGrained(), old($Heap));
        assume true;
        assert {:id "id659"} $Unbox(read($Heap, this, _module.FineGrained.g)): int
           == $Unbox(read(old($Heap), this, _module.FineGrained.g)): int;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(488,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DirtyLoops.dfy(480,5)
        assert {:id "id661"} 0 <= $decr$loop#00 || 7 - i#0 == $decr$loop#00;
        assert {:id "id662"} 7 - i#0 < $decr$loop#00;
        assume true;
    }
}



// $Is axiom for non-null type _module.FineGrained
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.FineGrained()) } 
    { $Is(c#0, Tclass._module.FineGrained?()) } 
  $Is(c#0, Tclass._module.FineGrained())
     <==> $Is(c#0, Tclass._module.FineGrained?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.FineGrained
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.FineGrained(), $h) } 
    { $IsAlloc(c#0, Tclass._module.FineGrained?(), $h) } 
  $IsAlloc(c#0, Tclass._module.FineGrained(), $h)
     <==> $IsAlloc(c#0, Tclass._module.FineGrained?(), $h));

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

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$FineGrained: TyTagFamily;

const unique field$y: NameFamily;

const unique field$m: NameFamily;

const unique field$f: NameFamily;

const unique field$g: NameFamily;
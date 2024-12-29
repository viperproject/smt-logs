// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy

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

const unique class._module.Tree?: ClassName;

function Tclass._module.Tree?() : Ty
uses {
// Tclass._module.Tree? Tag
axiom Tag(Tclass._module.Tree?()) == Tagclass._module.Tree?
   && TagFamily(Tclass._module.Tree?()) == tytagFamily$Tree;
}

const unique Tagclass._module.Tree?: TyTag;

// Box/unbox axiom for Tclass._module.Tree?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Tree?()) } 
  $IsBox(bx, Tclass._module.Tree?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Tree?()));

// $Is axiom for class Tree
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Tree?()) } 
  $Is($o, Tclass._module.Tree?())
     <==> $o == null || dtype($o) == Tclass._module.Tree?());

// $IsAlloc axiom for class Tree
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Tree?(), $h) } 
  $IsAlloc($o, Tclass._module.Tree?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Tree.value: Field
uses {
axiom FDim(_module.Tree.value) == 0
   && FieldOfDecl(class._module.Tree?, field$value) == _module.Tree.value
   && !$IsGhostField(_module.Tree.value);
}

// Tree.value: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.value)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Tree?()
     ==> $Is($Unbox(read($h, $o, _module.Tree.value)): int, TInt));

// Tree.value: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.value)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Tree.value)): int, TInt, $h));

const _module.Tree.left: Field
uses {
axiom FDim(_module.Tree.left) == 0
   && FieldOfDecl(class._module.Tree?, field$left) == _module.Tree.left
   && !$IsGhostField(_module.Tree.left);
}

// Tree.left: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.left)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Tree?()
     ==> $Is($Unbox(read($h, $o, _module.Tree.left)): ref, Tclass._module.Tree?()));

// Tree.left: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.left)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Tree.left)): ref, Tclass._module.Tree?(), $h));

const _module.Tree.right: Field
uses {
axiom FDim(_module.Tree.right) == 0
   && FieldOfDecl(class._module.Tree?, field$right) == _module.Tree.right
   && !$IsGhostField(_module.Tree.right);
}

// Tree.right: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.right)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Tree?()
     ==> $Is($Unbox(read($h, $o, _module.Tree.right)): ref, Tclass._module.Tree?()));

// Tree.right: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.right)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Tree.right)): ref, Tclass._module.Tree?(), $h));

const _module.Tree.Contents: Field
uses {
axiom FDim(_module.Tree.Contents) == 0
   && FieldOfDecl(class._module.Tree?, field$Contents) == _module.Tree.Contents
   && $IsGhostField(_module.Tree.Contents);
}

// Tree.Contents: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.Contents)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Tree?()
     ==> $Is($Unbox(read($h, $o, _module.Tree.Contents)): Seq, TSeq(TInt)));

// Tree.Contents: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.Contents)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Tree.Contents)): Seq, TSeq(TInt), $h));

const _module.Tree.Repr: Field
uses {
axiom FDim(_module.Tree.Repr) == 0
   && FieldOfDecl(class._module.Tree?, field$Repr) == _module.Tree.Repr
   && $IsGhostField(_module.Tree.Repr);
}

// Tree.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.Repr)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Tree?()
     ==> $Is($Unbox(read($h, $o, _module.Tree.Repr)): Set, TSet(Tclass._System.object())));

// Tree.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Tree.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Tree?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Tree.Repr)): Set, TSet(Tclass._System.object()), $h));

// function declaration for _module.Tree.Valid
function _module.Tree.Valid($ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Tree.Valid
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Tree.Valid($ly, $Heap, this) } 
    _module.Tree.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Tree())
           && $IsAlloc(this, Tclass._module.Tree(), $Heap))
       ==> 
      _module.Tree.Valid($ly, $Heap, this)
       ==> Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this)));
// definition axiom for _module.Tree.Valid (revealed)
axiom {:id "id0"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Tree.Valid($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.Tree.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Tree())
           && $IsAlloc(this, Tclass._module.Tree(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Tree.left)): ref != null
           ==> 
          $Unbox(read($Heap, this, _module.Tree.right)): ref != null
           ==> 
          !(
            $Unbox(read($Heap, this, _module.Tree.left)): ref == this
             && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
             && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.left))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.right))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            $Box(this))
           ==> _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
             && (_module.Tree.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
               ==> _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)))
         && _module.Tree.Valid($LS($ly), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
             && $Unbox(read($Heap, this, _module.Tree.left)): ref != null
             && $Unbox(read($Heap, this, _module.Tree.right)): ref != null
             && ((
                $Unbox(read($Heap, this, _module.Tree.left)): ref == this
                 && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
                 && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
               || (
                Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                  read($Heap, this, _module.Tree.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                  $Box(this))
                 && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                  read($Heap, this, _module.Tree.right))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                  $Box(this))
                 && _module.Tree.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
                 && _module.Tree.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
                  Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq))))));
}

function _module.Tree.Valid#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Tree.Valid($LS($ly), $Heap, this) } 
  _module.Tree.Valid($LS($ly), $Heap, this)
     == _module.Tree.Valid($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Tree.Valid(AsFuelBottom($ly), $Heap, this) } 
  _module.Tree.Valid($ly, $Heap, this) == _module.Tree.Valid($LZ, $Heap, this));

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
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Tree()));

// frame axiom for _module.Tree.Valid
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Tree.Valid($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Tree())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Tree.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Tree.Valid($ly, $h0, this) == _module.Tree.Valid($ly, $h1, this));

function _module.Tree.Valid#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.Tree.Valid
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Tree.Valid#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Tree())
       && $IsAlloc(this, Tclass._module.Tree(), $Heap)
     ==> _module.Tree.Valid#requires($ly, $Heap, this) == true);

procedure {:verboseName "Tree.Valid (well-formedness)"} CheckWellformed$$_module.Tree.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id1"} _module.Tree.Valid($LS($LZ), $Heap, this)
     ==> Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.Valid (well-formedness)"} CheckWellformed$$_module.Tree.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;
  var b$reqreads#13: bool;
  var b$reqreads#14: bool;
  var b$reqreads#15: bool;
  var b$reqreads#16: bool;
  var b$reqreads#17: bool;
  var b$reqreads#18: bool;
  var b$reqreads#19: bool;
  var b$reqreads#20: bool;
  var b$reqreads#21: bool;
  var b$reqreads#22: bool;
  var b$reqreads#23: bool;
  var b$reqreads#24: bool;
  var b$reqreads#25: bool;
  var b$reqreads#26: bool;
  var b$reqreads#27: bool;
  var b$reqreads#28: bool;
  var b$reqreads#29: bool;
  var b$reqreads#30: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;
    b$reqreads#13 := true;
    b$reqreads#14 := true;
    b$reqreads#15 := true;
    b$reqreads#16 := true;
    b$reqreads#17 := true;
    b$reqreads#18 := true;
    b$reqreads#19 := true;
    b$reqreads#20 := true;
    b$reqreads#21 := true;
    b$reqreads#22 := true;
    b$reqreads#23 := true;
    b$reqreads#24 := true;
    b$reqreads#25 := true;
    b$reqreads#26 := true;
    b$reqreads#27 := true;
    b$reqreads#28 := true;
    b$reqreads#29 := true;
    b$reqreads#30 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Tree.Repr];
    assert {:id "id2"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.Tree?(), $Heap);
            assert {:id "id3"} this == this
               || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this)))));
            assume this == this || _module.Tree.Valid#canCall($Heap, this);
            assume {:id "id4"} _module.Tree.Valid($LS($LZ), $Heap, this);
            assume {:id "id5"} Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));
        }
        else
        {
            assume {:id "id6"} _module.Tree.Valid($LS($LZ), $Heap, this)
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#1 := $_ReadsFrame[this, _module.Tree.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this)))
        {
            b$reqreads#2 := $_ReadsFrame[this, _module.Tree.left];
            newtype$check#0 := null;
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
           && $Unbox(read($Heap, this, _module.Tree.left)): ref != null)
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.Tree.right];
            newtype$check#1 := null;
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
           && $Unbox(read($Heap, this, _module.Tree.left)): ref != null
           && $Unbox(read($Heap, this, _module.Tree.right)): ref != null)
        {
            b$reqreads#4 := $_ReadsFrame[this, _module.Tree.left];
            if ($Unbox(read($Heap, this, _module.Tree.left)): ref == this)
            {
                b$reqreads#5 := $_ReadsFrame[this, _module.Tree.right];
            }

            if ($Unbox(read($Heap, this, _module.Tree.left)): ref == this
               && this == $Unbox(read($Heap, this, _module.Tree.right)): ref)
            {
                b$reqreads#6 := $_ReadsFrame[this, _module.Tree.Contents];
            }

            if (!(
              $Unbox(read($Heap, this, _module.Tree.left)): ref == this
               && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
               && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq)))
            {
                b$reqreads#7 := $_ReadsFrame[this, _module.Tree.left];
                b$reqreads#8 := $_ReadsFrame[this, _module.Tree.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                  read($Heap, this, _module.Tree.left)))
                {
                    b$reqreads#9 := $_ReadsFrame[this, _module.Tree.left];
                    assert {:id "id7"} $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
                    b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr];
                    b$reqreads#11 := $_ReadsFrame[this, _module.Tree.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set))
                {
                    b$reqreads#12 := $_ReadsFrame[this, _module.Tree.left];
                    assert {:id "id8"} $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
                    b$reqreads#13 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#14 := $_ReadsFrame[this, _module.Tree.right];
                    b$reqreads#15 := $_ReadsFrame[this, _module.Tree.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Box(this))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.right)))
                {
                    b$reqreads#16 := $_ReadsFrame[this, _module.Tree.right];
                    assert {:id "id9"} $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
                    b$reqreads#17 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr];
                    b$reqreads#18 := $_ReadsFrame[this, _module.Tree.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Box(this))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set))
                {
                    b$reqreads#19 := $_ReadsFrame[this, _module.Tree.right];
                    assert {:id "id10"} $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
                    b$reqreads#20 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Box(this))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#21 := $_ReadsFrame[this, _module.Tree.left];
                    assert {:id "id11"} $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Tree.left), Tclass._module.Tree?(), $Heap);
                    b$reqreads#22 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.Tree.left)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id12"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Tree.left))), 
                        Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Tree.left))));
                    assume _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref);
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Box(this))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                    $Box(this))
                   && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref))
                {
                    b$reqreads#23 := $_ReadsFrame[this, _module.Tree.right];
                    assert {:id "id13"} $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Tree.right), Tclass._module.Tree?(), $Heap);
                    b$reqreads#24 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.Tree.right)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id14"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Tree.right))), 
                        Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Tree.right))));
                    assume _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref);
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.left))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                    $Box(this))
                   && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                    read($Heap, this, _module.Tree.right))
                   && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                    $Box(this))
                   && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
                   && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref))
                {
                    b$reqreads#25 := $_ReadsFrame[this, _module.Tree.Contents];
                    b$reqreads#26 := $_ReadsFrame[this, _module.Tree.left];
                    assert {:id "id15"} $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
                    b$reqreads#27 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents];
                    b$reqreads#28 := $_ReadsFrame[this, _module.Tree.value];
                    b$reqreads#29 := $_ReadsFrame[this, _module.Tree.right];
                    assert {:id "id16"} $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
                    b$reqreads#30 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents];
                }
            }
        }

        assume {:id "id17"} _module.Tree.Valid($LS($LZ), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
             && $Unbox(read($Heap, this, _module.Tree.left)): ref != null
             && $Unbox(read($Heap, this, _module.Tree.right)): ref != null
             && ((
                $Unbox(read($Heap, this, _module.Tree.left)): ref == this
                 && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
                 && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
               || (
                Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                  read($Heap, this, _module.Tree.left))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                  $Box(this))
                 && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                  read($Heap, this, _module.Tree.right))
                 && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                  $Box(this))
                 && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
                 && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
                 && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
                  Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq)))));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
           ==> 
          $Unbox(read($Heap, this, _module.Tree.left)): ref != null
           ==> 
          $Unbox(read($Heap, this, _module.Tree.right)): ref != null
           ==> 
          !(
            $Unbox(read($Heap, this, _module.Tree.left)): ref == this
             && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
             && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.left))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            $Box(this))
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.right))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            $Box(this))
           ==> _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
             && (_module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
               ==> _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Tree.Valid($LS($LZ), $Heap, this), TBool);
        assert {:id "id18"} b$reqreads#1;
        assert {:id "id19"} b$reqreads#2;
        assert {:id "id20"} b$reqreads#3;
        assert {:id "id21"} b$reqreads#4;
        assert {:id "id22"} b$reqreads#5;
        assert {:id "id23"} b$reqreads#6;
        assert {:id "id24"} b$reqreads#7;
        assert {:id "id25"} b$reqreads#8;
        assert {:id "id26"} b$reqreads#9;
        assert {:id "id27"} b$reqreads#10;
        assert {:id "id28"} b$reqreads#11;
        assert {:id "id29"} b$reqreads#12;
        assert {:id "id30"} b$reqreads#13;
        assert {:id "id31"} b$reqreads#14;
        assert {:id "id32"} b$reqreads#15;
        assert {:id "id33"} b$reqreads#16;
        assert {:id "id34"} b$reqreads#17;
        assert {:id "id35"} b$reqreads#18;
        assert {:id "id36"} b$reqreads#19;
        assert {:id "id37"} b$reqreads#20;
        assert {:id "id38"} b$reqreads#21;
        assert {:id "id39"} b$reqreads#22;
        assert {:id "id40"} b$reqreads#23;
        assert {:id "id41"} b$reqreads#24;
        assert {:id "id42"} b$reqreads#25;
        assert {:id "id43"} b$reqreads#26;
        assert {:id "id44"} b$reqreads#27;
        assert {:id "id45"} b$reqreads#28;
        assert {:id "id46"} b$reqreads#29;
        assert {:id "id47"} b$reqreads#30;
        return;

        assume false;
    }
}



// function declaration for _module.Tree.IsEmpty
function _module.Tree.IsEmpty($heap: Heap, this: ref) : bool
uses {
// consequence axiom for _module.Tree.IsEmpty
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Tree.IsEmpty($Heap, this) } 
    _module.Tree.IsEmpty#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Tree())
           && $IsAlloc(this, Tclass._module.Tree(), $Heap)
           && _module.Tree.Valid($LS($LZ), $Heap, this))
       ==> (_module.Tree.IsEmpty($Heap, this)
         <==> Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq)));
// definition axiom for _module.Tree.IsEmpty (revealed)
axiom {:id "id48"} 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, this: ref :: 
    { _module.Tree.IsEmpty($Heap, this), $IsGoodHeap($Heap) } 
    _module.Tree.IsEmpty#canCall($Heap, this)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Tree())
           && $IsAlloc(this, Tclass._module.Tree(), $Heap)
           && _module.Tree.Valid($LS($LZ), $Heap, this))
       ==> _module.Tree.IsEmpty($Heap, this)
         == 
        ($Unbox(read($Heap, this, _module.Tree.left)): ref
         == this));
}

function _module.Tree.IsEmpty#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Tree.IsEmpty
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Tree.IsEmpty($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Tree())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Tree.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Tree.IsEmpty($h0, this) == _module.Tree.IsEmpty($h1, this));

function _module.Tree.IsEmpty#requires(Heap, ref) : bool;

// #requires axiom for _module.Tree.IsEmpty
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Tree.IsEmpty#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Tree())
       && $IsAlloc(this, Tclass._module.Tree(), $Heap)
     ==> _module.Tree.IsEmpty#requires($Heap, this)
       == _module.Tree.Valid($LS($LZ), $Heap, this));

procedure {:verboseName "Tree.IsEmpty (well-formedness)"} CheckWellformed$$_module.Tree.IsEmpty(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id49"} _module.Tree.IsEmpty($Heap, this)
     <==> Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.IsEmpty (well-formedness)"} CheckWellformed$$_module.Tree.IsEmpty(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Tree?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.Tree.Valid#canCall($Heap, this);
    assume {:id "id50"} _module.Tree.Valid($LS($LZ), $Heap, this);
    assert {:id "id51"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.Tree.Repr];
    assert {:id "id52"} b$reqreads#1;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Tree?(), $Heap);
        assert {:id "id53"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
           ==> _module.Tree.Valid($LS($LZ), $Heap, this)
             || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));
        assert {:id "id54"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
           ==> _module.Tree.Valid($LS($LZ), $Heap, this)
             || $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
        assert {:id "id55"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
           ==> _module.Tree.Valid($LS($LZ), $Heap, this)
             || $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
        assert {:id "id56"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
           ==> _module.Tree.Valid($LS($LZ), $Heap, this)
             || 
            (
              $Unbox(read($Heap, this, _module.Tree.left)): ref == this
               && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
               && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
             || (
              Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                read($Heap, this, _module.Tree.left))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
                $Box(this))
               && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                read($Heap, this, _module.Tree.right))
               && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
               && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
                $Box(this))
               && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
               && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
               && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
                Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
                    Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq)));
        assume _module.Tree.Valid($LS($LZ), $Heap, this);
        assert {:id "id57"} this == this
           || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(this))), 
              Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(this))))
             && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(this))), 
              Set#Union($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
                Set#UnionOne(Set#Empty(): Set, $Box(this)))));
        assume this == this || _module.Tree.IsEmpty#canCall($Heap, this);
        assume {:id "id58"} _module.Tree.IsEmpty($Heap, this)
           <==> Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#2 := $_ReadsFrame[this, _module.Tree.left];
        assume {:id "id59"} _module.Tree.IsEmpty($Heap, this)
           == 
          ($Unbox(read($Heap, this, _module.Tree.left)): ref
           == this);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Tree.IsEmpty($Heap, this), TBool);
        assert {:id "id60"} b$reqreads#2;
        return;

        assume false;
    }
}



procedure {:verboseName "Tree.Empty (well-formedness)"} CheckWellFormed$$_module.Tree.Empty() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Tree.Empty (call)"} Call$$_module.Tree.Empty()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Valid#canCall($Heap, this);
  free ensures {:id "id63"} _module.Tree.Valid#canCall($Heap, this)
     && 
    _module.Tree.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.Tree.left)): ref != null
     && $Unbox(read($Heap, this, _module.Tree.right)): ref != null
     && ((
        $Unbox(read($Heap, this, _module.Tree.left)): ref == this
         && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq))));
  ensures {:id "id64"} Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Tree.Empty (correctness)"} Impl$$_module.Tree.Empty() returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Valid#canCall($Heap, this);
  ensures {:id "id65"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));
  ensures {:id "id66"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
  ensures {:id "id67"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
  ensures {:id "id68"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || 
      (
        $Unbox(read($Heap, this, _module.Tree.left)): ref == this
         && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq)));
  ensures {:id "id69"} Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.Empty (correctness)"} Impl$$_module.Tree.Empty() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.value: int;
  var this.left: ref;
  var this.right: ref;
  var this.Contents: Seq;
  var this.Repr: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: ref;
  var $rhs#1: ref;

    // AddMethodImpl: Empty, Impl$$_module.Tree.Empty
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(103,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(104,17)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $rhs#0 := this;
    assume true;
    $rhs#1 := this;
    this.left := $rhs#0;
    this.right := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(105,14)
    assume true;
    assume true;
    this.Contents := Lit(Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(106,10)
    assume true;
    assume true;
    this.Repr := Set#UnionOne(Set#Empty(): Set, $Box(this));
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(103,3)
    assume this != null && $Is(this, Tclass._module.Tree?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Tree.value)): int == this.value;
    assume $Unbox(read($Heap, this, _module.Tree.left)): ref == this.left;
    assume $Unbox(read($Heap, this, _module.Tree.right)): ref == this.right;
    assume $Unbox(read($Heap, this, _module.Tree.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, _module.Tree.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(103,3)
}



procedure {:verboseName "Tree.Node (well-formedness)"} CheckWellFormed$$_module.Tree.Node(lft#0: ref
       where $Is(lft#0, Tclass._module.Tree())
         && $IsAlloc(lft#0, Tclass._module.Tree(), $Heap), 
    val#0: int, 
    rgt#0: ref
       where $Is(rgt#0, Tclass._module.Tree())
         && $IsAlloc(rgt#0, Tclass._module.Tree(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.Node (well-formedness)"} CheckWellFormed$$_module.Tree.Node(lft#0: ref, val#0: int, rgt#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Node, CheckWellFormed$$_module.Tree.Node
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assert {:id "id76"} lft#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(lft#0), Tclass._module.Tree?(), $Heap);
    assume _module.Tree.Valid#canCall($Heap, lft#0);
    assume {:id "id77"} _module.Tree.Valid($LS($LZ), $Heap, lft#0);
    assert {:id "id78"} rgt#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(rgt#0), Tclass._module.Tree?(), $Heap);
    assume _module.Tree.Valid#canCall($Heap, rgt#0);
    assume {:id "id79"} _module.Tree.Valid($LS($LZ), $Heap, rgt#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.Tree())
       && $IsAlloc(this, Tclass._module.Tree(), $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Tree?(), $Heap);
    assume _module.Tree.Valid#canCall($Heap, this);
    assume {:id "id80"} _module.Tree.Valid($LS($LZ), $Heap, this);
    assert {:id "id81"} lft#0 != null;
    assert {:id "id82"} rgt#0 != null;
    assume {:id "id83"} Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
      Seq#Append(Seq#Append($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, 
          Seq#Build(Seq#Empty(): Seq, $Box(val#0))), 
        $Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq));
}



procedure {:verboseName "Tree.Node (call)"} Call$$_module.Tree.Node(lft#0: ref
       where $Is(lft#0, Tclass._module.Tree())
         && $IsAlloc(lft#0, Tclass._module.Tree(), $Heap), 
    val#0: int, 
    rgt#0: ref
       where $Is(rgt#0, Tclass._module.Tree())
         && $IsAlloc(rgt#0, Tclass._module.Tree(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id84"} _module.Tree.Valid#canCall($Heap, lft#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, lft#0)
       || Set#IsMember($Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set, $Box(lft#0));
  requires {:id "id85"} _module.Tree.Valid#canCall($Heap, lft#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, lft#0)
       || $Unbox(read($Heap, lft#0, _module.Tree.left)): ref != null;
  requires {:id "id86"} _module.Tree.Valid#canCall($Heap, lft#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, lft#0)
       || $Unbox(read($Heap, lft#0, _module.Tree.right)): ref != null;
  requires {:id "id87"} _module.Tree.Valid#canCall($Heap, lft#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, lft#0)
       || 
      (
        $Unbox(read($Heap, lft#0, _module.Tree.left)): ref == lft#0
         && lft#0 == $Unbox(read($Heap, lft#0, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set, 
          read($Heap, lft#0, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(lft#0))
         && Set#IsMember($Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set, 
          read($Heap, lft#0, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(lft#0))
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, lft#0, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, lft#0, _module.Tree.value))), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, lft#0, _module.Tree.right)): ref, 
                _module.Tree.Contents)): Seq)));
  requires {:id "id88"} _module.Tree.Valid#canCall($Heap, rgt#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, rgt#0)
       || Set#IsMember($Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set, $Box(rgt#0));
  requires {:id "id89"} _module.Tree.Valid#canCall($Heap, rgt#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, rgt#0)
       || $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref != null;
  requires {:id "id90"} _module.Tree.Valid#canCall($Heap, rgt#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, rgt#0)
       || $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref != null;
  requires {:id "id91"} _module.Tree.Valid#canCall($Heap, rgt#0)
     ==> _module.Tree.Valid($LS($LZ), $Heap, rgt#0)
       || 
      (
        $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref == rgt#0
         && rgt#0 == $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set, 
          read($Heap, rgt#0, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(rgt#0))
         && Set#IsMember($Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set, 
          read($Heap, rgt#0, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(rgt#0))
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, rgt#0, _module.Tree.value))), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref, 
                _module.Tree.Contents)): Seq)));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Valid#canCall($Heap, this);
  free ensures {:id "id92"} _module.Tree.Valid#canCall($Heap, this)
     && 
    _module.Tree.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.Tree.left)): ref != null
     && $Unbox(read($Heap, this, _module.Tree.right)): ref != null
     && ((
        $Unbox(read($Heap, this, _module.Tree.left)): ref == this
         && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq))));
  ensures {:id "id93"} Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
    Seq#Append(Seq#Append($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, 
        Seq#Build(Seq#Empty(): Seq, $Box(val#0))), 
      $Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq));
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Tree.Node (correctness)"} Impl$$_module.Tree.Node(lft#0: ref
       where $Is(lft#0, Tclass._module.Tree())
         && $IsAlloc(lft#0, Tclass._module.Tree(), $Heap), 
    val#0: int, 
    rgt#0: ref
       where $Is(rgt#0, Tclass._module.Tree())
         && $IsAlloc(rgt#0, Tclass._module.Tree(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id94"} _module.Tree.Valid#canCall($Heap, lft#0)
     && 
    _module.Tree.Valid($LS($LZ), $Heap, lft#0)
     && 
    Set#IsMember($Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set, $Box(lft#0))
     && $Unbox(read($Heap, lft#0, _module.Tree.left)): ref != null
     && $Unbox(read($Heap, lft#0, _module.Tree.right)): ref != null
     && ((
        $Unbox(read($Heap, lft#0, _module.Tree.left)): ref == lft#0
         && lft#0 == $Unbox(read($Heap, lft#0, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set, 
          read($Heap, lft#0, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(lft#0))
         && Set#IsMember($Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set, 
          read($Heap, lft#0, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(lft#0))
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, lft#0, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, lft#0, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, lft#0, _module.Tree.value))), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, lft#0, _module.Tree.right)): ref, 
                _module.Tree.Contents)): Seq))));
  free requires {:id "id95"} _module.Tree.Valid#canCall($Heap, rgt#0)
     && 
    _module.Tree.Valid($LS($LZ), $Heap, rgt#0)
     && 
    Set#IsMember($Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set, $Box(rgt#0))
     && $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref != null
     && $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref != null
     && ((
        $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref == rgt#0
         && rgt#0 == $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set, 
          read($Heap, rgt#0, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(rgt#0))
         && Set#IsMember($Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set, 
          read($Heap, rgt#0, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(rgt#0))
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, rgt#0, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, rgt#0, _module.Tree.value))), 
            $Unbox(read($Heap, 
                $Unbox(read($Heap, rgt#0, _module.Tree.right)): ref, 
                _module.Tree.Contents)): Seq))));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Valid#canCall($Heap, this);
  ensures {:id "id96"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));
  ensures {:id "id97"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
  ensures {:id "id98"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
  ensures {:id "id99"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || 
      (
        $Unbox(read($Heap, this, _module.Tree.left)): ref == this
         && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq)));
  ensures {:id "id100"} Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
    Seq#Append(Seq#Append($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, 
        Seq#Build(Seq#Empty(): Seq, $Box(val#0))), 
      $Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.Node (correctness)"} Impl$$_module.Tree.Node(lft#0: ref, val#0: int, rgt#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.value: int;
  var this.left: ref;
  var this.right: ref;
  var this.Contents: Seq;
  var this.Repr: Set;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#0: ref;
  var $rhs#1: int;
  var $rhs#2: ref;

    // AddMethodImpl: Node, Impl$$_module.Tree.Node
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(112,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(113,24)
    assume true;
    $obj0 := this;
    assume true;
    $obj1 := this;
    assume true;
    $obj2 := this;
    assume true;
    $rhs#0 := lft#0;
    assume true;
    $rhs#1 := val#0;
    assume true;
    $rhs#2 := rgt#0;
    this.left := $rhs#0;
    this.value := $rhs#1;
    this.right := $rhs#2;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(114,14)
    assume true;
    assert {:id "id107"} lft#0 != null;
    assert {:id "id108"} rgt#0 != null;
    assume true;
    this.Contents := Seq#Append(Seq#Append($Unbox(read($Heap, lft#0, _module.Tree.Contents)): Seq, 
        Seq#Build(Seq#Empty(): Seq, $Box(val#0))), 
      $Unbox(read($Heap, rgt#0, _module.Tree.Contents)): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(115,10)
    assume true;
    assert {:id "id110"} lft#0 != null;
    assert {:id "id111"} rgt#0 != null;
    assume true;
    this.Repr := Set#Union(Set#Union($Unbox(read($Heap, lft#0, _module.Tree.Repr)): Set, 
        Set#UnionOne(Set#Empty(): Set, $Box(this))), 
      $Unbox(read($Heap, rgt#0, _module.Tree.Repr)): Set);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(112,3)
    assume this != null && $Is(this, Tclass._module.Tree?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Tree.value)): int == this.value;
    assume $Unbox(read($Heap, this, _module.Tree.left)): ref == this.left;
    assume $Unbox(read($Heap, this, _module.Tree.right)): ref == this.right;
    assume $Unbox(read($Heap, this, _module.Tree.Contents)): Seq == this.Contents;
    assume $Unbox(read($Heap, this, _module.Tree.Repr)): Set == this.Repr;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(112,3)
}



procedure {:verboseName "Tree.exists_intro (well-formedness)"} CheckWellFormed$$_module.Tree.exists__intro(_module.Tree.exists_intro$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Tree.exists_intro$T)
         && $IsAllocBox(x#0, _module.Tree.exists_intro$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.exists_intro (well-formedness)"} CheckWellFormed$$_module.Tree.exists__intro(_module.Tree.exists_intro$T: Ty, this: ref, P#0: HandleType, x#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x0#0: Box;
  var y#0: Box;
  var ##x0#1: Box;


    // AddMethodImpl: exists_intro, CheckWellFormed$$_module.Tree.exists__intro
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(P#0), Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool), $Heap);
    ##x0#0 := x#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x0#0, _module.Tree.exists_intro$T, $Heap);
    assume Requires1#canCall(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0);
    assume {:id "id113"} Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0);
    assert {:id "id114"} Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0);
    assume {:id "id115"} $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0)): bool;
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc y#0;
    assume $IsBox(y#0, _module.Tree.exists_intro$T)
       && $IsAllocBox(y#0, _module.Tree.exists_intro$T, $Heap);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(P#0), Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool), $Heap);
    ##x0#1 := y#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##x0#1, _module.Tree.exists_intro$T, $Heap);
    assume Requires1#canCall(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#0);
    assume {:id "id116"} Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#0);
    assert {:id "id117"} Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#0);
    assume {:id "id118"} $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#0)): bool;
}



procedure {:verboseName "Tree.exists_intro (call)"} Call$$_module.Tree.exists__intro(_module.Tree.exists_intro$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Tree.exists_intro$T)
         && $IsAllocBox(x#0, _module.Tree.exists_intro$T, $Heap));
  // user-defined preconditions
  requires {:id "id119"} Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0);
  requires {:id "id120"} $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall y#1: Box :: 
    { $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)): bool } 
      { Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1) } 
    $IsBox(y#1, _module.Tree.exists_intro$T)
       ==> Requires1#canCall(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1));
  ensures {:id "id121"} (exists y#1: Box :: 
    { $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)): bool } 
      { Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1) } 
    $IsBox(y#1, _module.Tree.exists_intro$T)
       && $IsAllocBox(y#1, _module.Tree.exists_intro$T, $Heap)
       && 
      Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)
       && $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)): bool);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Tree.exists_intro (correctness)"} Impl$$_module.Tree.exists__intro(_module.Tree.exists_intro$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap), 
    P#0: HandleType
       where $Is(P#0, Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool))
         && $IsAlloc(P#0, Tclass._System.___hFunc1(_module.Tree.exists_intro$T, TBool), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.Tree.exists_intro$T)
         && $IsAllocBox(x#0, _module.Tree.exists_intro$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id122"} Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0);
  requires {:id "id123"} $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, x#0)): bool;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall y#1: Box :: 
    { $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)): bool } 
      { Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1) } 
    $IsBox(y#1, _module.Tree.exists_intro$T)
       ==> Requires1#canCall(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1));
  ensures {:id "id124"} (exists y#1: Box :: 
    { $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)): bool } 
      { Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1) } 
    $IsBox(y#1, _module.Tree.exists_intro$T)
       && $IsAllocBox(y#1, _module.Tree.exists_intro$T, $Heap)
       && 
      Requires1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)
       && $Unbox(Apply1(_module.Tree.exists_intro$T, TBool, $Heap, P#0, y#1)): bool);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.exists_intro (correctness)"} Impl$$_module.Tree.exists__intro(_module.Tree.exists_intro$T: Ty, this: ref, P#0: HandleType, x#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: exists_intro, Impl$$_module.Tree.exists__intro
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



procedure {:verboseName "Tree.ComputeMax (well-formedness)"} CheckWellFormed$$_module.Tree.ComputeMax(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap))
   returns (mx#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.ComputeMax (well-formedness)"} CheckWellFormed$$_module.Tree.ComputeMax(this: ref) returns (mx#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var x#2: int;


    // AddMethodImpl: ComputeMax, CheckWellFormed$$_module.Tree.ComputeMax
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Tree?(), $Heap);
    assume _module.Tree.Valid#canCall($Heap, this);
    assume {:id "id125"} _module.Tree.Valid($LS($LZ), $Heap, this);
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Tree?(), $Heap);
    assert {:id "id126"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
       ==> _module.Tree.Valid($LS($LZ), $Heap, this)
         || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));
    assert {:id "id127"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
       ==> _module.Tree.Valid($LS($LZ), $Heap, this)
         || $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
    assert {:id "id128"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
       ==> _module.Tree.Valid($LS($LZ), $Heap, this)
         || $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
    assert {:id "id129"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, this)
       ==> _module.Tree.Valid($LS($LZ), $Heap, this)
         || 
        (
          $Unbox(read($Heap, this, _module.Tree.left)): ref == this
           && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
           && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
         || (
          Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.left))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            $Box(this))
           && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.right))
           && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            $Box(this))
           && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
           && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
           && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
            Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
                Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq)));
    assume _module.Tree.Valid($LS($LZ), $Heap, this);
    assume _module.Tree.IsEmpty#canCall($Heap, this);
    assume {:id "id130"} !_module.Tree.IsEmpty($Heap, this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc mx#0;
    havoc x#0;
    assume true;
    if (*)
    {
        assume {:id "id131"} Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#0));
        assume {:id "id132"} x#0 <= mx#0;
    }
    else
    {
        assume {:id "id133"} Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#0))
           ==> x#0 <= mx#0;
    }

    assume {:id "id134"} (forall x#1: int :: 
      { Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#1)) } 
      Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#1))
         ==> x#1 <= mx#0);
    havoc x#2;
    assume true;
    assume {:id "id135"} Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#2));
    assume {:id "id136"} x#2 == mx#0;
}



procedure {:verboseName "Tree.ComputeMax (call)"} Call$$_module.Tree.ComputeMax(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap))
   returns (mx#0: int);
  // user-defined preconditions
  requires {:id "id137"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this));
  requires {:id "id138"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
  requires {:id "id139"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
  requires {:id "id140"} _module.Tree.Valid#canCall($Heap, this)
     ==> _module.Tree.Valid($LS($LZ), $Heap, this)
       || 
      (
        $Unbox(read($Heap, this, _module.Tree.left)): ref == this
         && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LS($LZ)), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq)));
  requires {:id "id141"} !_module.Tree.IsEmpty($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id142"} (forall x#1: int :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#1)) } 
    Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#1))
       ==> x#1 <= mx#0);
  free ensures true;
  free ensures {:id "id143"} (exists x#3: int :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#3)) } 
    Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#3))
       && x#3 == mx#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Tree.ComputeMax (correctness)"} Impl$$_module.Tree.ComputeMax(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Tree())
         && $IsAlloc(this, Tclass._module.Tree(), $Heap))
   returns (mx#0: int, $_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id144"} _module.Tree.Valid#canCall($Heap, this)
     && 
    _module.Tree.Valid($LS($LZ), $Heap, this)
     && 
    Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, $Box(this))
     && $Unbox(read($Heap, this, _module.Tree.left)): ref != null
     && $Unbox(read($Heap, this, _module.Tree.right)): ref != null
     && ((
        $Unbox(read($Heap, this, _module.Tree.left)): ref == this
         && this == $Unbox(read($Heap, this, _module.Tree.right)): ref
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, Seq#Empty(): Seq))
       || (
        Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.left))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && Set#IsMember($Unbox(read($Heap, this, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.right))
         && Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Unbox(read($Heap, this, _module.Tree.Repr)): Set)
         && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          $Box(this))
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         && _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         && Seq#Equal($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, 
          Seq#Append(Seq#Append($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Tree.value))), 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq))));
  requires {:id "id145"} !_module.Tree.IsEmpty($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id146"} (forall x#1: int :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#1)) } 
    Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#1))
       ==> x#1 <= mx#0);
  free ensures true;
  ensures {:id "id147"} (exists x#3: int :: 
    { Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#3)) } 
    Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#3))
       && x#3 == mx#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.ComputeMax (correctness)"} Impl$$_module.Tree.ComputeMax(this: ref) returns (mx#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0_0: int;
  var $rhs##0_0: int;
  var m#1_0: int;
  var $rhs##1_0: int;
  var P##0: HandleType;
  var $lambdaHeap#0: Heap;
  var x#4: int;
  var $_Frame#l0: [ref,Field]bool;
  var lambdaResult#0: bool;
  var x##0: int;

    // AddMethodImpl: ComputeMax, Impl$$_module.Tree.ComputeMax
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(131,8)
    assume true;
    assume true;
    mx#0 := $Unbox(read($Heap, this, _module.Tree.value)): int;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(133,5)
    assert {:id "id149"} $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(read($Heap, this, _module.Tree.left), Tclass._module.Tree?(), $Heap);
    assert {:id "id150"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.left));
    assert {:id "id151"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.left)): ref
           != null;
    assert {:id "id152"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.right)): ref
           != null;
    assert {:id "id153"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref)
         || 
        (
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.left)): ref
             == $Unbox(read($Heap, this, _module.Tree.left)): ref
           && $Unbox(read($Heap, this, _module.Tree.left)): ref
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.right)): ref
           && Seq#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
            Seq#Empty(): Seq))
         || (
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.left))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.left)): ref, 
                _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.left)): ref, 
                _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.left))
           && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.right))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.right)): ref, 
                _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.right)): ref, 
                _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.left))
           && _module.Tree.Valid($LS($LS($LZ)), 
            $Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.left)): ref)
           && _module.Tree.Valid($LS($LS($LZ)), 
            $Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.right)): ref)
           && Seq#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Contents)): Seq, 
            Seq#Append(Seq#Append($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.left)): ref, 
                    _module.Tree.Contents)): Seq, 
                Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.value))), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.right)): ref, 
                  _module.Tree.Contents)): Seq)));
    assume _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref);
    assume _module.Tree.IsEmpty#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref);
    assume _module.Tree.IsEmpty#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref);
    if (!_module.Tree.IsEmpty($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref))
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(134,31)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id154"} $Unbox(read($Heap, this, _module.Tree.left)): ref != null;
        assert {:id "id155"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Tree.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.left)): ref, _module.Tree.Repr)): Set);
        call {:id "id156"} $rhs##0_0 := Call$$_module.Tree.ComputeMax($Unbox(read($Heap, this, _module.Tree.left)): ref);
        // TrCallStmt: After ProcessCallStmt
        m#0_0 := $rhs##0_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(135,10)
        assume true;
        if (mx#0 < m#0_0)
        {
        }
        else
        {
        }

        assume true;
        mx#0 := (if mx#0 < m#0_0 then m#0_0 else mx#0);
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(138,5)
    assert {:id "id159"} $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox(read($Heap, this, _module.Tree.right), Tclass._module.Tree?(), $Heap);
    assert {:id "id160"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
          read($Heap, this, _module.Tree.right));
    assert {:id "id161"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.left)): ref
           != null;
    assert {:id "id162"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         || $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.right)): ref
           != null;
    assert {:id "id163"} {:subsumption 0} _module.Tree.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
       ==> _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref)
         || 
        (
          $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.left)): ref
             == $Unbox(read($Heap, this, _module.Tree.right)): ref
           && $Unbox(read($Heap, this, _module.Tree.right)): ref
             == $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.right)): ref
           && Seq#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq, 
            Seq#Empty(): Seq))
         || (
          Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.left))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.left)): ref, 
                _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.left)): ref, 
                _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.right))
           && Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.right))
           && Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.right)): ref, 
                _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set)
           && !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.right)): ref, 
                _module.Tree.Repr)): Set, 
            read($Heap, this, _module.Tree.right))
           && _module.Tree.Valid($LS($LS($LZ)), 
            $Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.left)): ref)
           && _module.Tree.Valid($LS($LS($LZ)), 
            $Heap, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.right)): ref)
           && Seq#Equal($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Contents)): Seq, 
            Seq#Append(Seq#Append($Unbox(read($Heap, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.left)): ref, 
                    _module.Tree.Contents)): Seq, 
                Seq#Build(Seq#Empty(): Seq, 
                  read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.value))), 
              $Unbox(read($Heap, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.right)): ref, 
                  _module.Tree.Contents)): Seq)));
    assume _module.Tree.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref);
    assume _module.Tree.IsEmpty#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref);
    assume _module.Tree.IsEmpty#canCall($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref);
    if (!_module.Tree.IsEmpty($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref))
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(139,32)
        assume true;
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id164"} $Unbox(read($Heap, this, _module.Tree.right)): ref != null;
        assert {:id "id165"} Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set, 
            $Unbox(read(old($Heap), this, _module.Tree.Repr)): Set)
           && !Set#Subset($Unbox(read(old($Heap), this, _module.Tree.Repr)): Set, 
            $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Tree.right)): ref, _module.Tree.Repr)): Set);
        call {:id "id166"} $rhs##1_0 := Call$$_module.Tree.ComputeMax($Unbox(read($Heap, this, _module.Tree.right)): ref);
        // TrCallStmt: After ProcessCallStmt
        m#1_0 := $rhs##1_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(140,10)
        assume true;
        if (mx#0 < m#1_0)
        {
        }
        else
        {
        }

        assume true;
        mx#0 := (if mx#0 < m#1_0 then m#1_0 else mx#0);
        pop;
    }
    else
    {
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny2/COST-verif-comp-2011-2-MaxTree-class.dfy(143,17)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // Begin Comprehension WF check
    if (*)
    {
        havoc $lambdaHeap#0;
        assume $IsGoodHeap($lambdaHeap#0);
        assume $Heap == $lambdaHeap#0 || $HeapSucc($Heap, $lambdaHeap#0);
        havoc x#4;
        if (true)
        {
            $_Frame#l0 := (lambda $o: ref, $f: Field :: 
              $o != null && $Unbox(read($lambdaHeap#0, $o, alloc)): bool ==> $o == this);
            assert {:id "id169"} $_Frame#l0[this, _module.Tree.Contents];
            if (Seq#Contains($Unbox(read($lambdaHeap#0, this, _module.Tree.Contents)): Seq, $Box(x#4)))
            {
            }

            assume {:id "id170"} lambdaResult#0
               == (Seq#Contains($Unbox(read($Heap, this, _module.Tree.Contents)): Seq, $Box(x#4))
                 && x#4 == mx#0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(lambdaResult#0, TBool);
        }

        assume false;
    }

    // End Comprehension WF check
    assume true;
    // ProcessCallStmt: CheckSubrange
    P##0 := Lit(AtLayer((lambda $l#1#ly#0: LayerType :: 
          Handle1((lambda $l#1#heap#0: Heap, $l#1#x#0: Box :: 
              $Box(Seq#Contains($Unbox(read($l#1#heap#0, this, _module.Tree.Contents)): Seq, $l#1#x#0)
                   && $Unbox($l#1#x#0): int == mx#0)), 
            (lambda $l#1#heap#0: Heap, $l#1#x#0: Box :: $IsBox($l#1#x#0, TInt)), 
            (lambda $l#1#heap#0: Heap, $l#1#x#0: Box :: 
              SetRef_to_SetBox((lambda $l#1#o#0: ref :: $l#1#o#0 == this))))), 
        $LS($LZ)));
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := mx#0;
    call {:id "id171"} Call$$_module.Tree.exists__intro(TInt, this, P##0, $Box(x##0));
    // TrCallStmt: After ProcessCallStmt
}



// $Is axiom for non-null type _module.Tree
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Tree()) } { $Is(c#0, Tclass._module.Tree?()) } 
  $Is(c#0, Tclass._module.Tree())
     <==> $Is(c#0, Tclass._module.Tree?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Tree
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Tree(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Tree?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Tree(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Tree?(), $h));

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

const unique tytagFamily$Tree: TyTagFamily;

const unique field$value: NameFamily;

const unique field$left: NameFamily;

const unique field$right: NameFamily;

const unique field$Contents: NameFamily;

const unique field$Repr: NameFamily;

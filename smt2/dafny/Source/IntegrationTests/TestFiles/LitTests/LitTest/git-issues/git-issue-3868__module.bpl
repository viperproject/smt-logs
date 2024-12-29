// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy

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



function Tclass._module.Recur() : Ty
uses {
// Tclass._module.Recur Tag
axiom Tag(Tclass._module.Recur()) == Tagclass._module.Recur
   && TagFamily(Tclass._module.Recur()) == tytagFamily$Recur;
}

const unique Tagclass._module.Recur: TyTag;

// Box/unbox axiom for Tclass._module.Recur
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Recur()) } 
  $IsBox(bx, Tclass._module.Recur())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Recur()));

function Tclass._module.Or() : Ty
uses {
// Tclass._module.Or Tag
axiom Tag(Tclass._module.Or()) == Tagclass._module.Or
   && TagFamily(Tclass._module.Or()) == tytagFamily$Or;
}

const unique Tagclass._module.Or: TyTag;

// Box/unbox axiom for Tclass._module.Or
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Or()) } 
  $IsBox(bx, Tclass._module.Or())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Or()));

function Tclass._module.AB() : Ty
uses {
// Tclass._module.AB Tag
axiom Tag(Tclass._module.AB()) == Tagclass._module.AB
   && TagFamily(Tclass._module.AB()) == tytagFamily$AB;
}

const unique Tagclass._module.AB: TyTag;

// Box/unbox axiom for Tclass._module.AB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AB()) } 
  $IsBox(bx, Tclass._module.AB())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.AB()));

function Tclass._module.Recur?() : Ty
uses {
// Tclass._module.Recur? Tag
axiom Tag(Tclass._module.Recur?()) == Tagclass._module.Recur?
   && TagFamily(Tclass._module.Recur?()) == tytagFamily$Recur;
}

const unique Tagclass._module.Recur?: TyTag;

// Box/unbox axiom for Tclass._module.Recur?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Recur?()) } 
  $IsBox(bx, Tclass._module.Recur?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Recur?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var r#0: int;
  var $rhs##0: int;
  var s##0: Seq;
  var defass#recur#0: bool;
  var recur#0: ref
     where defass#recur#0
       ==> $Is(recur#0, Tclass._module.Recur())
         && $IsAlloc(recur#0, Tclass._module.Recur(), $Heap);
  var $nw: ref;
  var n##0: int;
  var ##x#0: Seq;
  var ##o#0: DatatypeType;
  var ##x#1: Seq;
  var ##ab#0: DatatypeType;
  var ##x#2: Seq;
  var ##o#1: DatatypeType;
  var ##n#0: int;
  var ##m#0: int;
  var ##o#2: DatatypeType;
  var ##n#1: int;
  var ##m#1: int;
  var w#0: int;
  var $rhs##1: int;
  var x##0: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(4,24)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(108))), $Box(char#FromInt(101))), 
        $Box(char#FromInt(116))));
    call {:id "id84"} $rhs##0 := Call$$_module.__default.NotOptimized(s##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(5,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(6,13)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(6,16)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id86"} $Is(LitInt(25), Tclass._System.nat());
    n##0 := LitInt(25);
    call {:id "id87"} $nw := Call$$_module.Recur.__ctor(n##0);
    // TrCallStmt: After ProcessCallStmt
    recur#0 := $nw;
    defass#recur#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(7,3)
    ##x#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(49))), $Box(char#FromInt(57))), 
          $Box(char#FromInt(48))), 
        $Box(char#FromInt(48))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TSeq(TChar), $Heap);
    assume _module.__default.NotSoDeep#canCall(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(49))), $Box(char#FromInt(57))), 
            $Box(char#FromInt(48))), 
          $Box(char#FromInt(48)))));
    assume _module.__default.NotSoDeep#canCall(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(49))), $Box(char#FromInt(57))), 
            $Box(char#FromInt(48))), 
          $Box(char#FromInt(48)))));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(8,3)
    ##o#0 := Lit(#_module.Or.A());
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#0, Tclass._module.Or(), $Heap);
    ##x#1 := Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(52))), $Box(char#FromInt(50))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#1, TSeq(TChar), $Heap);
    assume _module.__default.WoahThat_ksDeep#canCall(Lit(#_module.Or.A()), 
      Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(52))), $Box(char#FromInt(50)))));
    assume _module.__default.WoahThat_ksDeep#canCall(Lit(#_module.Or.A()), 
      Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(52))), $Box(char#FromInt(50)))));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(9,3)
    ##ab#0 := Lit(#_module.AB.AA(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105)))), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(105)))), 
        Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(105))), 
            $Box(char#FromInt(105)))), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(118)))), 
        Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118)))), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105)))), 
        Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105))), 
            $Box(char#FromInt(105)))), 
        Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105))), 
              $Box(char#FromInt(105))), 
            $Box(char#FromInt(105)))), 
        Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(120)))), 
        Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120))))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##ab#0, Tclass._module.AB(), $Heap);
    ##x#2 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(53))), $Box(char#FromInt(53))), 
        $Box(char#FromInt(53))));
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#2, TSeq(TChar), $Heap);
    assume _module.__default.WoahThat_ksDeepToo#canCall(Lit(#_module.AB.AA(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(105))), 
              $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(118)))), 
          Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105))), 
              $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(120)))), 
          Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120)))))), 
      Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(53))), $Box(char#FromInt(53))), 
          $Box(char#FromInt(53)))));
    assume _module.__default.WoahThat_ksDeepToo#canCall(Lit(#_module.AB.AA(Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(105))), 
              $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(118)))), 
          Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105))), 
              $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(118))), $Box(char#FromInt(105))), 
                $Box(char#FromInt(105))), 
              $Box(char#FromInt(105)))), 
          Lit(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(105))), $Box(char#FromInt(120)))), 
          Lit(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(120)))))), 
      Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(53))), $Box(char#FromInt(53))), 
          $Box(char#FromInt(53)))));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(10,3)
    assume true;
    assert {:id "id89"} defass#recur#0;
    assert {:id "id90"} {:subsumption 0} recur#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(recur#0), Tclass._module.Recur?(), $Heap);
    ##o#1 := Lit(#_module.Or.A());
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#1, Tclass._module.Or(), $Heap);
    assert {:id "id91"} $Is(LitInt(12), Tclass._System.nat());
    ##n#0 := LitInt(12);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    ##m#0 := LitInt(80);
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, TInt, $Heap);
    assume _module.Recur.Follow0#canCall($Heap, recur#0, Lit(#_module.Or.A()), LitInt(12), LitInt(80));
    assume _module.Recur.Follow0#canCall($Heap, recur#0, Lit(#_module.Or.A()), LitInt(12), LitInt(80));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(11,3)
    assume true;
    assert {:id "id92"} defass#recur#0;
    assert {:id "id93"} {:subsumption 0} recur#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(recur#0), Tclass._module.Recur?(), $Heap);
    ##o#2 := Lit(#_module.Or.A());
    // assume allocatedness for argument to function
    assume $IsAlloc(##o#2, Tclass._module.Or(), $Heap);
    assert {:id "id94"} $Is(LitInt(12), Tclass._System.nat());
    ##n#1 := LitInt(12);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    ##m#1 := LitInt(80);
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#1, TInt, $Heap);
    assume _module.Recur.Follow1#canCall($Heap, recur#0, Lit(#_module.Or.A()), LitInt(12), LitInt(80));
    assume _module.Recur.Follow1#canCall($Heap, recur#0, Lit(#_module.Or.A()), LitInt(12), LitInt(80));
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(12,26)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(25);
    call {:id "id95"} $rhs##1 := Call$$_module.__default.DeepAssignment(x##0);
    // TrCallStmt: After ProcessCallStmt
    w#0 := $rhs##1;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(13,3)
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(14,24)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id97"} Call$$MatchExpressions.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "NotOptimized (well-formedness)"} CheckWellFormed$$_module.__default.NotOptimized(s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NotOptimized (call)"} Call$$_module.__default.NotOptimized(s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NotOptimized (correctness)"} Impl$$_module.__default.NotOptimized(s#0: Seq where $Is(s#0, TSeq(TChar)) && $IsAlloc(s#0, TSeq(TChar), $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module._default.NotSoDeep
function _module.__default.NotSoDeep(x#0: Seq) : DatatypeType
uses {
// consequence axiom for _module.__default.NotSoDeep
axiom 1 <= $FunctionContextHeight
   ==> (forall x#0: Seq :: 
    { _module.__default.NotSoDeep(x#0) } 
    _module.__default.NotSoDeep#canCall(x#0)
         || (1 < $FunctionContextHeight && $Is(x#0, TSeq(TChar)))
       ==> $Is(_module.__default.NotSoDeep(x#0), Tclass._module.Option(TSeq(TChar))));
// definition axiom for _module.__default.NotSoDeep (revealed)
axiom {:id "id103"} 1 <= $FunctionContextHeight
   ==> (forall x#0: Seq :: 
    { _module.__default.NotSoDeep(x#0) } 
    _module.__default.NotSoDeep#canCall(x#0)
         || (1 < $FunctionContextHeight && $Is(x#0, TSeq(TChar)))
       ==> _module.__default.NotSoDeep(x#0)
         == (var x1#0 := x#0; 
          (var x2#0 := x1#0; 
            (var x3#0 := x2#0; 
              (var x4#0 := x3#0; 
                (var x5#0 := x4#0; 
                  (var x6#0 := x5#0; 
                    (var x7#0 := x6#0; 
                      (var x8#0 := x7#0; 
                        (var x9#0 := x8#0; (var x10#0 := x9#0; #_module.Option.Some($Box(x10#0)))))))))))));
// definition axiom for _module.__default.NotSoDeep for all literals (revealed)
axiom {:id "id104"} 1 <= $FunctionContextHeight
   ==> (forall x#0: Seq :: 
    {:weight 3} { _module.__default.NotSoDeep(Lit(x#0)) } 
    _module.__default.NotSoDeep#canCall(Lit(x#0))
         || (1 < $FunctionContextHeight && $Is(x#0, TSeq(TChar)))
       ==> _module.__default.NotSoDeep(Lit(x#0))
         == (var x1#1 := Lit(x#0); 
          (var x2#1 := x1#1; 
            (var x3#1 := x2#1; 
              (var x4#1 := x3#1; 
                (var x5#1 := x4#1; 
                  (var x6#1 := x5#1; 
                    (var x7#1 := x6#1; 
                      (var x8#1 := x7#1; 
                        (var x9#1 := x8#1; (var x10#1 := x9#1; Lit(#_module.Option.Some($Box(x10#1))))))))))))));
}

function _module.__default.NotSoDeep#canCall(x#0: Seq) : bool;

function Tclass._module.Option(Ty) : Ty;

const unique Tagclass._module.Option: TyTag;

// Tclass._module.Option Tag
axiom (forall _module.Option$T: Ty :: 
  { Tclass._module.Option(_module.Option$T) } 
  Tag(Tclass._module.Option(_module.Option$T)) == Tagclass._module.Option
     && TagFamily(Tclass._module.Option(_module.Option$T)) == tytagFamily$Option);

function Tclass._module.Option_0(Ty) : Ty;

// Tclass._module.Option injectivity 0
axiom (forall _module.Option$T: Ty :: 
  { Tclass._module.Option(_module.Option$T) } 
  Tclass._module.Option_0(Tclass._module.Option(_module.Option$T))
     == _module.Option$T);

// Box/unbox axiom for Tclass._module.Option
axiom (forall _module.Option$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Option(_module.Option$T)) } 
  $IsBox(bx, Tclass._module.Option(_module.Option$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Option(_module.Option$T)));

function _module.__default.NotSoDeep#requires(Seq) : bool;

// #requires axiom for _module.__default.NotSoDeep
axiom (forall x#0: Seq :: 
  { _module.__default.NotSoDeep#requires(x#0) } 
  $Is(x#0, TSeq(TChar)) ==> _module.__default.NotSoDeep#requires(x#0) == true);

procedure {:verboseName "NotSoDeep (well-formedness)"} CheckWellformed$$_module.__default.NotSoDeep(x#0: Seq where $Is(x#0, TSeq(TChar)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.WoahThat'sDeep
function _module.__default.WoahThat_ksDeep(o#0: DatatypeType, x#0: Seq) : DatatypeType
uses {
// consequence axiom for _module.__default.WoahThat_ksDeep
axiom 2 <= $FunctionContextHeight
   ==> (forall o#0: DatatypeType, x#0: Seq :: 
    { _module.__default.WoahThat_ksDeep(o#0, x#0) } 
    _module.__default.WoahThat_ksDeep#canCall(o#0, x#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(o#0, Tclass._module.Or())
           && $Is(x#0, TSeq(TChar)))
       ==> $Is(_module.__default.WoahThat_ksDeep(o#0, x#0), Tclass._module.Option(TSeq(TChar))));
// definition axiom for _module.__default.WoahThat_ksDeep (revealed)
axiom {:id "id126"} 2 <= $FunctionContextHeight
   ==> (forall o#0: DatatypeType, x#0: Seq :: 
    { _module.__default.WoahThat_ksDeep(o#0, x#0) } 
    _module.__default.WoahThat_ksDeep#canCall(o#0, x#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(o#0, Tclass._module.Or())
           && $Is(x#0, TSeq(TChar)))
       ==> (var valueOrError0#0 := (if _module.Or.A_q(o#0)
               then (var x1#2 := x#0; 
                (var x2#2 := x1#2; 
                  (var x3#2 := x2#2; 
                    (var x4#2 := x3#2; 
                      (var x5#2 := x4#2; 
                        (var x6#2 := x5#2; 
                          (var x7#2 := x6#2; 
                            (var x8#2 := x7#2; 
                              (var x9#2 := x8#2; (var x10#2 := x9#2; #_module.Option.Some($Box(x10#2))))))))))))
               else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(111))))))); 
          _module.Option.IsFailure#canCall(TSeq(TChar), valueOrError0#0)
             && (_module.Option.IsFailure(TSeq(TChar), valueOrError0#0)
               ==> _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#0))
             && (!_module.Option.IsFailure(TSeq(TChar), valueOrError0#0)
               ==> _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#0)))
         && _module.__default.WoahThat_ksDeep(o#0, x#0)
           == (var valueOrError0#0 := (if _module.Or.A_q(o#0)
                 then (var x1#0 := x#0; 
                  (var x2#0 := x1#0; 
                    (var x3#0 := x2#0; 
                      (var x4#0 := x3#0; 
                        (var x5#0 := x4#0; 
                          (var x6#0 := x5#0; 
                            (var x7#0 := x6#0; 
                              (var x8#0 := x7#0; 
                                (var x9#0 := x8#0; (var x10#0 := x9#0; #_module.Option.Some($Box(x10#0))))))))))))
                 else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                            $Box(char#FromInt(108))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(111))))))); 
            (if _module.Option.IsFailure(TSeq(TChar), valueOrError0#0)
               then _module.Option.PropagateFailure(TSeq(TChar), TSeq(TChar), valueOrError0#0)
               else (var r#0 := $Unbox(_module.Option.Extract(TSeq(TChar), valueOrError0#0)): Seq; 
                #_module.Option.Some($Box(r#0))))));
// definition axiom for _module.__default.WoahThat_ksDeep for all literals (revealed)
axiom {:id "id127"} 2 <= $FunctionContextHeight
   ==> (forall o#0: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.__default.WoahThat_ksDeep(Lit(o#0), Lit(x#0)) } 
    _module.__default.WoahThat_ksDeep#canCall(Lit(o#0), Lit(x#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(o#0, Tclass._module.Or())
           && $Is(x#0, TSeq(TChar)))
       ==> (var valueOrError0#1 := (if _module.Or.A_q(Lit(o#0))
               then (var x1#5 := Lit(x#0); 
                (var x2#5 := x1#5; 
                  (var x3#5 := x2#5; 
                    (var x4#5 := x3#5; 
                      (var x5#5 := x4#5; 
                        (var x6#5 := x5#5; 
                          (var x7#5 := x6#5; 
                            (var x8#5 := x7#5; 
                              (var x9#5 := x8#5; (var x10#5 := x9#5; Lit(#_module.Option.Some($Box(x10#5)))))))))))))
               else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(111))))))); 
          _module.Option.IsFailure#canCall(TSeq(TChar), valueOrError0#1)
             && (_module.Option.IsFailure(TSeq(TChar), valueOrError0#1)
               ==> _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#1))
             && (!_module.Option.IsFailure(TSeq(TChar), valueOrError0#1)
               ==> _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#1)))
         && _module.__default.WoahThat_ksDeep(Lit(o#0), Lit(x#0))
           == (var valueOrError0#1 := (if _module.Or.A_q(Lit(o#0))
                 then (var x1#3 := Lit(x#0); 
                  (var x2#3 := x1#3; 
                    (var x3#3 := x2#3; 
                      (var x4#3 := x3#3; 
                        (var x5#3 := x4#3; 
                          (var x6#3 := x5#3; 
                            (var x7#3 := x6#3; 
                              (var x8#3 := x7#3; 
                                (var x9#3 := x8#3; (var x10#3 := x9#3; Lit(#_module.Option.Some($Box(x10#3)))))))))))))
                 else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                            $Box(char#FromInt(108))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(111))))))); 
            (if _module.Option.IsFailure(TSeq(TChar), valueOrError0#1)
               then _module.Option.PropagateFailure(TSeq(TChar), TSeq(TChar), valueOrError0#1)
               else (var r#1 := $Unbox(_module.Option.Extract(TSeq(TChar), valueOrError0#1)): Seq; 
                #_module.Option.Some($Box(r#1))))));
}

function _module.__default.WoahThat_ksDeep#canCall(o#0: DatatypeType, x#0: Seq) : bool;

function _module.__default.WoahThat_ksDeep#requires(DatatypeType, Seq) : bool;

// #requires axiom for _module.__default.WoahThat_ksDeep
axiom (forall o#0: DatatypeType, x#0: Seq :: 
  { _module.__default.WoahThat_ksDeep#requires(o#0, x#0) } 
  $Is(o#0, Tclass._module.Or()) && $Is(x#0, TSeq(TChar))
     ==> _module.__default.WoahThat_ksDeep#requires(o#0, x#0) == true);

procedure {:verboseName "WoahThat'sDeep (well-formedness)"} CheckWellformed$$_module.__default.WoahThat_ksDeep(o#0: DatatypeType where $Is(o#0, Tclass._module.Or()), 
    x#0: Seq where $Is(x#0, TSeq(TChar)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WoahThat'sDeep (well-formedness)"} CheckWellformed$$_module.__default.WoahThat_ksDeep(o#0: DatatypeType, x#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var valueOrError0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x1#Z#0: Seq;
  var let#1#0#0: Seq;
  var x2#Z#0: Seq;
  var let#2#0#0: Seq;
  var x3#Z#0: Seq;
  var let#3#0#0: Seq;
  var x4#Z#0: Seq;
  var let#4#0#0: Seq;
  var x5#Z#0: Seq;
  var let#5#0#0: Seq;
  var x6#Z#0: Seq;
  var let#6#0#0: Seq;
  var x7#Z#0: Seq;
  var let#7#0#0: Seq;
  var x8#Z#0: Seq;
  var let#8#0#0: Seq;
  var x9#Z#0: Seq;
  var let#9#0#0: Seq;
  var x10#Z#0: Seq;
  var let#10#0#0: Seq;
  var r#Z#0: Seq;
  var let#11#0#0: Seq;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.WoahThat_ksDeep(o#0, x#0), Tclass._module.Option(TSeq(TChar)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc valueOrError0#Z#0;
        if (o#0 == #_module.Or.A())
        {
            havoc x1#Z#0;
            assume {:id "id129"} let#1#0#0 == x#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TSeq(TChar));
            assume {:id "id130"} x1#Z#0 == let#1#0#0;
            havoc x2#Z#0;
            assume {:id "id131"} let#2#0#0 == x1#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TSeq(TChar));
            assume {:id "id132"} x2#Z#0 == let#2#0#0;
            havoc x3#Z#0;
            assume {:id "id133"} let#3#0#0 == x2#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TSeq(TChar));
            assume {:id "id134"} x3#Z#0 == let#3#0#0;
            havoc x4#Z#0;
            assume {:id "id135"} let#4#0#0 == x3#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, TSeq(TChar));
            assume {:id "id136"} x4#Z#0 == let#4#0#0;
            havoc x5#Z#0;
            assume {:id "id137"} let#5#0#0 == x4#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#5#0#0, TSeq(TChar));
            assume {:id "id138"} x5#Z#0 == let#5#0#0;
            havoc x6#Z#0;
            assume {:id "id139"} let#6#0#0 == x5#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#6#0#0, TSeq(TChar));
            assume {:id "id140"} x6#Z#0 == let#6#0#0;
            havoc x7#Z#0;
            assume {:id "id141"} let#7#0#0 == x6#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#7#0#0, TSeq(TChar));
            assume {:id "id142"} x7#Z#0 == let#7#0#0;
            havoc x8#Z#0;
            assume {:id "id143"} let#8#0#0 == x7#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#8#0#0, TSeq(TChar));
            assume {:id "id144"} x8#Z#0 == let#8#0#0;
            havoc x9#Z#0;
            assume {:id "id145"} let#9#0#0 == x8#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#9#0#0, TSeq(TChar));
            assume {:id "id146"} x9#Z#0 == let#9#0#0;
            havoc x10#Z#0;
            assume {:id "id147"} let#10#0#0 == x9#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#10#0#0, TSeq(TChar));
            assume {:id "id148"} x10#Z#0 == let#10#0#0;
            assume {:id "id149"} let#0#0#0 == #_module.Option.Some($Box(x10#Z#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Option(TSeq(TChar)));
        }
        else if (o#0 == #_module.Or.B())
        {
            assume {:id "id128"} let#0#0#0
               == Lit(#_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                            $Box(char#FromInt(108))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(111)))))));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Option(TSeq(TChar)));
        }
        else
        {
            assume false;
        }

        assume {:id "id150"} valueOrError0#Z#0 == let#0#0#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError0#Z#0), Tclass._module.Option(TSeq(TChar)), $Heap);
        assume _module.Option.IsFailure#canCall(TSeq(TChar), valueOrError0#Z#0);
        if (_module.Option.IsFailure(TSeq(TChar), valueOrError0#Z#0))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(valueOrError0#Z#0), Tclass._module.Option(TSeq(TChar)), $Heap);
            assert {:id "id151"} {:subsumption 0} _module.Option.None_q(valueOrError0#Z#0);
            assume _module.Option.None_q(valueOrError0#Z#0);
            assume _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#Z#0);
            assume {:id "id152"} _module.__default.WoahThat_ksDeep(o#0, x#0)
               == _module.Option.PropagateFailure(TSeq(TChar), TSeq(TChar), valueOrError0#Z#0);
            assume _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.WoahThat_ksDeep(o#0, x#0), Tclass._module.Option(TSeq(TChar)));
            return;
        }
        else
        {
            havoc r#Z#0;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(valueOrError0#Z#0), Tclass._module.Option(TSeq(TChar)), $Heap);
            assert {:id "id153"} {:subsumption 0} _module.Option.Some_q(valueOrError0#Z#0);
            assume _module.Option.Some_q(valueOrError0#Z#0);
            assume _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#Z#0);
            assume {:id "id154"} let#11#0#0
               == $Unbox(_module.Option.Extract(TSeq(TChar), valueOrError0#Z#0)): Seq;
            assume _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#11#0#0, TSeq(TChar));
            assume {:id "id155"} r#Z#0 == let#11#0#0;
            assume {:id "id156"} _module.__default.WoahThat_ksDeep(o#0, x#0) == #_module.Option.Some($Box(r#Z#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.WoahThat_ksDeep(o#0, x#0), Tclass._module.Option(TSeq(TChar)));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.WoahThat'sDeepToo
function _module.__default.WoahThat_ksDeepToo(ab#0: DatatypeType, x#0: Seq) : DatatypeType
uses {
// consequence axiom for _module.__default.WoahThat_ksDeepToo
axiom 2 <= $FunctionContextHeight
   ==> (forall ab#0: DatatypeType, x#0: Seq :: 
    { _module.__default.WoahThat_ksDeepToo(ab#0, x#0) } 
    _module.__default.WoahThat_ksDeepToo#canCall(ab#0, x#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(ab#0, Tclass._module.AB())
           && $Is(x#0, TSeq(TChar)))
       ==> $Is(_module.__default.WoahThat_ksDeepToo(ab#0, x#0), 
        Tclass._module.Option(TSeq(TChar))));
// definition axiom for _module.__default.WoahThat_ksDeepToo (revealed)
axiom {:id "id157"} 2 <= $FunctionContextHeight
   ==> (forall ab#0: DatatypeType, x#0: Seq :: 
    { _module.__default.WoahThat_ksDeepToo(ab#0, x#0) } 
    _module.__default.WoahThat_ksDeepToo#canCall(ab#0, x#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(ab#0, Tclass._module.AB())
           && $Is(x#0, TSeq(TChar)))
       ==> (var valueOrError0#0 := (if _module.AB.AA_q(ab#0)
               then (var x10#2 := _module.AB.x10(ab#0); 
                (var x9#2 := _module.AB.x9(ab#0); 
                  (var x8#2 := _module.AB.x8(ab#0); 
                    (var x7#2 := _module.AB.x7(ab#0); 
                      (var x6#2 := _module.AB.x6(ab#0); 
                        (var x5#2 := _module.AB.x5(ab#0); 
                          (var x4#2 := _module.AB.x4(ab#0); 
                            (var x3#2 := _module.AB.x3(ab#0); 
                              (var x2#2 := _module.AB.x2(ab#0); 
                                (var x1#2 := _module.AB.x1(ab#0); #_module.Option.Some($Box(x10#2))))))))))))
               else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(111))))))); 
          _module.Option.IsFailure#canCall(TSeq(TChar), valueOrError0#0)
             && (_module.Option.IsFailure(TSeq(TChar), valueOrError0#0)
               ==> _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#0))
             && (!_module.Option.IsFailure(TSeq(TChar), valueOrError0#0)
               ==> _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#0)))
         && _module.__default.WoahThat_ksDeepToo(ab#0, x#0)
           == (var valueOrError0#0 := (if _module.AB.AA_q(ab#0)
                 then (var x10#0 := _module.AB.x10(ab#0); 
                  (var x9#0 := _module.AB.x9(ab#0); 
                    (var x8#0 := _module.AB.x8(ab#0); 
                      (var x7#0 := _module.AB.x7(ab#0); 
                        (var x6#0 := _module.AB.x6(ab#0); 
                          (var x5#0 := _module.AB.x5(ab#0); 
                            (var x4#0 := _module.AB.x4(ab#0); 
                              (var x3#0 := _module.AB.x3(ab#0); 
                                (var x2#0 := _module.AB.x2(ab#0); 
                                  (var x1#0 := _module.AB.x1(ab#0); #_module.Option.Some($Box(x10#0))))))))))))
                 else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                            $Box(char#FromInt(108))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(111))))))); 
            (if _module.Option.IsFailure(TSeq(TChar), valueOrError0#0)
               then _module.Option.PropagateFailure(TSeq(TChar), TSeq(TChar), valueOrError0#0)
               else (var r#0 := $Unbox(_module.Option.Extract(TSeq(TChar), valueOrError0#0)): Seq; 
                #_module.Option.Some($Box(r#0))))));
// definition axiom for _module.__default.WoahThat_ksDeepToo for all literals (revealed)
axiom {:id "id158"} 2 <= $FunctionContextHeight
   ==> (forall ab#0: DatatypeType, x#0: Seq :: 
    {:weight 3} { _module.__default.WoahThat_ksDeepToo(Lit(ab#0), Lit(x#0)) } 
    _module.__default.WoahThat_ksDeepToo#canCall(Lit(ab#0), Lit(x#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(ab#0, Tclass._module.AB())
           && $Is(x#0, TSeq(TChar)))
       ==> (var valueOrError0#1 := (if _module.AB.AA_q(Lit(ab#0))
               then (var x10#5 := Lit(_module.AB.x10(Lit(ab#0))); 
                (var x9#5 := Lit(_module.AB.x9(Lit(ab#0))); 
                  (var x8#5 := Lit(_module.AB.x8(Lit(ab#0))); 
                    (var x7#5 := Lit(_module.AB.x7(Lit(ab#0))); 
                      (var x6#5 := Lit(_module.AB.x6(Lit(ab#0))); 
                        (var x5#5 := Lit(_module.AB.x5(Lit(ab#0))); 
                          (var x4#5 := Lit(_module.AB.x4(Lit(ab#0))); 
                            (var x3#5 := Lit(_module.AB.x3(Lit(ab#0))); 
                              (var x2#5 := Lit(_module.AB.x2(Lit(ab#0))); 
                                (var x1#5 := Lit(_module.AB.x1(Lit(ab#0))); 
                                  Lit(#_module.Option.Some($Box(x10#5)))))))))))))
               else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(108))), 
                      $Box(char#FromInt(111))))))); 
          _module.Option.IsFailure#canCall(TSeq(TChar), valueOrError0#1)
             && (_module.Option.IsFailure(TSeq(TChar), valueOrError0#1)
               ==> _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#1))
             && (!_module.Option.IsFailure(TSeq(TChar), valueOrError0#1)
               ==> _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#1)))
         && _module.__default.WoahThat_ksDeepToo(Lit(ab#0), Lit(x#0))
           == (var valueOrError0#1 := (if _module.AB.AA_q(Lit(ab#0))
                 then (var x10#3 := Lit(_module.AB.x10(Lit(ab#0))); 
                  (var x9#3 := Lit(_module.AB.x9(Lit(ab#0))); 
                    (var x8#3 := Lit(_module.AB.x8(Lit(ab#0))); 
                      (var x7#3 := Lit(_module.AB.x7(Lit(ab#0))); 
                        (var x6#3 := Lit(_module.AB.x6(Lit(ab#0))); 
                          (var x5#3 := Lit(_module.AB.x5(Lit(ab#0))); 
                            (var x4#3 := Lit(_module.AB.x4(Lit(ab#0))); 
                              (var x3#3 := Lit(_module.AB.x3(Lit(ab#0))); 
                                (var x2#3 := Lit(_module.AB.x2(Lit(ab#0))); 
                                  (var x1#3 := Lit(_module.AB.x1(Lit(ab#0))); 
                                    Lit(#_module.Option.Some($Box(x10#3)))))))))))))
                 else #_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                            $Box(char#FromInt(108))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(111))))))); 
            (if _module.Option.IsFailure(TSeq(TChar), valueOrError0#1)
               then _module.Option.PropagateFailure(TSeq(TChar), TSeq(TChar), valueOrError0#1)
               else (var r#1 := $Unbox(_module.Option.Extract(TSeq(TChar), valueOrError0#1)): Seq; 
                #_module.Option.Some($Box(r#1))))));
}

function _module.__default.WoahThat_ksDeepToo#canCall(ab#0: DatatypeType, x#0: Seq) : bool;

function _module.__default.WoahThat_ksDeepToo#requires(DatatypeType, Seq) : bool;

// #requires axiom for _module.__default.WoahThat_ksDeepToo
axiom (forall ab#0: DatatypeType, x#0: Seq :: 
  { _module.__default.WoahThat_ksDeepToo#requires(ab#0, x#0) } 
  $Is(ab#0, Tclass._module.AB()) && $Is(x#0, TSeq(TChar))
     ==> _module.__default.WoahThat_ksDeepToo#requires(ab#0, x#0) == true);

procedure {:verboseName "WoahThat'sDeepToo (well-formedness)"} CheckWellformed$$_module.__default.WoahThat_ksDeepToo(ab#0: DatatypeType where $Is(ab#0, Tclass._module.AB()), 
    x#0: Seq where $Is(x#0, TSeq(TChar)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WoahThat'sDeepToo (well-formedness)"} CheckWellformed$$_module.__default.WoahThat_ksDeepToo(ab#0: DatatypeType, x#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var valueOrError0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var _mcc#0#0: Seq;
  var _mcc#1#0: Seq;
  var _mcc#2#0: Seq;
  var _mcc#3#0: Seq;
  var _mcc#4#0: Seq;
  var _mcc#5#0: Seq;
  var _mcc#6#0: Seq;
  var _mcc#7#0: Seq;
  var _mcc#8#0: Seq;
  var _mcc#9#0: Seq;
  var x10#Z#0: Seq;
  var let#1#0#0: Seq;
  var x9#Z#0: Seq;
  var let#2#0#0: Seq;
  var x8#Z#0: Seq;
  var let#3#0#0: Seq;
  var x7#Z#0: Seq;
  var let#4#0#0: Seq;
  var x6#Z#0: Seq;
  var let#5#0#0: Seq;
  var x5#Z#0: Seq;
  var let#6#0#0: Seq;
  var x4#Z#0: Seq;
  var let#7#0#0: Seq;
  var x3#Z#0: Seq;
  var let#8#0#0: Seq;
  var x2#Z#0: Seq;
  var let#9#0#0: Seq;
  var x1#Z#0: Seq;
  var let#10#0#0: Seq;
  var r#Z#0: Seq;
  var let#11#0#0: Seq;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.WoahThat_ksDeepToo(ab#0, x#0), 
          Tclass._module.Option(TSeq(TChar)));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc valueOrError0#Z#0;
        if (ab#0
           == #_module.AB.AA(_mcc#0#0, 
            _mcc#1#0, 
            _mcc#2#0, 
            _mcc#3#0, 
            _mcc#4#0, 
            _mcc#5#0, 
            _mcc#6#0, 
            _mcc#7#0, 
            _mcc#8#0, 
            _mcc#9#0))
        {
            assume $Is(_mcc#0#0, TSeq(TChar));
            assume $Is(_mcc#1#0, TSeq(TChar));
            assume $Is(_mcc#2#0, TSeq(TChar));
            assume $Is(_mcc#3#0, TSeq(TChar));
            assume $Is(_mcc#4#0, TSeq(TChar));
            assume $Is(_mcc#5#0, TSeq(TChar));
            assume $Is(_mcc#6#0, TSeq(TChar));
            assume $Is(_mcc#7#0, TSeq(TChar));
            assume $Is(_mcc#8#0, TSeq(TChar));
            assume $Is(_mcc#9#0, TSeq(TChar));
            havoc x10#Z#0;
            assume {:id "id160"} let#1#0#0 == _mcc#9#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TSeq(TChar));
            assume {:id "id161"} x10#Z#0 == let#1#0#0;
            havoc x9#Z#0;
            assume {:id "id162"} let#2#0#0 == _mcc#8#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TSeq(TChar));
            assume {:id "id163"} x9#Z#0 == let#2#0#0;
            havoc x8#Z#0;
            assume {:id "id164"} let#3#0#0 == _mcc#7#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TSeq(TChar));
            assume {:id "id165"} x8#Z#0 == let#3#0#0;
            havoc x7#Z#0;
            assume {:id "id166"} let#4#0#0 == _mcc#6#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, TSeq(TChar));
            assume {:id "id167"} x7#Z#0 == let#4#0#0;
            havoc x6#Z#0;
            assume {:id "id168"} let#5#0#0 == _mcc#5#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#5#0#0, TSeq(TChar));
            assume {:id "id169"} x6#Z#0 == let#5#0#0;
            havoc x5#Z#0;
            assume {:id "id170"} let#6#0#0 == _mcc#4#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#6#0#0, TSeq(TChar));
            assume {:id "id171"} x5#Z#0 == let#6#0#0;
            havoc x4#Z#0;
            assume {:id "id172"} let#7#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#7#0#0, TSeq(TChar));
            assume {:id "id173"} x4#Z#0 == let#7#0#0;
            havoc x3#Z#0;
            assume {:id "id174"} let#8#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#8#0#0, TSeq(TChar));
            assume {:id "id175"} x3#Z#0 == let#8#0#0;
            havoc x2#Z#0;
            assume {:id "id176"} let#9#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#9#0#0, TSeq(TChar));
            assume {:id "id177"} x2#Z#0 == let#9#0#0;
            havoc x1#Z#0;
            assume {:id "id178"} let#10#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#10#0#0, TSeq(TChar));
            assume {:id "id179"} x1#Z#0 == let#10#0#0;
            assume {:id "id180"} let#0#0#0 == #_module.Option.Some($Box(x10#Z#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Option(TSeq(TChar)));
        }
        else if (ab#0 == #_module.AB.BB())
        {
            assume {:id "id159"} let#0#0#0
               == Lit(#_module.Option.Some($Box(Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                            $Box(char#FromInt(108))), 
                          $Box(char#FromInt(108))), 
                        $Box(char#FromInt(111)))))));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Option(TSeq(TChar)));
        }
        else
        {
            assume false;
        }

        assume {:id "id181"} valueOrError0#Z#0 == let#0#0#0;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(valueOrError0#Z#0), Tclass._module.Option(TSeq(TChar)), $Heap);
        assume _module.Option.IsFailure#canCall(TSeq(TChar), valueOrError0#Z#0);
        if (_module.Option.IsFailure(TSeq(TChar), valueOrError0#Z#0))
        {
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(valueOrError0#Z#0), Tclass._module.Option(TSeq(TChar)), $Heap);
            assert {:id "id182"} {:subsumption 0} _module.Option.None_q(valueOrError0#Z#0);
            assume _module.Option.None_q(valueOrError0#Z#0);
            assume _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#Z#0);
            assume {:id "id183"} _module.__default.WoahThat_ksDeepToo(ab#0, x#0)
               == _module.Option.PropagateFailure(TSeq(TChar), TSeq(TChar), valueOrError0#Z#0);
            assume _module.Option.PropagateFailure#canCall(TSeq(TChar), TSeq(TChar), valueOrError0#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.WoahThat_ksDeepToo(ab#0, x#0), 
              Tclass._module.Option(TSeq(TChar)));
            return;
        }
        else
        {
            havoc r#Z#0;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(valueOrError0#Z#0), Tclass._module.Option(TSeq(TChar)), $Heap);
            assert {:id "id184"} {:subsumption 0} _module.Option.Some_q(valueOrError0#Z#0);
            assume _module.Option.Some_q(valueOrError0#Z#0);
            assume _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#Z#0);
            assume {:id "id185"} let#11#0#0
               == $Unbox(_module.Option.Extract(TSeq(TChar), valueOrError0#Z#0)): Seq;
            assume _module.Option.Extract#canCall(TSeq(TChar), valueOrError0#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#11#0#0, TSeq(TChar));
            assume {:id "id186"} r#Z#0 == let#11#0#0;
            assume {:id "id187"} _module.__default.WoahThat_ksDeepToo(ab#0, x#0)
               == #_module.Option.Some($Box(r#Z#0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.WoahThat_ksDeepToo(ab#0, x#0), 
              Tclass._module.Option(TSeq(TChar)));
            return;
        }

        assume false;
    }
}



procedure {:verboseName "DeepAssignment (well-formedness)"} CheckWellFormed$$_module.__default.DeepAssignment(x#0: int) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DeepAssignment (call)"} Call$$_module.__default.DeepAssignment(x#0: int) returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DeepAssignment (correctness)"} Impl$$_module.__default.DeepAssignment(x#0: int) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #_module.Or.A() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Or.A()) == ##_module.Or.A;
// Constructor $Is
axiom $Is(#_module.Or.A(), Tclass._module.Or());
// Constructor literal
axiom #_module.Or.A() == Lit(#_module.Or.A());
}

const unique ##_module.Or.A: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Or.A()) == ##_module.Or.A;
}

function _module.Or.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Or.A_q(d) } 
  _module.Or.A_q(d) <==> DatatypeCtorId(d) == ##_module.Or.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Or.A_q(d) } 
  _module.Or.A_q(d) ==> d == #_module.Or.A());

// Constructor function declaration
function #_module.Or.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Or.B()) == ##_module.Or.B;
// Constructor $Is
axiom $Is(#_module.Or.B(), Tclass._module.Or());
// Constructor literal
axiom #_module.Or.B() == Lit(#_module.Or.B());
}

const unique ##_module.Or.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Or.B()) == ##_module.Or.B;
}

function _module.Or.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Or.B_q(d) } 
  _module.Or.B_q(d) <==> DatatypeCtorId(d) == ##_module.Or.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Or.B_q(d) } 
  _module.Or.B_q(d) ==> d == #_module.Or.B());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Or(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Or())
     ==> $IsAlloc(d, Tclass._module.Or(), $h));

// Depth-one case-split function
function $IsA#_module.Or(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Or(d) } 
  $IsA#_module.Or(d) ==> _module.Or.A_q(d) || _module.Or.B_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Or.B_q(d), $Is(d, Tclass._module.Or()) } 
    { _module.Or.A_q(d), $Is(d, Tclass._module.Or()) } 
  $Is(d, Tclass._module.Or()) ==> _module.Or.A_q(d) || _module.Or.B_q(d));

// Datatype extensional equality declaration
function _module.Or#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Or.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Or#Equal(a, b), _module.Or.A_q(a) } 
    { _module.Or#Equal(a, b), _module.Or.A_q(b) } 
  _module.Or.A_q(a) && _module.Or.A_q(b) ==> _module.Or#Equal(a, b));

// Datatype extensional equality definition: #_module.Or.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Or#Equal(a, b), _module.Or.B_q(a) } 
    { _module.Or#Equal(a, b), _module.Or.B_q(b) } 
  _module.Or.B_q(a) && _module.Or.B_q(b) ==> _module.Or#Equal(a, b));

// Datatype extensionality axiom: _module.Or
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Or#Equal(a, b) } 
  _module.Or#Equal(a, b) <==> a == b);

const unique class._module.Or: ClassName;

// Constructor function declaration
function #_module.AB.AA(Seq, Seq, Seq, Seq, Seq, Seq, Seq, Seq, Seq, Seq) : DatatypeType;

const unique ##_module.AB.AA: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: Seq, 
    a#8#1#0: Seq, 
    a#8#2#0: Seq, 
    a#8#3#0: Seq, 
    a#8#4#0: Seq, 
    a#8#5#0: Seq, 
    a#8#6#0: Seq, 
    a#8#7#0: Seq, 
    a#8#8#0: Seq, 
    a#8#9#0: Seq :: 
  { #_module.AB.AA(a#8#0#0, 
      a#8#1#0, 
      a#8#2#0, 
      a#8#3#0, 
      a#8#4#0, 
      a#8#5#0, 
      a#8#6#0, 
      a#8#7#0, 
      a#8#8#0, 
      a#8#9#0) } 
  DatatypeCtorId(#_module.AB.AA(a#8#0#0, 
        a#8#1#0, 
        a#8#2#0, 
        a#8#3#0, 
        a#8#4#0, 
        a#8#5#0, 
        a#8#6#0, 
        a#8#7#0, 
        a#8#8#0, 
        a#8#9#0))
     == ##_module.AB.AA);
}

function _module.AB.AA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.AB.AA_q(d) } 
  _module.AB.AA_q(d) <==> DatatypeCtorId(d) == ##_module.AB.AA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.AB.AA_q(d) } 
  _module.AB.AA_q(d)
     ==> (exists a#9#0#0: Seq, 
        a#9#1#0: Seq, 
        a#9#2#0: Seq, 
        a#9#3#0: Seq, 
        a#9#4#0: Seq, 
        a#9#5#0: Seq, 
        a#9#6#0: Seq, 
        a#9#7#0: Seq, 
        a#9#8#0: Seq, 
        a#9#9#0: Seq :: 
      d
         == #_module.AB.AA(a#9#0#0, 
          a#9#1#0, 
          a#9#2#0, 
          a#9#3#0, 
          a#9#4#0, 
          a#9#5#0, 
          a#9#6#0, 
          a#9#7#0, 
          a#9#8#0, 
          a#9#9#0)));

// Constructor $Is
axiom (forall a#10#0#0: Seq, 
    a#10#1#0: Seq, 
    a#10#2#0: Seq, 
    a#10#3#0: Seq, 
    a#10#4#0: Seq, 
    a#10#5#0: Seq, 
    a#10#6#0: Seq, 
    a#10#7#0: Seq, 
    a#10#8#0: Seq, 
    a#10#9#0: Seq :: 
  { $Is(#_module.AB.AA(a#10#0#0, 
        a#10#1#0, 
        a#10#2#0, 
        a#10#3#0, 
        a#10#4#0, 
        a#10#5#0, 
        a#10#6#0, 
        a#10#7#0, 
        a#10#8#0, 
        a#10#9#0), 
      Tclass._module.AB()) } 
  $Is(#_module.AB.AA(a#10#0#0, 
        a#10#1#0, 
        a#10#2#0, 
        a#10#3#0, 
        a#10#4#0, 
        a#10#5#0, 
        a#10#6#0, 
        a#10#7#0, 
        a#10#8#0, 
        a#10#9#0), 
      Tclass._module.AB())
     <==> $Is(a#10#0#0, TSeq(TChar))
       && $Is(a#10#1#0, TSeq(TChar))
       && $Is(a#10#2#0, TSeq(TChar))
       && $Is(a#10#3#0, TSeq(TChar))
       && $Is(a#10#4#0, TSeq(TChar))
       && $Is(a#10#5#0, TSeq(TChar))
       && $Is(a#10#6#0, TSeq(TChar))
       && $Is(a#10#7#0, TSeq(TChar))
       && $Is(a#10#8#0, TSeq(TChar))
       && $Is(a#10#9#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x1(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x1(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x2(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x2(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x3(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x3(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x4(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x4(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x5(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x5(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x6(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x6(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x7(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x7(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x8(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x8(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x9(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x9(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.AB.x10(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h) && _module.AB.AA_q(d) && $IsAlloc(d, Tclass._module.AB(), $h)
     ==> $IsAlloc(_module.AB.x10(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#11#0#0: Seq, 
    a#11#1#0: Seq, 
    a#11#2#0: Seq, 
    a#11#3#0: Seq, 
    a#11#4#0: Seq, 
    a#11#5#0: Seq, 
    a#11#6#0: Seq, 
    a#11#7#0: Seq, 
    a#11#8#0: Seq, 
    a#11#9#0: Seq :: 
  { #_module.AB.AA(Lit(a#11#0#0), 
      Lit(a#11#1#0), 
      Lit(a#11#2#0), 
      Lit(a#11#3#0), 
      Lit(a#11#4#0), 
      Lit(a#11#5#0), 
      Lit(a#11#6#0), 
      Lit(a#11#7#0), 
      Lit(a#11#8#0), 
      Lit(a#11#9#0)) } 
  #_module.AB.AA(Lit(a#11#0#0), 
      Lit(a#11#1#0), 
      Lit(a#11#2#0), 
      Lit(a#11#3#0), 
      Lit(a#11#4#0), 
      Lit(a#11#5#0), 
      Lit(a#11#6#0), 
      Lit(a#11#7#0), 
      Lit(a#11#8#0), 
      Lit(a#11#9#0))
     == Lit(#_module.AB.AA(a#11#0#0, 
        a#11#1#0, 
        a#11#2#0, 
        a#11#3#0, 
        a#11#4#0, 
        a#11#5#0, 
        a#11#6#0, 
        a#11#7#0, 
        a#11#8#0, 
        a#11#9#0)));

function _module.AB.x1(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#12#0#0: Seq, 
    a#12#1#0: Seq, 
    a#12#2#0: Seq, 
    a#12#3#0: Seq, 
    a#12#4#0: Seq, 
    a#12#5#0: Seq, 
    a#12#6#0: Seq, 
    a#12#7#0: Seq, 
    a#12#8#0: Seq, 
    a#12#9#0: Seq :: 
  { #_module.AB.AA(a#12#0#0, 
      a#12#1#0, 
      a#12#2#0, 
      a#12#3#0, 
      a#12#4#0, 
      a#12#5#0, 
      a#12#6#0, 
      a#12#7#0, 
      a#12#8#0, 
      a#12#9#0) } 
  _module.AB.x1(#_module.AB.AA(a#12#0#0, 
        a#12#1#0, 
        a#12#2#0, 
        a#12#3#0, 
        a#12#4#0, 
        a#12#5#0, 
        a#12#6#0, 
        a#12#7#0, 
        a#12#8#0, 
        a#12#9#0))
     == a#12#0#0);

// Inductive seq element rank
axiom (forall a#13#0#0: Seq, 
    a#13#1#0: Seq, 
    a#13#2#0: Seq, 
    a#13#3#0: Seq, 
    a#13#4#0: Seq, 
    a#13#5#0: Seq, 
    a#13#6#0: Seq, 
    a#13#7#0: Seq, 
    a#13#8#0: Seq, 
    a#13#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#13#0#0, i), #_module.AB.AA(a#13#0#0, 
      a#13#1#0, 
      a#13#2#0, 
      a#13#3#0, 
      a#13#4#0, 
      a#13#5#0, 
      a#13#6#0, 
      a#13#7#0, 
      a#13#8#0, 
      a#13#9#0) } 
  0 <= i && i < Seq#Length(a#13#0#0)
     ==> DtRank($Unbox(Seq#Index(a#13#0#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#13#0#0, 
          a#13#1#0, 
          a#13#2#0, 
          a#13#3#0, 
          a#13#4#0, 
          a#13#5#0, 
          a#13#6#0, 
          a#13#7#0, 
          a#13#8#0, 
          a#13#9#0)));

// Inductive seq rank
axiom (forall a#14#0#0: Seq, 
    a#14#1#0: Seq, 
    a#14#2#0: Seq, 
    a#14#3#0: Seq, 
    a#14#4#0: Seq, 
    a#14#5#0: Seq, 
    a#14#6#0: Seq, 
    a#14#7#0: Seq, 
    a#14#8#0: Seq, 
    a#14#9#0: Seq :: 
  { #_module.AB.AA(a#14#0#0, 
      a#14#1#0, 
      a#14#2#0, 
      a#14#3#0, 
      a#14#4#0, 
      a#14#5#0, 
      a#14#6#0, 
      a#14#7#0, 
      a#14#8#0, 
      a#14#9#0) } 
  Seq#Rank(a#14#0#0)
     < DtRank(#_module.AB.AA(a#14#0#0, 
        a#14#1#0, 
        a#14#2#0, 
        a#14#3#0, 
        a#14#4#0, 
        a#14#5#0, 
        a#14#6#0, 
        a#14#7#0, 
        a#14#8#0, 
        a#14#9#0)));

function _module.AB.x2(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#15#0#0: Seq, 
    a#15#1#0: Seq, 
    a#15#2#0: Seq, 
    a#15#3#0: Seq, 
    a#15#4#0: Seq, 
    a#15#5#0: Seq, 
    a#15#6#0: Seq, 
    a#15#7#0: Seq, 
    a#15#8#0: Seq, 
    a#15#9#0: Seq :: 
  { #_module.AB.AA(a#15#0#0, 
      a#15#1#0, 
      a#15#2#0, 
      a#15#3#0, 
      a#15#4#0, 
      a#15#5#0, 
      a#15#6#0, 
      a#15#7#0, 
      a#15#8#0, 
      a#15#9#0) } 
  _module.AB.x2(#_module.AB.AA(a#15#0#0, 
        a#15#1#0, 
        a#15#2#0, 
        a#15#3#0, 
        a#15#4#0, 
        a#15#5#0, 
        a#15#6#0, 
        a#15#7#0, 
        a#15#8#0, 
        a#15#9#0))
     == a#15#1#0);

// Inductive seq element rank
axiom (forall a#16#0#0: Seq, 
    a#16#1#0: Seq, 
    a#16#2#0: Seq, 
    a#16#3#0: Seq, 
    a#16#4#0: Seq, 
    a#16#5#0: Seq, 
    a#16#6#0: Seq, 
    a#16#7#0: Seq, 
    a#16#8#0: Seq, 
    a#16#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#16#1#0, i), #_module.AB.AA(a#16#0#0, 
      a#16#1#0, 
      a#16#2#0, 
      a#16#3#0, 
      a#16#4#0, 
      a#16#5#0, 
      a#16#6#0, 
      a#16#7#0, 
      a#16#8#0, 
      a#16#9#0) } 
  0 <= i && i < Seq#Length(a#16#1#0)
     ==> DtRank($Unbox(Seq#Index(a#16#1#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#16#0#0, 
          a#16#1#0, 
          a#16#2#0, 
          a#16#3#0, 
          a#16#4#0, 
          a#16#5#0, 
          a#16#6#0, 
          a#16#7#0, 
          a#16#8#0, 
          a#16#9#0)));

// Inductive seq rank
axiom (forall a#17#0#0: Seq, 
    a#17#1#0: Seq, 
    a#17#2#0: Seq, 
    a#17#3#0: Seq, 
    a#17#4#0: Seq, 
    a#17#5#0: Seq, 
    a#17#6#0: Seq, 
    a#17#7#0: Seq, 
    a#17#8#0: Seq, 
    a#17#9#0: Seq :: 
  { #_module.AB.AA(a#17#0#0, 
      a#17#1#0, 
      a#17#2#0, 
      a#17#3#0, 
      a#17#4#0, 
      a#17#5#0, 
      a#17#6#0, 
      a#17#7#0, 
      a#17#8#0, 
      a#17#9#0) } 
  Seq#Rank(a#17#1#0)
     < DtRank(#_module.AB.AA(a#17#0#0, 
        a#17#1#0, 
        a#17#2#0, 
        a#17#3#0, 
        a#17#4#0, 
        a#17#5#0, 
        a#17#6#0, 
        a#17#7#0, 
        a#17#8#0, 
        a#17#9#0)));

function _module.AB.x3(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#18#0#0: Seq, 
    a#18#1#0: Seq, 
    a#18#2#0: Seq, 
    a#18#3#0: Seq, 
    a#18#4#0: Seq, 
    a#18#5#0: Seq, 
    a#18#6#0: Seq, 
    a#18#7#0: Seq, 
    a#18#8#0: Seq, 
    a#18#9#0: Seq :: 
  { #_module.AB.AA(a#18#0#0, 
      a#18#1#0, 
      a#18#2#0, 
      a#18#3#0, 
      a#18#4#0, 
      a#18#5#0, 
      a#18#6#0, 
      a#18#7#0, 
      a#18#8#0, 
      a#18#9#0) } 
  _module.AB.x3(#_module.AB.AA(a#18#0#0, 
        a#18#1#0, 
        a#18#2#0, 
        a#18#3#0, 
        a#18#4#0, 
        a#18#5#0, 
        a#18#6#0, 
        a#18#7#0, 
        a#18#8#0, 
        a#18#9#0))
     == a#18#2#0);

// Inductive seq element rank
axiom (forall a#19#0#0: Seq, 
    a#19#1#0: Seq, 
    a#19#2#0: Seq, 
    a#19#3#0: Seq, 
    a#19#4#0: Seq, 
    a#19#5#0: Seq, 
    a#19#6#0: Seq, 
    a#19#7#0: Seq, 
    a#19#8#0: Seq, 
    a#19#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#19#2#0, i), #_module.AB.AA(a#19#0#0, 
      a#19#1#0, 
      a#19#2#0, 
      a#19#3#0, 
      a#19#4#0, 
      a#19#5#0, 
      a#19#6#0, 
      a#19#7#0, 
      a#19#8#0, 
      a#19#9#0) } 
  0 <= i && i < Seq#Length(a#19#2#0)
     ==> DtRank($Unbox(Seq#Index(a#19#2#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#19#0#0, 
          a#19#1#0, 
          a#19#2#0, 
          a#19#3#0, 
          a#19#4#0, 
          a#19#5#0, 
          a#19#6#0, 
          a#19#7#0, 
          a#19#8#0, 
          a#19#9#0)));

// Inductive seq rank
axiom (forall a#20#0#0: Seq, 
    a#20#1#0: Seq, 
    a#20#2#0: Seq, 
    a#20#3#0: Seq, 
    a#20#4#0: Seq, 
    a#20#5#0: Seq, 
    a#20#6#0: Seq, 
    a#20#7#0: Seq, 
    a#20#8#0: Seq, 
    a#20#9#0: Seq :: 
  { #_module.AB.AA(a#20#0#0, 
      a#20#1#0, 
      a#20#2#0, 
      a#20#3#0, 
      a#20#4#0, 
      a#20#5#0, 
      a#20#6#0, 
      a#20#7#0, 
      a#20#8#0, 
      a#20#9#0) } 
  Seq#Rank(a#20#2#0)
     < DtRank(#_module.AB.AA(a#20#0#0, 
        a#20#1#0, 
        a#20#2#0, 
        a#20#3#0, 
        a#20#4#0, 
        a#20#5#0, 
        a#20#6#0, 
        a#20#7#0, 
        a#20#8#0, 
        a#20#9#0)));

function _module.AB.x4(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#21#0#0: Seq, 
    a#21#1#0: Seq, 
    a#21#2#0: Seq, 
    a#21#3#0: Seq, 
    a#21#4#0: Seq, 
    a#21#5#0: Seq, 
    a#21#6#0: Seq, 
    a#21#7#0: Seq, 
    a#21#8#0: Seq, 
    a#21#9#0: Seq :: 
  { #_module.AB.AA(a#21#0#0, 
      a#21#1#0, 
      a#21#2#0, 
      a#21#3#0, 
      a#21#4#0, 
      a#21#5#0, 
      a#21#6#0, 
      a#21#7#0, 
      a#21#8#0, 
      a#21#9#0) } 
  _module.AB.x4(#_module.AB.AA(a#21#0#0, 
        a#21#1#0, 
        a#21#2#0, 
        a#21#3#0, 
        a#21#4#0, 
        a#21#5#0, 
        a#21#6#0, 
        a#21#7#0, 
        a#21#8#0, 
        a#21#9#0))
     == a#21#3#0);

// Inductive seq element rank
axiom (forall a#22#0#0: Seq, 
    a#22#1#0: Seq, 
    a#22#2#0: Seq, 
    a#22#3#0: Seq, 
    a#22#4#0: Seq, 
    a#22#5#0: Seq, 
    a#22#6#0: Seq, 
    a#22#7#0: Seq, 
    a#22#8#0: Seq, 
    a#22#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#22#3#0, i), #_module.AB.AA(a#22#0#0, 
      a#22#1#0, 
      a#22#2#0, 
      a#22#3#0, 
      a#22#4#0, 
      a#22#5#0, 
      a#22#6#0, 
      a#22#7#0, 
      a#22#8#0, 
      a#22#9#0) } 
  0 <= i && i < Seq#Length(a#22#3#0)
     ==> DtRank($Unbox(Seq#Index(a#22#3#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#22#0#0, 
          a#22#1#0, 
          a#22#2#0, 
          a#22#3#0, 
          a#22#4#0, 
          a#22#5#0, 
          a#22#6#0, 
          a#22#7#0, 
          a#22#8#0, 
          a#22#9#0)));

// Inductive seq rank
axiom (forall a#23#0#0: Seq, 
    a#23#1#0: Seq, 
    a#23#2#0: Seq, 
    a#23#3#0: Seq, 
    a#23#4#0: Seq, 
    a#23#5#0: Seq, 
    a#23#6#0: Seq, 
    a#23#7#0: Seq, 
    a#23#8#0: Seq, 
    a#23#9#0: Seq :: 
  { #_module.AB.AA(a#23#0#0, 
      a#23#1#0, 
      a#23#2#0, 
      a#23#3#0, 
      a#23#4#0, 
      a#23#5#0, 
      a#23#6#0, 
      a#23#7#0, 
      a#23#8#0, 
      a#23#9#0) } 
  Seq#Rank(a#23#3#0)
     < DtRank(#_module.AB.AA(a#23#0#0, 
        a#23#1#0, 
        a#23#2#0, 
        a#23#3#0, 
        a#23#4#0, 
        a#23#5#0, 
        a#23#6#0, 
        a#23#7#0, 
        a#23#8#0, 
        a#23#9#0)));

function _module.AB.x5(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#24#0#0: Seq, 
    a#24#1#0: Seq, 
    a#24#2#0: Seq, 
    a#24#3#0: Seq, 
    a#24#4#0: Seq, 
    a#24#5#0: Seq, 
    a#24#6#0: Seq, 
    a#24#7#0: Seq, 
    a#24#8#0: Seq, 
    a#24#9#0: Seq :: 
  { #_module.AB.AA(a#24#0#0, 
      a#24#1#0, 
      a#24#2#0, 
      a#24#3#0, 
      a#24#4#0, 
      a#24#5#0, 
      a#24#6#0, 
      a#24#7#0, 
      a#24#8#0, 
      a#24#9#0) } 
  _module.AB.x5(#_module.AB.AA(a#24#0#0, 
        a#24#1#0, 
        a#24#2#0, 
        a#24#3#0, 
        a#24#4#0, 
        a#24#5#0, 
        a#24#6#0, 
        a#24#7#0, 
        a#24#8#0, 
        a#24#9#0))
     == a#24#4#0);

// Inductive seq element rank
axiom (forall a#25#0#0: Seq, 
    a#25#1#0: Seq, 
    a#25#2#0: Seq, 
    a#25#3#0: Seq, 
    a#25#4#0: Seq, 
    a#25#5#0: Seq, 
    a#25#6#0: Seq, 
    a#25#7#0: Seq, 
    a#25#8#0: Seq, 
    a#25#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#25#4#0, i), #_module.AB.AA(a#25#0#0, 
      a#25#1#0, 
      a#25#2#0, 
      a#25#3#0, 
      a#25#4#0, 
      a#25#5#0, 
      a#25#6#0, 
      a#25#7#0, 
      a#25#8#0, 
      a#25#9#0) } 
  0 <= i && i < Seq#Length(a#25#4#0)
     ==> DtRank($Unbox(Seq#Index(a#25#4#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#25#0#0, 
          a#25#1#0, 
          a#25#2#0, 
          a#25#3#0, 
          a#25#4#0, 
          a#25#5#0, 
          a#25#6#0, 
          a#25#7#0, 
          a#25#8#0, 
          a#25#9#0)));

// Inductive seq rank
axiom (forall a#26#0#0: Seq, 
    a#26#1#0: Seq, 
    a#26#2#0: Seq, 
    a#26#3#0: Seq, 
    a#26#4#0: Seq, 
    a#26#5#0: Seq, 
    a#26#6#0: Seq, 
    a#26#7#0: Seq, 
    a#26#8#0: Seq, 
    a#26#9#0: Seq :: 
  { #_module.AB.AA(a#26#0#0, 
      a#26#1#0, 
      a#26#2#0, 
      a#26#3#0, 
      a#26#4#0, 
      a#26#5#0, 
      a#26#6#0, 
      a#26#7#0, 
      a#26#8#0, 
      a#26#9#0) } 
  Seq#Rank(a#26#4#0)
     < DtRank(#_module.AB.AA(a#26#0#0, 
        a#26#1#0, 
        a#26#2#0, 
        a#26#3#0, 
        a#26#4#0, 
        a#26#5#0, 
        a#26#6#0, 
        a#26#7#0, 
        a#26#8#0, 
        a#26#9#0)));

function _module.AB.x6(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#27#0#0: Seq, 
    a#27#1#0: Seq, 
    a#27#2#0: Seq, 
    a#27#3#0: Seq, 
    a#27#4#0: Seq, 
    a#27#5#0: Seq, 
    a#27#6#0: Seq, 
    a#27#7#0: Seq, 
    a#27#8#0: Seq, 
    a#27#9#0: Seq :: 
  { #_module.AB.AA(a#27#0#0, 
      a#27#1#0, 
      a#27#2#0, 
      a#27#3#0, 
      a#27#4#0, 
      a#27#5#0, 
      a#27#6#0, 
      a#27#7#0, 
      a#27#8#0, 
      a#27#9#0) } 
  _module.AB.x6(#_module.AB.AA(a#27#0#0, 
        a#27#1#0, 
        a#27#2#0, 
        a#27#3#0, 
        a#27#4#0, 
        a#27#5#0, 
        a#27#6#0, 
        a#27#7#0, 
        a#27#8#0, 
        a#27#9#0))
     == a#27#5#0);

// Inductive seq element rank
axiom (forall a#28#0#0: Seq, 
    a#28#1#0: Seq, 
    a#28#2#0: Seq, 
    a#28#3#0: Seq, 
    a#28#4#0: Seq, 
    a#28#5#0: Seq, 
    a#28#6#0: Seq, 
    a#28#7#0: Seq, 
    a#28#8#0: Seq, 
    a#28#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#28#5#0, i), #_module.AB.AA(a#28#0#0, 
      a#28#1#0, 
      a#28#2#0, 
      a#28#3#0, 
      a#28#4#0, 
      a#28#5#0, 
      a#28#6#0, 
      a#28#7#0, 
      a#28#8#0, 
      a#28#9#0) } 
  0 <= i && i < Seq#Length(a#28#5#0)
     ==> DtRank($Unbox(Seq#Index(a#28#5#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#28#0#0, 
          a#28#1#0, 
          a#28#2#0, 
          a#28#3#0, 
          a#28#4#0, 
          a#28#5#0, 
          a#28#6#0, 
          a#28#7#0, 
          a#28#8#0, 
          a#28#9#0)));

// Inductive seq rank
axiom (forall a#29#0#0: Seq, 
    a#29#1#0: Seq, 
    a#29#2#0: Seq, 
    a#29#3#0: Seq, 
    a#29#4#0: Seq, 
    a#29#5#0: Seq, 
    a#29#6#0: Seq, 
    a#29#7#0: Seq, 
    a#29#8#0: Seq, 
    a#29#9#0: Seq :: 
  { #_module.AB.AA(a#29#0#0, 
      a#29#1#0, 
      a#29#2#0, 
      a#29#3#0, 
      a#29#4#0, 
      a#29#5#0, 
      a#29#6#0, 
      a#29#7#0, 
      a#29#8#0, 
      a#29#9#0) } 
  Seq#Rank(a#29#5#0)
     < DtRank(#_module.AB.AA(a#29#0#0, 
        a#29#1#0, 
        a#29#2#0, 
        a#29#3#0, 
        a#29#4#0, 
        a#29#5#0, 
        a#29#6#0, 
        a#29#7#0, 
        a#29#8#0, 
        a#29#9#0)));

function _module.AB.x7(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#30#0#0: Seq, 
    a#30#1#0: Seq, 
    a#30#2#0: Seq, 
    a#30#3#0: Seq, 
    a#30#4#0: Seq, 
    a#30#5#0: Seq, 
    a#30#6#0: Seq, 
    a#30#7#0: Seq, 
    a#30#8#0: Seq, 
    a#30#9#0: Seq :: 
  { #_module.AB.AA(a#30#0#0, 
      a#30#1#0, 
      a#30#2#0, 
      a#30#3#0, 
      a#30#4#0, 
      a#30#5#0, 
      a#30#6#0, 
      a#30#7#0, 
      a#30#8#0, 
      a#30#9#0) } 
  _module.AB.x7(#_module.AB.AA(a#30#0#0, 
        a#30#1#0, 
        a#30#2#0, 
        a#30#3#0, 
        a#30#4#0, 
        a#30#5#0, 
        a#30#6#0, 
        a#30#7#0, 
        a#30#8#0, 
        a#30#9#0))
     == a#30#6#0);

// Inductive seq element rank
axiom (forall a#31#0#0: Seq, 
    a#31#1#0: Seq, 
    a#31#2#0: Seq, 
    a#31#3#0: Seq, 
    a#31#4#0: Seq, 
    a#31#5#0: Seq, 
    a#31#6#0: Seq, 
    a#31#7#0: Seq, 
    a#31#8#0: Seq, 
    a#31#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#31#6#0, i), #_module.AB.AA(a#31#0#0, 
      a#31#1#0, 
      a#31#2#0, 
      a#31#3#0, 
      a#31#4#0, 
      a#31#5#0, 
      a#31#6#0, 
      a#31#7#0, 
      a#31#8#0, 
      a#31#9#0) } 
  0 <= i && i < Seq#Length(a#31#6#0)
     ==> DtRank($Unbox(Seq#Index(a#31#6#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#31#0#0, 
          a#31#1#0, 
          a#31#2#0, 
          a#31#3#0, 
          a#31#4#0, 
          a#31#5#0, 
          a#31#6#0, 
          a#31#7#0, 
          a#31#8#0, 
          a#31#9#0)));

// Inductive seq rank
axiom (forall a#32#0#0: Seq, 
    a#32#1#0: Seq, 
    a#32#2#0: Seq, 
    a#32#3#0: Seq, 
    a#32#4#0: Seq, 
    a#32#5#0: Seq, 
    a#32#6#0: Seq, 
    a#32#7#0: Seq, 
    a#32#8#0: Seq, 
    a#32#9#0: Seq :: 
  { #_module.AB.AA(a#32#0#0, 
      a#32#1#0, 
      a#32#2#0, 
      a#32#3#0, 
      a#32#4#0, 
      a#32#5#0, 
      a#32#6#0, 
      a#32#7#0, 
      a#32#8#0, 
      a#32#9#0) } 
  Seq#Rank(a#32#6#0)
     < DtRank(#_module.AB.AA(a#32#0#0, 
        a#32#1#0, 
        a#32#2#0, 
        a#32#3#0, 
        a#32#4#0, 
        a#32#5#0, 
        a#32#6#0, 
        a#32#7#0, 
        a#32#8#0, 
        a#32#9#0)));

function _module.AB.x8(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#33#0#0: Seq, 
    a#33#1#0: Seq, 
    a#33#2#0: Seq, 
    a#33#3#0: Seq, 
    a#33#4#0: Seq, 
    a#33#5#0: Seq, 
    a#33#6#0: Seq, 
    a#33#7#0: Seq, 
    a#33#8#0: Seq, 
    a#33#9#0: Seq :: 
  { #_module.AB.AA(a#33#0#0, 
      a#33#1#0, 
      a#33#2#0, 
      a#33#3#0, 
      a#33#4#0, 
      a#33#5#0, 
      a#33#6#0, 
      a#33#7#0, 
      a#33#8#0, 
      a#33#9#0) } 
  _module.AB.x8(#_module.AB.AA(a#33#0#0, 
        a#33#1#0, 
        a#33#2#0, 
        a#33#3#0, 
        a#33#4#0, 
        a#33#5#0, 
        a#33#6#0, 
        a#33#7#0, 
        a#33#8#0, 
        a#33#9#0))
     == a#33#7#0);

// Inductive seq element rank
axiom (forall a#34#0#0: Seq, 
    a#34#1#0: Seq, 
    a#34#2#0: Seq, 
    a#34#3#0: Seq, 
    a#34#4#0: Seq, 
    a#34#5#0: Seq, 
    a#34#6#0: Seq, 
    a#34#7#0: Seq, 
    a#34#8#0: Seq, 
    a#34#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#34#7#0, i), #_module.AB.AA(a#34#0#0, 
      a#34#1#0, 
      a#34#2#0, 
      a#34#3#0, 
      a#34#4#0, 
      a#34#5#0, 
      a#34#6#0, 
      a#34#7#0, 
      a#34#8#0, 
      a#34#9#0) } 
  0 <= i && i < Seq#Length(a#34#7#0)
     ==> DtRank($Unbox(Seq#Index(a#34#7#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#34#0#0, 
          a#34#1#0, 
          a#34#2#0, 
          a#34#3#0, 
          a#34#4#0, 
          a#34#5#0, 
          a#34#6#0, 
          a#34#7#0, 
          a#34#8#0, 
          a#34#9#0)));

// Inductive seq rank
axiom (forall a#35#0#0: Seq, 
    a#35#1#0: Seq, 
    a#35#2#0: Seq, 
    a#35#3#0: Seq, 
    a#35#4#0: Seq, 
    a#35#5#0: Seq, 
    a#35#6#0: Seq, 
    a#35#7#0: Seq, 
    a#35#8#0: Seq, 
    a#35#9#0: Seq :: 
  { #_module.AB.AA(a#35#0#0, 
      a#35#1#0, 
      a#35#2#0, 
      a#35#3#0, 
      a#35#4#0, 
      a#35#5#0, 
      a#35#6#0, 
      a#35#7#0, 
      a#35#8#0, 
      a#35#9#0) } 
  Seq#Rank(a#35#7#0)
     < DtRank(#_module.AB.AA(a#35#0#0, 
        a#35#1#0, 
        a#35#2#0, 
        a#35#3#0, 
        a#35#4#0, 
        a#35#5#0, 
        a#35#6#0, 
        a#35#7#0, 
        a#35#8#0, 
        a#35#9#0)));

function _module.AB.x9(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#36#0#0: Seq, 
    a#36#1#0: Seq, 
    a#36#2#0: Seq, 
    a#36#3#0: Seq, 
    a#36#4#0: Seq, 
    a#36#5#0: Seq, 
    a#36#6#0: Seq, 
    a#36#7#0: Seq, 
    a#36#8#0: Seq, 
    a#36#9#0: Seq :: 
  { #_module.AB.AA(a#36#0#0, 
      a#36#1#0, 
      a#36#2#0, 
      a#36#3#0, 
      a#36#4#0, 
      a#36#5#0, 
      a#36#6#0, 
      a#36#7#0, 
      a#36#8#0, 
      a#36#9#0) } 
  _module.AB.x9(#_module.AB.AA(a#36#0#0, 
        a#36#1#0, 
        a#36#2#0, 
        a#36#3#0, 
        a#36#4#0, 
        a#36#5#0, 
        a#36#6#0, 
        a#36#7#0, 
        a#36#8#0, 
        a#36#9#0))
     == a#36#8#0);

// Inductive seq element rank
axiom (forall a#37#0#0: Seq, 
    a#37#1#0: Seq, 
    a#37#2#0: Seq, 
    a#37#3#0: Seq, 
    a#37#4#0: Seq, 
    a#37#5#0: Seq, 
    a#37#6#0: Seq, 
    a#37#7#0: Seq, 
    a#37#8#0: Seq, 
    a#37#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#37#8#0, i), #_module.AB.AA(a#37#0#0, 
      a#37#1#0, 
      a#37#2#0, 
      a#37#3#0, 
      a#37#4#0, 
      a#37#5#0, 
      a#37#6#0, 
      a#37#7#0, 
      a#37#8#0, 
      a#37#9#0) } 
  0 <= i && i < Seq#Length(a#37#8#0)
     ==> DtRank($Unbox(Seq#Index(a#37#8#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#37#0#0, 
          a#37#1#0, 
          a#37#2#0, 
          a#37#3#0, 
          a#37#4#0, 
          a#37#5#0, 
          a#37#6#0, 
          a#37#7#0, 
          a#37#8#0, 
          a#37#9#0)));

// Inductive seq rank
axiom (forall a#38#0#0: Seq, 
    a#38#1#0: Seq, 
    a#38#2#0: Seq, 
    a#38#3#0: Seq, 
    a#38#4#0: Seq, 
    a#38#5#0: Seq, 
    a#38#6#0: Seq, 
    a#38#7#0: Seq, 
    a#38#8#0: Seq, 
    a#38#9#0: Seq :: 
  { #_module.AB.AA(a#38#0#0, 
      a#38#1#0, 
      a#38#2#0, 
      a#38#3#0, 
      a#38#4#0, 
      a#38#5#0, 
      a#38#6#0, 
      a#38#7#0, 
      a#38#8#0, 
      a#38#9#0) } 
  Seq#Rank(a#38#8#0)
     < DtRank(#_module.AB.AA(a#38#0#0, 
        a#38#1#0, 
        a#38#2#0, 
        a#38#3#0, 
        a#38#4#0, 
        a#38#5#0, 
        a#38#6#0, 
        a#38#7#0, 
        a#38#8#0, 
        a#38#9#0)));

function _module.AB.x10(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#39#0#0: Seq, 
    a#39#1#0: Seq, 
    a#39#2#0: Seq, 
    a#39#3#0: Seq, 
    a#39#4#0: Seq, 
    a#39#5#0: Seq, 
    a#39#6#0: Seq, 
    a#39#7#0: Seq, 
    a#39#8#0: Seq, 
    a#39#9#0: Seq :: 
  { #_module.AB.AA(a#39#0#0, 
      a#39#1#0, 
      a#39#2#0, 
      a#39#3#0, 
      a#39#4#0, 
      a#39#5#0, 
      a#39#6#0, 
      a#39#7#0, 
      a#39#8#0, 
      a#39#9#0) } 
  _module.AB.x10(#_module.AB.AA(a#39#0#0, 
        a#39#1#0, 
        a#39#2#0, 
        a#39#3#0, 
        a#39#4#0, 
        a#39#5#0, 
        a#39#6#0, 
        a#39#7#0, 
        a#39#8#0, 
        a#39#9#0))
     == a#39#9#0);

// Inductive seq element rank
axiom (forall a#40#0#0: Seq, 
    a#40#1#0: Seq, 
    a#40#2#0: Seq, 
    a#40#3#0: Seq, 
    a#40#4#0: Seq, 
    a#40#5#0: Seq, 
    a#40#6#0: Seq, 
    a#40#7#0: Seq, 
    a#40#8#0: Seq, 
    a#40#9#0: Seq, 
    i: int :: 
  { Seq#Index(a#40#9#0, i), #_module.AB.AA(a#40#0#0, 
      a#40#1#0, 
      a#40#2#0, 
      a#40#3#0, 
      a#40#4#0, 
      a#40#5#0, 
      a#40#6#0, 
      a#40#7#0, 
      a#40#8#0, 
      a#40#9#0) } 
  0 <= i && i < Seq#Length(a#40#9#0)
     ==> DtRank($Unbox(Seq#Index(a#40#9#0, i)): DatatypeType)
       < DtRank(#_module.AB.AA(a#40#0#0, 
          a#40#1#0, 
          a#40#2#0, 
          a#40#3#0, 
          a#40#4#0, 
          a#40#5#0, 
          a#40#6#0, 
          a#40#7#0, 
          a#40#8#0, 
          a#40#9#0)));

// Inductive seq rank
axiom (forall a#41#0#0: Seq, 
    a#41#1#0: Seq, 
    a#41#2#0: Seq, 
    a#41#3#0: Seq, 
    a#41#4#0: Seq, 
    a#41#5#0: Seq, 
    a#41#6#0: Seq, 
    a#41#7#0: Seq, 
    a#41#8#0: Seq, 
    a#41#9#0: Seq :: 
  { #_module.AB.AA(a#41#0#0, 
      a#41#1#0, 
      a#41#2#0, 
      a#41#3#0, 
      a#41#4#0, 
      a#41#5#0, 
      a#41#6#0, 
      a#41#7#0, 
      a#41#8#0, 
      a#41#9#0) } 
  Seq#Rank(a#41#9#0)
     < DtRank(#_module.AB.AA(a#41#0#0, 
        a#41#1#0, 
        a#41#2#0, 
        a#41#3#0, 
        a#41#4#0, 
        a#41#5#0, 
        a#41#6#0, 
        a#41#7#0, 
        a#41#8#0, 
        a#41#9#0)));

// Constructor function declaration
function #_module.AB.BB() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.AB.BB()) == ##_module.AB.BB;
// Constructor $Is
axiom $Is(#_module.AB.BB(), Tclass._module.AB());
// Constructor literal
axiom #_module.AB.BB() == Lit(#_module.AB.BB());
}

const unique ##_module.AB.BB: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.AB.BB()) == ##_module.AB.BB;
}

function _module.AB.BB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.AB.BB_q(d) } 
  _module.AB.BB_q(d) <==> DatatypeCtorId(d) == ##_module.AB.BB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.AB.BB_q(d) } 
  _module.AB.BB_q(d) ==> d == #_module.AB.BB());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.AB(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.AB())
     ==> $IsAlloc(d, Tclass._module.AB(), $h));

// Depth-one case-split function
function $IsA#_module.AB(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.AB(d) } 
  $IsA#_module.AB(d) ==> _module.AB.AA_q(d) || _module.AB.BB_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.AB.BB_q(d), $Is(d, Tclass._module.AB()) } 
    { _module.AB.AA_q(d), $Is(d, Tclass._module.AB()) } 
  $Is(d, Tclass._module.AB()) ==> _module.AB.AA_q(d) || _module.AB.BB_q(d));

// Datatype extensional equality declaration
function _module.AB#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.AB.AA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.AB#Equal(a, b), _module.AB.AA_q(a) } 
    { _module.AB#Equal(a, b), _module.AB.AA_q(b) } 
  _module.AB.AA_q(a) && _module.AB.AA_q(b)
     ==> (_module.AB#Equal(a, b)
       <==> Seq#Equal(_module.AB.x1(a), _module.AB.x1(b))
         && Seq#Equal(_module.AB.x2(a), _module.AB.x2(b))
         && Seq#Equal(_module.AB.x3(a), _module.AB.x3(b))
         && Seq#Equal(_module.AB.x4(a), _module.AB.x4(b))
         && Seq#Equal(_module.AB.x5(a), _module.AB.x5(b))
         && Seq#Equal(_module.AB.x6(a), _module.AB.x6(b))
         && Seq#Equal(_module.AB.x7(a), _module.AB.x7(b))
         && Seq#Equal(_module.AB.x8(a), _module.AB.x8(b))
         && Seq#Equal(_module.AB.x9(a), _module.AB.x9(b))
         && Seq#Equal(_module.AB.x10(a), _module.AB.x10(b))));

// Datatype extensional equality definition: #_module.AB.BB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.AB#Equal(a, b), _module.AB.BB_q(a) } 
    { _module.AB#Equal(a, b), _module.AB.BB_q(b) } 
  _module.AB.BB_q(a) && _module.AB.BB_q(b) ==> _module.AB#Equal(a, b));

// Datatype extensionality axiom: _module.AB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.AB#Equal(a, b) } 
  _module.AB#Equal(a, b) <==> a == b);

const unique class._module.AB: ClassName;

const unique class._module.Recur?: ClassName;

// $Is axiom for class Recur
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Recur?()) } 
  $Is($o, Tclass._module.Recur?())
     <==> $o == null || dtype($o) == Tclass._module.Recur?());

// $IsAlloc axiom for class Recur
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Recur?(), $h) } 
  $IsAlloc($o, Tclass._module.Recur?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Recur.next: Field
uses {
axiom FDim(_module.Recur.next) == 0
   && FieldOfDecl(class._module.Recur?, field$next) == _module.Recur.next
   && !$IsGhostField(_module.Recur.next);
}

// Recur.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Recur.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Recur?()
     ==> $Is($Unbox(read($h, $o, _module.Recur.next)): ref, Tclass._module.Recur?()));

// Recur.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Recur.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Recur?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Recur.next)): ref, Tclass._module.Recur?(), $h));

const _module.Recur.data: Field
uses {
axiom FDim(_module.Recur.data) == 0
   && FieldOfDecl(class._module.Recur?, field$data) == _module.Recur.data
   && !$IsGhostField(_module.Recur.data);
}

// Recur.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Recur.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Recur?()
     ==> $Is($Unbox(read($h, $o, _module.Recur.data)): int, TInt));

// Recur.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Recur.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Recur?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Recur.data)): int, TInt, $h));

procedure {:verboseName "Recur._ctor (well-formedness)"} CheckWellFormed$$_module.Recur.__ctor(n#0: int where LitInt(0) <= n#0) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Recur._ctor (call)"} Call$$_module.Recur.__ctor(n#0: int where LitInt(0) <= n#0)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Recur())
         && $IsAlloc(this, Tclass._module.Recur(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Recur._ctor (correctness)"} Impl$$_module.Recur.__ctor(n#0: int where LitInt(0) <= n#0) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Recur._ctor (correctness)"} Impl$$_module.Recur.__ctor(n#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.next: ref;
  var this.data: int;
  var newtype$check#0_0: ref;
  var $nw: ref;
  var n##1_0: int;

    // AddMethodImpl: _ctor, Impl$$_module.Recur.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(75,24)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(76,10)
    assume true;
    assume true;
    this.data := LitInt(2);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(77,5)
    assume true;
    if (n#0 == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(78,12)
        assume true;
        newtype$check#0_0 := null;
        assume true;
        this.next := null;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(80,12)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(80,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id216"} $Is(n#0 - 1, Tclass._System.nat());
        n##1_0 := n#0 - 1;
        assert {:id "id217"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id218"} n##1_0 < n#0;
        call {:id "id219"} $nw := Call$$_module.Recur.__ctor(n##1_0);
        // TrCallStmt: After ProcessCallStmt
        this.next := $nw;
    }

    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(75,24)
    assume this != null && $Is(this, Tclass._module.Recur?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Recur.next)): ref == this.next;
    assume $Unbox(read($Heap, this, _module.Recur.data)): int == this.data;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/git-issues/git-issue-3868.dfy(75,24)
}



// function declaration for _module.Recur.Follow0
function _module.Recur.Follow0($ly: LayerType, $heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int)
   : int
uses {
// definition axiom for _module.Recur.Follow0 (revealed)
axiom {:id "id221"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
    { _module.Recur.Follow0($LS($ly), $Heap, this, o#0, n#0, m#0), $IsGoodHeap($Heap) } 
    _module.Recur.Follow0#canCall($Heap, this, o#0, n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Recur())
           && $IsAlloc(this, Tclass._module.Recur(), $Heap)
           && $Is(o#0, Tclass._module.Or())
           && LitInt(0) <= n#0)
       ==> (var th#0 := this; 
          !(n#0 == LitInt(0) || $Unbox(read($Heap, this, _module.Recur.next)): ref == null)
             ==> (var r#0 := (if _module.Or.A_q(o#0)
                   then (var x1#2 := n#0 + $Unbox(read($Heap, th#0, _module.Recur.data)): int - n#0; 
                    (var x2#2 := x1#2; 
                      (var x3#2 := x2#2; 
                        (var x4#2 := x3#2; 
                          (var x5#2 := x4#2; 
                            (var x6#2 := x5#2; 
                              (var x7#2 := x6#2; 
                                (var x8#2 := x7#2; (var x9#2 := x8#2; (var x10#2 := x9#2; x10#2))))))))))
                   else 999); 
              _module.Recur.Follow0#canCall($Heap, 
                $Unbox(read($Heap, this, _module.Recur.next)): ref, 
                o#0, 
                n#0 - 1, 
                m#0 + r#0)))
         && _module.Recur.Follow0($LS($ly), $Heap, this, o#0, n#0, m#0)
           == (var th#0 := this; 
            (if n#0 == LitInt(0) || $Unbox(read($Heap, this, _module.Recur.next)): ref == null
               then m#0
               else (var r#0 := (if _module.Or.A_q(o#0)
                     then (var x1#0 := n#0 + $Unbox(read($Heap, th#0, _module.Recur.data)): int - n#0; 
                      (var x2#0 := x1#0; 
                        (var x3#0 := x2#0; 
                          (var x4#0 := x3#0; 
                            (var x5#0 := x4#0; 
                              (var x6#0 := x5#0; 
                                (var x7#0 := x6#0; 
                                  (var x8#0 := x7#0; (var x9#0 := x8#0; (var x10#0 := x9#0; x10#0))))))))))
                     else 999); 
                _module.Recur.Follow0($ly, 
                    $Heap, 
                    $Unbox(read($Heap, this, _module.Recur.next)): ref, 
                    o#0, 
                    n#0 - 1, 
                    m#0 + r#0)
                   + 1))));
}

function _module.Recur.Follow0#canCall($heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
  { _module.Recur.Follow0($LS($ly), $Heap, this, o#0, n#0, m#0) } 
  _module.Recur.Follow0($LS($ly), $Heap, this, o#0, n#0, m#0)
     == _module.Recur.Follow0($ly, $Heap, this, o#0, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
  { _module.Recur.Follow0(AsFuelBottom($ly), $Heap, this, o#0, n#0, m#0) } 
  _module.Recur.Follow0($ly, $Heap, this, o#0, n#0, m#0)
     == _module.Recur.Follow0($LZ, $Heap, this, o#0, n#0, m#0));

// frame axiom for _module.Recur.Follow0
axiom (forall $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref, 
    o#0: DatatypeType, 
    n#0: int, 
    m#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Recur.Follow0($ly, $h1, this, o#0, n#0, m#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Recur())
       && $IsAlloc(this, Tclass._module.Recur(), $h0)
       && (_module.Recur.Follow0#canCall($h0, this, o#0, n#0, m#0)
         || (
          $Is(o#0, Tclass._module.Or())
           && $IsAlloc(o#0, Tclass._module.Or(), $h0)
           && LitInt(0) <= n#0))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Recur.Follow0($ly, $h0, this, o#0, n#0, m#0)
       == _module.Recur.Follow0($ly, $h1, this, o#0, n#0, m#0));

function _module.Recur.Follow0#requires(LayerType, Heap, ref, DatatypeType, int, int) : bool;

// #requires axiom for _module.Recur.Follow0
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
  { _module.Recur.Follow0#requires($ly, $Heap, this, o#0, n#0, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Recur())
       && $IsAlloc(this, Tclass._module.Recur(), $Heap)
       && $Is(o#0, Tclass._module.Or())
       && LitInt(0) <= n#0
     ==> _module.Recur.Follow0#requires($ly, $Heap, this, o#0, n#0, m#0) == true);

procedure {:verboseName "Recur.Follow0 (well-formedness)"} CheckWellformed$$_module.Recur.Follow0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Recur())
         && $IsAlloc(this, Tclass._module.Recur(), $Heap), 
    o#0: DatatypeType where $Is(o#0, Tclass._module.Or()), 
    n#0: int where LitInt(0) <= n#0, 
    m#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Recur.Follow0 (well-formedness)"} CheckWellformed$$_module.Recur.Follow0(this: ref, o#0: DatatypeType, n#0: int, m#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var th#Z#0: ref;
  var let#0#0#0: ref;
  var newtype$check#0: ref;
  var r#Z#0: int;
  var let#1#0#0: int;
  var x1#Z#0: int;
  var let#2#0#0: int;
  var x2#Z#0: int;
  var let#3#0#0: int;
  var x3#Z#0: int;
  var let#4#0#0: int;
  var x4#Z#0: int;
  var let#5#0#0: int;
  var x5#Z#0: int;
  var let#6#0#0: int;
  var x6#Z#0: int;
  var let#7#0#0: int;
  var x7#Z#0: int;
  var let#8#0#0: int;
  var x8#Z#0: int;
  var let#9#0#0: int;
  var x9#Z#0: int;
  var let#10#0#0: int;
  var x10#Z#0: int;
  var let#11#0#0: int;
  var ##o#0: DatatypeType;
  var ##n#0: int;
  var ##m#0: int;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
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
        havoc th#Z#0;
        assume {:id "id222"} let#0#0#0 == this;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.Recur());
        assume {:id "id223"} th#Z#0 == let#0#0#0;
        if (n#0 != LitInt(0))
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.Recur.next];
            newtype$check#0 := null;
        }

        if (n#0 == LitInt(0) || $Unbox(read($Heap, this, _module.Recur.next)): ref == null)
        {
            assume {:id "id224"} _module.Recur.Follow0($LS($LZ), $Heap, this, o#0, n#0, m#0) == m#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Recur.Follow0($LS($LZ), $Heap, this, o#0, n#0, m#0), TInt);
            assert {:id "id225"} b$reqreads#0;
            return;
        }
        else
        {
            havoc r#Z#0;
            if (o#0 == #_module.Or.A())
            {
                havoc x1#Z#0;
                assert {:id "id227"} th#Z#0 != null;
                b$reqreads#1 := $_ReadsFrame[th#Z#0, _module.Recur.data];
                assume {:id "id228"} let#2#0#0 == n#0 + $Unbox(read($Heap, th#Z#0, _module.Recur.data)): int - n#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, TInt);
                assume {:id "id229"} x1#Z#0 == let#2#0#0;
                havoc x2#Z#0;
                assume {:id "id230"} let#3#0#0 == x1#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, TInt);
                assume {:id "id231"} x2#Z#0 == let#3#0#0;
                havoc x3#Z#0;
                assume {:id "id232"} let#4#0#0 == x2#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#4#0#0, TInt);
                assume {:id "id233"} x3#Z#0 == let#4#0#0;
                havoc x4#Z#0;
                assume {:id "id234"} let#5#0#0 == x3#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#5#0#0, TInt);
                assume {:id "id235"} x4#Z#0 == let#5#0#0;
                havoc x5#Z#0;
                assume {:id "id236"} let#6#0#0 == x4#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#6#0#0, TInt);
                assume {:id "id237"} x5#Z#0 == let#6#0#0;
                havoc x6#Z#0;
                assume {:id "id238"} let#7#0#0 == x5#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#7#0#0, TInt);
                assume {:id "id239"} x6#Z#0 == let#7#0#0;
                havoc x7#Z#0;
                assume {:id "id240"} let#8#0#0 == x6#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#8#0#0, TInt);
                assume {:id "id241"} x7#Z#0 == let#8#0#0;
                havoc x8#Z#0;
                assume {:id "id242"} let#9#0#0 == x7#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#9#0#0, TInt);
                assume {:id "id243"} x8#Z#0 == let#9#0#0;
                havoc x9#Z#0;
                assume {:id "id244"} let#10#0#0 == x8#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#10#0#0, TInt);
                assume {:id "id245"} x9#Z#0 == let#10#0#0;
                havoc x10#Z#0;
                assume {:id "id246"} let#11#0#0 == x9#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#11#0#0, TInt);
                assume {:id "id247"} x10#Z#0 == let#11#0#0;
                assume {:id "id248"} let#1#0#0 == x10#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, TInt);
            }
            else if (o#0 == #_module.Or.B())
            {
                assume {:id "id226"} let#1#0#0 == LitInt(999);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, TInt);
            }
            else
            {
                assume false;
            }

            assume {:id "id249"} r#Z#0 == let#1#0#0;
            b$reqreads#2 := $_ReadsFrame[this, _module.Recur.next];
            assert {:id "id250"} $Unbox(read($Heap, this, _module.Recur.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.Recur.next), Tclass._module.Recur?(), $Heap);
            ##o#0 := o#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##o#0, Tclass._module.Or(), $Heap);
            assert {:id "id251"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            ##m#0 := m#0 + r#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, TInt, $Heap);
            b$reqreads#3 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id252"} 0 <= n#0
               || (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
               || DtRank(##o#0) < DtRank(o#0)
               || ##n#0 == n#0;
            assert {:id "id253"} 0 <= m#0
               || (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
               || DtRank(##o#0) < DtRank(o#0)
               || ##n#0 < n#0
               || ##m#0 == m#0;
            assert {:id "id254"} (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
               || (Set#Equal(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && (DtRank(##o#0) < DtRank(o#0)
                   || (DtRank(##o#0) == DtRank(o#0) && (##n#0 < n#0 || (##n#0 == n#0 && ##m#0 < m#0)))));
            assume _module.Recur.Follow0#canCall($Heap, 
              $Unbox(read($Heap, this, _module.Recur.next)): ref, 
              o#0, 
              n#0 - 1, 
              m#0 + r#Z#0);
            assume {:id "id255"} _module.Recur.Follow0($LS($LZ), $Heap, this, o#0, n#0, m#0)
               == _module.Recur.Follow0($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.Recur.next)): ref, 
                  o#0, 
                  n#0 - 1, 
                  m#0 + r#Z#0)
                 + 1;
            assume _module.Recur.Follow0#canCall($Heap, 
              $Unbox(read($Heap, this, _module.Recur.next)): ref, 
              o#0, 
              n#0 - 1, 
              m#0 + r#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Recur.Follow0($LS($LZ), $Heap, this, o#0, n#0, m#0), TInt);
            assert {:id "id256"} b$reqreads#0;
            assert {:id "id257"} b$reqreads#1;
            assert {:id "id258"} b$reqreads#2;
            assert {:id "id259"} b$reqreads#3;
            return;
        }

        assume false;
    }
}



// function declaration for _module.Recur.Follow1
function _module.Recur.Follow1($ly: LayerType, $heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int)
   : int
uses {
// definition axiom for _module.Recur.Follow1 (revealed)
axiom {:id "id260"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
    { _module.Recur.Follow1($LS($ly), $Heap, this, o#0, n#0, m#0), $IsGoodHeap($Heap) } 
    _module.Recur.Follow1#canCall($Heap, this, o#0, n#0, m#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Recur())
           && $IsAlloc(this, Tclass._module.Recur(), $Heap)
           && $Is(o#0, Tclass._module.Or())
           && LitInt(0) <= n#0)
       ==> (var th#0 := this; 
          !(n#0 == LitInt(0) || $Unbox(read($Heap, this, _module.Recur.next)): ref == null)
             ==> 
            _module.Or.A_q(o#0)
             ==> _module.Recur.Follow1#canCall($Heap, 
              $Unbox(read($Heap, this, _module.Recur.next)): ref, 
              o#0, 
              n#0 - 1, 
              m#0 + $Unbox(read($Heap, th#0, _module.Recur.data)): int))
         && _module.Recur.Follow1($LS($ly), $Heap, this, o#0, n#0, m#0)
           == (var th#0 := this; 
            (if n#0 == LitInt(0) || $Unbox(read($Heap, this, _module.Recur.next)): ref == null
               then m#0
               else (if _module.Or.A_q(o#0)
                 then (var x1#0 := n#0 + $Unbox(read($Heap, th#0, _module.Recur.data)): int - n#0; 
                  (var x2#0 := x1#0; 
                    (var x3#0 := x2#0; 
                      (var x4#0 := x3#0; 
                        (var x5#0 := x4#0; 
                          (var x6#0 := x5#0; 
                            (var x7#0 := x6#0; 
                              (var x8#0 := x7#0; 
                                (var x9#0 := x8#0; 
                                  (var x10#0 := x9#0; 
                                    _module.Recur.Follow1($ly, 
                                        $Heap, 
                                        $Unbox(read($Heap, this, _module.Recur.next)): ref, 
                                        o#0, 
                                        n#0 - 1, 
                                        m#0 + $Unbox(read($Heap, th#0, _module.Recur.data)): int)
                                       + 1))))))))))
                 else 999))));
}

function _module.Recur.Follow1#canCall($heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
  { _module.Recur.Follow1($LS($ly), $Heap, this, o#0, n#0, m#0) } 
  _module.Recur.Follow1($LS($ly), $Heap, this, o#0, n#0, m#0)
     == _module.Recur.Follow1($ly, $Heap, this, o#0, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
  { _module.Recur.Follow1(AsFuelBottom($ly), $Heap, this, o#0, n#0, m#0) } 
  _module.Recur.Follow1($ly, $Heap, this, o#0, n#0, m#0)
     == _module.Recur.Follow1($LZ, $Heap, this, o#0, n#0, m#0));

// frame axiom for _module.Recur.Follow1
axiom (forall $ly: LayerType, 
    $h0: Heap, 
    $h1: Heap, 
    this: ref, 
    o#0: DatatypeType, 
    n#0: int, 
    m#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Recur.Follow1($ly, $h1, this, o#0, n#0, m#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Recur())
       && $IsAlloc(this, Tclass._module.Recur(), $h0)
       && (_module.Recur.Follow1#canCall($h0, this, o#0, n#0, m#0)
         || (
          $Is(o#0, Tclass._module.Or())
           && $IsAlloc(o#0, Tclass._module.Or(), $h0)
           && LitInt(0) <= n#0))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Recur.Follow1($ly, $h0, this, o#0, n#0, m#0)
       == _module.Recur.Follow1($ly, $h1, this, o#0, n#0, m#0));

function _module.Recur.Follow1#requires(LayerType, Heap, ref, DatatypeType, int, int) : bool;

// #requires axiom for _module.Recur.Follow1
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, o#0: DatatypeType, n#0: int, m#0: int :: 
  { _module.Recur.Follow1#requires($ly, $Heap, this, o#0, n#0, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Recur())
       && $IsAlloc(this, Tclass._module.Recur(), $Heap)
       && $Is(o#0, Tclass._module.Or())
       && LitInt(0) <= n#0
     ==> _module.Recur.Follow1#requires($ly, $Heap, this, o#0, n#0, m#0) == true);

procedure {:verboseName "Recur.Follow1 (well-formedness)"} CheckWellformed$$_module.Recur.Follow1(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Recur())
         && $IsAlloc(this, Tclass._module.Recur(), $Heap), 
    o#0: DatatypeType where $Is(o#0, Tclass._module.Or()), 
    n#0: int where LitInt(0) <= n#0, 
    m#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Recur.Follow1 (well-formedness)"} CheckWellformed$$_module.Recur.Follow1(this: ref, o#0: DatatypeType, n#0: int, m#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var th#Z#0: ref;
  var let#0#0#0: ref;
  var newtype$check#0: ref;
  var x1#Z#0: int;
  var let#1#0#0: int;
  var x2#Z#0: int;
  var let#2#0#0: int;
  var x3#Z#0: int;
  var let#3#0#0: int;
  var x4#Z#0: int;
  var let#4#0#0: int;
  var x5#Z#0: int;
  var let#5#0#0: int;
  var x6#Z#0: int;
  var let#6#0#0: int;
  var x7#Z#0: int;
  var let#7#0#0: int;
  var x8#Z#0: int;
  var let#8#0#0: int;
  var x9#Z#0: int;
  var let#9#0#0: int;
  var x10#Z#0: int;
  var let#10#0#0: int;
  var ##o#0: DatatypeType;
  var ##n#0: int;
  var ##m#0: int;
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

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
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
        havoc th#Z#0;
        assume {:id "id261"} let#0#0#0 == this;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, Tclass._module.Recur());
        assume {:id "id262"} th#Z#0 == let#0#0#0;
        if (n#0 != LitInt(0))
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.Recur.next];
            newtype$check#0 := null;
        }

        if (n#0 == LitInt(0) || $Unbox(read($Heap, this, _module.Recur.next)): ref == null)
        {
            assume {:id "id263"} _module.Recur.Follow1($LS($LZ), $Heap, this, o#0, n#0, m#0) == m#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Recur.Follow1($LS($LZ), $Heap, this, o#0, n#0, m#0), TInt);
            assert {:id "id264"} b$reqreads#0;
            return;
        }
        else
        {
            if (o#0 == #_module.Or.A())
            {
                havoc x1#Z#0;
                assert {:id "id267"} th#Z#0 != null;
                b$reqreads#1 := $_ReadsFrame[th#Z#0, _module.Recur.data];
                assume {:id "id268"} let#1#0#0 == n#0 + $Unbox(read($Heap, th#Z#0, _module.Recur.data)): int - n#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, TInt);
                assume {:id "id269"} x1#Z#0 == let#1#0#0;
                havoc x2#Z#0;
                assume {:id "id270"} let#2#0#0 == x1#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, TInt);
                assume {:id "id271"} x2#Z#0 == let#2#0#0;
                havoc x3#Z#0;
                assume {:id "id272"} let#3#0#0 == x2#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, TInt);
                assume {:id "id273"} x3#Z#0 == let#3#0#0;
                havoc x4#Z#0;
                assume {:id "id274"} let#4#0#0 == x3#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#4#0#0, TInt);
                assume {:id "id275"} x4#Z#0 == let#4#0#0;
                havoc x5#Z#0;
                assume {:id "id276"} let#5#0#0 == x4#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#5#0#0, TInt);
                assume {:id "id277"} x5#Z#0 == let#5#0#0;
                havoc x6#Z#0;
                assume {:id "id278"} let#6#0#0 == x5#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#6#0#0, TInt);
                assume {:id "id279"} x6#Z#0 == let#6#0#0;
                havoc x7#Z#0;
                assume {:id "id280"} let#7#0#0 == x6#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#7#0#0, TInt);
                assume {:id "id281"} x7#Z#0 == let#7#0#0;
                havoc x8#Z#0;
                assume {:id "id282"} let#8#0#0 == x7#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#8#0#0, TInt);
                assume {:id "id283"} x8#Z#0 == let#8#0#0;
                havoc x9#Z#0;
                assume {:id "id284"} let#9#0#0 == x8#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#9#0#0, TInt);
                assume {:id "id285"} x9#Z#0 == let#9#0#0;
                havoc x10#Z#0;
                assume {:id "id286"} let#10#0#0 == x9#Z#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#10#0#0, TInt);
                assume {:id "id287"} x10#Z#0 == let#10#0#0;
                b$reqreads#2 := $_ReadsFrame[this, _module.Recur.next];
                assert {:id "id288"} $Unbox(read($Heap, this, _module.Recur.next)): ref != null;
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox(read($Heap, this, _module.Recur.next), Tclass._module.Recur?(), $Heap);
                ##o#0 := o#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##o#0, Tclass._module.Or(), $Heap);
                assert {:id "id289"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#0 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assert {:id "id290"} th#Z#0 != null;
                b$reqreads#3 := $_ReadsFrame[th#Z#0, _module.Recur.data];
                ##m#0 := m#0 + $Unbox(read($Heap, th#Z#0, _module.Recur.data)): int;
                // assume allocatedness for argument to function
                assume $IsAlloc(##m#0, TInt, $Heap);
                b$reqreads#4 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && $Unbox(read($Heap, $o, alloc)): bool
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id291"} 0 <= n#0
                   || (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                     && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
                   || DtRank(##o#0) < DtRank(o#0)
                   || ##n#0 == n#0;
                assert {:id "id292"} 0 <= m#0
                   || (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                     && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
                   || DtRank(##o#0) < DtRank(o#0)
                   || ##n#0 < n#0
                   || ##m#0 == m#0;
                assert {:id "id293"} (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                     && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
                   || (Set#Equal(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                     && (DtRank(##o#0) < DtRank(o#0)
                       || (DtRank(##o#0) == DtRank(o#0) && (##n#0 < n#0 || (##n#0 == n#0 && ##m#0 < m#0)))));
                assume _module.Recur.Follow1#canCall($Heap, 
                  $Unbox(read($Heap, this, _module.Recur.next)): ref, 
                  o#0, 
                  n#0 - 1, 
                  m#0 + $Unbox(read($Heap, th#Z#0, _module.Recur.data)): int);
                assume {:id "id294"} _module.Recur.Follow1($LS($LZ), $Heap, this, o#0, n#0, m#0)
                   == _module.Recur.Follow1($LS($LZ), 
                      $Heap, 
                      $Unbox(read($Heap, this, _module.Recur.next)): ref, 
                      o#0, 
                      n#0 - 1, 
                      m#0 + $Unbox(read($Heap, th#Z#0, _module.Recur.data)): int)
                     + 1;
                assume _module.Recur.Follow1#canCall($Heap, 
                  $Unbox(read($Heap, this, _module.Recur.next)): ref, 
                  o#0, 
                  n#0 - 1, 
                  m#0 + $Unbox(read($Heap, th#Z#0, _module.Recur.data)): int);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.Recur.Follow1($LS($LZ), $Heap, this, o#0, n#0, m#0), TInt);
                assert {:id "id295"} b$reqreads#0;
                assert {:id "id296"} b$reqreads#1;
                assert {:id "id297"} b$reqreads#2;
                assert {:id "id298"} b$reqreads#3;
                assert {:id "id299"} b$reqreads#4;
                return;
            }
            else if (o#0 == #_module.Or.B())
            {
                assume {:id "id265"} _module.Recur.Follow1($LS($LZ), $Heap, this, o#0, n#0, m#0) == LitInt(999);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.Recur.Follow1($LS($LZ), $Heap, this, o#0, n#0, m#0), TInt);
                assert {:id "id266"} b$reqreads#0;
                return;
            }
            else
            {
                assume false;
            }
        }

        assume false;
    }
}



// $Is axiom for non-null type _module.Recur
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Recur()) } { $Is(c#0, Tclass._module.Recur?()) } 
  $Is(c#0, Tclass._module.Recur())
     <==> $Is(c#0, Tclass._module.Recur?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Recur
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Recur(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Recur?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Recur(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Recur?(), $h));

// Constructor function declaration
function #_module.Option.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
// Constructor literal
axiom #_module.Option.None() == Lit(#_module.Option.None());
}

const unique ##_module.Option.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Option.None()) == ##_module.Option.None;
}

function _module.Option.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) <==> DatatypeCtorId(d) == ##_module.Option.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.None_q(d) } 
  _module.Option.None_q(d) ==> d == #_module.Option.None());

// Constructor $Is
axiom (forall _module.Option$T: Ty :: 
  { $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$T)) } 
  $Is(#_module.Option.None(), Tclass._module.Option(_module.Option$T)));

// Constructor $IsAlloc
axiom (forall _module.Option$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.Option.None(), Tclass._module.Option(_module.Option$T), $h));

// Constructor function declaration
function #_module.Option.Some(Box) : DatatypeType;

const unique ##_module.Option.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box :: 
  { #_module.Option.Some(a#4#0#0) } 
  DatatypeCtorId(#_module.Option.Some(a#4#0#0)) == ##_module.Option.Some);
}

function _module.Option.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d) <==> DatatypeCtorId(d) == ##_module.Option.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Option.Some_q(d) } 
  _module.Option.Some_q(d)
     ==> (exists a#5#0#0: Box :: d == #_module.Option.Some(a#5#0#0)));

// Constructor $Is
axiom (forall _module.Option$T: Ty, a#6#0#0: Box :: 
  { $Is(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T)) } 
  $Is(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T))
     <==> $IsBox(a#6#0#0, _module.Option$T));

// Constructor $IsAlloc
axiom (forall _module.Option$T: Ty, a#6#0#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Option.Some(a#6#0#0), Tclass._module.Option(_module.Option$T), $h)
       <==> $IsAllocBox(a#6#0#0, _module.Option$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Option$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Option.value(d), _module.Option$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Option.Some_q(d)
       && $IsAlloc(d, Tclass._module.Option(_module.Option$T), $h)
     ==> $IsAllocBox(_module.Option.value(d), _module.Option$T, $h));

// Constructor literal
axiom (forall a#7#0#0: Box :: 
  { #_module.Option.Some(Lit(a#7#0#0)) } 
  #_module.Option.Some(Lit(a#7#0#0)) == Lit(#_module.Option.Some(a#7#0#0)));

function _module.Option.value(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box :: 
  { #_module.Option.Some(a#8#0#0) } 
  _module.Option.value(#_module.Option.Some(a#8#0#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box :: 
  { #_module.Option.Some(a#9#0#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.Option.Some(a#9#0#0)));

// Depth-one case-split function
function $IsA#_module.Option(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Option(d) } 
  $IsA#_module.Option(d) ==> _module.Option.None_q(d) || _module.Option.Some_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Option$T: Ty, d: DatatypeType :: 
  { _module.Option.Some_q(d), $Is(d, Tclass._module.Option(_module.Option$T)) } 
    { _module.Option.None_q(d), $Is(d, Tclass._module.Option(_module.Option$T)) } 
  $Is(d, Tclass._module.Option(_module.Option$T))
     ==> _module.Option.None_q(d) || _module.Option.Some_q(d));

// Datatype extensional equality declaration
function _module.Option#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Option.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.None_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.None_q(b) } 
  _module.Option.None_q(a) && _module.Option.None_q(b)
     ==> _module.Option#Equal(a, b));

// Datatype extensional equality definition: #_module.Option.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b), _module.Option.Some_q(a) } 
    { _module.Option#Equal(a, b), _module.Option.Some_q(b) } 
  _module.Option.Some_q(a) && _module.Option.Some_q(b)
     ==> (_module.Option#Equal(a, b)
       <==> _module.Option.value(a) == _module.Option.value(b)));

// Datatype extensionality axiom: _module.Option
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Option#Equal(a, b) } 
  _module.Option#Equal(a, b) <==> a == b);

const unique class._module.Option: ClassName;

// function declaration for _module.Option.IsFailure
function _module.Option.IsFailure(_module.Option$T: Ty, this: DatatypeType) : bool
uses {
// definition axiom for _module.Option.IsFailure (revealed)
axiom {:id "id300"} 0 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, this: DatatypeType :: 
    { _module.Option.IsFailure(_module.Option$T, this) } 
    _module.Option.IsFailure#canCall(_module.Option$T, this)
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass._module.Option(_module.Option$T)))
       ==> _module.Option.IsFailure(_module.Option$T, this) == _module.Option.None_q(this));
// definition axiom for _module.Option.IsFailure for all literals (revealed)
axiom {:id "id301"} 0 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, this: DatatypeType :: 
    {:weight 3} { _module.Option.IsFailure(_module.Option$T, Lit(this)) } 
    _module.Option.IsFailure#canCall(_module.Option$T, Lit(this))
         || (0 < $FunctionContextHeight
           && $Is(this, Tclass._module.Option(_module.Option$T)))
       ==> _module.Option.IsFailure(_module.Option$T, Lit(this))
         == Lit(_module.Option.None_q(Lit(this))));
}

function _module.Option.IsFailure#canCall(_module.Option$T: Ty, this: DatatypeType) : bool;

function _module.Option.IsFailure#requires(Ty, DatatypeType) : bool;

// #requires axiom for _module.Option.IsFailure
axiom (forall _module.Option$T: Ty, this: DatatypeType :: 
  { _module.Option.IsFailure#requires(_module.Option$T, this) } 
  $Is(this, Tclass._module.Option(_module.Option$T))
     ==> _module.Option.IsFailure#requires(_module.Option$T, this) == true);

procedure {:verboseName "Option.IsFailure (well-formedness)"} CheckWellformed$$_module.Option.IsFailure(_module.Option$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Option(_module.Option$T))
         && $IsAlloc(this, Tclass._module.Option(_module.Option$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Option.PropagateFailure
function _module.Option.PropagateFailure(_module.Option$T: Ty, _module.Option.PropagateFailure$U: Ty, this: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.Option.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, _module.Option.PropagateFailure$U: Ty, this: DatatypeType :: 
    { _module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, this) } 
    _module.Option.PropagateFailure#canCall(_module.Option$T, _module.Option.PropagateFailure$U, this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Option(_module.Option$T))
           && _module.Option.None_q(this))
       ==> $Is(_module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, this), 
        Tclass._module.Option(_module.Option.PropagateFailure$U)));
// alloc consequence axiom for _module.Option.PropagateFailure
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module.Option$T: Ty, 
      _module.Option.PropagateFailure$U: Ty, 
      this: DatatypeType :: 
    { $IsAlloc(_module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, this), 
        Tclass._module.Option(_module.Option.PropagateFailure$U), 
        $Heap) } 
    (_module.Option.PropagateFailure#canCall(_module.Option$T, _module.Option.PropagateFailure$U, this)
           || (1 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.Option(_module.Option$T), $Heap)
             && _module.Option.None_q(this)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, this), 
        Tclass._module.Option(_module.Option.PropagateFailure$U), 
        $Heap));
// definition axiom for _module.Option.PropagateFailure (revealed)
axiom {:id "id303"} 1 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, _module.Option.PropagateFailure$U: Ty, this: DatatypeType :: 
    { _module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, this) } 
    _module.Option.PropagateFailure#canCall(_module.Option$T, _module.Option.PropagateFailure$U, this)
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Option(_module.Option$T))
           && _module.Option.None_q(this))
       ==> _module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, this)
         == Lit(#_module.Option.None()));
// definition axiom for _module.Option.PropagateFailure for all literals (revealed)
axiom {:id "id304"} 1 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, _module.Option.PropagateFailure$U: Ty, this: DatatypeType :: 
    {:weight 3} { _module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, Lit(this)) } 
    _module.Option.PropagateFailure#canCall(_module.Option$T, _module.Option.PropagateFailure$U, Lit(this))
         || (1 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Option(_module.Option$T))
           && Lit(_module.Option.None_q(Lit(this))))
       ==> _module.Option.PropagateFailure(_module.Option$T, _module.Option.PropagateFailure$U, Lit(this))
         == Lit(#_module.Option.None()));
}

function _module.Option.PropagateFailure#canCall(_module.Option$T: Ty, _module.Option.PropagateFailure$U: Ty, this: DatatypeType)
   : bool;

function _module.Option.PropagateFailure#requires(Ty, Ty, DatatypeType) : bool;

// #requires axiom for _module.Option.PropagateFailure
axiom (forall _module.Option$T: Ty, _module.Option.PropagateFailure$U: Ty, this: DatatypeType :: 
  { _module.Option.PropagateFailure#requires(_module.Option$T, _module.Option.PropagateFailure$U, this) } 
  $Is(this, Tclass._module.Option(_module.Option$T))
     ==> _module.Option.PropagateFailure#requires(_module.Option$T, _module.Option.PropagateFailure$U, this)
       == _module.Option.None_q(this));

procedure {:verboseName "Option.PropagateFailure (well-formedness)"} CheckWellformed$$_module.Option.PropagateFailure(_module.Option$T: Ty, 
    _module.Option.PropagateFailure$U: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Option(_module.Option$T))
         && $IsAlloc(this, Tclass._module.Option(_module.Option$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Option.Extract
function _module.Option.Extract(_module.Option$T: Ty, this: DatatypeType) : Box
uses {
// consequence axiom for _module.Option.Extract
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, this: DatatypeType :: 
    { _module.Option.Extract(_module.Option$T, this) } 
    _module.Option.Extract#canCall(_module.Option$T, this)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Option(_module.Option$T))
           && _module.Option.Some_q(this))
       ==> $IsBox(_module.Option.Extract(_module.Option$T, this), _module.Option$T));
// alloc consequence axiom for _module.Option.Extract
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.Option$T: Ty, this: DatatypeType :: 
    { $IsAllocBox(_module.Option.Extract(_module.Option$T, this), _module.Option$T, $Heap) } 
    (_module.Option.Extract#canCall(_module.Option$T, this)
           || (0 < $FunctionContextHeight
             && 
            $IsAlloc(this, Tclass._module.Option(_module.Option$T), $Heap)
             && _module.Option.Some_q(this)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.Option.Extract(_module.Option$T, this), _module.Option$T, $Heap));
// definition axiom for _module.Option.Extract (revealed)
axiom {:id "id307"} 0 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, this: DatatypeType :: 
    { _module.Option.Extract(_module.Option$T, this) } 
    _module.Option.Extract#canCall(_module.Option$T, this)
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Option(_module.Option$T))
           && _module.Option.Some_q(this))
       ==> _module.Option.Extract(_module.Option$T, this) == _module.Option.value(this));
// definition axiom for _module.Option.Extract for all literals (revealed)
axiom {:id "id308"} 0 <= $FunctionContextHeight
   ==> (forall _module.Option$T: Ty, this: DatatypeType :: 
    {:weight 3} { _module.Option.Extract(_module.Option$T, Lit(this)) } 
    _module.Option.Extract#canCall(_module.Option$T, Lit(this))
         || (0 < $FunctionContextHeight
           && 
          $Is(this, Tclass._module.Option(_module.Option$T))
           && Lit(_module.Option.Some_q(Lit(this))))
       ==> _module.Option.Extract(_module.Option$T, Lit(this))
         == Lit(_module.Option.value(Lit(this))));
}

function _module.Option.Extract#canCall(_module.Option$T: Ty, this: DatatypeType) : bool;

function _module.Option.Extract#requires(Ty, DatatypeType) : bool;

// #requires axiom for _module.Option.Extract
axiom (forall _module.Option$T: Ty, this: DatatypeType :: 
  { _module.Option.Extract#requires(_module.Option$T, this) } 
  $Is(this, Tclass._module.Option(_module.Option$T))
     ==> _module.Option.Extract#requires(_module.Option$T, this)
       == _module.Option.Some_q(this));

procedure {:verboseName "Option.Extract (well-formedness)"} CheckWellformed$$_module.Option.Extract(_module.Option$T: Ty, 
    this: DatatypeType
       where $Is(this, Tclass._module.Option(_module.Option$T))
         && $IsAlloc(this, Tclass._module.Option(_module.Option$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Option.Extract (well-formedness)"} CheckWellformed$$_module.Option.Extract(_module.Option$T: Ty, this: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id309"} _module.Option.Some_q(this);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.Option.Extract(_module.Option$T, this), _module.Option$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id310"} _module.Option.Some_q(this);
        assume {:id "id311"} _module.Option.Extract(_module.Option$T, this) == _module.Option.value(this);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(_module.Option.Extract(_module.Option$T, this), _module.Option$T);
        return;

        assume false;
    }
}



const unique class.MatchExpressions.__default: ClassName;

procedure {:verboseName "MatchExpressions.Test (well-formedness)"} CheckWellFormed$$MatchExpressions.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MatchExpressions.Test (call)"} Call$$MatchExpressions.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for MatchExpressions._default.TailRecursive
function MatchExpressions.__default.TailRecursive($ly: LayerType, o#0: DatatypeType, n#0: int) : int;

function MatchExpressions.__default.TailRecursive#canCall(o#0: DatatypeType, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.TailRecursive($LS($ly), o#0, n#0) } 
  MatchExpressions.__default.TailRecursive($LS($ly), o#0, n#0)
     == MatchExpressions.__default.TailRecursive($ly, o#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.TailRecursive(AsFuelBottom($ly), o#0, n#0) } 
  MatchExpressions.__default.TailRecursive($ly, o#0, n#0)
     == MatchExpressions.__default.TailRecursive($LZ, o#0, n#0));

function Tclass.MatchExpressions.AB() : Ty
uses {
// Tclass.MatchExpressions.AB Tag
axiom Tag(Tclass.MatchExpressions.AB()) == Tagclass.MatchExpressions.AB
   && TagFamily(Tclass.MatchExpressions.AB()) == tytagFamily$AB;
}

const unique Tagclass.MatchExpressions.AB: TyTag;

// Box/unbox axiom for Tclass.MatchExpressions.AB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MatchExpressions.AB()) } 
  $IsBox(bx, Tclass.MatchExpressions.AB())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MatchExpressions.AB()));

function MatchExpressions.__default.TailRecursive#requires(LayerType, DatatypeType, int) : bool;

// #requires axiom for MatchExpressions.__default.TailRecursive
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.TailRecursive#requires($ly, o#0, n#0) } 
  $Is(o#0, Tclass.MatchExpressions.AB()) && LitInt(0) <= n#0
     ==> MatchExpressions.__default.TailRecursive#requires($ly, o#0, n#0) == true);

// definition axiom for MatchExpressions.__default.TailRecursive (revealed)
axiom {:id "id312"} (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.TailRecursive($LS($ly), o#0, n#0) } 
  MatchExpressions.__default.TailRecursive#canCall(o#0, n#0)
       || ($Is(o#0, Tclass.MatchExpressions.AB()) && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0)
         ==> (MatchExpressions.AB.A_q(o#0)
             ==> MatchExpressions.__default.TailRecursive#canCall(o#0, n#0 - 1))
           && (!MatchExpressions.AB.A_q(o#0)
             ==> MatchExpressions.__default.TailRecursive#canCall(o#0, n#0 - 1)))
       && MatchExpressions.__default.TailRecursive($LS($ly), o#0, n#0)
         == (if n#0 == LitInt(0)
           then 6
           else (if MatchExpressions.AB.A_q(o#0)
             then MatchExpressions.__default.TailRecursive($ly, o#0, n#0 - 1)
             else MatchExpressions.__default.TailRecursive($ly, o#0, n#0 - 1))));

// definition axiom for MatchExpressions.__default.TailRecursive for all literals (revealed)
axiom {:id "id313"} (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  {:weight 3} { MatchExpressions.__default.TailRecursive($LS($ly), Lit(o#0), LitInt(n#0)) } 
  MatchExpressions.__default.TailRecursive#canCall(Lit(o#0), LitInt(n#0))
       || ($Is(o#0, Tclass.MatchExpressions.AB()) && LitInt(0) <= n#0)
     ==> (LitInt(n#0) != LitInt(0)
         ==> (Lit(MatchExpressions.AB.A_q(Lit(o#0)))
             ==> MatchExpressions.__default.TailRecursive#canCall(Lit(o#0), LitInt(n#0 - 1)))
           && (!Lit(MatchExpressions.AB.A_q(Lit(o#0)))
             ==> MatchExpressions.__default.TailRecursive#canCall(Lit(o#0), LitInt(n#0 - 1))))
       && MatchExpressions.__default.TailRecursive($LS($ly), Lit(o#0), LitInt(n#0))
         == (if LitInt(n#0) == LitInt(0)
           then 6
           else (if MatchExpressions.AB.A_q(Lit(o#0))
             then MatchExpressions.__default.TailRecursive($LS($ly), Lit(o#0), LitInt(n#0 - 1))
             else MatchExpressions.__default.TailRecursive($LS($ly), Lit(o#0), LitInt(n#0 - 1)))));

// function declaration for MatchExpressions._default.AutoAccumulator
function MatchExpressions.__default.AutoAccumulator($ly: LayerType, o#0: DatatypeType, n#0: int) : int;

function MatchExpressions.__default.AutoAccumulator#canCall(o#0: DatatypeType, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.AutoAccumulator($LS($ly), o#0, n#0) } 
  MatchExpressions.__default.AutoAccumulator($LS($ly), o#0, n#0)
     == MatchExpressions.__default.AutoAccumulator($ly, o#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.AutoAccumulator(AsFuelBottom($ly), o#0, n#0) } 
  MatchExpressions.__default.AutoAccumulator($ly, o#0, n#0)
     == MatchExpressions.__default.AutoAccumulator($LZ, o#0, n#0));

function MatchExpressions.__default.AutoAccumulator#requires(LayerType, DatatypeType, int) : bool;

// #requires axiom for MatchExpressions.__default.AutoAccumulator
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.AutoAccumulator#requires($ly, o#0, n#0) } 
  $Is(o#0, Tclass.MatchExpressions.AB()) && LitInt(0) <= n#0
     ==> MatchExpressions.__default.AutoAccumulator#requires($ly, o#0, n#0) == true);

// definition axiom for MatchExpressions.__default.AutoAccumulator (revealed)
axiom {:id "id314"} (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  { MatchExpressions.__default.AutoAccumulator($LS($ly), o#0, n#0) } 
  MatchExpressions.__default.AutoAccumulator#canCall(o#0, n#0)
       || ($Is(o#0, Tclass.MatchExpressions.AB()) && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0)
         ==> (MatchExpressions.AB.A_q(o#0)
             ==> MatchExpressions.__default.AutoAccumulator#canCall(o#0, n#0 - 1))
           && (!MatchExpressions.AB.A_q(o#0)
             ==> MatchExpressions.__default.AutoAccumulator#canCall(o#0, n#0 - 1)))
       && MatchExpressions.__default.AutoAccumulator($LS($ly), o#0, n#0)
         == (if n#0 == LitInt(0)
           then 6
           else (if MatchExpressions.AB.A_q(o#0)
             then MatchExpressions.__default.AutoAccumulator($ly, o#0, n#0 - 1) + 1
             else MatchExpressions.__default.AutoAccumulator($ly, o#0, n#0 - 1) + 1)));

// definition axiom for MatchExpressions.__default.AutoAccumulator for all literals (revealed)
axiom {:id "id315"} (forall $ly: LayerType, o#0: DatatypeType, n#0: int :: 
  {:weight 3} { MatchExpressions.__default.AutoAccumulator($LS($ly), Lit(o#0), LitInt(n#0)) } 
  MatchExpressions.__default.AutoAccumulator#canCall(Lit(o#0), LitInt(n#0))
       || ($Is(o#0, Tclass.MatchExpressions.AB()) && LitInt(0) <= n#0)
     ==> (LitInt(n#0) != LitInt(0)
         ==> (Lit(MatchExpressions.AB.A_q(Lit(o#0)))
             ==> MatchExpressions.__default.AutoAccumulator#canCall(Lit(o#0), LitInt(n#0 - 1)))
           && (!Lit(MatchExpressions.AB.A_q(Lit(o#0)))
             ==> MatchExpressions.__default.AutoAccumulator#canCall(Lit(o#0), LitInt(n#0 - 1))))
       && MatchExpressions.__default.AutoAccumulator($LS($ly), Lit(o#0), LitInt(n#0))
         == (if LitInt(n#0) == LitInt(0)
           then 6
           else (if MatchExpressions.AB.A_q(Lit(o#0))
             then MatchExpressions.__default.AutoAccumulator($LS($ly), Lit(o#0), LitInt(n#0 - 1))
               + 1
             else MatchExpressions.__default.AutoAccumulator($LS($ly), Lit(o#0), LitInt(n#0 - 1))
               + 1)));

// function declaration for MatchExpressions._default.LastCaseIsDisjunctive
function MatchExpressions.__default.LastCaseIsDisjunctive(o#0: DatatypeType) : int;

function MatchExpressions.__default.LastCaseIsDisjunctive#canCall(o#0: DatatypeType) : bool;

function Tclass.MatchExpressions.ABC() : Ty
uses {
// Tclass.MatchExpressions.ABC Tag
axiom Tag(Tclass.MatchExpressions.ABC()) == Tagclass.MatchExpressions.ABC
   && TagFamily(Tclass.MatchExpressions.ABC()) == tytagFamily$ABC;
}

const unique Tagclass.MatchExpressions.ABC: TyTag;

// Box/unbox axiom for Tclass.MatchExpressions.ABC
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MatchExpressions.ABC()) } 
  $IsBox(bx, Tclass.MatchExpressions.ABC())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MatchExpressions.ABC()));

function MatchExpressions.__default.LastCaseIsDisjunctive#requires(DatatypeType) : bool;

// #requires axiom for MatchExpressions.__default.LastCaseIsDisjunctive
axiom (forall o#0: DatatypeType :: 
  { MatchExpressions.__default.LastCaseIsDisjunctive#requires(o#0) } 
  $Is(o#0, Tclass.MatchExpressions.ABC())
     ==> MatchExpressions.__default.LastCaseIsDisjunctive#requires(o#0) == true);

// definition axiom for MatchExpressions.__default.LastCaseIsDisjunctive (revealed)
axiom {:id "id316"} (forall o#0: DatatypeType :: 
  { MatchExpressions.__default.LastCaseIsDisjunctive(o#0) } 
  MatchExpressions.__default.LastCaseIsDisjunctive#canCall(o#0)
       || $Is(o#0, Tclass.MatchExpressions.ABC())
     ==> MatchExpressions.__default.LastCaseIsDisjunctive(o#0)
       == (if MatchExpressions.ABC.AA_q(o#0)
         then 22
         else (if MatchExpressions.ABC.BB_q(o#0) then 22 else 777)));

// definition axiom for MatchExpressions.__default.LastCaseIsDisjunctive for all literals (revealed)
axiom {:id "id317"} (forall o#0: DatatypeType :: 
  {:weight 3} { MatchExpressions.__default.LastCaseIsDisjunctive(Lit(o#0)) } 
  MatchExpressions.__default.LastCaseIsDisjunctive#canCall(Lit(o#0))
       || $Is(o#0, Tclass.MatchExpressions.ABC())
     ==> MatchExpressions.__default.LastCaseIsDisjunctive(Lit(o#0))
       == (if MatchExpressions.ABC.AA_q(Lit(o#0))
         then 22
         else (if MatchExpressions.ABC.BB_q(Lit(o#0)) then 22 else 777)));

// function declaration for MatchExpressions._default.F
function MatchExpressions.__default.F($ly: LayerType, o#0: DatatypeType, n#0: int, m#0: int) : int;

function MatchExpressions.__default.F#canCall(o#0: DatatypeType, n#0: int, m#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int, m#0: int :: 
  { MatchExpressions.__default.F($LS($ly), o#0, n#0, m#0) } 
  MatchExpressions.__default.F($LS($ly), o#0, n#0, m#0)
     == MatchExpressions.__default.F($ly, o#0, n#0, m#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, o#0: DatatypeType, n#0: int, m#0: int :: 
  { MatchExpressions.__default.F(AsFuelBottom($ly), o#0, n#0, m#0) } 
  MatchExpressions.__default.F($ly, o#0, n#0, m#0)
     == MatchExpressions.__default.F($LZ, o#0, n#0, m#0));

function MatchExpressions.__default.F#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for MatchExpressions.__default.F
axiom (forall $ly: LayerType, $Heap: Heap, o#0: DatatypeType, n#0: int, m#0: int :: 
  { MatchExpressions.__default.F#requires($ly, o#0, n#0, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(o#0, Tclass.MatchExpressions.AB()) && LitInt(0) <= n#0
     ==> MatchExpressions.__default.F#requires($ly, o#0, n#0, m#0) == true);

// definition axiom for MatchExpressions.__default.F (revealed)
axiom {:id "id318"} (forall $ly: LayerType, $Heap: Heap, o#0: DatatypeType, n#0: int, m#0: int :: 
  { MatchExpressions.__default.F($LS($ly), o#0, n#0, m#0), $IsGoodHeap($Heap) } 
  MatchExpressions.__default.F#canCall(o#0, n#0, m#0)
       || (
        $IsGoodHeap($Heap)
         && $Is(o#0, Tclass.MatchExpressions.AB())
         && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0)
         ==> (n#0 == LitInt(1) ==> MatchExpressions.__default.F#canCall(o#0, n#0 - 1, m#0))
           && (n#0 != LitInt(1) ==> MatchExpressions.__default.F#canCall(o#0, n#0 - 1, m#0)))
       && MatchExpressions.__default.F($LS($ly), o#0, n#0, m#0)
         == (if n#0 == LitInt(0)
           then m#0
           else (if n#0 == LitInt(1)
             then (var ff#2 := Lit(AtLayer((lambda $l#9#ly#0: LayerType :: 
                      Handle0((lambda $l#9#heap#0: Heap :: 
                          $Box((if MatchExpressions.AB.A_q(o#0) then 20 else 999))), 
                        (lambda $l#9#heap#0: Heap :: true), 
                        (lambda $l#9#heap#0: Heap :: SetRef_to_SetBox((lambda $l#9#o#0: ref :: false))))), 
                    $ly)); 
              (var s#2 := $Unbox(Apply0(TInt, $Heap, ff#2)): int; 
                MatchExpressions.__default.F($ly, o#0, n#0 - 1, m#0)))
             else (var u#2 := (if MatchExpressions.AB.A_q(o#0) then 20 else 999); 
              MatchExpressions.__default.F($ly, o#0, n#0 - 1, m#0)))));

// definition axiom for MatchExpressions.__default.F for all literals (revealed)
axiom {:id "id319"} (forall $ly: LayerType, $Heap: Heap, o#0: DatatypeType, n#0: int, m#0: int :: 
  {:weight 3} { MatchExpressions.__default.F($LS($ly), Lit(o#0), LitInt(n#0), LitInt(m#0)), $IsGoodHeap($Heap) } 
  MatchExpressions.__default.F#canCall(Lit(o#0), LitInt(n#0), LitInt(m#0))
       || (
        $IsGoodHeap($Heap)
         && $Is(o#0, Tclass.MatchExpressions.AB())
         && LitInt(0) <= n#0)
     ==> (LitInt(n#0) != LitInt(0)
         ==> (LitInt(n#0) == LitInt(1)
             ==> MatchExpressions.__default.F#canCall(Lit(o#0), LitInt(n#0 - 1), LitInt(m#0)))
           && (LitInt(n#0) != LitInt(1)
             ==> MatchExpressions.__default.F#canCall(Lit(o#0), LitInt(n#0 - 1), LitInt(m#0))))
       && MatchExpressions.__default.F($LS($ly), Lit(o#0), LitInt(n#0), LitInt(m#0))
         == (if LitInt(n#0) == LitInt(0)
           then m#0
           else (if LitInt(n#0) == LitInt(1)
             then (var ff#3 := Lit(AtLayer((lambda $l#12#ly#0: LayerType :: 
                      Handle0((lambda $l#12#heap#0: Heap :: 
                          $Box((if MatchExpressions.AB.A_q(Lit(o#0)) then 20 else 999))), 
                        (lambda $l#12#heap#0: Heap :: true), 
                        (lambda $l#12#heap#0: Heap :: 
                          SetRef_to_SetBox((lambda $l#12#o#0: ref :: false))))), 
                    $LS($ly))); 
              (var s#3 := $Unbox(Apply0(TInt, $Heap, ff#3)): int; 
                LitInt(MatchExpressions.__default.F($LS($ly), Lit(o#0), LitInt(n#0 - 1), LitInt(m#0)))))
             else (var u#3 := (if MatchExpressions.AB.A_q(Lit(o#0)) then 20 else 999); 
              LitInt(MatchExpressions.__default.F($LS($ly), Lit(o#0), LitInt(n#0 - 1), LitInt(m#0)))))));

// Constructor function declaration
function #MatchExpressions.Color.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.Color.Red()) == ##MatchExpressions.Color.Red;
// Constructor $Is
axiom $Is(#MatchExpressions.Color.Red(), Tclass.MatchExpressions.Color());
// Constructor literal
axiom #MatchExpressions.Color.Red() == Lit(#MatchExpressions.Color.Red());
}

const unique ##MatchExpressions.Color.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.Color.Red()) == ##MatchExpressions.Color.Red;
}

function MatchExpressions.Color.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.Color.Red_q(d) } 
  MatchExpressions.Color.Red_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressions.Color.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.Color.Red_q(d) } 
  MatchExpressions.Color.Red_q(d) ==> d == #MatchExpressions.Color.Red());

function Tclass.MatchExpressions.Color() : Ty
uses {
// Tclass.MatchExpressions.Color Tag
axiom Tag(Tclass.MatchExpressions.Color()) == Tagclass.MatchExpressions.Color
   && TagFamily(Tclass.MatchExpressions.Color()) == tytagFamily$Color;
}

const unique Tagclass.MatchExpressions.Color: TyTag;

// Box/unbox axiom for Tclass.MatchExpressions.Color
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MatchExpressions.Color()) } 
  $IsBox(bx, Tclass.MatchExpressions.Color())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MatchExpressions.Color()));

// Constructor function declaration
function #MatchExpressions.Color.Green() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.Color.Green())
   == ##MatchExpressions.Color.Green;
// Constructor $Is
axiom $Is(#MatchExpressions.Color.Green(), Tclass.MatchExpressions.Color());
// Constructor literal
axiom #MatchExpressions.Color.Green() == Lit(#MatchExpressions.Color.Green());
}

const unique ##MatchExpressions.Color.Green: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.Color.Green())
   == ##MatchExpressions.Color.Green;
}

function MatchExpressions.Color.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.Color.Green_q(d) } 
  MatchExpressions.Color.Green_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressions.Color.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.Color.Green_q(d) } 
  MatchExpressions.Color.Green_q(d) ==> d == #MatchExpressions.Color.Green());

// Constructor function declaration
function #MatchExpressions.Color.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.Color.Blue()) == ##MatchExpressions.Color.Blue;
// Constructor $Is
axiom $Is(#MatchExpressions.Color.Blue(), Tclass.MatchExpressions.Color());
// Constructor literal
axiom #MatchExpressions.Color.Blue() == Lit(#MatchExpressions.Color.Blue());
}

const unique ##MatchExpressions.Color.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.Color.Blue()) == ##MatchExpressions.Color.Blue;
}

function MatchExpressions.Color.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.Color.Blue_q(d) } 
  MatchExpressions.Color.Blue_q(d)
     <==> DatatypeCtorId(d) == ##MatchExpressions.Color.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.Color.Blue_q(d) } 
  MatchExpressions.Color.Blue_q(d) ==> d == #MatchExpressions.Color.Blue());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MatchExpressions.Color(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MatchExpressions.Color())
     ==> $IsAlloc(d, Tclass.MatchExpressions.Color(), $h));

// Depth-one case-split function
function $IsA#MatchExpressions.Color(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MatchExpressions.Color(d) } 
  $IsA#MatchExpressions.Color(d)
     ==> MatchExpressions.Color.Red_q(d)
       || MatchExpressions.Color.Green_q(d)
       || MatchExpressions.Color.Blue_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MatchExpressions.Color.Blue_q(d), $Is(d, Tclass.MatchExpressions.Color()) } 
    { MatchExpressions.Color.Green_q(d), $Is(d, Tclass.MatchExpressions.Color()) } 
    { MatchExpressions.Color.Red_q(d), $Is(d, Tclass.MatchExpressions.Color()) } 
  $Is(d, Tclass.MatchExpressions.Color())
     ==> MatchExpressions.Color.Red_q(d)
       || MatchExpressions.Color.Green_q(d)
       || MatchExpressions.Color.Blue_q(d));

// Datatype extensional equality declaration
function MatchExpressions.Color#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MatchExpressions.Color.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.Color#Equal(a, b), MatchExpressions.Color.Red_q(a) } 
    { MatchExpressions.Color#Equal(a, b), MatchExpressions.Color.Red_q(b) } 
  MatchExpressions.Color.Red_q(a) && MatchExpressions.Color.Red_q(b)
     ==> MatchExpressions.Color#Equal(a, b));

// Datatype extensional equality definition: #MatchExpressions.Color.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.Color#Equal(a, b), MatchExpressions.Color.Green_q(a) } 
    { MatchExpressions.Color#Equal(a, b), MatchExpressions.Color.Green_q(b) } 
  MatchExpressions.Color.Green_q(a) && MatchExpressions.Color.Green_q(b)
     ==> MatchExpressions.Color#Equal(a, b));

// Datatype extensional equality definition: #MatchExpressions.Color.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.Color#Equal(a, b), MatchExpressions.Color.Blue_q(a) } 
    { MatchExpressions.Color#Equal(a, b), MatchExpressions.Color.Blue_q(b) } 
  MatchExpressions.Color.Blue_q(a) && MatchExpressions.Color.Blue_q(b)
     ==> MatchExpressions.Color#Equal(a, b));

// Datatype extensionality axiom: MatchExpressions.Color
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.Color#Equal(a, b) } 
  MatchExpressions.Color#Equal(a, b) <==> a == b);

const unique class.MatchExpressions.Color: ClassName;

// Constructor function declaration
function #MatchExpressions.AB.A() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.AB.A()) == ##MatchExpressions.AB.A;
// Constructor $Is
axiom $Is(#MatchExpressions.AB.A(), Tclass.MatchExpressions.AB());
// Constructor literal
axiom #MatchExpressions.AB.A() == Lit(#MatchExpressions.AB.A());
}

const unique ##MatchExpressions.AB.A: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.AB.A()) == ##MatchExpressions.AB.A;
}

function MatchExpressions.AB.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.AB.A_q(d) } 
  MatchExpressions.AB.A_q(d) <==> DatatypeCtorId(d) == ##MatchExpressions.AB.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.AB.A_q(d) } 
  MatchExpressions.AB.A_q(d) ==> d == #MatchExpressions.AB.A());

// Constructor function declaration
function #MatchExpressions.AB.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.AB.B()) == ##MatchExpressions.AB.B;
// Constructor $Is
axiom $Is(#MatchExpressions.AB.B(), Tclass.MatchExpressions.AB());
// Constructor literal
axiom #MatchExpressions.AB.B() == Lit(#MatchExpressions.AB.B());
}

const unique ##MatchExpressions.AB.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.AB.B()) == ##MatchExpressions.AB.B;
}

function MatchExpressions.AB.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.AB.B_q(d) } 
  MatchExpressions.AB.B_q(d) <==> DatatypeCtorId(d) == ##MatchExpressions.AB.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.AB.B_q(d) } 
  MatchExpressions.AB.B_q(d) ==> d == #MatchExpressions.AB.B());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MatchExpressions.AB(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MatchExpressions.AB())
     ==> $IsAlloc(d, Tclass.MatchExpressions.AB(), $h));

// Depth-one case-split function
function $IsA#MatchExpressions.AB(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MatchExpressions.AB(d) } 
  $IsA#MatchExpressions.AB(d)
     ==> MatchExpressions.AB.A_q(d) || MatchExpressions.AB.B_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MatchExpressions.AB.B_q(d), $Is(d, Tclass.MatchExpressions.AB()) } 
    { MatchExpressions.AB.A_q(d), $Is(d, Tclass.MatchExpressions.AB()) } 
  $Is(d, Tclass.MatchExpressions.AB())
     ==> MatchExpressions.AB.A_q(d) || MatchExpressions.AB.B_q(d));

// Datatype extensional equality declaration
function MatchExpressions.AB#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MatchExpressions.AB.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.AB#Equal(a, b), MatchExpressions.AB.A_q(a) } 
    { MatchExpressions.AB#Equal(a, b), MatchExpressions.AB.A_q(b) } 
  MatchExpressions.AB.A_q(a) && MatchExpressions.AB.A_q(b)
     ==> MatchExpressions.AB#Equal(a, b));

// Datatype extensional equality definition: #MatchExpressions.AB.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.AB#Equal(a, b), MatchExpressions.AB.B_q(a) } 
    { MatchExpressions.AB#Equal(a, b), MatchExpressions.AB.B_q(b) } 
  MatchExpressions.AB.B_q(a) && MatchExpressions.AB.B_q(b)
     ==> MatchExpressions.AB#Equal(a, b));

// Datatype extensionality axiom: MatchExpressions.AB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.AB#Equal(a, b) } 
  MatchExpressions.AB#Equal(a, b) <==> a == b);

const unique class.MatchExpressions.AB: ClassName;

// Constructor function declaration
function #MatchExpressions.ABC.AA() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.ABC.AA()) == ##MatchExpressions.ABC.AA;
// Constructor $Is
axiom $Is(#MatchExpressions.ABC.AA(), Tclass.MatchExpressions.ABC());
// Constructor literal
axiom #MatchExpressions.ABC.AA() == Lit(#MatchExpressions.ABC.AA());
}

const unique ##MatchExpressions.ABC.AA: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.ABC.AA()) == ##MatchExpressions.ABC.AA;
}

function MatchExpressions.ABC.AA_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.ABC.AA_q(d) } 
  MatchExpressions.ABC.AA_q(d) <==> DatatypeCtorId(d) == ##MatchExpressions.ABC.AA);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.ABC.AA_q(d) } 
  MatchExpressions.ABC.AA_q(d) ==> d == #MatchExpressions.ABC.AA());

// Constructor function declaration
function #MatchExpressions.ABC.BB() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.ABC.BB()) == ##MatchExpressions.ABC.BB;
// Constructor $Is
axiom $Is(#MatchExpressions.ABC.BB(), Tclass.MatchExpressions.ABC());
// Constructor literal
axiom #MatchExpressions.ABC.BB() == Lit(#MatchExpressions.ABC.BB());
}

const unique ##MatchExpressions.ABC.BB: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.ABC.BB()) == ##MatchExpressions.ABC.BB;
}

function MatchExpressions.ABC.BB_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.ABC.BB_q(d) } 
  MatchExpressions.ABC.BB_q(d) <==> DatatypeCtorId(d) == ##MatchExpressions.ABC.BB);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.ABC.BB_q(d) } 
  MatchExpressions.ABC.BB_q(d) ==> d == #MatchExpressions.ABC.BB());

// Constructor function declaration
function #MatchExpressions.ABC.CC() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.ABC.CC()) == ##MatchExpressions.ABC.CC;
// Constructor $Is
axiom $Is(#MatchExpressions.ABC.CC(), Tclass.MatchExpressions.ABC());
// Constructor literal
axiom #MatchExpressions.ABC.CC() == Lit(#MatchExpressions.ABC.CC());
}

const unique ##MatchExpressions.ABC.CC: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MatchExpressions.ABC.CC()) == ##MatchExpressions.ABC.CC;
}

function MatchExpressions.ABC.CC_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MatchExpressions.ABC.CC_q(d) } 
  MatchExpressions.ABC.CC_q(d) <==> DatatypeCtorId(d) == ##MatchExpressions.ABC.CC);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MatchExpressions.ABC.CC_q(d) } 
  MatchExpressions.ABC.CC_q(d) ==> d == #MatchExpressions.ABC.CC());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MatchExpressions.ABC(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MatchExpressions.ABC())
     ==> $IsAlloc(d, Tclass.MatchExpressions.ABC(), $h));

// Depth-one case-split function
function $IsA#MatchExpressions.ABC(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MatchExpressions.ABC(d) } 
  $IsA#MatchExpressions.ABC(d)
     ==> MatchExpressions.ABC.AA_q(d)
       || MatchExpressions.ABC.BB_q(d)
       || MatchExpressions.ABC.CC_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MatchExpressions.ABC.CC_q(d), $Is(d, Tclass.MatchExpressions.ABC()) } 
    { MatchExpressions.ABC.BB_q(d), $Is(d, Tclass.MatchExpressions.ABC()) } 
    { MatchExpressions.ABC.AA_q(d), $Is(d, Tclass.MatchExpressions.ABC()) } 
  $Is(d, Tclass.MatchExpressions.ABC())
     ==> MatchExpressions.ABC.AA_q(d)
       || MatchExpressions.ABC.BB_q(d)
       || MatchExpressions.ABC.CC_q(d));

// Datatype extensional equality declaration
function MatchExpressions.ABC#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MatchExpressions.ABC.AA
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.ABC#Equal(a, b), MatchExpressions.ABC.AA_q(a) } 
    { MatchExpressions.ABC#Equal(a, b), MatchExpressions.ABC.AA_q(b) } 
  MatchExpressions.ABC.AA_q(a) && MatchExpressions.ABC.AA_q(b)
     ==> MatchExpressions.ABC#Equal(a, b));

// Datatype extensional equality definition: #MatchExpressions.ABC.BB
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.ABC#Equal(a, b), MatchExpressions.ABC.BB_q(a) } 
    { MatchExpressions.ABC#Equal(a, b), MatchExpressions.ABC.BB_q(b) } 
  MatchExpressions.ABC.BB_q(a) && MatchExpressions.ABC.BB_q(b)
     ==> MatchExpressions.ABC#Equal(a, b));

// Datatype extensional equality definition: #MatchExpressions.ABC.CC
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.ABC#Equal(a, b), MatchExpressions.ABC.CC_q(a) } 
    { MatchExpressions.ABC#Equal(a, b), MatchExpressions.ABC.CC_q(b) } 
  MatchExpressions.ABC.CC_q(a) && MatchExpressions.ABC.CC_q(b)
     ==> MatchExpressions.ABC#Equal(a, b));

// Datatype extensionality axiom: MatchExpressions.ABC
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MatchExpressions.ABC#Equal(a, b) } 
  MatchExpressions.ABC#Equal(a, b) <==> a == b);

const unique class.MatchExpressions.ABC: ClassName;

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

const unique tytagFamily$Recur: TyTagFamily;

const unique tytagFamily$Or: TyTagFamily;

const unique tytagFamily$AB: TyTagFamily;

const unique tytagFamily$Option: TyTagFamily;

const unique tytagFamily$ABC: TyTagFamily;

const unique tytagFamily$Color: TyTagFamily;

const unique field$next: NameFamily;

const unique field$data: NameFamily;

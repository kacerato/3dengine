.class public final LR2/e$y;
.super LR2/e$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation


# static fields
.field public static final d:LR2/e$y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR2/e$y;

    invoke-direct {v0}, LR2/e$y;-><init>()V

    sput-object v0, LR2/e$y;->d:LR2/e$y;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, LR2/e$v;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    return p1
.end method

.method public B(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public C(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public E(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public F()LR2/e;
    .locals 1

    invoke-static {}, LR2/e;->c()LR2/e;

    move-result-object v0

    return-object v0
.end method

.method public I(LR2/e;)LR2/e;
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/e;

    return-object p1
.end method

.method public M(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public N(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public O(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public U(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public W(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(LR2/e;)LR2/e;
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public n(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    return p1
.end method

.method public o(Ljava/lang/CharSequence;I)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, LR2/H;->d0(II)I

    const/4 p1, -0x1

    return p1
.end method

.class public LV2/D$c;
.super LV2/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV2/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LV2/x<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public final a:LV2/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/T<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/T<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LV2/x;-><init>()V

    iput-object p1, p0, LV2/D$c;->a:LV2/T;

    return-void
.end method

.method public static synthetic S(LV2/D$c;)LV2/T;
    .locals 0

    iget-object p0, p0, LV2/D$c;->a:LV2/T;

    return-object p0
.end method


# virtual methods
.method public B(LV2/u;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-static {p1}, LV2/D;->q(LV2/u;)LV2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LV2/T;->B(LV2/u;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LV2/T;->C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/Object;)LV2/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LV2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p1

    iget-object v0, p0, LV2/D$c;->a:LV2/T;

    invoke-virtual {p1}, LV2/u;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, LV2/u;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, LV2/u;->k(LV2/T;Ljava/lang/Object;Ljava/lang/Object;)LV2/u;

    move-result-object p1

    return-object p1
.end method

.method public G(LV2/u;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-static {p1}, LV2/D;->q(LV2/u;)LV2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LV2/T;->G(LV2/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public K(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->v(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public R()LV2/T;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/T<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/D$c;->a:LV2/T;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/D$c;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/D$c;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LV2/T;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(LV2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-static {p1}, LV2/D;->q(LV2/u;)LV2/u;

    move-result-object p1

    invoke-interface {v0, p1}, LV2/T;->f(LV2/u;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->K(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/D$c;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p2, p1}, LV2/T;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

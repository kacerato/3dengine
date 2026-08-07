.class public final Lz1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u;


# instance fields
.field public final a:Lz1/k;

.field public final b:Lz1/j;

.field public final c:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/K;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/E;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lz1/p0;

.field public final g:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lz1/k;Lz1/E;Lz1/g;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lz1/j;->b:Lz1/j;

    iput-object p1, p0, Lz1/j;->a:Lz1/k;

    invoke-static {p1}, Lz1/k;->e(Lz1/k;)Lz1/p0;

    move-result-object p3

    new-instance v0, Lz1/L;

    invoke-direct {v0, p3}, Lz1/L;-><init>(Lz1/p0;)V

    invoke-static {v0}, Lz1/k0;->a(Lz1/p0;)Lz1/p0;

    move-result-object p3

    iput-object p3, p0, Lz1/j;->c:Lz1/p0;

    invoke-static {p2}, Lz1/m0;->a(Ljava/lang/Object;)Lz1/l0;

    move-result-object p2

    iput-object p2, p0, Lz1/j;->d:Lz1/p0;

    new-instance v0, Lz1/j0;

    invoke-direct {v0}, Lz1/j0;-><init>()V

    iput-object v0, p0, Lz1/j;->e:Lz1/p0;

    invoke-static {p1}, Lz1/k;->e(Lz1/k;)Lz1/p0;

    move-result-object v2

    invoke-static {}, Lz1/p;->a()Lz1/q;

    move-result-object v4

    invoke-static {}, Lz1/r;->a()Lz1/s;

    move-result-object v5

    invoke-static {p1}, Lz1/k;->f(Lz1/k;)Lz1/p0;

    move-result-object v6

    invoke-static {p1}, Lz1/k;->g(Lz1/k;)Lz1/p0;

    move-result-object v7

    invoke-static {p1}, Lz1/k;->h(Lz1/k;)Lz1/p0;

    move-result-object v9

    new-instance v10, Lz1/P;

    move-object v1, v10

    move-object v3, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lz1/P;-><init>(Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;)V

    iput-object v10, p0, Lz1/j;->f:Lz1/p0;

    invoke-static {}, Lz1/p;->a()Lz1/q;

    move-result-object v1

    new-instance v7, Lz1/J;

    invoke-direct {v7, p3, v1, v10}, Lz1/J;-><init>(Lz1/p0;Lz1/p0;Lz1/p0;)V

    iput-object v7, p0, Lz1/j;->g:Lz1/p0;

    invoke-static {p1}, Lz1/k;->e(Lz1/k;)Lz1/p0;

    move-result-object v2

    invoke-static {p1}, Lz1/k;->i(Lz1/k;)Lz1/p0;

    move-result-object v3

    invoke-static {p1}, Lz1/k;->h(Lz1/k;)Lz1/p0;

    move-result-object v5

    new-instance p1, Lz1/A;

    move-object v1, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lz1/A;-><init>(Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;)V

    invoke-static {p1}, Lz1/k0;->a(Lz1/p0;)Lz1/p0;

    move-result-object p1

    invoke-static {v0, p1}, Lz1/j0;->a(Lz1/p0;Lz1/p0;)V

    return-void
.end method


# virtual methods
.method public final zza()Lz1/z;
    .locals 1

    iget-object v0, p0, Lz1/j;->e:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/z;

    return-object v0
.end method

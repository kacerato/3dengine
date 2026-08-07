.class public final Lr1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lr1/l;

.field public b:Lr1/w;

.field public c:Lr1/n0;

.field public d:Lr1/t0;

.field public e:Lr1/B;

.field public f:Lr1/D;

.field public g:Lr1/p0;

.field public h:Lr1/G;

.field public i:Lr1/n;

.field public j:Lr1/I;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr1/a;)V
    .locals 1
    .param p1    # Lr1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lr1/a;->B()Lr1/l;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->a:Lr1/l;

    .line 3
    invoke-virtual {p1}, Lr1/a;->b0()Lr1/w;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->b:Lr1/w;

    invoke-virtual {p1}, Lr1/a;->c0()Lr1/n0;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->c:Lr1/n0;

    invoke-virtual {p1}, Lr1/a;->k0()Lr1/t0;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->d:Lr1/t0;

    invoke-virtual {p1}, Lr1/a;->n0()Lr1/B;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->e:Lr1/B;

    invoke-virtual {p1}, Lr1/a;->s0()Lr1/D;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->f:Lr1/D;

    invoke-virtual {p1}, Lr1/a;->e0()Lr1/p0;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->g:Lr1/p0;

    invoke-virtual {p1}, Lr1/a;->F0()Lr1/G;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->h:Lr1/G;

    invoke-virtual {p1}, Lr1/a;->A0()Lr1/n;

    move-result-object v0

    iput-object v0, p0, Lr1/a$a;->i:Lr1/n;

    invoke-virtual {p1}, Lr1/a;->G0()Lr1/I;

    move-result-object p1

    iput-object p1, p0, Lr1/a$a;->j:Lr1/I;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lr1/a;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v11, Lr1/a;

    iget-object v1, p0, Lr1/a$a;->a:Lr1/l;

    iget-object v2, p0, Lr1/a$a;->c:Lr1/n0;

    iget-object v3, p0, Lr1/a$a;->b:Lr1/w;

    iget-object v4, p0, Lr1/a$a;->d:Lr1/t0;

    iget-object v5, p0, Lr1/a$a;->e:Lr1/B;

    iget-object v6, p0, Lr1/a$a;->f:Lr1/D;

    iget-object v7, p0, Lr1/a$a;->g:Lr1/p0;

    iget-object v8, p0, Lr1/a$a;->h:Lr1/G;

    iget-object v9, p0, Lr1/a$a;->i:Lr1/n;

    iget-object v10, p0, Lr1/a$a;->j:Lr1/I;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lr1/a;-><init>(Lr1/l;Lr1/n0;Lr1/w;Lr1/t0;Lr1/B;Lr1/D;Lr1/p0;Lr1/G;Lr1/n;Lr1/I;)V

    return-object v11
.end method

.method public b(Lr1/l;)Lr1/a$a;
    .locals 0
    .param p1    # Lr1/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lr1/a$a;->a:Lr1/l;

    return-object p0
.end method

.method public c(Lr1/n;)Lr1/a$a;
    .locals 0
    .param p1    # Lr1/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lr1/a$a;->i:Lr1/n;

    return-object p0
.end method

.method public d(Lr1/w;)Lr1/a$a;
    .locals 0
    .param p1    # Lr1/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lr1/a$a;->b:Lr1/w;

    return-object p0
.end method

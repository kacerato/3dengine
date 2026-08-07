.class public final Lsg/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Lsg/l$b$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lsg/l$d$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build LFf/f0;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsg/l;->d:Lsg/l$c;

    invoke-virtual {v0}, Lsg/l$c;->a()Lsg/l;

    move-result-object v0

    invoke-virtual {v0}, Lsg/l;->e()Z

    move-result v0

    iput-boolean v0, p0, Lsg/l$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lsg/l;
    .locals 4
    .annotation build LFf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lsg/l;

    iget-boolean v1, p0, Lsg/l$a;->a:Z

    iget-object v2, p0, Lsg/l$a;->b:Lsg/l$b$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lsg/l$b$a;->a()Lsg/l$b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lsg/l$b;->j:Lsg/l$b$b;

    invoke-virtual {v2}, Lsg/l$b$b;->a()Lsg/l$b;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lsg/l$a;->c:Lsg/l$d$a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lsg/l$d$a;->a()Lsg/l$d;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lsg/l$d;->h:Lsg/l$d$b;

    invoke-virtual {v3}, Lsg/l$d$b;->a()Lsg/l$d;

    move-result-object v3

    :cond_3
    invoke-direct {v0, v1, v2, v3}, Lsg/l;-><init>(ZLsg/l$b;Lsg/l$d;)V

    return-object v0
.end method

.method public final b(Leg/l;)V
    .locals 1
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Lsg/l$b$a;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lsg/l$a;->c()Lsg/l$b$a;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Lsg/l$b$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/l$a;->b:Lsg/l$b$a;

    if-nez v0, :cond_0

    new-instance v0, Lsg/l$b$a;

    invoke-direct {v0}, Lsg/l$b$a;-><init>()V

    iput-object v0, p0, Lsg/l$a;->b:Lsg/l$b$a;

    :cond_0
    iget-object v0, p0, Lsg/l$a;->b:Lsg/l$b$a;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()Lsg/l$d$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/l$a;->c:Lsg/l$d$a;

    if-nez v0, :cond_0

    new-instance v0, Lsg/l$d$a;

    invoke-direct {v0}, Lsg/l$d$a;-><init>()V

    iput-object v0, p0, Lsg/l$a;->c:Lsg/l$d$a;

    :cond_0
    iget-object v0, p0, Lsg/l$a;->c:Lsg/l$d$a;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lsg/l$a;->a:Z

    return v0
.end method

.method public final f(Leg/l;)V
    .locals 1
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Lsg/l$d$a;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lsg/l$a;->d()Lsg/l$d$a;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lsg/l$a;->a:Z

    return-void
.end method

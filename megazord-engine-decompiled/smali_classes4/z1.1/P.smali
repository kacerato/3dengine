.class public final Lz1/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/l0<",
        "Lz1/O;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/K;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/u0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/l;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/z;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/p0<",
            "Landroid/app/Application;",
            ">;",
            "Lz1/p0<",
            "Lz1/K;",
            ">;",
            "Lz1/p0<",
            "Landroid/os/Handler;",
            ">;",
            "Lz1/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lz1/p0<",
            "Lz1/u0;",
            ">;",
            "Lz1/p0<",
            "Lz1/l;",
            ">;",
            "Lz1/p0<",
            "Lz1/z;",
            ">;",
            "Lz1/p0<",
            "Lz1/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/P;->a:Lz1/p0;

    iput-object p2, p0, Lz1/P;->b:Lz1/p0;

    iput-object p3, p0, Lz1/P;->c:Lz1/p0;

    iput-object p4, p0, Lz1/P;->d:Lz1/p0;

    iput-object p5, p0, Lz1/P;->e:Lz1/p0;

    iput-object p6, p0, Lz1/P;->f:Lz1/p0;

    iput-object p7, p0, Lz1/P;->g:Lz1/p0;

    iput-object p8, p0, Lz1/P;->h:Lz1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/P;->a()Lz1/O;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lz1/O;
    .locals 10

    iget-object v0, p0, Lz1/P;->a:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Lz1/P;->b:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lz1/K;

    sget-object v4, Lz1/h0;->a:Landroid/os/Handler;

    invoke-static {v4}, Lz1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lz1/h0;->b:Ljava/util/concurrent/Executor;

    invoke-static {v5}, Lz1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lz1/P;->e:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lz1/u0;

    iget-object v0, p0, Lz1/P;->f:Lz1/p0;

    check-cast v0, Lz1/m;

    invoke-virtual {v0}, Lz1/m;->a()Lz1/l;

    move-result-object v7

    iget-object v0, p0, Lz1/P;->g:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lz1/z;

    iget-object v0, p0, Lz1/P;->h:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lz1/n;

    new-instance v0, Lz1/O;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lz1/O;-><init>(Landroid/app/Application;Lz1/K;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lz1/u0;Lz1/l;Lz1/z;Lz1/n;)V

    return-object v0
.end method

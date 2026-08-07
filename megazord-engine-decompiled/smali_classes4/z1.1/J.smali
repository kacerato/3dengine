.class public final Lz1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/l0<",
        "Lz1/I;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/K;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/O;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/p0;Lz1/p0;Lz1/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/p0<",
            "Lz1/K;",
            ">;",
            "Lz1/p0<",
            "Landroid/os/Handler;",
            ">;",
            "Lz1/p0<",
            "Lz1/O;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/J;->a:Lz1/p0;

    iput-object p2, p0, Lz1/J;->b:Lz1/p0;

    iput-object p3, p0, Lz1/J;->c:Lz1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/J;->a()Lz1/I;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lz1/I;
    .locals 4

    iget-object v0, p0, Lz1/J;->a:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/K;

    sget-object v1, Lz1/h0;->a:Landroid/os/Handler;

    invoke-static {v1}, Lz1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lz1/J;->c:Lz1/p0;

    check-cast v2, Lz1/P;

    invoke-virtual {v2}, Lz1/P;->a()Lz1/O;

    move-result-object v2

    new-instance v3, Lz1/I;

    invoke-direct {v3, v0, v1, v2}, Lz1/I;-><init>(Lz1/K;Landroid/os/Handler;Lz1/O;)V

    return-object v3
.end method

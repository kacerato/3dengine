.class public final Lz1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/l0<",
        "Lz1/z;",
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
            "Lz1/d;",
            ">;"
        }
    .end annotation
.end field

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
            "Lz1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/E;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;Lz1/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/p0<",
            "Landroid/app/Application;",
            ">;",
            "Lz1/p0<",
            "Lz1/d;",
            ">;",
            "Lz1/p0<",
            "Lz1/K;",
            ">;",
            "Lz1/p0<",
            "Lz1/n;",
            ">;",
            "Lz1/p0<",
            "Lz1/E;",
            ">;",
            "Lz1/p0<",
            "Lz1/I;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/A;->a:Lz1/p0;

    iput-object p2, p0, Lz1/A;->b:Lz1/p0;

    iput-object p3, p0, Lz1/A;->c:Lz1/p0;

    iput-object p4, p0, Lz1/A;->d:Lz1/p0;

    iput-object p5, p0, Lz1/A;->e:Lz1/p0;

    iput-object p6, p0, Lz1/A;->f:Lz1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lz1/A;->a:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Lz1/A;->b:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lz1/d;

    iget-object v0, p0, Lz1/A;->c:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lz1/K;

    iget-object v0, p0, Lz1/A;->d:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lz1/n;

    iget-object v0, p0, Lz1/A;->e:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lz1/E;

    iget-object v7, p0, Lz1/A;->f:Lz1/p0;

    new-instance v0, Lz1/z;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lz1/z;-><init>(Landroid/app/Application;Lz1/d;Lz1/K;Lz1/n;Lz1/E;Lz1/p0;)V

    return-object v0
.end method

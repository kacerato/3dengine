.class public final Lz1/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/l0<",
        "Lz1/z0;",
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
            "Lz1/B;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/n;",
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
            "Landroid/app/Application;",
            ">;",
            "Lz1/p0<",
            "Lz1/B;",
            ">;",
            "Lz1/p0<",
            "Lz1/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/E0;->a:Lz1/p0;

    iput-object p2, p0, Lz1/E0;->b:Lz1/p0;

    iput-object p3, p0, Lz1/E0;->c:Lz1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/E0;->a()Lz1/z0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lz1/z0;
    .locals 4

    iget-object v0, p0, Lz1/E0;->a:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lz1/E0;->b:Lz1/p0;

    check-cast v1, Lz1/d0;

    invoke-virtual {v1}, Lz1/d0;->a()Lz1/B;

    move-result-object v1

    iget-object v2, p0, Lz1/E0;->c:Lz1/p0;

    invoke-interface {v2}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/n;

    new-instance v3, Lz1/z0;

    invoke-direct {v3, v0, v1, v2}, Lz1/z0;-><init>(Landroid/app/Application;Lz1/B;Lz1/n;)V

    return-object v3
.end method

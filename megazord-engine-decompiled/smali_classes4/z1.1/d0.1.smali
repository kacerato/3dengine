.class public final Lz1/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/l0<",
        "Lz1/B;",
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


# direct methods
.method public constructor <init>(Lz1/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/p0<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/d0;->a:Lz1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/d0;->a()Lz1/B;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lz1/B;
    .locals 2

    iget-object v0, p0, Lz1/d0;->a:Lz1/p0;

    invoke-interface {v0}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lz1/B;

    invoke-direct {v1, v0}, Lz1/B;-><init>(Landroid/app/Application;)V

    return-object v1
.end method

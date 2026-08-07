.class public final Lz1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/p0<",
        "Lz1/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz1/k;


# direct methods
.method public constructor <init>(Lz1/k;)V
    .locals 0

    iput-object p1, p0, Lz1/g;->a:Lz1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lz1/i;

    iget-object v1, p0, Lz1/g;->a:Lz1/k;

    invoke-static {v1}, Lz1/k;->d(Lz1/k;)Lz1/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/i;-><init>(Lz1/k;Lz1/g;)V

    return-object v0
.end method

.class public final Lz1/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/l0<",
        "Lz1/C;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/t;",
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
            "Lz1/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/D;->a:Lz1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic N1()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz1/D;->a:Lz1/p0;

    new-instance v1, Lz1/C;

    invoke-direct {v1, v0}, Lz1/C;-><init>(Lz1/p0;)V

    return-object v1
.end method

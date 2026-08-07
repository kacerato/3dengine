.class public Lye/m0$e;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Loe/J;",
        "Lre/u0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lye/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/m0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lye/m0;


# direct methods
.method public constructor <init>(Lye/m0;Lye/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/m0<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/m0$e;->f:Lye/m0;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, Lye/m0$e;->e:Lye/m0;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    invoke-virtual {p0}, Loe/J;->j()V

    return-void
.end method

.method public key()S
    .locals 2

    iget-object v0, p0, Lye/m0$e;->e:Lye/m0;

    iget-object v0, v0, Loe/h0;->q:[S

    iget v1, p0, Loe/J;->d:I

    aget-short v0, v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lye/m0$e;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lye/m0$e;->e:Lye/m0;

    iget-object v1, v1, Lye/m0;->v:[Ljava/lang/Object;

    iget v2, p0, Loe/J;->d:I

    aput-object p1, v1, v2

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lye/m0$e;->e:Lye/m0;

    iget-object v0, v0, Lye/m0;->v:[Ljava/lang/Object;

    iget v1, p0, Loe/J;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method

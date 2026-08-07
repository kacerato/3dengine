.class public Lye/x$e;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/x;
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
        "Lre/A<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lye/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/x<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lye/x;


# direct methods
.method public constructor <init>(Lye/x;Lye/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/x<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/x$e;->f:Lye/x;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, Lye/x$e;->e:Lye/x;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    invoke-virtual {p0}, Loe/J;->j()V

    return-void
.end method

.method public key()D
    .locals 3

    iget-object v0, p0, Lye/x$e;->e:Lye/x;

    iget-object v0, v0, Loe/v;->q:[D

    iget v1, p0, Loe/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lye/x$e;->value()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lye/x$e;->e:Lye/x;

    iget-object v1, v1, Lye/x;->v:[Ljava/lang/Object;

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

    iget-object v0, p0, Lye/x$e;->e:Lye/x;

    iget-object v0, v0, Lye/x;->v:[Ljava/lang/Object;

    iget v1, p0, Loe/J;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method

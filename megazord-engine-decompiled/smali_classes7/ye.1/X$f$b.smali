.class public Lye/X$f$b;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/X$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Loe/J;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lye/X;

.field public final synthetic f:Lye/X$f;


# direct methods
.method public constructor <init>(Lye/X$f;Lye/X;)V
    .locals 0

    iput-object p1, p0, Lye/X$f$b;->f:Lye/X$f;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, Lye/X$f$b;->e:Lye/X;

    return-void
.end method


# virtual methods
.method public k(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lye/X$f$b;->f:Lye/X$f;

    iget-object v0, v0, Lye/X$f;->c:Lye/X;

    iget-object v0, v0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/X$f$b;->e:Lye/X;

    iget-object v1, v1, Lye/X;->v:[Ljava/lang/Object;

    aget-object v1, v1, p1

    aget-byte p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, Lye/X$f$b;->e:Lye/X;

    iget-object v0, v0, Lye/X;->v:[Ljava/lang/Object;

    iget v1, p0, Loe/J;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method

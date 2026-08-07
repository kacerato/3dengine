.class public Lye/g$f;
.super Lye/g$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/g$f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lye/g<",
        "TV;>.d<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lye/g;


# direct methods
.method public constructor <init>(Lye/g;)V
    .locals 1

    iput-object p1, p0, Lye/g$f;->c:Lye/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lye/g$d;-><init>(Lye/g;Lye/g$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/g$f;->c:Lye/g;

    invoke-virtual {v0, p1}, Lye/g;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/g$f;->c:Lye/g;

    iget-object v1, v0, Lye/g;->v:[Ljava/lang/Object;

    iget-object v0, v0, Loe/c0;->l:[B

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    aget-object v2, v1, v3

    if-eq p1, v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object p1, p0, Lye/g$f;->c:Lye/g;

    invoke-virtual {p1, v3}, Lye/g;->ue(I)V

    return v4

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lye/g$f$a;

    iget-object v1, p0, Lye/g$f;->c:Lye/g;

    invoke-direct {v0, p0, v1}, Lye/g$f$a;-><init>(Lye/g$f;Lye/g;)V

    return-object v0
.end method

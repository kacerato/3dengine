.class public Lye/H$h;
.super Lye/H$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lye/H<",
        "TK;TV;>.g<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lye/H;


# direct methods
.method public constructor <init>(Lye/H;)V
    .locals 1

    iput-object p1, p0, Lye/H$h;->c:Lye/H;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lye/H$g;-><init>(Lye/H;Lye/H$a;)V

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

    iget-object v0, p0, Lye/H$h;->c:Lye/H;

    invoke-virtual {v0, p1}, Lye/H;->containsValue(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lye/H$h;->c:Lye/H;

    iget-object v1, v0, Lye/H;->q:[Ljava/lang/Object;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-object v2, v1, v3

    if-eq p1, v2, :cond_1

    :cond_0
    aget-object v2, v1, v3

    if-eqz v2, :cond_2

    iget-object v4, p0, Lye/H$h;->c:Lye/H;

    invoke-static {v4, v2, p1}, Lye/H;->Te(Lye/H;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object p1, p0, Lye/H$h;->c:Lye/H;

    invoke-virtual {p1, v3}, Lye/H;->ue(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
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

    new-instance v0, Lye/H$h$a;

    iget-object v1, p0, Lye/H$h;->c:Lye/H;

    invoke-direct {v0, p0, v1}, Lye/H$h$a;-><init>(Lye/H$h;Loe/b0;)V

    return-object v0
.end method

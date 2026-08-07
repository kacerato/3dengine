.class public final LE1/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "LE1/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, LE1/d;

    check-cast p2, LE1/d;

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LE1/d;->B()I

    move-result v0

    invoke-virtual {p2}, LE1/d;->B()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-lt v0, v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, LE1/d;->b0()I

    move-result p1

    invoke-virtual {p2}, LE1/d;->b0()I

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-ge p1, p2, :cond_3

    :goto_0
    return v2

    :cond_3
    :goto_1
    return v3
.end method

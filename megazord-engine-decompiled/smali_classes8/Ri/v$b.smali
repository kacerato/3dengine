.class public LRi/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRi/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "LRi/v$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LRi/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LRi/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LRi/v$f;LRi/v$f;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "va",
            "vb"
        }
    .end annotation

    iget p1, p1, LRi/v$f;->a:I

    iget p2, p2, LRi/v$f;->a:I

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "va",
            "vb"
        }
    .end annotation

    check-cast p1, LRi/v$f;

    check-cast p2, LRi/v$f;

    invoke-virtual {p0, p1, p2}, LRi/v$b;->a(LRi/v$f;LRi/v$f;)I

    move-result p1

    return p1
.end method

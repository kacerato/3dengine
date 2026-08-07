.class public final Lef/u0;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/u0$a;,
        Lef/u0$c;,
        Lef/u0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LTe/y<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LTe/y;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/y<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/u0;->b:[LTe/y;

    iput-object p2, p0, Lef/u0;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/u0;->b:[LTe/y;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, Lef/W$a;

    new-instance v2, Lef/u0$a;

    invoke-direct {v2, p0}, Lef/u0$a;-><init>(Lef/u0;)V

    invoke-direct {v1, p1, v2}, Lef/W$a;-><init>(LTe/v;LXe/o;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void

    :cond_0
    new-instance v2, Lef/u0$b;

    iget-object v4, p0, Lef/u0;->c:LXe/o;

    invoke-direct {v2, p1, v1, v4}, Lef/u0$b;-><init>(LTe/v;ILXe/o;)V

    invoke-interface {p1, v2}, LTe/v;->e(LVe/c;)V

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2}, Lef/u0$b;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    aget-object p1, v0, v3

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lef/u0$b;->c(Ljava/lang/Throwable;I)V

    return-void

    :cond_2
    iget-object v4, v2, Lef/u0$b;->d:[Lef/u0$c;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, LTe/y;->d(LTe/v;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

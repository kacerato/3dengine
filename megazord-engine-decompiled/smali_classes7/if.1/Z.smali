.class public final Lif/Z;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/Z$a;,
        Lif/Z$c;,
        Lif/Z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LTe/Q<",
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
.method public constructor <init>([LTe/Q;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/Q<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/Z;->b:[LTe/Q;

    iput-object p2, p0, Lif/Z;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/Z;->b:[LTe/Q;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, Lif/K$a;

    new-instance v2, Lif/Z$a;

    invoke-direct {v2, p0}, Lif/Z$a;-><init>(Lif/Z;)V

    invoke-direct {v1, p1, v2}, Lif/K$a;-><init>(LTe/N;LXe/o;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void

    :cond_0
    new-instance v2, Lif/Z$b;

    iget-object v4, p0, Lif/Z;->c:LXe/o;

    invoke-direct {v2, p1, v1, v4}, Lif/Z$b;-><init>(LTe/N;ILXe/o;)V

    invoke-interface {p1, v2}, LTe/N;->e(LVe/c;)V

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2}, Lif/Z$b;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    aget-object p1, v0, v3

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lif/Z$b;->b(Ljava/lang/Throwable;I)V

    return-void

    :cond_2
    iget-object v4, v2, Lif/Z$b;->d:[Lif/Z$c;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, LTe/Q;->a(LTe/N;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.class public final Lhf/g;
.super Lpf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:[LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lpf/b;-><init>()V

    iput-object p1, p0, Lhf/g;->a:[LCi/b;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lhf/g;->a:[LCi/b;

    array-length v0, v0

    return v0
.end method

.method public Q([LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lpf/b;->U([LCi/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lhf/g;->a:[LCi/b;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, LCi/b;->l(LCi/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

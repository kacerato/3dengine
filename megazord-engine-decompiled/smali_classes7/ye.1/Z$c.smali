.class public Lye/Z$c;
.super Lye/Z$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lye/Z<",
        "TK;>.d<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lye/Z;


# direct methods
.method public constructor <init>(Lye/Z;)V
    .locals 1

    iput-object p1, p0, Lye/Z$c;->c:Lye/Z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lye/Z$d;-><init>(Lye/Z;Lye/Z$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/Z$c;->c:Lye/Z;

    invoke-virtual {v0, p1}, Loe/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/Z$c;->c:Lye/Z;

    iget-byte v1, v0, Lye/Z;->s:B

    invoke-virtual {v0, p1}, Lye/Z;->remove(Ljava/lang/Object;)B

    move-result p1

    if-eq v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lse/a;

    iget-object v1, p0, Lye/Z$c;->c:Lye/Z;

    invoke-direct {v0, v1}, Lse/a;-><init>(Loe/b0;)V

    return-object v0
.end method

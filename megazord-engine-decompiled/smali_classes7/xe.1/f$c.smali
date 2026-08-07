.class public Lxe/f$c;
.super Lxe/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxe/f<",
        "TK;>.d<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lxe/f;


# direct methods
.method public constructor <init>(Lxe/f;)V
    .locals 1

    iput-object p1, p0, Lxe/f$c;->c:Lxe/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxe/f$d;-><init>(Lxe/f;Lxe/f$a;)V

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

    iget-object v0, p0, Lxe/f$c;->c:Lxe/f;

    invoke-virtual {v0, p1}, Loe/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lxe/f$c;->c:Lxe/f;

    iget-wide v1, v0, Lxe/f;->u:J

    invoke-virtual {v0, p1}, Lxe/f;->remove(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

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

    iget-object v1, p0, Lxe/f$c;->c:Lxe/f;

    invoke-direct {v0, v1}, Lse/a;-><init>(Loe/b0;)V

    return-object v0
.end method

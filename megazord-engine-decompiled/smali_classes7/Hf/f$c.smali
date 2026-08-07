.class public final LHf/f$c;
.super LHf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHf/f;->k()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHf/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LHf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHf/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LHf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHf/f<",
            "TK;+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, LHf/f$c;->b:LHf/f;

    invoke-direct {p0}, LHf/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, LHf/f$c;->b:LHf/f;

    invoke-virtual {v0}, LHf/f;->size()I

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LHf/f$c;->b:LHf/f;

    invoke-virtual {v0, p1}, LHf/f;->containsValue(Ljava/lang/Object;)Z

    move-result p1

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

    iget-object v0, p0, LHf/f$c;->b:LHf/f;

    invoke-virtual {v0}, LHf/f;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LHf/f$c$a;

    invoke-direct {v1, v0}, LHf/f$c$a;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

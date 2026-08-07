.class public final LHf/f$b;
.super LHf/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHf/f;->i()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHf/k<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:LHf/f;
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

    iput-object p1, p0, LHf/f$b;->c:LHf/f;

    invoke-direct {p0}, LHf/k;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, LHf/f$b;->c:LHf/f;

    invoke-virtual {v0}, LHf/f;->size()I

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LHf/f$b;->c:LHf/f;

    invoke-virtual {v0, p1}, LHf/f;->containsKey(Ljava/lang/Object;)Z

    move-result p1

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

    iget-object v0, p0, LHf/f$b;->c:LHf/f;

    invoke-virtual {v0}, LHf/f;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LHf/f$b$a;

    invoke-direct {v1, v0}, LHf/f$b$a;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

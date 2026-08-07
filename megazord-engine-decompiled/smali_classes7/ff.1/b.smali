.class public final Lff/b;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/i;

.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/i;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/i;",
            "LCi/b<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lff/b;->c:LTe/i;

    iput-object p2, p0, Lff/b;->d:LCi/b;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/b;->c:LTe/i;

    new-instance v1, Lff/b$a;

    iget-object v2, p0, Lff/b;->d:LCi/b;

    invoke-direct {v1, p1, v2}, Lff/b$a;-><init>(LCi/c;LCi/b;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

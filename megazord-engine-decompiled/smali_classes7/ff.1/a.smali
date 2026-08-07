.class public final Lff/a;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/i;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/i;",
            "LTe/G<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lff/a;->b:LTe/i;

    iput-object p2, p0, Lff/a;->c:LTe/G;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lff/a$a;

    iget-object v1, p0, Lff/a;->c:LTe/G;

    invoke-direct {v0, p1, v1}, Lff/a$a;-><init>(LTe/I;LTe/G;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lff/a;->b:LTe/i;

    invoke-interface {p1, v0}, LTe/i;->b(LTe/f;)V

    return-void
.end method

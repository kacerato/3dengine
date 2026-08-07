.class public final Lcf/J;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/J$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/i;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/i;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/J;->b:LTe/i;

    iput-object p2, p0, Lcf/J;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    new-instance v0, Lcf/J$a;

    iget-object v1, p0, Lcf/J;->c:LXe/o;

    invoke-direct {v0, p1, v1}, Lcf/J$a;-><init>(LTe/f;LXe/o;)V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    iget-object p1, p0, Lcf/J;->b:LTe/i;

    invoke-interface {p1, v0}, LTe/i;->b(LTe/f;)V

    return-void
.end method

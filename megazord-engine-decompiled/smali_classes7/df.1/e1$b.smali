.class public final Ldf/e1$b;
.super LWe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LWe/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LWe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LWe/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LWe/a;LTe/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LWe/a<",
            "TT;>;",
            "LTe/l<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LWe/a;-><init>()V

    iput-object p1, p0, Ldf/e1$b;->c:LWe/a;

    iput-object p2, p0, Ldf/e1$b;->d:LTe/l;

    return-void
.end method


# virtual methods
.method public S8(LXe/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/e1$b;->c:LWe/a;

    invoke-virtual {v0, p1}, LWe/a;->S8(LXe/g;)V

    return-void
.end method

.method public m6(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/e1$b;->d:LTe/l;

    invoke-virtual {v0, p1}, LTe/l;->l(LCi/c;)V

    return-void
.end method

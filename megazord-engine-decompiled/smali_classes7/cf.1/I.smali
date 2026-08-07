.class public final Lcf/I;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/I$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LXe/a;

.field public final f:LXe/a;

.field public final g:LXe/a;

.field public final h:LXe/a;


# direct methods
.method public constructor <init>(LTe/i;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/i;",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/a;",
            "LXe/a;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/I;->b:LTe/i;

    iput-object p2, p0, Lcf/I;->c:LXe/g;

    iput-object p3, p0, Lcf/I;->d:LXe/g;

    iput-object p4, p0, Lcf/I;->e:LXe/a;

    iput-object p5, p0, Lcf/I;->f:LXe/a;

    iput-object p6, p0, Lcf/I;->g:LXe/a;

    iput-object p7, p0, Lcf/I;->h:LXe/a;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lcf/I;->b:LTe/i;

    new-instance v1, Lcf/I$a;

    invoke-direct {v1, p0, p1}, Lcf/I$a;-><init>(Lcf/I;LTe/f;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

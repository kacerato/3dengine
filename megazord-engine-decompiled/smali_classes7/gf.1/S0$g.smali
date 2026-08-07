.class public final Lgf/S0$g;
.super Lnf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnf/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lnf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/B<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnf/a;LTe/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnf/a<",
            "TT;>;",
            "LTe/B<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnf/a;-><init>()V

    iput-object p1, p0, Lgf/S0$g;->b:Lnf/a;

    iput-object p2, p0, Lgf/S0$g;->c:LTe/B;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/S0$g;->c:LTe/B;

    invoke-virtual {v0, p1}, LTe/B;->b(LTe/I;)V

    return-void
.end method

.method public n8(LXe/g;)V
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

    iget-object v0, p0, Lgf/S0$g;->b:Lnf/a;

    invoke-virtual {v0, p1}, Lnf/a;->n8(LXe/g;)V

    return-void
.end method

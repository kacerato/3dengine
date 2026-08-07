.class public final Lef/f;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:[LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LTe/y<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LTe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/y<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lef/f;->c:[LTe/y;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lef/f$a;

    iget-object v1, p0, Lef/f;->c:[LTe/y;

    invoke-direct {v0, p1, v1}, Lef/f$a;-><init>(LCi/c;[LTe/y;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v0}, Lef/f$a;->c()V

    return-void
.end method

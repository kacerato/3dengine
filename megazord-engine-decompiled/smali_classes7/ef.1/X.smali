.class public final Lef/X;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation build LUe/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "LTe/A<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/s<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/s<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lef/X;->b:LTe/s;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "LTe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/X;->b:LTe/s;

    new-instance v1, Lff/i;

    invoke-direct {v1, p1}, Lff/i;-><init>(LTe/N;)V

    invoke-virtual {v0, v1}, LTe/s;->d(LTe/v;)V

    return-void
.end method

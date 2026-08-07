.class public final Lcf/z;
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
.field public final b:LTe/c;


# direct methods
.method public constructor <init>(LTe/c;)V
    .locals 0

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lcf/z;->b:LTe/c;

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

    iget-object v0, p0, Lcf/z;->b:LTe/c;

    new-instance v1, Lff/i;

    invoke-direct {v1, p1}, Lff/i;-><init>(LTe/N;)V

    invoke-virtual {v0, v1}, LTe/c;->b(LTe/f;)V

    return-void
.end method

.class public final Lhf/h;
.super Lpf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(LCi/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "+TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lpf/b;-><init>()V

    iput-object p1, p0, Lhf/h;->a:LCi/b;

    iput p2, p0, Lhf/h;->b:I

    iput p3, p0, Lhf/h;->c:I

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lhf/h;->b:I

    return v0
.end method

.method public Q([LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lpf/b;->U([LCi/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhf/h;->a:LCi/b;

    new-instance v1, Lhf/h$a;

    iget v2, p0, Lhf/h;->c:I

    invoke-direct {v1, p1, v2}, Lhf/h$a;-><init>([LCi/c;I)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method

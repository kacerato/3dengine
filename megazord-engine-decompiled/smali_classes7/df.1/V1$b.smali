.class public final Ldf/V1$b;
.super Luf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/V1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Luf/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field public final c:Ldf/V1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/V1$c<",
            "TT;TB;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf/V1$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/V1$c<",
            "TT;TB;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Luf/b;-><init>()V

    iput-object p1, p0, Ldf/V1$b;->c:Ldf/V1$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldf/V1$b;->c:Ldf/V1$c;

    invoke-virtual {v0}, Ldf/V1$c;->a()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/V1$b;->c:Ldf/V1$c;

    invoke-virtual {v0, p1}, Ldf/V1$c;->w(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/V1$b;->c:Ldf/V1$c;

    invoke-virtual {v0, p1}, Ldf/V1$c;->v(Ljava/lang/Throwable;)V

    return-void
.end method

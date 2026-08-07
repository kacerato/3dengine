.class public final Ldf/W1$a;
.super Luf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/W1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.field public final c:Ldf/W1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/W1$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Ldf/W1$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/W1$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Luf/b;-><init>()V

    iput-object p1, p0, Ldf/W1$a;->c:Ldf/W1$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Ldf/W1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/W1$a;->d:Z

    iget-object v0, p0, Ldf/W1$a;->c:Ldf/W1$b;

    invoke-virtual {v0}, Ldf/W1$b;->d()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-boolean p1, p0, Ldf/W1$a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/W1$a;->d:Z

    invoke-virtual {p0}, Luf/b;->dispose()V

    iget-object p1, p0, Ldf/W1$a;->c:Ldf/W1$b;

    invoke-virtual {p1, p0}, Ldf/W1$b;->f(Ldf/W1$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/W1$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/W1$a;->d:Z

    iget-object v0, p0, Ldf/W1$a;->c:Ldf/W1$b;

    invoke-virtual {v0, p1}, Ldf/W1$b;->e(Ljava/lang/Throwable;)V

    return-void
.end method

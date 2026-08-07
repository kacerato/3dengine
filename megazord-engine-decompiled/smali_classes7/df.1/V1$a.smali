.class public final Ldf/V1$a;
.super Luf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/V1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Luf/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final c:Ldf/V1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/V1$c<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field public final d:Lrf/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Ldf/V1$c;Lrf/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/V1$c<",
            "TT;*TV;>;",
            "Lrf/h<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Luf/b;-><init>()V

    iput-object p1, p0, Ldf/V1$a;->c:Ldf/V1$c;

    iput-object p2, p0, Ldf/V1$a;->d:Lrf/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Ldf/V1$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/V1$a;->e:Z

    iget-object v0, p0, Ldf/V1$a;->c:Ldf/V1$c;

    invoke-virtual {v0, p0}, Ldf/V1$c;->s(Ldf/V1$a;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Luf/b;->b()V

    invoke-virtual {p0}, Ldf/V1$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/V1$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/V1$a;->e:Z

    iget-object v0, p0, Ldf/V1$a;->c:Ldf/V1$c;

    invoke-virtual {v0, p1}, Ldf/V1$c;->v(Ljava/lang/Throwable;)V

    return-void
.end method

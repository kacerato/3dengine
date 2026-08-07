.class public final Ldf/d$a;
.super Luf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Luf/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Luf/a;-><init>()V

    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldf/d$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lio/reactivex/internal/util/p;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldf/d$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public e()Ldf/d$a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf/d$a<",
            "TT;>.a;"
        }
    .end annotation

    new-instance v0, Ldf/d$a$a;

    invoke-direct {v0, p0}, Ldf/d$a$a;-><init>(Ldf/d$a;)V

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldf/d$a;->c:Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/internal/util/p;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldf/d$a;->c:Ljava/lang/Object;

    return-void
.end method

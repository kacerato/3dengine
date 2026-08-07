.class public final Lyg/j$k$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/j$k;->c(LHg/m;Ljava/lang/Object;Ljava/lang/Object;)Leg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/l<",
        "Ljava/lang/Throwable;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/j<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic d:LHg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHg/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lyg/j;LHg/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lyg/j<",
            "TE;>;",
            "LHg/m<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/j$k$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lyg/j$k$a;->c:Lyg/j;

    iput-object p3, p0, Lyg/j$k$a;->d:LHg/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lyg/j$k$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lyg/j$k$a;->b:Ljava/lang/Object;

    invoke-static {}, Lyg/k;->z()LEg/T;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lyg/j$k$a;->c:Lyg/j;

    iget-object p1, p1, Lyg/j;->c:Leg/l;

    iget-object v0, p0, Lyg/j$k$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lyg/j$k$a;->d:LHg/m;

    invoke-interface {v1}, LHg/m;->getContext()LQf/j;

    move-result-object v1

    invoke-static {p1, v0, v1}, LEg/J;->b(Leg/l;Ljava/lang/Object;LQf/j;)V

    :cond_0
    return-void
.end method

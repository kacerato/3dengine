.class public abstract LQf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j$c;


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation build LFf/w;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "LQf/j$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "LQf/j$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "LQf/j$b;",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LQf/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j$c;Leg/l;)V
    .locals 1
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$c<",
            "TB;>;",
            "Leg/l<",
            "-",
            "LQf/j$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LQf/b;->b:Leg/l;

    instance-of p2, p1, LQf/b;

    if-eqz p2, :cond_0

    check-cast p1, LQf/b;

    iget-object p1, p1, LQf/b;->c:LQf/j$c;

    :cond_0
    iput-object p1, p0, LQf/b;->c:LQf/j$c;

    return-void
.end method


# virtual methods
.method public final a(LQf/j$c;)Z
    .locals 1
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$c<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LQf/b;->c:LQf/j$c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(LQf/j$b;)LQf/j$b;
    .locals 1
    .param p1    # LQf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$b;",
            ")TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQf/b;->b:Leg/l;

    invoke-interface {v0, p1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQf/j$b;

    return-object p1
.end method

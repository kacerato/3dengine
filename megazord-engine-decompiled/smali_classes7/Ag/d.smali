.class public final LAg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation


# instance fields
.field public final a:LQf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:LTf/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:LTf/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LAg/e;LQf/j;)V
    .locals 2
    .param p1    # LAg/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LAg/d;->a:LQf/j;

    invoke-virtual {p1}, LAg/e;->d()LAg/m;

    move-result-object p2

    iput-object p2, p0, LAg/d;->b:LTf/e;

    iget-wide v0, p1, LAg/e;->b:J

    iput-wide v0, p0, LAg/d;->c:J

    invoke-virtual {p1}, LAg/e;->e()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, LAg/d;->d:Ljava/util/List;

    invoke-virtual {p1}, LAg/e;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LAg/d;->e:Ljava/lang/String;

    iget-object p2, p1, LAg/e;->lastObservedThread:Ljava/lang/Thread;

    iput-object p2, p0, LAg/d;->f:Ljava/lang/Thread;

    invoke-virtual {p1}, LAg/e;->f()LTf/e;

    move-result-object p2

    iput-object p2, p0, LAg/d;->g:LTf/e;

    invoke-virtual {p1}, LAg/e;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LAg/d;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LAg/d;->a:LQf/j;

    return-object v0
.end method

.method public final b()LTf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LAg/d;->b:LTf/e;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LAg/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()LTf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LAg/d;->g:LTf/e;

    return-object v0
.end method

.method public final e()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LAg/d;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, LAg/d;->c:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LAg/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "lastObservedStackTrace"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LAg/d;->h:Ljava/util/List;

    return-object v0
.end method

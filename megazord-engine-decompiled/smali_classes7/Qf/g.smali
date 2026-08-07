.class public interface abstract LQf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j$b;


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQf/g$a;,
        LQf/g$b;
    }
.end annotation


# static fields
.field public static final m0:LQf/g$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQf/g$b;->b:LQf/g$b;

    sput-object v0, LQf/g;->m0:LQf/g$b;

    return-void
.end method


# virtual methods
.method public abstract get(LQf/j$c;)LQf/j$b;
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LQf/j$b;",
            ">(",
            "LQf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract interceptContinuation(LQf/f;)LQf/f;
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;)",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract minusKey(LQf/j$c;)LQf/j;
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$c<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract releaseInterceptedContinuation(LQf/f;)V
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;)V"
        }
    .end annotation
.end method

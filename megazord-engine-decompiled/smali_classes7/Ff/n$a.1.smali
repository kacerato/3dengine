.class public final LFf/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFf/n;->k(Leg/q;LQf/f;)LQf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQf/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n+ 2 DeepRecursive.kt\nkotlin/DeepRecursiveScopeImpl\n*L\n1#1,161:1\n180#2,6:162\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n+ 2 DeepRecursive.kt\nkotlin/DeepRecursiveScopeImpl\n*L\n1#1,161:1\n180#2,6:162\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LQf/j;

.field public final synthetic c:LFf/n;

.field public final synthetic d:Leg/q;

.field public final synthetic e:LQf/f;


# direct methods
.method public constructor <init>(LQf/j;LFf/n;Leg/q;LQf/f;)V
    .locals 0

    iput-object p1, p0, LFf/n$a;->b:LQf/j;

    iput-object p2, p0, LFf/n$a;->c:LFf/n;

    iput-object p3, p0, LFf/n$a;->d:Leg/q;

    iput-object p4, p0, LFf/n$a;->e:LQf/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()LQf/j;
    .locals 1

    iget-object v0, p0, LFf/n$a;->b:LQf/j;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LFf/n$a;->c:LFf/n;

    iget-object v1, p0, LFf/n$a;->d:Leg/q;

    invoke-static {v0, v1}, LFf/n;->h(LFf/n;Leg/q;)V

    iget-object v0, p0, LFf/n$a;->c:LFf/n;

    iget-object v1, p0, LFf/n$a;->e:LQf/f;

    invoke-static {v0, v1}, LFf/n;->f(LFf/n;LQf/f;)V

    iget-object v0, p0, LFf/n$a;->c:LFf/n;

    invoke-static {v0, p1}, LFf/n;->j(LFf/n;Ljava/lang/Object;)V

    return-void
.end method

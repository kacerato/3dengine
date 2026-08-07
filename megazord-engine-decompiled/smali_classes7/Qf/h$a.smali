.class public final LQf/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQf/h;->a(LQf/j;Leg/l;)LQf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQf/f<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n*L\n1#1,161:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n*L\n1#1,161:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LQf/j;

.field public final synthetic c:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "LFf/i0<",
            "+TT;>;",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;Leg/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Leg/l<",
            "-",
            "LFf/i0<",
            "+TT;>;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQf/h$a;->b:LQf/j;

    iput-object p2, p0, LQf/h$a;->c:Leg/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()LQf/j;
    .locals 1

    iget-object v0, p0, LQf/h$a;->b:LQf/j;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LQf/h$a;->c:Leg/l;

    invoke-static {p1}, LFf/i0;->a(Ljava/lang/Object;)LFf/i0;

    move-result-object p1

    invoke-interface {v0, p1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

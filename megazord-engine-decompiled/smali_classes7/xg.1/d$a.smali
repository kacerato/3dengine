.class public final Lxg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxg/d;->g(JLwg/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n148#2:19\n149#2:21\n1#3:20\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n148#2:19\n149#2:21\n1#3:20\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Lwg/p;

.field public final synthetic c:Lxg/d;


# direct methods
.method public constructor <init>(Lwg/p;Lxg/d;)V
    .locals 0

    iput-object p1, p0, Lxg/d$a;->b:Lwg/p;

    iput-object p2, p0, Lxg/d$a;->c:Lxg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lxg/d$a;->b:Lwg/p;

    iget-object v1, p0, Lxg/d$a;->c:Lxg/d;

    sget-object v2, LFf/P0;->a:LFf/P0;

    invoke-interface {v0, v1, v2}, Lwg/p;->i(Lwg/M;Ljava/lang/Object;)V

    return-void
.end method

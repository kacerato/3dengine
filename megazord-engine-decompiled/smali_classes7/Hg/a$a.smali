.class public final LHg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHg/a;->d(LHg/m;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n1#1,18:1\n57#2,2:19\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n1#1,18:1\n57#2,2:19\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LHg/m;

.field public final synthetic c:LHg/a;


# direct methods
.method public constructor <init>(LHg/m;LHg/a;)V
    .locals 0

    iput-object p1, p0, LHg/a$a;->b:LHg/m;

    iput-object p2, p0, LHg/a$a;->c:LHg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LHg/a$a;->b:LHg/m;

    iget-object v1, p0, LHg/a$a;->c:LHg/a;

    sget-object v2, LFf/P0;->a:LFf/P0;

    invoke-interface {v0, v1, v2}, LHg/m;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

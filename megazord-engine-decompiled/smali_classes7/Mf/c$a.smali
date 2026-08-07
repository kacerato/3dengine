.class public final LMf/c$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMf/c;->p(Leg/l;)Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n*L\n1#1,149:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n*L\n1#1,149:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "Ljava/util/TimerTask;",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/util/TimerTask;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LMf/c$a;->b:Leg/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LMf/c$a;->b:Leg/l;

    invoke-interface {v0, p0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

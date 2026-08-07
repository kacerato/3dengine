.class public final synthetic Lyg/k$a;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/k;->y()Log/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/p<",
        "Ljava/lang/Long;",
        "Lyg/q<",
        "TE;>;",
        "Lyg/q<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field public static final b:Lyg/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg/k$a;

    invoke-direct {v0}, Lyg/k$a;-><init>()V

    sput-object v0, Lyg/k$a;->b:Lyg/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Lyg/k;

    const-string v3, "createSegment"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(JLyg/q;)Lyg/q;
    .locals 0
    .param p3    # Lyg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lyg/q<",
            "TE;>;)",
            "Lyg/q<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2, p3}, Lyg/k;->c(JLyg/q;)Lyg/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lyg/q;

    invoke-virtual {p0, v0, v1, p2}, Lyg/k$a;->d(JLyg/q;)Lyg/q;

    move-result-object p1

    return-object p1
.end method

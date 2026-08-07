.class public final synthetic Lwg/R0$h;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/R0;->D0()LHg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/q<",
        "Lwg/R0;",
        "LHg/m<",
        "*>;",
        "Ljava/lang/Object;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lwg/R0$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/R0$h;

    invoke-direct {v0}, Lwg/R0$h;-><init>()V

    sput-object v0, Lwg/R0$h;->b:Lwg/R0$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lwg/R0;

    const-string v3, "onAwaitInternalRegFunc"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lwg/R0;

    check-cast p2, LHg/m;

    invoke-virtual {p0, p1, p2, p3}, Lwg/R0$h;->d(Lwg/R0;LHg/m;Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final d(Lwg/R0;LHg/m;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lwg/R0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LHg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/R0;",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lwg/R0;->c0(Lwg/R0;LHg/m;Ljava/lang/Object;)V

    return-void
.end method

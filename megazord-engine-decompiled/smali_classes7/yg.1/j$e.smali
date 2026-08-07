.class public final synthetic Lyg/j$e;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/j;->F()LHg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/q<",
        "Lyg/j<",
        "*>;",
        "LHg/m<",
        "*>;",
        "Ljava/lang/Object;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lyg/j$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg/j$e;

    invoke-direct {v0}, Lyg/j$e;-><init>()V

    sput-object v0, Lyg/j$e;->b:Lyg/j$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lyg/j;

    const-string v3, "registerSelectForReceive"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyg/j;

    check-cast p2, LHg/m;

    invoke-virtual {p0, p1, p2, p3}, Lyg/j$e;->d(Lyg/j;LHg/m;Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final d(Lyg/j;LHg/m;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lyg/j;
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
            "Lyg/j<",
            "*>;",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lyg/j;->J(Lyg/j;LHg/m;Ljava/lang/Object;)V

    return-void
.end method

.class public final synthetic Lyg/x$a;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/x;->r()LHg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/q<",
        "Lyg/x<",
        "*>;",
        "LHg/m<",
        "*>;",
        "Ljava/lang/Object;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lyg/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg/x$a;

    invoke-direct {v0}, Lyg/x$a;-><init>()V

    sput-object v0, Lyg/x$a;->b:Lyg/x$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "onSendRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lyg/x;

    const-string v3, "onSendRegFunction"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyg/x;

    check-cast p2, LHg/m;

    invoke-virtual {p0, p1, p2, p3}, Lyg/x$a;->d(Lyg/x;LHg/m;Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final d(Lyg/x;LHg/m;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lyg/x;
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
            "Lyg/x<",
            "*>;",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lyg/x;->D1(Lyg/x;LHg/m;Ljava/lang/Object;)V

    return-void
.end method

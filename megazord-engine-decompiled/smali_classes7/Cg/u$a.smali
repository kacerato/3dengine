.class public final synthetic LCg/u$a;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/q;
.implements LTf/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCg/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/q<",
        "LBg/j<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "LTf/p;"
    }
.end annotation


# static fields
.field public static final b:LCg/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LCg/u$a;

    invoke-direct {v0}, LCg/u$a;-><init>()V

    sput-object v0, LCg/u$a;->b:LCg/u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, LBg/j;

    const-string v3, "emit"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LBg/j;

    check-cast p3, LQf/f;

    invoke-virtual {p0, p1, p2, p3}, LCg/u$a;->d(LBg/j;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(LBg/j;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p1, p2, p3}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

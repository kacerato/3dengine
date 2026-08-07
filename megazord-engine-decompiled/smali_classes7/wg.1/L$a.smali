.class public final Lwg/L$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/L;->a(LQf/j;LQf/j;Z)LQf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/p<",
        "LQf/j;",
        "LQf/j$b;",
        "LQf/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lwg/L$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/L$a;

    invoke-direct {v0}, Lwg/L$a;-><init>()V

    sput-object v0, Lwg/L$a;->b:Lwg/L$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(LQf/j;LQf/j$b;)LQf/j;
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Lwg/J;

    if-eqz v0, :cond_0

    check-cast p2, Lwg/J;

    invoke-interface {p2}, Lwg/J;->u()Lwg/J;

    move-result-object p2

    invoke-interface {p1, p2}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQf/j;

    check-cast p2, LQf/j$b;

    invoke-virtual {p0, p1, p2}, Lwg/L$a;->c(LQf/j;LQf/j$b;)LQf/j;

    move-result-object p1

    return-object p1
.end method

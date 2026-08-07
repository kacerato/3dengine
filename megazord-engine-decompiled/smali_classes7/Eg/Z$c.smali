.class public final LEg/Z$c;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/p<",
        "LEg/f0;",
        "LQf/j$b;",
        "LEg/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LEg/Z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LEg/Z$c;

    invoke-direct {v0}, LEg/Z$c;-><init>()V

    sput-object v0, LEg/Z$c;->b:LEg/Z$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(LEg/f0;LQf/j$b;)LEg/f0;
    .locals 1
    .param p1    # LEg/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Lwg/l1;

    if-eqz v0, :cond_0

    check-cast p2, Lwg/l1;

    iget-object v0, p1, LEg/f0;->a:LQf/j;

    invoke-interface {p2, v0}, Lwg/l1;->B(LQf/j;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, LEg/f0;->a(Lwg/l1;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LEg/f0;

    check-cast p2, LQf/j$b;

    invoke-virtual {p0, p1, p2}, LEg/Z$c;->c(LEg/f0;LQf/j$b;)LEg/f0;

    move-result-object p1

    return-object p1
.end method

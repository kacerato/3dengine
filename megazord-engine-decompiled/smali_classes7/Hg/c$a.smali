.class public final LHg/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(LHg/c;LHg/i;Leg/p;)V
    .locals 1
    .param p0    # LHg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LHg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/c<",
            "-TR;>;",
            "LHg/i<",
            "-TP;+TQ;>;",
            "Leg/p<",
            "-TQ;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, LHg/c;->i(LHg/i;Ljava/lang/Object;Leg/p;)V

    return-void
.end method

.method public static b(LHg/c;JLeg/l;)V
    .locals 0
    .param p0    # LHg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Replaced with the same extension function"
        replaceWith = .subannotation LFf/g0;
            expression = "onTimeout"
            imports = {
                "kotlinx.coroutines.selects.onTimeout"
            }
        .end subannotation
    .end annotation

    .annotation build LWf/i;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/c<",
            "-TR;>;J",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p0, p1, p2, p3}, LHg/b;->a(LHg/c;JLeg/l;)V

    return-void
.end method

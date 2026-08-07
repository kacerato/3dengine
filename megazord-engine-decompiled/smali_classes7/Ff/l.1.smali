.class public final LFf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LFf/i0;->c:LFf/i0$a;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, LFf/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, LFf/l;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(LFf/k;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # LFf/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFf/k<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LFf/n;

    invoke-virtual {p0}, LFf/k;->a()Leg/q;

    move-result-object p0

    invoke-direct {v0, p0, p1}, LFf/n;-><init>(Leg/q;Ljava/lang/Object;)V

    invoke-virtual {v0}, LFf/n;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

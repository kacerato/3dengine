.class public final synthetic Lsg/v$c;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/v;->f(Ljava/lang/CharSequence;I)Lpg/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/l<",
        "Lsg/r;",
        "Lsg/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lsg/v$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsg/v$c;

    invoke-direct {v0}, Lsg/v$c;-><init>()V

    sput-object v0, Lsg/v$c;->b:Lsg/v$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "next()Lkotlin/text/MatchResult;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lsg/r;

    const-string v3, "next"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lsg/r;)Lsg/r;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lsg/r;->next()Lsg/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lsg/r;

    invoke-virtual {p0, p1}, Lsg/v$c;->d(Lsg/r;)Lsg/r;

    move-result-object p1

    return-object p1
.end method

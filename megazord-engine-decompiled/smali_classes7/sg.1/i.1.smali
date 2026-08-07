.class public final Lsg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpg/m<",
        "Lng/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "LFf/Z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILeg/p;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Leg/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "LFf/Z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg/i;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lsg/i;->b:I

    iput p3, p0, Lsg/i;->c:I

    iput-object p4, p0, Lsg/i;->d:Leg/p;

    return-void
.end method

.method public static final synthetic c(Lsg/i;)Leg/p;
    .locals 0

    iget-object p0, p0, Lsg/i;->d:Leg/p;

    return-object p0
.end method

.method public static final synthetic d(Lsg/i;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lsg/i;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic e(Lsg/i;)I
    .locals 0

    iget p0, p0, Lsg/i;->c:I

    return p0
.end method

.method public static final synthetic f(Lsg/i;)I
    .locals 0

    iget p0, p0, Lsg/i;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lng/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lsg/i$a;

    invoke-direct {v0, p0}, Lsg/i$a;-><init>(Lsg/i;)V

    return-object v0
.end method

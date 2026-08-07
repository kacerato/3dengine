.class public final Lyg/u$L;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/u;->f0(Lyg/D;Lyg/D;)Lyg/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/p<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "LFf/Z<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Lyg/u$L;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg/u$L;

    invoke-direct {v0}, Lyg/u$L;-><init>()V

    sput-object v0, Lyg/u$L;->b:Lyg/u$L;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)LFf/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "LFf/Z<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1, p2}, LFf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)LFf/Z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyg/u$L;->c(Ljava/lang/Object;Ljava/lang/Object;)LFf/Z;

    move-result-object p1

    return-object p1
.end method

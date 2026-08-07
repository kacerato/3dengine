.class public final LAg/g$h;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAg/g;->j(Ljava/io/PrintStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/l<",
        "LAg/g$a<",
        "*>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LAg/g$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LAg/g$h;

    invoke-direct {v0}, LAg/g$h;-><init>()V

    sput-object v0, LAg/g$h;->b:LAg/g$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(LAg/g$a;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # LAg/g$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAg/g$a<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LAg/g;->a:LAg/g;

    invoke-static {v0, p1}, LAg/g;->b(LAg/g;LAg/g$a;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LAg/g$a;

    invoke-virtual {p0, p1}, LAg/g$h;->c(LAg/g$a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

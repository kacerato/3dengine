.class public final LCg/t$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/t;-><init>(LBg/j;LQf/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/p<",
        "Ljava/lang/Integer;",
        "LQf/j$b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LCg/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LCg/t$a;

    invoke-direct {v0}, LCg/t$a;-><init>()V

    sput-object v0, LCg/t$a;->b:LCg/t$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(ILQf/j$b;)Ljava/lang/Integer;
    .locals 0
    .param p2    # LQf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, LQf/j$b;

    invoke-virtual {p0, p1, p2}, LCg/t$a;->c(ILQf/j$b;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

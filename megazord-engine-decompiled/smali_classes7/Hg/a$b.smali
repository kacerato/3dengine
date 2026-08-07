.class public final synthetic LHg/a$b;
.super Lkotlin/jvm/internal/I;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHg/a;->b()LHg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/I;",
        "Leg/q<",
        "LHg/a;",
        "LHg/m<",
        "*>;",
        "Ljava/lang/Object;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LHg/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LHg/a$b;

    invoke-direct {v0}, LHg/a$b;-><init>()V

    sput-object v0, LHg/a$b;->b:LHg/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, LHg/a;

    const-string v3, "register"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/I;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LHg/a;

    check-cast p2, LHg/m;

    invoke-virtual {p0, p1, p2, p3}, LHg/a$b;->d(LHg/a;LHg/m;Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final d(LHg/a;LHg/m;Ljava/lang/Object;)V
    .locals 0
    .param p1    # LHg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LHg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/a;",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LHg/a;->a(LHg/a;LHg/m;Ljava/lang/Object;)V

    return-void
.end method

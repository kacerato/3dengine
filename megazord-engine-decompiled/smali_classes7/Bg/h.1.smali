.class public final LBg/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/i;


# static fields
.field public static final b:LBg/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LBg/h;

    invoke-direct {v0}, LBg/h;-><init>()V

    sput-object v0, LBg/h;->b:LBg/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "*>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

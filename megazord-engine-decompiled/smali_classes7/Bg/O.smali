.class public interface abstract LBg/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBg/O$a;
    }
.end annotation


# static fields
.field public static final a:LBg/O$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LBg/O$a;->a:LBg/O$a;

    sput-object v0, LBg/O;->a:LBg/O$a;

    return-void
.end method


# virtual methods
.method public abstract a(LBg/U;)LBg/i;
    .param p1    # LBg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/U<",
            "Ljava/lang/Integer;",
            ">;)",
            "LBg/i<",
            "LBg/M;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

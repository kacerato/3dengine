.class public final LBg/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBg/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:LBg/J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/J<",
            "*>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:J
    .annotation build Ldg/g;
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/J;JLjava/lang/Object;LQf/f;)V
    .locals 0
    .param p1    # LBg/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/J<",
            "*>;J",
            "Ljava/lang/Object;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBg/J$a;->b:LBg/J;

    iput-wide p2, p0, LBg/J$a;->c:J

    iput-object p4, p0, LBg/J$a;->d:Ljava/lang/Object;

    iput-object p5, p0, LBg/J$a;->e:LQf/f;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, LBg/J$a;->b:LBg/J;

    invoke-static {v0, p0}, LBg/J;->q(LBg/J;LBg/J$a;)V

    return-void
.end method

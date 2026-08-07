.class public final Lif/M;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/K<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LTe/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/K<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lif/M;

    invoke-direct {v0}, Lif/M;-><init>()V

    sput-object v0, Lif/M;->b:LTe/K;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/K;-><init>()V

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, LYe/e;->NEVER:LYe/e;

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    return-void
.end method

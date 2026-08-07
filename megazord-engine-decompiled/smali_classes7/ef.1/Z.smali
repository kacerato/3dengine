.class public final Lef/Z;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/s<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lef/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lef/Z;

    invoke-direct {v0}, Lef/Z;-><init>()V

    sput-object v0, Lef/Z;->b:Lef/Z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/s;-><init>()V

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, LYe/e;->NEVER:LYe/e;

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    return-void
.end method

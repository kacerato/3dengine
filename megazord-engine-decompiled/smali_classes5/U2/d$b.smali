.class public final LU2/d$b;
.super LU2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:LU2/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LU2/d$b;

    invoke-direct {v0}, LU2/d$b;-><init>()V

    sput-object v0, LU2/d$b;->a:LU2/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LU2/d;-><init>()V

    return-void
.end method

.method public static synthetic e()LU2/d$b;
    .locals 1

    sget-object v0, LU2/d$b;->a:LU2/d$b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "LU2/j;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU2/j;

    invoke-virtual {v0, p1}, LU2/j;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

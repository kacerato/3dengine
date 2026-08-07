.class public Lxd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LAd/d;


# direct methods
.method public constructor <init>(LAd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postAsyncResponse"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd/e;->a:LAd/d;

    return-void
.end method

.method public static synthetic a(Lxd/e;)LAd/d;
    .locals 0

    iget-object p0, p0, Lxd/e;->a:LAd/d;

    return-object p0
.end method


# virtual methods
.method public b(LAd/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    new-instance v0, Lxd/e$a;

    invoke-direct {v0, p0, p1}, Lxd/e$a;-><init>(Lxd/e;LAd/e;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

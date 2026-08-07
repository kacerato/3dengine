.class public final synthetic LGc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LGc/h;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(LGc/h;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGc/c;->b:LGc/h;

    iput p2, p0, LGc/c;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LGc/c;->b:LGc/h;

    iget v1, p0, LGc/c;->c:F

    invoke-static {v0, v1}, LGc/h;->g(LGc/h;F)V

    return-void
.end method

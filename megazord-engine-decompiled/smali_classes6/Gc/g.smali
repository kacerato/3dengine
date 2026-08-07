.class public final synthetic LGc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LGc/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(LGc/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGc/g;->b:LGc/h;

    iput p2, p0, LGc/g;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LGc/g;->b:LGc/h;

    iget v1, p0, LGc/g;->c:I

    invoke-static {v0, v1}, LGc/h;->j(LGc/h;I)V

    return-void
.end method

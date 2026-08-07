.class public final synthetic LGc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LGc/h;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public synthetic constructor <init>(LGc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGc/f;->b:LGc/h;

    iput-object p2, p0, LGc/f;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LGc/f;->b:LGc/h;

    iget-object v1, p0, LGc/f;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, v1}, LGc/h;->f(LGc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

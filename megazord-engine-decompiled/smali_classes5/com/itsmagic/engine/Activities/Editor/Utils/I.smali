.class public Lcom/itsmagic/engine/Activities/Editor/Utils/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lec/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classReference",
            "callback"
        }
    .end annotation

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lec/b;LI7/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

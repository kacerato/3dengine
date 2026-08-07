.class public LG6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, LH6/a;->y1()V

    invoke-static {}, LI6/d;->z1()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->z1()V

    invoke-static {}, LK6/e;->y1()V

    invoke-static {}, LL6/k;->a()V

    return-void
.end method

.method public static b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    invoke-static {p0}, LH6/a;->D1(F)V

    invoke-static {p0}, LI6/d;->C1(F)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->C1(F)V

    invoke-static {p0}, LK6/e;->B1(F)V

    invoke-static {p0}, LL6/k;->b(F)V

    return-void
.end method

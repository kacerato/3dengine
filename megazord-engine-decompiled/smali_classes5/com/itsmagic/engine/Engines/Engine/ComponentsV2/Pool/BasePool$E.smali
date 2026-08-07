.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "E"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public final b:LA9/b;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;LA9/b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pooledObject",
            "localStaticbody",
            "opce"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;->b:LA9/b;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$E;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;

    return-void
.end method

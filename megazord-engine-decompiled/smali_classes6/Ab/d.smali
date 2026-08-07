.class public LAb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LAb/d;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, -0x1

    iput v0, p0, LAb/d;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, LAb/d;->b:I

    return-void
.end method

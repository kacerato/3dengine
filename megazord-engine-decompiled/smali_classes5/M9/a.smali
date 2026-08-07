.class public final synthetic LM9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR9/i;


# instance fields
.field public final synthetic a:[F

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>([FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM9/a;->a:[F

    iput p2, p0, LM9/a;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)F
    .locals 2

    iget-object v0, p0, LM9/a;->a:[F

    iget v1, p0, LM9/a;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a([FIII)F

    move-result p1

    return p1
.end method

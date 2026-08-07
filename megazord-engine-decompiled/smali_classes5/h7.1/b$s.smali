.class public Lh7/b$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b;->f(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Lh7/b$z;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/b$z;


# direct methods
.method public constructor <init>(Lh7/b$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$s;->a:Lh7/b$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh7/b$s;->a:Lh7/b$z;

    invoke-interface {v0}, Lh7/b$z;->b()V

    return-void
.end method

.class public LC5/a$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/a$a;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LMb/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final synthetic c:LMb/n;

.field public final synthetic d:LC5/a$a;


# direct methods
.method public constructor <init>(LC5/a$a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LMb/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$outputVertex",
            "val$atlasTexture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/a$a$d;->d:LC5/a$a;

    iput-object p2, p0, LC5/a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object p3, p0, LC5/a$a$d;->c:LMb/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LC5/a$a$d;->d:LC5/a$a;

    iget-object v0, v0, LC5/a$a;->a:LC5/a;

    invoke-static {v0}, LC5/a;->p1(LC5/a;)Lorg/ITsMagic/Atlas/e$c;

    move-result-object v0

    iget-object v1, p0, LC5/a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v2, p0, LC5/a$a$d;->c:LMb/n;

    invoke-interface {v0, v1, v2}, Lorg/ITsMagic/Atlas/e$c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LMb/n;)V

    return-void
.end method

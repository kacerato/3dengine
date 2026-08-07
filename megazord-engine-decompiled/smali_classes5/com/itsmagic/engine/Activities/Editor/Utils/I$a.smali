.class public Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/I;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lec/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

.field public final synthetic c:Lec/b;

.field public final synthetic d:LI7/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lec/b;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$classReference",
            "val$callback",
            "val$loadingBar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;->c:Lec/b;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;->d:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;->c:Lec/b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v0}, Lec/b;->a(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/I$a;->d:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method

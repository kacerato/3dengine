.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lze/Q<",
        "Ljava/util/ArrayList<",
        "Ljava/util/ArrayList;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "size",
            "lists"
        }
    .end annotation

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP$a;->b(ILjava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public b(ILjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "lists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;)Lye/O;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;ILye/O;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniListJP;->access$200(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    return p1
.end method

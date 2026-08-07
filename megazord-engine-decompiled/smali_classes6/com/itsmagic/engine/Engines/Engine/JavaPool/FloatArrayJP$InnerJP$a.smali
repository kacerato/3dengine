.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP;
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
        "[F>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP;

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
            "arrays"
        }
    .end annotation

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP$a;->b(ILjava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public b(ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "arrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "[F>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP;->access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP$InnerJP;)Lye/O;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP;->access$200(ILye/O;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP;->access$300(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.class public final synthetic Lpa/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;

.field public final synthetic c:Lma/e;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;Lma/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/w;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;

    iput-object p2, p0, Lpa/w;->c:Lma/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpa/w;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;

    iget-object v1, p0, Lpa/w;->c:Lma/e;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$l$a;Lma/e;)V

    return-void
.end method

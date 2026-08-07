.class public final synthetic Lpa/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;

.field public final synthetic c:Lma/b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;Lma/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/u;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;

    iput-object p2, p0, Lpa/u;->c:Lma/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpa/u;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;

    iget-object v1, p0, Lpa/u;->c:Lma/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;Lma/b;)V

    return-void
.end method

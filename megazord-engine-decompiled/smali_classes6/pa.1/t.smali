.class public final synthetic Lpa/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$c;

.field public final synthetic c:Lma/b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$c;Lma/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/t;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$c;

    iput-object p2, p0, Lpa/t;->c:Lma/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpa/t;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$c;

    iget-object v1, p0, Lpa/t;->c:Lma/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$c;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$c;Lma/b;)V

    return-void
.end method

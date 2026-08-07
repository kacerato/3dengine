.class public final synthetic Lma/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;

.field public final synthetic c:Lma/d;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;Lma/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/u;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;

    iput-object p2, p0, Lma/u;->c:Lma/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lma/u;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;

    iget-object v1, p0, Lma/u;->c:Lma/d;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$g$a;Lma/d;)V

    return-void
.end method

.class public final synthetic Lma/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;

.field public final synthetic c:Lma/b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;Lma/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;

    iput-object p2, p0, Lma/m;->c:Lma/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lma/m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;

    iget-object v1, p0, Lma/m;->c:Lma/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$a;Lma/b;)V

    return-void
.end method

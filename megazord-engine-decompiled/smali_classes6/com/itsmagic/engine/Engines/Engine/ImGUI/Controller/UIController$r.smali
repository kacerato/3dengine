.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->b:Ljava/util/ArrayList;

    return-void
.end method

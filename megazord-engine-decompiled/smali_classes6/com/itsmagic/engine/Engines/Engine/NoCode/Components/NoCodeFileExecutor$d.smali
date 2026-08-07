.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getInspectorExtras()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "LW5/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, LW5/m;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;)V

    const v1, 0x7f0700f3

    invoke-direct {p1, v1, v0}, LW5/m;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

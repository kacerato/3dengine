.class public Lyb/e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$b;->b(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$b;


# direct methods
.method public constructor <init>(Lyb/e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$b$a;->a:Lyb/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "index"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p0, Lyb/e$b$a;->a:Lyb/e$b;

    iget-object v0, p2, Lyb/e$b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lyb/e$b;->b:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lyb/e;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V

    return-void
.end method

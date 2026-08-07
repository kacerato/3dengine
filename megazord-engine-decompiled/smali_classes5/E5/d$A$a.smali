.class public LE5/d$A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/d$A;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LE5/d$A;


# direct methods
.method public constructor <init>(LE5/d$A;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LE5/d$A$a;->b:LE5/d$A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LE5/d$A$a;->b:LE5/d$A;

    iget-object v0, v0, LE5/d$A;->d:LE5/d;

    sget-object v1, LE5/c;->ManageAnchors:LE5/c;

    invoke-static {v0, v1}, LE5/d;->G(LE5/d;LE5/c;)LE5/c;

    return-void
.end method

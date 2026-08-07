.class public LT5/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT5/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT5/a;


# direct methods
.method public constructor <init>(LT5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LT5/a$d;->a:LT5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LI4/f;
    .locals 1

    iget-object v0, p0, LT5/a$d;->a:LT5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O()LI4/f;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, LT5/a$d;->a:LT5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v0

    return v0
.end method

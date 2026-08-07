.class public LJ5/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ5/a;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJ5/a;


# direct methods
.method public constructor <init>(LJ5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ5/a$e;->a:LJ5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, LJ5/a$e;->a:LJ5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method

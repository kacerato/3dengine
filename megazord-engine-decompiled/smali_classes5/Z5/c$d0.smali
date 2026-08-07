.class public LZ5/c$d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/c;->l(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;LZ5/e;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LZ5/e;


# direct methods
.method public constructor <init>(LZ5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ5/c$d0;->a:LZ5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LZ5/c$d0;->a:LZ5/e;

    invoke-interface {p1}, LZ5/e;->e()V

    iget-object p1, p0, LZ5/c$d0;->a:LZ5/e;

    invoke-interface {p1}, LZ5/e;->a()V

    return-void
.end method

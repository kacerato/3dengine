.class public LR9/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR9/e;-><init>(ILR9/i;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR9/e;


# direct methods
.method public constructor <init>(LR9/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LR9/e$a;->a:LR9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertexBuffer",
            "indexBuffer"
        }
    .end annotation

    iget-object v0, p0, LR9/e$a;->a:LR9/e;

    invoke-static {v0, p1}, LR9/e;->a(LR9/e;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object p1, p0, LR9/e$a;->a:LR9/e;

    invoke-static {p1, p2}, LR9/e;->b(LR9/e;Lkc/d;)Lkc/d;

    return-void
.end method

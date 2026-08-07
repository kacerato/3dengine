.class public LD0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/a;->b(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Display;

.field public final synthetic b:LD0/a;


# direct methods
.method public constructor <init>(LD0/a;Landroid/view/Display;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LD0/a$a;->b:LD0/a;

    iput-object p2, p0, LD0/a$a;->a:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, LD0/a$a;->a:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LD0/a$a;->b:LD0/a;

    invoke-static {p1}, LD0/a;->a(LD0/a;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

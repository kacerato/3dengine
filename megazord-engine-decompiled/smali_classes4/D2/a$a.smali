.class public LD2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD2/a;


# direct methods
.method public constructor <init>(LD2/a;)V
    .locals 0

    iput-object p1, p0, LD2/a$a;->a:LD2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, LD2/a$a;->a:LD2/a;

    invoke-static {p2, p1}, LD2/a;->O0(LD2/a;Landroid/view/View;)V

    return-void
.end method

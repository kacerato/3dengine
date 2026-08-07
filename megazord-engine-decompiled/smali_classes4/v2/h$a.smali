.class public Lv2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv2/h;


# direct methods
.method public constructor <init>(Lv2/h;)V
    .locals 0

    iput-object p1, p0, Lv2/h$a;->a:Lv2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lv2/h$a;->a:Lv2/h;

    invoke-virtual {v0}, Lv2/h;->e()V

    return-void
.end method

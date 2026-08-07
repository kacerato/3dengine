.class public Lje/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lje/g;


# direct methods
.method public constructor <init>(Lje/g;)V
    .locals 0

    iput-object p1, p0, Lje/g$a;->b:Lje/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lje/g$a;->b:Lje/g;

    invoke-virtual {v0}, Lje/g;->j()V

    const/4 v0, 0x1

    return v0
.end method

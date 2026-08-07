.class public Lp/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp/b;


# direct methods
.method public constructor <init>(Lp/b;)V
    .locals 0

    iput-object p1, p0, Lp/b$b;->b:Lp/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lp/b$b;->b:Lp/b;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lp/b$b;->b:Lp/b;

    invoke-static {v1, v0}, Lp/b;->d(Lp/b;Landroid/text/Editable;)V

    return-void
.end method

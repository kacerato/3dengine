.class public final LX0/W;
.super LX0/X;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:LU0/i;


# direct methods
.method public constructor <init>(Landroid/content/Intent;LU0/i;I)V
    .locals 0

    iput-object p1, p0, LX0/W;->b:Landroid/content/Intent;

    iput-object p2, p0, LX0/W;->c:LU0/i;

    invoke-direct {p0}, LX0/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LX0/W;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, LX0/W;->c:LU0/i;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, LU0/i;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.class public final synthetic LC6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LC6/a$f;

.field public final synthetic c:Landroid/text/Editable;


# direct methods
.method public synthetic constructor <init>(LC6/a$f;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC6/b;->b:LC6/a$f;

    iput-object p2, p0, LC6/b;->c:Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LC6/b;->b:LC6/a$f;

    iget-object v1, p0, LC6/b;->c:Landroid/text/Editable;

    invoke-static {v0, v1}, LC6/a$f;->a(LC6/a$f;Landroid/text/Editable;)V

    return-void
.end method

.class public final synthetic Lt6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt6/f$l;

.field public final synthetic c:Landroid/text/Editable;


# direct methods
.method public synthetic constructor <init>(Lt6/f$l;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt6/g;->b:Lt6/f$l;

    iput-object p2, p0, Lt6/g;->c:Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt6/g;->b:Lt6/f$l;

    iget-object v1, p0, Lt6/g;->c:Landroid/text/Editable;

    invoke-static {v0, v1}, Lt6/f$l;->a(Lt6/f$l;Landroid/text/Editable;)V

    return-void
.end method

.class public final synthetic Lf7/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf7/p;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lf7/p;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/q;->b:Lf7/p;

    iput-object p2, p0, Lf7/q;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf7/q;->b:Lf7/p;

    iget-object v1, p0, Lf7/q;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lf7/v;->a(Lf7/p;Landroid/graphics/Bitmap;)V

    return-void
.end method

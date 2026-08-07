.class public LNe/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNe/d$b;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/drawable/Drawable;

.field public final synthetic c:LNe/d$b;


# direct methods
.method public constructor <init>(LNe/d$b;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, LNe/d$b$a;->c:LNe/d$b;

    iput-object p2, p0, LNe/d$b$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LNe/d$b$a;->c:LNe/d$b;

    iget-object v1, p0, LNe/d$b$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, LNe/d$b;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

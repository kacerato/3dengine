.class public LMe/e$b;
.super LMe/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMe/e;->l(Landroid/text/Spannable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:LMe/e;


# direct methods
.method public constructor <init>(LMe/e;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, LMe/e$b;->c:LMe/e;

    iput-object p2, p0, LMe/e$b;->b:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LMe/e$d;-><init>(LMe/e$a;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, LMe/e$b;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

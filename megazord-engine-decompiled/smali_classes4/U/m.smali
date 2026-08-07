.class public final LU/m;
.super LU/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "LU/e<",
        "TZ;>;"
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:Landroid/os/Handler;


# instance fields
.field public final e:Lcom/bumptech/glide/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LU/m$a;

    invoke-direct {v2}, LU/m$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, LU/m;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/k;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, LU/e;-><init>(II)V

    iput-object p1, p0, LU/m;->e:Lcom/bumptech/glide/k;

    return-void
.end method

.method public static f(Lcom/bumptech/glide/k;II)LU/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/k;",
            "II)",
            "LU/m<",
            "TZ;>;"
        }
    .end annotation

    new-instance v0, LU/m;

    invoke-direct {v0, p0, p1, p2}, LU/m;-><init>(Lcom/bumptech/glide/k;II)V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Object;LV/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LV/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "LV/f<",
            "-TZ;>;)V"
        }
    .end annotation

    sget-object p1, LU/m;->g:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, LU/m;->e:Lcom/bumptech/glide/k;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/k;->w(LU/p;)V

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

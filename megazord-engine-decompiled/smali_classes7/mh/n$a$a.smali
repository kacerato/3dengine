.class public Lmh/n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmh/n$a;->on(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lmh/n$a;


# direct methods
.method public constructor <init>(Lmh/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lmh/n$a$a;->b:Lmh/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmh/n$a$a;->b:Lmh/n$a;

    iget-object v0, v0, Lmh/n$a;->b:Lmh/n;

    invoke-static {v0}, Lmh/n;->b(Lmh/n;)V

    return-void
.end method

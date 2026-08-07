.class public Ls6/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc8/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/f$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls6/f$a;


# direct methods
.method public constructor <init>(Ls6/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ls6/f$a$a;->a:Ls6/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ls6/f$a$a;->a:Ls6/f$a;

    iget-object v0, v0, Ls6/f$a;->a:Ls6/f;

    invoke-static {v0}, Ls6/f;->x1(Ls6/f;)V

    return-void
.end method

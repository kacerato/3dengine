.class public Ls6/b$f;
.super LZ7/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic b:Ls6/b;


# direct methods
.method public constructor <init>(Ls6/b;Landroid/view/View;)V
    .locals 0
    .param p1    # Ls6/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    iput-object p1, p0, Ls6/b$f;->b:Ls6/b;

    invoke-direct {p0, p1, p2}, LZ7/d$a;-><init>(LZ7/d;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(LZ7/a;Ls6/b$d;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "listener"
        }
    .end annotation

    return-void
.end method
